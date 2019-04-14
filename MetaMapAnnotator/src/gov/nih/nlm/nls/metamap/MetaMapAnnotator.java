/*
 * Copyright (C) 2019 Sandeep Nadella <vnadell1@asu.edu>.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301  USA
 */
package gov.nih.nlm.nls.metamap;

import java.sql.*;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Properties;
import java.util.StringJoiner;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.collections4.iterators.PeekingIterator;
import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVRecord;
import se.sics.prologbeans.PBTerm;
import org.apache.commons.text.similarity.JaroWinklerDistance;

/**
 * This class is the main class which reads the output of the web scrapper,
 * annotates the input and dumps the concepts, relationships identified into the
 * database.
 *
 * @author Sandeep Nadella <vnadell1@asu.edu>
 */
public class MetaMapAnnotator {

    private static void init() throws IOException {
        InputStream configStream = MetaMapAnnotator.class.getClassLoader().getResourceAsStream("./gov/nih/nlm/nls/metamap/MetaMapAnnotatorConfig.properties");
        configProp.load(configStream);
        populateIgnoredWordsList();
        populatePOSTags();
    }

    private static Properties configProp = new Properties();
    public static final String PATH_TO_RESOURCES = "./resources/";

    MetaMapApi api;
    private static Connection hcmConn;

    private static List<String> ignoredWords = new ArrayList<String>();
    private static List<String> includePOSTags = new ArrayList<String>();

