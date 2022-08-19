/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.21-MariaDB : Database - django_prac
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`django_prac` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `django_prac`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values 
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add destination',7,'add_destination'),
(26,'Can change destination',7,'change_destination'),
(27,'Can delete destination',7,'delete_destination'),
(28,'Can view destination',7,'view_destination'),
(29,'Can add disease',8,'add_disease'),
(30,'Can change disease',8,'change_disease'),
(31,'Can delete disease',8,'delete_disease'),
(32,'Can view disease',8,'view_disease'),
(33,'Can add lists',9,'add_lists'),
(34,'Can change lists',9,'change_lists'),
(35,'Can delete lists',9,'delete_lists'),
(36,'Can view lists',9,'view_lists'),
(37,'Can add symptomps_ list',10,'add_symptomps_list'),
(38,'Can change symptomps_ list',10,'change_symptomps_list'),
(39,'Can delete symptomps_ list',10,'delete_symptomps_list'),
(40,'Can view symptomps_ list',10,'view_symptomps_list'),
(41,'Can add title_lists',11,'add_title_lists'),
(42,'Can change title_lists',11,'change_title_lists'),
(43,'Can delete title_lists',11,'delete_title_lists'),
(44,'Can view title_lists',11,'view_title_lists'),
(45,'Can add disease_explanation',12,'add_disease_explanation'),
(46,'Can change disease_explanation',12,'change_disease_explanation'),
(47,'Can delete disease_explanation',12,'delete_disease_explanation'),
(48,'Can view disease_explanation',12,'view_disease_explanation'),
(49,'Can add explanation_treatment',13,'add_explanation_treatment'),
(50,'Can change explanation_treatment',13,'change_explanation_treatment'),
(51,'Can delete explanation_treatment',13,'delete_explanation_treatment'),
(52,'Can view explanation_treatment',13,'view_explanation_treatment');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `auth_user` */

insert  into `auth_user`(`id`,`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`) values 
(1,'pbkdf2_sha256$320000$Q9uxhWMvvYUEXYrdaodJal$9z08+0SKr3yhqrXRSgwtqxxKb4SwQLI39jMc3nV9KTs=','2022-01-23 06:49:21.741196',0,'User','','','user@mail.com',0,1,'2022-01-18 00:01:42.382642');

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `disease_explanation` */

DROP TABLE IF EXISTS `disease_explanation`;

