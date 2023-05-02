# ABMS : MySQL database backup
#
# Generated: Friday 28. April 2023
# Hostname: localhost
# Database: barangay
# --------------------------------------------------------


#
# Delete any existing table `tbl_support`
#

DROP TABLE IF EXISTS `tbl_support`;


#
# Table structure of table `tbl_support`
#



CREATE TABLE `tbl_support` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tbl_support VALUES("0","kayzel","kayzelgurain@gmail.com","09512659595","asd","sfdslmmiekmdc","","2023-03-17 15:17:24");



#
# Delete any existing table `tbl_users`
#

DROP TABLE IF EXISTS `tbl_users`;


#
# Table structure of table `tbl_users`
#



CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tbl_users VALUES("10","staff","6ccb4b7c39a6e77f76ecfa935a855c6c46ad5611","staff","03052021043218icon.png","2021-05-03 10:32:18");
INSERT INTO tbl_users VALUES("11","admin","d033e22ae348aeb5660fc2140aec35850c4da997","administrator","09112022064326314969461_639186751329865_8255438620198408853_n.jpg","2021-05-03 10:33:03");



#
# Delete any existing table `tblbrgy_info`
#

DROP TABLE IF EXISTS `tblbrgy_info`;


#
# Table structure of table `tblbrgy_info`
#



CREATE TABLE `tblbrgy_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(100) DEFAULT NULL,
  `town` varchar(100) DEFAULT NULL,
  `brgy_name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `city_logo` varchar(100) DEFAULT NULL,
  `brgy_logo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tblbrgy_info VALUES("1","Misamis Oriental","Cagayan de Oro City","BARANGAY BONBON","0919-1234567","","09112022033726maxresdefault.jpg","09112022033726Cagayan_de_Oro_City_seal.png","09112022033726logo-brgy.png");



#
# Delete any existing table `tblchairmanship`
#

DROP TABLE IF EXISTS `tblchairmanship`;


#
# Table structure of table `tblchairmanship`
#



CREATE TABLE `tblchairmanship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tblchairmanship VALUES("2","Presiding Officer");
INSERT INTO tblchairmanship VALUES("3","Committee on Appropriation");
INSERT INTO tblchairmanship VALUES("4","Committee on Peace & Order");
INSERT INTO tblchairmanship VALUES("5","Committee on Health");
INSERT INTO tblchairmanship VALUES("6","Committee on Education");
INSERT INTO tblchairmanship VALUES("7","Committee on Rules");
INSERT INTO tblchairmanship VALUES("8","Committee on Infra");
INSERT INTO tblchairmanship VALUES("9","Committee on Solid Waste");
INSERT INTO tblchairmanship VALUES("10","Committee on Sports");
INSERT INTO tblchairmanship VALUES("11","No Chairmanship");



#
# Delete any existing table `tblofficials`
#

DROP TABLE IF EXISTS `tblofficials`;


#
# Table structure of table `tblofficials`
#



CREATE TABLE `tblofficials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `middleName` varchar(50) DEFAULT NULL,
  `chairmanship` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `termstart` date DEFAULT NULL,
  `termend` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tblofficials VALUES("14","Allan Mabalacad P.","Allan","Mabalacad","P.","2","4","2023-05-25","2026-05-25","Active");
INSERT INTO tblofficials VALUES("15","Lope Q. Matildo","Lope","Matildo","Q.","3","7","2023-01-01","2026-01-01","Active");
INSERT INTO tblofficials VALUES("16","Lelit Y. Baal","Lelit","Baal","Y.","4","8","2023-01-01","2026-01-01","Active");
INSERT INTO tblofficials VALUES("17","NORBERTA L. BASLOT","NORBERTA","BASLOT","L.","5","9","2023-01-01","2026-01-01","Active");
INSERT INTO tblofficials VALUES("18","ZARA R. JIMENEZ","ZARA","JIMENEZ","R.","6","10","2023-01-01","2026-01-01","Active");
INSERT INTO tblofficials VALUES("19","LUZ A. GUARIN","LUZ","GUARIN","A.","7","11","2023-01-01","2026-01-01","Active");
INSERT INTO tblofficials VALUES("20","JEROME L. SAMBAAN","JEROME","SAMBAAN","L.","8","12","2023-01-01","2026-01-01","Active");
INSERT INTO tblofficials VALUES("21","SUSANO B. SALCEDO","SUSANO","SALCEDO","B.","9","13","2023-01-01","2026-01-01","Active");
INSERT INTO tblofficials VALUES("22","JEFFORD F. JADAP","JEFFORD","JADAP","F.","10","14","2023-01-01","2026-01-01","Active");
INSERT INTO tblofficials VALUES("23","ELMER B. VILLAMOR","ELMER","VILLAMOR","B.","11","15","2023-01-01","2026-01-01","Active");
INSERT INTO tblofficials VALUES("24","GRACELLA P. MENDOZA","GRACELLA","MENDOZA","P.","11","16","2023-01-01","2026-01-01","Active");



#
# Delete any existing table `tblpayments`
#

DROP TABLE IF EXISTS `tblpayments`;


#
# Table structure of table `tblpayments`
#



CREATE TABLE `tblpayments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `details` varchar(100) DEFAULT NULL,
  `amounts` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tblpayments VALUES("13","Barangay Clearance Payment","50.00","2023-03-17","admin"," Alvin Abriola Tubac");
