# ABMS : MySQL database backup
#
# Generated: Monday 24. April 2023
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tblpayments VALUES("13","Barangay Clearance Payment","50.00","2023-03-17","admin"," Alvin Abriola Tubac");
INSERT INTO tblpayments VALUES("14","Certificate of Indigency Payment","100.00","2023-03-17","admin"," Alvin Abriola Tubac");



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
  `id` int(11) NOT NULL,
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
  `archive` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tblresident VALUES("0","4566874615","filipino","data:image/jpeg;base64,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","Alvin","Abriola","Tubac","bentong","Cagayan de oro city","2000-08-16","22","Single","Male","Purok 4","Yes","Positive","9874562164","Alvinraytubac43@gmail.com","business man","brgy. bonbon","1","","0");
INSERT INTO tblresident VALUES("0","","Filipino","person.png","kayzel","A.","Guarin","kz","Cagayan de oro city","1997-05-12","25","Single","Female","Purok 6","No","","9512659595","kayzelgurain@gmail.com","IT","brgy. bonbon","1","","0");