CREATE TABLE `disease_explanation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `explanation` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

/*Data for the table `disease_explanation` */

insert  into `disease_explanation`(`id`,`title`,`explanation`) values 
(1,'Covid-19','Covid-19: a coronavirus-caused acute sickness in humans that is marked by fever and cough and can escalate to severe symptoms and, in some circumstances, death.'),
(2,'Cold','Cold: is a viral upper respiratory tract infection that primarily affects the nasal, throat, and larynx respiratory mucosa.'),
(3,'Flu','Flu: A virus attacking the respiratory tract causes this sickness.'),
(4,'Asthma','Asthma: Shortness of breath, wheezing, and cough are symptoms of a lung illness characterized by narrowing of the airways, the tubes that convey air into the lungs, which are irritated and restricted.'),
(5,'Lung cancer','Lung cancer: Lung cancer is cancer that starts in the cells of the lungs. It causes breathing difficulties, bloody coughing, chest pain, hoarseness, headaches, and weight loss.'),
(6,'Epilepsy','Epilepsy: Seizures, as well as strange sensations and behaviors, are symptoms of a neurological condition. '),
(7,'Pneumonia','Pneumonia: Infection of one or both of the lungs\' air sacs. A strong cough with phlegm, fever, chills, and trouble breathing characterize this illness.'),
(8,'Rabies','Rabies: A virus that causes brain inflammation and spreads through the saliva of affected animals.'),
(9,'Diabetes','Diabetes: a condition in which the body\'s capacity to create or respond to the hormone insulin is hampered, resulting in improper carbohydrate metabolism and high blood glucose levels.'),
(10,'Food poisoning','Food poising: Food poisoning is an ailment caused by eating tainted or poisoned food.'),
(11,'Allergies','Allergies: a harmful immune response by the body to a substance to which it has grown hypersensitive, such as a specific meal, pollen, fur, or dust.'),
(12,'Heart failure','Heart failure: A progressive cardiac condition that affects the heart\'s pumping activity. This results in exhaustion and shortness of breath.'),
(13,'Bladder cancer','Bladder cancer: Urinary bladder cancer is a common kind of cancer that arises in the bladder. Back pain, painful urination, frequent urination, and blood in the urine are all symptoms of this condition.'),
(14,'Bone cancer','Bone cancer: A bone tumor is a development of tissue in the bone that is abnormal.'),
(15,'Gingivitis','Gingivitis: Gum disease, gum inflammation, and periodontal disease are all terms for the same thing.'),
(16,'Kidney stone','Kidney stone: A reduction in urine volume or an excess of stone-forming chemicals in the urine can cause kidney stones.'),
(17,'High blood pressure','High blood pressure: The arteries are under a lot of pressure (vessels that carry blood from the heart to the rest of the body).'),
(18,'Anemia','Anemia: A lack of healthy red blood cells in the bloodstream. Red blood cells (RBCs) are responsible for transporting oxygen throughout the body.'),
(19,'Hemorrhagic fevers','Hemorrhagic fever: is a term used to characterize a number of dangerous and life-threatening infections.'),
(20,'Norovirus infection','Norovirus infection: Diarrhea and vomiting are symptoms of a highly dangerous viral illness. It is transmitted through tainted food and water.'),
(21,'Chronic kidney disease','Chronic kidney disease: A condition in which kidney function gradually deteriorates.'),
(22,'Rotavirus infection','Rotavirus infection: A infectious virus that causes stomach and bowel irritation, resulting in diarrhea.'),
(23,'Fatty liver','Fatty liver: A disorder that develops as a result of an accumulation of fat in the liver.'),
(24,'Dengue','Dengue: a terrible tropical viral disease spread by mosquitoes that causes high fever and severe joint problems.'),
(25,'Osteoporosis','Osteoporosis: A condition in which bone strength deteriorates and becomes vulnerable to fracture. The hip, wrist, or spine are commonly affected.'),
(26,'Fibromyalgia','Fibromyalgia: Chronic muscle soreness, tenderness, exhaustion, and sleep difficulties define this muscle and soft tissue condition.'),
(27,'Meningitis','Meningitis: Infection of the meninges, the brain\'s protective tissue, which produces stiff neck, headaches, and fever.'),
(28,'E. coli','E. coli: a bacterium that can cause severe food poisoning in humans and other animals and is usually present in their intestines.'),
(29,'Pink eye','Pink eye: Because of a bacterial or viral infection or an allergic reaction, the translucent covering of the eye becomes inflamed.'),
(30,'Salmonella infection','Salmonella infection: The majority of salmonella infections are categorized as stomach flu (gastroenteritis).'),
(31,'Malaria','Malaria: A parasitic disease spread by mosquitos. This results in a high fever, severe chills, and excessive perspiration.'),
(32,'Tuberculosis','Tuberculosis: A bacteria-caused infectious infection that primarily affects the lungs but can also damage other organs such as the bone, brain, and spine.'),
(33,'Scarlet fever','Scarlet fever: Children are usually affected by a bacterial infection caused by Group A streptococcal bacteria.');

/*Table structure for table `disease_lists` */

DROP TABLE IF EXISTS `disease_lists`;

CREATE TABLE `disease_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Covid_19` varchar(30) NOT NULL,
  `Cold` varchar(30) NOT NULL,
  `Flu` varchar(30) NOT NULL,
  `Asthma` varchar(30) NOT NULL,
  `Lung_cancer` varchar(30) NOT NULL,
  `Epilepsy` varchar(30) NOT NULL,
  `Pneumonia` varchar(30) NOT NULL,
  `Rabies` varchar(30) NOT NULL,
  `Diabetes` varchar(30) NOT NULL,
  `Food_poisoning` varchar(30) NOT NULL,
  `Allergies` varchar(30) NOT NULL,
  `Heart_failure` varchar(30) NOT NULL,
  `Bladder_cancer` varchar(30) NOT NULL,
  `Bone_cancer` varchar(30) NOT NULL,
  `Gingivitis` varchar(30) NOT NULL,
  `Kidney_stone` varchar(30) NOT NULL,
  `High_blood_pressure` varchar(30) NOT NULL,
  `Anemia` varchar(30) NOT NULL,
  `Hemorrhagic_fevers` varchar(30) NOT NULL,
  `Norovirus_infection` varchar(30) NOT NULL,
  `Chronic_kidney_disease` varchar(30) NOT NULL,
  `Rotavirus_infection` varchar(30) NOT NULL,
  `Fatty_liver` varchar(30) NOT NULL,
  `Dengue` varchar(30) NOT NULL,
  `Osteoporosis` varchar(30) NOT NULL,
  `Fibromyalgia` varchar(30) NOT NULL,
  `Meningitis` varchar(30) NOT NULL,
  `E_coli` varchar(30) NOT NULL,
  `Pink_eye` varchar(30) NOT NULL,
  `Salmonella_infection` varchar(30) NOT NULL,
  `Malaria` varchar(30) NOT NULL,
  `Tuberculosis` varchar(30) NOT NULL,
  `Scarlet_fever` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `disease_lists` */

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `django_admin_log` */

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values 
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(6,'sessions','session'),
(7,'travello','destination'),
(8,'travello','disease'),
(12,'travello','disease_explanation'),
(13,'travello','explanation_treatment'),
(9,'travello','lists'),
(10,'travello','symptomps_list'),
(11,'travello','title_lists');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values 
(1,'contenttypes','0001_initial','2022-01-17 23:49:52.571242'),
(2,'auth','0001_initial','2022-01-17 23:49:59.832665'),
(3,'admin','0001_initial','2022-01-17 23:50:02.817342'),
(4,'admin','0002_logentry_remove_auto_add','2022-01-17 23:50:02.908385'),
(5,'admin','0003_logentry_add_action_flag_choices','2022-01-17 23:50:02.990274'),
(6,'contenttypes','0002_remove_content_type_name','2022-01-17 23:50:03.531742'),
(7,'auth','0002_alter_permission_name_max_length','2022-01-17 23:50:04.593356'),
(8,'auth','0003_alter_user_email_max_length','2022-01-17 23:50:04.723711'),
(9,'auth','0004_alter_user_username_opts','2022-01-17 23:50:04.801204'),
(10,'auth','0005_alter_user_last_login_null','2022-01-17 23:50:05.157256'),
(11,'auth','0006_require_contenttypes_0002','2022-01-17 23:50:05.187497'),
(12,'auth','0007_alter_validators_add_error_messages','2022-01-17 23:50:05.241758'),
(13,'auth','0008_alter_user_username_max_length','2022-01-17 23:50:05.348310'),
(14,'auth','0009_alter_user_last_name_max_length','2022-01-17 23:50:05.470421'),
(15,'auth','0010_alter_group_name_max_length','2022-01-17 23:50:05.614188'),
(16,'auth','0011_update_proxy_permissions','2022-01-17 23:50:05.666774'),
(17,'auth','0012_alter_user_first_name_max_length','2022-01-17 23:50:05.757134'),
(18,'sessions','0001_initial','2022-01-17 23:50:06.132581'),
(19,'travello','0001_initial','2022-01-17 23:50:06.390737'),
(20,'travello','0002_auto_20200310_2152','2022-01-17 23:50:07.491276'),
(21,'travello','0003_auto_20200311_0014','2022-01-17 23:50:07.544243'),
(22,'travello','0004_disease_lists','2022-01-17 23:50:07.932859'),
(23,'travello','0005_symptomps_list_title_lists','2022-01-18 00:14:39.992101'),
(24,'travello','0006_symptomps_list_symptomps','2022-01-18 00:27:13.395324'),
(25,'travello','0007_disease_explanation','2022-01-21 05:45:34.612049'),
(26,'travello','0008_explanation_treatment','2022-01-21 06:34:41.072122');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values 
('0n458fmaqwtw0x502q8ilmcyvlw5alzm','.eJxVjMsOwiAQRf-FtSEgb5fu_QYyw4BUDSSlXRn_3TbpQrfnnHvfLMK61LiOPMeJ2IVJdvplCOmZ2y7oAe3eeeptmSfke8IPO_itU35dj_bvoMKo29omyNI7KCIlxELaebDGbkxDkRpFPmfhhDfGWXQUhApeWSy6eFJIgX2-_v44QQ:1nAA0X:7KmuZBsg0lhROXV_5eLvJlrR2GZx5fNIi7WnkMUYtYY','2022-02-02 12:24:09.518963'),
('7aib2v0zeybsgufzhrc1xrha757q6gz9','.eJxVjMsOwiAQRf-FtSEgb5fu_QYyw4BUDSSlXRn_3TbpQrfnnHvfLMK61LiOPMeJ2IVJdvplCOmZ2y7oAe3eeeptmSfke8IPO_itU35dj_bvoMKo29omyNI7KCIlxELaebDGbkxDkRpFPmfhhDfGWXQUhApeWSy6eFJIgX2-_v44QQ:1n9bwo:b83rWBLZ4ax95ca0Ly04cbHQqOcVkGpLvIEV5KB9VJI','2022-02-01 00:02:02.342337'),
('b30i8peilt5iozh2lno3kayal93cpokp','.eJxVjMsOwiAQRf-FtSEgb5fu_QYyw4BUDSSlXRn_3TbpQrfnnHvfLMK61LiOPMeJ2IVJdvplCOmZ2y7oAe3eeeptmSfke8IPO_itU35dj_bvoMKo29omyNI7KCIlxELaebDGbkxDkRpFPmfhhDfGWXQUhApeWSy6eFJIgX2-_v44QQ:1nAkRa:iuraBl7yF8tME64V33VtQIX-db-58-H3GAG-sMi4y-k','2022-02-04 03:18:30.973059'),
('chuig32gl7lx93gy4d8h37x3cylxw9es','.eJxVjMsOwiAQRf-FtSEgb5fu_QYyw4BUDSSlXRn_3TbpQrfnnHvfLMK61LiOPMeJ2IVJdvplCOmZ2y7oAe3eeeptmSfke8IPO_itU35dj_bvoMKo29omyNI7KCIlxELaebDGbkxDkRpFPmfhhDfGWXQUhApeWSy6eFJIgX2-_v44QQ:1nAd3e:I7KW3FMRdeVxQiNytHkJwyrBPG8voXwtpZfAz211Tak','2022-02-03 19:25:18.332153'),
('mfu1nsu36mt53mbqt6gn0r5ehwrjdqwp','.eJxVjMsOwiAQRf-FtSEgb5fu_QYyw4BUDSSlXRn_3TbpQrfnnHvfLMK61LiOPMeJ2IVJdvplCOmZ2y7oAe3eeeptmSfke8IPO_itU35dj_bvoMKo29omyNI7KCIlxELaebDGbkxDkRpFPmfhhDfGWXQUhApeWSy6eFJIgX2-_v44QQ:1n9o2s:wQYbhzyApr9U0eplcuaazL3wAKUby-KDrv0vy1kNveQ','2022-02-01 12:57:06.462687');

/*Table structure for table `explanation_treatment` */

DROP TABLE IF EXISTS `explanation_treatment`;

CREATE TABLE `explanation_treatment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `explanation` longtext NOT NULL,
  `treatment` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

