CREATE DATABASE  IF NOT EXISTS `ontology` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ontology`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: ontology
-- ------------------------------------------------------
-- Server version	5.7.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `anatomy`
--

DROP TABLE IF EXISTS `anatomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anatomy` (
  `anatomy_id` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`anatomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anatomy`
--

LOCK TABLES `anatomy` WRITE;
/*!40000 ALTER TABLE `anatomy` DISABLE KEYS */;
INSERT INTO `anatomy` VALUES ('C0000739','Abdominal Muscles\n'),('C0000962','Bone structure of acetabulum\n'),('C0001074','Structure of achilles tendon\n'),('C0001428','Adenoidal structure\n'),('C0001625','Adrenal Glands\n'),('C0003461','Anus\n'),('C0003483','Aorta\n'),('C0003707','Arachnoid mater\n'),('C0003842','Arteries\n'),('C0004781','Basal Ganglia\n'),('C0004895','Beak\n'),('C0005400','Bile duct structure\n'),('C0005682','Urinary Bladder\n'),('C0005847','Blood Vessel\n'),('C0006104','Brain\n'),('C0006121','Brain Stem\n'),('C0006141','Breast\n'),('C0006441','Synovial bursa\n'),('C0007572','Celiac Plexus\n'),('C0007874','Cervix Uteri\n'),('C0008913','Bone structure of clavicle\n'),('C0008919','Claw\n'),('C0008984','Clitoris\n'),('C0009194','Bone structure of coccyx\n'),('C0009195','Cochlear structure\n'),('C0009368','Colon structure (body structure)\n'),('C0010031','Cornea\n'),('C0010352','Avian crop\n'),('C0010482','Cuspid\n'),('C0011343','Dental Cementum\n'),('C0011980','Respiratory Diaphragm\n'),('C0013303','Duodenum\n'),('C0013313','Dura Mater\n'),('C0013443','Ear structure\n'),('C0013444','External auditory canal structure\n'),('C0014533','Epididymis\n'),('C0014876','Esophagus\n'),('C0015385','Limb structure\n'),('C0015392','Eye\n'),('C0015420','Eyebrow structure\n'),('C0015422','Eyelash\n'),('C0015426','Eyelid structure\n'),('C0015460','Facial Muscles\n'),('C0015462','Facial nerve structure\n'),('C0015665','Fat Body\n'),('C0015731','Feathers\n'),('C0015811','Femur\n'),('C0015813','Head of femur\n'),('C0015815','Structure of neck of femur\n'),('C0016504','Foot\n'),('C0016536','Forearm\n'),('C0016732','Frontal bone structure\n'),('C0016976','Gallbladder\n'),('C0017067','Ganglia\n'),('C0017420','Genitalia\n'),('C0017421','Female genitalia\n'),('C0017562','Gingiva\n'),('C0017681','glottis\n'),('C0018067','Gonadal structure\n'),('C0018494','Hair\n'),('C0018534','Hallux structure\n'),('C0018563','Hand\n'),('C0018787','Heart\n'),('C0018792','Heart Atrium\n'),('C0018826','Heart Valves\n'),('C0018827','Heart Ventricle\n'),('C0019552','Hip structure\n'),('C0020412','Structure of hymen\n'),('C0020885','ileum\n'),('C0021851','Large Intestine\n'),('C0021852','Intestines| Small\n'),('C0021853','Intestines\n'),('C0022077','Iris (Eye)\n'),('C0022122','Bone structure of ischium\n'),('C0022359','Jaw\n'),('C0022646','Kidney\n'),('C0022742','Knee\n'),('C0022889','Labyrinth\n'),('C0022907','Lacrimal gland structure\n'),('C0023078','Larynx\n'),('C0023217','Leg Bones\n'),('C0023317','Lens| Crystalline\n'),('C0023759','Lip structure\n'),('C0023884','Liver\n'),('C0024091','Bone structure of lumbar vertebra\n'),('C0024109','Lung\n'),('C0024204','lymph nodes\n'),('C0024687','Mandible\n'),('C0024947','Maxilla\n'),('C0025148','Medulla Oblongata\n'),('C0026264','Mitral Valve\n'),('C0026367','Molar tooth\n'),('C0026369','Structure of wisdom tooth\n'),('C0027342','Nail plate\n'),('C0027532','Skeletal muscle structure of neck\n'),('C0027792','Neural Pathways\n'),('C0028109','Nipples\n'),('C0028429','Nose\n'),('C0028863','Muscle of orbit\n'),('C0028938','Olfactory Nerve\n'),('C0029130','Optic Nerve\n'),('C0029939','Ovary\n'),('C0030274','Pancreas\n'),('C0030580','Parotid Gland\n'),('C0030747','Pectoralis Muscles\n'),('C0030786','Hip Bone\n'),('C0030797','Pelvis\n'),('C0030851','penis\n'),('C0031354','Pharyngeal structure\n'),('C0032639','Pontine structure\n'),('C0033572','Prostate\n'),('C0034014','Bone structure of pubis\n'),('C0034121','Pupil\n'),('C0034196','Pylorus\n'),('C0034518','Structure of radial nerve\n'),('C0034896','Rectum\n'),('C0035298','Retina\n'),('C0035561','Bone structure of rib\n'),('C0036270','Scalp structure\n'),('C0036277','Bone structure of scapula\n'),('C0036394','Structure of sciatic nerve\n'),('C0036410','Sclera\n'),('C0036471','Scrotum\n'),('C0036505','Sebaceous Glands\n'),('C0037189','Sinoatrial Node\n'),('C0037303','Bone structure of cranium\n'),('C0037884','Sphenoid bone structure\n'),('C0037925','Spinal Cord\n'),('C0037941','Spinal nerve structure\n'),('C0037949','Vertebral column\n'),('C0037991','Splanchnic Nerves\n'),('C0037993','Spleen\n'),('C0038293','Sternum\n'),('C0038351','Stomach\n'),('C0038556','Submandibular gland\n'),('C0038879','Structure of sural nerve\n'),('C0038925','Surgical Flaps\n'),('C0038989','Sweat Glands\n'),('C0039259','Tail\n'),('C0039316','Tarsal Bones\n'),('C0039337','Taste Buds\n'),('C0039482','Temporal Arteries\n'),('C0039485','Temporal Lobe\n'),('C0039508','Tendon structure\n'),('C0039597','Testis\n'),('C0039729','Thalamic structure\n'),('C0040067','Thumb structure\n'),('C0040132','Thyroid Gland\n'),('C0040184','Bone structure of tibia\n'),('C0040357','Toes\n'),('C0040408','Tongue\n'),('C0040421','Palatine Tonsil\n'),('C0040426','Tooth structure\n'),('C0040452','Tooth root structure\n'),('C0040578','Trachea\n'),('C0040746','Structure of transplanted liver\n'),('C0040996','Trigeminal nerve structure\n'),('C0041159','Trochlear nerve structure\n'),('C0041445','Tympanic membrane structure\n'),('C0041638','Umbilicus (Anatomy)\n'),('C0041951','Ureter\n'),('C0041967','Urethra\n'),('C0042027','Urinary tract\n'),('C0042149','Uterus\n'),('C0042173','Uvula of palate\n'),('C0042232','Vagina\n'),('C0042276','Vagus nerve structure\n'),('C0042449','Veins\n'),('C0042640','Vibrissae\n'),('C0042930','Vocal cord structure\n'),('C0042993','Vulva\n'),('C0043189','Wing\n'),('C0043539','Zygomatic bone\n'),('C0078960','Anterior Cruciate Ligament\n'),('C0085515','Rotator Cuff\n'),('C0149538','Skin structure of breast\n'),('C0149561','Structure of anterior cerebral artery\n'),('C0149566','Structure of middle cerebral artery\n'),('C0150934','Ear| nose and throat\n'),('C0162859','Common carotid artery\n'),('C0175173','Neocortex\n'),('C0178784','Organ\n'),('C0205029','Skin structure of head\n'),('C0205878','Glomus tympanicum\n'),('C0206248','Pelvic Diaphragm\n'),('C0221960','Structure of terminal hair\n'),('C0221971','Hair follicle structure\n'),('C0221979','Entire hair of scalp\n'),('C0221980','Structure of hair of face\n'),('C0221982','Structure of beard\n'),('C0222001','Structure of nail of finger\n'),('C0222002','Structure of nail of thumb\n'),('C0222007','Structure of nail of toe\n'),('C0222008','Structure of nail of great toe\n'),('C0222017','Abdominal skin pouch\n'),('C0222032','Spur (body structure)\n'),('C0222041','Shell - Animal skin appendage\n'),('C0222045','Integumentary scale\n'),('C0222084','Skin structure of face\n'),('C0222095','Skin of external nose\n'),('C0222101','Skin of lip\n'),('C0222155','Skin structure of back\n'),('C0222173','Skin structure of inguinal region\n'),('C0222193','Skin of penis\n'),('C0222198','Skin of scrotum\n'),('C0222224','Skin structure of hand\n'),('C0222234','Skin of finger\n'),('C0222269','Skin structure of thigh\n'),('C0222275','Skin structure of knee\n'),('C0222328','Skin structure of all toes\n'),('C0222600','Right breast\n'),('C0222601','Left breast\n'),('C0222632','Teat\n'),('C0222760','Structure of greater horn of hyoid bone\n'),('C0222762','Thoracic cage structure\n'),('C0223651','Iliac crest structure\n'),('C0223683','Structure of head of humerus\n'),('C0223741','Trapezoid bone structure\n'),('C0223976','Entire first metatarsal\n'),('C0224086','Belly of skeletal muscle\n'),('C0224236','Structure of long head of biceps brachii muscle\n'),('C0224334','Skeletal muscle structure of back\n'),('C0224335','Structure of muscle of lower back\n'),('C0224337','Skeletal muscle structure of thorax\n'),('C0224415','Skeletal muscle structure of hip\n'),('C0224416','Skeletal muscle structure of thigh\n'),('C0224429','Structure of piriformis muscle\n'),('C0224440','Structure of quadriceps femoris muscle\n'),('C0224456','Skeletal muscle structure of lower leg\n'),('C0224972','Structure of tendon of foot\n'),('C0225414','Bridge of nose\n'),('C0225434','Inferior nasal concha\n'),('C0225706','Right lung\n'),('C0225730','Left lung\n'),('C0225754','Both lungs\n'),('C0225756','Structure of upper lobe of lung\n'),('C0225836','Interatrial septum\n'),('C0225860','Left atrial structure\n'),('C0225883','Right ventricular structure\n'),('C0225988','Structure of small blood vessel (organ)\n'),('C0226087','Left common carotid artery structure\n'),('C0226157','Structure of left internal carotid artery\n'),('C0226501','Structure of muscular type vein\n'),('C0226792','Structure of vein of upper extremity\n'),('C0226926','External Lip\n'),('C0226951','Structure of gland of mucous membrane of tongue\n'),('C0226952','Dorsum of tongue\n'),('C0226958','Root of tongue\n'),('C0226993','Tooth Crowns\n'),('C0227073','Mandibular right first molar\n'),('C0227075','Mandibular right third molar tooth\n'),('C0227088','Deciduous maxillary right first molar tooth\n'),('C0227123','Gum of mandible\n'),('C0227149','Pharyngeal wall\n'),('C0227192','Inferior esophageal sphincter structure\n'),('C0227296','Papilla of duodenum\n'),('C0227391','Sigmoid colon\n'),('C0227411','Anal canal\n'),('C0227458','Stensen\'s duct\n'),('C0227470','Structure of right submaxillary gland\n'),('C0227471','Structure of left submaxillary gland\n'),('C0227614','Left kidney\n'),('C0227665','Both kidneys\n'),('C0227755','Right side of vulva\n'),('C0227759','Labium\n'),('C0227760','labium majus\n'),('C0227766','labium minus\n'),('C0227800','Anterior wall of vagina\n'),('C0227817','fundus uteri\n'),('C0227874','Structure of left ovary\n'),('C0227936','Body of penis\n'),('C0227948','Glans penis\n'),('C0227951','Corona of glans\n'),('C0227952','Foreskin of penis\n'),('C0227997','Structure of right testis\n'),('C0227998','Structure of left testis\n'),('C0228084','Nerve root structure\n'),('C0228179','Lobe of brain\n'),('C0228193','Right frontal lobe structure\n'),('C0228341','Lateral posterior nucleus of thalamus\n'),('C0228505','Nodulus cerebelli\n'),('C0228897','Lumbar nerve\n'),('C0228972','Sympathetic trunk structure\n'),('C0229090','Left eye structure\n'),('C0229194','Tunica interna of eyeball\n'),('C0229201','Structure of retina of both eyes\n'),('C0229258','Lower eyelid\n'),('C0229298','Right ear structure\n'),('C0229299','Left ear structure\n'),('C0229315','Ear lobe\n'),('C0229433','Right Eustachian canal structure\n'),('C0229447','Left inner ear structure\n'),('C0229653','Lymphoid aggregate\n'),('C0229802','Structure of retroperitoneal lymph node\n'),('C0229867','Right faucial tonsil structure\n'),('C0229868','Left faucial tonsil structure\n'),('C0229871','Lingual tonsil\n'),('C0229962','Body part\n'),('C0229964','Lower body part structure\n'),('C0229965','half of body\n'),('C0229966','Structure of right half of body\n'),('C0229967','Structure of left half of body\n'),('C0229985','Surgical margins\n'),('C0230102','Lower back structure\n'),('C0230107','Withers\n'),('C0230190','Mons pubis\n'),('C0230331','All legs\n'),('C0230346','Right upper arm structure\n'),('C0230347','Left upper arm structure\n'),('C0230348','Both upper arms\n'),('C0230365','Structure of right wrist\n'),('C0230366','Structure of left wrist\n'),('C0230370','Structure of right hand\n'),('C0230371','Structure of left hand\n'),('C0230388','Index finger\n'),('C0230393','Middle finger structure\n'),('C0230398','Fourth finger\n'),('C0230403','Fifth finger\n'),('C0230415','Right lower extremity\n'),('C0230420','Both lower extremities\n'),('C0230425','Structure of right thigh\n'),('C0230426','Structure of left thigh\n'),('C0230431','Structure of right knee\n'),('C0230442','Structure of right lower leg\n'),('C0230443','Structure of left lower leg\n'),('C0230446','Both lower legs\n'),('C0230448','Structure of left ankle\n'),('C0230461','Structure of left foot\n'),('C0230462','Structure of dorsum of foot\n'),('C0262201','Area X\n'),('C0262950','Skeletal bone\n'),('C0282335','Respiratory tract structure\n'),('C0376152','Marrow\n'),('C0376161','Comb animal structure\n'),('C0391908','colon rectal\n'),('C0423866','Lanugo\n'),('C0447612','Vaginal wall\n'),('C0448064','Bone structure of hand\n'),('C0448161','Structure of shaft of rib\n'),('C0448421','Skeletal muscle structure of pelvis\n'),('C0448482','Posterior crural muscle structure\n'),('C0448913','Entire skin of heel\n'),('C0457846','Cervical segment of spinal cord\n'),('C0458451','Spongy urethra\n'),('C0458532','Laryngeal prominence\n'),('C0458582','Upper lip structure\n'),('C0458583','Lower lip structure\n'),('C0458708','Frenulum of penis\n'),('C0458827','Airway structure\n'),('C0459385','Brain tissue\n'),('C0459592','Eyelid gland\n'),('C0459624','Lacrimal duct\n'),('C0507115','Superior segmental bronchus\n'),('C0507157','Left clavicle\n'),('C0507205','Right scapula\n'),('C0507206','Left scapula\n'),('C0521421','Entire ear\n'),('C0545775','Set of glands of mouth\n'),('C0545797','liver and spleen\n'),('C0545917','urethra and vagina\n'),('C0545924','penis and vagina\n'),('C0545947','vagina and uterus\n'),('C0545952','Uterus+Fallopian tubes\n'),('C0545990','brain and cranium\n'),('C0549207','Bone structure of spine\n'),('C0559499','Biceps brachii muscle structure\n'),('C0559987','Entire tendon of subscapularis muscle\n'),('C0581269','Thoracic spine structure\n'),('C0581668','Muscle structure of hand\n'),('C0581753','Muscle structure of foot\n'),('C0582802','Digit structure\n'),('C0584876','Bone structure of phalanx of foot\n'),('C0584882','Infraspinatous muscle structure\n'),('C0584895','Posterior muscle of thigh structure\n'),('C0585636','Upper eyelid structure\n'),('C0588054','Cervical lymph node group\n'),('C0588055','Mediastinal lymph node group\n'),('C0682630','female ovule\n'),('C0682651','sensory pathway\n'),('C0684083','Structure of pelvic girdle\n'),('C0684087','masto-\n'),('C0684110','sex organs\n'),('C0687023','Structure of skeletal muscle of shoulder\n'),('C0687028','Duct (organ) structure\n'),('C0687080','Paw\n'),('C0694560','bladder/urinary tract\n'),('C0694649','Left deltoid\n'),('C0694651','Left gluteus medius\n'),('C0699772','Skin structure of scalp\n'),('C0699819','Gut\n'),('C0700374','Palate\n'),('C0728985','Cervical spine\n'),('C0729594','Axillary lymph node group\n'),('C0729596','Inguinal lymph node group\n'),('C0729697','Great vein\n'),('C0730183','Joint structure of ankle and/or foot\n'),('C0734892','Right hemiliver\n'),('C0735427','Right hip bone\n'),('C0736268','Liver parenchyma\n'),('C0738572','Left labium majus\n'),('C0739301','Left femoral vein\n'),('C0741968','carotid\n'),('C0746922','Anatomic Node\n'),('C0796494','lobe\n'),('C0815007','right brain\n'),('C0817319','Right femur\n'),('C0833275','Musculature of left hand\n'),('C0836921','Tonsil\n'),('C0869996','hand and wrist\n'),('C0870018','Ankle+Foot\n'),('C0920786','Left eyeball\n'),('C0925962','Right cheek\n'),('C0925963','Left cheek\n'),('C0925983','Hair of nose\n'),('C0926321','Hair of forearm\n'),('C0926332','Hair of leg\n'),('C0926393','Hair of chin\n'),('C0927939','Right tympanic membrane\n'),('C0929370','Intralobular part of terminal lactiferous duct\n'),('C0930459','Sideburn\n'),('C0932441','Muscle of pelvic diaphragm\n'),('C0934418','Hair of abdomen\n'),('C0934502','anatomical layer\n'),('C0934691','Eyelash of upper eyelid\n'),('C0934770','Right middle finger\n'),('C0935603','Left thumb\n'),('C0935616','Chamber (anatomical)\n'),('C0947131','Hip.bilateral\n'),('C0947181','Ribs.left\n'),('C0947182','ribs on right side\n'),('C0947204','Toes.left\n'),('C0947205','Toes.right\n'),('C0947209','Vein.left\n'),('C0947210','Vein.right\n'),('C0947619','Finger.right\n'),('C0947620','Finger.left\n'),('C1140618','Upper Extremity\n'),('C1184743','bony process\n'),('C1184752','Set of vascular nerves\n'),('C1185726','Cutaneous vein\n'),('C1185740','Tract\n'),('C1185781','Labrum\n'),('C1186763','Stem of Organ\n'),('C1186983','anatomic valve\n'),('C1235681','Distal tendon of biceps brachii\n'),('C1253959','Branch of\n'),('C1261040','Hair of scalp\n'),('C1261042','Skin of vulva\n'),('C1261076','Structure of left upper lobe of lung\n'),('C1261077','Structure of left lower lobe of lung\n'),('C1261082','Left coronary artery structure\n'),('C1261103','Fifth toe structure\n'),('C1261195','Intervertebral disc structure of fifth lumbar vertebra\n'),('C1266881','Entire terminal hair of face\n'),('C1266908','Entire bone (organ)\n'),('C1266928','Nasal turbinate bone structure\n'),('C1267072','Entire vertebral column\n'),('C1267211','Entire duct\n'),('C1268087','Upper body structure\n'),('C1268088','Lower body structure\n'),('C1268090','Skin part\n'),('C1268110','Heart part\n'),('C1268137','Penis part\n'),('C1268169','Nerve part\n'),('C1268194','Nail part\n'),('C1268203','Mouth region part\n'),('C1268205','Spleen part\n'),('C1268215','Head part\n'),('C1268221','Neck part\n'),('C1268255','Entire right upper arm\n'),('C1268256','Entire left upper arm\n'),('C1268257','Entire right elbow region\n'),('C1268258','Entire left elbow region\n'),('C1268973','Entire inner ear\n'),('C1268976','Entire submandibular gland\n'),('C1268977','Entire frontal lobe\n'),('C1268986','Entire trochlear nerve\n'),('C1268989','Entire adrenal gland\n'),('C1268990','Entire breast\n'),('C1268998','Entire small intestine\n'),('C1269000','Entire appendix\n'),('C1269001','Entire gallbladder\n'),('C1269004','Entire mitral valve\n'),('C1269024','Entire inferior vena cava\n'),('C1269032','Entire uterus\n'),('C1269040','Entire nail bed\n'),('C1269045','Entire skeletal muscle of neck\n'),('C1269047','Entire lymph node\n'),('C1269048','Entire temporomandibular joint\n'),('C1269078','Entire upper limb\n'),('C1269533','Entire floor of mouth\n'),('C1269537','Entire brain\n'),('C1269539','Entire glans penis\n'),('C1269542','Entire sacrum\n'),('C1269612','Entire upper arm\n'),('C1269613','Entire thumb\n'),('C1269825','Skeletal muscle structure of chest wall\n'),('C1269870','Entire thoracic spine\n'),('C1269891','Entire right ventricle\n'),('C1269903','Entire posterior crural muscle\n'),('C1275670','Collateral branch of vessel\n'),('C1278836','Entire spinal cord\n'),('C1278864','Entire sural nerve\n'),('C1278878','Entire thyroid gland\n'),('C1278891','Entire iris\n'),('C1278896','Entire nose\n'),('C1278899','Entire maxillary sinus\n'),('C1278902','Entire sphenoid sinus\n'),('C1278908','Entire lung\n'),('C1278909','Entire mediastinum\n'),('C1278911','Entire lip\n'),('C1278913','Entire tongue\n'),('C1278914','Entire palate\n'),('C1278916','Entire parotid gland\n'),('C1278917','Entire salivary gland\n'),('C1278919','Entire esophagus\n'),('C1278920','Entire stomach\n'),('C1278926','Entire rectum\n'),('C1278927','Entire anus\n'),('C1278932','Entire spleen\n'),('C1278960','Entire vein\n'),('C1278978','Entire kidney\n'),('C1278980','Entire prostate\n'),('C1278981','Entire testis\n'),('C1278982','Entire epididymis\n'),('C1278983','Entire spermatic cord\n'),('C1278985','Entire vagina\n'),('C1278992','Entire ovary\n'),('C1278997','Entire scalp\n'),('C1279001','Entire skin of back\n'),('C1279035','Entire chest wall\n'),('C1279051','Entire fascia\n'),('C1279083','Entire radius\n'),('C1279118','Entire tibia\n'),('C1279153','Entire cheek\n'),('C1279548','Entire right thigh\n'),('C1279549','Entire left thigh\n'),('C1279571','Entire right knee\n'),('C1279572','Entire left knee\n'),('C1279605','Entire right lower leg\n'),('C1279606','Entire left lower leg\n'),('C1279864','Entire pelvis\n'),('C1279998','Entire right foot\n'),('C1279999','Entire left foot\n'),('C1280013','Entire right ankle\n'),('C1280065','Entire spine\n'),('C1280090','Entire limb\n'),('C1280202','Entire eye\n'),('C1280205','Entire upper eyelid\n'),('C1280388','Entire upper lip\n'),('C1280389','Entire lower lip\n'),('C1280392','Entire soft palate\n'),('C1280541','Entire nerve\n'),('C1280542','Entire beard\n'),('C1280632','Entire trunk\n'),('C1280698','Entire throat (surface region of neck)\n'),('C1280733','Entire eyebrow\n'),('C1280734','Entire eyelid\n'),('C1280736','Entire palatine tonsil\n'),('C1280739','Entire penis\n'),('C1280740','Entire scrotum\n'),('C1280742','Entire vulva\n'),('C1280744','Entire umbilicus\n'),('C1281196','Entire right ovary\n'),('C1281197','Entire left ovary\n'),('C1281245','Entire right tonsil (palatine)\n'),('C1281297','Entire hair follicle\n'),('C1281562','Entire tooth\n'),('C1281569','Entire colon\n'),('C1281570','Entire heart\n'),('C1281572','Entire ureter\n'),('C1281573','Entire bladder\n'),('C1281574','Entire urethra\n'),('C1281575','Entire scapula\n'),('C1281577','Entire rib\n'),('C1281583','Entire hand\n'),('C1281584','Entire finger\n'),('C1281586','Entire thigh\n'),('C1281587','Entire foot\n'),('C1281589','Entire toe\n'),('C1281590','Entire head\n'),('C1281591','Entire face\n'),('C1281592','Entire neck\n'),('C1281594','Entire abdomen\n'),('C1281813','Central nervous tissue\n'),('C1281955','Entire left frontal lobe\n'),('C1282852','Entire deep vein\n'),('C1283622','Part of diaphragm\n'),('C1283707','Occipital nerve\n'),('C1283788','Entire spinal nerve\n'),('C1283892','Entire nasal passage\n'),('C1284112','Entire lumbar vertebral column\n'),('C1284724','Entire lumbar nerve\n'),('C1285092','Gland\n'),('C1285501','Structure of vein of hand\n'),('C1288305','Entire eyelash\n'),('C1288410','Entire left testis\n'),('C1288948','Entire right hand\n'),('C1288949','Entire left hand\n'),('C1289033','Entire right ear\n'),('C1289055','Entire left ear\n'),('C1289205','Entire left parotid gland\n'),('C1289344','Entire hair of face\n'),('C1299162','Lip part\n'),('C1304986','Entire deltoid muscle\n'),('C1305372','Hilar lymph node\n'),('C1305417','Entire elbow region\n'),('C1305418','Entire calf of leg (body structure)\n'),('C1305636','Entire hair of pubis\n'),('C1305781','Supraspinatus tendon\n'),('C1306819','Entire prepuce\n'),('C1318154','Root body part\n'),('C1409894','Sphincter\n'),('C1508672','Ribs.upper.right\n'),('C1512329','Hair Part\n'),('C1516847','Endocrine System Part\n'),('C1517465','Digestive System Part\n'),('C1518256','Nervous System Part\n'),('C1519546','Tonsil Part\n'),('C1522460','Thoracic aorta\n'),('C1550227','Body Parts - Canal\n'),('C1550229','Common Duct\n'),('C1550235','Cord - Body Parts\n'),('C1550236','Coral - body part\n'),('C1550244','Cuff - body part\n'),('C1550261','Glans\n'),('C1550262','Gluteal\n'),('C1550270','Knee Fluid\n'),('C1550277','Meatus\n'),('C1550306','Supra Cervical\n'),('C1552118','Supernumerary maxillary right second premolar\n'),('C1552122','Supernumerary maxillary right central incisor\n'),('C1552124','Supernumerary maxillary left lateral incisor\n'),('C1552130','16s\n'),('C1552134','20s\n'),('C1552154','Js\n'),('C1552158','Supernumerary mandibular right central primary incisor\n'),('C1556138','Disc - Body Part\n'),('C1563093','Distal intermedial ridge of tibia\n'),('C1708100','Frontal Artery\n'),('C1709950','Rib 3\n'),('C1719065','Hip+Thigh\n'),('C1720438','Entire left anterior naris\n'),('C1720679','Entire right anterior naris\n'),('C1735318','Vestibular Labyrinth\n'),('C1744702','Gluteal muscle\n'),('C1760774','Structure of muscle of forearm\n'),('C1880192','Crypt\n'),('C1959673','Muscle of rotator cuff\n'),('C1995013','Set of muscles\n'),('C2333155','Set of fingers of left hand\n'),('C2362788','Musculature of arm\n'),('C2371961','Body hair\n'),('C2706046','Eye lid\n'),('C2937240','Upper abdomen structure\n'),('C2985236','Structure of thick cushion of skin on foot\n'),('C2986716','Quarter of the Udder\n'),('C2987482','Animal Coat\n'),('C3640698','Mid-Left Anterior Descending Artery\n'),('C3686591','Tentacle\n'),('C3686612','Structure of blood vessel of dermis\n'),('C3686743','Pharyngeal area structure\n'),('C3887606','Entire lumbar region\n'),('C3887642','Hippocampus Proper\n'),('C4019107','Collar Bone\n'),('C4019253','Kneecap\n'),('C4048756','Right arm\n'),('C4068922','Earlobe\n'),('C4071827','Angio\n');
/*!40000 ALTER TABLE `anatomy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-23  9:39:10