    private static void populateIgnoredWordsList() {
        Reader in = null;
        try {
            File file = new File(PATH_TO_RESOURCES + configProp.getProperty("ignored_words_file_name"));
            in = new FileReader(file);
            Iterable<CSVRecord> records = CSVFormat.RFC4180.withFirstRecordAsHeader().parse(in);
            for (CSVRecord record : records) {
                ignoredWords.add(record.get(0));
            }
        } catch (FileNotFoundException ex) {
            Logger.getLogger(MetaMapAnnotator.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(MetaMapAnnotator.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (in != null) {
                    in.close();
                }
            } catch (IOException ex) {
                Logger.getLogger(MetaMapAnnotator.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    private static void populatePOSTags() {
        Reader in = null;
        try {
            File file = new File(PATH_TO_RESOURCES + configProp.getProperty("include_pos_tags_file_name"));
            in = new FileReader(file);
            Iterable<CSVRecord> records = CSVFormat.RFC4180.withFirstRecordAsHeader().parse(in);
            for (CSVRecord record : records) {
                includePOSTags.add(record.get(0));
            }
        } catch (FileNotFoundException ex) {
            Logger.getLogger(MetaMapAnnotator.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(MetaMapAnnotator.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (in != null) {
                    in.close();
                }
            } catch (IOException ex) {
                Logger.getLogger(MetaMapAnnotator.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    private static void connectToHCMDB() {

        try {
            hcmConn = DriverManager.getConnection(
                    "jdbc:mysql://" + configProp.getProperty("db_host") + ":" + configProp.getProperty("db_port") + "/" + configProp.getProperty("db_name") + "?autoReconnect=true&useSSL=false", configProp.getProperty("db_user_name"), configProp.getProperty("db_user_password"));
        } catch (SQLException ex) {
            Logger.getLogger(MetaMapAnnotator.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private static void closeDBConnection() {
        try {
            hcmConn.close();
        } catch (SQLException ex) {
            Logger.getLogger(MetaMapAnnotator.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private static ResultSet executeQueryStatement(String statement) {
        ResultSet rs = null;
        try {
            rs = hcmConn.createStatement().executeQuery(statement);
        } catch (SQLException ex) {
            Logger.getLogger(MetaMapAnnotator.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    private static int executeDMLStatement(String statement) {
        int rs = -1;
        try {
            rs = hcmConn.createStatement().executeUpdate(statement);
        } catch (SQLException ex) {
            Logger.getLogger(MetaMapAnnotator.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    private static int insertDiseaseRecord(int disease_id, String disease_name, String description, int records_count, int has_symptom_count, int has_treatment_count) {
        return executeDMLStatement("INSERT INTO `" + configProp.getProperty("db_name") + "`.`diseases` (`disease_id`, `disease_name`, `description`, `records_count`, `has_symptom_count`, `has_treatment_count`) VALUES (" + (new StringJoiner(",").add(String.valueOf(disease_id)).add(disease_name).add(description).add(String.valueOf(records_count)).add(String.valueOf(has_symptom_count)).add(String.valueOf(has_treatment_count))) + ")");
    }

    private static int insertDiseaseRecord(int disease_id, String disease_name, String description) {
        return executeDMLStatement("INSERT INTO `" + configProp.getProperty("db_name") + "`.`diseases` (`disease_id`, `disease_name`, `description`) VALUES (" + (new StringJoiner(",").add(String.valueOf(disease_id)).add(disease_name).add(description)) + ")");
    }

    private static int insertSymptomRecord(int symptom_id, String description) {
        return executeDMLStatement("INSERT INTO `" + configProp.getProperty("db_name") + "`.`symptoms` (`symptom_id`, `description`) VALUES (" + String.valueOf(symptom_id) + "," + description + ")");
    }

    private static int insertDiseaseSymptomRelationRecord(int disease_id, int symptom_id) {
        return executeDMLStatement("INSERT INTO `" + configProp.getProperty("db_name") + "`.`disease_symptoms` (`disease_id`, `symptom_id`) VALUES (" + String.valueOf(disease_id) + "," + String.valueOf(symptom_id) + ")");
    }

    /**
     * Creates new instance with the given mmserver config details
     *
     * @param serverhost the value of server host
     * @param serverport the value of server port
     */
    public MetaMapAnnotator(String serverhost, int serverport) {
        this.api = new MetaMapApiImpl();
        this.api.setHost(serverhost);
        this.api.setPort(serverport);
    }

    /**
     * Creates new instance of the MetaMap API
     *
     */
    public MetaMapAnnotator() {
        this.api = new MetaMapApiImpl();
    }

    /**
     * Entry point for the MetaMap Annotator program execution
     *
     * @param args the command line arguments
     */
    public static void main(String[] args) {

        try {
            init();
            connectToHCMDB();
            readFromCSV();
            closeDBConnection();
        } catch (Exception ex) {
            Logger.getLogger(MetaMapAnnotator.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
        }

    }

    /**
     * Set the timeout
     *
     * @param interval
     */
    void setTimeout(int interval) {
        this.api.setTimeout(interval);
    }

    /**
     * Reads from CSV file and triggers the MetaMap annotator for each post
     *
     * @throws FileNotFoundException
     * @throws IOException
     * @throws Exception
     */
    private static void readFromCSV() throws FileNotFoundException, IOException, Exception {
        File dir = new File(configProp.getProperty("web_scraper_csv_folder"));

        File[] csvFilesList = dir.listFiles((File directory, String filename) -> filename.endsWith(".csv"));
        for (File file : csvFilesList) {
            Reader in = new FileReader(file);
            Iterable<CSVRecord> records = CSVFormat.RFC4180.withFirstRecordAsHeader().parse(in);
            for (CSVRecord record : records) {
                String disease = record.get(0);
                String postLink = record.get(1);
                String postHeading = record.get(2);
                String postContent = record.get(3);
                //clean off non ascii characters
                disease = stripNonASCII(disease);
                postHeading = stripNonASCII(postHeading);
                postContent = stripNonASCII(postContent);

                System.out.println("----------------------------------------------------");
//                System.out.println(disease);
//                System.out.println(postHeading);
//                System.out.println(postContent);
//                System.out.println("----------------------------------------------------");
                triggerMetaMap(disease, postHeading, postContent);
                System.out.println("----------------------------------------------------");
            }
        }
    }

    /**
     * Removes all non ASCII characters from the inputText, trims and returns
     * the given string.
     *
     * @param inputText
     *
     * @return
     */
    private static String stripNonASCII(String inputText) {
        String result = inputText;
        result = result.replaceAll("[^\\x00-\\x7F]", "");
        result = result.replaceAll("[\\p{Cntrl}&&[^\r\n\t]]", "");
        result = result.replaceAll("\\p{C}", "");
        result = result.trim();
        return result;
    }

    /**
     * Triggers the MetaMap API with the given text content. Throws an Exception
     * if the MetaMap server is not running.
     *
     * @param category
     * @param postHeading
     * @param postContent
     *
     * @throws Exception
     */
    private static void triggerMetaMap(String category, String postHeading, String postContent) throws Exception {
        String serverhost = MetaMapApi.DEFAULT_SERVER_HOST;
        int serverport = MetaMapApi.DEFAULT_SERVER_PORT;
        int timeout = -1;

        PrintStream output = System.out;
        MetaMapAnnotator frontEnd = new MetaMapAnnotator(serverhost, serverport);
        List<String> options = new ArrayList<>();
        options.add("-y");
        options.add("--restrict_to_sts");
        options.add("dsyn,sosy");
        options.add("--unique_acros_abbrs_only");
        options.add("--no_derivational_variants");
        options.add("--TAGGER_SERVER");
        options.add("localhost");
        //disable below option if slow
        options.add("--composite_phrases");
        options.add("4");

//        System.out.println("options: " + options);
        if (timeout > -1) {
            frontEnd.setTimeout(timeout);
        }
        frontEnd.process(postContent, output, options);
        frontEnd.api.disconnect();
    }

    /**
     * Triggers the MetaMap annotator for the given text content and prints the
     * output to the given out print stream.
     *
     * @param terms
     * @param out
     * @param serverOptions
     *
     * @throws Exception
     */
    public void process(String terms, PrintStream out, List<String> serverOptions) throws Exception {
        if (serverOptions.size() > 0) {
            api.setOptions(serverOptions);
        }
        List<Result> resultList = api.processCitationsFromString(terms);
        for (Result result : resultList) {
            if (result != null) {
//                out.println("input text: ");
//                out.println(" " + result.getInputText());
//                List<AcronymsAbbrevs> aaList = result.getAcronymsAbbrevsList();
//                if (aaList.size() > 0) {
//                    out.println("Acronyms and Abbreviations:");
//                    aaList.stream().map((e) -> {
//                        out.println("Acronym: " + e.getAcronym());
//                        return e;
//                    }).map((e) -> {
//                        out.println("Expansion: " + e.getExpansion());
//                        return e;
//                    }).map((e) -> {
//                        out.println("Count list: " + e.getCountList());
//                        return e;
//                    }).forEachOrdered((e) -> {
//                        out.println("CUI list: " + e.getCUIList());
//                    });
//                }
//                List<Negation> negList = result.getNegationList();
//                if (negList.size() > 0) {
//                    out.println("Negations:");
//                    for (Negation e : negList) {
//                        out.println("type: " + e.getType());
//                        out.print("Trigger: " + e.getTrigger() + ": [");
//                        for (Position pos : e.getTriggerPositionList()) {
//                            out.print(pos + ",");
//                        }
//                        out.println("]");
//                        out.print("ConceptPairs: [");
//                        for (ConceptPair pair : e.getConceptPairList()) {
//                            out.print(pair + ",");
//                        }
//                        out.println("]");
//                        out.print("ConceptPositionList: [");
//                        for (Position pos : e.getConceptPositionList()) {
//                            out.print(pos + ",");
//                        }
//                        out.println("]");
//                    }
//                }
                for (Utterance utterance : result.getUtteranceList()) {
//                    out.println("Utterance:");
//                    out.println(" Id: " + utterance.getId());
                    out.println("Utterance text: " + utterance.getString());
//                    out.println(" Position: " + utterance.getPosition());
                    for (PCM pcm : utterance.getPCMList()) {

//                        out.println("Phrase:");
                        out.println(" text: " + pcm.getPhrase().getPhraseText());
//                        out.println(" Minimal Commitment Parse: " + pcm.getPhrase().getMincoManAsString());
//                        out.println("Candidates:");
//                        for (Ev ev : pcm.getCandidatesInstance().getEvList()) {
//                            out.println(" Candidate:");
//                            out.println("  Score: " + ev.getScore());
//                            out.println("  Concept Id: " + ev.getConceptId());
//                            out.println("  Concept Name: " + ev.getConceptName());
//                            out.println("  Preferred Name: " + ev.getPreferredName());
//                            out.println("  Matched Words: " + ev.getMatchedWords());
//                            out.println("  Semantic Types: " + ev.getSemanticTypes());
//                            out.println("  MatchMap: " + ev.getMatchMap());
//                            out.println("  MatchMap alt. repr.: " + ev.getMatchMapList());
//                            out.println("  is Head?: " + ev.isHead());
//                            out.println("  is Overmatch?: " + ev.isOvermatch());
//                            out.println("  Sources: " + ev.getSources());
//                            out.println("  Positional Info: " + ev.getPositionalInfo());
//                            out.println("  Pruning Status: " + ev.getPruningStatus());
//                            out.println("  Negation Status: " + ev.getNegationStatus());
//                        }
//                        out.println(" " + pcm.getPhrase().getMincoMan());
//                        HashMap<String, String> wordTagList = listInputMatches(pcm.getPhrase().getMincoMan());
                        out.println("  Mappings:");
                        for (Mapping map : pcm.getMappingList()) {
//                        out.println(" Map Score: " + map.getScore());
                            for (Ev mapEv : map.getEvList()) {
                                boolean filterOut = false;
                                for (String ignoreWord : ignoredWords) {
                                    for (String matchedWord : mapEv.getMatchedWords()) {
                                        if (matchedWord.toLowerCase().equals(ignoreWord.toLowerCase())) {
                                            if (mapEv.getMatchedWords().size() == 1) {
                                                filterOut = true;
                                            }
                                        }
                                    }
                                }
//                                if (!includePOSTags.contains(getPOSMatch(wordTagList, mapEv.getMatchedWords().get(0)))) {
//                                    filterOut = true;
//                                }
//                                if (mapEv.getSemanticTypes().toString().contains("dsyn")) {
//                                    if (!"".equals(getPOSMatch(wordTagList, mapEv.getMatchedWords().get(0)))) {
//                                        if (!getPOSMatch(wordTagList, mapEv.getMatchedWords().get(0)).equals("noun")) {
//                                            filterOut = true;
//                                        }
//                                    }
//
//                                }
//                                if (isAcronym(mapEv.getPreferredName(), mapEv.getMatchedWords().toString())) {
//                                    filterOut = true;
//                                }
//                                if (!filterOut) {
//                                out.println("   Score: " + mapEv.getScore());
                                out.println("   Filter Status: " + filterOut);
                                out.println("   Concept Id: " + mapEv.getConceptId());
                                out.println("   Term: " + mapEv.getTerm());
                                out.println("   Concept Name: " + mapEv.getConceptName());
                                out.println("   Preferred Name: " + mapEv.getPreferredName());
                                out.println("   Matched Words: " + mapEv.getMatchedWords());
                                out.println("   Semantic Types: " + mapEv.getSemanticTypes());
//                                out.println("   MatchMap: " + mapEv.getMatchMap());
//                                out.println("   MatchMap alt. repr.: " + mapEv.getMatchMapList());
//                                out.println("   is Head?: " + mapEv.isHead());
//                                out.println("   is Overmatch?: " + mapEv.isOvermatch());
//                                out.println("   Sources: " + mapEv.getSources());
//                                out.println("   Positional Info: " + mapEv.getPositionalInfo());
//                                out.println("   Pruning Status: " + mapEv.getPruningStatus());
//                                out.println("   Negation Status: " + mapEv.getNegationStatus());
//                                }
                            }
                        }
                    }
                }

            } else {
                out.println("NULL result instance! ");
            }
        }
        this.api.resetOptions();
    }

    private String getPOSTag(PBTerm pbList) {
        return listInputMatches(pbList).toString();
    }

    public List<PBTerm> listArgs(PBTerm compoundTerm) {
        List<PBTerm> elements = new ArrayList<PBTerm>();
        for (int i = 1; i <= compoundTerm.getArity(); i++) {
            elements.add(compoundTerm.getArgument(i));
        }
        return elements;
    }

    public List<PBTerm> listElements(PBTerm listTerm) {
        List<PBTerm> elements = new ArrayList<PBTerm>();
        for (int i = 1; i <= listTerm.length(); i++) {
            elements.add(TermUtils.getListElement(listTerm, i));
        }
        return elements;
    }

    public List<String> listAtomTermses(PBTerm mincoManTerm) {
        List<String> atomTermsList = new ArrayList<String>();
        if (mincoManTerm.isListCell()) {
            for (PBTerm elem : listElements(mincoManTerm)) {
                List<String> subMatches = listAtomTermses(elem);
                atomTermsList.addAll(subMatches);
            }
        } else if (mincoManTerm.isCompound()) {
            atomTermsList.add("arg:" + mincoManTerm.getName());
            for (PBTerm elem : listArgs(mincoManTerm)) {
                List<String> subMatches = listAtomTermses(elem);
                atomTermsList.addAll(subMatches);
            }
        } else if (mincoManTerm.isAtom()) {
            atomTermsList = new ArrayList<String>();
            atomTermsList.add(mincoManTerm.getName());
            return atomTermsList;
        }
        return atomTermsList;
    }

    private String getPOSMatch(HashMap<String, String> posTagList, String matchedWord) {
        for (HashMap.Entry<String, String> en : posTagList.entrySet()) {
            String key = en.getKey();
            if (key.toLowerCase().equals(matchedWord.toLowerCase())) {
                return en.getValue();
            }
        }
        for (HashMap.Entry<String, String> en : posTagList.entrySet()) {
            String key = en.getKey();
            if (key.toLowerCase().contains(matchedWord.toLowerCase())) {
                return en.getValue();
            }
        }
        for (HashMap.Entry<String, String> en : posTagList.entrySet()) {
            String key = en.getKey();
            if (matchedWord.toLowerCase().contains(key.toLowerCase())) {
                return en.getValue();
            }
        }
        return "";
    }

    private boolean isAcronym(String conceptName, String matchedWords) {
        String match = matchedWords;
        match = match.substring(1, match.length() - 1);

        if (!(conceptName.toLowerCase().contains(match.toLowerCase()) || match.toLowerCase().contains(conceptName.toLowerCase()))) {
            return true;
        }
        JaroWinklerDistance dist = new JaroWinklerDistance();
        double measure = dist.apply(conceptName, matchedWords);
        if (measure > 0.8) {
            return false;
        }
        return false;
    }

    public HashMap<String, String> listInputMatches(PBTerm mincoManTerm) {
        HashMap<String, String> termlist = new HashMap<String, String>();
        List<String> atomTermsList = listAtomTermses(mincoManTerm);
        PeekingIterator<String> iter = new PeekingIterator<>(atomTermsList.iterator());
        while (iter.hasNext()) {

            if (iter.next().equals("arg:inputmatch")) {
                String tag, word = "";
                word = iter.next();
                while (iter.hasNext()) {
                    String p = iter.peek();
                    if (!p.startsWith("arg:")) {
                        word = word + " " + iter.next();
                    } else if (p.startsWith("arg:tag")) {
                        iter.next();
                        tag = iter.next();
                        termlist.put(word, tag);
                    } else {
                        break;
                    }
                }
            }
        }
        return termlist;
    }
}