/*Data for the table `explanation_treatment` */

insert  into `explanation_treatment`(`id`,`title`,`explanation`,`treatment`) values 
(1,'Covid-19','A coronavirus-caused acute sickness in humans that is marked by fever and cough and can escalate to severe symptoms and, in some circumstances, death.','The FDA has approved Paxlovid, a combination of nirmatrelvir (a medicine that prevents the action of a specific enzyme required for COVID-19 replication) and ritonavir (an antiviral drug that helps reduce the degradation of nirmatrelvir). Paxlovid is approved for the treatment of mild to moderate COVID-19 in people aged 12 and up who are at risk of serious illness. The drugs are administered as pills by mouth.'),
(2,'Cold','is a viral upper respiratory tract infection that primarily affects the nasal, throat, and larynx respiratory mucosa.','Your doctor may advise you to attempt home remedies to prevent or relieve symptoms, such as taking over-the-counter antihistamines and avoiding cold exposure. If that doesn\'t work, you might need to see a doctor.'),
(3,'Flu','A virus attacking the respiratory tract causes this sickness.','Antiviral medications, when taken for therapy, can reduce symptoms and minimize the time you\'re sick by one or two days. They can help protect you from dangerous flu complications, such as pneumonia. Treatment with antiviral medications can mean the difference between a milder or more serious illness, possibly resulting in a hospital stay, for patients at higher risk of significant flu complications. People who have flu or suspect flu and are at increased risk of significant flu complications should get treatment as soon as possible'),
(4,'Asthma','Shortness of breath, wheezing, and cough are symptoms of a lung illness characterized by narrowing of the airways, the tubes that convey air into the lungs, which are irritated and restricted.','Medication can help you manage your asthma. Medications are prescribed based on the severity of the symptoms. Inhalers or nebulizers are used to deliver the drugs. The drug in the form of tablets aids in the management of the illness.'),
(5,'Lung cancer','Lung cancer is cancer that starts in the cells of the lungs. It causes breathing difficulties, bloody coughing, chest pain, hoarseness, headaches, and weight loss.','Surgery, chemotherapy, and radiation therapy are all used in the treatment of lung cancer.'),
(6,'Epilepsy','Seizures, as well as strange sensations and behaviors, are symptoms of a neurological condition. ','The first line of treatment for epilepsy is medications. When drugs fail, other options, such as surgery, are suggested.'),
(7,'Pneumonia','Infection of one or both of the lungs\' air sacs. A strong cough with phlegm, fever, chills, and trouble breathing characterize this illness.','The course of treatment is determined by the infection\'s source, symptoms, and severity.'),
(8,'Rabies','A virus that causes brain inflammation and spreads through the saliva of affected animals.','When a person is first exposed to the virus, they are given post-exposure rabies vaccinations; but, once the signs and symptoms appear, there is no effective treatment.'),
(9,'Diabetes','A condition in which the body\'s capacity to create or respond to the hormone insulin is hampered, resulting in improper carbohydrate metabolism and high blood glucose levels.','Aietary control, exercise, home blood glucose testing, and, in certain circumstances, oral medicine and/or insulin are used to treat diabetes.'),
(10,'Food poisoning','Food poisoning is an ailment caused by eating tainted or poisoned food.','Food poisoning: Treatment involves medication and self-care.'),
(11,'Allergies','A harmful immune response by the body to a substance to which it has grown hypersensitive, such as a specific meal, pollen, fur, or dust.','Aour doctor can assist you in identifying and avoiding allergy triggers. This is usually the most crucial step in preventing allergic responses and alleviating symptoms.'),
(12,'Heart failure','A progressive cardiac condition that affects the heart\'s pumping activity. This results in exhaustion and shortness of breath.','In general, treatment helps to alleviate symptoms, but specialized treatment is dependent on the disease\'s progression.'),
(13,'Bladder cancer','Urinary bladder cancer is a common kind of cancer that arises in the bladder. Back pain, painful urination, frequent urination, and blood in the urine are all symptoms of this condition.','Surgery, chemotherapy, and biological therapy are all options for treatment.'),
(14,'Bone cancer','A bone tumor is a development of tissue in the bone that is abnormal.','The following are the most common treatments for Cancer of the Bone Surgery Bone Cancer Radiation Therapy Targeted Therapy and Other Drugs for Bone Cancer Chemotherapy for Bone Cancer'),
(15,'Gingivitis','Gum disease, gum inflammation, and periodontal disease are all terms for the same thing.','Gingivitis is treated by scaling and root planning, which removes plaque, tartar, and bacterial products.'),
(16,'Kidney stone','A reduction in urine volume or an excess of stone-forming chemicals in the urine can cause kidney stones.','Smaller kidney stones move through urination on their own and don\'t always need to be treated. When larger stones cause symptoms, therapy is needed to both relieve the symptoms and remove the stones.'),
(17,'High blood pressure','The arteries are under a lot of pressure (vessels that carry blood from the heart to the rest of the body).','Simple lifestyle adjustments can help to control high blood pressure, but if the blood pressure is extremely high or lifestyle modifications are ineffective, long-term medication will be prescribed.'),
(18,'Anemia','A lack of healthy red blood cells in the bloodstream. Red blood cells (RBCs) are responsible for transporting oxygen throughout the body.','With a nutritious diet and supplementary supplements, mild deficiency can be self-managed. In extreme situations, treatment is determined by the etiology of anemia.'),
(19,'Hemorrhagic fevers','Hemorrhagic fever is a term used to characterize a number of dangerous and life-threatening infections.','Viral hemorrhagic fevers have no known cure. Only a few types of vaccines are available. The ideal strategy is to avoid problems in the first place. The mainstay of treatment is supportive care.'),
(20,'Norovirus infection','Diarrhea and vomiting are symptoms of a highly dangerous viral illness. It is transmitted through tainted food and water.','Norovirus infection has no specific therapy, and recovery is mostly dependent on the functioning of your immune system. The disease normally passes in a few days for the majority of patients.'),
(21,'Chronic kidney disease','A condition in which kidney function gradually deteriorates.','The goal of treatment in the early stages is to manage signs and symptoms while also slowing disease development. Dialysis and kidney transplantation are among the advanced-stage treatments.'),
(22,'Rotavirus infection','A infectious virus that causes stomach and bowel irritation, resulting in diarrhea.','There is no antiviral medication for rotavirus infection, and the treatment focuses on preventing dehydration.'),
(23,'Fatty liver','A disorder that develops as a result of an accumulation of fat in the liver.','Fatty liver does not have a specific treatment. It\'s a reversible condition that can be controlled by making lifestyle changes to address the underlying cause. Medications may be provided to treat problems such as high blood sugar and cholesterol.'),
(24,'Dengue','A terrible tropical viral disease spread by mosquitoes that causes high fever and severe joint problems.','In general, the doctor may advise using paracetamol instead of aspirin to control pain and fever (since aspirin may induce bleeding) and increasing fluid intake.'),
(25,'Osteoporosis','A condition in which bone strength deteriorates and becomes vulnerable to fracture. The hip, wrist, or spine are commonly affected.','The goal of treatment is to decrease or stop bone loss while also improving bone density. Medications aid in the improvement of bone density.'),
(26,'Fibromyalgia','Chronic muscle soreness, tenderness, exhaustion, and sleep difficulties define this muscle and soft tissue condition.','The primary goal of treatment is to alleviate pain and improve quality of life. Medication and lifestyle adjustments are part of the treatment plan.'),
(27,'Meningitis','Infection of the meninges, the brain\'s protective tissue, which produces stiff neck, headaches, and fever.','A mild infection will clear up in two weeks. In severe cases, medication and therapy are required. Bacterial or fungal meningitis is often fatal, necessitating prompt diagnosis and treatment.'),
(28,'E. coli','A bacterium that can cause severe food poisoning in humans and other animals and is usually present in their intestines.','The goal of treatment for an infection caused by Escherichia coli, often known as E. coli, is to facilitate the bacterium\'s eradication, with medications being recommended by the doctor.'),
(29,'Pink eye','Because of a bacterial or viral infection or an allergic reaction, the translucent covering of the eye becomes inflamed.','The majority of cases of conjunctivitis resolve on their own without the need for therapy. Symptom alleviation can be achieved by self-care methods. Medication may be required at times.'),
(30,'Salmonella infection','The majority of salmonella infections are categorized as stomach flu (gastroenteritis).','A third-generation cephalosporin, such as ceftriaxone, is the first antibiotic to be used in cases where salmonellosis is suspected but not confirmed.'),
(31,'Malaria','A parasitic disease spread by mosquitos. This results in a high fever, severe chills, and excessive perspiration.','Treatment may differ depending on the patient\'s age, health, and other factors.'),
(32,'Tuberculosis','A bacteria-caused infectious infection that primarily affects the lungs but can also damage other organs such as the bone, brain, and spine.','TB can be treated with the right drugs and care. To identify the exact course of treatment, TB bacteria will be cultivated and their sensitivities will be studied. For several months, a combination of therapies is frequently required. Higher-order antibiotics, or even intravenous antibiotics, may be necessary in cases of drug resistance. Multidrug-resistant tuberculosis is more difficult to treat.'),
(33,'Scarlet fever','Children are usually affected by a bacterial infection caused by Group A streptococcal bacteria.','Antibiotics are generally used to treat scarlet fever.');

