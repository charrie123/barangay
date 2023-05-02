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

INSERT INTO tblresident VALUES("11","3151545","filipino","person.png","gerald","B","alina","doggie","asfdcf","2000-05-21","22","Single","Male","Purok 6","Yes","Positive","091564185","charriemay964@gmail.com222","212","asfd","1","","0");
INSERT INTO tblresident VALUES("12","","filipino","person.png","maynard","kent","lopez","kent","cagayan de oro","2000-05-06","22","Single","Male","Purok 6","Yes","Positive","09485321856","kent@gmail.com","programmer","bonbon","1","","0");
INSERT INTO tblresident VALUES("13","2105","filipino","data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gHYSUNDX1BST0ZJTEUAAQEAAAHIAAAAAAQwAABtbnRyUkdCIFhZWiAH4AABAAEAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAACRyWFlaAAABFAAAABRnWFlaAAABKAAAABRiWFlaAAABPAAAABR3dHB0AAABUAAAABRyVFJDAAABZAAAAChnVFJDAAABZAAAAChiVFJDAAABZAAAAChjcHJ0AAABjAAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAAgAAAAcAHMAUgBHAEJYWVogAAAAAAAAb6IAADj1AAADkFhZWiAAAAAAAABimQAAt4UAABjaWFlaIAAAAAAAACSgAAAPhAAAts9YWVogAAAAAAAA9tYAAQAAAADTLXBhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABtbHVjAAAAAAAAAAEAAAAMZW5VUwAAACAAAAAcAEcAbwBvAGcAbABlACAASQBuAGMALgAgADIAMAAxADb/2wBDAAMCAgMCAgMDAwMEAwMEBQgFBQQEBQoHBwYIDAoMDAsKCwsNDhIQDQ4RDgsLEBYQERMUFRUVDA8XGBYUGBIUFRT/2wBDAQMEBAUEBQkFBQkUDQsNFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBT/wAARCAD6AXIDASIAAhEBAxEB/8QAHQAAAgMAAwEBAAAAAAAAAAAAAAIBAwQGBwgFCf/EAEkQAAEDAwIEAwQGBwQIBgMAAAEAAgMEBREGIQcSMUEIE1EUImFxCRUyQoGRFiMzUmJyoUNjsdEXNHOCg5LB4SRTdKKkssLU8f/EABwBAQEBAAMBAQEAAAAAAAAAAAABAgMEBQcGCP/EADURAQABAwEGAwYFAwUAAAAAAAABAgMRBAUGEiExQVFhcQcTIjKBkRRCUpKhJLHRFXKCwfD/2gAMAwEAAhEDEQA/APFiEIXddQrkidyUAk4G5QQlPVX+Rt1VUjCw7opEFCCiFUHopR16dUCFCuFMe5wkkiMfXceqKqKhSeqhECChBRqCnqoVzYC4ZJwlfCWb5yEVWUqY9EqAQhCBSoVjYy/foFLoSBkHKZFJUKXKEEFI7qnKR3VFhCUqxjC8/BMaf0coqhCCC0kHqoRSlQpd1Ud1GYQhS1pecBW+zn97dFUFKVY9hYcEKsoqClTFKgEpTAFxwNyrfZSersFBnQnkjMZ3/NIgEIQgEIQg5ghCFpwlcmgG5Khysj5d8IsdTqqce4Vakkxynm6I0yKCmdjJx0UFGCp4RmRIroeU4x9rCKtPVJIMxu+ScpXY5TnphGmEqE8nLze6MBIjIUtGXN+ahWRcpIz1zsiwvSuTKCpLUMTh1SlWS8ucDPxVaqBCEzOX7yC4DAAQhCy2yzbPKRWz8oJ/eVS0wgpHdU5SjAdvuEWFsQwwJ1Dccox0UrKs9SPeHyVS0Tco3d17LOikPVQpPVQDuMoyvpx7rj3yrUkXKW5b0+KdGlNSPdB+KylbJuXly7osZ67IIKVMUqC2nHvE/BaFVDy78uQe+VagqqBmI/BZFtkDSw82wWN2C48owEEIQhAIUoQcxc0tO6VSSSdzlQtOEcpccBWMZyD4qokjcbKRPgbhFXJHDIIUh7SM5Vb5wDsMo0pfGWfJKUznFx3KUoyUAuOBuVpii5ASepWborW1BaMEZKELj1UJRK1wznHzSPqADgDKNKZoSwkjdqqVksheTvt6KtGQrooyDkqlO2YtG+6LDQoKRkzXddj8VEkwb03SWoVyxEnLVQrZJS/psPRVIgVkcRJBPRVpmSFnxHoguKEjZQTvsh0gaOuT8Flos0fNuOqzkYKtfMSNtlUtQkoKBGXn0CCoDyw9dkIXgYGEKsTAncYTOka0ZyFlpEsfmN+IWZzS04IwVa6oyCAMH1VJOdzuiEPVDIzIcAZ+KD1UBxadjhEa2s5G4ClUip9QrPMbjPMMIokaHtIKxvYWHcK91R6D81nc4uO5yilKhrS44G6kqASDkbINMUflt+J6p1QKggDIz8VYJWEZ5gPmgZzQ4EHuskkTozv09Va+qAOAMj1VD3l53KBVIBJwOqhHRBb7M/0H5oS+a/8AeKEHLUIQtOFDlWrHKsoBKUyUoIQUIPRAqhShAhQgoQKVCYpUAgoQUagpUKSoRQeiVMeiVAIQqKiup6T9tMxh9Cd/yQWlQvlzamoYuj3P/laf+qpZq2gedzIz+Zn+SzxR4riX2SoWOC80VUQI6lhJ6AnB/qti1nKIKR3VOUjuqLCEpTJSioQhCikPVKmd1UKMoQhCKgpSmKUoqClTFKgEpTJSghCEIBCEIBCEIOYIVwiAG+5UOj2yFpwqXKsqxyrKASlMlKCEFXRxAjJ/JS+EOG2xRcMyhSRg4UIiCoQUIIKVXRw8+56KwwMI9EXDKgpntLHEFKUUpUKT1UIoKzVlbFRRGSV2B2A6lFwr2UEBe7d5+yz1KvpLHR2eihvmq2vmfUDnobMwlslS3GWvf3ZHuCOhcDnIBBPHVXw8mopy+fa7VfdZeY6ghFJb4wTLWzv8uFgHYvPU/wALck9gUz7Ro+zDlrbnW3+v6vjtrRFAz/iOBLvlhpXJtN6Q1vx5vMNps9ukq4Yw2OKho2clLTMzsDjAx3+PXGV7G4U/Rfxuhhq9bXh3OQCaKiHKB8C7qf6L8Lt7fDY+7sY2hfiK/wBMc6vtHT64d6zprl35IeD3ah0/TDFNomln/vKytnLvyDuVZptR2ObafRFCwfv09bUNcPkObH5r9Rq3gV4WeFU5t+obppeluEWz6e6XOIzj5sc7mH5KlugfCFq57aOmvOiWzye6xrLjBC8n0blwJPyX4GPappK495b0F+q3+rg5Y8ev/bt/gKuk1xn1flFfpLDLTxutdNW0tQXe/HUSNezlx22znPxWiChvtlstuurOWagrzOIImytkeRCAZCWAlzAAc5IGwz0X6YcSfovNGaloXVWj7tNaZnt54gXedC/PTr2+RXj7XfCri34Sr3FV3KhF4sdLTVNFTTVDHVNHFDPtMGtJ/Ul+SHFuMhxBJDiD+v2Dv3sLeCuLWkvcNz9NXw1fTtP0mXXu6W7ajNUcnUto1FT3Ycn7KoA3jcevy9V9Jy+TVad07fbNT11iubLTPbLMKi4m71QbLV1/ny/q4Gjc5iDS3AIGMOOTk5NOaj+sAKapcBUge6798f5r6RRXnlLoTTjnDkCUpkpXKyhCAC4gDqtLYGgb7lRWN3VQr5oQ0cze3ZZ1EBQUFBQQUpTFXMgGMu3KKzFKtUkALTy7H0WVAJT1TJSghCFfFT8wy7v2QUIWp1M0jbYrMRgkHqEEIQhBzkqFJULThZnKsq6V2dsYwqSgEpTKWO5Sds5QXjohCEbZZv2jlWr537luPxVCMlKEHqpY7kdnGURoj/ZNTIBy0HGPghG2eo+2PkqStE7+UYx17rOiFKrnmZTxOkecNaMlWFZYrZNqi+0dmp3cnmO5ppMZETAOZ7yPRrA5x+SzVPDGWojMr7BTU9JSSarvUInp45PKt9A7pVTjHUd2N6nsTt0Dsdo+Hfw7al8TOuJaurkkZbmvDq64uGzR/wCXH8f/AOriejdHV/HbifadNWCFzLewikomAEiCnaffld2ydyT3Jz94r9BuN/FKweBjgpbNJ6Rggk1hcISyijc0Hy9sPq5R3Ad0B+04+gcvkm+W8mq0NdrY2x6ePW6j5fCinvXPpzx6TPbn6umsU1RNy58sNPETjHws8Cmk4NNWO3RXXVb4eaG00rgJDttJUSYPltOe+XO7A4JHkrVPEHjx4nJvbbpdZbDpon9Xb6aR1FRlp/hbl8v8zuYdcY6Lfwm4LPqaqXW2v3S3fUdxkNX5Feecte483mSg/aeeuDs3uM9O1rtdRg4K5N3Nxdn7F/qtVH4jV1c6rlfOc9+GJ6R59Z7z2S9qq7vw08qfB5+r/CpQafneytvUs5cBIz2eAMaWuGQQSTnY9cBcXvXBG1UrHCC4Tg/3jGuH9ML1JqYM1BwsgvcLuatsVZ9XVzRnIp5QX07/AE+02ZhP8nqFwm08NJLvYjqnU9xZpPRgLmsuVSwulrnt6xUkWxmfnYnZjcHmcMYX0x0nRmg9RcSeD94jn0NqWvpDCec09NIXU7m9/MhfmMj5g/mvbHA7xxaY4zQxaI4s2+32q7VpNLDXtGbdWux9k82fKeem5LSehBIavHnEnX9JWwyWvTlAbJp9uB5T389TVEdHzv8AvHvyjDR2Hddb3Og83Rtsry3IluFXTkn+GOnd/wDmvwu8W5myd46Jm/b4L35blPKuJ7c+8eU/TE83as6m5ZnlPLwegPG/4D5+FpqtaaHp31Gmi4yVdAwczqTP3mj9z1Hb5Ly3ctPQai0Y/UWn6K32uh09TU0dfK+s5KypqJPLYSITK9zh5nO4Pa1jQ13KcFoC/QXwL+Kgapp4eEHEGcVzZ4jBZa+qPMZGhuPZJCepxnkJ6gFp35c+c/FTwHp/Cfx8tN+bZWXjh9X1japttlZmB3Kcvp3AjlO2S0HbtjAX5fdXbm0NBr6t194Ks36YzbudrtH+Y+/KYnnHPnv2qK6Pf2enePB0Tp+8Nu9CHnAnZ7sjR6+vyK+kV8rVtudpHVVHdoqCO0WO/R+20VF7dHUyRU7nYaZOTofvbgdSB0IH1Sc7r7XRVxQ8mYxJoP2gWpUQPzhuOndXrSEf0Kwre5YpH+Y7pj4IEKEFB6oBv2h81qVETsHlwDlXooWGT7bvmtyyTvy4txjBQVJSmSlBC3t6D5LHG/kPQHPYraEAsc/7Vy2LNUP3LcD5oKEIQg5yVCRsu2HfmodLnpstOESsB3zgrMeqte4nqqigFZGwZznJVajmLTkIrShUtmI+1uFL59vd6+pRcmljDxucH1WUjBPdM6RzhgnKVEIVbFGHbkj5KsqAcHI6oNhULOJ3A77hM6oGNhkouTyMD24O3xWV45TjOfimdK5wwTskQVyOEbHOPQAkpLbK616Qu10BaK26TC2U5z7zGjD5nD0OCwA/zBZ7xKY6F+DguIavq3C1z3K56Q01BC1k3ssIaR/aS1L+cE/Ecwb8gF1r9cURmqcRHNzUQ93fR68NLbw34X37ipqBraaEwSyRzPb+xpIWkvcPnyuO3UALoXT+o63xDccbtxI1FSRVNubLzU1LUN5mwNYcU8GM491mHHHV2SftFejfG9e4+DPhO0xw+tfLFJenQUDxnDhTwtEspGPVwiafg8rojwu2tlXw8uNsiHNcK4y19K0dXSQggsHzjbJgeuF8R3BsztjVa3evURmq9XNFvP5bdM45esxif9vm9XVz7ummxHbr6u6HcQaCm2n03bK0f3jpm5/5ZAqG6/05eq2Cgg4V0Nyrp3BkcFDcK/zZHejWiU5PyC4zpLRlz1vT1NxM8Fm03ROArr9cHclLT5+6D1e89mNy4kjpnKq1HxmtuiKCosvDVk9B5jXQ1mqqkctxrmnq2PH+rxH91vvEAczuy+0vNegNLVvCrh5R6qp9S6VhN4htBr7tp63XSS4QQwRTwuYyd0jvL87zTGAxpONw44dheZuNWltRcWBWa30xqH/SLZYRh1HSxeTXWeEdI30I/Zxt6c8Qcw4ySMr4Olq+Om4O8WLjz8sr4bZa2nviWsE5H/xP6LpGl1tddI3ulvNjudVaLtSP54K2imMUsbumzhvuMgjuCQUHGbxWmV5YDvncei5hU2gO8ONpuWN49XVtOT/NRUrh/wDUrmP+k3QvGwtg4n239F9USvJ/TvTlKAJ3H71fRjDZd+ssXK/oSHb57Vt3hthtPhqlrNWartMXD2j1Z9b/AKSWWpbUi40ppDF5dIz7RndI1sflvDSwhxds05DyXaLXXRU/15FLJQQUUrXRVrHcrhMDzMEZ6lwIB26Yyv0fvLKXx2eC6aonji/SykidHKQ0DyrhC0EuAHRrwWuwO0mF+fPEDWketLsw2+2xWLT1GDDbLPA4uZSxZ+847vkd9p7zu5xPQYA9PfRn8QXWTilfdGTuaaHUFD7REHOORUQZOGjp70b5Cf8AZtXyb2j7NrubMp2zpeWo0dUXKZ78MTHFHpj4v+Pm9DR1xFfu6ulXJ4stVml1Hww1BbaPTNPPqCyVP1hdb1WXCKKeno42CNkUcUjw5wDi8ODB3iBBPJinTFd9Y2iBznZez9W8n1H/AGwue+Nnh/VcM/EprGy2/wA5lHeJWV8dNATiVsh5sFo+1+sa4geoC6m0JUOZJWUr8jGHhp7Hof8AovpmydfRtLR2dba+W5TFUfWM/wAOhdomiqaZ7OcxsDBsc/FOsjZHMGAcBWtqBj3hv8F7LhWFZ54xu4OwfRElQSfd2Cpc4uOTuUQqEFCC+ONrd8glOsweWdEzJ8bO3+KKvVE8YdvkNKJKgnZu3xVD3ufjJygVKUyUoL4Im/ayCfRaFga4tORsVbHUkH3twg1KuaNrxknBHdVvqdsNG/qVU6RzxgnIQKRg9UKEIOYIQhacKHKsqxyrKAUFSlKCEFCCgVCEIFKhSVCCClTFKgEIQiw+RqBx8qJo3y4n+n/ddy8A7E3V3i9stFMOenjuwcxnZrYY+Zo/AsXT9yANdbw77Pm7/mF6C8FrGzeMa28+5E9Y4Z9fLevyG9N6qxsXXXaOsWq8ftl3tNGblEecOzfpNqqrvnGPR9gp/wBZHRWQ1TWlwDY3TTva4knYbQM6+gVfhEpdM2TU+iKKruFRfL0LkzkgtT/LpaceaXvfLKQS8NZzEtaMHBBO+3D/AKRieafxLVsT3O8uO1UbWN7Yw53+LiuG+GvUMWlH611BPUeR+junK6ugP99O1tFH+T6prvm1eHuFYp0+6+gop70RP7s1T/MufVzm/X6vWXiDuOhuJN3sVDb9T1GhKOottPW2KhuMLfqJ8EjPuuhGaeQPEjHl7XDmYQXAALzNxN4cat4btbNerW/6sl/1e70bxU0NQD0Mc7CWH5ZyO4C+PRcQIuJ3h8vttomGbUPD6Q3ekjkyDNaah7WVYAHXyZzDIBkHlmlPbbpnR/io4hcNJKuPTWoJKO31m1XaZImT0NUMYLZqeQOZICNveB2X711HeNxrWWjwvT1nPiXUGsGQn4x0NE535c1wH/KvgaS8O+rdXWr9ILw6i0LpLHN9faom9jgkGM4hYQZJ3Y7Rtd2HcLv2Pie3Vnh20hT6C0NpKy8ap6Kr1pQ2VtufUxyU7qiSmnmtsM0j2Nqg23RyiItd7gJjHNlfnxrnivrTiTqOa+ar1Pdb7d5Byuqa6qe9zWjo1oJw1oycNAAHog9RR6r4TcKfIOk7BNxN1LCcm+6rhMFrjd6w0DTmQehndjvydhzy5+KLibauC+lb3Pf/AGqqvWpLpzW6emidbn0FPTUUbaY0nL5Xkl80vuho3bzfa3XguDVd1gI5ax7sdngO/wAV31xT14+0cGOBNDVUwfJNZLjdJAz3T+tutVEHY+LaYfkFRzK8t4dcVYm1VopY+G2rpCXT2x8jpLLVvO+YHnLqYnf3HczB0DhsE3h7+seH3iT4euqonUVSL3T0riSC0smd5LiHDYtLZDuDjddL2nUltvOGQTBsp/spPdd/3/BdjaBluFNqLS85kd7NFdqY0rJN/fEzD7npg9cbLy9q2I1Oz9RYq6VUVR96Zhu3PDXE+bvb6Uu0U2meOPDPVpiBMrOSf+NkMzHAH8Hu/NeHxT/VXEi6Uo2HnTNx8M8wXvv6YaJnsXDiT7/mVbfwxGvCGpRy8Y7oB09ok/8Aovw3syvVXt1dFNU9Iqj6RXVEfw7WujF+r/3Z9xCEL6y80hUKXfFQoyhCEIqEpTFKUVBSpilQCUpkpQQhCEAhCEAhCEHMEIQtOFDlWVY5RGzndv0CBEpWwABUzxgDIHzRcKEFCCiFQhSxvO4BAh6qFtDQ3YDCqmiBaXAYIRcMzkqYpUQIQpAycIsPjagyGwOGxBO6708Kd2js3jLsbnuDGSV80WSdiXwuI/xC6Zv9ODbS4Ddjgc/0/wCq+laNTSaV17orVnKY2076SrL2HeQwSBsn4nk3+a/Pbc0c6/Z2p0kdblFVP3pmHcsVcFVNXhL0H9K/Uy6a442CrpYsOuVgizK4ZHNHPMDj1PKWLytYb1UWPgFrCqFQfbNRXmhtb3OOXPp4GSVErR8PM9lJ/lC99fSu6GGs+DGheIduhNSy1VJgnmiGQ2nqmNLXuP7okjY0fGT4r82dRV4ZozS1qaOXyhU10gHd8sgaCfjyQs/DC/CezXW06zdjS0/mt5omPCaZnl9sT9Xc1tPDfq8+b7XArigOFXFSx6groDcLK176S728n3ay3zsMVVCR0PNE94Geh5T2Wbjdwyfwh4pX/SzasXKhpJhJb7izHJXUUjRJTVDcEgiSJ7H7E/aXBl6v4faDb4q9FcJWlxN80vqGg0VfZQDzm0VU+aCo9MRH2mEnrjyBuvp7ouFeJy+3XQPGbTdotldNbbpoGwWa0wVlHIY5IaqKljmnc1w3BFTLMvo8RrBbvEhoy5cVNJUcNFrS2RibW+maKIMa4E4+tqVg/snnHnMaP1bzzfYdkdVccNbHiTxl1xqrl5GXi9VlbGz9yN8znMb8g0gfgvncOOIt+4UaztuqNN1hortQPLmOLeZkjCC18UjTs+N7S5rmnYtcQVBxpd3+LBgoNVaDsUbeWOzaEsEHL6PmomVcn5yVUh/FaeL3DKy6401FxY4YUHkaarahlNfdNw5e/TVwkO0fqaWU5MMh2GTGfeaM9vcWuE1n1Fx54h6615UTWrhhpO4R6aZ7PhtTe6m308dK2hpM/eIp8vk+zG3JO5AIeeNAcK4XaYl13q18tv0hTymGmYw8tRd6kf2FP8G7c8nRg26kBc+8P+s7jr/xGcPLZcKaM0lVfqKOGmp28raaFkzHFjR+6Gg9d++VxjilxFunGHUkVdVUsFps9DEKOz2KhHLSWukafchib/Vzz7z3ZcSSV3l9Gnw0fq3xSsvT6d0lu0lbpat8uMsbUStMMTT8SHyOH+zPovzO8+up2bsTWauuccNurHrMYpj6zMQ57FPHdpp83bX0rAbqTiLwi0wx482pmma5uegkkhYCf6/kV4Kr6n6x4qXSobuPaJjn5ZavU3jV1hT658aNe8VJbQaQtYY+QHLY5I2OkBH/ABJY2n5fBeUdCtNdd7jWvGS4HJPq52T/AILyPZ9oqtBu1obNfWaeL90zV/aW9ZVxXq5hytCeVnI/boUi+lOgUpUzkqjKP6oVsMYeST0CvwMYxsisRSlXzxhhyOhVBRUFKmKVAJSrYmc7sHotIaAMADCDAhaKiIAcw29VnQCEIQCEIQcwQhC04UOTxNLc5CQp4iSN+iLCxVyglhA3ViR+eU469ka7MpBBweqgqSSTv1UHojBVbA0hwODjCqV1OXHO/uhFhaUr92O+SYqDnBx1Rpie0tO4wkTvJJ36/FIjATxtJcDjbKRWRF3NgHbuiwaphFRTyRHbnaRlccaw1unKmDlPtFBL54xuTG7DXjHYAhp/ErlC49XvNkvbKvk8ynmyJGEZDgRh4/EHPzXFcjlly0z2fpZ4X7pbPFj4Nrrw7vczX1tLRvs07nj3oy0B1NMB35cRuz3LCvyu1ToKq05rO56e1NX09iuFomNBURzskeWOj904DWkkHGQe4IPdeg/Cdxxf4cOM1PVVUznaWuwbTVxGeXyXHMc3zYTv8C/uvSn0kXhNPFGxx8YtC04r7rTUrTd6alHMa2ka33KhmPtPjaACB1YAfub/AM+aK/G4+9N7Qaj4dHrp47dXam53p8IzPL9nbL2qo/FWIrj5qeU+jwbpnS/BajkbJqjXepq9n3qbT1gY0n5SzzDH/IvVXg14tcCOGPEHU1y0bpfX08VFpe4Vtzr73dqU/wDhoGNmHJBHEGmQysi5HF45XEHOy/PldqcJrx+i/DXi5c2PDaiustNYIR/6ithlkI/4dLI3/fX3p5T0Dxf0/wABeHFutuprNwUu2s+Ht4OLbqmg11MyN78ZdT1EZpCaeoaPtROJ9QXDddWjix4eM78AL5+HECT/APTXA+DPHC68IK6up/YqXUmkbu1sN80tdAXUVziGeXmA3ZI0nmZK3DmOwQcZB+9xR4Raensf6ecLrjUXrREhb7dbq3H1lp+Zx/Y1LR9uPOzJ2jld0Ia4YId8+GTxEcINJcWrJS6Y4JXeikv9TFZaqKt1s+rpJ4p5Gx4mgdSBsoaXB4BxhzWkEEZXIvFHxW4T8e+I94fdafWmmrlaauooKanoZKSptUfLK7zJI4OWNwdK/mkeebLnOOSdl5Q4En2Hi3oiqOwgvlDKT6ctQw/9Fyl4jrLxdLpVPbHHLUS1EkjzgDLi4kn8UF1/05YNNWmouFHf2V8MY9xlRSvppHO7Nxlwz8nFfoB4PdFUvhP8JF84h6rZ7Ler3A6+13MMSNhDD7NDg/ew4ux15pSOy81eDbw4VPia4iU2qL1RPi4XacqOcNmaQ27VTSCI8HqwdXHsMN6uOOwPpH+PEvErVtt4J6Uq2OiimbUXuqDj5bHNHMGOI+6wZkdtthvoQvhO+Ornera1jdDQzmmJiu/VHSmmnnFPr39eGPHHq6an3FudRV6Q8X3zUtbX6Y1XrG6SMfetY3CRg2PMIucvlI/gc4ho9DCVh0PQmjsbHu+1O4ydO3Qf4Z/FYtb18OqtVUdmtReLLbIxRUgOCeRv25DjbLjknsSSe65XFG2GNkbBysYA1oHYBfeLFum3TFFEYiIxEeTyKpyrnaXEYGQAqFonLg0YO3dZ12mClKN+ykqOm6MtMLS1pBHdOliLjHl39UyNKp2lzQAM7rIeq2zZDCWlYj1QQUqZKgvgaWk5GFcqoC4g5OR2VqCucF0ZA3KyEFpwditsmeQ8vVYiSTk7lBCEIQCEIQcwQhC04RtnforRgjboqXJM47orUlKqExA6ZVb3FxySi5TKWk7dVWUIPREQMc2/T4LVGW8nu7BZEINZULOJ3NGOvzSPeXnJ/JFyeoLMkY95Z0zkqIFojLce7/VZ0IsNayXOhbcKR8R2d1afQqWzOZt1HxUPlc877D0CTGeS9HGoD7VCbZVHy5o3H2d7zgNd3Yfgf8V7Z8CvjOboY0/DbiBVOitXN5VsuVU7amJ/sZCejOzT0HTpjHjS82r2tvmxD9c0bj94f5rBFVU13jFJcHimqmDlirHD8myfD49Qvx+8e7uj3j0NWg1tPKecTHWme0x5/wB45O7Yv1WquOl748Yn0bEOtqms1zwgZT09yqOeprdOc4ZDVPO5fTOJ5WOO+WHDTnYt6H85b/bLzoS23LS97ttZZro6tjlqaOthdFKzy2PDctcAd/MP5L1t4evHHrjw7ml0/qank1NpNvKIo5JMzU8fT9TJ0c0D7rumMZavb1u4o+HfxhWuCkvDLHeqxjMMob1GIa2HPUMJw8D1LHY+K+NWdt7z7hR+E2xYnV6Sn5btHzRHbi9PCrHlVMYenNqxq/itzw1eD8QVyHRGr7toi8suNorHUs/KY5GkB0c0ZGHRyNOzmkbEFfq9qr6KfgtqWsfV2W5ag05G/cUtDXRzwN+Xmse/83lfLtX0RvCmiqGS3HVOqa6JpyYmz08LXfAkRE4+RC9+j2u7sVW+OqquJ8JonP8AEzH8uH/T7+e33fnVb9T2Smv9vvNsgNLUtnZLJbIfeDZM5zEf3ScYb1HxXp7w3eAXW3HCqor3xHhqdGaEjf5jbW4GOuuAHQYO8bT+84ZxnlbuHD2XQcP/AA1eEOmju7aHT2nq6nGY62umNVXOdjfyzI5z+Y+jMfJebOPH0kt74gTz6T4MWupiNQ0xuvlRHiYDu6Nh2YAPvv6b7DGV4d3fLeDe/wDpN1tJVat1cpvXOWI746xE+k1T4RE83LGmtaf4r9WZ8IdseLDxWaZ8LWhKXhnw0paVuqPZm0lFQUTQ6O2xkAB7xuS85yAclxOT8fzX1HXzcPbPW01TVPrNcXzL7nVySF8lNG4hxiLs5MjnbvPqAPunmvuF6peHNVVV8tcNR6+qy6SavfIZY6N7iS5zXHd8h7v+J5f3jw+w2We71brncXOl53c48zrIfU/BfTt0909NuxpZtW547tfO5XPWqf8AEdo+s85dHUaib1WZ5RHSH1dF2I2+kNXM3FRONgerWdvz/wAlyVZmuLTkJnTuIOAAvoMRjk6MyueQGnPRZH8ufdGygnKFQrlMRYD72VBS9kZbcghQsbSQcg4Ks9odjoPmirz03WOUtJ90YQ45OScn1SFFQhnLze90QlQbGkFox0UrFnCsFS5oxgH4oNKyTlhJ5Rv3SOeXHJOSlQCEIQCEIQcwQhC04UFIU56JCghQVKUoIQUIKBUIUIIKhSVCCHJUzkqAQhCKU9VCkqEaBXyrrZI6/L2Yjm/e7H5r6qVSYieUrE4cZprzcdPsdSVETKqicfepqlvPG7+U9j8R06rSP0YunI5k1XYKoHOSPPhPoBuHN+ZJ/BfaliZMwskaHtPZwyF8qq0xSTkmMugJ7NOR/VcM2/ByRV4uVWHUGr7LG1tg4uy22MD3YY7vVwf+1oLf6rdc9XcRLpAWXfjbM6A9YjfK1/N/uhuD+JXWdRoyUn9XUsI/iaQqo9FT/fqImj+EE/5LzKtmaSqv3lVimavHhjP3w5PezjGX3ZYNH0E0lVer3cdU1ZHuwUo8ppPq6VxcXD4e6fisFy4j19XQ/U+n6GKw2xwwYKFp82U+r37ucfmTjsUsOjKdhBmmfLj7rfdBX2KSgp6FvLBC2IdyBufxXo02scukOOa3HLNpDlcKiv8Aed1EOc7/AMR7rk5GBgYAHYJ0jl2Ipino485lCUpglKqoQhCikco7JilUZQhCEUJCnKQoqClTJUAlcmSlBCEIQCEIQCEIQcxDSegQWlvUYWgjAwFBGRhacLMUhVjlWUEKCpUFBAaXdBlDmOaNxhaWN5WgKSMo1hiQmkbyvISoyUqFJUIIwScAZUmNzRktK0QsAZnuU6NYYUKydoa/bod1WiFKhSVCNDqgxP68qugaME91aplcMSFbO3BB9VUqhSoUlQggqRG4jOE8Tcuz6K1SZwMpGNikctMzctz3CyuVicrCMJSmUFFKpbG53QZUxt5ngFa1FYXtLeowkW2Zocwjv2WJRlCEIRQoDC7oMqQMnC1ABowEVjcwt6jCrW9wDgQeiwuHK4j0QQlKZK5BClrS44AyoW2JgYwAem6DI6NzRuCEq+hjI3WKRvI8hAiEIQc6KVMUq04VEjeXuqirZWkEqooIUtZz53AUKWtLnbIq9CEI0zzx4Jdkb9lUrahh5ubsqkZkpQ1vM7GcfNBQ1pccDqiNTWlrAD2QpA5WgeihG1M7M+9kAALOVoqGEgEdlnRClAGSAgoAyfiitEbeRuOqZQxvK0A9VKy0qlYXAb4x6rOtEreZu3VZ1YSSlQpKhVF0bOUZzkH0TJY2lrcnumWJXsWRvMwhZXjlJHVa3jmaQsbwQcHZWkKoKlQVpVkMe4dn8FeqKdhyXHZXrIV3QrFIzkOM5+S2lYnsLHEEIEQpUIHjj5jkEbHoryqIWFz89gryihZJ4+VxJI3PRa1kqGFryexQVJSmSlA0cfmEjIB+K2gYAWKNhe4AfmtqAWaoj95zsj5LSs1Sw83N2QUIQhBznIcMg5UEgddlQCR0KCSeq04TySbYGCs56pykKCFYyUDY4HxVagorQHB3Q5QSAMnYLMCQdtkOcXdSi5WvmAG2HFZyc5QhEKU8UvJsQMeqQqEGoSNccA5UnZYycIL3OGCSQi5aHTNAODk+izOdzEnp8lCEClNHJydgUpUIrSJGk4BTLIgyOIxzHCmFyudK0Z3yVS9/Oc4wlQqFKlruQ56/NBSoi/zWkDJwfRSs5UB7gMA7KTC5aC9oOCVmmk5sgDZBSOSIwhVGcHKlQVWl7J2kb7KwEEZG4WJS17m9CQorS97W9ThZ5pubLRgj1VbyTuUqjIChSoRV0c4xg4HyThwduDlZVHMWnIOEVrc4NGScKiWcdG4cqnOLupykQCUplBQWwzhuGkAD1V7Xtf8AZOVhUglpyDgoNxIaMnYKqSoaG+77x9Fnc9zupylQSXZPQIUIQcwQhC04UFIeqdyQ9AghQVKgoFQUI7oFQhQeiCCoUu6qEEFKmcoKCEIQjRSoUlCKhKU3dR2QQhB6I7oIclTHslQBSqSoQCRyZKUCpSm9FHdGioQhRSlKEzuiTsoyEKT3UIqEp6pkpRUJU6RAJSmSlBCEIQCEIQCEIQf/2Q==","kayzel","A.","Guarin","luz","cagayan de oro","2000-05-12","22","Single","Female","Purok 1","Yes","Positive","0965454156","kayzel@gmail.com","sfa","bonbon","1","","0");