INSERT INTO tblpayments VALUES("14","Certificate of Indigency Payment","100.00","2023-03-17","admin"," Alvin Abriola Tubac");
INSERT INTO tblpayments VALUES("15","Barangay Clearance Payment","50.00","2023-04-28","admin"," Maynard Ken Lopez");
INSERT INTO tblpayments VALUES("16","Certificate of Indigency Payment","100.00","2023-04-28","admin"," Maynard Ken Lopez");



#
# Delete any existing table `tblposition`
#

DROP TABLE IF EXISTS `tblposition`;


#
# Table structure of table `tblposition`
#



CREATE TABLE `tblposition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(50) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tblposition VALUES("4","Captain","1");
INSERT INTO tblposition VALUES("7","Councilor 1","2");
INSERT INTO tblposition VALUES("8","Councilor 2","3");
INSERT INTO tblposition VALUES("9","Councilor 3","4");
INSERT INTO tblposition VALUES("10","Councilor 4","5");
INSERT INTO tblposition VALUES("11","Councilor 5","6");
INSERT INTO tblposition VALUES("12","Councilor 6","7");
INSERT INTO tblposition VALUES("13","Councilor 7","8");
INSERT INTO tblposition VALUES("14","SK Chairman","9");
INSERT INTO tblposition VALUES("15","Secretary","10");
INSERT INTO tblposition VALUES("16","Treasurer","11");



#
# Delete any existing table `tblprecinct`
#

DROP TABLE IF EXISTS `tblprecinct`;


#
# Table structure of table `tblprecinct`
#



CREATE TABLE `tblprecinct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `precinct` varchar(100) DEFAULT NULL,
  `details` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;




#
# Delete any existing table `tblpurok`
#

DROP TABLE IF EXISTS `tblpurok`;


#
# Table structure of table `tblpurok`
#



CREATE TABLE `tblpurok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tblpurok VALUES("1","Purok 1","Tikang Kanda Babon ngadto liwat kanda Babon");
INSERT INTO tblpurok VALUES("2","Purok 2","Amon ngadto ira");
INSERT INTO tblpurok VALUES("3","Purok 3","afawewqeqweqweqw");
INSERT INTO tblpurok VALUES("4","Purok 4","dsfdsf");
INSERT INTO tblpurok VALUES("5","Purok 5","rewrew");
INSERT INTO tblpurok VALUES("6","Purok 6","rewrewr");
INSERT INTO tblpurok VALUES("7","Purok 7","rew");
INSERT INTO tblpurok VALUES("8","Purok 7","rew");



#
# Delete any existing table `tblresident`
#

DROP TABLE IF EXISTS `tblresident`;


#
# Table structure of table `tblresident`
#



CREATE TABLE `tblresident` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `national_id` varchar(100) DEFAULT NULL,
  `citizenship` varchar(50) DEFAULT NULL,
  `picture` text DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `alias` varchar(20) DEFAULT NULL,
  `birthplace` varchar(80) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `civilstatus` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `purok` varchar(50) DEFAULT NULL,
  `voterstatus` varchar(20) DEFAULT NULL,
  `identified_as` varchar(30) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `resident_type` int(11) NOT NULL DEFAULT 1,
  `remarks` text DEFAULT NULL,
  `archive` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tblresident VALUES("11","","filipino","person.png","maynard","ken","lopez","kent","asfdcf","2000-05-21","22","Single","Male","Purok 6","Yes","Positive","09658745687","charriemay964@gmail.com222","212","asfd","1","","1");
INSERT INTO tblresident VALUES("12","783o3742984","filipino","person.png","kayzel","A.","guarin","luz","cagayan de oro","1997-05-12","25","Single","Female","Purok 5","Yes","Positive","0562565","kayzel@gmail.com","programmer","bonbon","1","","1");
INSERT INTO tblresident VALUES("13","6265521","filipino","person.png","gerald","B","Alina","doggie","cagayan de oro","2000-12-11","22","Single","Male","Purok 1","No","","096587458","alina@gmail.com","IT","bonbon","1","","0");