/*Table structure for table `symptomps_list` */

DROP TABLE IF EXISTS `symptomps_list`;

CREATE TABLE `symptomps_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symptomps` varchar(30) NOT NULL,
  `list_1` varchar(30) NOT NULL,
  `list_2` varchar(30) NOT NULL,
  `list_3` varchar(30) NOT NULL,
  `list_4` varchar(30) NOT NULL,
  `list_5` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

/*Data for the table `symptomps_list` */

insert  into `symptomps_list`(`id`,`symptomps`,`list_1`,`list_2`,`list_3`,`list_4`,`list_5`) values 
(1,'Covid-19','Fever','Loss of smell taste','Cough','Sore throat','Shortness of breath'),
(2,'Cold','Runny nose','Sneezing','Cough','Sore throat','Fatigue'),
(3,'Flu','Fever','Aches/pain','Cough','Headache','Fatigue'),
(4,'Asthma','Chest tightness','Wheezing','Cough','Trouble sleeping','Shortness of breath'),
(5,'Lung cancer','Chest tightness','Hoarseness','Coughing blood','Headache','Losing weight without trying'),
(6,'Epilepsy','Stiff muscles','Loss of consciousness','Fear/ anxiety','Temporary confusion',''),
(7,'Pneumonia','Chest tightness','Vomiting','Cough','Shortness of breath','Fatigue'),
(8,'Rabies','Fever','Vomiting','Execessive salivation','Temporary confusion','Headache'),
(9,'Diabetes','Irritability','Frequent urination','Losing weight without trying','Blurred vision','Fatigue'),
(10,'Food poisoning','Fever','Vomiting','Diarrhea','Aches/pain',''),
(11,'Allergies','Sneezing','Runny nose','Swollen eye','Itching',''),
(12,'Heart failure','Shortness of breath','Chest tightness','Fatigue','Rapid heartbeat','Vomiting'),
(13,'Bladder cancer','Back pain','Frequent urination','Blood in urination','Painful urination',''),
(14,'Bone cancer','Fatigue','Losing weight without trying','Bone pain','Swelling',''),
(15,'Gingivitis','Swollen gums','Bleeding gums','Bad breath','Tender gums',''),
(16,'Kidney stone','Painful urination','Vomiting','Blood in urination','Back pain','Frequent urination'),
(17,'High blood pressure','Headache','Vomiting','Chest tightness','Shortness of breath','Rapid heartbeat'),
(18,'Anemia','Fatigue','Shortness of breath','Headache','Yellowish skin','Chest tightness'),
(19,'Hemorrhagic fevers','Fever','Diarrhea','Vomiting','Fatigue','Aches/pain'),
(20,'Norovirus infection','Vomiting','Diarrhea','Muscle pain','Cramps','Fever'),
(21,'Chronic kidney disease','Vomiting','Muscle pain','Swelling','Fatigue','Shortness of breath'),
(22,'Rotavirus infection','Vomiting','Diarrhea','Irritability','Fever','Cannot urinate'),
(23,'Fatty liver','Fatigue','Yellowish skin','Swelling','Enlarged blood vessel','Red palms'),
(24,'Dengue','Headache','Vomiting','Rash','Muscle pain','Swelling'),
(25,'Osteoporosis','Back pain','Losing weight without trying','Bone pain','Stooped posture',''),
(26,'Fibromyalgia','Fatigue','Aches/pain','Cognitive difficulties','Fear/ anxiety','Irritability'),
(27,'Meningitis','Fever','Rash','Temporary confusion','Headache','Sensitivity to light'),
(28,'E. coli','Diarrhea','Cramps','Vomiting','Aches/pain',''),
(29,'Pink eye','Redness in eyes','Itching','Tearing','discharge in eyes',''),
(30,'Salmonella infection','Vomiting','Fever','Headache','Diarrhea','Cramps'),
(31,'Malaria','Rapid heartbeat','Vomiting','Diarrhea','Muscle pain','Cough'),
(32,'Tuberculosis','Chest tightness','Fever','Fatigue','Night sweats','Coughing blood'),
(33,'Scarlet fever','Rash','Headache','Vomiting','Fever','Sore throat');

/*Table structure for table `title_lists` */

DROP TABLE IF EXISTS `title_lists`;

CREATE TABLE `title_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

/*Data for the table `title_lists` */

insert  into `title_lists`(`id`,`title`) values 
(1,'Covid-19'),
(2,'Cold\r\n'),
(3,'Flu\r\n'),
(4,'Asthma\r\n'),
(5,'Lung cancer\r\n'),
(6,'Epilepsy '),
(7,'Pneumonia\r\n'),
(8,'Rabies\r\n'),
(9,'Diabetes\r\n'),
(10,'Food poisoning '),
(11,'Allergies\r\n'),
(12,'Heart failure'),
(13,'Bladder cancer'),
(14,'Bone cancer\r\n'),
(15,'Gingivitis\r\n'),
(16,'Kidney stone\r\n'),
(17,'High blood pressure\r\n'),
(18,'Anemia\r\n'),
(19,'Hemorrhagic fevers\r\n'),
(20,'Norovirus infection\r\n'),
(21,'Chronic kidney disease\r\n'),
(22,'Rotavirus infection'),
(23,'Fatty liver\r\n'),
(24,'Dengue\r\n'),
(25,'Osteoporosis\r\n'),
(26,'Fibromyalgia\r\n'),
(27,'Meningitis\r\n'),
(28,'E. coli\r\n'),
(29,'Pink eye\r\n'),
(30,'Salmonella infection\r\n'),
(31,'Malaria\r\n'),
(32,'Tuberculosis\r\n'),
(33,'Scarlet fever\r\n');

/*Table structure for table `travello_destination` */

DROP TABLE IF EXISTS `travello_destination`;

CREATE TABLE `travello_destination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc` longtext NOT NULL,
  `img` varchar(100) NOT NULL,
  `name` varchar(30) NOT NULL,
  `offer` tinyint(1) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `travello_destination` */

/*Table structure for table `travello_lists` */

DROP TABLE IF EXISTS `travello_lists`;

CREATE TABLE `travello_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;

/*Data for the table `travello_lists` */

insert  into `travello_lists`(`id`,`category`) values 
(1,'Aches/pain'),
(2,'Back pain'),
(3,'Bad breath'),
(4,'Bleeding gums'),
(5,'Blood in urination'),
(6,'Blurred vision'),
(7,'Bone pain'),
(8,'Cannot urinate'),
(9,'Chest tightness'),
(10,'Cognitive difficulties'),
(11,'Cough'),
(12,'Coughing blood'),
(13,'Cramps'),
(14,'Diarrhea'),
(15,'discharge in eyes'),
(16,'Enlarged blood vessel'),
(17,'Execessive salivation'),
(18,'Fatigue'),
(19,'Fear/ anxiety'),
(20,'Fever'),
(21,'Frequent urination'),
(22,'Headache'),
(23,'Hoarseness'),
(24,'Irritability'),
(25,'Itching'),
(26,'Losing weight without trying'),
(27,'Loss of consciousness'),
(28,'Loss of smell/taste'),
(29,'Muscle pain'),
(30,'Night sweats'),
(31,'Painful urination'),
(32,'Rapid heartbeat'),
(33,'Rash'),
(34,'Red palms'),
(35,'Redness in eyes'),
(36,'Runny nose'),
(37,'Sensitivity to light'),
(38,'Shortness of breath'),
(39,'Sneezing'),
(40,'Sore throat'),
(41,'Stiff muscles'),
(42,'Stooped posture'),
(43,'Swelling'),
(44,'Swollen eye'),
(45,'Swollen gums'),
(46,'Tearing'),
(47,'Temporary confusion'),
(48,'Tender gums'),
(49,'Trouble sleeping'),
(50,'Vomiting'),
(51,'Wheezing'),
(52,'Yellowish skin');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
