/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: pms_clients
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `pms_clients` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(255) DEFAULT NULL,
  `client_adresse` varchar(255) DEFAULT NULL,
  `client_contact` varchar(255) DEFAULT NULL,
  `client_phone` varchar(255) DEFAULT NULL,
  `client_fax` varchar(255) DEFAULT NULL,
  `client_email` varchar(255) DEFAULT NULL,
  `client_site` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 89 DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: pms_offers
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `pms_offers` (
  `offer_id` int(11) NOT NULL AUTO_INCREMENT,
  `offer_number` varchar(255) DEFAULT '',
  `offer_client_id` int(11) DEFAULT NULL,
  `offer_client_adresse` varchar(255) DEFAULT NULL,
  `offer_project_id` int(11) DEFAULT NULL,
  `offer_type` text NOT NULL,
  `offer_caption` varchar(255) DEFAULT '',
  `offer_date` date DEFAULT NULL,
  `offer_notice` varchar(255) DEFAULT NULL,
  `services` varchar(1000) DEFAULT '',
  `offer_price` decimal(10, 0) DEFAULT NULL,
  PRIMARY KEY (`offer_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 80 DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: pms_offers_copy
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `pms_offers_copy` (
  `offer_id` int(11) NOT NULL AUTO_INCREMENT,
  `offer_client_id` int(11) DEFAULT NULL,
  `offer_client_adresse` varchar(255) DEFAULT NULL,
  `offer_number` varchar(255) DEFAULT NULL,
  `offer_project_id` int(11) DEFAULT NULL,
  `offer_type` text NOT NULL,
  `offer_extra` varchar(255) DEFAULT NULL,
  `offer_date` datetime DEFAULT NULL,
  `offer_pdf` varchar(255) DEFAULT NULL,
  `offer_service_1` longtext DEFAULT NULL,
  `offer_service_2` longtext DEFAULT NULL,
  `offer_service_3` longtext DEFAULT NULL,
  `offer_service_4` longtext DEFAULT NULL,
  `offer_service_5` longtext DEFAULT NULL,
  `offer_service_6` longtext DEFAULT NULL,
  `offer_service_7` longtext DEFAULT NULL,
  `offer_service_8` longtext DEFAULT NULL,
  `offer_service_9` longtext DEFAULT NULL,
  `offer_service_10` longtext DEFAULT NULL,
  `offer_service_11` longtext DEFAULT NULL,
  `offer_service_12` longtext DEFAULT NULL,
  `offer_service_13` longtext DEFAULT NULL,
  `offer_service_14` longtext DEFAULT NULL,
  `offer_service_15` longtext DEFAULT NULL,
  `offer_service_16` longtext DEFAULT NULL,
  `offer_service_17` longtext DEFAULT NULL,
  `offer_service_18` longtext DEFAULT NULL,
  `offer_service_19` longtext DEFAULT NULL,
  `offer_service_20` longtext DEFAULT NULL,
  `offer_service_21` longtext DEFAULT NULL,
  `offer_service_22` longtext DEFAULT NULL,
  `offer_service_23` longtext DEFAULT NULL,
  `offer_service_24` longtext DEFAULT NULL,
  `offer_service_25` longtext DEFAULT NULL,
  `offer_service_26` longtext DEFAULT NULL,
  `offer_service_std_1` longtext DEFAULT NULL,
  `offer_service_std_2` longtext DEFAULT NULL,
  `offer_service_std_3` longtext DEFAULT NULL,
  `offer_service_std_4` longtext DEFAULT NULL,
  `offer_service_std_5` longtext DEFAULT NULL,
  `offer_service_std_6` longtext DEFAULT NULL,
  `offer_service_std_7` longtext DEFAULT NULL,
  `offer_service_std_8` longtext DEFAULT NULL,
  `offer_service_std_9` longtext DEFAULT NULL,
  `offer_service_std_10` longtext DEFAULT NULL,
  `offer_service_std_11` longtext DEFAULT NULL,
  `offer_service_std_12` longtext DEFAULT NULL,
  `offer_service_std_13` longtext DEFAULT NULL,
  `offer_service_std_14` longtext DEFAULT NULL,
  `offer_service_std_15` longtext DEFAULT NULL,
  `offer_service_std_16` longtext DEFAULT NULL,
  `offer_service_std_17` longtext DEFAULT NULL,
  `offer_service_std_18` longtext DEFAULT NULL,
  `offer_service_std_19` longtext DEFAULT NULL,
  `offer_service_std_20` longtext DEFAULT NULL,
  `offer_service_std_21` longtext DEFAULT NULL,
  `offer_service_std_22` longtext DEFAULT NULL,
  `offer_service_std_23` longtext DEFAULT NULL,
  `offer_service_std_24` longtext DEFAULT NULL,
  `offer_service_std_25` longtext DEFAULT NULL,
  `offer_service_std_26` longtext DEFAULT NULL,
  `offer_service_desc_1` longtext DEFAULT NULL,
  `offer_service_desc_2` longtext DEFAULT NULL,
  `offer_service_desc_3` longtext DEFAULT NULL,
  `offer_service_desc_4` longtext DEFAULT NULL,
  `offer_service_desc_5` longtext DEFAULT NULL,
  `offer_service_desc_6` longtext DEFAULT NULL,
  `offer_service_desc_7` longtext DEFAULT NULL,
  `offer_service_desc_8` longtext DEFAULT NULL,
  `offer_service_desc_9` longtext DEFAULT NULL,
  `offer_service_desc_10` longtext DEFAULT NULL,
  `offer_service_desc_11` longtext DEFAULT NULL,
  `offer_service_desc_12` longtext DEFAULT NULL,
  `offer_service_desc_13` longtext DEFAULT NULL,
  `offer_service_desc_14` longtext DEFAULT NULL,
  `offer_service_desc_15` longtext DEFAULT NULL,
  `offer_service_desc_16` longtext DEFAULT NULL,
  `offer_service_desc_17` longtext DEFAULT NULL,
  `offer_service_desc_18` longtext DEFAULT NULL,
  `offer_service_desc_19` longtext DEFAULT NULL,
  `offer_service_desc_20` longtext DEFAULT NULL,
  `offer_service_desc_21` longtext DEFAULT NULL,
  `offer_service_desc_22` longtext DEFAULT NULL,
  `offer_service_desc_23` longtext DEFAULT NULL,
  `offer_service_desc_24` longtext DEFAULT NULL,
  `offer_service_desc_25` longtext DEFAULT NULL,
  `offer_service_desc_26` longtext DEFAULT NULL,
  `offer_service_both_1` longtext DEFAULT NULL,
  `offer_service_both_2` longtext DEFAULT NULL,
  `offer_service_both_3` longtext DEFAULT NULL,
  `offer_service_both_4` longtext DEFAULT NULL,
  `offer_service_both_5` longtext DEFAULT NULL,
  `offer_service_both_6` longtext DEFAULT NULL,
  `offer_service_both_7` longtext DEFAULT NULL,
  `offer_service_both_8` longtext DEFAULT NULL,
  `offer_service_both_9` longtext DEFAULT NULL,
  `offer_service_both_10` longtext DEFAULT NULL,
  `offer_service_both_11` longtext DEFAULT NULL,
  `offer_service_both_12` longtext DEFAULT NULL,
  `offer_service_both_13` longtext DEFAULT NULL,
  `offer_service_both_14` longtext DEFAULT NULL,
  `offer_service_both_15` longtext DEFAULT NULL,
  `offer_service_both_16` longtext DEFAULT NULL,
  `offer_service_both_17` longtext DEFAULT NULL,
  `offer_service_both_18` longtext DEFAULT NULL,
  `offer_service_both_19` longtext DEFAULT NULL,
  `offer_service_both_20` longtext DEFAULT NULL,
  `offer_service_both_21` longtext DEFAULT NULL,
  `offer_service_both_22` longtext DEFAULT NULL,
  `offer_service_both_23` longtext DEFAULT NULL,
  `offer_service_both_24` longtext DEFAULT NULL,
  `offer_service_both_25` longtext DEFAULT NULL,
  `offer_service_both_26` longtext DEFAULT NULL,
  PRIMARY KEY (`offer_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 68 DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: pms_projects
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `pms_projects` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_client_id` int(11) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `project_url` varchar(255) DEFAULT NULL,
  `project_platform` varchar(255) DEFAULT NULL,
  `project_update` varchar(250) DEFAULT NULL,
  `project_last_update` datetime DEFAULT NULL,
  `project_hosting` varchar(255) DEFAULT NULL,
  `project_description` varchar(5000) DEFAULT NULL,
  `project_access_data` varchar(5000) DEFAULT '',
  `project_start_date` datetime DEFAULT NULL,
  `project_end_date` datetime DEFAULT NULL,
  `project_status` varchar(255) DEFAULT NULL,
  `project_online` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 319 DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: pms_services
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `pms_services` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(255) DEFAULT NULL,
  `service_description` varchar(255) DEFAULT NULL,
  `service_price_hour` decimal(10, 0) DEFAULT NULL,
  `service_price_total` decimal(10, 0) DEFAULT NULL,
  `service_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 54 DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: pms_settings
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `pms_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clients_per_page` int(11) DEFAULT NULL,
  `projects_per_page` int(11) DEFAULT NULL,
  `tasks_per_page` int(11) DEFAULT NULL,
  `users_per_page` int(11) DEFAULT NULL,
  `services_per_page` int(11) DEFAULT NULL,
  `offers_per_page` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: pms_tasks
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `pms_tasks` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_project_id` int(11) DEFAULT NULL,
  `task_name` varchar(255) DEFAULT NULL,
  `task_description` varchar(5000) DEFAULT NULL,
  `task_notice` varchar(5000) DEFAULT NULL,
  `task_add_date` datetime DEFAULT NULL,
  `task_priority` varchar(255) DEFAULT NULL,
  `task_plan_time` varchar(255) DEFAULT NULL,
  `task_start_time` datetime DEFAULT NULL,
  `task_end_time` datetime DEFAULT NULL,
  `task_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1277 DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: pms_users
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `pms_users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user_avatar` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `refreshToken` varchar(255) DEFAULT '',
  `created_date` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `role` varchar(255) NOT NULL,
  `verified` varchar(255) DEFAULT NULL,
  `verifedToken` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE = InnoDB AUTO_INCREMENT = 59 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: pms_clients
# ------------------------------------------------------------

INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    1,
    'Sonneborn Büro für Werbung',
    'Günterstalstr. 33a 79102 Freiburg',
    'Juergen Sonneborn',
    '+49 (0)761-21444150',
    '+49 (0)761-2144415-3',
    'info@sonneborn-bfw.de',
    'http://www.sonneborn-bfw.de'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    2,
    'punkt KOMMA Strich Werbeagentur',
    '\nGlümerstraße 2b\r\n79102 Freiburg',
    'Elke Kern',
    '+49 761 702002',
    '+49 761 700104',
    'info@punkt-komma-strich.de',
    'http://www.punkt-komma-strich.de'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    3,
    'srp. Werbeagentur GmbH',
    '\r\nKaiser-Joseph-Straße 274 \r\n79098 Freiburg im Breisgau',
    'Tino Schneider',
    '+49 761 45263 0',
    '+49 761 45263 64',
    'hallo@srp.de',
    'http://www.srp.de'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    4,
    'RIXNER.NET',
    '\r\nGrillparzerstr. 5\r\n79102 Freiburg',
    'Norbert Rixner',
    '+49 761 7043205',
    NULL,
    'input@rixner.net',
    'http://www.rixner.net'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    5,
    'HARDY',
    'Gerberau 28 79098 Freiburg',
    'Hartmut Billharz',
    '+49(0)761 3196 888',
    NULL,
    'contact@gafgaf.de',
    'https://www.gafgaf.de'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    6,
    'chilli Freiburg GmbH',
    'Paul-Ehrlich-Str. 13 79106 Freiburg',
    'Michaela Moser',
    '0761/ 76 99 83 0',
    '0761/ 76 99 83 99',
    'redaktion@chilli-freiburg.de',
    'http://chilli-freiburg.de/'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    7,
    'Steffen Herzog',
    'Hungerberg 1.90\r \nD-69253 Heiligkreuzstein',
    'Steffen Herzog',
    '+49(0)173261796752',
    NULL,
    'cdpbox@hotmail.com',
    'http://www.carpeduke.com'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    8,
    'Susanne Goerke',
    'Basler Landstr. 70a 79111 Freiburg',
    'Susanne Goerke',
    '+49 (0) 761 45383-47',
    NULL,
    'susa@susa.design',
    'https://www.susa.design'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    9,
    'Hugo Waschkowski',
    'Sonnhalde 16\r\nD-79104 Freiburg\r\nGermany',
    'Hugo Waschkowski',
    '+49(0)761 5559316',
    '+49(0)761 54105',
    'info@hugodesign.de',
    'http://www.hugodesign.de'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    11,
    'Claudia Schori',
    'Vektor-Design\r\nSt. Johannes Weg 1\r\n79199 Kirchzarten',
    'Claudia Schori',
    '07661 988 36 33',
    '0151 461 344 78',
    'kontakt@vektor-design.de',
    'http://www.vektor-design.de'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    12,
    'FlowID GmbH',
    'Paul-Ehrlich-Str. 13 79106 Freiburg',
    'Ulf Kollross',
    '+49 761-60068490',
    '+49 761-60068491',
    'ulf.kollross@flowid.de',
    'http://www.flowid.de'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    13,
    'Others',
    '-',
    '-',
    '+0000000',
    '+0000000',
    'test@test.test',
    ''
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    14,
    'SCHLEINER + PARTNER',
    'Schwaighofstr. 18 D-79100 Freiburg',
    'Ben Waschk\r\nDipl.-Designer',
    '0761/7 04 77-0',
    '0761/7 04 77-55',
    'waschk@schleiner.de',
    'https://www.schleiner.de/'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    15,
    'Andrea Lienhart',
    'Richard Kuenzer Str. 3a\r\n79102 Freiburg',
    'Andrea Lienhart',
    '+0761 70 91 67',
    '+0761 70 74 381',
    'mail@lien-art.de',
    'http://lien-art.de'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    16,
    'Stein Restaurator Armin Hellstern',
    'Blankreutestr. 21 79108 Freiburg im Breisgau',
    'Armin Hellstern',
    '0761-492240',
    '0761-482371',
    'info@stein-restaurator.de',
    'https://stein-restaurator.de/'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    17,
    'Hofmann-Monnot',
    'Nollinger Str. 8  79618 Rheinfelden',
    '',
    '+49 7623 798834',
    '+49 7623 798835',
    '',
    'hofmann-monnot.de'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    19,
    'Cathrin Caspari | Grafik-Design',
    'Hauptstraße 46a | 79365 Rheinhausen',
    'Cathrin Caspari',
    '+761 70 91 67',
    NULL,
    'caspari@cc23.de',
    'http://www.cc23.de'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    20,
    'Roland Klein, medienkonzept.de',
    '\r\nHornusstraße 16\r\n79108 Freiburg\r\n',
    'Roland Klein',
    '+49-761-154 30 880',
    NULL,
    'info@medienkonzept.de',
    'http://www.medienkonzept.de/'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    21,
    'digalo | Online Marketing',
    'Kaiser-Joseph-Straße 274 79098 Freiburg',
    '',
    '0761 / 76 99 79 80',
    NULL,
    'info@digalo.de',
    'https://www.digalo.de/'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    22,
    'Marcus Brian',
    'Goethestraße 4 79100 Freiburg',
    'Marcus Brian',
    '0761 296 56 630',
    NULL,
    'kontakt@brian-kommunikation.de',
    'http://www.brian-kommunikation.de/'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    23,
    'Anette Weiss',
    'Hebelstr. 11\r\n79400 Kandern',
    'Anette Weiss-Hakenjos',
    '07626-974866',
    NULL,
    'info@hebammen-kandern.de',
    'https://hebammen-kandern.de/'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    24,
    'Habé Offset GmbH',
    'Freiburger Straße 10 \r\n79312 Emmendingen',
    'Bernd Habé',
    '07641 46 89 77',
    ' 07641 46 89 77 22',
    'info@habe-offset.de',
    'https://www.habe-offset.de/'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    25,
    'E-SEO',
    'Crna Trava, Serbia',
    'Aleksandar Cvetkovic',
    '+381637675989',
    NULL,
    'kontakt@e-seo.info',
    'http://www.e-seo.info'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    26,
    'Communication Sidekick',
    'Kaiser-Joseph-Straße 274\r\n79098 Freiburg',
    'Tino Schneider',
    '0171 58 37 260',
    NULL,
    'info@communication-sidekick.de',
    'https://www.communication-sidekick.de/'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    27,
    'Makom GmbH',
    'Tullastraße 89, 79108 Freiburg',
    '',
    '0761-58884',
    NULL,
    'joachim.gross@makom-net.de',
    'https://www.makom-net.de/'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    28,
    'Unternehmensberatung-BW',
    'Nettenbergstraße 29 · 79618 Rheinfelden',
    'Alexander Reimold-Eisenhuth',
    '0176 20 45 73 06',
    '',
    'info@unternehmensberatung-bw.de',
    'https://www.unternehmensberatung-bw.de/'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    29,
    'Spielplan4 Event-Marketing GmbH',
    'Glümerstrasse 2B, \r\n79102 Freiburg',
    'Florian Städtler',
    '+49 (0)761 38 94 74',
    NULL,
    'staedtler@spielplan4.com',
    'https://www.spielplan4.com/'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    77,
    'Test client Aleksan',
    'strasse 89',
    '78945',
    '',
    '',
    'alek@e-sem.com',
    'www.client.com'
  );
INSERT INTO
  `pms_clients` (
    `client_id`,
    `client_name`,
    `client_adresse`,
    `client_contact`,
    `client_phone`,
    `client_fax`,
    `client_email`,
    `client_site`
  )
VALUES
  (
    88,
    'E-SEO - COPY45',
    'Crna Trava, Serbia',
    'Aleksandar Cvetkovic',
    '+381637675989',
    NULL,
    'kontakt@e-seo.info',
    'http://www.e-seo.info'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: pms_offers
# ------------------------------------------------------------

INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    6,
    '002-18',
    13,
    'Designed4Sale UG\r\nHintere Leite 1691735 Muhr am See',
    177,
    'Angebot',
    ' Responsive Programmierung in Wordpress',
    '2018-01-01',
    NULL,
    '{ service_id: 1, service_price_hour: 2, service_price_total: 0 },{ service_id: 3, service_price_hour: 8, service_price_total: 0 }',
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    7,
    '003-18',
    9,
    'Dr. med. dent. Christian Selz\r\nDr. med. dent. Linda Selz\r\nFachzahnärzte für Kieferorthopädie\r\n\r\nJahnstraße 29\r\n79117 Freiburg\r\n',
    180,
    'Kostenschätzung',
    ' Responsive Programmierung in Wordpress',
    '2018-02-19',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    13,
    '006-18',
    3,
    '',
    68,
    'Kostenschätzung',
    ' Responsive Programmierung in Wordpress - Relounch',
    '2018-03-19',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    18,
    '009-19',
    3,
    '',
    220,
    'Kostenschätzung',
    ' Responsive Programmierung in Wordpress',
    '2019-03-09',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    19,
    '039-22',
    4,
    'Robert Bruns\r\nMittlerer Weg 34\r\nD- 79424 Auggen',
    85,
    'Angebot',
    'Aktualisiertes Angebot -  Programmierung in Wordpress und Woocommerce',
    '2022-07-04',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    22,
    '013-19',
    3,
    '',
    228,
    'Kostenschätzung',
    '',
    '2019-05-14',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    25,
    '015-19',
    3,
    '',
    151,
    '',
    ' Responsive Programmierung in Wordpres',
    '2019-08-08',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    26,
    '016-19',
    21,
    '',
    233,
    '',
    'Responsive Programmierung in Wordpres',
    '2019-09-13',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    27,
    '017-19',
    3,
    '',
    235,
    '',
    'Responsive Programmierung in Wordpres',
    '2019-10-11',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    29,
    '019-19',
    3,
    '',
    241,
    '',
    '',
    '2019-11-28',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    31,
    '021-20',
    4,
    'A r c h i G E N T U R\r\nGötz von Roëll\r\nVierlinden 7\r\n79102 Freiburg',
    246,
    '',
    'Responsive Programmierung in Wordpress',
    '2020-02-04',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    32,
    '022-20',
    3,
    '',
    62,
    '',
    'Responsive Programmierung in Wordpres',
    '2020-02-18',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    33,
    '023-20',
    3,
    '',
    248,
    '',
    'Responsive Programmierung in Wordpres',
    '2020-03-05',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    34,
    '024-20',
    4,
    'Nierenzentrum\r\nEmmendingen Waldkirch\r\nSchützenstraße 5/2\r\n79312 Emmendingen',
    252,
    '',
    'Responsive Programmierung in Wordpres',
    '2020-04-23',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    35,
    '025-20',
    3,
    '',
    253,
    '',
    'Responsive Programmierung in Wordpress/Woocommerce',
    '2020-05-28',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    39,
    '025-20',
    3,
    'Gesellschaft für Ganzheitliche Tiermedizin e.V.\r\n\r\nGeschäftsstelle\r\nMooswaldstraße 7\r\nD-79227 Schallstadt',
    255,
    'Angebot',
    'Responsive Programmierung in Wordpress/Woocommerce auf Basis der Sitemap in <i>‘Anforderungen Webseite-Neugestaltung_V2.xls’</i> vom 10.9.2020',
    '2020-09-29',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    40,
    '026-20',
    3,
    '',
    257,
    'Angebot',
    'Responsive Programmierung in Wordpress',
    '2020-08-25',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    43,
    '027-21',
    22,
    'BRIAN KOMMUNIKATION\r\nAgentur für Öffentlichkeitsarbeit\r\n \r\nTel. +49 761-29 656 630\r\nkontakt@brian-kommunikation.de\r\nwww.brian-kommunikation.de\r\n',
    268,
    'Angebot',
    'Responsive Programmierung in Wordpress',
    '2020-02-15',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    44,
    '028-21',
    3,
    '',
    271,
    'Angebot',
    'Responsive Programmierung einer Website in Wordpress',
    '2021-03-16',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    47,
    '027-20',
    23,
    'Anette Weiss-Hakenjos\r\nHebammenpraxis\r\nHebelstr. 11\r\n79400 Kandern                                                                             ',
    272,
    'Angebot',
    'Responsive Programmierung in Wordpress',
    '2021-04-01',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    48,
    '029-21',
    24,
    'Bernd Habé      \r\nFreiburger Straße 10\r\n79312 Emmendingen                               ',
    280,
    'Angebot',
    'Responsive Programmierung in Wordpress',
    '2021-05-10',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    50,
    '031-21',
    1,
    'Juergen Sonneborn\r\nSonneborn Büro für Werbung\r\nErwinstr. 30\r\n79102 Freiburg          ',
    258,
    'Angebot',
    'Wordpress Multi-Sites',
    '2021-06-15',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    51,
    '032-21',
    20,
    ' Roland Klein, medienkonzept.de\r\nHornusstraße 16\r\n79108 Freiburg\r\nDeutschland         ',
    274,
    'Angebot',
    'Responsive Programmierung in Wordpress',
    '2021-06-21',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    52,
    '033-21',
    11,
    'K Procurement & Services GmbH\r\nEllen-Gottlieb-Str. 18\r\n79106 Freiburg',
    267,
    'Angebot',
    'Responsive Programmierung in Wordpress',
    '2021-08-23',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    53,
    '034-21',
    26,
    'Verband für Trüffelanbau und Nutzung in Deutschland e. V.\r\nMooswaldstr 7\r\n79227 Schallstadt',
    283,
    'Angebot',
    'Responsive Programmierung in Wordpress',
    '2021-09-29',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    54,
    '035-21',
    27,
    ' MAKOM Gesellschaft für Marketingkommunikation mbH,        \r\n Tullastraße 89, \r\n79108 Freiburg          ',
    284,
    'Angebot',
    'Responsive Programmierung in Wordpress',
    '2021-09-28',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    58,
    '036-21',
    26,
    'Andreas Thumm\r\nFood-Fotografie\r\nFabrikstraße 15\r\n79102 Freiburg\r\n',
    285,
    'Angebot',
    'Programmierung in Wordpress',
    '2021-10-06',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    61,
    '038-21',
    28,
    'Unternehmensberatung BW GmbH\r\nSchlossgasse 9\r\nGermany-79540 Lörrach',
    286,
    'Angebot',
    'Installation und Konfiguration einer Cloud zum Datenaustausch mit definierten Benutzerrechten für unterschiedliche Kunden',
    '2021-10-27',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    62,
    '7',
    1,
    ' ',
    188,
    'Angebot',
    'TEST PHP8',
    '2021-10-27',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    63,
    '040-22',
    30,
    '',
    295,
    'Angebot',
    'Responsive Programmierung in Wordpress',
    '2022-08-24',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    64,
    '040-29',
    1,
    '',
    188,
    'Angebot',
    'TEST PDF CREATE',
    '2022-09-13',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    65,
    '001-23',
    6,
    '',
    299,
    'Angebot',
    'Responsive Programmierung in Wordpress',
    '2023-01-10',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    66,
    '09-23-1',
    11,
    'Sanja Salonen\r\nWilliam-Tubmanweg 1 \r\n79271 Sankt Peter',
    306,
    'Angebot',
    '',
    '2023-09-20',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    67,
    '10-23-2',
    20,
    '',
    318,
    'Angebot',
    'SEE NEW PMS -> http://pms2022.rixner.info/offers.php',
    '2023-10-11',
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    74,
    '007-2023',
    3,
    'Weltec Insekten- und Pollenschutz',
    106,
    'angebot',
    'Responsive Programmierung in Wordpress',
    '2023-10-18',
    NULL,
    '[{ \"service_id\": 30, \"qty_price_hour\": 0, \"qty_price_total\": 1 },{ \"service_id\": 3, \"qty_price_hour\": 10,\"qty_price_total\": 0 }]',
    1190
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    78,
    '#2510-2023',
    17,
    'Kijevska 10\n11 000 Beograd\nSerbia',
    245,
    'kostenschätzung',
    'Responsive website',
    '2023-10-26',
    NULL,
    '[{\"service_id\":3,\"qty_price_hour\":8,\"qty_price_total\":0,\"price\":720},{\"service_id\":45,\"qty_price_hour\":8,\"qty_price_total\":0,\"price\":720},{\"service_id\":2,\"qty_price_hour\":8,\"qty_price_total\":0,\"price\":720},{\"service_id\":30,\"qty_price_hour\":0,\"qty_price_total\":1,\"price\":290}]',
    2450
  );
INSERT INTO
  `pms_offers` (
    `offer_id`,
    `offer_number`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_project_id`,
    `offer_type`,
    `offer_caption`,
    `offer_date`,
    `offer_notice`,
    `services`,
    `offer_price`
  )
VALUES
  (
    79,
    '12-23-2023',
    11,
    '',
    220,
    'angebot',
    'Responsive website v3',
    '2023-10-27',
    'Installation und Konfiguration der aktuellen Wordpress Version und allgemein benötigter Plugins (z.B. für SEO, Sicherheit);\nAllgemeine Einrichtung des Backends und der Editor-Rechte; Anlegen der Seitenstruktur',
    '[{\"service_id\":3,\"qty_price_hour\":8,\"qty_price_total\":0,\"price\":720},{\"service_id\":2,\"qty_price_hour\":8,\"qty_price_total\":0,\"price\":720},{\"service_id\":45,\"qty_price_hour\":4,\"qty_price_total\":0,\"price\":360}]',
    1800
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: pms_offers_copy
# ------------------------------------------------------------

INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    6,
    13,
    '                                                Designed4Sale UG\r\nHintere Leite 16\r\n91735 Muhr am See',
    '002-18',
    177,
    'Angebot',
    ' Responsive Programmierung in Wordpress',
    '2018-01-01 00:00:00',
    'offer-002-18.pdf',
    '3',
    '1',
    '',
    '2',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2',
    '8',
    '2',
    '4',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ' ',
    ' ',
    '',
    ' ',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    7,
    9,
    'Dr. med. dent. Christian Selz\r\nDr. med. dent. Linda Selz\r\nFachzahnärzte für Kieferorthopädie\r\n\r\nJahnstraße 29\r\n79117 Freiburg\r\n',
    '003-18',
    180,
    'Kostenschätzung',
    ' Responsive Programmierung in Wordpress',
    '2018-02-19 00:00:00',
    'offer-003-18.pdf',
    '3',
    '1',
    '6',
    '2',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '3',
    '9',
    '6',
    '8',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    13,
    3,
    '',
    '006-18',
    68,
    '',
    ' Responsive Programmierung in Wordpress - Relounch',
    '2018-03-19 00:00:00',
    'offer-006-18.pdf',
    '3',
    '1',
    '6',
    '2',
    '14',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2',
    '16',
    '8',
    '6',
    '10',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '8 Templates for all pages',
    '',
    'Animation slider on home page\r\nFB news plugin',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    18,
    3,
    '',
    '009-19',
    220,
    '',
    ' Responsive Programmierung in Wordpress',
    '2019-03-09 00:00:00',
    'offer-009-19.pdf',
    '3',
    '1',
    '6',
    '2',
    '31',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2',
    '16',
    '5',
    '4',
    '4',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '7 Templates',
    '',
    'Home slider with extra icons right\r\nAccordion?\r\nContact form\r\n',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    19,
    4,
    '            Robert Bruns\r\nMittlerer Weg 34\r\nD- 79424 Auggen',
    '039-22',
    85,
    'Angebot',
    'Aktualisiertes Angebot -  Programmierung in Wordpress und Woocommerce',
    '2022-07-04 00:00:00',
    'offer-039-22.pdf',
    '3',
    '5',
    '26',
    '1',
    '2',
    '7',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '47',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2',
    '12',
    '40',
    '20',
    '16',
    '4',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    'Produkte - MIT WARENKORB und KASSE\r\nÜbersicht:\r\n- Kategorien\r\n- Filter \r\nDetailansicht:\r\n- Bildergalerie, Farbauswahl, Artikeldaten, Video (optional 360° Ansicht)\r\n- Zertifikate, Druckfläche, Zubehör\r\nPreise:\r\n- Attribute, Variationen, Preistaffel (im Warenkorb kalkulierbar)\r\n- Vorkosten, Druckkosten (im Warenkorb noch nicht kalkulierbar)\r\n\r\noptional: anfangs ohne Bestellfunktion sondern mit Anfrageformular\r\n',
    '',
    '',
    'Produktspezifische Suchfunktion',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    22,
    3,
    '',
    '013-19',
    228,
    '',
    '',
    '2019-05-14 00:00:00',
    'offer-013-19.pdf',
    '3',
    '1',
    '6',
    '2',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2',
    '16',
    '4',
    '4',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '2 Templates - Home / Internal pages\r\nNews modul - custum post type\r\nPublikationen modul - custum post type\r\nPrograming several content module type',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    25,
    3,
    '',
    '015-19',
    151,
    '',
    ' Responsive Programmierung in Wordpres',
    '2019-08-08 00:00:00',
    'offer-015-19.pdf',
    '3',
    '1',
    '6',
    '2',
    '8',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2',
    '16',
    '4',
    '4',
    '3',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    'Homepage, Über Trüffel, Teamseite, Trüffel in Medien (Posts mit Kategorien), Standardseite, Datenschutz, Kontakt/Impressum, \r\n\r\n',
    '',
    'Gastro-Tipps',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    26,
    21,
    '',
    '016-19',
    233,
    '',
    'Responsive Programmierung in Wordpres',
    '2019-09-13 00:00:00',
    'offer-016-19.pdf',
    '3',
    '1',
    '6',
    '2',
    '31',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '1',
    '12',
    '19',
    '4',
    '4',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '1. Homepage template\r\n\r\n2. Page template with dynamic widgets:\r\n2.1 Text widgets\r\n2.2 Video widget\r\n2.3 Dynamic subpages widget\r\n2.4 Formular widget\r\n2.5 Carusel widget\r\n\r\n3. Aktuelles template\r\n4. Kontakt template\r\n\r\n',
    '',
    'Custum Mega menu\r\nBusiness Hours Indicator plugin',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    27,
    3,
    '',
    '017-19',
    235,
    '',
    'Responsive Programmierung in Wordpres',
    '2019-10-11 00:00:00',
    'offer-017-19.pdf',
    '3',
    '1',
    '6',
    '2',
    '19',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2',
    '12',
    '4',
    '4',
    '2',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '1. Homepage template with slider\r\n1.1 Module widget  \r\n1.2 Text widget with logo\r\n\r\n2. Page template with dynamic widgets:\r\n2.1 Text widgets (100%, 50%|50%)\r\n2.2 Image widget\r\n2.3 4 boxes widget (stazy story)\r\n2.4 Formular widget\r\n',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    28,
    3,
    'Weltec Insekten- und Pollenschutz GmbH\r\nGroßsteinen 5\r\n79291 Merdingen',
    '018-19',
    106,
    '',
    'PHP-/HTML Programmierung',
    '2019-11-15 00:00:00',
    'offer-018-19.pdf',
    '31',
    '31',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '1',
    '1',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '- Update auf die Version 5.3.\r\n\r\n- Bilder einer Veranstaltung in einer Galerie den Teilnehmern zur Verfügung stellen.\r\n\r\n- Upload-Limit hoch setzen',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    29,
    3,
    '',
    '019-19',
    241,
    '',
    '',
    '2019-11-28 00:00:00',
    'offer-019-19.pdf',
    '3',
    '1',
    '6',
    '2',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2',
    '10',
    '8',
    '4',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '1. Homepage template with video\r\n2. Regular Page template with dynamic widgets\r\n\r\n\r\nWidgets:\r\n1 Text widgets (100%, 50%|50%)\r\n2 Text + Image widgets\r\n3 Referenzen widget\r\n4 Header / footer widgets\r\n5.Stellenangebote widget\r\n6.Widget with video boxes',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    31,
    4,
    'A r c h i G E N T U R\r\nGötz von Roëll\r\nVierlinden 7\r\n79102 Freiburg',
    '021-20',
    246,
    '',
    'Responsive Programmierung in Wordpress',
    '2020-02-04 00:00:00',
    'offer-021-20.pdf',
    '3',
    '1',
    '6',
    '2',
    '17',
    '30',
    '34',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2',
    '8',
    '5',
    '4',
    '2',
    '1',
    '2',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '1. Home Seitentemplate\r\n2. Standard Seitentemplate (text/image elements)\r\n3. News Seitentemplate\r\n4. Kontakt Seitentemplate mit Kontaktformular',
    '',
    'Import der Empfängerliste aus eien CSV/EXcel-Datei',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    'yes',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    32,
    3,
    '',
    '022-20',
    62,
    '',
    'Responsive Programmierung in Wordpres',
    '2020-02-18 00:00:00',
    'offer-022-20.pdf',
    '3',
    '1',
    '6',
    '2',
    '30',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2',
    '6',
    '10',
    '4',
    '1',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '1.Homepage Template (Fullsize Video)\r\n2 Seitentemplate 1 - Bildergalerien\r\n3.Seitentemplate 2 - Standardseiten (Referenzen/Impressum/Datenschutz)',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    'yes',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    33,
    3,
    '',
    '023-20',
    248,
    '',
    'Responsive Programmierung in Wordpres',
    '2020-03-05 00:00:00',
    'offer-023-20.pdf',
    '3',
    '1',
    '6',
    '2',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2',
    '6',
    '10',
    '4',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '1.1 Image(Slider)/Text widgets with full options (Homepage + internal pages)\r\n1.2 -haben Sie fragen- widget (All pages)\r\n1.3 Image/Text widget with anchors (internal pages)\r\n1.4 Stellenangebot widget (Steleangebot)\r\n1.5.Full text widget (Impressum/Datenschutz)\r\n\r\n2.Kontakt template\r\n\r\n\r\n',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    34,
    4,
    'Nierenzentrum\r\nEmmendingen Waldkirch\r\nSchützenstraße 5/2\r\n79312 Emmendingen',
    '024-20',
    252,
    '',
    'Responsive Programmierung in Wordpres',
    '2020-04-23 00:00:00',
    'offer-024-20.pdf',
    '3',
    '1',
    '6',
    '2',
    '36',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2',
    '8',
    '2',
    '4',
    '4',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    35,
    3,
    '',
    '025-20',
    253,
    '',
    'Responsive Programmierung in Wordpress/Woocommerce',
    '2020-05-28 00:00:00',
    'offer-025-20.pdf',
    '37',
    '38',
    '5',
    '',
    '',
    '26',
    '39',
    '33',
    '',
    '6',
    '2',
    '40',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '6',
    '4',
    '4',
    '',
    '',
    '40',
    '10',
    '',
    '',
    '24',
    '16',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    'Analyse der bestehende Magento Sites:\r\n- Benutzerführung, Auswahl der Regionen, Produktumfang, Währungen, Zahlungs- und Liefermethoden und dementsprechend die passende Struktur für Wordpress und Woocommerce planen/anlegen\r\n---\r\nAnalysis of existing Magento sites:\r\n- User guidance, selection of regions, product range, currencies, payment and delivery methods and accordingly plan/create the appropriate structure for Wordpress and Woocommerce.',
    'Netzwerk-Setup für 4 Regionen / Network-Setup for 4 Regions:\r\n- United States & Rest of World\r\n- Europe\r\n- Germany\r\n- Swiss\r\n',
    'Funktionen für Mehrsprachigkeit einrichten:\r\n- EN_US (United States & Rest of World)\r\n- EN_EN (Europe)\r\n- DE_DE (Germany)\r\n- DE_CH (Swiss)',
    '',
    '',
    'Setups für 3 Shops durchführen\r\n- Pet\r\n- Human (Teeth)\r\n- Skin',
    'Setups für 3 Shops durchführen\r\n- Pet\r\n- Human (Teeth)\r\n- Skin',
    'Produkte, Bilder und Texte einpflegen - arbeiteilig mit SRP. \r\n\r\nAufwand ???',
    '',
    'Seiten/Page-Templates  \r\n1 Introseite für Regionen Auswahl\r\n1 Introseite für Shop Auswahl (Teeth/Pet/Skin)\r\n3 Startseiten, je Shop ein gesondertes Seitenlayout (?)\r\n1 Standardinhaltsseite mit einfachen Gestalungselemeneten (Widgets)',
    '',
    'Aufwand ???',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    '',
    'yes',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    39,
    3,
    'Gesellschaft für Ganzheitliche Tiermedizin e.V.\r\n\r\nGeschäftsstelle\r\nMooswaldstraße 7\r\nD-79227 Schallstadt',
    '025-20',
    255,
    'Angebot',
    'Responsive Programmierung in Wordpress/Woocommerce auf Basis der Sitemap in <i>‘Anforderungen Webseite-Neugestaltung_V2.xls’</i> vom 10.9.2020',
    '2020-09-29 00:00:00',
    'offer-025-20.pdf',
    '3',
    '1',
    '2',
    '7',
    '16',
    '16',
    '16',
    '32',
    '30',
    '40',
    '41',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2',
    '16',
    '4',
    '4',
    '12',
    '10',
    '12',
    '4',
    '1',
    '4',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '0',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    'inkl. Werbeleiste mit Logos',
    '',
    'Search plugin - SearchWP',
    'Veranstaltungen\r\n- Fortbildungstermine für Tierärzte und Studenten\r\n- Filterfunktion nach Therapierichtung, Ort, Datum, ATF-Anerkennung\r\n- Buchungsformular, Versand per Email\r\n### Änderungen ### Aufwand bleibt gleich ####\r\n- Kalenderdarstellung entfällt\r\n- hinzu kommt ein zweiter Kalender für Nicht-Tierärzte ',
    'Mitgliederbereich als Dokument- und Bildarchiv und für den Austausch interner Dokumente\r\n- Loginseite\r\n- Admin legt alle Mitglieder als User mit einem Passwort an, User kann\r\nspäter das PW ändern\r\n- im internen Bereich können Textdateien, Bilder und PDF gespeichert\r\nwerden (nur Admin)\r\n#### Änderungen ### zusätzlicher Aufwand ###\r\nUnterschiedliche Zugriffsrechte\r\nVolle Zugriffsrechte hat nur die Geschäftsstelle (Admin)\r\nDie folgenden Benutzergruppen können nur anschauen, nicht ändern\r\n- Mitglieder (nur Dokumente für normale Mitglieder)\r\n- AK-Mitglieder (alle wie oben plus AK-Dokumente)\r\n- Vorstand (alle Dokumente)',
    'Tierarztsuche mit Filtermöglichkeiten\r\n- Gesamtliste, erstellt aus 1 Exceltabelle \r\n- wird vom User bei Bedarf per FTP aktualisiert\r\n- Filter für Fachgebiet, Name, Organisation, Postleitzahl, Ort\r\n- Darstellung der Details mit PopUps\r\n#### Änderungen ### zusätzlicher Aufwand ###\r\n- mehr Informationen über die Tierärzte als bisher',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    'yes',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    40,
    3,
    '                                                                                                                                                            ',
    '026-20',
    257,
    'Angebot',
    'Responsive Programmierung in Wordpress',
    '2020-08-25 00:00:00',
    'offer-026-20.pdf',
    '3',
    '1',
    '2',
    '7',
    '45',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '44',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2',
    '10',
    '4',
    '2',
    '9',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ' ',
    ' ',
    ' ',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    '1. Header Slider widget (Bildanimation im Kopfbereich)\r\n2. Content Slider widget (Bildanimation auf den Seiten)\r\n3. Full text widget (Volltextelement)\r\n4. 2cols text widget (2-spaltiges Textelement)\r\n5. 3cols text widget (3-spaltiges Textelement)\r\n6. Grafic animation widget (Grafik-Animation)\r\n7. Kontakt widget (Element für Kontaktseite)\r\n8. Home Kontakt widget (Kontaktbox auf der Startseite)\r\n9. News widget (Element für Aktuelles)',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '- Schulung geschätzter Aufwand ca. 1 Std (75 €)\r\n- Einpflegen der Inhalte, pro Seite 25 €\r\n- Zusätzliche Widgets, pro Widget 75 €',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    'yes',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    43,
    22,
    '                              BRIAN KOMMUNIKATION\r\nAgentur für Öffentlichkeitsarbeit\r\n \r\nTel. +49 761-29 656 630\r\nkontakt@brian-kommunikation.de\r\nwww.brian-kommunikation.de\r\n',
    '027-21',
    268,
    'Angebot',
    'Responsive Programmierung in Wordpress',
    '2020-02-15 00:00:00',
    'offer-027-21.pdf',
    '46',
    '3',
    '1',
    '45',
    '2',
    '39',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '14',
    '2',
    '8',
    '8',
    '4',
    '4',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    'Karte mit den Solar - und Windprojekten, von der man auf die Projekte kommt\r\nEinbindung von Videosequenzen bei den Projektvorstellungen',
    'Wiederverwendbare Widgets (Layout - Elemente)',
    'Smartphones 0- 375px\r\nTablets 768px -1024px\r\nDesktop > 1024px',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    'yes',
    '',
    'yes',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    44,
    3,
    '                                                                                                                                    ',
    '028-21',
    271,
    'Angebot',
    'Responsive Programmierung einer Website in Wordpress',
    '2021-03-16 00:00:00',
    'offer-028-21.pdf',
    '3',
    '1',
    '2',
    '45',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '47',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2',
    '8',
    '4',
    '8',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ' ',
    ' ',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    'Fünf Templates (Seitenvorlagen)\r\n1. Startseite\r\n2. Leistungen\r\n3. Ueber uns\r\n4. Kontakt \r\n5. Impressum / Datenschutz ',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '- Schulung: erste Std. kostenlos, jede weitere Std. nach Aufwand*\r\n- Einpflegen der Inhalte: Texte und Bilder aus der Präsentation kostenlos\r\n- weitere Inhalte nach Aufwand*\r\n- Datenschutz professionell: pauschal 150,00 EUR netto \r\n- Hosting, gerne erstellen wir ein Angebot\r\n\r\n* Stundensatz 75 € netto',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    'yes',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    47,
    23,
    '             Anette Weiss-Hakenjos\r\nHebammenpraxis\r\nHebelstr. 11\r\n79400 Kandern                                                                             ',
    '027-20',
    272,
    'Angebot',
    'Responsive Programmierung in Wordpress',
    '2021-04-01 00:00:00',
    'offer-027-20.pdf',
    '3',
    '1',
    '2',
    '16',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '48',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2',
    '6',
    '2',
    '8',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '1',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    'Installation und Konfiguration der Event Manager-Plugin (https://wp-events-plugin.com/)\r\nErstellung 3 Buchungsformularen:\r\n1. Anmeldung Geburtsvorbereitung Wochenende\r\n2. Anmeldung Rückbildung\r\n3. Anmeldung Babymassage',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    'Zusätzliche Kundenkosten -\r\nLizenz für Event Manager Plugin. (https://eventsmanagerpro.com/gopro/)',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    'yes',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    48,
    24,
    'Bernd Habé      \r\nFreiburger Straße 10\r\n79312 Emmendingen                               ',
    '029-21',
    280,
    'Angebot',
    'Responsive Programmierung in Wordpress',
    '2021-05-10 00:00:00',
    'offer-029-21.pdf',
    '3',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '3',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '1.Klonen der gesamten Website habe-offset.de und Übertragung auf die neue Domain versandgut.de\r\n2.Entfernung der unerwünschten Seiten außer Lettershop\r\n3. Erstellung der Neuen Seiten/ Impressum and Datenschutz\r\n4. Erstellung alle erforderlichen Einstellungen und Konfigurationen ',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    'yes',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    50,
    1,
    '      Juergen Sonneborn\r\nSonneborn Büro für Werbung\r\nErwinstr. 30\r\n79102 Freiburg          ',
    '031-21',
    258,
    'Angebot',
    'Wordpress Multi-Sites',
    '2021-06-15 00:00:00',
    'offer-031-21.pdf',
    '38',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '14',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '1.Installieren und Konfigurations-Plugin WPML 2.Vorbereiten des Hauptstandortelements für die Übersetzung (Fußtext, Kontaktformular, acf filds...)\r\n3.Duplizieren/übersetzen Sie alle Seiteninhalte.\r\n4.Konfiguration des Menüs\r\n5.Endprüfung ',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    'yes',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    51,
    20,
    '                              Roland Klein, medienkonzept.de\r\nHornusstraße 16\r\n79108 Freiburg\r\nDeutschland         ',
    '032-21',
    274,
    'Angebot',
    'Responsive Programmierung in Wordpress',
    '2021-06-21 00:00:00',
    'offer-032-21.pdf',
    '3',
    '1',
    '2',
    '45',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2',
    '8',
    '4',
    '8',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    'Templates:\r\n1. Content/Sidebar template\r\n2. Submenu/Content template\r\n3. Full page template (tags, search, impressum, datenshutz...)\r\n\r\nWidgets: (dinamic and reusable)\r\n1. Full text widget(1 col)\r\n2. Three cols widget(3 cols)\r\n3. Text image widget (2 cols)\r\n4. Green full text widget\r\n5. Full image widget\r\n6. Full video widget\r\n\r\nOther elements:\r\n1. Sidebar boxes\r\n2. Slider/Image box\r\n3. Multistep NL formular\r\n4. Tags\r\n5. Search',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    'yes',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    52,
    11,
    'K Procurement & Services GmbH\r\nEllen-Gottlieb-Str. 18\r\n79106 Freiburg',
    '033-21',
    267,
    'Angebot',
    'Responsive Programmierung in Wordpress',
    '2021-08-23 00:00:00',
    'offer-033-21.pdf',
    '3',
    '1',
    '2',
    '45',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2',
    '16',
    '8',
    '30',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    'Templates: \r\n\r\n1. Homepage-Vorlage (Startseite)\r\n2. Seitenvorlage 1 (Gute Gründe, Unsere Historie, Brands & Standorte) \r\n3. Seitenvorlage 2 (Wir über uns, GF-Talk) \r\n4. Seitenvorlage 3 (Stimmen) \r\n5. Seitenvorlage 4 (Unser Angebot) \r\n6. Vorlage Jobangebote (Dynamisches Postsystem / Dynamisches Formular) \r\n7. Vorlage Impressionen\r\n8. Vorlage Kontakt \r\n\r\nWiederverwendbare Widgets:\r\n1. Aktuelle Jobangebote \r\n2. Kontakt-Button mit verstecktem Formular\r\n3. Slider (Talking to the experts) \r\n4. Unser Bewerbungsprozess',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    'yes',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    53,
    26,
    'Verband für Trüffelanbau und Nutzung in Deutschland e. V.\r\nMooswaldstr 7\r\n79227 Schallstadt',
    '034-21',
    283,
    'Angebot',
    'Responsive Programmierung in Wordpress',
    '2021-09-29 00:00:00',
    'offer-034-21.pdf',
    '3',
    '1',
    '2',
    '48',
    '39',
    '32',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '47',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2',
    '6',
    '4',
    '4',
    '4',
    '4',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '3',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    'Erstellung eines Clones der Website badische-trueffel.de und Anpassungen an die neuen Erfordernisse',
    '',
    'Buchungsformular - Trüffeltagung ',
    '',
    'Für Wissesnwertes und Trüffel Fake News',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    'Datenschutzseite, Impressum und Cookiehinweise konfigurieren Erstellung des Impressums, einer an die Website angepassten Datenschutzseite und der Cookiehinweise nach neuesten rechtlichen Anforderungen.\r\nDieser Service bietet eine maximale Rechtssicherheit, jedoch ohne Anspruch auf rechtliche Verbindlichkeit',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    'yes',
    '',
    'yes',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    'yes',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    54,
    27,
    '                                          MAKOM Gesellschaft für Marketingkommunikation mbH,        \r\n Tullastraße 89, \r\n79108 Freiburg          ',
    '035-21',
    284,
    'Angebot',
    'Responsive Programmierung in Wordpress',
    '2021-09-28 00:00:00',
    'offer-035-21.pdf',
    '3',
    '1',
    '2',
    '45',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2',
    '20',
    '8',
    '18',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '1. Homepage-Vorlage x 1\r\n2. Internal pages template x ?\r\n3. Blog template\r\n4. Other templates x ?\r\n\r\nWiederverwendbare Widgets:',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    'yes',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    58,
    26,
    'Andreas Thumm\r\nFood-Fotografie\r\nFabrikstraße 15\r\n79102 Freiburg\r\n',
    '036-21',
    285,
    'Angebot',
    'Programmierung in Wordpress',
    '2021-10-06 00:00:00',
    'offer-036-21.pdf',
    '3',
    '1',
    '48',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2',
    '6',
    '16',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    'Events Manager Pro mit Bezahlfunktion (wie bei Ben Kindler)\r\n- Installation\r\n- Konfiguration der Bezahlfunktionen\r\n- Konfiguration der Emailbenachrichtigfungen\r\n- CSS Gestaltung\r\n- Tests\r\n\r\nZusätzliche externe Kosten für das Wordpress Plugin Events Manager Pro: 75,00 $  / Jahr',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    'yes',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    61,
    28,
    '            Unternehmensberatung BW GmbH\r\nSchlossgasse 9\r\nGermany-79540 Lörrach',
    '038-21',
    286,
    'Angebot',
    'Installation und Konfiguration einer Cloud zum Datenaustausch mit definierten Benutzerrechten für unterschiedliche Kunden',
    '2021-10-27 00:00:00',
    'offer-038-21.pdf',
    '48',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '47',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '12',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    'Liste der Möglichkeiten:\r\n- Die Kooperationspartner erhalten eine Leistungs-Liste in welcher die Dokumente aufgeführt werden, welche sie erstellen und dann in den Datenraum der Unternehmensberatung BW GmbH hochladen sollen. Die Dokumente werden in gängigen Formaten erstellt (z.B. Word, Excel, Power Point, PDF).\r\n- Jeder Kooperationspartner erhält einen von Unternehmensberatung BW GmbH erstellten eigenen Zugang (Benutzername und Passwort) zum Datenraum.  \r\n- Innerhalb des Datenraums gibt es einen mit Zugriffs-Rechten versehenen Order für den Kooperationspartner. Der Kooperationspartner darf nur auf seinen Ordner zugreifen können und Dokumente hoch-, herunterladen oder bearbeiten. Innerhalb des Ordners gibt es zwei weitere Ordner:\r\n•\tUngeprüfte Dokumente\r\n•\tGeprüfte Dokumente\r\n- Hat Unternehmensberatung BW GmbH die Ordner angelegt oder Dateien verschoben, kann mit einem KLICK auf einen Senden-Button (nicht automatisch) eine Benachrichtigungsmail an den Kooperationspartner verschickt werden.\r\n- Ebenso kann der Kooperationspartner eine Nachricht an Unternehmensberatung BW GmbH senden, wenn er etwas geändert hat.\r\n\r\nAufwandsschätzung:\r\n1. Überprüfung der Kompatibilität Ihres Servers für die ownCloud. Installation der neuesten Version von ownCloud 10.8  - 1 Std.\r\n\r\n2. Planung, Grundkonfiguration, Einstellungen und Programmierung der einzelnen Features - 8 Std.\r\n\r\n3. Funktionstests - 2 Std.\r\n\r\n4. Einweisung in den Umgang mit dem System (Mandanten hinzufügen, Gruppen erstellen, Ordner erstellen und zuordnen ...)  - 1 Std.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    'ownCloud verfügt über eine große Anzahl von Add-Ons, die dem System hinzugefügt werden können, um Ihnen Zeit bei der Arbeit mit Kunden zu sparen (https://owncloud.com/features/marketplace/). Gerne kalkulieren wir Ihnen den Aufwand für weitere Features.',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    62,
    1,
    '                              ',
    '7',
    188,
    'Angebot',
    'TEST PHP8',
    '2021-10-27 00:00:00',
    'offer-7.pdf',
    '3',
    '2',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '10',
    '8',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    'TEST',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    'yes',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    63,
    30,
    '                                          ',
    '040-22',
    295,
    'Angebot',
    'Responsive Programmierung in Wordpress',
    '2022-08-24 00:00:00',
    'offer-040-22.pdf',
    '3',
    '1',
    '2',
    '48',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '12',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2',
    '22',
    '5',
    '3',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '1',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    64,
    1,
    '                                                                                          ',
    '040-29',
    188,
    'Angebot',
    'TEST PDF CREATE',
    '2022-09-13 00:00:00',
    'offer-040-29.pdf',
    '3',
    '2',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '4',
    '20',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ' ',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    65,
    6,
    '                                    ',
    '001-23',
    299,
    'Angebot',
    'Responsive Programmierung in Wordpress',
    '2023-01-10 00:00:00',
    'offer-001-23.pdf',
    '3',
    '45',
    '2',
    '30',
    '16',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '43',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2',
    '8',
    '2',
    '1',
    '6',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '6',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    'Homepage/Kontakt - T(emplate)1\r\nLAR - T2\r\nArchive - T3\r\nMeta Pages - T4\r\nAbo Pages - T5\r\n',
    '',
    '',
    'Contact Form - multistep formularsx4 + Tests',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    'yes',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    66,
    11,
    '      Sanja Salonen\r\nWilliam-Tubmanweg 1 \r\n79271 Sankt Peter',
    '09-23-1',
    306,
    'Angebot',
    '',
    '2023-09-20 00:00:00',
    NULL,
    '3',
    '1',
    '43',
    '2',
    '39',
    '29',
    '30',
    '38',
    '40',
    '12',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2',
    '16',
    '6',
    '6',
    '6',
    '1',
    '1',
    '8',
    '2',
    '1',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    '',
    '',
    'pauschal',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    '',
    '',
    'yes',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `pms_offers_copy` (
    `offer_id`,
    `offer_client_id`,
    `offer_client_adresse`,
    `offer_number`,
    `offer_project_id`,
    `offer_type`,
    `offer_extra`,
    `offer_date`,
    `offer_pdf`,
    `offer_service_1`,
    `offer_service_2`,
    `offer_service_3`,
    `offer_service_4`,
    `offer_service_5`,
    `offer_service_6`,
    `offer_service_7`,
    `offer_service_8`,
    `offer_service_9`,
    `offer_service_10`,
    `offer_service_11`,
    `offer_service_12`,
    `offer_service_13`,
    `offer_service_14`,
    `offer_service_15`,
    `offer_service_16`,
    `offer_service_17`,
    `offer_service_18`,
    `offer_service_19`,
    `offer_service_20`,
    `offer_service_21`,
    `offer_service_22`,
    `offer_service_23`,
    `offer_service_24`,
    `offer_service_25`,
    `offer_service_26`,
    `offer_service_std_1`,
    `offer_service_std_2`,
    `offer_service_std_3`,
    `offer_service_std_4`,
    `offer_service_std_5`,
    `offer_service_std_6`,
    `offer_service_std_7`,
    `offer_service_std_8`,
    `offer_service_std_9`,
    `offer_service_std_10`,
    `offer_service_std_11`,
    `offer_service_std_12`,
    `offer_service_std_13`,
    `offer_service_std_14`,
    `offer_service_std_15`,
    `offer_service_std_16`,
    `offer_service_std_17`,
    `offer_service_std_18`,
    `offer_service_std_19`,
    `offer_service_std_20`,
    `offer_service_std_21`,
    `offer_service_std_22`,
    `offer_service_std_23`,
    `offer_service_std_24`,
    `offer_service_std_25`,
    `offer_service_std_26`,
    `offer_service_desc_1`,
    `offer_service_desc_2`,
    `offer_service_desc_3`,
    `offer_service_desc_4`,
    `offer_service_desc_5`,
    `offer_service_desc_6`,
    `offer_service_desc_7`,
    `offer_service_desc_8`,
    `offer_service_desc_9`,
    `offer_service_desc_10`,
    `offer_service_desc_11`,
    `offer_service_desc_12`,
    `offer_service_desc_13`,
    `offer_service_desc_14`,
    `offer_service_desc_15`,
    `offer_service_desc_16`,
    `offer_service_desc_17`,
    `offer_service_desc_18`,
    `offer_service_desc_19`,
    `offer_service_desc_20`,
    `offer_service_desc_21`,
    `offer_service_desc_22`,
    `offer_service_desc_23`,
    `offer_service_desc_24`,
    `offer_service_desc_25`,
    `offer_service_desc_26`,
    `offer_service_both_1`,
    `offer_service_both_2`,
    `offer_service_both_3`,
    `offer_service_both_4`,
    `offer_service_both_5`,
    `offer_service_both_6`,
    `offer_service_both_7`,
    `offer_service_both_8`,
    `offer_service_both_9`,
    `offer_service_both_10`,
    `offer_service_both_11`,
    `offer_service_both_12`,
    `offer_service_both_13`,
    `offer_service_both_14`,
    `offer_service_both_15`,
    `offer_service_both_16`,
    `offer_service_both_17`,
    `offer_service_both_18`,
    `offer_service_both_19`,
    `offer_service_both_20`,
    `offer_service_both_21`,
    `offer_service_both_22`,
    `offer_service_both_23`,
    `offer_service_both_24`,
    `offer_service_both_25`,
    `offer_service_both_26`
  )
VALUES
  (
    67,
    20,
    '                                                            ',
    '10-23-2',
    307,
    'Angebot',
    'SEE NEW PMS -> http://pms2022.rixner.info/offers.php',
    '2023-10-11 00:00:00',
    NULL,
    '3',
    '45',
    '2',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2',
    '16',
    '4',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    'Widgets: (dinamic and reusable)\r\n1. Header slider\r\n2. Full Text \r\n3. Text image - left/right - regular\r\n4. Text image - left/right - full\r\n5. Headline + Boxes\r\n6. Full image zoom effect\r\n7. Öffnungszeiten\r\n8. google map\r\n9. angebot\r\n10. bildgallerie\r\n11. carusell slider',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: pms_projects
# ------------------------------------------------------------

INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    2,
    2,
    'AK Psychosomatik',
    'http://psychosomatik-weiterbildung.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'other',
    'https://vivenio.psychosomatik-weiterbildung.de/',
    '',
    '2017-01-30 00:00:00',
    '2017-07-27 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    5,
    2,
    'Breisgauhaus',
    'http://www.breisgauhaus.de/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2016-04-27 00:00:00',
    '2016-04-27 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    6,
    2,
    'Gemeinschaftspraxis für Brustdiagnostik',
    'http://www.mammo-praxis-tue.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'domainfactory',
    'domainfactory\r\n',
    '',
    '2016-06-01 00:00:00',
    '2016-08-11 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    7,
    2,
    'Busatti Freiburg',
    'http://www.busatti.de/',
    'WOOCOMMERCE',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2017-10-16 00:00:00',
    '2017-10-16 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    8,
    2,
    'centax Steuerberatungsgesellschaft',
    'http://www.centax.de/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2016-04-27 00:00:00',
    '2016-04-27 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    14,
    2,
    'Dr. Matthias Strobel',
    'http://www.dr-strobel-kieferorthopaedie.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2017-04-04 00:00:00',
    '2017-04-04 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    16,
    2,
    'Dr. Nina Ritter-Rodriguez',
    'http://www.kfo-ritter.de/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2016-04-22 00:00:00',
    '2016-04-22 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    18,
    2,
    'Dr. Thomas Löhle',
    'http://www.kinderorthopaedie-tuebingen.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2017-04-22 00:00:00',
    '2017-04-22 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    19,
    2,
    'Dr. Renate Hübers',
    'http://www.kieferorthopaedie-offenburg.de/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2017-04-22 00:00:00',
    '2017-04-22 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    21,
    2,
    'Dres. Frank u. Richter',
    'http://www.frauenaerztinnen-herbolzheim.de/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2017-04-22 00:00:00',
    '2017-04-22 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    22,
    2,
    'Dres. Hübers u. Wehr',
    'http://www.hueberswehr.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2017-04-22 00:00:00',
    '2017-04-22 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    32,
    2,
    'Julia Gerlach',
    'http://www.psychoanalyse-freiburg.com/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    'he',
    'needs no SSL ',
    '',
    '2017-04-22 00:00:00',
    '2017-04-22 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    40,
    2,
    'Roland Glas',
    'http://rolandglas.ch/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2015-04-22 00:00:00',
    '2015-04-22 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    43,
    2,
    'Scherer Freiburg',
    'http://www.scherer-freiburg.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2016-03-16 00:00:00',
    '2016-03-16 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    44,
    2,
    'Scherer Südbaden',
    'http://www.scherer-suedbaden.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2016-03-16 00:00:00',
    '2016-03-16 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    45,
    4,
    'Stefanie S. Schaefer',
    'http://www.entwicklungsberaterin.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2016-04-22 00:00:00',
    '2016-04-22 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    46,
    2,
    'Lachmann-Stefan Lachman',
    'http://zahnarztpraxis-tuebingen.com/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2015-09-03 00:00:00',
    '2015-09-03 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    49,
    1,
    'KTD',
    'http://www.kirchliche-tagungshaeuser-deutschland.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    'Global user \r\ndbu12033461\r\nMaps2015+ad\r\n\r\nDB db12033461-wp\r\nUSER db12033461-wp  \r\nPASS Map2015+',
    '2016-04-22 00:00:00',
    '2016-04-22 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    50,
    1,
    'Aquatec-inform',
    'http://www.aquatec-inform.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'other',
    'HOSTED BY THOMAS VARADI\r\n',
    'mysql5.aquatec-inform.de\r\ndb118436_84\r\nkalEido20_15skopjE',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    51,
    1,
    'Bildungshaus Neckarelz',
    'http://www.bildungshaus-neckarelz.de/',
    'TYPO3',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2018-04-22 00:00:00',
    '2018-04-22 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    52,
    1,
    'Claudius Juga',
    'http://www.zahnarztpraxis-juga.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'strato',
    'missing\r\n1. clean up datenschutz',
    '',
    '2015-09-03 00:00:00',
    '2015-10-03 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    53,
    1,
    'Dorfhelferinnenwerk',
    'https://www.dorfhelferinnenwerk.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'strato',
    '',
    '',
    '2019-01-25 00:00:00',
    '2019-01-25 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    54,
    1,
    'Eckert+Kirchner Meisterteam',
    'https://www.meisterteam.net/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    'old\r\nhttps://old.meisterteam.net/\r\n\r\nold 2022 / folder old_2022\r\n\r\neditor\r\njuergen2017',
    '',
    '2022-10-02 00:00:00',
    '2022-12-12 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    55,
    1,
    'Familienferien',
    'http://www.familienferien-freiburg.de/',
    'TYPO3',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2018-01-25 00:00:00',
    '2018-01-25 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    56,
    1,
    'GRIESHABER Logistik',
    'http://www.grieshaberlog.com',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'other',
    '',
    '',
    '2016-04-04 00:00:00',
    '2016-12-01 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    57,
    1,
    '*XXX* Gulde, Mielke u. Partner',
    'http://www.gulde-mielke.de/',
    'WORDPRESS',
    '',
    NULL,
    'other',
    '',
    '',
    NULL,
    NULL,
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    58,
    1,
    'Thomas Rabenschlag',
    'http://www.rabenschlag.ch/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2016-04-22 00:00:00',
    '2016-04-22 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    59,
    1,
    'Schaufler & Schaufler',
    'https://www.stbschaufler.de/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2018-04-22 00:00:00',
    '2018-04-22 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    60,
    1,
    'St. Bernhard Rastatt',
    'http://www.st-bernhard-rastatt.de',
    'TYPO3',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    61,
    3,
    'ACAPPELLA ZONE',
    'http://www.acappellazone.com/',
    'TYPO3',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    62,
    26,
    'Andreas Thumm',
    'http://www.andreas-thumm.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2020-04-27 00:00:00',
    '2020-05-07 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    63,
    3,
    'Cardio Protect',
    'http://www.cardio-protect.org/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2019-04-27 00:00:00',
    '2019-04-27 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    64,
    3,
    'Dr. Drescher + Dr. Guderian',
    'http://www.drescher-guderian.de/',
    'TYPO3',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2018-01-31 00:00:00',
    '2018-02-23 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    65,
    3,
    'Klaus Polkowski',
    'http://www.klaus-polkowski.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2019-04-22 00:00:00',
    '2019-04-22 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    66,
    3,
    'Novoter',
    'http://www.novoter.com/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2019-04-27 00:00:00',
    '2019-04-27 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    67,
    3,
    'redONE',
    'http://www.redone-bueros.de/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2019-04-27 00:00:00',
    '2019-04-27 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    68,
    3,
    'srp. Werbeagentur',
    'http://srp.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    'Missing\r\n1.SSL\r\n\r\n\r\nTemp\r\nwp11169374.server-he.de',
    '',
    '2018-12-19 00:00:00',
    '2018-12-19 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    69,
    3,
    'Trueffelzone',
    'http://trueffelzone.de/trueffel/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2020-04-14 00:00:00',
    '2020-04-14 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    70,
    3,
    'Weingut Höfflin',
    'http://www.weingut-hoefflin.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2018-04-22 00:00:00',
    '2018-04-22 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    71,
    3,
    'ystral',
    'http://ystral.com/',
    'TYPO3',
    '',
    '0000-00-00 00:00:00',
    '',
    'Ansprechpartner:\r\n\r\n1. Dominik Seeger, \r\nMail: Dominik.Seeger@ystral.de\r\n\r\n2. Assitance Selina Racz,\r\nMail: Selina.Racz@ystral.de',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    72,
    4,
    'Bernd Moenikes',
    'http://www.bernd-moenikes.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'other',
    'https://my.variomedia.de',
    '',
    '2017-12-19 00:00:00',
    '2017-12-19 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    73,
    7,
    'cdp music',
    'http://www.cdp-music.com/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2016-02-04 00:00:00',
    '2016-07-06 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    74,
    6,
    'chilli stadtmagazin',
    'http://www.chilli-freiburg.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '\r\n\r\nhttp://old.chilli-freiburg.de',
    '',
    '2017-08-01 00:00:00',
    '2018-05-04 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    75,
    4,
    'Die Hautpraxis',
    'http://die-hautpraxis.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    NULL,
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    76,
    4,
    'Dinger Stone',
    'http://www.dinger-stone.com/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    77,
    13,
    'essen & kochen im blick',
    'http://essenundkochen-kirchzarten.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2018-12-19 00:00:00',
    '2018-12-19 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    79,
    4,
    'Horst Sobotta',
    'http://www.horst-sobotta.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2018-12-19 00:00:00',
    '2018-12-19 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    80,
    4,
    'Johannes Wittich',
    'https://www.johannes-wittich.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'other',
    '',
    '',
    '2019-09-18 00:00:00',
    '2019-09-18 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    81,
    4,
    '*XXX* Maler Ullrich GmbH',
    'http://www.maler-ullrich.de/',
    'PHPMYSQL',
    '',
    NULL,
    NULL,
    '',
    '',
    NULL,
    NULL,
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    82,
    4,
    'Mittler Heizung',
    'http://www.mittlerheizung-freiburg.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    'DB\r\nglobal PW\r\nGpw+3961\r\n\r\nwp160.webpack.hosteurope.de\r\ndb12164879-1\r\ndb12164879-1\r\nMdBpK(4a',
    '2018-12-19 00:00:00',
    '2018-12-19 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    83,
    13,
    'Pappella',
    'http://www.pappella.de/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2015-04-22 00:00:00',
    '2015-04-22 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    85,
    4,
    'PROMO 24',
    'http://www.promo24.info/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2018-04-22 00:00:00',
    '2018-04-22 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    86,
    4,
    'STICKER FACTORY',
    'http://sticker-factory.de/',
    'OPENCART',
    '',
    '0000-00-00 00:00:00',
    NULL,
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'archive',
    NULL
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    87,
    4,
    'Therapiepraxis Kohler',
    'http://www.therapiepraxis-kohler.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    'admin\r\nK5o3h+nA\r\neditor\r\nJ96PpFMkAgLKd#XrpF4y*DUx\r\n\r\n\r\nMISSING SSL',
    'MySQL database \r\nusername db11272714-1\r\npassword PraX+dB95\r\nhostname wp11272714.server-he.de\r\nDBname db11272714-1',
    '2015-12-10 00:00:00',
    '2015-12-10 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    88,
    13,
    'Ursula Rittler',
    'http://www.ursula-rittler.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'other',
    '',
    '',
    '2018-12-07 00:00:00',
    '2018-12-07 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    89,
    19,
    'TIS',
    'http://www.innovative-freight-wagon.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2017-02-17 00:00:00',
    '2017-02-17 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    90,
    2,
    'Cordula Rublack',
    'http://physio-therapie-freiburg.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2015-12-07 00:00:00',
    '2015-12-07 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    91,
    1,
    'Maler Hoog Gengenbach',
    'https://www.hoog-maler.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2017-11-10 00:00:00',
    '2018-04-16 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    92,
    1,
    'NBW - Nachbarschaftswerk',
    'http://www.nachbarschaftswerk.de',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'domainfactory',
    '',
    '',
    '2015-10-16 00:00:00',
    '2016-08-16 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    93,
    3,
    'Architekt Maier',
    'http://www.m2-architekturbuero.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    NULL,
    '',
    'Global password\r\nM5a3i+nA+2015/16\r\n\r\nDB\r\nDatabase:db12461788-m2arch\r\nUser: db12461788-m2\r\nPass: hcA4hd3g',
    '2015-11-27 00:00:00',
    '2015-12-11 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    95,
    1,
    'Sailing - Freisegler - ',
    'http://www.freisegler.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    NULL,
    'http://segeln.sommer-immental.de/',
    '',
    '2013-08-01 00:00:00',
    '2016-02-04 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    96,
    1,
    'Haus Maria Lindenberg',
    'http://www.haus-maria-lindenberg.de/',
    'TYPO3',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2015-10-01 00:00:00',
    '2015-12-10 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    97,
    5,
    'stark4med',
    'http://www.stark4med.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2015-12-11 00:00:00',
    '2016-01-15 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    98,
    3,
    'BioTrio',
    'http://www.biotrio.eu/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'strato',
    '',
    '',
    '2018-06-18 00:00:00',
    '2018-06-18 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    100,
    1,
    'Sonneborn',
    'http://www.sonneborn-bfw.de/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2019-04-22 00:00:00',
    '2019-04-22 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    101,
    1,
    'Anja Limbrunner',
    'http://www.anja-limbrunner.de',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2018-12-07 00:00:00',
    '2018-12-07 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    102,
    4,
    'Vlasotince.info',
    'http://www.vlasotince.info/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    'Sponsored site',
    '',
    '2016-04-22 00:00:00',
    '2016-04-22 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    103,
    4,
    'HSCF',
    'http://www.hscf.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    NULL,
    '',
    'vwp4342.webpack.hosteurope.de\r\nDatenbankname:\tdb1005884-hscfwp\r\nBenutzername:\tdb1005884-2scf\r\nPW: HscF+203',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'online',
    NULL
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    104,
    3,
    'Steinbuck',
    'https://steinbuck-stube.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    'WP made by Client himself',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    105,
    2,
    'FIM',
    'http://fim.mh-freiburg.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'other',
    '',
    '',
    '2017-02-09 00:00:00',
    '2017-07-13 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    106,
    3,
    'Weltec',
    'http://www.weltec-ips.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2016-02-08 00:00:00',
    '2017-02-06 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    107,
    8,
    'Nomy Art & Design',
    'http://nomy.cc',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2018-04-27 00:00:00',
    '2018-04-27 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    108,
    3,
    'ystral - Intro sites -DE/ENG',
    'http://powderwetting.ystral.com',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    '',
    'powderwetting.ystral.com\r\npulverbenetzung.ystral.com',
    '',
    '2016-02-10 00:00:00',
    '2016-02-17 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    109,
    13,
    'Sentio',
    'http://www.sentio-verlag.ch/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2016-02-17 00:00:00',
    '2016-02-17 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    110,
    13,
    'Zeit der Stille',
    'http://www.zeit-der-stille.ch/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2016-02-17 00:00:00',
    '2016-02-17 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    111,
    13,
    'Jacoby Gindler',
    'http://www.jacobygindler.ch/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2016-02-17 00:00:00',
    '2016-02-17 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    112,
    1,
    'Hoffman Regenerativ',
    'https://hoffmann-regenerativ.de',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'other',
    '',
    '',
    '2017-08-18 00:00:00',
    '2018-07-25 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    113,
    3,
    'Uwe Kowalzik',
    'http://uwekowalzik.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2016-04-27 00:00:00',
    '2016-04-27 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    114,
    2,
    '*OUT OF SERVICE* Rita Gering Ziegenhof',
    'http://www.ziegenhof-zastler.de',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    NULL,
    '',
    '',
    '0000-00-00 00:00:00',
    '2016-04-15 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    115,
    1,
    'shcwarzwald raum galerie',
    '',
    'WOOCOMMERCE',
    '',
    '0000-00-00 00:00:00',
    NULL,
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'archive',
    NULL
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    116,
    3,
    'AllFair',
    'http://www.allfair.eu',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'strato',
    '',
    '',
    '2016-04-18 00:00:00',
    '2016-09-08 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    118,
    1,
    'Die Apothekenberater',
    'http://www.die-apothekenberater.de',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    119,
    1,
    'Praxis Vauban',
    'http://www.praxisvauban.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2022-03-01 00:00:00',
    '2022-03-22 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    120,
    1,
    'Maler Häringer **',
    'http://www.maler-haeringer.de',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    'he',
    'Missing\r\n1.SSL\r\n',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    121,
    13,
    'Getränke Scheidel',
    'http://www.getraenke-scheidel.de',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2016-05-20 00:00:00',
    '2016-05-24 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    123,
    1,
    'Druckerei Herbstritt',
    'https://www.herbstritt-druck.de',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    'OLD Site \r\nhttp://wp11004499.server-he.de/',
    '',
    '2017-08-10 00:00:00',
    '2018-07-24 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    124,
    9,
    'Haus Blauberg',
    'http://www.haus-blauberg.de',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2018-04-22 00:00:00',
    '2018-04-22 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    125,
    3,
    'CoCo Endermann',
    'http://www.ivd-consulting.de',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2016-07-06 00:00:00',
    '0000-00-00 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    126,
    1,
    'Bauträger Pöpperl',
    'http://www.bautraeger-poepperl.de',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2016-06-14 00:00:00',
    '2017-02-21 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    127,
    13,
    'Theo Schipp',
    'http://www.theoschipp.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2016-06-01 00:00:00',
    '2016-07-07 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    128,
    2,
    'Rita Gering',
    'http://eselwandern-suedschwarzwald.de/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2016-04-15 00:00:00',
    '2016-04-20 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    129,
    13,
    'HBS',
    'http://wp1005884.server-he.de/00_HBS/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'other',
    '',
    '',
    '2016-07-19 00:00:00',
    '0000-00-00 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    130,
    1,
    'Domonell ',
    '',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    131,
    3,
    'Moser Bau',
    'https://www.moser-bau-treuhand.com/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2016-05-05 00:00:00',
    '2018-08-03 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    138,
    7,
    'ILT - International Language Technique',
    'http://www.ilt-lingua.com',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    'http://s523213579.online.de/\r\n\r\nTranslate content in 6 lang\r\n6h',
    '',
    '2016-10-10 00:00:00',
    '2017-06-27 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    139,
    13,
    'Kompetenzzentrum für Arbeits- und Sozialmedizinische Prävention',
    'http://arbeitssozialmed-praevention-frauen.de',
    'TYPO3',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2016-09-19 00:00:00',
    '2016-10-03 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    142,
    12,
    'Zahnarztpraxis Fürstenberg - Local arhive',
    '',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '1. Phase 26.9.- 5.10.\r\nInstallation WP, \r\nEinrichtung Bootstrap Grid,  \r\nDefinition der CSS Styles,\r\nAnlegen des Menüs und der Seitenstruktur,\r\nAnlegen & Gestalten der Startseite, Blogartikel, Übersicht Blogartikel\r\nAufwand: 1500 €\r\n\r\n2. Phase 7.-13.10.\r\nErweiterte Struktur für Blogartikel und Kategorien/Tags,\r\nNachladen der Blogartikel mit Ajax Load More plugin,\r\nRELATED ARTICLES anhand von Tags\r\nTeasers and boxes css hover Funktionalität\r\nFeinschliff\r\nAufwand: 500 €\r\n\r\n3. Phase ab 21.10\r\nErweiterung des Standard Seitentemplates\r\nErstellen der Templates für Job und Team\r\nGeschätzt: 750 €',
    '',
    '2016-09-29 00:00:00',
    '0000-00-00 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    143,
    1,
    'Hautarzt Strasser',
    'http://www.hautarzt-strasser.de',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2016-10-21 00:00:00',
    '2017-03-01 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    144,
    11,
    'Alenova',
    'http://www.alenova.de/',
    'WORDPRESS',
    'six months',
    '2023-03-10 00:00:00',
    '1und1',
    'Payment every six month 37,50 EUR',
    '',
    '2017-11-13 23:00:00',
    '2020-04-29 22:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    145,
    8,
    'Fresco',
    'http://www.frescoraumgestaltung.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2016-10-19 00:00:00',
    '2017-06-19 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    146,
    1,
    'Ralf Ganter',
    'http://www.ralf-ganter-maler-und-bildhauer.com/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    NULL,
    '',
    '',
    '2016-10-26 00:00:00',
    '2016-10-27 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    147,
    1,
    'Bina Holder - Intro Page',
    'http://www.osteopathie-holder.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2016-10-26 00:00:00',
    '2016-10-27 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    148,
    14,
    'Bäckerei Heitzmann',
    'http://www.baeckerei-heitzmann.de',
    'TYPO3',
    '',
    '0000-00-00 00:00:00',
    'other',
    '- 3 templaes (home + 2 subpages)\r\n- slider\r\n- galleries\r\n- videos (youtube, vimeo)\r\n- news (2 templates - category + detail view)\r\n- login page to external app\r\n\r\nworking time 48 - 54 hours \r\n\r\n.jweiland.net\r\n+ \r\n- store finder (geolokalisation like \r\nhttps://www.k-und-u.com/de/filialfinder.html\r\n\r\n+ may be\r\n??? produkt finder db based like http://www.baeckerei-heitzmann.de/no_cache/start/aus-backstube-konditorei/produktfinder.html\r\n',
    '',
    '2016-12-01 00:00:00',
    '2017-01-16 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    149,
    4,
    'C TWO',
    'http://wp1058960.server-he.de/index.php',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    'he',
    'Part I\r\n-Create msql db and tables \r\n-Create PHP  environment and project structure\r\n- Create PHP basic function and procedures\r\n- Basic layout for app(using bootstrap)\r\n- Programing User sistem with login , logout, user roles...\r\n- Programing sistem fot USB_Lieferanten - Prices \r\n\r\n24h',
    '',
    '2017-06-22 00:00:00',
    '2017-06-22 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    150,
    19,
    'Mindful-Ebid',
    'http://www.mindfulebid.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2016-12-02 00:00:00',
    '2016-12-12 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    151,
    3,
    'Badische Trüffel GbR',
    'https://www.badische-trueffel.de',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2019-08-26 00:00:00',
    '2019-09-09 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    152,
    1,
    'Silentioo',
    'http://www.silentio-wohnungsaufloesung.de',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    153,
    15,
    'Andrea Lienhart',
    'http://www.andrea-lienhart.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'strato',
    '',
    '',
    '2017-10-26 00:00:00',
    '2017-10-26 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    155,
    1,
    'Dr.Neureither',
    'https://www.kinderarztpraxis-fr-haslach.de',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2017-01-16 00:00:00',
    '2019-03-21 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    156,
    1,
    'Dold Speditions & Transport GmbH',
    'http://www.spedition-dold.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'other',
    '',
    '',
    '2017-02-14 00:00:00',
    '2017-02-17 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    157,
    1,
    'Laden Zwo',
    'http://www.ladenzwo.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    'www.laden-zwo.de',
    '',
    '2017-03-10 00:00:00',
    '2017-06-13 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    160,
    1,
    'Christuskindergarten',
    'http://www.christuskindergarten.de/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'online',
    NULL
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    161,
    1,
    'Elephant Beans',
    'https://elephantbeans.de/',
    'WOOCOMMERCE',
    '',
    '0000-00-00 00:00:00',
    'other',
    'https://xa0.serverdomain.org',
    '',
    '2017-01-01 00:00:00',
    '2021-12-28 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    162,
    2,
    'Dr. med. Ronen Sircar',
    'http://neurochirurg-freiburg.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'strato',
    '',
    '',
    '2018-05-02 00:00:00',
    '2018-07-18 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    163,
    2,
    'LETS BRIDGE',
    'http://www.lets-bridge-it.com/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2017-10-05 00:00:00',
    '2018-01-31 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    164,
    3,
    'Flower Power',
    'http://www.flowerpower-events.ch/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    'other',
    '',
    '',
    '2017-09-21 00:00:00',
    '0000-00-00 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    166,
    2,
    'Majer Designwohnung',
    'https://www.ferienapartment-tuebingen.de',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2017-12-19 00:00:00',
    '2019-01-18 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    167,
    3,
    'Hohlbaum - Christine Louise',
    'http://www.hohlbaum-pr.com',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2017-10-27 00:00:00',
    '2017-12-06 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    168,
    9,
    'Weingut Sexauer',
    'https://www.weingut-sexauer.de/',
    'WOOCOMMERCE',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2018-03-26 00:00:00',
    '2018-06-12 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    169,
    4,
    'Elke Schillinger - FEBAU',
    'http://www.architektin-schillinger.de',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'strato',
    'http://demo.architektin-schillinger.de',
    '',
    '2017-11-02 00:00:00',
    '2017-11-16 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    171,
    1,
    'Tai Chi - Sandra Sonneborn',
    'http://taichi-in-freiburg.de/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2017-11-03 00:00:00',
    '2017-11-03 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    172,
    2,
    'KIEFERORTHOPAEDE-NITSCHKE - Relaunch',
    'http://nitschke2.rixner.info/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2017-11-03 00:00:00',
    '2017-12-11 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    173,
    3,
    'Weltec Elsass',
    'http://www.weltec-elsass.de',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2017-11-13 00:00:00',
    '2017-12-08 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    174,
    2,
    'Scherer - Wasserschaden',
    'http://www.wasserschadensanierung-suedbaden.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2017-11-17 00:00:00',
    '2017-12-01 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    175,
    1,
    'Jazz&Rock',
    'http://www.jrs.org/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2017-12-02 00:00:00',
    '2018-04-11 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    177,
    13,
    'Designed4sale',
    'http://www.designed4sale.ch',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'other',
    'https://admin.tecspace.net/',
    '',
    '2018-01-25 00:00:00',
    '2018-04-25 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    178,
    1,
    'Schmuck',
    'http://www.von-hand-schmuck.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2018-04-27 00:00:00',
    '2018-04-27 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    179,
    1,
    's&w verlag',
    'https://www.sw-partner-verlag.de/',
    'WOOCOMMERCE',
    '',
    '0000-00-00 00:00:00',
    'strato',
    'wrong text datenschutz -> juergen',
    '',
    '2018-01-29 00:00:00',
    '2018-03-14 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    180,
    9,
    'Selz & Selz  Kieferorthopädie',
    'https://www.drselz.de/',
    'WORDPRESS',
    'quarterly',
    '2023-05-17 11:13:24',
    '1und1',
    '',
    '',
    '2018-02-27 00:00:00',
    '2018-07-20 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    181,
    2,
    'Dr. med. vet. Christian von Hänisch',
    'http://tierarzt-konstanz.de/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    'strato',
    'two questions open for Datenschutz; waiting on clients answer\r\n',
    '',
    '2016-04-01 00:00:00',
    '2016-04-01 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    182,
    9,
    'Nierenzentrum Emmendingen',
    'http://www.nierenzentrum-emmendingen-waldkirch.de',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2018-04-04 00:00:00',
    '2018-04-23 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    183,
    1,
    'Autohaus Rombach',
    'https://www.autohaus-rombach.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2018-05-01 00:00:00',
    '2019-10-01 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    185,
    6,
    'Kinderstadt Freiburg',
    'http://www.kinderstadt-freiburg.de',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    187,
    1,
    'Schreinerei Blüm',
    'http://schreinerei-bluem.de/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    188,
    1,
    ' Dipl.-Psych. Gisela Mehren',
    'http://psychotherapie-mehren.de/',
    'PHPMYSQL',
    '',
    NULL,
    'he',
    '',
    '',
    NULL,
    NULL,
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    189,
    1,
    'Dipl.-Psych. Anke Murphy',
    'http://psychotherapie-murphy.de/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    194,
    1,
    'Schwarzwaldraum',
    'http://www.schwarzwaldraum.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    195,
    2,
    'Petra Bischoff',
    'http://petrabischoff.de/index.php',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    'other',
    '',
    '',
    '2016-04-20 00:00:00',
    '2016-04-20 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    197,
    1,
    'Tagungshaeuser deutschland',
    'http://www.kirchliche-tagungshaeuser-deutschland.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'online',
    NULL
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    198,
    1,
    'Regioversicherung',
    'http://www.regioversicherung.de',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    199,
    16,
    'Stein Restaurator',
    'http://www.stein-restaurator.de',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    'KIS\r\nKD-NR: 105471\t\r\nUSER: stein-web\r\nPW: Ste-in+047',
    '',
    '2018-05-30 00:00:00',
    '2018-06-04 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    200,
    1,
    'Symposium - Change',
    'http://www.symposium-change.de/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    202,
    9,
    'Eberhard-Ossig-Stiftung',
    'https://www.eberhard-ossig-stiftung.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    'demo.eberhard-ossig-stiftung.de',
    '',
    '2019-03-18 00:00:00',
    '2019-05-02 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    203,
    2,
    'Gruene Flotte Carsharing',
    'http://www.gruene-flotte-carsharing.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    'Cancelled working',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    205,
    17,
    'Hofmann-Monnot',
    'http://www.hofmann-monnot.de',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    'strato',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    206,
    4,
    'Elisabeth',
    'http://www.elisabeth-schmidt-landenberger.de/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    'he',
    'Einzelunternehmer',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    207,
    1,
    'Impulse Academie',
    'http://impulse-akademie.de',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'online',
    NULL
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    208,
    3,
    'OE konzept',
    'https://www.oekonzept-freiburg.de',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2018-12-11 00:00:00',
    '2018-12-11 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    210,
    5,
    'GafGaf',
    'http://www.gafgaf.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'strato',
    '',
    '',
    '2018-10-03 00:00:00',
    '0000-00-00 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    212,
    4,
    'David Dykowski',
    'https://www.daviddykowski.com/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2018-12-06 00:00:00',
    '2018-12-19 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    214,
    1,
    'Thomas Dornfeld',
    'https://www.zahnarzt-dornfeld.ch/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2018-11-28 00:00:00',
    '2019-05-17 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    216,
    4,
    'AES Consult',
    'http://www.aes-consulting.de/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'online',
    NULL
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    218,
    3,
    'SWING2go',
    'https://www.swing2go.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2019-03-01 00:00:00',
    '2019-03-08 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    219,
    1,
    'Mentale Ressourcen - Local arhive',
    'https://www.mentale-ressourcen.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'other',
    '',
    '',
    '2019-03-04 00:00:00',
    '2023-03-27 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    220,
    3,
    '360° Cardio Freiburg',
    'https://www.360-cardio-freiburg.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2019-03-25 00:00:00',
    '2019-07-23 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    221,
    4,
    'Relounch PROMO 24',
    'https://woo.promo24.info',
    'WOOCOMMERCE',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2019-03-11 00:00:00',
    '2021-03-31 00:00:00',
    'working',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    222,
    1,
    'Hausverwaltung Frosch _OLD',
    'https://hausverwaltung-frosch.de',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'other',
    '',
    '',
    '2019-03-23 00:00:00',
    '2019-06-27 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    226,
    3,
    'SWING Software für Pflegedienste',
    'https://www.digitalisierung-in-der-pflege.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2019-06-14 00:00:00',
    '2019-06-19 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    227,
    20,
    'Hifi Müller GmbH',
    'https://www.hifimueller.de/',
    'WOOCOMMERCE',
    '',
    '0000-00-00 00:00:00',
    'other',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'online',
    NULL
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    228,
    3,
    'VFS Freiburg',
    'https://www.vfs-freiburg.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2019-09-25 00:00:00',
    '2019-12-20 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    229,
    3,
    'SWING qualitätsindikatoren-pflege',
    'https://www.qualitätsindikatoren-pflege.de',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2019-06-19 00:00:00',
    '2019-08-06 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    231,
    1,
    'Adelhaus',
    'https://www.adelhaus.bio',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2019-09-05 00:00:00',
    '2019-10-29 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    232,
    1,
    'Rebholz und Ginter',
    'http://regigmbh.de/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    233,
    21,
    'Venenzentrum Freiburg',
    'https://www.venenzentrum-freiburg.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2019-09-16 00:00:00',
    '2019-12-10 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    234,
    9,
    'Werner SchröderStiftung',
    'https://www.werner-schroeder-stiftung.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2020-01-06 00:00:00',
    '2020-01-14 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    235,
    3,
    'stazy',
    'http://stazy.de',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2020-05-06 00:00:00',
    '2020-05-06 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    236,
    1,
    'Dr. Stefan Eschbach ',
    'https://www.ste-gmbh.com/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '0000-00-00 00:00:00',
    '2019-10-22 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    237,
    1,
    'Dr. Amr Hussein',
    'https://www.amrhussein.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2019-07-12 00:00:00',
    '2020-02-11 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    238,
    1,
    'Impulse Academie Shop',
    'https://www.impulse-akademie-shop.de/',
    'WOOCOMMERCE',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2019-10-16 00:00:00',
    '2019-11-29 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    239,
    4,
    'Stillworks',
    'https://www.stilworks.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2019-10-15 00:00:00',
    '2019-10-29 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    240,
    4,
    'ASAP GMBH - Goran',
    'http://www.asap-td.de',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2020-01-31 00:00:00',
    '2021-05-26 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    241,
    3,
    'Gaberdann + Gaberdann',
    'https://www.gaberdann-gaberdann.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2020-05-26 00:00:00',
    '2020-05-26 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    242,
    1,
    'BMA Baden',
    'https://www.bma-baden.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'other',
    '',
    '',
    '2019-12-17 00:00:00',
    '2020-03-17 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    243,
    22,
    'Windpark Schnürbuck',
    'http://windpark-schnuerbuck.de',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2020-02-06 00:00:00',
    '2020-03-11 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    244,
    1,
    'Hirth',
    'https://www.stefanie-hirth.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2019-12-24 00:00:00',
    '2020-02-18 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    245,
    3,
    'ADENSIO',
    'https://www.adensio.com/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'online',
    NULL
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    246,
    4,
    'ArchiGENTUR',
    'http://archigentur.com/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    248,
    3,
    'Habé',
    'https://www.habe-offset.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2020-03-05 00:00:00',
    '2021-02-22 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    249,
    21,
    'Lehrer-Spezialisten',
    'https://www.lehrer-spezialisten.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2020-04-03 00:00:00',
    '2020-05-01 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    251,
    3,
    'Mira Teeth - Landing page',
    'www.anti-virus.mira-teeth.com',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2020-04-16 00:00:00',
    '2020-04-16 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    252,
    9,
    'Dr. med. Beate Friedrich  - Nierenzentrum',
    'https://www.biologische-medizin-fr.de',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2020-05-05 00:00:00',
    '2020-07-07 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    253,
    3,
    'Techmira Corp',
    'https://www.techmira.com',
    'WOOCOMMERCE',
    '',
    '0000-00-00 00:00:00',
    'other',
    '',
    '',
    '2020-05-28 00:00:00',
    '2020-07-17 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    254,
    4,
    '48° Veranstaltungen',
    'https://www.48grad.de/',
    'WOOCOMMERCE',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2020-06-04 00:00:00',
    '2020-08-13 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    255,
    3,
    'GGTM-Tiermedizin',
    'https://ggtm.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2021-02-01 00:00:00',
    '2021-07-15 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    257,
    3,
    'Unternehmensberatung BW',
    'https://www.unternehmensberatung-bw.de',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2020-11-12 00:00:00',
    '2020-12-03 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    258,
    1,
    'Interflex',
    'https://www.interflex-wfm.com',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2020-09-20 00:00:00',
    '2021-01-27 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    259,
    1,
    'JOERG EMBS (benergee.de)',
    'http://benergee.de/',
    'PHPMYSQL',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2020-10-16 00:00:00',
    '2020-10-16 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    260,
    4,
    'Freiburger hocker',
    'http://www.freiburger-hocker.de',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'strato',
    '',
    '',
    '2021-01-15 00:00:00',
    '0000-00-00 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    261,
    3,
    'Mira Pet - CleanyTeeth',
    'https://www.techmira.com/mira-pet/',
    'WOOCOMMERCE',
    '',
    '0000-00-00 00:00:00',
    'other',
    '',
    '',
    '2020-06-01 00:00:00',
    '2020-07-15 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    263,
    3,
    'Mira Teeth - CleanyTeeth',
    'https://www.techmira.com/mira-teeth/',
    'WOOCOMMERCE',
    '',
    '0000-00-00 00:00:00',
    'other',
    '',
    '',
    '2020-06-01 00:00:00',
    '2020-07-15 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    265,
    3,
    'Mira Skin',
    'https://mira-skin.com/us/',
    'WOOCOMMERCE',
    '',
    '0000-00-00 00:00:00',
    'other',
    '',
    '',
    '2020-06-01 00:00:00',
    '2020-07-15 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    266,
    3,
    'RECOVRR',
    'https://www.techmira.com/recovrr-us/',
    'WOOCOMMERCE',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2020-06-01 00:00:00',
    '2020-07-15 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    267,
    11,
    'Kollinger-Gruppe',
    'https://karriere.auto.ag/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2021-09-07 00:00:00',
    '0000-00-00 00:00:00',
    'waiting',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    268,
    22,
    'Ettenheimer Bürgerenergie',
    'http://www.ettenheimer-buergerenergie.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'strato',
    '',
    '',
    '2021-04-16 00:00:00',
    '2022-01-18 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    269,
    1,
    'Blood Care',
    'https://lindis-bloodcare.com/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '0000-00-00 00:00:00',
    '2021-03-16 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    270,
    4,
    'Swingchor Freiburg',
    'https://swingchor-freiburg.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    'CHANGES & HELP \r\nFriend Job for Monika Labrenz from SRP - povoljna cena',
    '',
    '2021-03-12 00:00:00',
    '0000-00-00 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    271,
    3,
    'Dr. med. Michaela Müller',
    'https://www.ortho-emmendingen.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2021-06-01 00:00:00',
    '2022-02-09 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    272,
    23,
    'Hebammenplus',
    'https://hebammen-kandern.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2021-04-12 00:00:00',
    '2021-07-27 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    273,
    4,
    'OCTOFlex',
    'https://www.octo-flex.com/de/',
    'WOOCOMMERCE',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2021-03-31 00:00:00',
    '2021-10-12 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    274,
    20,
    'Medienkonzept.de',
    'https://www.medienkonzept.de/',
    'WORDPRESS',
    'per month',
    '2023-06-01 11:13:40',
    'other',
    '',
    '',
    '2021-07-05 00:00:00',
    '2021-09-08 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    280,
    24,
    'VersandGut',
    'https://www.versandgut.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2021-05-10 00:00:00',
    '2022-01-10 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    282,
    26,
    'Communication Sidekick',
    'https://www.communication-sidekick.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2021-09-04 00:00:00',
    '2021-10-01 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    284,
    27,
    'Urlbauer',
    '',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'archive',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    285,
    26,
    'Handy fotografieren',
    'https://www.handyfotografieren.de',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'other',
    '',
    '',
    '2021-10-14 00:00:00',
    '2021-11-10 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    286,
    28,
    'Unternehmensberatung-BW Owncloud',
    'https://datenraum.unternehmensberatung-bw.de/',
    'OWNCLOUD',
    '',
    '0000-00-00 00:00:00',
    'other',
    '',
    '',
    '2021-10-27 00:00:00',
    '2021-11-10 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    287,
    4,
    'Tec Zone',
    'https://www.tec-zone.eu/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'strato',
    '',
    '',
    '2021-12-31 00:00:00',
    '2022-06-07 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    288,
    29,
    'Spielplan4',
    'https://www.spielplan4.com',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'other',
    '',
    '',
    '2021-12-31 00:00:00',
    '0000-00-00 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    289,
    29,
    'Expedition Arbeit',
    'https://www.expedition-arbeit.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'other',
    '',
    '',
    '2021-11-01 00:00:00',
    '2021-11-30 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    290,
    26,
    'Meine Eier',
    'https://www.meine-eier.com/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'other',
    '',
    '',
    '2022-04-13 00:00:00',
    '2022-04-26 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    291,
    4,
    'Octogone',
    'https://www.octogone.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '20h',
    '',
    '2022-04-19 00:00:00',
    '2022-06-21 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    292,
    1,
    'Hausverwaltung Frosch',
    'https://www.hausverwaltung-frosch.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '2022-06-03 00:00:00',
    '2022-12-09 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    297,
    3,
    'mindsetschool.de -NINA',
    '',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'online',
    NULL
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    298,
    26,
    'Klaus Polkowski',
    'https://www.klaus-polkowski.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'he',
    '',
    '',
    '2022-12-05 00:00:00',
    '2023-01-11 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    299,
    6,
    'Lust auf REGIO',
    'https://www.lust-auf-regio.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '2023-01-17 00:00:00',
    '2023-02-22 00:00:00',
    'online',
    'Ja'
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    301,
    1,
    'IMF e.K.',
    'https://imf-immobilienverwaltung.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'online',
    ''
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    302,
    13,
    'USB 24',
    'https://usb24.info/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'waiting',
    NULL
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    303,
    4,
    'FALLER & ABRAHAM',
    'https://www.faller-abraham.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    'strato',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'online',
    NULL
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    304,
    1,
    'Joseabilon',
    'https://www.joseabilon.de/',
    'WORDPRESS',
    '',
    '0000-00-00 00:00:00',
    '1und1',
    '',
    '',
    '0000-00-00 00:00:00',
    '2023-06-30 00:00:00',
    'online',
    NULL
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    306,
    11,
    'Sanja Salonen',
    '',
    '',
    '',
    '0000-00-00 00:00:00',
    '',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'future',
    NULL
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    317,
    NULL,
    'TEST PROJECT AUTH2023',
    '',
    'WORDPRESS',
    NULL,
    NULL,
    'he',
    '',
    '',
    '2023-10-04 00:00:00',
    '2023-10-24 00:00:00',
    'online',
    NULL
  );
INSERT INTO
  `pms_projects` (
    `project_id`,
    `project_client_id`,
    `project_name`,
    `project_url`,
    `project_platform`,
    `project_update`,
    `project_last_update`,
    `project_hosting`,
    `project_description`,
    `project_access_data`,
    `project_start_date`,
    `project_end_date`,
    `project_status`,
    `project_online`
  )
VALUES
  (
    318,
    20,
    'markgrafenapotheke',
    'https://markgrafenapotheke.com/',
    'WORDPRESS',
    NULL,
    NULL,
    '1und1',
    '',
    '',
    NULL,
    NULL,
    'online',
    NULL
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: pms_services
# ------------------------------------------------------------

INSERT INTO
  `pms_services` (
    `service_id`,
    `service_name`,
    `service_description`,
    `service_price_hour`,
    `service_price_total`,
    `service_type`
  )
VALUES
  (
    1,
    'Theme erstellen, Layout und Funktionen umsetzen',
    'Thememodule und Inhaltsbereiche (Grids) anlegen; Farben, Formate etc. definieren; Funktionen (javaScript/jQuery) erstellen unter Berücksichtigung von optimierten Ladezeiten und benutzerfreundlichem Redaktionsbereich',
    90,
    NULL,
    'basic'
  );
INSERT INTO
  `pms_services` (
    `service_id`,
    `service_name`,
    `service_description`,
    `service_price_hour`,
    `service_price_total`,
    `service_type`
  )
VALUES
  (
    2,
    'Responsive Layouts ',
    'Breakpoints für Smartphones und Tablets anlegen und CSS anpassen',
    90,
    NULL,
    'basic'
  );
INSERT INTO
  `pms_services` (
    `service_id`,
    `service_name`,
    `service_description`,
    `service_price_hour`,
    `service_price_total`,
    `service_type`
  )
VALUES
  (
    3,
    'Installation und Setup von Wordpress',
    'Installation und Konfiguration der aktuellen Wordpress Version und allgemein benötigter Plugins (z.B. für SEO, Sicherheit);\n Allgemeine Einrichtung des Backends und der Editor-Rechte; Anlegen der Seitenstruktur',
    90,
    NULL,
    'basic'
  );
INSERT INTO
  `pms_services` (
    `service_id`,
    `service_name`,
    `service_description`,
    `service_price_hour`,
    `service_price_total`,
    `service_type`
  )
VALUES
  (
    5,
    'Wordpress Multi-Language Installation',
    'Funktionen für Mehrsprachigkeit einrichten und alle Seiten für zusätzliche Sprachen duplizieren',
    90,
    NULL,
    'basic'
  );
INSERT INTO
  `pms_services` (
    `service_id`,
    `service_name`,
    `service_description`,
    `service_price_hour`,
    `service_price_total`,
    `service_type`
  )
VALUES
  (
    7,
    'Installation und Setup einer Volltextsuche',
    '',
    80,
    NULL,
    'basic'
  );
INSERT INTO
  `pms_services` (
    `service_id`,
    `service_name`,
    `service_description`,
    `service_price_hour`,
    `service_price_total`,
    `service_type`
  )
VALUES
  (
    12,
    'Schulung',
    'Vor-Ort Schulung Preis pro Stunde zzgl. anfallender Fahrtkosten',
    80,
    NULL,
    'basic'
  );
INSERT INTO
  `pms_services` (
    `service_id`,
    `service_name`,
    `service_description`,
    `service_price_hour`,
    `service_price_total`,
    `service_type`
  )
VALUES
  (
    13,
    'Weitere Seiten-Templates / Additional Templates',
    'nach Zeitaufwand / at hourly rates',
    80,
    NULL,
    'optional'
  );
INSERT INTO
  `pms_services` (
    `service_id`,
    `service_name`,
    `service_description`,
    `service_price_hour`,
    `service_price_total`,
    `service_type`
  )
VALUES
  (
    16,
    'Installation und Setup zusätzlicher Plugins',
    '',
    80,
    NULL,
    'basic'
  );
INSERT INTO
  `pms_services` (
    `service_id`,
    `service_name`,
    `service_description`,
    `service_price_hour`,
    `service_price_total`,
    `service_type`
  )
VALUES
  (
    26,
    'Installation und Setup von Woocommerce',
    'Einrichtung der Produktdarstellungen, Versandmethoden, Zahlungsmethoden, E-Mail-Benachrichtigungen\r\n---\r\nSetup of product displays, shipping methods, payment methods, e-mail notifications\r\n',
    80,
    NULL,
    'basic'
  );
INSERT INTO
  `pms_services` (
    `service_id`,
    `service_name`,
    `service_description`,
    `service_price_hour`,
    `service_price_total`,
    `service_type`
  )
VALUES
  (
    29,
    'SSL Zertifikat installieren',
    '',
    90,
    NULL,
    'basic'
  );
INSERT INTO
  `pms_services` (
    `service_id`,
    `service_name`,
    `service_description`,
    `service_price_hour`,
    `service_price_total`,
    `service_type`
  )
VALUES
  (
    30,
    'Datenschutzseite, Impressum und Cookiehinweise konfigurieren',
    'Erstellung des Impressums, einer an die Website angepassten Datenschutzseite und der Cookiehinweise nach neuesten rechtlichen Anforderungen.  \r\nDieser Service bietet eine maximale Rechtssicherheit, jedoch ohne Anspruch auf rechtliche Verbindlichkeit. ',
    NULL,
    290,
    'basic'
  );
INSERT INTO
  `pms_services` (
    `service_id`,
    `service_name`,
    `service_description`,
    `service_price_hour`,
    `service_price_total`,
    `service_type`
  )
VALUES
  (
    32,
    'Wordpress-Nachrichtensystems mit Kategorien',
    'Erstellung und Einrichtung eines Wordpress-Nachrichtensystems mit Kategorien und einer detaillierten Übersicht über jede Nachricht',
    80,
    NULL,
    'basic'
  );
INSERT INTO
  `pms_services` (
    `service_id`,
    `service_name`,
    `service_description`,
    `service_price_hour`,
    `service_price_total`,
    `service_type`
  )
VALUES
  (
    37,
    'Bestehendes Projekt analysieren und neue Struktur planen / Analyse existing project and plan new structure',
    '',
    45,
    NULL,
    'basic'
  );
INSERT INTO
  `pms_services` (
    `service_id`,
    `service_name`,
    `service_description`,
    `service_price_hour`,
    `service_price_total`,
    `service_type`
  )
VALUES
  (
    38,
    'Wordpress Multi-Sites Installation',
    '',
    90,
    NULL,
    'basic'
  );
INSERT INTO
  `pms_services` (
    `service_id`,
    `service_name`,
    `service_description`,
    `service_price_hour`,
    `service_price_total`,
    `service_type`
  )
VALUES
  (
    39,
    'Newsletter Plugin Setup',
    'Einrichtung des Anmeldeformulars, Double-Optin, Emails, Newsletter Editor, Versand, Statistik',
    90,
    NULL,
    'basic'
  );
INSERT INTO
  `pms_services` (
    `service_id`,
    `service_name`,
    `service_description`,
    `service_price_hour`,
    `service_price_total`,
    `service_type`
  )
VALUES
  (
    40,
    'Korrekturen, Tests, Fehlerbehebung',
    '',
    80,
    NULL,
    'basic'
  );
INSERT INTO
  `pms_services` (
    `service_id`,
    `service_name`,
    `service_description`,
    `service_price_hour`,
    `service_price_total`,
    `service_type`
  )
VALUES
  (
    41,
    'Betriebskosten/Update Service 15 €/ Monat',
    'WORDPRESS ist Open Source, d.h. kostenlos. Falls gewünscht  kontrollieren wir monatlich das Systems und führen alle notwendigen Updates durch. Zusätzlich erstellen wir eine Sicherung der Homepage, um im Falle eines Hacks gerüstet zu sein.',
    45,
    NULL,
    'basic'
  );
INSERT INTO
  `pms_services` (
    `service_id`,
    `service_name`,
    `service_description`,
    `service_price_hour`,
    `service_price_total`,
    `service_type`
  )
VALUES
  (
    43,
    'Einpflegen von Seiten und Inhalten',
    '',
    60,
    NULL,
    'basic'
  );
INSERT INTO
  `pms_services` (
    `service_id`,
    `service_name`,
    `service_description`,
    `service_price_hour`,
    `service_price_total`,
    `service_type`
  )
VALUES
  (
    45,
    'Erstellung von Wordpress-Templates',
    'Seitenvorlagen oder wiederverwendbare Layout-Elemente programmieren',
    90,
    NULL,
    'basic'
  );
INSERT INTO
  `pms_services` (
    `service_id`,
    `service_name`,
    `service_description`,
    `service_price_hour`,
    `service_price_total`,
    `service_type`
  )
VALUES
  (
    46,
    'Vollständige Konzeption der Website - Design',
    '',
    80,
    NULL,
    'basic'
  );
INSERT INTO
  `pms_services` (
    `service_id`,
    `service_name`,
    `service_description`,
    `service_price_hour`,
    `service_price_total`,
    `service_type`
  )
VALUES
  (47, 'Optionale Leistungen', '', 80, NULL, 'optional');
INSERT INTO
  `pms_services` (
    `service_id`,
    `service_name`,
    `service_description`,
    `service_price_hour`,
    `service_price_total`,
    `service_type`
  )
VALUES
  (
    48,
    'Installation und Einrichtung eines Blog',
    '',
    80,
    NULL,
    'basic'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: pms_settings
# ------------------------------------------------------------

INSERT INTO
  `pms_settings` (
    `id`,
    `clients_per_page`,
    `projects_per_page`,
    `tasks_per_page`,
    `users_per_page`,
    `services_per_page`,
    `offers_per_page`
  )
VALUES
  (1, 15, 10, 10, 10, 10, 10);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: pms_tasks
# ------------------------------------------------------------

INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    4,
    71,
    'Contact forms',
    'Change 2 bg iaages\r\nQuestions about bgimages text on top????',
    '',
    '2015-11-20 15:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    5,
    87,
    'Site Relaunch',
    'New wordpress site \r\nWaiting images',
    '',
    '2015-12-03 00:00:00',
    '',
    '',
    '2015-12-10 14:15:00',
    '2015-12-10 14:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    6,
    17,
    'Audio Book - download sistem',
    'Safari bug',
    '',
    '2015-12-03 00:00:00',
    '',
    '',
    '2016-02-25 09:36:00',
    '2016-02-25 16:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    7,
    40,
    'New Images + text change',
    '1. 4 new images\r\n2. change on Kontakt page text',
    '',
    '2015-11-20 15:00:00',
    '',
    '30min',
    '2015-12-03 11:30:00',
    '2015-12-03 12:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    10,
    3,
    'Sorting News problem ',
    'Original message:\r\nHier hab ich bei beiden unter Aktuelles was Neues eingestellt. Beim Autohaus Schmid wird mir die neue Meldung als erstes angezeigt, bei der Urlaubsflotte nicht. Kannst du bitte nach schauen, dass auch hier die neuste Meldung oben steh\r\n',
    '',
    '2015-12-07 00:00:00',
    '',
    '30min',
    '2015-12-07 15:20:00',
    '2015-12-07 15:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    11,
    40,
    'Mobile version',
    'Ist hier eigentlich auch die Smartphone-Version korrigiert worden?! Ich hab grad keines zur Hand zum gegenchecken … ',
    'Jule need to send us new image background for mobile version',
    '2015-12-07 00:00:00',
    '',
    '10min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    16,
    95,
    'Font color problem on whte background',
    '',
    '',
    '2015-12-08 00:00:00',
    '',
    '20min',
    '2015-12-08 09:45:00',
    '2015-12-08 10:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    17,
    52,
    'Menu Display Visable - 2nd level programing',
    'Update wp + change password',
    '',
    '2015-12-08 00:00:00',
    '',
    '1h',
    '2015-12-09 18:18:00',
    '2015-12-09 19:18:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    19,
    98,
    'Google Map + PDF download',
    '',
    ' - Set download link to #',
    '2015-12-08 00:00:00',
    '',
    '30min',
    '2015-12-09 09:25:00',
    '2015-12-09 09:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    21,
    74,
    'New Site for bauenundwohneninbaden.de',
    'Clone Index from business-im-breisgau.de',
    'Need extra info for fotter changes etc',
    '2015-12-09 00:00:00',
    '',
    '30 min',
    '2015-12-09 11:14:00',
    '2015-12-09 11:39:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    23,
    100,
    'Install OwnCloud + config',
    'Installing ownCloud on server\r\nConfiguration ',
    '',
    '2015-12-10 00:00:00',
    '',
    '',
    '2015-12-09 16:00:00',
    '2015-12-09 18:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    25,
    96,
    'Colorbox correction (Neck example)',
    '',
    '',
    '2015-12-10 00:00:00',
    '',
    '',
    '2015-12-10 12:20:00',
    '2015-12-10 12:44:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    29,
    96,
    'list of changes',
    '1. news detail page: error on Zurück link  \r\n2. sorting news -> chronologic asc\r\n3. weitere Häuser: add new filed for external link on image\r\n4. RTE: add posibility to add images',
    '',
    '2015-12-14 00:00:00',
    '',
    '30min',
    '2015-12-14 22:30:00',
    '2015-12-14 23:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    32,
    52,
    'Team Members Page',
    'Create and populate team members',
    '',
    '2015-12-16 00:00:00',
    '',
    '1h',
    '2015-12-16 11:08:00',
    '2015-12-16 12:25:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    33,
    61,
    'Newsletter >50 email + icon video',
    'Find solution for Directmail number of emails change\r\nFind solution for video icon od sp4',
    '',
    '2015-12-16 00:00:00',
    '',
    '',
    '2015-12-17 10:23:00',
    '2015-12-17 10:38:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    35,
    57,
    'Create & Upload PDFs cat',
    '',
    '',
    '2015-12-18 00:00:00',
    '',
    '30min',
    '2015-12-18 11:28:00',
    '2015-12-18 11:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    36,
    71,
    'Changes 18.12.2015',
    '-Home page news box changes\r\n-Max upload file size + \r\n-Fr news fix',
    '',
    '2015-12-18 00:00:00',
    '',
    '45min',
    '2015-12-18 15:30:00',
    '2015-12-18 16:08:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    37,
    96,
    'News images + new lightbox Goran 50e + 80e ystral map',
    '- new lightbox\r\n- news with image floated right\r\n- contact form zero field condition\r\n\r\n-newseditor - image upload action',
    '',
    '2015-12-18 00:00:00',
    '',
    '',
    '2016-02-11 12:00:00',
    '2016-02-11 14:39:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    39,
    103,
    'password does not work',
    'individual password does not work on Törnbörse\r\n\r\nhttp://www.hscf.de/yacht/toernboerse.php',
    '',
    '2016-01-07 00:00:00',
    '',
    '30 min',
    '2016-01-07 12:15:00',
    '2016-01-07 12:32:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    41,
    56,
    'Menu item change',
    'complete download and upload \r\nchabge menu item LogiMat 2016',
    '',
    '2016-01-09 00:00:00',
    '',
    '',
    '2016-01-08 20:00:00',
    '2016-01-08 20:17:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    42,
    47,
    'Changes',
    ' site download\r\n/person - text changes\r\n/koperationen - text changes + creating new logos image\r\n/redaktion - ckeditor problem (deleted from dot-plus)',
    '',
    '2016-01-11 00:00:00',
    '',
    '1h',
    '2016-01-11 11:15:00',
    '2016-01-11 12:11:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    43,
    97,
    'Installing Piwik',
    'install piwik on host\r\nconfig piwik on wp',
    '',
    '2016-01-15 00:00:00',
    '',
    '90 min',
    '2016-01-18 11:00:00',
    '2016-01-18 12:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    54,
    85,
    'IE8 Bug',
    '',
    '',
    '2016-01-26 00:00:00',
    '',
    '',
    '2016-01-26 18:46:00',
    '2016-01-26 18:46:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    55,
    12,
    'Facebook integration posts + fb icon',
    'Set for real waschpusch fb page',
    '',
    '2016-01-26 00:00:00',
    '',
    '4h',
    '2016-01-26 16:00:00',
    '2016-01-26 18:45:20',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    57,
    85,
    'SEO changes + Htaccess - SEO url links ### 9.2.2016 Wrong links ###',
    '###\r\n9.2.2016 Wrong links on search.php / On article name are the wrong (old) links\r\n####\r\nurl logic\r\nlanguage meta tag\r\nurl product logic php-> / \r\nalt image tags \r\nh1\r\nseo onpage settings\r\n',
    'Start 25.01.2016 ',
    '2016-01-27 00:00:00',
    '',
    '30min',
    '2016-01-27 18:00:00',
    '2016-01-27 19:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    61,
    66,
    'Implement google tracking code + db crash fix',
    '<script>\r\n  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\r\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n  })(window,document,\'script\',\'//www.google-analytics.com/analytics.js\',\'ga\');\r\n\r\n  ga(\'create\', \'UA-73535564-1\', \'auto\');\r\n  ga(\'send\', \'pageview\');\r\n\r\n</script>',
    '',
    '2016-02-09 00:00:00',
    '',
    '60 min',
    '2016-02-09 20:10:00',
    '2016-02-09 20:35:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    62,
    54,
    'Presse - Create image from PDFS',
    '',
    '',
    '2016-02-11 00:00:00',
    '',
    '30min',
    '2016-02-11 15:45:00',
    '2016-02-11 16:10:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    63,
    95,
    'Responsive bugs',
    '',
    '',
    '2016-02-12 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    64,
    66,
    'New kontakt form + data collection sistem',
    '+ small css changes',
    '',
    '2016-02-12 00:00:00',
    '',
    '60min',
    '2016-03-18 15:20:00',
    '2016-03-18 16:50:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    65,
    56,
    'QR Code  \tKatrin Ganser',
    'http://www.grieshaberlog.com/geschaeftsfeld-logistik/logistik-consulting.php',
    '',
    '2016-02-16 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    66,
    91,
    'Right Video Box - programing',
    '',
    '',
    '2016-02-16 00:00:00',
    '',
    '1h',
    '2016-02-16 10:42:00',
    '2016-02-16 11:05:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    67,
    95,
    'alt tags + filter (reprograming)',
    '',
    '',
    '2016-02-20 00:00:00',
    '',
    '6h',
    '2016-02-19 21:00:00',
    '2016-02-20 02:43:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    68,
    34,
    'iframes programing + English version',
    '',
    '',
    '2016-02-22 00:00:00',
    '',
    '16h',
    '2016-03-07 11:40:00',
    '2016-03-07 23:40:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    69,
    68,
    'arrow navi + responsive menu hover',
    '',
    '',
    '2016-02-22 00:00:00',
    '',
    '',
    '2016-02-25 15:00:00',
    '2016-02-25 16:54:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    70,
    108,
    'Last changes and bugs',
    '1 box links change\r\n2 text changes\r\n3 email formating',
    '',
    '2016-02-23 00:00:00',
    '',
    '30',
    '2016-02-23 15:00:00',
    '2016-02-23 15:40:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    72,
    95,
    'Developing and tests',
    '1. Clone for developing - http://segeln.sommer-immental.de/\r\n-1h\r\n\r\n2. Video on Home\r\n2.5h\r\n\r\n3. Video on Detail Pages as new Custom fields\r\n-1h\r\n\r\n\r\n4. Maps with Tracking Route\r\n-1h\r\n\r\n',
    '',
    '2016-02-23 00:00:00',
    'low',
    '',
    '2016-03-14 10:00:00',
    '2016-03-14 13:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    73,
    91,
    'BUG Bxslider',
    '',
    '',
    '2016-03-01 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    74,
    108,
    'FORMS eng/de + IE 11Bug',
    '',
    '',
    '2016-03-01 00:00:00',
    '',
    '8h',
    '2016-03-02 17:00:00',
    '2016-03-02 19:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    75,
    68,
    'kedo - analize',
    'No critical problems ',
    '',
    '2016-03-03 00:00:00',
    '',
    '30min',
    '2016-03-03 09:55:00',
    '2016-03-03 10:11:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    77,
    106,
    'Product template change + slider',
    '',
    '',
    '2016-03-04 00:00:00',
    '',
    '',
    '2016-03-04 17:00:00',
    '2016-03-04 20:35:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    78,
    112,
    'Text changes + new submenu item',
    '',
    '',
    '2016-03-08 00:00:00',
    '',
    '30min',
    '2016-03-08 16:30:00',
    '2016-03-08 17:04:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    79,
    104,
    'Changes order menus',
    '',
    '',
    '2016-03-09 00:00:00',
    '',
    '',
    '2016-03-09 11:27:00',
    '2016-03-09 11:42:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    80,
    85,
    'Our bug - Popup image bug',
    '',
    '',
    '2016-03-14 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    81,
    70,
    'Change slider images ',
    'image no 18-19 Need thumbs',
    '',
    '2016-03-17 00:00:00',
    '',
    '30min',
    '2016-03-17 12:20:00',
    '2016-03-17 12:41:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    83,
    14,
    'removing pdfs + create new ftp',
    '',
    '',
    '2016-04-05 00:00:00',
    '',
    '15min',
    '2016-04-05 17:00:00',
    '2016-04-05 17:18:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    84,
    78,
    'Job button +  Popup',
    '',
    '',
    '2016-04-11 00:00:00',
    '',
    '30min',
    '2016-04-11 10:00:00',
    '2016-04-11 10:21:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    86,
    85,
    'Print icon responsive bug fix',
    '',
    '',
    '2016-04-13 00:00:00',
    '',
    '30min',
    '2016-04-13 11:00:00',
    '2016-04-13 11:27:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    88,
    61,
    'Full Transfer on HE',
    '',
    '',
    '2016-04-13 00:00:00',
    '',
    '8H',
    '2016-05-19 10:00:00',
    '2016-05-19 18:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    89,
    65,
    'Homepage Icon',
    '',
    '',
    '2016-04-14 00:00:00',
    '',
    '30min',
    '2016-04-14 15:35:00',
    '2016-04-14 15:59:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    91,
    33,
    'Page showing  problem ',
    '',
    '',
    '2016-04-26 00:00:00',
    '',
    '30min',
    '2016-04-26 21:30:00',
    '2016-04-26 21:50:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    92,
    97,
    'youtube video options add ',
    '',
    '',
    '2016-05-04 00:00:00',
    '',
    '30min',
    '2016-05-04 12:00:00',
    '2016-05-04 12:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    93,
    23,
    'Change opening outs page Kontakt + wp + plugin update',
    '',
    '',
    '2016-05-04 00:00:00',
    '',
    '15min',
    '2016-05-04 17:30:00',
    '2016-05-04 17:47:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    94,
    66,
    'video fix + reprograming page for two videos',
    '',
    '',
    '2016-05-05 00:00:00',
    '',
    '1h',
    '2016-05-05 10:00:00',
    '2016-05-05 11:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    95,
    15,
    'Domain transfer + old db transfer',
    '',
    '',
    '2016-05-09 00:00:00',
    '',
    '30min',
    '2016-05-09 11:30:00',
    '2016-05-09 10:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    96,
    119,
    'Korekture',
    '',
    '',
    '2016-05-11 00:00:00',
    '',
    '90 min',
    '2016-05-11 11:15:00',
    '2016-05-11 12:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    97,
    98,
    'new contacts',
    'frank.timewell(at)biotrio.eu\r\nstefan.duncker(at)biotrio.eu\r\njutta.schweitzer(at)biotrio.eu\r\nstefan.schlageter(at)biotrio.eu\r\nsabine.ruehl(at)biotrio.eu \r\nmelanie.muecke(at)biotrio.eu',
    '',
    '2016-05-17 00:00:00',
    '',
    '2h',
    '2016-05-17 10:30:00',
    '2016-05-17 12:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    98,
    119,
    'Text Changes + new image',
    '',
    '',
    '2016-05-17 00:00:00',
    '',
    '30min',
    '2016-05-17 16:00:00',
    '2016-05-17 16:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    99,
    98,
    'Change Header Image+text changes, Über uns',
    '',
    '',
    '2016-05-20 00:00:00',
    '',
    '10min',
    '2016-05-20 11:48:00',
    '2016-05-20 11:58:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    102,
    123,
    'Referenzen programing + newlogo',
    '',
    '',
    '2016-05-27 00:00:00',
    '',
    '4h',
    '2016-05-27 14:30:00',
    '2016-05-27 17:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    103,
    94,
    'MEGA MENU Programing',
    '',
    '',
    '2016-05-27 00:00:00',
    '',
    '4h',
    '2016-05-30 11:00:00',
    '2016-05-30 15:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    104,
    124,
    'Home image change + Das House Page',
    '',
    '',
    '2016-05-28 00:00:00',
    '',
    '1h',
    '2016-05-30 09:00:00',
    '2016-05-30 10:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    105,
    61,
    'Directmail - sending limit bug',
    'Hello,\r\n \r\nwe have started a newsletter send out with 1625 recipients. Right now the job is running for 3 hours. In this period only 150 mails were sent-\r\nThis means, that the job will be done in 30 hours.\r\n \r\nWhere can we adjust the settings so that more mails per hour will be sent.\r\n \r\nThank you and best regards\r\n ',
    '',
    '2016-05-31 00:00:00',
    '',
    '30min',
    '2016-05-31 15:00:00',
    '2016-05-31 15:25:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    106,
    107,
    'Changes 02.06.2016 + edit image',
    'Hallo Norbert\r\n\r\nWir müssen ein paar Bilder ersetzen auf der nomy.cc Seite.\r\n\r\nDie Wandteppiche werden nun standardmäßig OHNE die Kordel am Rand gefertigt. Daher müssen die Bilder teilweise aktualisiert werden.\r\n\r\n. Auf der Seite HOME im slider sollen die Motive 1,4,5 und 6 ersetzt werden.\r\n\r\n. Auf der Seite KOLLEKTION sollen alle Teppiche, die aktuell noch MIT Kordel abgebildet sind, nun OHNE die Kordel aktualisiert werden. Die beiden, die aktuell bereits OHNE Kordel drin sind, bitte so beibehalten.\r\nAuch die Miniaturen unter dem slider sollen aktualisiert werden, könnt ihr selbst die neuen Bilder in die entsprechende Größe bringen?\r\n\r\n. Weiterhin soll das pdf bei DOWNLOADS durch das aktualisierte pdf (auch im Anhang) ersetzt werden.\r\n\r\n\r\nIm Anhang sende ich Dir die neuen Bilddaten als zip, die Ordner entsprechen den Kapitels der Seite.\r\n\r\nFür Rückfragen melde dich gerne.\r\n\r\n\r\nHerzliche Grüße',
    '- editing wrong image format\r\n- solving upload error problem (1und1 set php ini files and change php version)\r\n-new images 06.06.2016',
    '2016-06-02 00:00:00',
    '',
    '1h',
    '2016-06-02 14:00:00',
    '2016-06-02 16:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    107,
    87,
    'New layout with right Images',
    '',
    '',
    '2016-06-08 00:00:00',
    '',
    '4h',
    '2016-06-08 15:00:00',
    '2016-06-08 16:06:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    108,
    94,
    'WPML Install + Ubermenu settings',
    '',
    '',
    '2016-06-10 00:00:00',
    '',
    '1h',
    '2016-06-10 11:00:00',
    '2016-06-10 12:24:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    110,
    123,
    'Layout change',
    '1.Set style options (color) - CKEDITOR\r\n2. change navigation + redaktion',
    '',
    '2016-06-14 00:00:00',
    '',
    '30min',
    '2016-06-14 12:00:00',
    '2016-06-14 13:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    111,
    116,
    'Changes 21.06.2016.',
    '1. new template for ueber uns + all responsive settings\r\n2. font size replace\r\n3. 2 new header images\r\n4. logos settings -referenzen\r\n### - not invoiced - ### \r\n#### work included in pack price ####',
    '',
    '2016-06-21 00:00:00',
    '',
    '1h',
    '2016-06-21 12:20:00',
    '2016-06-21 13:20:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    113,
    85,
    'French version ',
    'franch characters',
    '',
    '2016-06-21 00:00:00',
    '',
    '6h',
    '2016-06-21 20:00:00',
    '2016-06-21 22:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    114,
    34,
    'Kontakt form  - bestellung',
    '',
    '',
    '2016-06-27 00:00:00',
    '',
    '1.5h',
    '2016-06-27 13:00:00',
    '2016-06-27 14:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    115,
    105,
    'Add 2 pdfs in page Monografie',
    'Rezensionen, Monografien\r\n\r\n1. unter dem Buch „Musikergesundheit in der Praxis“\r\nVoxHumana 6/2016 [mehr] > VoxHumana_REZENSION_Musikergesundheit_6-2016.pdf\r\n\r\n2. unter dem Buch „Lampenfieber“ \r\nPiano News 1/2016  [mehr] > Piano_News_REZENSION_Buch_Lampefieber_1-2016.pdf',
    '',
    '2016-06-29 00:00:00',
    '',
    '15min',
    '2016-06-29 11:40:00',
    '2016-06-29 11:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    116,
    53,
    'Stellenangebot aktualisieren',
    '',
    '',
    '2016-07-06 00:00:00',
    '',
    '15 min',
    '2016-07-06 11:15:00',
    '2016-07-06 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    118,
    65,
    'Fixing redirect errors + updates',
    '',
    '',
    '2016-07-07 00:00:00',
    '',
    '30mn',
    '2016-07-07 16:30:00',
    '2016-07-07 17:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    119,
    128,
    'Add two sentences',
    'Email from Jule 08.07.2016',
    '',
    '2016-07-08 00:00:00',
    '',
    '15min',
    '2016-07-08 14:45:00',
    '2016-07-08 15:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    120,
    104,
    'Changes 12.06.2016.',
    '-2 new menus\r\n- finding and remove lang menu ',
    '',
    '2016-07-12 00:00:00',
    '',
    '15min',
    '2016-07-12 09:20:00',
    '2016-07-12 09:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    121,
    2,
    'Remove FIA logo - template changes',
    '',
    '',
    '2016-07-21 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    123,
    87,
    'Content image css +  google map add',
    '',
    '',
    '2016-07-25 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    124,
    61,
    'Changing table css for icons',
    'Reprograming template',
    '',
    '2016-07-25 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    127,
    17,
    'new audio file',
    '',
    '',
    '2016-07-25 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    129,
    55,
    'Add new video for Haus Insel Reichenau',
    '',
    '',
    '2016-07-25 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    130,
    119,
    'Text Changes - template changes',
    '',
    '',
    '2016-07-27 00:00:00',
    '',
    '30min',
    '2016-07-27 17:09:00',
    '2016-07-27 17:49:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    131,
    2,
    'Change template Delete FIA data from content',
    '',
    '',
    '2016-07-28 00:00:00',
    '',
    '30min',
    '2016-07-28 17:08:00',
    '2016-07-28 17:38:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    132,
    74,
    'ChangING Tag Cloud plugin ',
    '',
    '',
    '2016-07-29 00:00:00',
    '',
    '30min',
    '2016-07-29 11:50:00',
    '2016-07-29 12:20:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    134,
    58,
    'Zitat smaller font size - Page Links',
    '',
    '',
    '2016-08-05 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    136,
    61,
    'Editing and changing icons ',
    '',
    '',
    '2016-08-08 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    137,
    3,
    'Repair site after SQL attack + urlaubsflotte.de',
    'Revision activate\r\nupdate plugins \r\nupdate wp\r\ninstall plugn and delete all revisions\r\nchanging passwords\r\nmappress new version settings (api key)\r\nmanual check',
    '',
    '2016-08-10 00:00:00',
    '',
    '2h',
    '2016-08-10 14:00:00',
    '2016-08-10 16:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    139,
    61,
    'YouTube Video Bug/Solution research',
    '',
    '',
    '2016-08-15 00:00:00',
    '',
    '60 min',
    '2016-08-15 15:29:00',
    '2016-08-15 16:29:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    141,
    105,
    'Adding two reviews on page Monografien',
    '',
    '',
    '2016-08-16 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    142,
    74,
    'INSTALL NEW WP + THEME',
    's639186015.online.de',
    '',
    '2016-08-16 00:00:00',
    '',
    '1h',
    '2016-08-17 00:26:00',
    '2016-08-17 01:26:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    144,
    19,
    'Changes ',
    '-logos\r\n-team page complet\r\n- change names and titles\r\n\r\nWorking with template',
    '',
    '2016-08-17 00:00:00',
    '',
    '1h',
    '2016-08-17 17:08:00',
    '2016-08-17 18:38:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    146,
    19,
    'logo change',
    'editing background image for logo  and image map http://kfo-ortenau.de/',
    '',
    '2016-08-18 00:00:00',
    '',
    '15min',
    '2016-08-18 10:55:00',
    '2016-08-18 11:10:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    148,
    61,
    'TaBs link + youtube video stop logic',
    '1. Tabs link\r\n2. youtube video stop logic',
    '',
    '2016-08-22 00:00:00',
    '',
    '2h',
    '2016-09-16 09:30:00',
    '2016-09-16 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    149,
    104,
    'Changes order menus',
    '',
    '',
    '2016-08-22 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    150,
    56,
    'Contact change',
    ' - Rearange contact base on email instruction of Zimmermann Arnold\r\n - Add one new contact + create QR code',
    '',
    '2016-08-30 00:00:00',
    '',
    '30min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    151,
    2,
    'Remove 2 blocks from right sidebar',
    '',
    '',
    '2016-09-02 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    152,
    35,
    'Redirecting urls',
    'DE - COM',
    '',
    '2016-09-02 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    154,
    17,
    'Popup Fix',
    'Fixing top bug\r\nChange bg color overlay',
    '',
    '2016-09-13 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    156,
    61,
    'Increase emails quotas on KIS',
    '',
    '',
    '2016-09-14 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    157,
    73,
    'Changes - Home page mobile layout + youtube popup',
    '1. change layout for mobile on home page\r\n2. inspect and change script for youtube videos popup on mobile',
    '',
    '2016-09-14 00:00:00',
    '',
    '30min',
    '2016-09-14 11:20:00',
    '2016-09-14 11:50:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    158,
    19,
    'Add Andrea Humpert team member',
    '',
    '',
    '2016-09-20 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    159,
    181,
    'Editing & Chnanging Images',
    '',
    '',
    '2016-09-20 00:00:00',
    '',
    '30min',
    '2016-09-20 14:00:00',
    '2016-09-20 14:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    160,
    105,
    'Changes + seminar page',
    '',
    '',
    '2016-09-21 00:00:00',
    '',
    '1h',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    161,
    61,
    'Newsletter final config and testing',
    '',
    '',
    '2016-09-30 00:00:00',
    '',
    '4h',
    '2016-09-30 06:55:00',
    '2016-09-30 10:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    162,
    61,
    'Top bar position change',
    '',
    '',
    '2016-09-30 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    163,
    104,
    '2 news + new menus+stellen',
    '',
    '',
    '2016-10-04 00:00:00',
    '',
    '30min',
    '2016-10-04 10:20:00',
    '2016-10-04 11:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    167,
    74,
    '3 contact forms preprograming',
    '',
    '',
    '2016-10-13 00:00:00',
    '',
    '120min',
    '2016-10-13 10:00:00',
    '2016-10-13 12:54:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    168,
    17,
    'Template change ',
    '',
    '',
    '2016-10-13 00:00:00',
    '',
    '1h',
    '2016-10-13 13:00:00',
    '2016-10-13 13:24:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    170,
    123,
    'Template changes + text change',
    'SHOP/SERVICE menu item',
    '',
    '2016-10-21 00:00:00',
    '',
    '30min',
    '2016-10-21 10:25:00',
    '2016-10-21 10:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    171,
    142,
    'Extra Task 1',
    '1. Templates index,page, single, category, tags\r\n2. Special programing za Ajax Load More plugin , loading posts wth ajax\r\n3. programing Realeted post base on tags\r\n4. Teasers and boxes css hover functionality\r\n\r\n5. right page related change logic',
    '',
    '2016-10-21 00:00:00',
    '',
    '8h',
    '2016-10-21 08:32:00',
    '2016-10-21 17:32:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    172,
    142,
    'Extra Task 2',
    'New default page template \r\nJobs \r\nTeam',
    '',
    '2016-10-21 00:00:00',
    '',
    '8h',
    '2016-10-22 08:33:00',
    '2016-10-22 15:33:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    173,
    116,
    'English version',
    '',
    '',
    '2016-10-21 00:00:00',
    '',
    '8h',
    '2016-10-25 08:00:00',
    '2016-10-25 14:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    174,
    103,
    'Install new wp + new theme',
    '',
    '',
    '2016-10-25 00:00:00',
    '',
    '4h',
    '2016-10-25 11:43:00',
    '2016-10-25 12:43:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    176,
    61,
    'Testing and fixing bugs NL',
    '',
    '',
    '2016-11-07 00:00:00',
    '',
    '4h',
    '2016-11-07 15:11:00',
    '2016-11-07 17:11:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    177,
    74,
    'Extra radio option -Abo formular+2email templates',
    '',
    '',
    '2016-11-09 00:00:00',
    '',
    '30min',
    '2016-11-09 11:16:00',
    '2016-11-09 11:46:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    179,
    24,
    'fb icon in fotter + responsive layout + update WP',
    '',
    '',
    '2016-11-09 00:00:00',
    '',
    '30min',
    '2016-11-09 10:36:00',
    '2016-11-09 11:06:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    180,
    56,
    'New system for right box Aktuelles/Events',
    'Probme with ftp perrmission ',
    '',
    '2016-11-09 00:00:00',
    '',
    '3h',
    '2016-11-09 15:00:00',
    '2016-11-09 18:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    181,
    98,
    'Kontakt - 2 Bilder ausgetauscht',
    '',
    '',
    '2016-11-10 00:00:00',
    '',
    '15 min',
    '2016-11-10 15:50:00',
    '2016-11-10 16:05:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    183,
    142,
    'Extra reprograming Mail from 14.11.2016',
    '',
    '',
    '2016-11-14 00:00:00',
    '',
    '1h',
    '2016-11-14 15:00:00',
    '2016-11-14 15:42:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    184,
    55,
    'PHP 5.6 bug fix',
    '',
    '',
    '2016-11-15 00:00:00',
    '',
    '30min',
    '2016-11-15 10:40:00',
    '2016-11-15 10:52:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    187,
    104,
    'Changes order menus',
    '',
    '',
    '2016-11-16 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    189,
    17,
    'SEMINARE:  + \'Preise verstehen sich zuzüglich gesetzlicher Umsatzsteuer\'',
    'Template Änderung (NR)',
    '',
    '2016-11-17 00:00:00',
    '',
    '15 min',
    '2016-11-17 15:21:00',
    '2016-11-17 15:36:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    190,
    118,
    'Contact form',
    '',
    '',
    '2016-11-18 00:00:00',
    '',
    '1h',
    '2016-12-01 15:57:00',
    '2016-12-01 16:57:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    191,
    33,
    'delete old webfolder and redirect waskor.de',
    '- finished -',
    '',
    '2016-11-21 00:00:00',
    '',
    '',
    '2016-11-21 16:59:00',
    '2016-11-21 17:14:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    192,
    17,
    'price change + link to seminar ',
    '',
    '',
    '2016-11-22 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    193,
    56,
    'change pdg Kariere + create pdf ',
    '',
    '',
    '2016-11-22 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    195,
    70,
    'Re-Programing moduls',
    '1. Link on slider - external link option\r\n2. right box - repeater\r\n3. update wp and plugins',
    '',
    '2016-11-24 00:00:00',
    '',
    '90min',
    '2016-11-24 11:00:00',
    '2016-11-24 12:10:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    197,
    56,
    'Ansprechpartner Images',
    '',
    '',
    '2016-11-29 00:00:00',
    '',
    '',
    '2016-11-29 12:20:00',
    '2016-11-29 12:54:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    198,
    56,
    'Add facebook + responsive reprograming (<380px)',
    '',
    '',
    '2016-12-05 00:00:00',
    '',
    '1h',
    '2016-12-05 18:16:00',
    '2016-12-05 19:16:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    199,
    56,
    'Programing Kontakt page',
    '',
    '',
    '2016-12-09 00:00:00',
    '',
    '90min',
    '2016-12-09 08:24:00',
    '2016-12-09 09:54:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    200,
    78,
    'News popup',
    '',
    '',
    '2016-12-13 00:00:00',
    '',
    '',
    '2016-12-13 15:18:00',
    '2016-12-13 16:18:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    201,
    56,
    'Webserver Überlastung - Fehlersuche ',
    'Fehlersuche, Header Fehler behoben, Erklärung verfasst \r\n\r\nsiehe Mail an H. Hänsch vpm 13.12.',
    '',
    '2016-12-13 00:00:00',
    '',
    '',
    '2016-12-13 14:30:00',
    '2016-12-13 15:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    202,
    23,
    'Add new member + all WP updates',
    '',
    '',
    '2016-12-15 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    203,
    52,
    'WP Updates + home/aktuelles logic',
    '',
    '',
    '2016-12-16 00:00:00',
    '',
    '30min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    204,
    95,
    'Error fixing + filter reprograming',
    '1. fixing plugin update error (php version change)\r\n2. fixing first image slider error\r\n3. update all  \r\n\r\n4. Filter Change Freisegler 2017',
    '',
    '2016-12-19 00:00:00',
    '',
    '30min',
    '2016-12-19 10:00:00',
    '2016-12-19 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    205,
    50,
    'Wordpress + plugin updates +wpml depricated ',
    '',
    '',
    '2016-12-20 00:00:00',
    '',
    '30min',
    '2016-12-20 10:00:00',
    '2016-12-20 10:35:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    206,
    105,
    'Add new page herausgeberschaften',
    '',
    '',
    '2016-12-21 00:00:00',
    '',
    '30min',
    '2016-12-21 16:24:00',
    '2016-12-21 16:54:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    208,
    56,
    'making biger pdf + set in de and eng page',
    '',
    '',
    '2016-12-30 00:00:00',
    '',
    '30min',
    '2016-12-30 18:10:00',
    '2016-12-30 18:24:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    210,
    95,
    'Tab sistem in backend',
    '',
    '',
    '2016-12-31 00:00:00',
    '',
    '30min',
    '2016-12-31 02:30:00',
    '2016-12-31 03:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    211,
    80,
    'Text changes + extra layout for hocker (template change)',
    '',
    '',
    '2017-01-09 00:00:00',
    '',
    '30min',
    '2017-01-09 10:00:00',
    '2017-01-09 12:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    212,
    53,
    'Implement new login sistem into folder login/',
    '',
    '',
    '2017-01-09 00:00:00',
    '',
    '1h',
    '2017-01-09 17:00:00',
    '2017-01-09 18:14:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    213,
    111,
    'New template for page kurzinfo',
    '',
    '',
    '2017-01-11 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    214,
    152,
    'Adress change (change template)',
    '',
    '',
    '2017-01-11 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    216,
    95,
    'Ordered and unordered list -css',
    '',
    '',
    '2017-01-12 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    217,
    90,
    'add custum field + WP all updates',
    '',
    '',
    '2017-01-16 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    219,
    50,
    'set page Personal ondraft + update 2 plugin ',
    '',
    '',
    '2017-01-19 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    220,
    104,
    'news add  + menu cjhange',
    '',
    '',
    '2017-01-20 00:00:00',
    '',
    '',
    '2017-01-20 12:00:00',
    '2017-01-20 12:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    222,
    153,
    'image gallery problem WRONG FTP ACCESS',
    'Email from 20.01.2016.\r\nGet ftp access from client',
    '',
    '2017-01-20 00:00:00',
    '',
    '',
    '2017-01-30 09:18:00',
    '2017-01-30 09:48:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    224,
    119,
    'Remove team members + clean unused images',
    '',
    '',
    '2017-01-23 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    225,
    85,
    'China Prices & Stock',
    'PART I\r\n\r\n- Create msql db and tables\r\n- Create PHP environment and project structure\r\n- Create PHP basic function and procedures\r\n- Basic layout for app(using bootstrap)\r\n- Programing User sistem with login , logout, user roles...\r\n- Programing sistem for USB_Lieferanten - Prices\r\n- Programing sistem for USB_Lieferanten - STOCK\r\n\r\n32h',
    'http://wp1058960.server-he.de/index.php',
    '2017-01-24 00:00:00',
    'low',
    '40',
    '2017-01-03 12:00:00',
    '2017-01-04 20:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    226,
    70,
    'update+ text correction aktuelles+ page structure bug',
    '',
    '',
    '2017-01-25 00:00:00',
    '',
    '30min',
    '2017-01-25 16:00:00',
    '2017-01-25 17:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    227,
    125,
    'cache plugin instal + wp update',
    '',
    'not invoiced - free service ! this time only !',
    '2017-01-26 00:00:00',
    '',
    '30min',
    '2017-01-26 14:00:00',
    '2017-01-26 14:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    228,
    70,
    '4 image change (home, team, Vom Weingut)',
    '',
    '',
    '2017-01-27 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    229,
    95,
    '*minijob* instal yoast ACF analizer plugin',
    '',
    '',
    '2017-01-27 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    230,
    17,
    'New text conformation email',
    '',
    '',
    '2017-01-27 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    231,
    112,
    'Logo change (Page /unsere-leistungen/kaminoefen.php)',
    '',
    '',
    '2017-01-30 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    232,
    74,
    'add baners -adform -Schulerrepublik',
    'change layout',
    '',
    '2017-02-01 00:00:00',
    '',
    '',
    '2017-02-02 11:12:00',
    '2017-02-02 12:12:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    233,
    105,
    'Correction on page herausgeberschaften',
    '',
    '',
    '2017-02-03 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    234,
    106,
    'Changes and reprograming',
    '',
    '',
    '2017-02-06 00:00:00',
    '',
    '1h',
    '2017-02-06 10:41:00',
    '2017-02-06 11:41:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    235,
    95,
    'unsecure scripts ',
    '',
    '',
    '2017-02-07 00:00:00',
    '',
    '',
    '2017-02-07 11:07:00',
    '2017-02-07 11:37:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    236,
    2,
    'Chbage db field proprietes - aktuelles',
    'Problem with the long text in news redaktion section.\r\nJule Email 07.02.2017. ',
    '',
    '2017-02-07 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    238,
    128,
    'tEXT CHANGES',
    'Elke E-mail 08.02.2017. ',
    '',
    '2017-02-08 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    239,
    52,
    'footer workingtime chane + updates',
    '',
    '',
    '2017-02-08 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    241,
    23,
    'news page Back old image + plugin updates',
    '',
    '',
    '2017-02-09 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    243,
    125,
    'Slider reprograming + header images',
    '',
    '',
    '2017-02-10 00:00:00',
    '',
    '4h',
    '2017-02-10 10:00:00',
    '2017-02-10 12:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    245,
    40,
    'Change 3 images',
    'Jule email 14.02.2017.',
    '',
    '2017-02-14 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    246,
    104,
    'add two news',
    '',
    '',
    '2017-02-15 00:00:00',
    '',
    '',
    '2017-02-15 11:48:00',
    '2017-02-15 11:48:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    247,
    153,
    'Clone WOOCOMMERCE ShoP',
    '',
    '',
    '2017-02-15 00:00:00',
    '',
    '1h',
    '2017-02-28 13:00:00',
    '2017-02-28 14:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    248,
    125,
    'Home image animation',
    '',
    '',
    '2017-02-15 00:00:00',
    '',
    '30min',
    '2017-02-15 16:40:00',
    '2017-02-15 17:26:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    249,
    106,
    'Slider for pages',
    '',
    '',
    '2017-02-16 00:00:00',
    '',
    '30min',
    '2017-02-16 10:00:00',
    '2017-02-16 10:24:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    251,
    56,
    'revision from page Karriere',
    'zurückgestellt auf Zustand vor 24.2.',
    '',
    '2017-02-24 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    252,
    53,
    'Security settings + Install Securi plugin ',
    '',
    '',
    '2017-03-01 00:00:00',
    '',
    '30min',
    '2017-02-28 14:00:00',
    '2017-02-28 14:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    253,
    23,
    'Nadja Bührer out + wp updates',
    '',
    '',
    '2017-03-03 00:00:00',
    '',
    '',
    '2017-03-03 09:46:00',
    '2017-03-03 09:46:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    254,
    104,
    '2 menus change',
    '',
    '',
    '2017-03-06 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    256,
    17,
    'Text changes + wordpress and plugins update',
    '',
    '',
    '2017-03-06 00:00:00',
    '',
    '30min',
    '2017-03-06 15:00:00',
    '2017-03-06 15:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    257,
    116,
    'New page DE/EN + wp update',
    '30min',
    '',
    '2017-03-08 00:00:00',
    '',
    '1h',
    '2017-06-22 10:33:00',
    '2017-06-22 11:33:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    258,
    74,
    'Repair chilli Gewinnspiel form ',
    '',
    '',
    '2017-03-13 00:00:00',
    '',
    '30min',
    '2017-03-13 11:00:00',
    '2017-03-13 11:19:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    259,
    150,
    'Text corection + wp full update',
    '',
    '',
    '2017-03-15 00:00:00',
    '',
    '30min',
    '2017-03-15 11:00:00',
    '2017-03-15 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    260,
    55,
    'Bug fix - header image + agb pdf',
    '',
    '',
    '2017-03-24 00:00:00',
    '',
    '30min',
    '2017-03-24 15:36:00',
    '2017-03-24 15:36:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    261,
    50,
    'change team members+ slider programing',
    '',
    '',
    '2017-03-30 00:00:00',
    '',
    '2h',
    '2017-04-04 12:54:00',
    '2017-04-04 14:54:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    262,
    17,
    'Convert and add to page mp3 file',
    '',
    '',
    '2017-04-03 00:00:00',
    '',
    '30min',
    '2017-04-03 14:00:00',
    '2017-04-03 14:40:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    263,
    23,
    'Urgent info on startpage',
    'Telekom-Probleme! \r\nVorübergehend sind wir unter 0172 7640326 zu erreichen!',
    '',
    '2017-04-03 00:00:00',
    '',
    '15 min',
    '2017-04-03 17:45:00',
    '2017-04-03 18:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    265,
    49,
    'new favicon - new sitename - update all ',
    '',
    '',
    '2017-04-04 00:00:00',
    '',
    '30',
    '2017-04-04 15:21:00',
    '2017-04-04 15:51:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    266,
    89,
    '1new page de/en + wmpml update problem ',
    '',
    '',
    '2017-04-05 00:00:00',
    '',
    '1h',
    '2017-04-05 02:56:00',
    '2017-04-05 05:56:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    267,
    105,
    'add new seminars',
    'http://fim.mh-freiburg.de/musikermedizin/lehre-fortbildung/lehre-hfm.php',
    '',
    '2017-04-10 00:00:00',
    '',
    '30min',
    '2017-04-10 16:00:00',
    '2017-04-10 16:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    268,
    181,
    'edit and change team profile image',
    '',
    '',
    '2017-04-18 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    269,
    59,
    'set new 2017 section for pdfs - rundschreiben.php',
    '',
    '',
    '2017-04-18 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    272,
    17,
    'Inline popup bug fixed - seminar',
    '',
    '',
    '2017-04-18 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    273,
    85,
    'Add zertifikate + product info + video Template change',
    '30min',
    '',
    '2017-04-26 00:00:00',
    '',
    '',
    '2017-06-22 09:00:00',
    '2017-06-22 10:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    274,
    55,
    'Flash uploader problem',
    '',
    '',
    '2017-04-26 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    275,
    53,
    'Delete team members + updates wp - 4 plugins - nicht berechnet',
    '',
    '',
    '2017-04-27 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    277,
    23,
    'add button + job popup on hompage + updates',
    '',
    '',
    '2017-05-08 00:00:00',
    '',
    '',
    '2017-05-08 14:45:00',
    '2017-05-08 15:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    278,
    17,
    'converting 4 videos + making page for videos + 1un1 webpack',
    '',
    '',
    '2017-05-09 00:00:00',
    'low',
    '',
    '2017-05-22 12:00:00',
    '2017-05-22 13:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    279,
    14,
    'Updates + new user for Aktuelles page',
    '',
    '',
    '2017-05-11 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    281,
    56,
    'Video on home page ',
    '',
    '',
    '2017-05-16 00:00:00',
    '',
    '1h',
    '2017-05-22 11:00:00',
    '2017-05-22 13:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    282,
    34,
    'shop menu button + updates',
    '',
    '',
    '2017-05-30 00:00:00',
    '',
    '30min',
    '2017-05-30 09:50:00',
    '2017-05-30 10:20:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    284,
    56,
    'Update + track code + mail encript plugin ',
    '',
    '',
    '2017-06-01 00:00:00',
    '',
    '30min',
    '2017-06-01 10:17:00',
    '2017-06-01 10:47:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    285,
    56,
    'New complex template for Steleangebote page',
    '',
    '',
    '2017-06-09 00:00:00',
    '',
    '8h',
    '2017-07-01 01:00:00',
    '2017-07-01 07:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    286,
    70,
    'Image change + wp update',
    '',
    '',
    '2017-06-09 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    288,
    44,
    'GoogleTrack Code + wp all updates',
    '',
    '',
    '2017-06-13 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    289,
    43,
    'GoogleTrack Code + wp all updates',
    '',
    '',
    '2017-06-13 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    290,
    77,
    '2 images edit/add +  wp all updates',
    '',
    '',
    '2017-06-13 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    292,
    145,
    'Add Projekte feature image + setting site online',
    '',
    '',
    '2017-06-19 00:00:00',
    '',
    '4h',
    '2017-06-19 19:19:00',
    '2017-06-19 23:19:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    293,
    70,
    'Image change Team',
    '',
    '',
    '2017-06-19 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    294,
    33,
    'change image + wp update',
    '',
    '',
    '2017-06-20 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    295,
    104,
    '2 menus update',
    '',
    '',
    '2017-06-20 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    296,
    40,
    'change image / old adress',
    '',
    '',
    '2017-06-21 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    298,
    89,
    'translation page bug + all wp updates',
    '',
    '',
    '2017-06-27 00:00:00',
    '',
    '30min',
    '2017-06-27 11:50:00',
    '2017-06-27 12:20:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    299,
    6,
    'Google code add',
    '',
    '',
    '2017-06-28 00:00:00',
    '',
    'minijob',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    301,
    98,
    'Update wordpress + clone allfair site do dev',
    'http://dev.biotrio.eu/',
    '',
    '2017-07-07 00:00:00',
    '',
    '2h',
    '2017-07-07 13:00:00',
    '2017-07-07 15:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    303,
    98,
    'Edit Kontakt page',
    '',
    '',
    '2017-07-10 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    304,
    24,
    'Contact form on page Stellenangebote',
    '',
    '',
    '2017-07-11 00:00:00',
    '',
    '4h',
    '2017-07-11 22:00:00',
    '2017-07-12 01:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    305,
    33,
    'Updates, CF7 recaptcha, footer changes',
    '',
    '',
    '2017-07-19 00:00:00',
    '',
    '30min',
    '2017-07-19 10:39:00',
    '2017-07-19 10:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    306,
    50,
    'WP + All plugins update',
    '',
    '',
    '2017-07-24 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    307,
    2,
    'final changes',
    '25.7. \r\n- slider text 20% smaller\r\n- change font-family -> Arial\r\n- accordions font from bold -> normal\r\n\r\n26.7. \r\n- change font-size 2-3 px smaller\r\n- news, shorter text in sidebar, \'mehr\' linked to page Aktuelles, headline -> color blue\r\n- SUPERVISOREN-/BALINT-ADRESSEN change order tel<-> ort\r\n- WISSENSWERT accordion, change arrows indent\r\n- KONTAKT smaller images, delete mail link, optimize position\r\n',
    '',
    '2017-07-26 00:00:00',
    '',
    '4 h',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    309,
    70,
    'change home slider image ',
    '',
    '',
    '2017-07-26 00:00:00',
    '',
    'minijob',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    310,
    60,
    'New meta menu Impressum + datenschutz',
    '',
    '',
    '2017-08-02 00:00:00',
    '',
    '30min',
    '2017-08-02 20:00:00',
    '2017-08-02 20:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    311,
    119,
    'Teamseite ausgeblendet',
    'finished',
    '',
    '2017-08-04 00:00:00',
    '',
    'minijob',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    312,
    156,
    'dold server transfer',
    '',
    '',
    '2017-08-04 00:00:00',
    '',
    '2 h',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    313,
    78,
    'new project + change template',
    '',
    '',
    '2017-08-04 00:00:00',
    '',
    '1h',
    '2017-08-04 09:30:00',
    '2017-08-04 11:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    314,
    85,
    'Programing - Prices for products',
    '',
    '',
    '2017-08-11 00:00:00',
    '',
    '4h',
    '2017-08-11 09:00:00',
    '2017-08-11 14:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    315,
    78,
    'Add lightbox on new page + editing images',
    '',
    '',
    '2017-08-15 00:00:00',
    '',
    '1h',
    '2017-08-15 15:42:00',
    '2017-08-15 16:42:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    316,
    104,
    '*minijob* Change 2 menus',
    '',
    '',
    '2017-09-04 00:00:00',
    '',
    '',
    '2017-09-04 10:36:00',
    '2017-09-04 10:36:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    317,
    123,
    '*minijob* changes oo page shop (old site)',
    '',
    '',
    '2017-09-11 00:00:00',
    '',
    '15 min',
    '2017-09-11 10:00:00',
    '2017-09-11 10:12:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    318,
    138,
    'Dinamic Footer',
    '',
    '',
    '2017-09-12 00:00:00',
    '',
    '30min',
    '2017-09-12 17:05:00',
    '2017-09-12 17:35:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    320,
    73,
    'Dinamic Footer',
    '',
    '',
    '2017-09-12 00:00:00',
    '',
    '30min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    321,
    24,
    'HTML Datei für Mailsignatur',
    '',
    '',
    '2017-09-14 00:00:00',
    '',
    '45 min',
    '2017-09-14 15:20:00',
    '2017-09-14 16:10:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    323,
    164,
    'Voting sistem',
    'http://flowerpower-danielaryf.ch/',
    'Need FR translation error messaging\r\nComplete email body for user email',
    '2017-09-22 00:00:00',
    '',
    '8h',
    '2017-10-11 11:18:00',
    '2017-10-11 20:18:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    324,
    116,
    'Page Crunchy Bars formating',
    '',
    '',
    '2017-09-28 00:00:00',
    '',
    '30min',
    '2017-09-28 14:03:00',
    '2017-09-28 14:33:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    326,
    154,
    'Settings for shop',
    '- remove product counter on category page\r\n- set layout for Mwst\r\n\r\n- min number of ordering  for reseler\r\n- plugin for add new product mark',
    '1h + ',
    '2017-09-29 00:00:00',
    '',
    '2h',
    '2017-10-02 11:00:00',
    '2017-10-02 12:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    327,
    85,
    'Color sistem + script for product image zoom + prices (vorkosten+) ',
    '8h + ',
    '',
    '2017-09-29 00:00:00',
    '',
    '',
    '2017-10-24 18:00:00',
    '2017-10-25 10:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    331,
    116,
    'Page Crunchy Bars formating -2-',
    '',
    '',
    '2017-10-05 00:00:00',
    '',
    '30',
    '2017-10-05 09:48:00',
    '2017-10-05 10:18:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    332,
    74,
    'New small site - freiburggehtaus.de',
    '2h + 5h\r\nlayout-text + \r\nformular-all settings-testing',
    '',
    '2017-10-09 00:00:00',
    '',
    '',
    '2017-10-23 09:40:00',
    '2017-10-23 16:40:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    333,
    56,
    'Publish page Stellenangebote for external use + noindex',
    '',
    '',
    '2017-10-09 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    335,
    17,
    'New Audio Book',
    'make a site clone for testing http://www.modler.rixner.info/\r\n2h\r\n',
    '',
    '2017-10-10 00:00:00',
    '',
    '',
    '2017-10-18 09:00:00',
    '2017-10-18 15:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    336,
    60,
    'thumbs generation does not work',
    '',
    '',
    '2017-10-11 00:00:00',
    '',
    '30 min',
    '2017-10-12 12:40:00',
    '2017-10-12 13:20:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    337,
    2,
    'Change programing for Supervisoren + BalintGruppen',
    '',
    '',
    '2017-10-12 00:00:00',
    '',
    '2h',
    '2017-10-12 13:00:00',
    '2017-10-12 15:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    339,
    49,
    'Update + changeing rights for administrator (delete files)',
    '',
    '',
    '2017-10-13 00:00:00',
    '',
    '30min',
    '2017-10-13 16:00:00',
    '2017-10-13 16:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    340,
    154,
    'Changes',
    '1. smaller font on product overview for titel and price\r\n2. add Bestellnumer (position?) - Art.-Nr.',
    '',
    '2017-10-19 00:00:00',
    '',
    '30min',
    '2017-10-19 19:23:00',
    '2017-10-19 19:53:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    341,
    56,
    'Chane video to old image slider',
    '',
    '',
    '2017-10-25 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    343,
    154,
    'Change font-family in products layout',
    '',
    '',
    '2017-11-02 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    344,
    77,
    'add 2 images in eindruecke - full plugin updates ',
    '',
    '',
    '2017-11-02 00:00:00',
    '',
    '30min',
    '2017-11-02 10:30:00',
    '2017-11-02 11:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    345,
    2,
    'Reprograming  - box Aktuelles + termine buttons',
    '1h + 2h + ',
    '',
    '2017-11-09 00:00:00',
    'low',
    '3h',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    346,
    154,
    'Change main email adresse + bank acc. infos',
    '',
    '',
    '2017-11-16 00:00:00',
    '',
    '15 min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    347,
    150,
    'Project page Reprogfor Video + full update',
    '',
    '',
    '2017-11-20 00:00:00',
    '',
    '30min',
    '2017-11-20 11:00:00',
    '2017-11-20 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    348,
    128,
    'Textkorrekturen siehe Mail 20.11.2017 ',
    '',
    '',
    '2017-11-20 00:00:00',
    '',
    '15 min',
    '2017-08-20 15:00:00',
    '2017-08-20 15:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    349,
    121,
    'Secure after hack attack',
    '- updating plugins\r\n- install recaptcha for contact form + extr antispam filter\r\n- install All In One WP Security + Sucuri Security - Auditing, Malware Scanner and Hardening\r\n- deactivate email account(web@), crete new (master@)\r\n- \r\n',
    '',
    '2017-11-20 00:00:00',
    '',
    '45min',
    '2017-11-20 15:00:00',
    '2017-11-20 16:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    352,
    173,
    'Referenzen reprograming boxes',
    '',
    '',
    '2017-11-28 00:00:00',
    '',
    '30min',
    '2017-11-28 10:00:00',
    '2017-11-28 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    353,
    56,
    'Updates + Snowfall effect',
    '',
    '',
    '2017-11-30 00:00:00',
    '',
    '1h',
    '2017-12-01 14:00:00',
    '2017-12-01 15:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    354,
    56,
    'Red Box on template 2 - enable',
    '',
    '',
    '2017-12-01 00:00:00',
    '',
    '30min',
    '2017-12-01 10:00:00',
    '2017-12-01 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    355,
    27,
    'Changes Mail instruction Elke',
    '',
    '',
    '2017-12-05 00:00:00',
    '',
    '1h',
    '2017-12-15 16:00:00',
    '2017-12-15 17:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    356,
    56,
    'Add extra ACF for page Job ',
    '',
    '',
    '2017-12-07 00:00:00',
    '',
    '30min',
    '2017-12-07 16:00:00',
    '2017-12-07 16:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    358,
    2,
    'Login area ',
    '2 + 1 h ponuda',
    'LOGIN-BEREICH\t165,00\r\nTERMIN OHNE ANMELDUNG, „externe Terminbuchung“\t82,75\r\n',
    '2017-12-08 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    359,
    7,
    'setting captcha code to form+ testing',
    '',
    '',
    '2017-12-08 00:00:00',
    '',
    '30min',
    '2017-12-08 17:30:00',
    '2017-12-08 18:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    360,
    2,
    'Support für Mailversand-/GMail-Problem',
    '',
    '',
    '2017-12-08 00:00:00',
    '',
    '30 min',
    '2017-12-05 15:00:00',
    '2017-12-05 15:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    361,
    126,
    'Reprograming - restyling menu -2nd level',
    '',
    '',
    '2017-12-15 00:00:00',
    '',
    '1h',
    '2017-12-15 22:00:00',
    '2017-12-15 23:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    362,
    154,
    'Infected site  - Researching and fixing problem',
    'Google developer tool ',
    '',
    '2017-12-22 00:00:00',
    '',
    '1h',
    '2017-12-22 09:23:00',
    '2017-12-22 10:23:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    364,
    56,
    'remove snow effect',
    '',
    '',
    '2018-01-09 00:00:00',
    '',
    '15min',
    '2018-01-09 09:46:00',
    '2018-01-09 09:46:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    365,
    98,
    'Page Kontakt edit',
    '+ edit image from Indesign - Norbert\r\n',
    '',
    '2018-01-09 00:00:00',
    '',
    '1h',
    '2018-01-11 13:40:00',
    '2018-01-11 14:40:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    367,
    2,
    'Remove fb icon from footer + all updates WP+ plugins',
    '',
    '',
    '2018-01-09 00:00:00',
    '',
    '15min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    368,
    126,
    'new category programing setting',
    '',
    '',
    '2018-01-11 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    369,
    85,
    'programing image download script + reprograming for php7',
    '',
    '',
    '2018-01-12 00:00:00',
    '',
    '4h',
    '2018-01-15 10:50:00',
    '2018-01-15 14:50:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    370,
    154,
    'Katalog download  - page haendlerbereich',
    '',
    '',
    '2018-01-15 00:00:00',
    '',
    '30min',
    '2018-01-15 10:30:00',
    '2018-01-15 11:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    371,
    55,
    'Wir sind Ihre Gastgeber - Impressum ändern',
    '',
    '',
    '2018-01-17 00:00:00',
    '',
    '15 min',
    '2018-01-17 11:10:00',
    '2018-01-17 11:25:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    372,
    56,
    'Change  PDF Form',
    '',
    '',
    '2018-01-17 00:00:00',
    '',
    '15 min',
    '2018-01-17 11:15:00',
    '2018-01-17 11:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    373,
    56,
    'Change fancybox->swipe box Video rel=0 programing',
    '',
    '',
    '2018-01-24 00:00:00',
    '',
    '1h',
    '2018-01-24 15:00:00',
    '2018-01-24 16:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    375,
    4,
    'Text- und Bildkorrekturen wegen Umzugs',
    '',
    '',
    '2018-01-26 00:00:00',
    '',
    '30 min',
    '2018-01-25 17:00:00',
    '2018-01-25 17:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    376,
    22,
    'Jobs Text geändert',
    'revison with old text published - finished',
    '',
    '2018-02-08 00:00:00',
    '',
    '15 min',
    '2018-02-08 12:00:00',
    '2018-02-08 12:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    378,
    44,
    'Add Button for external link ',
    '',
    '',
    '2018-02-16 00:00:00',
    '',
    '1h',
    '2018-02-16 15:35:00',
    '2018-02-16 16:35:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    379,
    17,
    'Wordpress updates',
    '',
    '',
    '2018-02-26 00:00:00',
    '',
    '15 min',
    '2018-02-23 10:30:00',
    '2018-02-23 10:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    380,
    56,
    'Reprograming aktuelles template + optimize image for aktuelles',
    '',
    '',
    '2018-02-28 00:00:00',
    '',
    '1h',
    '2018-02-28 15:12:00',
    '2018-02-28 16:12:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    381,
    4,
    'Korrektur auf der Seite Kosten',
    '',
    '',
    '2018-03-02 00:00:00',
    '',
    '15 min',
    '2018-03-02 11:00:00',
    '2018-03-02 11:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    382,
    50,
    'Impressum - move to fotter + Update WP',
    '',
    '',
    '2018-03-05 00:00:00',
    '',
    '30min',
    '2018-03-05 11:05:00',
    '2018-03-05 11:35:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    383,
    95,
    'Update + cookie plugin set',
    '',
    '',
    '2018-03-05 00:00:00',
    '',
    '15min',
    '2018-03-05 16:00:00',
    '2018-03-05 16:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    384,
    181,
    'Neuer Menüpunkt für Webshop, und Text und Bildänderungen',
    '',
    '',
    '2018-03-05 00:00:00',
    '',
    '2 std.',
    '2018-03-05 15:58:00',
    '2018-03-05 17:58:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    385,
    95,
    'Fix slider bug on frontpage',
    'inspect and debug for finding error on slider script\r\nchecking for solution\r\n\r\nProblem  - Title in slide 4\r\n-Rund um\'s Hoch-\r\n',
    '',
    '2018-03-06 00:00:00',
    '',
    '1h',
    '2018-03-06 10:27:00',
    '2018-03-06 11:27:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    386,
    50,
    'Remove tracker script + menu redesign',
    '',
    '',
    '2018-03-15 00:00:00',
    '',
    '30min',
    '2018-03-15 09:00:00',
    '2018-03-15 09:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    387,
    85,
    'Druckflächen für Web',
    '',
    '',
    '2018-03-15 00:00:00',
    'low',
    '4 h',
    '2018-03-06 14:00:00',
    '2018-03-06 18:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    388,
    61,
    'Problem mit NL-Abmeldung + Subdomain redirect',
    '- Abmeldung mit 2 Person getestet. Kein Fehler. \r\n\r\n- Fehleranalyse anhand der Screenshots. \r\n\r\nChnage mail quoata for sp4 ???\r\n\r\n- redirect von  shop.acappellazone.com  überprüft',
    '',
    '2018-03-19 00:00:00',
    '',
    '45min',
    '2018-03-19 14:00:00',
    '2018-03-19 15:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    389,
    4,
    'Änderungen: Neue Adresse ',
    'Neue Adresse im Footer und Impressum eingesetzt, Googlemap eingesetzt und angepasst, Impresumm und home geändert.',
    '',
    '2018-03-19 00:00:00',
    '',
    '30 min',
    '2018-03-19 15:00:00',
    '2018-03-19 15:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    390,
    123,
    'shop page - text change - referenzen add new kalendar',
    '',
    '',
    '2018-03-26 00:00:00',
    '',
    '1h',
    '2018-03-26 14:00:00',
    '2018-03-26 15:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    391,
    163,
    'News - Programing extra modul for lightbox + updates',
    '',
    '',
    '2018-03-28 00:00:00',
    '',
    '2h',
    '2018-03-28 09:00:00',
    '2018-03-28 11:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    392,
    119,
    'Remove Dr Gut from site - template changes',
    '',
    '',
    '2018-03-28 00:00:00',
    '',
    '1h',
    '2018-03-28 18:00:00',
    '2018-03-28 19:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    394,
    19,
    'Team page - changes Add new members ',
    'Email from Karo 29.3.2018.',
    '',
    '2018-03-30 00:00:00',
    '',
    '90min',
    '2018-03-30 10:00:00',
    '2018-03-30 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    395,
    163,
    'Change phone in footer',
    '',
    '',
    '2018-04-09 00:00:00',
    '',
    '15min',
    '2018-04-09 10:00:00',
    '2018-04-09 10:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    396,
    3,
    'Updates + css changes + header image',
    'email from jule \r\nDatum: 13. April 2018 um 12:21:20 MESZ\r\n\r\n',
    '',
    '2018-04-13 00:00:00',
    '',
    '30min',
    '2018-04-16 14:19:00',
    '2018-04-16 14:49:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    398,
    175,
    'Lehrer ACF + single templete + Right Section for Lehrer - programing',
    '',
    '',
    '2018-04-16 00:00:00',
    '',
    '90min',
    '2018-04-18 13:00:00',
    '2018-04-18 15:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    399,
    44,
    'New Formular EOC',
    '2.5h + /',
    '',
    '2018-04-16 00:00:00',
    '',
    '4h',
    '2018-06-29 09:30:00',
    '2018-06-29 12:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    400,
    22,
    'Delete Logo + happy faces page',
    '',
    '',
    '2018-04-17 00:00:00',
    '',
    '15min',
    '2018-04-17 09:15:00',
    '2018-04-17 09:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    402,
    179,
    'Create Text Badges -  programing code + style',
    '',
    '',
    '2018-04-18 00:00:00',
    '',
    '1h',
    '2018-04-18 14:00:00',
    '2018-04-18 16:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    404,
    73,
    'Vimeo video programing (+ilt) + all wp updates',
    '',
    '',
    '2018-04-20 00:00:00',
    '',
    '2h',
    '2018-04-21 09:00:00',
    '2018-04-21 11:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    405,
    52,
    'Set SSL + Update Wp',
    '',
    '',
    '2018-04-26 00:00:00',
    '',
    '15min',
    '2018-04-26 19:35:00',
    '2018-04-26 19:50:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    406,
    56,
    'Create new user - karriere +  all updates',
    '',
    '',
    '2018-04-30 00:00:00',
    '',
    '20min',
    '2018-04-30 16:27:00',
    '2018-04-30 16:47:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    407,
    56,
    'Slovenian Translation ',
    '',
    '',
    '2018-05-07 00:00:00',
    '',
    '6h',
    '2018-05-15 10:00:00',
    '2018-05-15 15:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    408,
    59,
    ' set new 2018 section for pdfs - rundschreiben.php',
    '',
    '',
    '2018-05-07 00:00:00',
    '',
    '15min',
    '2018-05-07 11:45:00',
    '2018-05-07 12:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    411,
    116,
    'Datenschutzseite konfigurieren + updates',
    '',
    '',
    '2018-05-09 00:00:00',
    '',
    '1h',
    '2018-05-09 10:47:00',
    '2018-05-09 11:47:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    413,
    98,
    'Datenschutzseite konfigurieren + changes',
    'New images for contact page DE/EN\r\nNew header Image for uber uns',
    '',
    '2018-05-09 00:00:00',
    '',
    '3h',
    '2018-05-10 10:39:00',
    '2018-05-10 14:39:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    415,
    150,
    'Text add on Project page DE/EN + updates',
    '',
    '',
    '2018-05-11 00:00:00',
    '',
    '30min',
    '2018-05-11 10:19:00',
    '2018-05-11 10:49:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    416,
    185,
    'Changing Template (navi) +  Impressum/Daten full text',
    '',
    '',
    '2018-05-11 00:00:00',
    '',
    '30min',
    '2018-05-11 10:19:00',
    '2018-05-11 10:49:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    417,
    74,
    'Install + configure Shariff 4.5.0 - social share plugin',
    '',
    '',
    '2018-05-16 00:00:00',
    '',
    '90min',
    '2018-05-16 10:30:00',
    '2018-05-16 11:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    418,
    23,
    'Add New Team members',
    'Image croping',
    '',
    '2018-05-16 00:00:00',
    '',
    '1h',
    '2018-05-16 10:46:00',
    '2018-05-16 11:46:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    419,
    56,
    'Removing js code +  install content protection plugin ',
    '',
    '',
    '2018-05-18 00:00:00',
    '',
    '30min',
    '2018-05-18 15:00:00',
    '2018-05-18 15:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    420,
    56,
    'Making conformation popup for online pdf formular (blue box) ',
    '',
    '',
    '2018-05-22 00:00:00',
    '',
    '1h',
    '2018-05-22 15:00:00',
    '2018-05-22 16:28:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    421,
    17,
    'Creating newsletter email conformation sistem',
    '',
    '',
    '2018-05-28 00:00:00',
    'low',
    '2h',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    422,
    74,
    'Regiomagazin - termine- reprograming',
    '',
    '',
    '2018-05-28 00:00:00',
    '',
    '1h',
    '2018-05-29 17:00:00',
    '2018-05-29 18:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    423,
    56,
    'Change Email adress - Direktanfrage',
    '',
    '',
    '2018-06-07 00:00:00',
    '',
    '15min',
    '2018-06-07 12:00:00',
    '2018-06-07 12:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    424,
    186,
    'DSGVO',
    '',
    '',
    '2018-06-14 00:00:00',
    '',
    '30min',
    '2018-06-14 01:00:00',
    '2018-06-14 01:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    425,
    98,
    'New BioTrio WP - final changes -fix bugs',
    '',
    '',
    '2018-06-16 00:00:00',
    '',
    '1h',
    '2018-06-16 20:00:00',
    '2018-06-16 22:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    426,
    202,
    'Intro site',
    '',
    '',
    '2018-06-18 00:00:00',
    '',
    '1h',
    '2018-06-18 16:53:00',
    '2018-06-18 17:53:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    428,
    113,
    'Fix menu on scroll',
    '',
    '',
    '2018-06-20 00:00:00',
    '',
    '1h',
    '2018-06-20 14:00:00',
    '2018-06-20 15:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    429,
    123,
    'New templae for page Team',
    '',
    '',
    '2018-06-21 00:00:00',
    '',
    '30min',
    '2018-06-21 15:10:00',
    '2018-06-21 15:40:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    430,
    74,
    'Add 1+ magazin in header + facebook rule for publishing',
    '',
    '',
    '2018-06-26 00:00:00',
    '',
    '1h',
    '2018-06-26 10:57:00',
    '2018-06-26 11:57:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    432,
    180,
    'Extra 2h - recover site from backup',
    '',
    '',
    '2018-07-02 00:00:00',
    '',
    '2h',
    '2018-07-02 14:34:00',
    '2018-07-02 16:34:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    433,
    198,
    'Textkorrekturen',
    '',
    '',
    '2018-07-04 00:00:00',
    '',
    '15 min',
    '2018-07-04 11:20:00',
    '2018-07-04 11:40:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    434,
    205,
    'Homepage Baustelle',
    '',
    '',
    '2018-07-04 00:00:00',
    '',
    '15 min',
    '2018-07-04 12:00:00',
    '2018-07-04 12:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    435,
    153,
    'Clever Elements research',
    'Überprüfung von Clever Elements auf Double-Opt-in Anmeldeformular',
    '',
    '2018-07-04 00:00:00',
    '',
    '30 min',
    '2018-07-04 16:00:00',
    '2018-07-04 16:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    436,
    54,
    'Reprograming  - One Category Header imege for all subitems - Referenzen ',
    '',
    '',
    '2018-07-09 00:00:00',
    '',
    '30min',
    '2018-07-09 14:30:00',
    '2018-07-09 15:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    437,
    56,
    'Reprograming - Image -Video link',
    '',
    '',
    '2018-07-10 00:00:00',
    '',
    '1h',
    '2018-07-10 14:21:00',
    '2018-07-10 15:21:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    438,
    55,
    'Chhanges on NL forms',
    '1. checkobox - Newsletter abonnieren\r\n2. new page\r\n3. checkbox change text Gewinnspiel - ',
    '',
    '2018-07-10 00:00:00',
    '',
    '2h',
    '2018-07-18 15:45:00',
    '2018-07-18 17:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    439,
    178,
    'Headline change- align text change- slider speed change',
    '30min + ',
    '',
    '2018-07-12 00:00:00',
    'low',
    '',
    '2018-07-12 15:02:00',
    '2018-07-12 15:32:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    441,
    131,
    'Extra Changes 13.07.2018.',
    '1.Reprograming homepage slider (caption) + extra funkction for diable caption on some slide (mobil)\r\n1.a - disable caption on some slide (desktop) - 06.08.2018.\r\n2. Menu changing - Projekte -add one mor elevel\r\n3. Meta menu - impessum + datenszhutz\r\n4. Add complete new datas on site (images + texts send by Stefan)\r\n5.video converting (mp4, ogv, webm)\r\n6.Special template for page - Entwicklung & Management\r\nhochwertiger Immobilien',
    '',
    '2018-07-16 00:00:00',
    '',
    '',
    '2018-07-31 10:30:00',
    '2018-07-31 17:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    442,
    3,
    'user rights change + aktuelles template change',
    '',
    '',
    '2018-07-17 00:00:00',
    '',
    '30min',
    '2018-07-17 10:16:00',
    '2018-07-17 10:46:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    443,
    6,
    'menu changes - font awesome icon ',
    '',
    '',
    '2018-07-17 00:00:00',
    '',
    '30min',
    '2018-07-17 11:00:00',
    '2018-07-17 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    446,
    56,
    'Telefonische Beratung',
    '1. Stellenangebote - neue Eingabemöglichkeit zwischen Videozeiel und Stellenangeboten\r\n\r\n2. Ausbildung, Videos in der Sidebar - andere Vorschaubilder möglich',
    '',
    '2018-07-19 00:00:00',
    '',
    '15 min',
    '2018-07-19 12:05:00',
    '2018-07-19 12:20:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    447,
    54,
    'Poll -CF7',
    '',
    '',
    '2018-07-20 00:00:00',
    'low',
    '4H',
    '2018-07-26 12:00:00',
    '2018-07-26 16:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    448,
    43,
    'Working hours change - Right sidebar',
    'Jule Emila 20.07.2018. - 12:30',
    '',
    '2018-07-20 00:00:00',
    '',
    '15min',
    '2018-07-20 12:30:00',
    '2018-07-20 12:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    450,
    74,
    'Archive - new template Programing',
    '2h + 1h + ',
    '',
    '2018-07-25 00:00:00',
    '',
    '3h',
    '2018-07-30 13:31:00',
    '2018-07-30 16:31:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    451,
    51,
    'Changes on forms - checkboxes',
    '',
    '',
    '2018-07-25 00:00:00',
    '',
    '1h',
    '2018-07-25 16:27:00',
    '2018-07-25 17:27:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    452,
    96,
    'Changes on forms - checkboxes',
    '',
    '',
    '2018-07-25 00:00:00',
    '',
    '1h',
    '2018-07-25 15:21:00',
    '2018-07-25 16:21:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    453,
    82,
    'Telefonische Hotline und Bildbearbeitung für Teamseite',
    '',
    '',
    '2018-07-26 00:00:00',
    '',
    '15 min',
    '2018-07-26 16:00:00',
    '2018-07-26 16:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    455,
    111,
    'Spam problem - konakt form',
    '',
    '',
    '2018-07-30 00:00:00',
    '',
    '30min',
    '2018-07-30 09:30:00',
    '2018-07-30 10:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    456,
    179,
    'Create marker - Ausverkauft Set ot of stock status on 2 products',
    '',
    '',
    '2018-07-30 00:00:00',
    '',
    '30min',
    '2018-07-30 11:09:00',
    '2018-07-30 11:39:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    457,
    93,
    'Adress Change',
    '',
    '',
    '2018-07-30 00:00:00',
    '',
    '30min',
    '2018-07-30 13:45:00',
    '2018-07-30 14:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    459,
    53,
    'Add new Stellenangebote - email 13.08.2018.',
    '',
    '',
    '2018-08-14 00:00:00',
    '',
    '30min',
    '2018-08-14 09:40:00',
    '2018-08-14 10:10:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    460,
    179,
    'chenging rabat rules for 5 products',
    '',
    '',
    '2018-08-14 00:00:00',
    '',
    '30min',
    '2018-08-14 12:00:00',
    '2018-08-14 12:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    461,
    56,
    'Unblocking user  - karriere',
    '',
    '',
    '2018-08-14 00:00:00',
    '',
    '15min',
    '2018-08-14 12:00:00',
    '2018-08-14 12:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    462,
    66,
    'Home slider reprograming  remove boxes from homepage',
    '',
    '',
    '2018-08-17 00:00:00',
    '',
    '1h',
    '2018-08-20 10:23:00',
    '2018-08-20 11:23:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    463,
    68,
    'scroll button on referenzen',
    '',
    '',
    '2018-08-17 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    464,
    61,
    'remove newsletter button',
    '',
    '',
    '2018-08-17 00:00:00',
    '',
    '',
    '2018-08-20 09:30:00',
    '2018-08-20 09:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    465,
    198,
    'change image on pages',
    '',
    '',
    '2018-08-17 00:00:00',
    '',
    '',
    '2018-08-20 09:38:00',
    '2018-08-20 09:58:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    466,
    85,
    'Search funkction change',
    '',
    '',
    '2018-08-22 00:00:00',
    '',
    '15min',
    '2018-08-22 14:20:00',
    '2018-08-22 14:35:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    467,
    196,
    'remove google maps on kontakt page',
    '',
    '',
    '2018-08-23 00:00:00',
    '',
    '15min',
    '2018-08-23 10:25:00',
    '2018-08-23 10:40:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    468,
    55,
    'Impressionen bug - SEO url problems',
    '',
    '',
    '2018-08-23 00:00:00',
    '',
    '30min',
    '2018-08-23 17:04:00',
    '2018-08-23 17:34:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    469,
    111,
    'Install Captcha on Kontakt form - 30e',
    '',
    '',
    '2018-08-24 00:00:00',
    '',
    '30min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    470,
    66,
    'Changing content - Stefan 3emails 29.08.2018.',
    '',
    '',
    '2018-08-29 00:00:00',
    '',
    '30min',
    '2018-08-29 14:28:00',
    '2018-08-29 14:58:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    472,
    196,
    'Newsletter Problem Testing',
    '',
    '',
    '2018-09-03 00:00:00',
    '',
    '30min',
    '2018-09-05 01:00:00',
    '2018-09-05 01:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    473,
    7,
    'Responsive version',
    '',
    '',
    '2018-09-03 00:00:00',
    '',
    '4h',
    '2018-09-05 05:43:00',
    '2018-09-05 09:43:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    475,
    105,
    'Chnage Adresse',
    '',
    '',
    '2018-09-04 00:00:00',
    '',
    '15min',
    '2018-09-04 10:00:00',
    '2018-09-04 10:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    477,
    3,
    'mobile.de API Plugin problem ',
    'Contact plugin support + licenz aktiviren + run importer',
    '',
    '2018-09-04 00:00:00',
    '',
    '30min',
    '2018-09-04 12:15:00',
    '2018-09-04 12:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    478,
    82,
    'Change telefon nummer',
    'Kontakt, impressum, datenshutz + footer',
    '',
    '2018-09-04 00:00:00',
    '',
    '15min',
    '2018-09-04 11:00:00',
    '2018-09-04 11:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    479,
    124,
    'Weiterleitung der mailadresse',
    '',
    '',
    '2018-09-04 00:00:00',
    '',
    '15 min',
    '2018-09-04 11:00:00',
    '2018-09-04 11:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    480,
    56,
    'Programing Adresse Box od right',
    '',
    '',
    '2018-09-04 00:00:00',
    '',
    '30min',
    '2018-09-05 10:25:00',
    '2018-09-05 10:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    481,
    19,
    'Small correction - remove text + remove page',
    'Jule Email 04.09.2018. - 17:43',
    '',
    '2018-09-04 00:00:00',
    '',
    '15min',
    '2018-09-04 18:10:00',
    '2018-09-04 18:25:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    482,
    154,
    'Edit product category hierarchy',
    '',
    '',
    '2018-09-05 00:00:00',
    '',
    '1h',
    '2018-09-06 10:56:00',
    '2018-09-06 11:56:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    483,
    55,
    'Update impressum page',
    '+ Haus Maria + neckarelz',
    '',
    '2018-09-07 00:00:00',
    '',
    '15min',
    '2018-09-10 09:22:00',
    '2018-09-10 09:37:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    484,
    87,
    'Add mobile phone number',
    '',
    '',
    '2018-09-10 00:00:00',
    '',
    '15min',
    '2018-09-10 09:25:00',
    '2018-09-10 09:40:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    485,
    179,
    'changing rabat rules for 5 products 10% - > 30%',
    '',
    '',
    '2018-09-10 00:00:00',
    '',
    '30min',
    '2018-09-10 14:20:00',
    '2018-09-10 14:50:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    486,
    50,
    'Remove 1 Stellenangebot',
    '',
    '',
    '2018-09-10 00:00:00',
    '',
    '15min',
    '2018-09-10 16:27:00',
    '2018-09-10 16:42:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    487,
    112,
    'Remove contact form from page',
    '',
    '',
    '2018-09-11 00:00:00',
    '',
    '15min',
    '2018-09-11 14:00:00',
    '2018-09-11 14:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    488,
    154,
    'Chnage font size on category title + tehnical support',
    'andrea-lienhart.de - send old website link + instruction to check wayback mashine site',
    '',
    '2018-09-12 00:00:00',
    '',
    '15min',
    '2018-09-12 14:17:00',
    '2018-09-12 14:32:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    489,
    66,
    'Changes - Page airter',
    '',
    '',
    '2018-09-18 00:00:00',
    '',
    '30min',
    '2018-09-18 12:00:00',
    '2018-09-18 12:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    490,
    78,
    'Changes',
    '',
    '',
    '2018-09-19 00:00:00',
    '',
    '30min',
    '2018-09-19 11:50:00',
    '2018-09-19 12:20:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    492,
    50,
    '2 new jobs adding',
    '',
    '',
    '2018-09-19 00:00:00',
    '',
    '30min',
    '2018-09-20 14:40:00',
    '2018-09-20 12:10:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    493,
    113,
    'Wordpress update + plugin',
    '',
    '',
    '2018-09-25 00:00:00',
    '',
    '15min',
    '2018-09-26 15:16:00',
    '2018-09-26 15:31:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    494,
    66,
    'changes + extra changes 28.09.2018.',
    'Text changes\r\nRequest new images from Stefan (biger)\r\nReprograming right modul for PDF download  + css button\r\n\r\n+\r\nExtra changes from 28.09.2018.',
    '',
    '2018-09-26 00:00:00',
    '',
    '2h',
    '2018-09-28 17:00:00',
    '2018-09-28 18:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    495,
    106,
    'Add 2 image',
    '',
    '',
    '2018-09-28 00:00:00',
    '',
    '15min',
    '2018-09-28 10:14:00',
    '2018-09-28 10:29:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    497,
    85,
    'Add page and programing logic for Topseller',
    '',
    '',
    '2018-09-28 00:00:00',
    '',
    '1h',
    '2018-09-28 11:30:00',
    '2018-09-28 12:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    499,
    209,
    'Repering hagenlochermusic.com',
    '',
    '',
    '2018-10-01 00:00:00',
    'low',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    500,
    17,
    'Change audiobook',
    '',
    '',
    '2018-10-02 00:00:00',
    '',
    '',
    '2018-10-29 10:00:00',
    '2018-10-29 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    501,
    198,
    'Chnege 2 header images',
    '',
    '',
    '2018-10-04 00:00:00',
    '',
    '15min',
    '2018-10-04 11:00:00',
    '2018-10-04 11:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    503,
    56,
    'Upload-Anzeigeproblem im Backend, Seite Stellenangebote, user karriere',
    '',
    '',
    '2018-10-04 00:00:00',
    '',
    '30 min',
    '2018-10-04 12:00:00',
    '2018-10-04 12:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    505,
    85,
    'change dimesion of overview boxes',
    '',
    '',
    '2018-10-09 00:00:00',
    '',
    '15 min',
    '2018-10-08 15:00:00',
    '2018-10-08 15:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    506,
    113,
    'Changes',
    'Menu changes\r\nFixing broken text content\r\nChange text + icons on page Ueber Mich\r\nChange text + icons on page Was brauchen Sie\r\nChnage top headline\r\nChange Home Referenzen + Image\r\n',
    '',
    '2018-10-09 00:00:00',
    '',
    '30min',
    '2018-10-10 14:00:00',
    '2018-10-10 15:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    507,
    66,
    'Novoter Changes 09.10. ',
    'Changing image on home slider\r\nChanging images on home page boxes\r\nChanging images on rasenkuehlung/vorteile-novoter-rasenkuehlung/',
    '',
    '2018-10-09 00:00:00',
    '',
    '15min',
    '2018-10-10 10:00:00',
    '2018-10-10 10:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    508,
    179,
    'Changing prices - discount',
    '',
    '',
    '2018-10-11 00:00:00',
    '',
    '30min',
    '2018-10-11 17:07:00',
    '2018-10-11 17:37:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    509,
    65,
    'Update responsive menu plugin + style config',
    '',
    '',
    '2018-10-15 00:00:00',
    '',
    '30min',
    '2018-10-16 09:00:00',
    '2018-10-16 09:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    511,
    54,
    'Reprograming page Pressespiegel',
    '',
    '',
    '2018-10-16 00:00:00',
    '',
    '1h',
    '2018-10-17 09:12:00',
    '2018-10-17 10:12:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    512,
    185,
    'Change telefon number + fax number (3 pages)',
    '',
    '',
    '2018-10-17 00:00:00',
    '',
    '15min',
    '2018-10-17 15:20:00',
    '2018-10-17 15:35:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    514,
    60,
    'HTML version - 100e',
    '',
    '',
    '2018-10-22 00:00:00',
    '',
    '',
    '2018-10-22 15:42:00',
    '2018-10-22 16:42:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    515,
    154,
    'Testing Paypal and order sistem',
    '',
    '',
    '2018-10-24 00:00:00',
    '',
    '30min',
    '2018-10-24 14:15:00',
    '2018-10-24 14:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    516,
    74,
    'Changes on page FREIBURG GEHT AUS + .freiburggehtaus.de',
    '29.10. + small things 30.10.',
    '',
    '2018-10-26 00:00:00',
    '',
    '30min',
    '2018-10-26 15:00:00',
    '2018-10-26 15:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    518,
    87,
    'Remove text from header + instructions for cahnging menu',
    '',
    '',
    '2018-10-29 00:00:00',
    '',
    '15min',
    '2018-10-30 14:15:00',
    '2018-10-30 14:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    520,
    196,
    'Remove adress from footer',
    '',
    '',
    '2018-10-30 00:00:00',
    '',
    '15min',
    '2018-10-30 14:30:00',
    '2018-10-30 14:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    523,
    124,
    'Update DSVG - add EUlink',
    '',
    '',
    '2018-11-02 00:00:00',
    '',
    '15min',
    '2018-11-07 16:10:00',
    '2018-11-07 16:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    524,
    128,
    'Text changes',
    '',
    '',
    '2018-11-07 00:00:00',
    '',
    '15min',
    '2018-11-08 09:40:00',
    '2018-11-08 09:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    526,
    23,
    '2 images change',
    '',
    '',
    '2018-11-07 00:00:00',
    '',
    '15min',
    '2018-11-08 09:45:00',
    '2018-11-08 10:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    527,
    124,
    'Update Impressum + Datenschutz - pauschal price 50,00 € ',
    '',
    '',
    '2018-11-08 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    528,
    74,
    'new email adress  - anzeigenreport@chilli-freiburg.de',
    '',
    '',
    '2018-11-12 00:00:00',
    '',
    '',
    '2018-11-14 16:40:00',
    '2018-11-14 16:50:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    530,
    85,
    'Chenging errors china cms - HE Php 7.2',
    '',
    '',
    '2018-11-12 00:00:00',
    '',
    '45min',
    '2018-11-12 15:00:00',
    '2018-11-12 15:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    531,
    153,
    'change header image + logo (create 2 images from one)',
    '',
    '',
    '2018-11-14 00:00:00',
    '',
    '30min',
    '2018-11-14 16:09:00',
    '2018-11-14 16:39:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    532,
    2,
    'Reprograming logic for Termine outside link',
    '',
    '',
    '2018-11-19 00:00:00',
    '',
    '15min',
    '2018-11-19 10:40:00',
    '2018-11-19 10:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    534,
    74,
    'Old Chilli site fixed error',
    '',
    '',
    '2018-11-20 00:00:00',
    '',
    '',
    '2018-11-20 10:27:00',
    '2018-11-20 12:27:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    535,
    19,
    'Remove 2 team members',
    '',
    '',
    '2018-11-20 00:00:00',
    '',
    '15min',
    '2018-11-20 14:13:00',
    '2018-11-20 14:28:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    536,
    126,
    'Stellenangebote page + homepage ticker + ',
    '+ move impressum datenschutz on footer\r\n+ reprograming ticker',
    '',
    '2018-11-26 00:00:00',
    '',
    '2h',
    '2018-11-30 13:40:00',
    '2018-11-30 15:40:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    537,
    74,
    'f79 - New cats',
    '',
    '',
    '2018-11-26 00:00:00',
    '',
    '',
    '2018-11-26 17:19:00',
    '2018-11-26 17:49:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    538,
    84,
    'HTML version + update Impressum + datenschutz',
    '',
    '',
    '2018-11-26 00:00:00',
    '',
    '2h',
    '2018-11-26 15:00:00',
    '2018-11-26 17:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    539,
    77,
    'Update wp for php 7.2',
    '',
    '',
    '2018-11-28 00:00:00',
    '',
    '15min',
    '2018-11-28 10:35:00',
    '2018-11-28 10:50:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    541,
    179,
    'Increase time for auto slide (product images)',
    '',
    '',
    '2018-11-28 00:00:00',
    '',
    '5min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    542,
    17,
    'Text change - page Vorträge',
    '',
    '',
    '2018-11-28 00:00:00',
    '',
    '15min',
    '2018-11-28 14:19:00',
    '2018-11-28 14:34:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    543,
    56,
    'ECARD',
    '',
    '',
    '2018-12-03 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    544,
    47,
    'Testing and find problem with redaktion',
    '',
    '',
    '2018-12-04 00:00:00',
    '',
    '15min',
    '2018-12-05 11:10:00',
    '2018-12-05 11:25:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    545,
    93,
    'Add new project page',
    '',
    '',
    '2018-12-05 00:00:00',
    '',
    '30min',
    '2018-12-06 12:15:00',
    '2018-12-06 13:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    546,
    91,
    'Changing main domain ',
    'https://www.maler-hoog.de/\r\n->>>\r\nhttps://www.hoog-maler.de/',
    '',
    '2018-12-05 00:00:00',
    '',
    '1h',
    '2018-12-05 11:00:00',
    '2018-12-05 12:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    547,
    74,
    'F79 redirect',
    '',
    '',
    '2018-12-06 00:00:00',
    '',
    '15min',
    '2018-12-21 10:00:00',
    '2018-12-21 10:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    548,
    17,
    'New audio Interview  ',
    '',
    '',
    '2018-12-07 00:00:00',
    '',
    '15min',
    '2018-12-07 10:00:00',
    '2018-12-07 10:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    549,
    139,
    'HTML version 150+ euro ',
    'See email 28.11.18 12.23 Uhr ',
    '',
    '2018-12-07 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    550,
    196,
    'Turn off notification email for admin ',
    'Email 07.12.2018.',
    '',
    '2018-12-10 00:00:00',
    '',
    '15min',
    '2018-12-20 12:06:00',
    '2018-12-20 12:21:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    551,
    150,
    'Text add on Project page DE/EN + updates',
    '',
    '',
    '2018-12-12 00:00:00',
    '',
    '30min',
    '2018-12-13 00:00:00',
    '2018-12-13 00:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    552,
    47,
    'Set password to folder redaktion',
    'admin\r\n20landmann18',
    '',
    '2018-12-13 00:00:00',
    '',
    '15min',
    '2018-12-13 23:35:00',
    '2018-12-13 23:50:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    553,
    13,
    'Chenging email on website',
    '',
    '',
    '2018-12-13 00:00:00',
    '',
    '15min',
    '2018-12-14 00:05:00',
    '2018-12-14 00:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    554,
    162,
    'Update WP + change responsive menu',
    '',
    '',
    '2018-12-13 00:00:00',
    '',
    '30min',
    '2018-12-14 09:00:00',
    '2018-12-14 09:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    555,
    196,
    'Change logo + changing main domain name',
    '',
    '',
    '2018-12-19 00:00:00',
    '',
    '2h',
    '2018-12-28 10:26:00',
    '2018-12-28 12:26:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    556,
    106,
    'change kontakt od footer + change headline on home  page ',
    'Email Fragen wegen Homepage 20.12. 08:40',
    '',
    '2018-12-20 00:00:00',
    '',
    '20min',
    '2018-12-20 12:00:00',
    '2018-12-20 12:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    557,
    179,
    'change shipping rules',
    'DE ,AT Email 20.12.2018.',
    '',
    '2018-12-21 00:00:00',
    '',
    '15min',
    '2018-12-21 10:13:00',
    '2018-12-21 10:28:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    559,
    154,
    'Install classic editor - reserach problem with avada theme',
    '',
    '',
    '2019-01-04 00:00:00',
    '',
    '15min',
    '2019-01-04 10:20:00',
    '2019-01-04 10:35:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    560,
    199,
    'Change personal datas ',
    'Armin Hellstern - \r\nArmin Hellstern Steinrestaurierungen GmbH',
    '',
    '2019-01-04 00:00:00',
    '',
    '30min',
    '2019-01-04 12:04:00',
    '2019-01-04 12:34:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    562,
    154,
    'Clone Testing + Installing Updates',
    '5h',
    '',
    '2019-01-08 00:00:00',
    '',
    '',
    '2019-01-09 10:00:00',
    '2019-01-09 15:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    563,
    156,
    'Install Matomo',
    '',
    '',
    '2019-01-09 00:00:00',
    '',
    '',
    '2019-01-09 09:13:00',
    '2019-01-09 10:13:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    565,
    208,
    'Service Logos',
    '',
    '',
    '2019-01-10 00:00:00',
    '',
    '2h',
    '2019-01-11 07:48:00',
    '2019-01-11 09:48:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    566,
    45,
    'DSVG pauschal 199,-',
    '',
    '',
    '2019-01-10 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    567,
    73,
    'changes Email 30.01.2019. - Re: Rückmeldung  Auftrag neue Domain',
    'new domain , clone cdp site\r\nchanges\r\n\r\n',
    '',
    '2019-01-10 00:00:00',
    '',
    '',
    '2019-02-25 08:30:00',
    '2019-02-25 10:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    568,
    199,
    'Small changes Email 11.01.2019.',
    '',
    '',
    '2019-01-11 00:00:00',
    '',
    '15min',
    '2019-01-11 10:30:00',
    '2019-01-11 10:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    569,
    82,
    'Manual update old 4.4.1 wp',
    '',
    '',
    '2019-01-14 00:00:00',
    '',
    '1h',
    '2019-01-14 15:19:00',
    '2019-01-14 16:19:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    570,
    56,
    'Remove x-mass from header',
    '',
    '',
    '2019-01-15 00:00:00',
    '',
    '15min',
    '2019-01-15 11:23:00',
    '2019-01-15 11:38:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    571,
    119,
    'change team member',
    '',
    '',
    '2019-01-17 00:00:00',
    '',
    '15min',
    '2019-01-17 12:04:00',
    '2019-01-17 12:19:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    572,
    17,
    'Update WP 5  + plugins',
    '',
    '',
    '2019-01-17 00:00:00',
    '',
    '30min',
    '2019-01-17 17:08:00',
    '2019-01-17 17:38:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    573,
    163,
    'SUCCESS STORIES - english page',
    '',
    '',
    '2019-01-17 00:00:00',
    '',
    '1h',
    '2019-01-18 12:00:00',
    '2019-01-18 12:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    574,
    196,
    'change email adresses in typo ',
    '',
    '',
    '2019-01-18 00:00:00',
    '',
    '30min',
    '2019-01-22 10:45:00',
    '2019-01-22 11:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    575,
    56,
    'Install and configure ticker plugin',
    '',
    '',
    '2019-01-18 00:00:00',
    '',
    '2h',
    '2019-01-18 10:40:00',
    '2019-01-18 12:40:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    577,
    67,
    'DSVGO - fix 299,00',
    '',
    '',
    '2019-01-18 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    578,
    74,
    'LaR Form testing',
    '',
    '',
    '2019-01-18 00:00:00',
    '',
    '',
    '2019-01-18 16:00:00',
    '2019-01-18 17:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    582,
    83,
    'DSVGO Pappella - back site online',
    '',
    '',
    '2019-01-21 00:00:00',
    '',
    '',
    '2019-01-21 16:00:00',
    '2019-01-21 17:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    583,
    16,
    'change image Team page',
    '',
    '',
    '2019-01-21 00:00:00',
    '',
    '15min',
    '2019-01-21 17:35:00',
    '2019-01-21 17:50:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    585,
    18,
    'Update wordpress - manual',
    '',
    '',
    '2019-01-21 00:00:00',
    '',
    '',
    '2019-01-22 14:00:00',
    '2019-01-22 14:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    586,
    69,
    'DSVGO + changes on site',
    '',
    '',
    '2019-01-23 00:00:00',
    '',
    '30min',
    '2019-01-23 11:00:00',
    '2019-01-23 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    587,
    17,
    'change google map - PKS request',
    '',
    '',
    '2019-01-24 00:00:00',
    '',
    '15min',
    '2019-01-24 11:35:00',
    '2019-01-24 11:50:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    588,
    22,
    'change google map - PKS request',
    '',
    '',
    '2019-01-24 00:00:00',
    '',
    '15min',
    '2019-01-24 12:35:00',
    '2019-01-24 12:50:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    589,
    90,
    'change google map - PKS request + ',
    'Wordpress update \r\nChange ordering form\r\nupdate to php version 7.2 1und1',
    '',
    '2019-01-24 00:00:00',
    '',
    '45min',
    '2019-01-24 14:00:00',
    '2019-01-24 14:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    590,
    33,
    'Fix logo bug on internal pages',
    '',
    '',
    '2019-01-24 00:00:00',
    '',
    '15min',
    '2019-01-31 15:00:00',
    '2019-01-31 15:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    591,
    167,
    'Impressum + Datenschutz DE/EN - DSGVO - 199 € ',
    '',
    '',
    '2019-01-25 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    592,
    98,
    'Change php version od strato server',
    '',
    '',
    '2019-01-25 00:00:00',
    '',
    '15min',
    '2019-01-25 16:00:00',
    '2019-01-25 16:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    593,
    74,
    'New Cat - redirect - business im Breisgau',
    'Email 28.01.2019. - Isabel Barquero\r\nHeft bei Kategorie Specials einfügen',
    '',
    '2019-01-28 00:00:00',
    '',
    '30min',
    '2019-01-28 10:00:00',
    '2019-01-28 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    594,
    56,
    'Add missing QR codes',
    '',
    '',
    '2019-01-28 00:00:00',
    '',
    '30min',
    '2019-01-28 10:00:00',
    '2019-01-28 11:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    595,
    167,
    'BLOG - powerofslow.com - see description',
    '1. redirect http -> https\r\n\r\n2. update to php 7.2',
    '',
    '2019-01-28 00:00:00',
    '',
    '1 h',
    '2019-01-28 14:47:00',
    '2019-01-28 15:47:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    596,
    56,
    'Speditionsauftrag - Fußzeile geändert',
    '',
    '',
    '2019-01-28 00:00:00',
    '',
    '',
    '2019-01-28 11:00:00',
    '2019-01-28 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    597,
    196,
    'cron job fixed ',
    '',
    '',
    '2019-01-29 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    599,
    3,
    'Changes - Jule email 29.01.2019.',
    'Update wordpress + all plugins\r\nRemove YT vdieo Set mp4 video on home page ',
    '',
    '2019-01-29 00:00:00',
    '',
    '30min',
    '2019-01-30 10:00:00',
    '2019-01-30 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    600,
    56,
    'Chnage Phone numbers + new qcode - Ulrich Lambertz',
    '',
    '',
    '2019-01-30 00:00:00',
    '',
    '15min',
    '2019-01-30 15:30:00',
    '2019-01-30 15:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    601,
    17,
    'change php version php 5.6 -> php 7.2',
    '',
    '',
    '2019-01-31 00:00:00',
    '',
    '15min',
    '2019-01-31 11:30:00',
    '2019-01-31 11:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    602,
    18,
    'jameda iframe implementation',
    '',
    '',
    '2019-01-31 00:00:00',
    '',
    '15min',
    '2019-01-31 17:30:00',
    '2019-01-31 17:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    603,
    98,
    'Remove 3 old folder from server ',
    'Email Benedikt Öschger 05.02.2019.',
    '',
    '2019-02-05 00:00:00',
    '',
    '15min',
    '2019-02-05 16:30:00',
    '2019-02-05 16:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    604,
    179,
    'change rabatt for KITA-Planer18/19',
    '',
    '',
    '2019-02-06 00:00:00',
    '',
    '15min',
    '2019-02-06 11:40:00',
    '2019-02-06 11:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    605,
    55,
    'Reprograming template for home page (right section)',
    '',
    '',
    '2019-02-07 00:00:00',
    '',
    '15min',
    '2019-02-07 14:40:00',
    '2019-02-07 14:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    607,
    106,
    'Event manager config ',
    '',
    '',
    '2019-02-07 00:00:00',
    '',
    '3h',
    '2019-02-12 10:00:00',
    '2019-02-12 16:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    608,
    54,
    'Change php version 5.6->7.2 Testing',
    '',
    '',
    '2019-02-08 00:00:00',
    '',
    '15min',
    '2019-02-08 15:05:00',
    '2019-02-08 15:20:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    610,
    179,
    'change rabatt for Unterrichts-Planer + create new badge +',
    '+ change position new badge\r\n+ hotline für url Änderung bei Produkten (Jahreszahl) und im Abo link im Produkttext.',
    '',
    '2019-02-12 00:00:00',
    '',
    '15min',
    '2019-02-12 10:40:00',
    '2019-02-12 11:20:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    612,
    169,
    'DSVGO ',
    '',
    '',
    '2019-02-12 00:00:00',
    '',
    '1h',
    '2019-02-12 11:37:00',
    '2019-02-12 12:37:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    613,
    116,
    'Bug  - Fehlende Bar-Leiste',
    'Email 12.02.2019.',
    '',
    '2019-02-12 00:00:00',
    '',
    '30min',
    '2019-02-13 09:13:00',
    '2019-02-13 09:43:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    614,
    179,
    'Variation programing  - A4 Unterrichtsplaner limitierte Edition 19/20',
    '',
    '',
    '2019-02-12 00:00:00',
    '',
    '',
    '2019-02-12 15:00:00',
    '2019-02-12 15:50:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    616,
    74,
    'Unblock IP + cereat e2 new accounts',
    '',
    '',
    '2019-02-25 00:00:00',
    '',
    '15min',
    '2019-02-25 12:20:00',
    '2019-02-25 12:35:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    618,
    22,
    'footer changes',
    'jule email 27.02.2019.',
    '',
    '2019-02-27 00:00:00',
    '',
    '30min',
    '2019-02-27 18:00:00',
    '2019-02-27 18:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    619,
    17,
    'Change image od page Person',
    '',
    '',
    '2019-02-28 00:00:00',
    '',
    '15min',
    '2019-02-28 14:00:00',
    '2019-02-28 14:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    622,
    166,
    'Reprograming menu +  new template for page Buchung ',
    '',
    '',
    '2019-03-01 00:00:00',
    '',
    '1h',
    '2019-03-01 00:24:00',
    '2019-03-01 01:24:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    623,
    154,
    'Admin notification New user create account - extra code + testing',
    '',
    '',
    '2019-03-04 00:00:00',
    '',
    '90min',
    '2019-03-05 11:00:00',
    '2019-03-05 12:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    624,
    168,
    'add new product category to menu',
    '',
    '',
    '2019-03-06 00:00:00',
    '',
    '15min',
    '2019-03-08 03:30:00',
    '2019-03-08 03:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    625,
    17,
    'Add new Radio-Interview',
    '',
    '',
    '2019-03-11 00:00:00',
    '',
    '15min',
    '2019-03-11 11:30:00',
    '2019-03-11 11:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    626,
    138,
    'Request from email 05.03.2019.',
    'Dailymotion video \r\nClone site with changes - new domain\r\n\r\n',
    '',
    '2019-03-11 00:00:00',
    '',
    '3h',
    '2019-03-22 08:43:00',
    '2019-03-22 11:43:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    627,
    17,
    'Change text',
    '',
    '',
    '2019-03-18 00:00:00',
    '',
    '15min',
    '2019-03-18 12:00:00',
    '2019-03-18 12:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    628,
    66,
    'change header image -email stefan srp 19.03.2019.',
    '',
    '',
    '2019-03-19 00:00:00',
    '',
    '15min',
    '2019-03-19 17:00:00',
    '2019-03-19 17:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    629,
    154,
    'Uploadfehler überprüfen',
    'Bei Frau Hoch funktionieren Uplaods nicht, bei Aleks und mir schon, Test 1 am 11.3. Test 2 am 21.3. je 15 min',
    '',
    '2019-03-21 00:00:00',
    '',
    '30 min',
    '2019-03-21 10:30:00',
    '2019-03-21 11:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    630,
    131,
    'New homepage slider',
    '',
    '',
    '2019-03-28 00:00:00',
    '',
    '2h',
    '2019-04-08 09:00:00',
    '2019-04-08 12:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    631,
    196,
    'Testing NL - server error',
    'Email from 29.03.2019.',
    '',
    '2019-04-01 00:00:00',
    '',
    '15min',
    '2019-04-01 10:00:00',
    '2019-04-01 10:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    632,
    55,
    'Reprograming 2 cookie popup boxes',
    ' + Bildungshaus Neckarelz\r\n + Haus Maria Lindenberg',
    '',
    '2019-04-10 00:00:00',
    '',
    '90min',
    '2019-04-10 11:00:00',
    '2019-04-10 13:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    633,
    74,
    'Set new cat image + menu problem resolved',
    'Bild für Gastro&Gusto-Übersicht eingefügt,\r\nKategorie Gesundheit ergänzt,\r\nWebserver-Einstellung etwas verändert, damit die neue Kategorie ins Menü übernommen werden konnte (zuviel Menüpunkte)',
    '',
    '2019-04-15 00:00:00',
    '',
    '30min',
    '2019-04-15 10:00:00',
    '2019-04-15 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    634,
    179,
    'Remove discount - category JUWELIERE',
    '',
    '',
    '2019-04-15 00:00:00',
    '',
    '15min',
    '2019-04-15 12:20:00',
    '2019-04-15 12:35:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    635,
    68,
    'Leistungen - reprograming and insret Adobe animation FREE ',
    '',
    '',
    '2019-04-17 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    636,
    113,
    'Update wordpress 4.x->5.x',
    '',
    '',
    '2019-04-25 00:00:00',
    '',
    '30min',
    '2019-04-25 10:10:00',
    '2019-04-25 10:40:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    637,
    56,
    'Enable newsticker for editor',
    '',
    '',
    '2019-04-25 00:00:00',
    '',
    '15min',
    '2019-04-25 15:00:00',
    '2019-04-25 15:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    639,
    224,
    'Intro page',
    '',
    '',
    '2019-04-25 00:00:00',
    '',
    '2h',
    '2019-04-25 13:19:00',
    '2019-04-25 15:19:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    640,
    155,
    'Change text',
    'Change word Sprechzeiten  - > Unsere telefonische Erreichbarkeit',
    '',
    '2019-04-25 00:00:00',
    '',
    '15min',
    '2019-04-25 15:40:00',
    '2019-04-25 15:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    641,
    208,
    'Changes - Frank email 26.04.2019.',
    '',
    '',
    '2019-04-29 00:00:00',
    '',
    '15min',
    '2019-04-30 09:20:00',
    '2019-04-30 09:35:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    642,
    127,
    'Update + new page + image editing and uploading',
    '',
    '',
    '2019-04-30 00:00:00',
    '',
    '',
    '2019-04-30 11:00:00',
    '2019-04-30 12:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    643,
    127,
    'Bilder änder, hinzufügen, bearbeiten',
    '',
    '',
    '2019-05-02 00:00:00',
    '',
    '30 min',
    '2019-05-02 10:00:00',
    '2019-05-02 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    644,
    161,
    'DHL woocommerce',
    '',
    '',
    '2019-05-02 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    648,
    154,
    'Upload pdf catalog.Create thumb. Upload pdf problem.',
    '',
    '',
    '2019-05-07 00:00:00',
    '',
    '30min',
    '2019-05-07 10:00:00',
    '2019-05-07 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    649,
    56,
    'QCode  - Alexander Tesch',
    '',
    '',
    '2019-05-09 00:00:00',
    '',
    '15min',
    '2019-05-09 11:30:00',
    '2019-05-09 11:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    650,
    179,
    ' Remove Gutscheincode + bold headline for notes',
    '',
    '',
    '2019-05-13 00:00:00',
    '',
    '15min',
    '2019-05-13 15:00:00',
    '2019-05-13 15:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    651,
    163,
    'PHP update, WP full update',
    '',
    '',
    '2019-05-21 00:00:00',
    '',
    '30min',
    '2019-05-22 09:00:00',
    '2019-05-22 09:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    652,
    74,
    'new email account - jenny.leval@',
    '',
    '',
    '2019-06-03 00:00:00',
    '',
    '15min',
    '2019-06-03 10:10:00',
    '2019-06-03 10:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    653,
    218,
    'Extra changes 5h',
    '',
    '',
    '2019-06-07 00:00:00',
    '',
    '',
    '2019-06-14 09:00:00',
    '2019-06-14 14:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    655,
    97,
    'Install security plugin after hack',
    '',
    '',
    '2019-06-07 00:00:00',
    '',
    '',
    '2019-06-07 15:30:00',
    '2019-06-07 17:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    656,
    220,
    'EXtra programing for accordion (2nd level )',
    '',
    '',
    '2019-06-08 00:00:00',
    '',
    '2h',
    '2019-06-10 09:33:00',
    '2019-06-10 11:33:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    657,
    227,
    'Site down fix - email June 11, 2019 (Tue) 13:17',
    '',
    '',
    '2019-06-11 00:00:00',
    '',
    '2h',
    '2019-06-11 12:36:00',
    '2019-06-11 14:36:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    658,
    220,
    'Extra funkctionality - not in initial layout',
    '- Aktuelles\r\n- Kontakt form changes',
    '',
    '2019-06-11 00:00:00',
    '',
    '2h',
    '2019-06-12 09:50:00',
    '2019-06-12 11:50:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    659,
    74,
    'New Email adress',
    'email E-Mail-Adresse Jennifer Leval 11.06.2018.',
    '',
    '2019-06-12 00:00:00',
    '',
    '15min',
    '2019-06-12 10:00:00',
    '2019-06-12 10:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    660,
    174,
    'Fixing site down  - Landingpage Scherer 11.06.',
    '',
    '',
    '2019-06-12 00:00:00',
    '',
    '',
    '2019-06-12 15:00:00',
    '2019-06-12 15:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    662,
    220,
    'Reprograming Team page ',
    'E-Mail Cardio360° - Team\r\n19.06.2019\r\n',
    '',
    '2019-06-19 00:00:00',
    '',
    '1h',
    '2019-06-19 19:39:00',
    '2019-06-19 20:39:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    664,
    218,
    'Extra changes -From:  StephanieSchwärzle :: srp. Werbeagentur',
    'FW: AW: LPFördermittelSWINGFördermittel 19.06.2019.\r\n\r\nword document bottom\r\n- add green check marker \r\n- create page impressum + daten \r\n- install cookie plugin\r\n- create extra pge for datenschutz for user check in/out option\r\n',
    '',
    '2019-06-19 00:00:00',
    '',
    '30min',
    '2019-06-19 18:00:00',
    '2019-06-19 19:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    666,
    227,
    'Fixed 5% discount bug ',
    'E Mail 19.06.2019.\r\nAW: Probleme beim Onlinekaufbetrag',
    '',
    '2019-06-20 00:00:00',
    '',
    '30min',
    '2019-06-20 02:00:00',
    '2019-06-20 02:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    667,
    19,
    'Chnage Vorname - Jenny Rau - Aleks, Lefkada 26.06 2019',
    'Jule email 26.06.2019.',
    '',
    '2019-06-26 00:00:00',
    '',
    '15min',
    '2019-06-26 23:25:00',
    '2019-06-26 23:40:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    669,
    53,
    'Change fon number on header - Aleks, Lefkada 26.06 2019',
    '',
    '',
    '2019-06-26 00:00:00',
    '',
    '15min',
    '2019-06-26 23:30:00',
    '2019-06-26 23:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    670,
    222,
    'Blacklist für vier Emailadressen',
    '',
    '',
    '2019-07-01 00:00:00',
    '',
    '',
    '2019-07-01 15:00:00',
    '2019-07-01 15:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    671,
    202,
    'Add 5 new articles Veranstaltungen',
    '',
    '',
    '2019-07-06 00:00:00',
    '',
    '30min',
    '2019-07-08 10:45:00',
    '2019-07-08 12:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    672,
    227,
    'Email 08.07.2019. - changes',
    '',
    '',
    '2019-07-08 00:00:00',
    '',
    '30min',
    '2019-07-08 14:00:00',
    '2019-07-08 14:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    673,
    179,
    'change 2019->2020 for 2 products in menu - email 08.07.2019.',
    '',
    '',
    '2019-07-08 00:00:00',
    '',
    '15min',
    '2019-07-08 14:00:00',
    '2019-07-08 14:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    674,
    202,
    'Extra programing - Rückblick on single view',
    '',
    '',
    '2019-07-11 00:00:00',
    '',
    '30min',
    '2019-07-11 15:00:00',
    '2019-07-11 15:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    675,
    202,
    'Extra programing for Veranstaltungen -  add ACF field',
    'Hugo Email 15.07.2019.',
    '',
    '2019-07-15 00:00:00',
    '',
    '30min',
    '2019-07-15 14:20:00',
    '2019-07-15 14:50:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    676,
    74,
    'Custumize Wordpress toolbar',
    'Michaela Moser Email 18.07.2019.',
    '',
    '2019-07-18 00:00:00',
    '',
    '15min',
    '2019-07-18 12:20:00',
    '2019-07-18 12:35:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    677,
    226,
    'Extra text block on slide 1',
    '',
    '',
    '2019-07-22 00:00:00',
    '',
    '30min',
    '2019-07-23 09:00:00',
    '2019-07-23 09:20:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    678,
    124,
    'change adress Impressum + datenschutz',
    'Hugo email 29.07.2019.',
    '',
    '2019-07-30 00:00:00',
    '',
    '15min',
    '2019-07-30 01:15:00',
    '2019-07-30 01:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    679,
    74,
    'ACF Gallery',
    '',
    '',
    '2019-07-30 00:00:00',
    '',
    '1h',
    '2019-07-31 09:18:00',
    '2019-07-31 10:18:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    680,
    97,
    'Website off - Fix problem with SSL',
    '',
    '',
    '2019-08-02 00:00:00',
    '',
    '30min',
    '2019-08-02 12:00:00',
    '2019-08-02 12:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    681,
    220,
    'Extra changes',
    '1. clone cardio site\r\n2. all changes - instructions written on paper\r\n- new team single template\r\n- new leistungen single template\r\n- news ticker + template\r\n- smaller font size 80%\r\n- responsive fix  - menu and logo size and position\r\n- \r\n',
    '',
    '2019-08-02 00:00:00',
    '',
    '4h',
    '2019-08-07 11:00:00',
    '2019-08-07 15:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    682,
    74,
    'Open 3 new email address ',
    '',
    '',
    '2019-08-07 00:00:00',
    '',
    '15min',
    '2019-08-07 12:00:00',
    '2019-08-07 12:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    683,
    220,
    'Extra changes 2 - 09.08.2019.',
    '',
    '',
    '2019-08-09 00:00:00',
    '',
    '1h',
    '2019-08-12 10:00:00',
    '2019-08-12 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    684,
    85,
    'SSL certifikat - octogone.de',
    '',
    '',
    '2019-08-12 00:00:00',
    '',
    '15min',
    '2019-08-12 10:05:00',
    '2019-08-12 10:20:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    685,
    85,
    'SSL certifikat - usb24.info + force http-https for 3 domains',
    '',
    '',
    '2019-08-13 00:00:00',
    '',
    '15min',
    '2019-08-13 15:22:00',
    '2019-08-13 15:52:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    686,
    74,
    'Open new email address ',
    'Michaela Moser 12.08.2019.',
    '',
    '2019-08-13 00:00:00',
    '',
    '15min',
    '2019-08-13 15:40:00',
    '2019-08-13 15:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    687,
    179,
    'changes',
    'Email Thomas Koch 13.08.2019.\r\nAW: Unterrichts-Planer 19/20 Edition in GRÜN',
    '',
    '2019-08-13 00:00:00',
    '',
    '',
    '2019-08-13 16:15:00',
    '2019-08-13 16:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    689,
    168,
    'Remove custumer from shop',
    'David Sexauer Email 13.08.2019.',
    '',
    '2019-08-14 00:00:00',
    '',
    '15min',
    '2019-08-14 10:15:00',
    '2019-08-14 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    690,
    202,
    'Changes - Email 19.08.2019. + 26.08.2019.',
    '',
    '',
    '2019-08-20 00:00:00',
    '',
    '15min',
    '2019-08-20 11:00:00',
    '2019-08-20 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    691,
    119,
    'Chnages Juergen email 20.08.2019.',
    'on this site https://www.praxisvauban.de/praxis/aerzte.php#\r\n \r\nis a new doctor….the position is under Sinke Meinel…the picture is in the attachment.\r\n \r\nDr. med. Manuel Hueck\r\nAngestellter Arzt in Weiterbildung zum Facharzt Allgemeinmedizin\r\n \r\nDrei Jahre klinische Erfahrung in der Inneren Medizin in Krankenhäusern in der Schweiz und in Vogtsburg am Kaiserstuhl\r\nZwei Jahre hausärztliche Tätigkeit in einer Landarztpraxis südlich von Freiburg\r\nAktuell letzter Abschnitt der Weiterbildung\r\n \r\nOn this site\r\n \r\nhttps://www.praxisvauban.de/notfall/notfall.php\r\n \r\n \r\nNew Telephonenumber\r\n\r\nFreiburger Notfallpraxis für Erwachsene  \r\nMedizinische Universitätsklinik, Erdgeschoß, Hugstetterstr. 55, Freiburg\r\nTel: 116 117\r\n\r\nFreiburger Notfallpraxis für Kinder\r\nSt. Josefs –Krankenhaus, Sautierstr. 1, Freiburg, Tel.: 116 117\r\n\r\nFreiburger Notfallpraxis für Augen\r\nTel.: 116 117\r\n\r\nThe opening hours have changed\r\n \r\nMo, Di, Do      20 – 24 Uhr\r\nMi, Fr  16 – 24 Uhr\r\nSa, So und an Feiertagen       8 – 24 Uhr\r\n \r\nunder the opening hours\r\n \r\nMo-FR 0-6.00 Notfallzentrum der Uni Tel. 0761 270-33333\r\n \r\non this site\r\n \r\nhttps://www.praxisvauban.de/praxis/praxisorganisation.php\r\n \r\nNew Telephonenumbers\r\n \r\nAngaben zur Freiburger Notfallpraxis:\r\n \r\nFür Erwachsene 116 117\r\n \r\nFür Kinder 116 117\r\n \r\nAugennotfall   116 117\r\n \r\nNotarzt 112\r\n \r\non this site\r\n \r\nhttps://www.praxisvauban.de/schwerpunkte/homoeopathie.php\r\n \r\ndelete the link „ARD Mediathek” please\r\n \r\nand under the current content\r\n \r\na new sentence with a new link\r\n \r\nWeitere Informationen zur Homöopathie finden Sie auf der Webseite Homöopathie online (The hole sentence is a link to this site: https://www.homoeopathie-online.info/',
    '',
    '2019-08-20 00:00:00',
    '',
    '30min',
    '2019-08-20 16:00:00',
    '2019-08-20 16:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    693,
    56,
    'Add page Social media (de, eng, slo)',
    '',
    '',
    '2019-08-23 00:00:00',
    '',
    '15min',
    '2019-08-23 13:15:00',
    '2019-08-23 13:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    694,
    222,
    'Mailkonto j.abilon@ angelegt ',
    '',
    '',
    '2019-08-27 00:00:00',
    '',
    '15min',
    '2019-08-27 10:00:00',
    '2019-08-27 10:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    695,
    56,
    'New video',
    '1. upload video to Youtube\r\n2.Home Page (EN, DE, SLO) \r\n3.Old video move to another page',
    '',
    '2019-08-29 00:00:00',
    '',
    '',
    '2019-08-29 15:00:00',
    '2019-08-29 15:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    696,
    56,
    '9 Videos upload on youtube + set up on pages',
    '',
    '',
    '2019-09-02 00:00:00',
    '',
    '',
    '2019-09-02 14:48:00',
    '2019-09-02 16:48:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    698,
    56,
    'Neuer Kontakt Singen + Änderung an Kontaktdaten Nicole Yasar Seifried',
    '',
    '',
    '2019-09-02 00:00:00',
    '',
    '15 min',
    '2019-09-02 16:00:00',
    '2019-09-02 16:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    699,
    56,
    'qr-code - Nina Halder',
    '',
    '',
    '2019-09-04 00:00:00',
    '',
    '15min',
    '2019-09-04 17:00:00',
    '2019-09-04 17:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    701,
    17,
    'cookie text + google map -Jule 10.09.2019.',
    '',
    '',
    '2019-09-10 00:00:00',
    '',
    '15min',
    '2019-09-10 11:15:00',
    '2019-09-10 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    702,
    126,
    'Neues Projekt: Freiburg-Tiengen, Sechzehn-Jauchert',
    '',
    '',
    '2019-09-10 00:00:00',
    '',
    '1 h',
    '2019-09-09 11:00:00',
    '2019-09-09 12:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    703,
    232,
    'DSGVO Job + Zusatzarbeiten',
    '',
    '',
    '2019-09-10 00:00:00',
    '',
    '1 h',
    '2019-09-06 10:00:00',
    '2019-09-06 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    705,
    23,
    'HTML popup on home page ',
    '',
    '',
    '2019-09-10 00:00:00',
    '',
    '',
    '2019-09-10 16:00:00',
    '2019-09-10 16:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    706,
    179,
    'Change Rabat Unterrichts-Planer 19/20',
    '',
    '',
    '2019-09-16 00:00:00',
    '',
    '30min',
    '2019-09-16 11:00:00',
    '2019-09-16 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    707,
    77,
    'New domain + email adress+ kontakt change 15.10.2019 + ssl',
    'Order domain www.essenundkochen-dreisamtal.de',
    '',
    '2019-09-24 00:00:00',
    '',
    '30min',
    '2019-10-28 14:00:00',
    '2019-10-28 15:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    708,
    123,
    'Contact form DNS / TXT u MX-Recods 2.10.',
    '',
    '',
    '2019-09-24 00:00:00',
    '',
    '15min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    710,
    202,
    'Changes Email 24.09.2019.',
    '',
    '',
    '2019-09-24 00:00:00',
    '',
    '',
    '2019-09-24 13:30:00',
    '2019-09-24 14:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    711,
    138,
    'changes 22.09.2019.',
    '',
    '',
    '2019-09-24 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    712,
    92,
    'SSL Zertifikat verlängert',
    '',
    '',
    '2019-09-26 00:00:00',
    '',
    '15 min',
    '2019-09-26 16:00:00',
    '2019-09-26 16:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    714,
    202,
    'Add 2 images',
    'Hugo  email 01.10.2019. ',
    '',
    '2019-10-01 00:00:00',
    '',
    '15min',
    '2019-10-01 14:30:00',
    '2019-10-01 14:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    715,
    220,
    'Extra changes - 01.10.2019.',
    'Thomas Kaspar - Email',
    '',
    '2019-10-02 00:00:00',
    '',
    '',
    '2019-10-02 10:00:00',
    '2019-10-02 11:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    717,
    231,
    'Newsletter-Plugin',
    '',
    '',
    '2019-10-07 00:00:00',
    '',
    '2,5 h',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    718,
    218,
    'Change contact form - All swing sites',
    'Stephania email 07.10.2019.\r\n\r\nLayou change for swing 1',
    '',
    '2019-10-07 00:00:00',
    '',
    '30min',
    '2019-10-07 14:40:00',
    '2019-10-07 17:40:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    719,
    92,
    'PHP Umstellung - Domainlöschung',
    '',
    '',
    '2019-10-10 00:00:00',
    '',
    '45 min',
    '2019-10-10 10:45:00',
    '2019-10-10 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    720,
    202,
    'Text + image change  - Uwe Birnsteins termin',
    '',
    '',
    '2019-10-17 00:00:00',
    '',
    '15min',
    '2019-10-17 10:30:00',
    '2019-10-17 10:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    721,
    119,
    'Changes  ',
    'Juergen email 17.10.\r\n\r\n\r\nAußerdem haben wir zwei neue Azubinen, bitte diese mit Foto einpflegen hinter Frau Schneider.\r\nFrau Tsykunov\r\nFrau Scholz\r\n \r\nbeide neuen Mitarbeiterinnen sind Auszubildende MFA\r\n \r\nDann bitte noch kleine Änderungen vornehmen auf diesen Seiten:\r\nhttps://www.praxisvauban.de/notfall/notfall.php\r\nhttps://www.praxisvauban.de/kontakt/kontakt.php\r\n',
    '',
    '2019-10-17 00:00:00',
    '',
    '30min',
    '2019-10-17 17:00:00',
    '2019-10-17 17:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    722,
    17,
    'New press -> radio - audio book',
    '',
    '',
    '2019-10-21 00:00:00',
    '',
    '15min',
    '2019-10-21 11:00:00',
    '2019-10-21 11:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    723,
    144,
    'Maintenance mode',
    '',
    '',
    '2019-10-21 00:00:00',
    '',
    '30min',
    '2019-10-21 11:00:00',
    '2019-10-21 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    724,
    202,
    'add new images + programing caption ',
    '',
    '',
    '2019-10-28 00:00:00',
    '',
    '30min',
    '2019-10-28 15:00:00',
    '2019-10-28 15:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    725,
    74,
    'FGA Aktualisierung Ausgabe 2020',
    '',
    '',
    '2019-10-29 00:00:00',
    '',
    '30 min',
    '2019-10-29 11:30:00',
    '2019-10-29 12:20:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    726,
    52,
    'Update wordpress + add new members',
    '',
    '',
    '2019-11-05 00:00:00',
    '',
    '30min',
    '2019-11-06 10:00:00',
    '2019-11-06 11:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    727,
    220,
    'Changes',
    '1. add private number on home page sidebar\r\n2. add privete number on kontakt\r\n3. add select filed into contact form',
    '',
    '2019-11-07 00:00:00',
    '',
    '1h',
    '2019-11-11 17:00:00',
    '2019-11-11 19:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    728,
    222,
    'Subdomains für externe webserver eingerichtet',
    '',
    '',
    '2019-11-08 00:00:00',
    '',
    '30 min',
    '2019-11-07 11:00:00',
    '2019-11-07 11:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    729,
    126,
    'Featured Bild mit Schriftzug Beratung  Vertrieb austauschen',
    '',
    '',
    '2019-11-08 00:00:00',
    '',
    '30 min',
    '2019-11-07 10:00:00',
    '2019-11-07 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    730,
    155,
    'Changes',
    '1. juergen email changes 11.11.2019. - little Works\r\n2. ordering SSL \r\n3. set up new domain kinderarztpraxis-fr-haslach.de',
    '',
    '2019-11-11 00:00:00',
    '',
    '1h',
    '2019-11-12 15:00:00',
    '2019-11-12 16:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    731,
    127,
    'SSL Zertifikat bestellt und verbunden',
    '',
    '',
    '2019-11-11 00:00:00',
    '',
    '15 min',
    '2019-11-11 16:00:00',
    '2019-11-11 16:20:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    732,
    232,
    'Add SSL, redirect domain, redirect http->https',
    '',
    '',
    '2019-11-11 00:00:00',
    '',
    '30min',
    '2019-11-11 16:00:00',
    '2019-11-11 17:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    734,
    202,
    'Add youtube link',
    '',
    '',
    '2019-11-13 00:00:00',
    '',
    '15min',
    '2019-11-13 10:45:00',
    '2019-11-13 11:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    735,
    13,
    'Fix Termine online - php version problem',
    '',
    '',
    '2019-11-14 00:00:00',
    '',
    '15min',
    '2019-11-14 10:15:00',
    '2019-11-14 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    736,
    202,
    'Add tekst - Termine Michael Wolffsohn  Deutschjüdische Glückskinder',
    '',
    '',
    '2019-11-14 00:00:00',
    '',
    '15min',
    '2019-11-14 10:45:00',
    '2019-11-14 11:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    737,
    106,
    'Update wp + memory limit  +  gallery programing',
    '',
    '',
    '2019-11-18 00:00:00',
    '',
    '2h',
    '2019-11-27 13:38:00',
    '2019-11-27 16:38:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    738,
    156,
    'Add GTML code into header',
    '',
    '',
    '2019-11-20 00:00:00',
    '',
    '15min',
    '2019-11-20 15:00:00',
    '2019-11-20 15:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    739,
    126,
    'Neues Projekt auf Homepage gestellt: Denzlingen',
    '',
    '',
    '2019-11-21 00:00:00',
    'low',
    '1 h',
    '2019-11-21 14:00:00',
    '2019-11-21 15:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    740,
    236,
    'Change domain ste-gmbh.com',
    '',
    '',
    '2019-11-26 00:00:00',
    '',
    '30min',
    '2019-11-26 11:00:00',
    '2019-11-26 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    741,
    56,
    'change image Roalnd Futterer',
    '',
    '',
    '2019-11-26 00:00:00',
    '',
    '15min',
    '2019-11-26 12:00:00',
    '2019-11-26 12:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    742,
    52,
    'jamedo code',
    '',
    '',
    '2019-11-26 00:00:00',
    '',
    '30min',
    '2019-11-26 15:00:00',
    '2019-11-26 15:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    743,
    56,
    'Kontakt Scheibler gelöscht',
    'Kontakt Scheibler auf den Seiten Kontakt, Kerpen und Transporte National gelöscht.',
    '',
    '2019-12-09 00:00:00',
    '',
    '15 min',
    '2019-12-09 11:40:00',
    '2019-12-09 11:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    744,
    106,
    'Events system',
    '',
    '',
    '2019-12-17 00:00:00',
    '',
    '',
    '2020-01-21 10:00:00',
    '2020-01-21 14:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    745,
    53,
    'change pw + Unblock IP adress',
    '',
    '',
    '2020-01-07 00:00:00',
    '',
    '15min',
    '2020-01-07 11:00:00',
    '2020-01-07 11:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    746,
    54,
    'Popup on start',
    '',
    '',
    '2020-01-07 00:00:00',
    '',
    '30min',
    '2020-01-07 11:00:00',
    '2020-01-07 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    747,
    55,
    'Restore website + testing NL ',
    '',
    '',
    '2020-01-08 00:00:00',
    '',
    '',
    '2020-01-08 08:45:00',
    '2020-01-08 09:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    748,
    74,
    'Remove freiburg-geht-aus formular',
    'Email 05.10.2021. Michaela Moser',
    '',
    '2021-10-06 00:00:00',
    '',
    '',
    '2021-10-06 09:00:00',
    '2021-10-06 09:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    749,
    45,
    'Install captcha on Kontakt form + security plugin install',
    '',
    '',
    '2020-01-08 00:00:00',
    '',
    '0',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    750,
    202,
    'Change on Termine',
    'Email - Eberhard Ossig Stiftung - 09.01.2020',
    '',
    '2020-01-09 00:00:00',
    '',
    '30min',
    '2020-01-09 10:25:00',
    '2020-01-09 11:25:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    751,
    182,
    'Neue Seite hinzufugen dr.Martin Friedrich',
    '',
    '',
    '2020-01-10 00:00:00',
    '',
    '30min',
    '2020-01-09 10:00:00',
    '2020-01-09 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    752,
    92,
    'Neue Seite hinzufugen ',
    '',
    '',
    '2020-01-14 00:00:00',
    '',
    '15 ',
    '2020-01-14 10:00:00',
    '2020-01-14 10:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    754,
    202,
    'Add Rückblick - 9.November 2019 > Leonard Cohen',
    '',
    '',
    '2020-01-15 00:00:00',
    '',
    '15min',
    '2020-01-15 14:15:00',
    '2020-01-15 14:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    755,
    220,
    'Set up pdf in news text - create newsticker + change logic',
    '',
    '',
    '2020-01-17 00:00:00',
    '',
    '30min',
    '2020-01-17 17:10:00',
    '2020-01-17 17:40:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    757,
    150,
    'Add 3 new project',
    '',
    '',
    '2020-01-20 00:00:00',
    '',
    '15min',
    '2020-01-20 12:15:00',
    '2020-01-20 12:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    758,
    202,
    'Add 3 new image in event ',
    'Hugo Email 20.01.2020. - EOS Web Ergänzung',
    '',
    '2020-01-20 00:00:00',
    '',
    '',
    '2020-01-21 10:00:00',
    '2020-01-21 10:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    759,
    2,
    'Changing fax number - rigthsidebar',
    '',
    '',
    '2020-01-22 00:00:00',
    '',
    '',
    '2020-01-22 20:00:00',
    '2020-01-22 20:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    760,
    106,
    'Extra jobs',
    'reCaptcha on 4 booking form + kontakt page\r\nnew email encoding plugin\r\nseminare button styling - reprograming page template\r\nanchor programing - homepage boxes\r\n\r\ninstall Aksimet plugin to prevent spam\r\ncreate ACF field for headline - page Seminare (Tino)',
    '',
    '2020-01-22 00:00:00',
    '',
    '',
    '2020-01-22 16:00:00',
    '2020-01-22 18:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    761,
    182,
    'Chnage Header image (Team pages)',
    '',
    '',
    '2020-01-24 00:00:00',
    '',
    '15min',
    '2020-01-24 09:00:00',
    '2020-01-24 09:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    762,
    56,
    'Change + Add new PDF - Speditionsauftrag-2019.pdf',
    '',
    '',
    '2020-01-24 00:00:00',
    '',
    '15min',
    '2020-01-24 12:15:00',
    '2020-01-24 12:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    763,
    234,
    'Hugo email - 29.01.2020.',
    '1. new subitem - Bürgerstiftung Berlin\r\n2. Favicon sa  logo\r\n3. new main item - Informationen\r\n4. u mein menu brisem Impressum + data\r\n5. druga boja za -Stiftung zur Förderung ...\r\n6. page Der Weiße Ring stavimo isto text - Diese Seite ist in Aufbau',
    '',
    '2020-01-29 00:00:00',
    '',
    '30min',
    '2020-01-29 15:00:00',
    '2020-01-29 15:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    764,
    202,
    'Ingrid Ossig -email 29.01.2020.',
    '',
    '',
    '2020-01-30 00:00:00',
    '',
    '30min',
    '2020-01-31 09:10:00',
    '2020-01-31 10:10:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    765,
    202,
    'New event  - HUgo email 30.01.2020.- 13:38',
    '',
    '',
    '2020-01-30 00:00:00',
    '',
    '30min',
    '2020-01-31 09:19:00',
    '2020-01-31 09:49:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    766,
    202,
    'Add new 4 images for event Uwe Birnstein',
    'Hugo email 31.01.2020.',
    '',
    '2020-01-31 00:00:00',
    '',
    '15min',
    '2020-01-31 15:30:00',
    '2020-01-31 15:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    767,
    234,
    'Hogo - E-mail 04.02.2020.',
    'including responsive layout settings',
    '',
    '2020-02-04 00:00:00',
    '',
    '1h',
    '2020-02-04 22:00:00',
    '2020-02-04 23:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    768,
    154,
    'Searching for bug - wattermark -iphone problem ',
    '',
    '',
    '2020-02-07 00:00:00',
    '',
    '15min',
    '2020-02-07 10:00:00',
    '2020-02-07 10:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    769,
    73,
    'Changes - Steffan email 11.02.2020.',
    'Auftrag - Neue Duplikation, etc',
    '',
    '2020-02-12 00:00:00',
    '',
    '1h',
    '2020-02-12 22:00:00',
    '2020-02-12 23:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    770,
    202,
    'Set date on fature event - change zeit od one event',
    'Email - AW: Homepage Eberhardt-Ossig-Stiftung\r\n13.02.2020.',
    '',
    '2020-02-14 00:00:00',
    '',
    '15min',
    '2020-02-18 15:00:00',
    '2020-02-18 15:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    771,
    237,
    'Newsticker',
    '',
    '',
    '2020-02-18 00:00:00',
    '',
    '1h',
    '2020-02-18 15:00:00',
    '2020-02-18 16:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    773,
    56,
    'Add new contact persons ',
    'new contacts both for pages: Kontakt, Transporte national, Transporte International, Warehousing, Logistik\r\n1.\r\nMartin Kleinheinz\r\nTeamleiter Vertrieb\r\nMKleinheinz@grieshaberlog.com\r\nTel. +49 0751 5001-231 | Fax +49 751 5001-250 \r\nMobil +49 162 2892126\r\n\r\n2. \r\nAlexander Glaser\r\nVerkehrsfachwirt / Vertrieb\r\nAGlaser@grieshaberlog.com\r\nTel. +49 0751 5001-323 | Fax +49 751 5001-250\r\nMobil +49 175 7968680',
    'we wait for this fotos + new foto for Ulrich Lambertz',
    '2020-02-19 00:00:00',
    '',
    '',
    '2020-03-02 16:28:00',
    '2020-03-02 17:28:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    774,
    198,
    'DSGVO Datenschutz und Impressum geändert - Pauschal ',
    '',
    '',
    '2020-02-20 00:00:00',
    '',
    '30 min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    775,
    202,
    'New events + reprograming content',
    'Add new cf field, change tempalates',
    '',
    '2020-02-21 00:00:00',
    '',
    '',
    '2020-02-21 14:00:00',
    '2020-02-21 15:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    777,
    235,
    'Reprograming Homepage',
    '',
    '',
    '2020-02-29 00:00:00',
    '',
    '6h',
    '2020-03-03 09:00:00',
    '2020-03-03 15:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    778,
    77,
    'Add to new image on page Eindrücke',
    'edit images',
    '',
    '2020-03-03 00:00:00',
    '',
    '15min',
    '2020-03-03 11:00:00',
    '2020-03-03 11:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    780,
    202,
    'change Termin  - Bewahre meine Seele Psalmvertonungen | Konzert',
    '',
    '',
    '2020-03-05 00:00:00',
    '',
    '15min',
    '2020-03-05 14:30:00',
    '2020-03-05 14:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    781,
    168,
    'Change shipping cost',
    '',
    '',
    '2020-03-05 00:00:00',
    '',
    '15min',
    '2020-03-05 15:00:00',
    '2020-03-05 15:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    782,
    126,
    'Cookie erecht24 script',
    '',
    '',
    '2020-03-11 00:00:00',
    '',
    '15min',
    '2020-03-11 10:10:00',
    '2020-03-11 10:25:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    783,
    74,
    'New baner zone',
    '',
    '',
    '2020-03-11 00:00:00',
    '',
    '30min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    784,
    74,
    'hide Kalendar + hide menu items -wo geht was',
    '',
    '',
    '2020-03-16 00:00:00',
    '',
    '30min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    785,
    179,
    '25% Preise Unterrichts-Planer',
    'Email 17.03. - s+w verlag - 25% Preise Unterrichts-Planer',
    '',
    '2020-03-17 00:00:00',
    '',
    '15min',
    '2020-03-17 09:30:00',
    '2020-03-17 09:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    787,
    54,
    'Gehackte Homepage wiederhergestellt',
    '',
    '',
    '2020-03-17 00:00:00',
    '',
    '30 min',
    '2020-03-16 15:15:00',
    '2020-03-16 15:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    788,
    241,
    'Standorte',
    'auf der Internetseite ZWEI Google Maps Standorte einbinden: \r\n\r\nhttp://www.gaberdann-partner.de/header-nav/standorte.html\r\n\r\n',
    '',
    '2020-03-19 00:00:00',
    '',
    '0 min',
    '2020-03-19 12:00:00',
    '2020-03-19 12:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    789,
    143,
    'Video Sprechstunde - Patientus Widget integrieren',
    '',
    '',
    '2020-03-19 00:00:00',
    '',
    '',
    '2020-03-19 10:31:00',
    '2020-03-19 11:31:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    790,
    55,
    'Gewinnspiel 2020',
    '',
    '',
    '2020-03-30 00:00:00',
    '',
    '',
    '2020-03-31 11:00:00',
    '2020-03-31 12:10:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    791,
    130,
    'Change footer  - upload new image + impressum + datenshutz pages',
    '',
    '',
    '2020-03-31 00:00:00',
    '',
    '15min',
    '2020-04-01 10:40:00',
    '2020-04-01 11:40:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    792,
    210,
    'Set Instagram icon in frist box',
    '',
    '',
    '2020-03-31 00:00:00',
    '',
    '30min',
    '2020-03-31 16:30:00',
    '2020-03-31 17:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    793,
    182,
    'SSL Verlängerung',
    '',
    '',
    '2020-04-03 00:00:00',
    '',
    '15 min',
    '2020-04-03 11:15:00',
    '2020-04-03 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    794,
    143,
    'Right video',
    '',
    '',
    '2020-04-06 00:00:00',
    '',
    '15min',
    '2020-04-06 11:25:00',
    '2020-04-06 11:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    795,
    101,
    'SSL Verlängerung',
    '',
    '',
    '2020-04-09 00:00:00',
    '',
    '15 min',
    '2020-04-09 09:00:00',
    '2020-04-09 09:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    796,
    92,
    'Support for Sarah Höferlin',
    'email 08.04.2020. - Add page to menu\r\nemail 15.04.2020. - Set as admin - screenshot explination',
    '',
    '2020-04-09 00:00:00',
    '',
    '30min',
    '2020-04-09 10:00:00',
    '2020-04-09 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    797,
    175,
    'Fix hacked site ',
    '',
    '',
    '2020-04-15 00:00:00',
    '',
    '30min',
    '2020-04-15 15:00:00',
    '2020-04-15 17:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    798,
    198,
    'Emailweiterleitung eingerichtet',
    'verrechnet mit Provision für Familienferien',
    '',
    '2020-04-16 00:00:00',
    'low',
    '15 min',
    '2020-04-16 15:00:00',
    '2020-04-16 15:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    799,
    91,
    'Change links -  maler-hoog.de to hoog-maler.de',
    '',
    '',
    '2020-04-22 00:00:00',
    '',
    '30min',
    '2020-04-22 16:00:00',
    '2020-04-22 16:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    801,
    182,
    'Fix hacked site ',
    '',
    '',
    '2020-04-22 00:00:00',
    '',
    '2h',
    '2020-04-22 14:27:00',
    '2020-04-22 16:27:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    802,
    228,
    'Fix hacked site ',
    '',
    '',
    '2020-04-22 00:00:00',
    '',
    '2h',
    '2020-04-22 14:31:00',
    '2020-04-22 16:31:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    804,
    249,
    'Extra changes ',
    'Chack email 28.04.2020.',
    '',
    '2020-04-29 00:00:00',
    'low',
    '90min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    805,
    143,
    'Move impressum + datenschutz',
    '',
    '',
    '2020-04-29 00:00:00',
    '',
    '30min',
    '2020-04-29 19:18:00',
    '2020-04-29 19:48:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    806,
    182,
    'Photo + notice',
    '',
    '',
    '2020-05-11 00:00:00',
    '',
    '30min',
    '2020-05-14 11:00:00',
    '2020-05-14 12:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    807,
    187,
    'SSL Verlängerung',
    '',
    '',
    '2020-05-11 00:00:00',
    '',
    '15 min',
    '2020-05-11 18:00:00',
    '2020-05-11 18:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    808,
    14,
    'Chnage Database Password',
    '',
    '',
    '2020-05-15 00:00:00',
    '',
    '15min',
    '2020-05-15 18:00:00',
    '2020-05-15 18:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    809,
    235,
    'Change layout on home page - 4col to 3col',
    'Email Stephania - 15.05.2020.',
    '',
    '2020-05-15 00:00:00',
    '',
    '15min',
    '2020-05-15 18:40:00',
    '2020-05-15 18:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    810,
    231,
    'New covid Homepage',
    '',
    '',
    '2020-05-16 00:00:00',
    '',
    '2h',
    '2020-05-18 09:53:00',
    '2020-05-18 11:53:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    811,
    143,
    'Add jameda script above video - New ACF field',
    '',
    '',
    '2020-05-20 00:00:00',
    '',
    '15min',
    '2020-05-20 17:00:00',
    '2020-05-20 17:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    812,
    220,
    'Changes from email 18.05.2020.',
    '',
    '',
    '2020-05-25 00:00:00',
    '',
    '2h',
    '2020-05-27 08:34:00',
    '2020-05-27 11:34:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    813,
    202,
    'Canceled 3 events - Email 26.05.2020.',
    '',
    '',
    '2020-05-26 00:00:00',
    '',
    '15min',
    '2020-05-26 22:30:00',
    '2020-05-26 22:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    815,
    235,
    'Extra text in footer',
    '',
    '',
    '2020-05-28 00:00:00',
    '',
    '15min',
    '2020-05-28 16:10:00',
    '2020-05-28 16:25:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    817,
    144,
    'Final changes - 29.05.2020',
    '',
    '',
    '2020-05-29 00:00:00',
    '',
    '30min',
    '2020-05-29 16:04:00',
    '2020-05-29 16:34:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    818,
    196,
    'Remove Cronjob - Email 04.06.2020.',
    '',
    '',
    '2020-06-04 00:00:00',
    '',
    '',
    '2020-06-04 14:00:00',
    '2020-06-04 14:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    820,
    55,
    'Change pdf + making video instructions',
    '',
    '',
    '2020-06-05 00:00:00',
    '',
    '15min',
    '2020-06-05 11:00:00',
    '2020-06-05 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    821,
    139,
    'Redirect domain  - arbeitsmedizin-kompetenznetz-bw.de',
    'Email - 05.06.2020.\r\nTübingen Kompetenznetz  Domain-Weiterleitung',
    '',
    '2020-06-05 00:00:00',
    '',
    '15min',
    '2020-06-05 11:00:00',
    '2020-06-05 11:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    822,
    182,
    'Change PDF-Formular',
    '',
    '',
    '2020-06-08 00:00:00',
    '',
    '15min',
    '2020-06-08 14:00:00',
    '2020-06-08 14:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    823,
    242,
    'Create Job button + page',
    '',
    '',
    '2020-06-09 00:00:00',
    '',
    '30min',
    '2020-06-09 12:00:00',
    '2020-06-09 12:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    825,
    202,
    'New Event add + favicon',
    '',
    '',
    '2020-06-24 00:00:00',
    '',
    '30min',
    '2020-06-24 14:00:00',
    '2020-06-24 14:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    826,
    202,
    'Text correction - Termne 13. August',
    'Hugo email 30.06.2020.',
    '',
    '2020-06-30 00:00:00',
    '',
    '15min',
    '2020-07-01 09:00:00',
    '2020-07-01 10:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    827,
    241,
    'Seminars - Posts/cat',
    '',
    '',
    '2020-07-06 00:00:00',
    '',
    '3h',
    '2020-07-10 00:00:00',
    '2020-07-10 03:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    828,
    175,
    'Fix hacked site',
    '',
    '',
    '2020-07-07 00:00:00',
    '',
    '30min',
    '2020-07-08 12:00:00',
    '2020-07-08 12:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    829,
    250,
    'Anfrageformular',
    '',
    '',
    '2020-07-09 00:00:00',
    '',
    '3h',
    '2020-07-15 17:00:00',
    '2020-07-15 20:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    830,
    45,
    'Fix hacked site + SSL + updates',
    '',
    '',
    '2020-07-09 00:00:00',
    '',
    '30min',
    '2020-07-10 12:00:00',
    '2020-07-10 12:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    832,
    253,
    'Additional Jobs (13.07.2020. - 19.07. 2020)',
    '##### PRICE 700 € #####\r\n\r\nWooCommerce Google Analytics Integration - 1h\r\nServer problem -www- 2h\r\nCustom Order Numbers Options - 1h\r\n### RELAUNCH ###\r\nMON 13th and TUE 14th =  16 h\r\n\r\n### additional WED - FRI ###\r\nWED: 2 h (fixing bugs, technical support) \r\nTHU: 2 h (fixing bugs, technical support)\r\nFRI: 2,5 h (test orders & 2 new products -laura)\r\n',
    '',
    '2020-07-10 00:00:00',
    '',
    '',
    '2020-07-21 09:42:00',
    '2020-07-21 09:42:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    833,
    182,
    'Fix hacked site',
    '',
    '',
    '2020-07-13 00:00:00',
    '',
    '30 min',
    '2020-07-07 10:00:00',
    '2020-07-07 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    834,
    143,
    'fix jameda code',
    'juergen email 16.07,2020',
    '',
    '2020-07-16 00:00:00',
    '',
    '15min',
    '2020-07-16 10:00:00',
    '2020-07-16 10:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    835,
    175,
    'Header image for single post',
    '',
    '',
    '2020-07-16 00:00:00',
    '',
    '30min',
    '2020-07-16 17:00:00',
    '2020-07-16 17:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    836,
    236,
    'Fix hacked site',
    'Cleaning DB\r\nCommunication with HE support\r\nChange all passwords (users, db)\r\nAdd additional security measures',
    '',
    '2020-07-17 00:00:00',
    '',
    '2h',
    '2020-07-21 08:00:00',
    '2020-07-21 10:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    837,
    253,
    'Additional Jobs (20.07. - 28.8.2020)',
    'TUE 28.07.\r\n15 min - conception chat for landing page and invisible products for groomers Mira Pet US\r\n\r\nWED 29.07.\r\n1h - buy and install - Affiliate For WooCommerce / WooCommerce Social Login\r\n\r\nFRI 31.07.\r\n1h - fb pixel problem consultation\r\n\r\nTUE 04.08.\r\n15 min - fb pixel plugin install\r\n15 min - cleanyteethdogs sale prices missing -  bug fixed\r\n30min - af plugin - style notification area\r\n15 min - CleanyTeeth Dogs EU shipping method change\r\n\r\nWED 05.08.\r\n30min- remove the old FB pixel code(all sites)\r\n1h - fund and implement patch Yoast SEO plugin and multisite instalation [FINISHED 27.08.2020.]\r\n\r\nTUE 06.08.\r\n30min - install WOO fb plugin / change Clany site names / make tutorial video for Nina (skype chat)\r\n\r\nFRI 07.08.\r\n1h - remove impresssum from email CH / change email template style and print size\r\n2h - groomers page  - special template / additional logig for 4 groomers products - Email Peer 04.08.2020.\r\n\r\n\r\nFRI 14.08.\r\n1h - update wordpress + all plugins (monthly)\r\n\r\nWED 19.08.\r\n1h - Affiliate Module activation Mira-Skin US and Mira-Skin EU + reprograming yoast seo og:url (faceebook bug)\r\n\r\n\r\nWED 26.08.\r\n1h - fix meta description bug yoast SEO plugin problem\r\nSupport Nina to add new product on \'facebook sync\' category\r\n\r\nTHU 27.8.\r\n0,5 h Google Search Console Installation with Nina\r\n\r\nFri 28.8.\r\n0,5 h Support for Google Search Console „Warnings“ ',
    '',
    '2020-07-21 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    839,
    182,
    'Text correction NZ1/NZ2',
    '',
    '',
    '2020-07-21 00:00:00',
    '',
    '30min',
    '2020-07-22 00:55:00',
    '2020-07-22 01:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    840,
    250,
    'youtube video widget',
    '',
    '',
    '2020-07-22 00:00:00',
    '',
    '30min',
    '2020-07-22 17:00:00',
    '2020-07-22 17:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    842,
    93,
    'Update Wordpress /plugins + SSL +',
    'Email - 26.07.2020.',
    '',
    '2020-07-23 00:00:00',
    '',
    '30min',
    '2020-07-27 10:00:00',
    '2020-07-27 11:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    843,
    250,
    'Change OCTO-flex Typenliste',
    '',
    '',
    '2020-07-24 00:00:00',
    '',
    '15min',
    '2020-07-24 12:12:00',
    '2020-07-24 12:27:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    844,
    231,
    'Reprogram page Wochenkarte',
    '',
    '',
    '2020-07-28 00:00:00',
    '',
    '30min',
    '2020-07-28 10:00:00',
    '2020-07-28 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    845,
    74,
    'Kalendar activate + back to normal state + Party page text',
    '28.07.2020.Lars Bargmann Email',
    '',
    '2020-07-31 00:00:00',
    '',
    '30min',
    '2020-07-31 14:00:00',
    '2020-07-31 14:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    846,
    228,
    'Reprogram page vfs-artikel ',
    '1. Reprogram page vfs-artikel \r\n2. Fix sorting probblem ',
    '',
    '2020-07-31 00:00:00',
    '',
    '2h',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    848,
    202,
    'Add New Event',
    '',
    '',
    '2020-08-10 00:00:00',
    '',
    '15min',
    '2020-08-10 17:00:00',
    '2020-08-10 17:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    849,
    250,
    'Add google tag menager code - Roland',
    '',
    '',
    '2020-08-12 00:00:00',
    '',
    '15min',
    '2020-08-12 10:00:00',
    '2020-08-12 10:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    850,
    138,
    'Video Thumbnail problem fix',
    'www.language-kurse.de \r\nwww.languages.academy \r\nwww.cosmicvoyage.eu \r\nwww.worldtrip.international ',
    '',
    '2020-08-12 00:00:00',
    '',
    '30min',
    '2020-08-12 11:00:00',
    '2020-08-12 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    851,
    241,
    'Set DNS - Maik Ponikau request',
    '',
    '',
    '2020-08-17 00:00:00',
    '',
    '15min',
    '2020-08-17 14:00:00',
    '2020-08-17 14:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    852,
    74,
    'Requests - Julia + Lars 19.08.2020.',
    '1. Chili-Gewinnspiele - right side menu -explination + fix \r\n2. Caption above image Single news',
    '',
    '2020-08-19 00:00:00',
    '',
    '30min',
    '2020-08-19 11:00:00',
    '2020-08-19 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    853,
    254,
    'Fix bugs +',
    '1. Email answere 20.08.2020\r\n2. fixed  menu bug\r\n3. breadcrumb problem check\r\n4. NEW - linked products css',
    '',
    '2020-08-20 00:00:00',
    '',
    '30min',
    '2020-08-20 16:00:00',
    '2020-08-20 16:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    854,
    222,
    'Update Wordpress + plugins',
    '',
    '',
    '2020-08-21 00:00:00',
    '',
    '15min',
    '2020-08-21 12:40:00',
    '2020-08-21 12:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    856,
    82,
    'Installation Lokalleads script',
    '',
    '',
    '2020-08-25 00:00:00',
    '',
    '1h',
    '2020-09-03 13:00:00',
    '2020-09-03 14:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    857,
    237,
    'Bug fix - Update plugin Ditty News Ticker - ',
    'Add ticker text',
    '',
    '2020-08-25 00:00:00',
    '',
    '15min',
    '2020-08-25 12:25:00',
    '2020-08-25 12:40:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    859,
    253,
    'Additional Jobs (01.09. - 30.09.2020)',
    'THU 10.09.\r\n2h - CleanyTeeth Europe - Multi Currency for WooCommerce \r\n\r\nMON 14.09.\r\n1h - Clone page - Join our affiliate program- to CleanyTeeth für Hunde. \r\nConsultation for new groomers page on CleanyTeeth für Hunde\r\nClone groomers page to CleanyTeeth for Dogs\r\n\r\nTUE 15.09.\r\n30min  -activate Soford (Stripe payment method)\r\n\r\nWEN 16.09\r\n1h - update wordpress and all plugins (regularly monthly)\r\n3h - clone CleanyTeeth Hund - >  cthund.de -> full Configuration\r\n\r\nTHU 17.09.\r\n1h - modify video block widget (add description field) for all sites\r\n2h - modify header box -special cthunde\r\n\r\nFRI 18.09.\r\n1h - Research Multi-Level-Affilate Plugin\r\n\r\nSAT 19.09. !!!WEEKEND!!\r\n2h - groomers menus / pages for EU and DE site \r\n\r\n\r\nTUE 22.09. 9pm !!!\r\n30min  - cthund - fix problem www/no-www site with Christoph \r\n\r\nWEN 23.09\r\n2h - Nina \r\n15min - smaller main menu \r\n1h -  special shop overview  page for groomers (MiraPet - CleanyTeethforDogs)\r\n2h -  groomers responsive menu \r\n\r\n\r\nMON 28.09.\r\n15min - cupon bug resolved Explination to peer\r\n\r\n\r\n\r\n\r\n',
    '',
    '2020-08-28 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    860,
    235,
    'Email communication about reCaptcha',
    '',
    '',
    '2020-09-01 00:00:00',
    '',
    '30min',
    '2020-09-01 10:15:00',
    '2020-09-01 10:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    863,
    228,
    'Test Anmeldeformular formular',
    'Email Riedel - 15.09',
    '',
    '2020-09-16 00:00:00',
    '',
    '15min',
    '2020-09-16 11:00:00',
    '2020-09-16 11:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    864,
    74,
    'New www.wetter.de widget code',
    'Lars email - 16.09.2020',
    '',
    '2020-09-16 00:00:00',
    '',
    '15min',
    '2020-09-16 17:00:00',
    '2020-09-16 17:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    865,
    218,
    'Changes (on 3 sites) - Nina email 22.09.2020 + full updates',
    '',
    '',
    '2020-09-24 00:00:00',
    '',
    '1h',
    '2020-11-03 10:00:00',
    '2020-11-03 11:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    866,
    55,
    'Sorting problem - Katja Boch email 28.09.2020.',
    '',
    '',
    '2020-09-28 00:00:00',
    '',
    '30min',
    '2020-09-28 10:00:00',
    '2020-09-28 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    868,
    77,
    'Conflict resolved - update wordpress + plugins',
    'Header image with -http- urls not showing.\r\nOld plugin version. \r\nUpdate all plugins + wordpress solved conflict. ',
    '',
    '2020-09-28 00:00:00',
    '',
    '30min',
    '2020-09-25 11:00:00',
    '2020-09-25 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    869,
    111,
    'SSL Zertifikat erstellt und Menüstruktur geändert',
    '',
    '',
    '2020-09-29 00:00:00',
    '',
    '1 h',
    '2020-09-29 11:30:00',
    '2020-09-29 12:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    870,
    208,
    'problem with SSL -manual renew',
    '',
    '',
    '2020-10-01 00:00:00',
    '',
    '15min',
    '2020-10-01 10:00:00',
    '2020-10-01 10:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    871,
    253,
    'Additional Jobs (01.10. - 31.10.2020)',
    'WEN 01.10\r\n2h - clone MIraSkin USA -> RECOVRR-SITE USA\r\n\r\nMON 12.10.\r\n1h - update all plugins (regularly monthly)\r\n\r\n\r\nMON 02.11.\r\n15min - add GTM code + script to recovrr USA\r\n\r\n\r\nTHU 05.11.\r\n1h - recovrr-us - \r\ninstall and config Multi Currency for WooCommerce',
    '',
    '2020-10-01 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    872,
    54,
    'Juergen changes',
    '1. change logo\r\n2. radio buttons remove default \r\nhttps://www.meisterteam.net/kundenzufriedenheit/',
    '',
    '2020-10-12 00:00:00',
    '',
    '15min',
    '2020-10-12 18:00:00',
    '2020-10-12 18:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    873,
    250,
    'Add external link in content + change css',
    'https://www.gesundheit.de/fitness/arbeit-beruf/tips-fuer-den-arbeitsplatz/bakterien-tippen-mit-keime-auf-der-computer-tastatur',
    '',
    '2020-10-13 00:00:00',
    '',
    '15min',
    '2020-10-13 12:15:00',
    '2020-10-13 12:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    874,
    74,
    'Update plugins',
    '',
    '',
    '2020-10-13 00:00:00',
    '',
    '30min',
    '2020-10-13 14:00:00',
    '2020-10-13 14:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    875,
    65,
    'Order and configure SSL',
    '',
    '',
    '2020-10-14 00:00:00',
    '',
    '30min',
    '2020-10-14 17:00:00',
    '2020-10-14 17:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    876,
    185,
    'Correction bestellung formular',
    '',
    '',
    '2020-10-16 00:00:00',
    '',
    '15min',
    '2020-10-17 01:00:00',
    '2020-10-17 01:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    877,
    54,
    'Update Wordpress + plugins',
    '',
    '',
    '2020-10-19 00:00:00',
    '',
    '15min',
    '2020-10-19 10:45:00',
    '2020-10-19 11:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    878,
    259,
    'intro page ',
    '',
    '',
    '2020-10-21 00:00:00',
    '',
    '3h',
    '2020-10-21 09:00:00',
    '2020-10-21 12:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    879,
    202,
    'Update Wordpress + plugins',
    '',
    '',
    '2020-10-22 00:00:00',
    '',
    '30min',
    '2020-10-22 10:00:00',
    '2020-10-22 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    880,
    119,
    'Changes (page Ärzte + team)',
    'Jergen email \r\nWebseite Praxis Vauban - 22.10.2020.\r\n',
    '',
    '2020-10-22 00:00:00',
    '',
    '30min',
    '2020-10-22 10:00:00',
    '2020-10-22 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    882,
    222,
    'Update plugins + add usercentrics.eu script code ',
    '',
    '',
    '2020-10-28 00:00:00',
    '',
    '',
    '2020-10-28 10:10:00',
    '2020-10-28 10:25:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    883,
    242,
    'News page reprogram (short text/longtext)',
    '',
    '',
    '2020-10-28 00:00:00',
    '',
    '1h',
    '2020-10-29 15:15:00',
    '2020-10-29 16:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    884,
    220,
    'Problem with formular - research',
    'Email 02.11.2020.\r\nWG: Online Terminanfrage geht nicht IMPORTANT\r\n360-Cardio-Freiburg.de',
    '',
    '2020-11-02 00:00:00',
    '',
    '30min',
    '2020-11-02 15:20:00',
    '2020-11-02 15:50:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    886,
    111,
    'Zahner sites',
    'jacobygindler.ch, sentio-verlag.ch, zeit-der-stille.ch\r\n\r\n1. Full wordpress + plugin updates\r\n2. Install captcha code V3 invisable on all sites\r\n3. install wp-contact-form7-email-spam-blocker on all sites',
    '',
    '2020-11-03 00:00:00',
    '',
    '1h',
    '2020-11-03 15:00:00',
    '2020-11-03 16:16:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    887,
    92,
    'Update Wordpress + plugins',
    '',
    '',
    '2020-11-03 00:00:00',
    '',
    '',
    '2020-11-03 17:00:00',
    '2020-11-03 17:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    888,
    74,
    'Update Wordpress + plugins | old site',
    '',
    '',
    '2020-11-09 00:00:00',
    '',
    '15min',
    '2020-11-09 10:00:00',
    '2020-11-09 10:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    889,
    185,
    'Changes',
    '1.) Kinderstadtplan\r\n2.) Neue Startseite\r\n3.) Bestellformular\r\n\r\nMichaela Moser EMAIL 10.11.2020.',
    '',
    '2020-11-10 00:00:00',
    '',
    '1h',
    '2020-11-11 10:00:00',
    '2020-11-11 11:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    890,
    119,
    'Chnage image dimension on Team page',
    '',
    '',
    '2020-11-12 00:00:00',
    '',
    '15min',
    '2020-11-12 10:10:00',
    '2020-11-12 10:25:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    891,
    253,
    'Additional Jobs (01.11. - 31.12.2020.)',
    'FRI 27.11\r\n15min - cthund.de- fixing bug - header box button non clickable on mobile version\r\n\r\nMON 30.11.\r\n1h - update wordpress + all plugins (monthly)\r\n\r\nTUE 01.12.\r\n1h - recovrr-us - remove language bar (temp), config multy currency plugin, hook for checkout step (set email field on top)\r\n\r\n\r\nMON 07.12.\r\n2h - clone recovrr-us -> recovrr-de',
    '',
    '2020-11-13 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    892,
    168,
    'Resolving problem with user blocked IP adress',
    '',
    '',
    '2020-11-23 00:00:00',
    '',
    '30min',
    '2020-11-24 09:00:00',
    '2020-11-24 09:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    893,
    178,
    'Add cookie script code ',
    'Juergen email 24.11.2020 - Cookiehinweis\r\n',
    '',
    '2020-11-24 00:00:00',
    '',
    '15min',
    '2020-11-24 09:40:00',
    '2020-11-24 09:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    894,
    185,
    'Add FR Stadtjubiläums logo on homepage',
    'convert from pdf to jpg',
    '',
    '2020-11-25 00:00:00',
    '',
    '15min',
    '2020-11-25 14:00:00',
    '2020-11-25 14:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    895,
    258,
    'Clone WP+DB  & upload ',
    'Clone with duplicator & upload to cloud with pw proteted link for download\r\n\r\nhttp://cloud.rixner.info/index.php/s/YmvIM3LL0P3hTY0\r\npassword - inter+2020+flexWS\r\n',
    '',
    '2020-11-26 00:00:00',
    '',
    '1 h',
    '2020-11-27 13:00:00',
    '2020-11-27 15:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    896,
    55,
    'Update Matomo',
    '',
    '',
    '2020-11-27 00:00:00',
    '',
    '',
    '2020-11-27 10:00:00',
    '2020-11-27 12:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    897,
    74,
    'Change Corona baner image',
    '',
    '',
    '2020-11-30 00:00:00',
    '',
    '15min',
    '2020-11-30 10:00:00',
    '2020-11-30 10:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    898,
    56,
    'Remove GH X-mass video',
    '',
    '',
    '2022-01-04 00:00:00',
    '',
    '15min',
    '2022-01-04 19:30:00',
    '2022-01-04 19:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    899,
    222,
    'update PHP 7.4',
    '',
    '',
    '2020-12-11 00:00:00',
    '',
    '15 min',
    '2020-12-10 16:00:00',
    '2020-12-10 16:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    900,
    126,
    'update PHP 7.4',
    '',
    '',
    '2020-12-11 00:00:00',
    '',
    '15 min',
    '2020-12-11 10:00:00',
    '2020-12-11 10:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    901,
    258,
    'zoom meetings US',
    'Fr 09.10. 1 std.\r\nFr 16.10. 1 std.\r\nFr 23.10. 1 std.\r\nFr 06.11. 0,5 std.\r\nMo 09.11. 0,5 std.\r\n---------\r\n4 std',
    '',
    '2020-12-11 00:00:00',
    '',
    '',
    '2020-12-11 00:00:00',
    '2020-12-11 04:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    902,
    87,
    'Changes Email Cornelia Kohler - 15.12.2020.',
    '',
    '',
    '2020-12-15 00:00:00',
    '',
    '30min',
    '2020-12-16 14:00:00',
    '2020-12-16 14:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    903,
    168,
    'New tracking code in order -plugin install config',
    '',
    '',
    '2020-12-15 00:00:00',
    '',
    '',
    '2020-12-16 09:00:00',
    '2020-12-16 12:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    904,
    53,
    'change password ',
    '',
    '',
    '2023-03-20 00:00:00',
    '',
    '',
    '2023-03-20 10:00:00',
    '2023-03-20 10:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    905,
    250,
    'Change OCTO-flex Typenliste (3 pdfs)',
    '',
    '',
    '2020-12-22 00:00:00',
    '',
    '15min',
    '2020-12-22 17:30:00',
    '2020-12-22 17:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    906,
    59,
    'Chnage php version ',
    '',
    '',
    '2020-12-24 00:00:00',
    '',
    '15min',
    '2020-12-30 11:40:00',
    '2020-12-30 11:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    907,
    54,
    'Add Cookie-Consent-Tool code + update all plugins + wp',
    '',
    '',
    '2020-12-30 00:00:00',
    '',
    '',
    '2020-12-30 11:15:00',
    '2020-12-30 11:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    908,
    124,
    'Korrekturen - Email 05.01.2021. - ',
    '',
    '',
    '2021-01-06 00:00:00',
    '',
    '30min',
    '2021-01-11 10:13:00',
    '2021-01-11 10:43:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    909,
    202,
    'Korrekturen - Email 05.01.2021. -',
    '',
    '',
    '2021-01-06 00:00:00',
    '',
    '30min',
    '2021-01-11 11:00:00',
    '2021-01-11 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    910,
    202,
    'Korrekturen - Email 11.01.2021. -',
    '',
    '',
    '2021-01-11 00:00:00',
    '',
    '15min',
    '2021-01-11 11:10:00',
    '2021-01-11 11:25:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    911,
    180,
    'Changes',
    '1. php version check\r\n2. change email adresse in header\r\n3. remove subpages\r\n4. full update wordpress',
    '',
    '2021-01-11 00:00:00',
    '',
    '30min',
    '2021-01-12 21:00:00',
    '2021-01-12 22:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    913,
    253,
    'Additional Jobs (01.03. - )',
    'WED 10.03.2020.\r\n1h - update wordpress + all plugins (monthly)\r\n\r\nTUE 16.03.2021\r\n30min - add new user christian@techmira.com Config access\r\n\r\nTUE 23.03.2021\r\n15min - reselect shipping zone - remove UK from Europe and manually add all other EU countries to zone \r\n\r\nMON 06.04.2021.\r\n15min - update youtube/facebook links on main techmira site\r\n- add Nina and Peer as admins on main techmira site\r\n\r\nFRI 09.04.2021.\r\n15min - add Austria Mira Skin DE\r\n\r\nFRI 16.04.2021.\r\n1h - update wordpress + all plugins (monthly)\r\n\r\nMON 19.04.2021.\r\n2h - Sezzle Setup\r\n\r\nTUE 21.04.2021.\r\n15min - Setup recovrr-de site (put de version online)\r\n\r\nFRI 15.04.\r\n1h - update wordpress + all plugins (monthly)',
    '-87.5 eur',
    '2021-03-10 00:00:00',
    '',
    '',
    '2021-03-01 11:55:00',
    '2021-03-01 11:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    914,
    56,
    'Remove x-mass from header',
    '',
    '',
    '2021-01-13 00:00:00',
    '',
    '15min',
    '2021-01-13 14:30:00',
    '2021-01-13 14:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    916,
    162,
    'Update Wordpress + plugins + change php version 7.2 - > 7.4',
    '',
    '35',
    '2021-01-13 00:00:00',
    '',
    '30min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    923,
    55,
    'Problem with termine - instructions',
    'Email Both Katja  - 15.01.2021.',
    '',
    '2021-01-15 00:00:00',
    '',
    '30min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    924,
    258,
    'New header',
    '',
    '',
    '2021-01-21 00:00:00',
    '',
    '3h',
    '2021-01-21 12:20:00',
    '2021-01-21 15:50:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    925,
    5,
    'Delete pdf from server + reprograming htacess file for redaktion/ acess',
    '',
    NULL,
    '2018-10-30 00:00:00',
    '',
    '30min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    926,
    52,
    'Update php version / wp version / add js script into header',
    '',
    '',
    '2021-01-25 00:00:00',
    '',
    '30min',
    '2021-01-25 08:30:00',
    '2021-01-25 09:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    928,
    106,
    '2 tasks',
    '1. remove video from header\r\n2. change text on page Jobs\r\n\r\nFTP problem!!!',
    '',
    '2021-01-27 00:00:00',
    '',
    '30min',
    '2021-01-27 18:00:00',
    '2021-01-27 18:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    929,
    243,
    'Clone website',
    '',
    '',
    '2021-02-08 00:00:00',
    '',
    '1h',
    '2021-02-08 14:40:00',
    '2021-02-08 15:40:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    930,
    261,
    'Mira Pet Canada',
    '',
    '',
    '2021-02-10 00:00:00',
    'low',
    '10h',
    '2021-02-26 09:43:00',
    '2021-02-26 09:43:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    931,
    258,
    'Header reprograming',
    '',
    '',
    '2021-02-11 00:00:00',
    '',
    '3h',
    '2021-02-10 22:30:00',
    '2021-02-11 01:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    932,
    169,
    'Chnage php version 7.2->7.4',
    '',
    '',
    '2022-02-01 00:00:00',
    '',
    '',
    '2022-02-02 08:43:00',
    '2022-02-02 09:43:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    933,
    187,
    'New Impressum/ Datenshutz content',
    '',
    '',
    '2021-02-11 00:00:00',
    '',
    '30min',
    '2021-02-11 15:30:00',
    '2021-02-11 16:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    934,
    62,
    'Chnages Tino email 11.02.2021.',
    '',
    '',
    '2021-02-11 00:00:00',
    '',
    '30min',
    '2021-02-12 12:30:00',
    '2021-02-12 12:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    936,
    258,
    'Setting 2FA plugin ',
    '',
    '',
    '2021-02-19 00:00:00',
    '',
    '30min',
    '2021-02-19 15:00:00',
    '2021-02-19 15:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    937,
    54,
    'Update php version ',
    '',
    '',
    '2021-02-17 00:00:00',
    '',
    '15min',
    '2021-02-17 14:20:00',
    '2021-02-17 14:35:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    938,
    258,
    'Allegion requests - FREE',
    '',
    '',
    '2021-02-16 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    939,
    269,
    'Clone site',
    '',
    '',
    '2021-02-25 00:00:00',
    '',
    '1h',
    '2021-02-27 20:00:00',
    '2021-02-27 21:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    940,
    258,
    'Install/Config  W3 CACHE plugin ',
    '',
    '',
    '2021-02-26 00:00:00',
    '',
    '30min',
    '2021-02-27 12:00:00',
    '2021-02-27 12:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    941,
    258,
    'Favicon in backend + 404 page config',
    '',
    '',
    '2021-03-02 00:00:00',
    '',
    '45min',
    '2021-03-02 11:00:00',
    '2021-03-02 11:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    942,
    258,
    'Install and config Contact Form 7 Image Captcha',
    '',
    '',
    '2021-03-03 00:00:00',
    '',
    '1h',
    '2021-03-03 09:45:00',
    '2021-03-03 11:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    943,
    150,
    'Korrekturen - Email 08.03.2021. -',
    '1. new project\r\n2. change address ',
    '',
    '2021-03-09 00:00:00',
    '',
    '30min',
    '2021-03-09 10:00:00',
    '2021-03-09 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    944,
    269,
    'Changes on clone websites',
    '1h - install matomo\r\n1h - set site online / backup old version',
    '',
    '2021-03-15 00:00:00',
    '',
    '2h',
    '2021-03-17 10:15:00',
    '2021-03-17 12:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    945,
    253,
    'Additional Jobs (01.01. - )',
    'TUE 12.01.2021.\r\nproblem with paypall  - https://wordpress.org/support/topic/paypal-error-10412-2/\r\n\r\nTUE 12.01.2021.\r\n1h - update wordpress + all plugins (monthly)\r\n\r\nMON 25.01.2021.\r\n15min - add Recovrr site link to Techmira EUROPE \r\n\r\nMON 01.02.2021.\r\n15min - remove paypall payment method from Recovrr site and change payment method image on footer\r\n\r\n\r\nWED 10.02.2021.\r\n1h - update wordpress + all plugins (monthly)\r\n\r\nSAT \r\n1.5h Italian version  - cleanyteethdogs\r\n',
    '',
    '2021-01-12 00:00:00',
    'low',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    947,
    85,
    'Add phone | remove fax - Impressum ',
    '',
    '',
    '2021-03-15 00:00:00',
    '',
    '15min',
    '2021-03-15 14:10:00',
    '2021-03-15 14:25:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    948,
    269,
    'Changes on clone websites',
    '1h - skype meeting Juergen\r\n2h - working on changes (demo version)\r\n1h - Juergen tehnical support 10.03.2021.\r\n1h - create content CATUVAB R&D page',
    '',
    '2021-03-09 00:00:00',
    '',
    '2h',
    '2021-03-17 10:18:00',
    '2021-03-17 15:18:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    949,
    257,
    'Revert last home page changes - client demand',
    '',
    '',
    '2021-04-28 00:00:00',
    '',
    '15min',
    '2021-04-28 11:10:00',
    '2021-04-28 11:25:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    950,
    56,
    'Remove IFS logo from footer / 3 lang/responsive',
    '',
    '',
    '2021-09-29 00:00:00',
    '',
    '30min',
    '2021-09-29 14:00:00',
    '2021-09-29 14:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    951,
    106,
    'Changes',
    '1. full wp + plugin update\r\n2. daten + consent tool',
    '',
    '2021-03-23 00:00:00',
    '',
    '1h',
    '2021-03-24 14:29:00',
    '2021-03-24 15:29:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    952,
    173,
    'Changes',
    '1.change logo\r\n2. full wp + plugin update\r\n3. daten + consent tool',
    '',
    '2021-03-23 00:00:00',
    '',
    '1h',
    '2021-03-24 14:29:00',
    '2021-03-24 15:29:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    953,
    56,
    'Update Wordpress + plugins',
    '',
    '',
    '2021-03-25 00:00:00',
    '',
    '1h',
    '2021-03-25 08:56:00',
    '2021-03-25 09:56:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    954,
    188,
    'New Impressum/Datenshutz + CookieConsentTool',
    '',
    '',
    '2021-03-28 00:00:00',
    '',
    '30min',
    '2021-03-29 10:30:00',
    '2021-03-29 11:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    955,
    189,
    'New Impressum/Datenshutz + CookieConsentTool',
    '',
    '',
    '2021-03-28 00:00:00',
    '',
    '30min',
    '2021-03-29 10:00:00',
    '2021-03-29 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    956,
    97,
    'Redirect',
    '',
    '',
    '2021-03-28 00:00:00',
    '',
    '15min',
    '2021-03-29 10:30:00',
    '2021-03-29 10:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    957,
    182,
    'changes',
    '1. Remove blue popup window\r\n2. text corrections',
    '',
    '2021-03-30 00:00:00',
    '',
    '15min',
    '2021-03-30 14:00:00',
    '2021-03-30 14:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    958,
    222,
    'Changes',
    '1. Create 2 new pages for Stellenangebote\r\n2. Change text on homepage (connect two pages)',
    '',
    '2021-04-06 00:00:00',
    '',
    '30min',
    '2021-04-06 15:00:00',
    '2021-04-06 16:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    959,
    93,
    'changes',
    '',
    '',
    '2021-04-06 00:00:00',
    '',
    '',
    '2021-04-07 10:34:00',
    '2021-04-07 11:34:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    960,
    202,
    'Changes Ingrig Ossig - 09.04.2021. -READY',
    '1. Add new termins from email (draft mode)\r\n2. Add new termine - Angelika Obert   ',
    '',
    '2021-04-09 00:00:00',
    '',
    '1h',
    '2021-04-13 21:49:00',
    '2021-04-13 20:49:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    961,
    161,
    'New logo ',
    '',
    '',
    '2021-04-13 00:00:00',
    '',
    '15min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    964,
    52,
    'Chnage text on page Stellenangebote',
    '',
    '',
    '2021-04-20 00:00:00',
    '',
    '15min',
    '2021-04-20 16:05:00',
    '2021-04-20 16:20:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    965,
    56,
    'Add 2 contacts to page stellenangebote',
    'Cathrin Caspari email 23.04',
    '',
    '2021-04-23 00:00:00',
    '',
    '30min',
    '2021-04-27 09:00:00',
    '2021-04-27 09:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    966,
    92,
    'Change email text error',
    'Mathias Staenke - email - 28.04.2021.',
    '',
    '2021-04-28 00:00:00',
    '',
    '15min',
    '2021-04-28 10:40:00',
    '2021-04-28 10:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    967,
    257,
    'New page DNLA-Potenzialanalyse + Home page changes',
    '1. Two new widgets - \r\n1.1. Logos widget\r\n1.2. PDF widget\r\n\r\nDesktop + responsive config',
    '',
    '2021-03-16 00:00:00',
    '',
    '2h',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    969,
    63,
    'Changes',
    'Thomas Kaspar email 29.04.2021.\r\n1. new logo on homepage\r\n2. link to email on page Job',
    '',
    '2021-04-29 00:00:00',
    '',
    '30min',
    '2021-04-29 11:00:00',
    '2021-04-29 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    970,
    258,
    'Changing footer (logo + text on left)',
    '',
    '',
    '2021-05-12 00:00:00',
    '',
    '30min',
    '2021-05-12 10:00:00',
    '2021-05-12 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    971,
    263,
    'Cleany Teeth SWEDEN - cleanyteeth.se',
    '6/8h\r\n1. Export 2 single site from wp network\r\n2  create new wp network\r\n2. Config sites on new network',
    '',
    '2021-05-05 00:00:00',
    '',
    '8h',
    '2021-05-12 08:00:00',
    '2021-05-12 15:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    972,
    202,
    'New events - Hugo email 09.01.2021.',
    '',
    '',
    '2022-01-10 00:00:00',
    '',
    '30min',
    '2022-01-10 11:00:00',
    '2022-01-10 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    973,
    258,
    'Add Alegion logo on footer',
    '',
    '',
    '2021-05-04 00:00:00',
    '',
    '30min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    974,
    72,
    'Changes',
    'E-Mail 21.05.2021.',
    '',
    '2021-05-21 00:00:00',
    '',
    '',
    '2021-05-21 14:00:00',
    '2021-05-21 15:36:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    975,
    91,
    'Errors on website',
    '1. warrnings old plugins versions /new php version ',
    '',
    '2021-05-28 00:00:00',
    '',
    '',
    '2021-05-28 10:00:00',
    '2021-05-28 10:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    976,
    202,
    'New Termine',
    'Hugo email 10.08.2021.',
    '',
    '2021-08-10 00:00:00',
    '',
    '',
    '2021-08-13 12:05:00',
    '2021-08-13 12:20:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    978,
    92,
    'Setting db conncetion',
    'Settign db conncetion after domain sozialarbeit.at-web.cc was disabled',
    '',
    '2021-06-03 00:00:00',
    '',
    '15min',
    '2021-06-03 10:00:00',
    '2021-06-03 10:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    979,
    119,
    'Set temp content on page Team',
    '',
    '',
    '2021-06-08 00:00:00',
    '',
    '15min',
    '2021-06-08 12:00:00',
    '2021-06-08 12:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    980,
    258,
    'Full update WP+plugins',
    '',
    '',
    '2021-09-29 00:00:00',
    '',
    '30min',
    '2021-09-29 14:10:00',
    '2021-09-29 14:40:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    981,
    242,
    'New button \'Download\'',
    '',
    '',
    '2021-06-21 00:00:00',
    '',
    '30min',
    '2021-06-21 15:30:00',
    '2021-06-21 16:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    982,
    161,
    'GERMAN MARKET UPDATE ',
    'GERMAN MARKET UPDATE 75,00 €',
    '',
    '2021-06-22 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    983,
    258,
    'Set rel=noopener - footer logo link',
    '',
    '',
    '2021-06-24 00:00:00',
    '',
    '15min',
    '2021-06-24 14:00:00',
    '2021-06-24 14:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    984,
    119,
    'New Datenshutz text',
    '',
    '',
    '2021-06-28 00:00:00',
    '',
    '30min',
    '2021-06-28 10:00:00',
    '2021-06-28 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    986,
    74,
    'changes Mail 08.07.2021',
    '1. Neuer E-Mail-Account für Florentine Hemmerling:\r\n2. Terminkalender auf chilli-freiburg.de wieder aktivieren:\r\n3. Ebenso den Reiter „Wo geht was?“ wieder freischalten. Ebenefalls am 16.7.',
    '',
    '2021-07-08 00:00:00',
    '',
    '30min',
    '2021-07-16 11:13:00',
    '2021-07-16 11:43:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    987,
    54,
    'Multistep formular',
    '',
    '',
    '2021-07-14 00:00:00',
    '',
    '4h',
    '2021-07-14 16:00:00',
    '2021-07-14 20:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    988,
    202,
    'Bildauswahl Bubales Add images',
    '',
    '',
    '2021-07-14 00:00:00',
    '',
    '30min',
    '2021-07-14 19:26:00',
    '2021-07-14 19:56:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    989,
    220,
    'Add Logo „Zusatzqualifikation Sportkardiologie“',
    'Thomas Kaspar - email 25.07.2021.',
    '',
    '2021-07-26 00:00:00',
    '',
    '15min',
    '2021-07-26 09:20:00',
    '2021-07-26 09:35:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    990,
    54,
    'Newsticker',
    '',
    '',
    '2021-07-20 00:00:00',
    '',
    '2h',
    '2021-07-22 08:26:00',
    '2021-07-22 10:26:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    991,
    92,
    'Fix hacking site',
    '1. remove hacked files\r\n2. update all plugins + wp\r\n3. install and config security plugins \r\n4. change db password',
    '',
    '2021-07-23 00:00:00',
    '',
    '1h',
    '2021-07-23 09:25:00',
    '2021-07-23 10:25:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    992,
    220,
    'logo dimension bug',
    'Thomas Kaspar - email 14.07.2021.',
    '',
    '2021-07-14 00:00:00',
    '',
    '15min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    993,
    144,
    'Update site (regular six months)',
    '',
    '',
    '2023-02-10 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    994,
    202,
    'changes Mail 29.05.2021',
    'Update php version\r\nremove Termine moderation lines',
    NULL,
    '2021-05-31 00:00:00',
    '',
    '15min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    995,
    202,
    'changes Mail 27.07.2021',
    '- bitte korrigieren Sie auf der homepage unter Terminen beim 12. August anstelle von:\r\n\r\nEs liest: Angelika Obert\r\nEs singt: Annelisa Nathan\r\n\r\nMusik: Annelisa Nathan/ Sopran\r\n\r\nMuß es heißen            Musik: Liz Fréon, Harfe und Anne-Lisa Nathan, Mezzosopran-',
    '',
    '2021-07-27 00:00:00',
    '',
    '',
    '2021-08-10 13:10:00',
    '2021-08-10 13:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    996,
    202,
    'changes email 31.08 - Aleks from Ohrid ',
    'Hugo email 31.08',
    '',
    '2021-08-31 00:00:00',
    '',
    '',
    '2021-08-31 19:15:00',
    '2021-08-31 19:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    997,
    74,
    'Email accounts - add /edit/delete ',
    'Email 08.01.2020. Michaela Moser',
    NULL,
    '2020-01-08 00:00:00',
    '',
    '30min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    998,
    255,
    'Change logo',
    '',
    '',
    '2021-08-27 00:00:00',
    '',
    '15min',
    '2021-08-27 16:00:00',
    '2021-08-27 16:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    999,
    202,
    'changes Mail 03.08.2021 - add image to event',
    'Hugo email',
    NULL,
    '2021-08-03 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1000,
    202,
    'Add new termine ',
    'Email Ingrid Ossig - 05.05.2021.',
    NULL,
    '2021-05-06 00:00:00',
    '',
    '15min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1001,
    65,
    'Update php version 7.4 + wp update',
    '',
    '',
    '2021-09-06 00:00:00',
    '',
    '15min',
    '2021-09-06 10:30:00',
    '2021-09-06 10:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1002,
    207,
    'Fix hacking site 06.09.2021. + full update',
    '',
    '',
    '2021-09-06 00:00:00',
    '',
    '1h',
    '2021-09-06 13:39:00',
    '2021-09-06 14:39:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1003,
    53,
    'Change cookie notice text',
    '',
    '',
    '2021-09-07 00:00:00',
    '',
    '15min',
    '2021-09-07 12:15:00',
    '2021-09-07 12:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1005,
    202,
    'Add new termine ',
    'Email Hugo 02.09.2021. -  (4. November 2021 )',
    '',
    '2021-09-04 00:00:00',
    '',
    '15min',
    '2021-10-13 12:00:00',
    '2021-10-13 12:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1006,
    268,
    'Sortierfehler für Veranstaltungen ',
    '',
    '',
    '2022-06-30 00:00:00',
    '',
    '30min',
    '2022-06-30 16:00:00',
    '2022-06-30 16:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1007,
    85,
    'Renew SSL ',
    '',
    NULL,
    '2021-01-26 00:00:00',
    '',
    '15min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1009,
    92,
    'Renew SSL ',
    'https://admin.df.eu/kunde/index.php5?module=ssl',
    '',
    '2021-09-27 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1010,
    82,
    'Change Image on homepage',
    '',
    '',
    '2021-09-29 00:00:00',
    '',
    '',
    '2021-09-29 12:20:00',
    '2021-09-29 12:35:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1011,
    56,
    'Create and upload 2 qr code (Alexander Tesch und Gregor Schnell )',
    '',
    NULL,
    '2021-03-22 00:00:00',
    '',
    '30min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1012,
    258,
    'NL translate',
    ' + 2h Subpages Blue Widget V2',
    '',
    '2021-10-29 00:00:00',
    '',
    '14h',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1013,
    202,
    'chnages',
    'Email Ingrid 11.10.2021.',
    '',
    '2021-10-11 00:00:00',
    '',
    '',
    '2021-10-11 16:30:00',
    '2021-10-11 16:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1014,
    53,
    'Email 27.10.2021.',
    'change hardocded word -Träger:- to - Zuschüsse von:-',
    '',
    '2021-10-27 00:00:00',
    '',
    '15min',
    '2021-10-27 14:30:00',
    '2021-10-27 14:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1015,
    74,
    'New Email accounts',
    'Email 27.07.2022. Michaela Moser\r\n\r\n1.) sainovic@chilli-freiburg.de\r\n2.) braun@chilli-freiburg.de\r\n3.) schmidlin@chilli-freiburg.de\r\n',
    '',
    '2022-07-28 00:00:00',
    '',
    '30min',
    '2022-07-28 09:20:00',
    '2022-07-28 09:50:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1016,
    202,
    'chnages',
    'Email Ingrid 20.09.2021. -',
    '',
    '2021-09-20 00:00:00',
    '',
    '',
    '2021-10-13 12:00:00',
    '2021-10-13 12:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1017,
    92,
    'News sistem  - Page Quartiersarbeit Brühl',
    '',
    '',
    '2021-10-22 00:00:00',
    '',
    '8h',
    '2021-10-27 11:25:00',
    '2021-10-27 19:25:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1019,
    250,
    'Econda scripts implementation + testing',
    '',
    '',
    '2021-11-03 00:00:00',
    '',
    '8h',
    '2021-11-05 18:00:00',
    '2021-11-06 02:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1020,
    220,
    'changes Mail 26.09.2021',
    'change formular checkbox labels\r\nfont size correction - whole website\r\n',
    NULL,
    '2021-09-27 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1021,
    182,
    'Renew SSL - nierenzentrum-emmendingen-waldkirch',
    '',
    '',
    '2022-06-14 00:00:00',
    '',
    '',
    '2022-06-14 10:30:00',
    '2022-06-14 10:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1022,
    255,
    'Corrections ',
    '1. Email missing detail page //bug\r\n2. Search without button click - offer->30min\r\n3. Missing text detail page //bug\r\n4. Sorting veranstaltungen - offer->60 min\r\n5. booking form exclude events - offer->60min\r\n',
    '',
    '2021-10-27 00:00:00',
    'low',
    '2,5h',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'open'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1023,
    53,
    'Email 01.10.2021.',
    '',
    NULL,
    '2021-10-01 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1025,
    286,
    'Install config OwnCloud ',
    '',
    '',
    '2021-10-28 00:00:00',
    '',
    '12h',
    '2021-11-10 00:00:00',
    '2021-11-10 12:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1026,
    258,
    'Full translate',
    '14h',
    NULL,
    '2021-05-31 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1027,
    258,
    'Reprograming Form Widget (add image field)',
    '',
    '',
    '2022-03-15 00:00:00',
    '',
    '30min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1028,
    250,
    'Changes',
    '1. Set title for all OCTO-Flex products (174 items)\r\n2. bug fix - change encode characters manual 15 attributes',
    '',
    '2021-10-25 00:00:00',
    '',
    '1h',
    '2021-11-03 10:00:00',
    '2021-11-03 11:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1029,
    74,
    'Changes Email 03.11.2021. Tatjana Kipf',
    '1 remove right menu page Gewinnspiele\r\n2.footer bug\r\n3.Findefuchs section - add Adventskalender',
    '',
    '2021-11-04 00:00:00',
    '',
    '30min',
    '2021-11-04 10:10:00',
    '2021-11-04 10:40:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1030,
    77,
    'Renew SSL ',
    '',
    NULL,
    '2021-09-28 00:00:00',
    '',
    '15min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1031,
    254,
    'Breadcrump problem ',
    'https://www.48grad.de/miet-equipment/mobiliar/theken/',
    '',
    '2021-11-05 00:00:00',
    '',
    '15min',
    '2021-11-05 17:00:00',
    '2021-11-05 17:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1032,
    112,
    'Chnages Juergen email - 18.11.2021.',
    '',
    '',
    '2021-11-18 00:00:00',
    '',
    '1h',
    '2021-11-18 13:59:00',
    '2021-11-18 14:59:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1033,
    126,
    'change headline text background and size',
    '',
    '',
    '2021-11-29 00:00:00',
    '',
    '15min',
    '2021-11-29 16:35:00',
    '2021-11-29 16:50:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1034,
    282,
    'Add Kunden + Referenzen',
    '',
    '',
    '2021-12-02 00:00:00',
    '',
    '4h',
    '2021-12-02 13:00:00',
    '2021-12-02 17:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1035,
    112,
    'DSVGO',
    '',
    '',
    '2021-12-11 00:00:00',
    '',
    '30min',
    '2021-12-12 21:30:00',
    '2021-12-12 22:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1036,
    53,
    'change password ',
    '',
    NULL,
    '2020-12-21 00:00:00',
    '',
    '15min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1037,
    56,
    'Set up GH X-mass video',
    '',
    NULL,
    '2020-12-01 00:00:00',
    '',
    '15min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1038,
    182,
    'Konrad Buchholz - text changes- email 16.12',
    '',
    '',
    '2021-12-16 00:00:00',
    '',
    '30min',
    '2021-12-20 10:00:00',
    '2021-12-20 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1039,
    116,
    'Remove Allfair & co spart',
    '',
    '',
    '2022-01-04 00:00:00',
    '',
    '2h',
    '2022-01-10 08:49:00',
    '2022-01-10 10:49:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1040,
    56,
    'Set up GH X-mass video',
    '',
    '',
    '2021-12-14 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1041,
    248,
    'New Widget - 2 text boxes',
    'Habé\r\n1 New Widget - 2 text boxes 1h\r\n3.Full Update  - 5min\r\n\r\n\r\nVersandGut\r\n1.New Widget - 2 text boxes - 1h\r\n2.Ansprechpartner - 1h',
    '',
    '2022-01-05 00:00:00',
    '',
    '3h',
    '2022-01-10 11:30:00',
    '2022-01-10 14:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1042,
    202,
    'Change event date - Hugo email 01.9',
    '',
    '',
    '2023-09-04 00:00:00',
    '',
    '15min',
    '2023-09-04 09:30:00',
    '2023-09-04 09:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1043,
    74,
    'Newsletter  + new domain - FEB 2021 - fix price',
    '1 Newsletter - done + button\r\n2.Domains transfer and redirect\r\n3. change menu item\r\n4. create 6 new email accounts ',
    '',
    '2022-01-12 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1044,
    87,
    'Changes',
    '1.Change main site color - Magenta to Blau \r\n2. SSL\r\n3. changes by phone -Biljana',
    '',
    '2022-01-17 00:00:00',
    '',
    '3h',
    '2022-01-19 09:51:00',
    '2022-01-19 12:51:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1045,
    258,
    'Programing ',
    '1. Blog - 8h\r\n2. Video widget - 2h\r\n3. Accordion widget - 2h\r\n4. extra button in header section for posts - 1h',
    '',
    '2022-01-17 00:00:00',
    '',
    '',
    '2022-01-17 09:28:00',
    '2022-01-17 22:28:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1046,
    87,
    'Chnages from email - 12.01.2022',
    '',
    '',
    '2022-01-12 00:00:00',
    '',
    '30min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1047,
    250,
    'English version',
    '',
    '',
    '2022-01-20 00:00:00',
    'low',
    '16h',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1048,
    250,
    'English version - Additional jobs',
    '- Translation of texts and input (legal pages) - 2h\r\n- Removing Key-flex product\r\n- Popup install and config\r\n- Antibag new videos convert and update\r\n- Antibag zertifikate',
    '',
    '2022-01-20 00:00:00',
    '',
    '6h',
    '2022-01-24 03:52:00',
    '2022-01-24 09:52:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1049,
    74,
    'New Email account',
    'Email 13.08.2021. Michaela Moser',
    NULL,
    '2021-08-13 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1051,
    128,
    'Change -donkey walking dates',
    '',
    NULL,
    '2021-02-12 00:00:00',
    '',
    '15min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1052,
    127,
    'Chnage php version 7.2->7.4',
    '',
    NULL,
    '2021-02-11 00:00:00',
    '',
    '15min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1053,
    144,
    'Update site (regular six months)',
    '',
    NULL,
    '2021-07-27 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1054,
    168,
    'Chnages from email 18.02.2022.',
    '1. Add UPS, DPD und Hermes trackingcode\r\n2. set phone filed as a mandatory',
    '',
    '2022-02-18 00:00:00',
    '',
    '30min',
    '2022-02-18 09:32:00',
    '2022-02-18 10:32:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1055,
    248,
    'CSP',
    '',
    '',
    '2022-02-18 00:00:00',
    '',
    '1h',
    '2022-02-20 12:20:00',
    '2022-02-20 13:20:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1056,
    280,
    'CSP',
    '',
    '',
    '2022-02-18 00:00:00',
    '',
    '1h',
    '2022-02-20 12:20:00',
    '2022-02-20 13:20:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1057,
    52,
    'Change opening hours in footer',
    '',
    '',
    '2022-02-24 00:00:00',
    '',
    '15min',
    '2022-02-24 09:20:00',
    '2022-02-24 09:35:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1058,
    252,
    'New wp user',
    '',
    '',
    '2022-02-25 00:00:00',
    '',
    '15min',
    '2022-02-25 15:15:00',
    '2022-02-25 15:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1059,
    234,
    'Fix broken website',
    '',
    '',
    '2022-02-25 00:00:00',
    '',
    '1h',
    '2022-02-25 14:49:00',
    '2022-02-25 15:49:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1060,
    202,
    'New termine',
    '23. März 2023 | 19 Uhr \r\nRegina Scheer \r\n Gott wohnt im Wedding\r\n\r\n\r\n',
    '',
    '2023-01-24 00:00:00',
    '',
    '15min',
    '2023-01-24 10:00:00',
    '2023-01-24 10:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1061,
    74,
    'Two new category for 4familly',
    '',
    '',
    '2022-02-28 00:00:00',
    '',
    '15min',
    '2022-02-28 01:00:00',
    '2022-02-28 01:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1062,
    220,
    'Update php version + wp + plugins',
    '',
    NULL,
    '2021-10-26 00:00:00',
    '',
    '30min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1063,
    207,
    'Backup db',
    '',
    '',
    '2022-03-07 00:00:00',
    '',
    '15min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1064,
    119,
    'Reprograming website WP',
    '',
    '',
    '2022-03-07 00:00:00',
    '',
    '12h',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1065,
    252,
    'Change user access in backend',
    '',
    '',
    '2022-03-07 00:00:00',
    '',
    '20min',
    '2022-03-07 11:29:00',
    '2022-03-07 11:49:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1066,
    207,
    'Support',
    '8.3. tests mit subdomains 30 min\r\n9.3. Hotline m. IONOS, tests 60 min\r\n10.3. install website on Juergen HE pack 45min',
    '',
    '2022-03-08 00:00:00',
    '',
    '120min',
    '2022-03-14 08:14:00',
    '2022-03-14 10:29:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1067,
    252,
    'Telefonsupport',
    '',
    '',
    '2022-03-08 00:00:00',
    '',
    '30 min',
    '2022-03-08 10:00:00',
    '2022-03-08 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1068,
    258,
    'Create new wp account',
    '',
    NULL,
    '2021-11-02 00:00:00',
    '',
    '15min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1069,
    116,
    'Move website to new provider',
    '',
    '',
    '2022-03-09 00:00:00',
    '',
    '1h',
    '2022-03-31 08:35:00',
    '2022-03-31 09:35:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1070,
    258,
    'Change OneTrust Cookies Consent script',
    '',
    '',
    '2022-03-08 00:00:00',
    '',
    '15min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1071,
    74,
    '2 new Email accounts',
    'Email 16.09.2021. Michaela Moser',
    NULL,
    '2021-09-16 00:00:00',
    '',
    '15min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1072,
    258,
    'Reprograming Form Widget (dynamic form field)',
    '',
    '',
    '2022-03-10 00:00:00',
    '',
    '30min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1073,
    185,
    '2 Formulars  - subdomain',
    '',
    '',
    '2022-03-23 00:00:00',
    '',
    '4h',
    '2022-03-29 08:23:00',
    '2022-03-29 12:23:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1074,
    220,
    'New team member',
    '',
    '',
    '2022-03-24 00:00:00',
    '',
    '15min',
    '2022-03-25 10:30:00',
    '2022-03-25 11:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1075,
    202,
    'Change info text on top of the termine',
    '',
    NULL,
    '2022-02-28 00:00:00',
    '',
    '15min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1077,
    185,
    'Add magazin cover image on right',
    '- get image from pdf\r\n- Chnange DW template',
    '',
    '2022-03-30 00:00:00',
    '',
    '30min',
    '2022-03-30 10:15:00',
    '2022-03-30 10:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1078,
    62,
    '06.05.2022. SSL ',
    '',
    '',
    '2022-04-07 00:00:00',
    '',
    '',
    '2022-04-12 10:00:00',
    '2022-04-12 10:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1079,
    258,
    'Instal and config formular redirection plugin ',
    '',
    '',
    '2022-04-08 00:00:00',
    '',
    '30min',
    '2022-04-12 10:00:00',
    '2022-04-12 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1080,
    82,
    'Add meta-tag ',
    '',
    '',
    '2022-04-22 00:00:00',
    '',
    '15min',
    '2022-04-22 10:40:00',
    '2022-04-22 10:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1081,
    202,
    'New termine',
    '7. April 2022 | 19.30\r\nDalia Marx \r\nDurch das Jüdische Jahr',
    '',
    '2022-03-25 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1082,
    74,
    '2 new Email accounts',
    'Email 11.03.2022. Michaela Moser\r\n\r\nwenninger@lust-auf-regio.de\r\nwenninger@chilli-freiburg.de',
    NULL,
    '2022-03-14 00:00:00',
    '',
    '15min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1083,
    77,
    'Renew SSL ',
    '',
    NULL,
    '2021-11-04 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1085,
    101,
    'Renew SSL ',
    '',
    '',
    '2022-05-16 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1086,
    188,
    'Renew SSL',
    '',
    '',
    '2022-06-13 00:00:00',
    '',
    '15min',
    '2022-06-13 10:40:00',
    '2022-06-13 10:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1087,
    280,
    'Fix bug - ordering Ansprechpartner',
    'New usercentrics script',
    '',
    '2022-06-01 00:00:00',
    '',
    '30min',
    '2022-06-01 15:00:00',
    '2022-06-01 15:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1088,
    182,
    'Changes',
    '1. New email addresse\r\n2. textual changes',
    '',
    '2022-06-08 00:00:00',
    '',
    '30min',
    '2022-06-08 10:04:00',
    '2022-06-08 10:34:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1090,
    116,
    'Create editor access Stefan Duncker',
    '',
    '',
    '2022-06-13 00:00:00',
    '',
    '15min',
    '2022-06-13 10:00:00',
    '2022-06-13 10:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1091,
    189,
    'Renew SSL',
    '',
    NULL,
    '2022-05-16 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1092,
    187,
    'Renew SSL ',
    '',
    '',
    '2022-05-16 00:00:00',
    '',
    '',
    '2022-06-14 10:40:00',
    '2022-06-14 10:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1093,
    199,
    'Renew SSL - www.stein-restaurator.de',
    '',
    '',
    '2022-06-21 00:00:00',
    '',
    '15min',
    '2022-06-21 15:32:00',
    '2022-06-21 15:47:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1094,
    252,
    'Renew SSL - biologische-medizin-fr',
    '',
    '',
    '2022-06-14 00:00:00',
    '',
    '',
    '2022-06-14 10:25:00',
    '2022-06-14 10:40:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1095,
    291,
    'Renew SSL - www.octogone.de',
    '',
    '',
    '2022-06-13 00:00:00',
    '',
    '',
    '2022-07-13 10:11:00',
    '2022-07-13 10:26:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1096,
    56,
    'Create QR code - Manuela Neumann',
    '',
    '',
    '2023-01-25 00:00:00',
    '',
    '',
    '2023-01-25 22:40:00',
    '2023-01-25 22:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1097,
    273,
    'Product list OCTO-flex pdfs (de/en)',
    '',
    '',
    '2022-06-21 00:00:00',
    '',
    '30min',
    '2022-06-21 10:00:00',
    '2022-06-21 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1098,
    14,
    'Renew SSL - www.dr-strobel-kieferorthopaedie.de',
    '',
    '',
    '2022-06-22 00:00:00',
    '',
    '15min',
    '2022-06-22 10:00:00',
    '2022-06-22 10:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1100,
    93,
    'Renew SSL - www.usb24.info',
    '',
    '',
    '2022-06-27 00:00:00',
    '',
    '',
    '2022-06-29 10:11:00',
    '2022-06-29 10:26:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1101,
    56,
    'Pamyra4You script',
    '1. Install Pamyra4You script\r\n2. Template changes - blue box on Homepage\r\n3. Update full wp + plugins',
    '',
    '2022-06-23 00:00:00',
    '',
    '',
    '2022-06-27 09:00:00',
    '2022-06-27 14:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1102,
    82,
    'new full programming + layout    - mittlerheizung-freiburg.de',
    '',
    '',
    '2022-06-22 00:00:00',
    'middle',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1103,
    45,
    'Renew SSL - www.entwicklungsberaterin.de',
    '',
    '',
    '2022-06-30 00:00:00',
    '',
    '15min',
    '2022-06-30 16:00:00',
    '2022-06-30 16:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1104,
    291,
    'Renew SSL - www.usb24.info',
    '',
    '',
    '2022-06-14 00:00:00',
    '',
    '',
    '2022-07-14 10:18:00',
    '2022-07-14 10:33:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1105,
    91,
    'Update wp + plugins',
    '',
    NULL,
    '2022-03-03 00:00:00',
    '',
    '30min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1106,
    202,
    'Two new termine',
    '9. Juni 2022 | 19 Uhr\r\nAndré Herzberg\r\nWas aus uns geworden ist\r\n\r\n\r\n30. Juni 2022 | 19 Uhr\r\nRonen Steinke\r\nAntisemitismus in der Sprache\r\n\r\n\r\n',
    NULL,
    '2022-05-02 00:00:00',
    '',
    '30min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1107,
    93,
    'Logo „in Gold“',
    '- Auf Home im Sliderbild eingefügt\r\n- Auf der Projektseite Text und 1 Bild geändert',
    '',
    '2022-07-13 00:00:00',
    '',
    '',
    '2022-07-14 10:00:00',
    '2022-07-14 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1108,
    220,
    'Logos changes',
    'Email 13.07.2022.',
    '',
    '2022-07-14 00:00:00',
    '',
    '30min',
    '2022-07-14 11:09:00',
    '2022-07-14 12:09:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1109,
    182,
    'new mail account Peter Friedrich',
    '',
    '',
    '2022-07-14 00:00:00',
    '',
    '15 min',
    '2022-07-14 10:16:00',
    '2022-07-14 10:46:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1110,
    258,
    'Add lang doctype',
    '',
    '',
    '2022-07-15 00:00:00',
    '',
    '15min',
    '2022-07-15 12:10:00',
    '2022-07-15 12:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1111,
    65,
    'Wp update + optimization ',
    '',
    '',
    '2022-07-20 00:00:00',
    '',
    '30min',
    '2022-07-20 18:33:00',
    '2022-07-20 19:33:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1112,
    270,
    'Wp update + fix errors',
    '',
    '',
    '2022-07-21 00:00:00',
    '',
    '2h',
    '2022-07-21 11:00:00',
    '2022-07-21 14:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1113,
    74,
    'New Email account',
    'borcherding@chilli-freiburg.de\r\n',
    '',
    '2022-12-05 00:00:00',
    '',
    '15min',
    '2022-12-05 10:00:00',
    '2022-12-05 10:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1114,
    268,
    'Update WP + plugins',
    '',
    '',
    '2022-07-28 00:00:00',
    '',
    '30 min',
    '2022-07-21 11:07:00',
    '2022-07-21 11:37:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1115,
    82,
    'Renew SSL   - mittlerheizung-freiburg.de',
    '',
    '',
    '2022-06-23 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1116,
    258,
    'New formular DE',
    '',
    '',
    '2022-08-10 00:00:00',
    '',
    '',
    '2022-08-17 11:36:00',
    '2022-08-17 15:36:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1118,
    273,
    'FM <-> Woo connection DE/EN',
    '1. Support Torsten, Test der Einstellungen und Änderungen für EN Versione\r\n2. Preisfehler (Frau Halmer), Web-Site in den Wartungsmodus gesetzt, mit Torsten Preise überprüft und geändert, alle Staffelpreise neu eingegeben\r\n3. generic 404 page for all langs',
    '',
    '2022-08-12 00:00:00',
    '',
    '',
    '2022-08-11 10:00:00',
    '2022-08-11 15:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1119,
    45,
    'Fix WP site down',
    '',
    '',
    '2022-08-31 00:00:00',
    '',
    '15min',
    '2022-08-31 18:48:00',
    '2022-08-31 18:53:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1120,
    297,
    'Changes Nina - Skype',
    '',
    '',
    '2022-09-05 00:00:00',
    '',
    '30min',
    '2022-09-05 15:00:00',
    '2022-09-05 15:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1121,
    77,
    'Renew SSL 28.OCT + full update for php 8',
    '- update wp \r\n- update all plugins\r\n- change php version / uninstall old plugins(2)\r\n- install new plugins (2)',
    '',
    '2022-09-07 00:00:00',
    '',
    '1h',
    '2022-09-19 09:15:00',
    '2022-09-19 10:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1122,
    151,
    'Renew SSL   - badische-trueffel.de',
    '',
    NULL,
    '2022-08-10 00:00:00',
    '',
    '15min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1123,
    258,
    '',
    '',
    '',
    '2022-09-14 00:00:00',
    'low',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1125,
    74,
    'Access problem 19.09.2022.',
    '',
    '',
    '2022-09-19 00:00:00',
    '',
    '15min',
    '2022-09-19 09:30:00',
    '2022-09-19 09:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1126,
    85,
    'VPacking option -> Packing option',
    '',
    '',
    '2022-09-21 00:00:00',
    '',
    '15min',
    '2022-09-21 15:00:00',
    '2022-09-21 15:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1127,
    16,
    'Transefer website to new hosting',
    '',
    '',
    '2022-09-21 00:00:00',
    '',
    '1h',
    '2022-09-21 19:00:00',
    '2022-09-21 20:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1128,
    161,
    'EB Caritas - ENDDATE JUN/23',
    '',
    '',
    '2022-09-23 00:00:00',
    '',
    '',
    '2022-09-27 07:00:00',
    '2022-09-27 17:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1129,
    116,
    'Zugangsdaten geschickt',
    '',
    '',
    '2022-09-27 00:00:00',
    '',
    '15 min',
    '2022-09-27 10:30:00',
    '2022-09-27 10:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1130,
    178,
    'Update PHP 8',
    '',
    '',
    '2022-10-12 00:00:00',
    '',
    '45min',
    '2022-10-12 10:00:00',
    '2022-10-12 10:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1131,
    16,
    'Changes on website ',
    '1. remove menu items\r\n2. change working hours',
    '',
    '2022-10-14 00:00:00',
    '',
    '1h',
    '2022-10-14 09:42:00',
    '2022-10-14 10:42:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1132,
    92,
    'Support',
    '1. responsive menu on first view all are open - change to closed at start\r\n\r\n2. Third level on left side bar?\r\n\r\n3. telefon support 26.10. 10 h\r\n\r\n4. telefon support 3.11. 10 h',
    '',
    '2022-10-19 00:00:00',
    'middle',
    '2 h',
    '2022-10-19 10:15:00',
    '2022-10-19 12:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1133,
    53,
    'New iframe videos x2 ',
    '1. Stellenangebote\r\n2. Wir bilden aus',
    '',
    '2022-10-20 00:00:00',
    '',
    '',
    '2022-10-20 11:00:00',
    '2022-10-20 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1134,
    258,
    'Interflex Problem with miniorange plugin',
    '15.3. - 1 h \r\n16.3. - 0,5 h\r\n20.3. - 0,5 h',
    '',
    '2023-03-14 00:00:00',
    '',
    '1,5 h',
    '2023-03-20 10:00:00',
    '2023-03-20 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1135,
    291,
    'Translation EN/FR/ES/NL - fixed price',
    '',
    '',
    '2022-10-25 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1136,
    74,
    'Update website to PHP 8',
    ' + 1h extra reprograming (Jennifer Patrias)',
    '',
    '2022-10-25 00:00:00',
    '',
    '8h',
    '2022-10-24 10:00:00',
    '2022-10-24 19:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1137,
    252,
    'Update website to PHP 8',
    '',
    '',
    '2022-11-08 00:00:00',
    '',
    '',
    '2022-11-08 13:55:00',
    '2022-11-08 14:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1139,
    231,
    'Wp update + plugins + php',
    '',
    '',
    '2022-10-27 00:00:00',
    '',
    '30min',
    '2022-10-28 15:00:00',
    '2022-10-28 15:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1140,
    56,
    'Update website to PHP 8',
    '',
    '',
    '2022-11-07 00:00:00',
    '',
    '',
    '2022-11-08 09:00:00',
    '2022-11-08 13:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1141,
    155,
    'Update website to PHP 8',
    '1. wpml problems fix\r\n2. responsive menu plugin problem fix\r\n3. bx slider problem fix',
    '',
    '2022-10-28 00:00:00',
    '',
    '',
    '2022-11-03 11:00:00',
    '2022-11-03 12:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1142,
    65,
    'Renew SSL   - klaus-polkowski.de',
    '',
    NULL,
    '2022-09-14 00:00:00',
    '',
    '15min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1144,
    244,
    'Update website to PHP 8',
    '',
    '',
    '2022-11-07 00:00:00',
    '',
    '',
    '2022-11-07 15:11:00',
    '2022-11-07 16:11:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1145,
    92,
    'Update website to PHP 8',
    '',
    '',
    '2022-11-07 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1146,
    65,
    'Intro website - correction old website',
    '',
    '',
    '2022-11-07 00:00:00',
    '',
    '',
    '2022-11-08 09:00:00',
    '2022-11-08 10:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1147,
    182,
    'Update website to PHP 8',
    '',
    NULL,
    '2022-10-26 00:00:00',
    '',
    '1h',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1148,
    243,
    'Update website to PHP 8 + cookie plugin',
    '',
    '',
    '2022-11-11 00:00:00',
    '',
    '',
    '2022-12-01 10:15:00',
    '2022-12-01 11:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1149,
    255,
    'Update website to PHP 8',
    '',
    '',
    '2022-12-15 00:00:00',
    '',
    '2h',
    '2022-12-15 12:44:00',
    '2022-12-15 14:44:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1150,
    268,
    'Update website to PHP 8 + cookie plugin',
    '',
    '',
    '2022-11-11 00:00:00',
    '',
    '',
    '2022-11-14 10:29:00',
    '2022-11-14 11:29:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1151,
    85,
    'Renew SSL ',
    '',
    '',
    '2023-01-30 00:00:00',
    '',
    '',
    '2023-01-30 09:15:00',
    '2023-01-30 09:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1152,
    208,
    'Update website to PHP 8',
    '',
    '',
    '2022-11-30 00:00:00',
    '',
    '',
    '2022-11-30 16:15:00',
    '2022-11-30 17:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1153,
    91,
    'Update website to PHP 8',
    '',
    '',
    '2022-11-09 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1154,
    291,
    'Inxmail tests - Working with Roland',
    '',
    '',
    '2022-11-30 00:00:00',
    'low',
    '',
    '2022-11-30 15:43:00',
    '2022-11-30 16:43:00',
    'closed'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1155,
    297,
    'Remove google fonts link in Elementor',
    '',
    '',
    '2022-11-25 00:00:00',
    '',
    '1h',
    '2022-11-30 15:44:00',
    '2022-11-30 16:44:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1156,
    291,
    'Extra ES translate -email 14.12.2022',
    '',
    '',
    '2022-12-14 00:00:00',
    '',
    '15min',
    '2022-12-14 15:00:00',
    '2022-12-14 15:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1157,
    85,
    'Inxmail XML for newsletter',
    '',
    '',
    '2022-11-30 00:00:00',
    'low',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'open'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1158,
    87,
    'Update website to PHP 8',
    '',
    '',
    '2022-11-23 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1159,
    228,
    'Update website to PHP 8 + new php library for parce Excell',
    '1. update 1h\r\n2. php programing 2h',
    '',
    '2022-11-30 00:00:00',
    '',
    '3h',
    '2022-12-02 09:54:00',
    '2022-12-02 12:54:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1160,
    74,
    'New Email account',
    'Email 11.05.2022. Michaela Moser\r\n\r\nhauser@chilli-freiburg.de\r\n',
    NULL,
    '2022-05-11 00:00:00',
    '',
    '15min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1161,
    56,
    'New standort - footer reprogram',
    '',
    '',
    '2022-12-07 00:00:00',
    '',
    '75min',
    '2022-12-07 10:00:00',
    '2022-12-07 11:15:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1162,
    291,
    'Extra ES translate -email 23.11.2022',
    '',
    NULL,
    '2022-11-23 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1163,
    82,
    'Update website to PHP 8',
    '',
    '',
    '2022-11-15 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1164,
    93,
    'Update website to PHP 8 + add new project',
    '',
    '',
    '2022-12-14 00:00:00',
    '',
    '2h',
    '2022-12-15 10:10:00',
    '2022-12-15 12:10:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1165,
    252,
    'Correction Email + telefon 13.12.2022.',
    'Biologische:\r\nMenu repariert\r\nneue Seiten ins menu eingefügt \r\nSeiteninhalte ergänzt\r\n\r\nNierenzentrum:\r\nText auf Startseite geändert',
    '',
    '2022-12-15 00:00:00',
    '',
    '',
    '2022-12-16 10:00:00',
    '2022-12-16 11:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1166,
    182,
    'New page Apherese',
    '',
    '',
    '2023-01-09 00:00:00',
    '',
    '30min',
    '2023-01-10 10:15:00',
    '2023-01-10 11:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1167,
    100,
    '2 new user accounts (meisterteam + grieshaber)',
    '',
    '',
    '2023-01-10 00:00:00',
    '',
    '15min',
    '2023-01-10 14:40:00',
    '2023-01-10 14:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1168,
    202,
    'New event - EOS Veranstaltung 24 NOV',
    '',
    NULL,
    '2021-09-30 00:00:00',
    '',
    '30min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1169,
    56,
    'Full update',
    '',
    '',
    '2023-01-16 00:00:00',
    '',
    '1h',
    '2023-01-16 16:00:00',
    '2023-01-16 17:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1170,
    93,
    'Change addresse + google map',
    '',
    '',
    '2023-01-16 00:00:00',
    '',
    '30min',
    '2023-01-16 17:00:00',
    '2023-01-16 17:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1171,
    98,
    'Strato - Support wegen abgeschalteter Homepage',
    'Die A-Records und dynDNS waren verändert, zeigeten auf eien lokalen Server 217.92.62.106',
    '',
    '2023-01-19 00:00:00',
    '',
    '',
    '2023-01-18 12:00:00',
    '2023-01-18 14:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1172,
    202,
    'Two new termine',
    '8. September 2022 | 19.00 Uhr\r\n Barbara Bišický-Ehrlich\r\nDer Rabbiner ohne Schuh\r\nKuriositäten aus meinem fast koscheren Leben\r\n\r\n25. August 2022 | 19.00 Uhr \r\n Olga Grjasnowa\r\nDer Russe ist einer, der Birken liebt\r\n\r\n\r\n',
    NULL,
    '2022-07-06 00:00:00',
    '',
    '30min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1173,
    280,
    'Update website to PHP 8',
    '',
    '',
    '2023-01-27 00:00:00',
    '',
    '',
    '2023-01-27 10:16:00',
    '2023-01-27 11:16:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1174,
    167,
    'Update website to PHP 8 + new slider',
    '1. new wp slider plugin - 4h',
    '',
    '2023-01-25 00:00:00',
    '',
    '',
    '2023-01-26 11:00:00',
    '2023-01-26 16:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1175,
    301,
    'Update theme Divi',
    '',
    '',
    '2023-02-08 00:00:00',
    '',
    '',
    '2023-02-08 12:00:00',
    '2023-02-08 12:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1176,
    56,
    'Create QR code - Udo Fischer',
    '',
    NULL,
    '2022-06-20 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1177,
    52,
    'Update website to PHP 8',
    '- wordpress update\r\n- plugins update\r\n- new reponsive menu\r\n- bug fixes ',
    '',
    '2023-01-25 00:00:00',
    '',
    '30min',
    '2023-01-25 11:20:00',
    '2023-01-25 11:50:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1178,
    292,
    'New page Job + button',
    '',
    '',
    '2023-03-15 00:00:00',
    '',
    '2h',
    '2023-03-15 10:00:00',
    '2023-03-15 11:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1179,
    238,
    'Update + Backup wp + db',
    '',
    '',
    '2023-01-27 00:00:00',
    '',
    '',
    '2023-01-27 10:23:00',
    '2023-01-27 10:53:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1180,
    155,
    'Renew SSL   -  27.11.',
    '',
    NULL,
    '2022-11-05 00:00:00',
    '',
    '15min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1181,
    85,
    'bug fix - image 007171 Druckfläche',
    '',
    '',
    '2023-02-06 00:00:00',
    '',
    '15min',
    '2023-02-06 10:15:00',
    '2023-02-06 10:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1182,
    54,
    '2 pages with formular',
    '',
    '',
    '2023-02-06 00:00:00',
    '',
    '2h',
    '2023-02-08 10:00:00',
    '2023-02-08 12:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1183,
    301,
    'Update website to PHP 8',
    '',
    '',
    '2023-01-24 00:00:00',
    '',
    '30min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1184,
    248,
    'Update website to PHP 8',
    '',
    '',
    '2023-01-27 00:00:00',
    '',
    '',
    '2023-01-27 11:31:00',
    '2023-01-27 12:31:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1185,
    299,
    'Formulars Extra jobs',
    'Eigenes Abo + Geshenk formular extra step - 3h\r\nDinamic Gechenke list in select box 1h\r\nNew Oster formulars x 2 - 3h\r\nTesting - 8h',
    '',
    '2023-02-08 00:00:00',
    'low',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1186,
    54,
    'Dividing Job/press template into two parts/update php8',
    '',
    '',
    '2023-02-10 00:00:00',
    '',
    '2h',
    '2023-02-14 11:00:00',
    '2023-02-14 13:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1187,
    144,
    'Update site (regular six months)',
    '',
    NULL,
    '2022-02-17 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1188,
    202,
    'New events - EOS Veranstaltung',
    '',
    NULL,
    '2023-01-16 00:00:00',
    '',
    '1h',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1189,
    56,
    'new social icons',
    '',
    '',
    '2023-03-20 00:00:00',
    '',
    '1h',
    '2023-03-23 11:17:00',
    '2023-03-23 12:17:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1190,
    255,
    'Spenden Plattform',
    'Paypal or WP Plugin \r\n- problem: paypal only for business accounts\r\n- alterniv plugin https://wcdp.jonh.eu/',
    '',
    '2023-02-23 00:00:00',
    'low',
    '',
    '2023-02-23 10:29:00',
    '2023-02-23 11:09:00',
    'open'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1191,
    182,
    'text changes Page /apherese-dialyse',
    '',
    '',
    '2023-02-24 00:00:00',
    '',
    '',
    '2023-02-24 11:30:00',
    '2023-02-24 11:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1192,
    302,
    'New wp page',
    '',
    '',
    '2023-02-28 00:00:00',
    '',
    '4h',
    '2023-02-28 08:13:00',
    '2023-02-28 12:13:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1193,
    258,
    'Update website to PHP 8',
    '',
    '',
    '2023-03-07 00:00:00',
    '',
    '',
    '2023-03-08 09:31:00',
    '2023-03-08 10:31:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1194,
    292,
    'Update website to PHP 8',
    '',
    NULL,
    '2023-02-08 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1195,
    220,
    'New email account +  captha code',
    '',
    '',
    '2023-03-08 00:00:00',
    '',
    '',
    '2023-03-09 13:51:00',
    '2023-03-09 14:51:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1196,
    258,
    'Interflex logo NL change',
    '',
    NULL,
    '2022-10-24 00:00:00',
    '',
    '30min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1197,
    292,
    'Clone website to demo.joseabilon.de',
    '',
    '',
    '2023-03-06 00:00:00',
    '',
    '1h',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1198,
    202,
    'New events - EOS Veranstaltung - 5 events',
    '',
    '',
    '2023-02-16 00:00:00',
    '',
    '2h',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1199,
    53,
    'change password ',
    '',
    NULL,
    '2021-12-14 00:00:00',
    '',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1200,
    56,
    'hubspot plugin install and config + new usercentrics',
    '',
    NULL,
    '2023-02-22 00:00:00',
    '',
    '30min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1201,
    303,
    'Changes Email 28.4',
    '- Kopfbilder auf den Seiten Home und Anwälte geändert\r\n\r\n- RA´in Bronner aus der Homepage herausgenommen\r\n- RA Thoman eingefügt, mit Bild, Vita, Tätigkeitsbereiche und Mitgliedschaften/Engagements\r\n- RA Thoman auf der Seite Rechtsgebiete zu den Eintragungen „Auto und Verkehr“ und „Immobilien und Wohnen“ eingefügt\r\n\r\n- Reiter Mediation gelöscht\r\n\r\n- Auf der Seite Fortbildungen Frau Bronner herausgenommen und Herr Thoman aufgenommen für seine zukünftigen Fortbildungen\r\n\r\n- Überall dort, wo Frau Bronner verlinkt war, Frau Staiger verlinkt.',
    '',
    '2023-04-28 00:00:00',
    '',
    '',
    '2023-05-10 08:00:00',
    '2023-05-10 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1202,
    98,
    'Changes',
    '1. update php version to 8\r\n2. full update wp + plugins\r\n3. Kontakt page change images and reordering',
    '',
    '2023-04-25 00:00:00',
    '',
    '1h',
    '2023-04-25 09:32:00',
    '2023-04-25 12:32:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1203,
    285,
    'Wp update + fix errors',
    '',
    '',
    '2023-04-25 00:00:00',
    '',
    '1h',
    '2023-04-25 12:49:00',
    '2023-04-25 13:49:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1204,
    303,
    'Update website to PHP 8',
    '1. update to php 8 and check site functionality\r\n2. activate contact form plugin and related plugins\r\n3. fix php error menu class',
    NULL,
    '2023-04-12 00:00:00',
    '',
    '1h',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1205,
    273,
    'Wp update + plugins',
    '',
    '',
    '2023-05-02 00:00:00',
    '',
    '45min',
    '2023-05-02 11:00:00',
    '2023-05-02 11:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1206,
    299,
    'Changes',
    '',
    '',
    '2023-05-03 00:00:00',
    '',
    '',
    '2023-05-24 05:38:00',
    '2023-05-24 09:38:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1207,
    126,
    'Update website to PHP 8',
    '',
    '',
    '2023-05-08 00:00:00',
    '',
    '',
    '2023-05-08 09:24:00',
    '2023-05-08 10:24:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1208,
    267,
    'text changes + change subdomain',
    '',
    '',
    '2023-05-09 00:00:00',
    '',
    '1h',
    '2023-05-10 11:00:00',
    '2023-05-10 12:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1209,
    243,
    'Cleanup server + wp full updates',
    '',
    '',
    '2023-05-16 00:00:00',
    '',
    '',
    '2023-05-16 10:55:00',
    '2023-05-16 11:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1210,
    268,
    'Cleanup server + wp full updates',
    '',
    '',
    '2023-05-16 00:00:00',
    '',
    '',
    '2023-05-16 11:00:00',
    '2023-05-16 12:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1212,
    258,
    'Technical support Microsoft Teams - Sabine',
    '',
    '',
    '2023-06-05 00:00:00',
    '',
    '1h',
    '2023-06-05 14:00:00',
    '2023-06-05 14:56:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1213,
    150,
    'Fix bug + Full Wordress update',
    '',
    '',
    '2023-06-09 00:00:00',
    '',
    '1h',
    '2023-06-09 10:00:00',
    '2023-06-09 11:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1214,
    169,
    'Update website to PHP 8',
    '',
    '',
    '2023-06-12 00:00:00',
    '',
    '',
    '2023-06-13 18:53:00',
    '2023-06-13 19:53:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1215,
    54,
    'Add new presse articles x 2 ',
    'Edit images',
    '',
    '2023-06-20 00:00:00',
    '',
    '1h',
    '2023-06-27 07:00:00',
    '2023-06-27 08:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1216,
    98,
    'Fix error',
    '1 A record problem',
    '',
    '2023-06-14 00:00:00',
    '',
    '',
    '2023-07-11 10:00:00',
    '2023-07-11 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1217,
    85,
    ' PDF Fehler bei Druckfläche, Konformitätserklärung',
    'Arbeit: Fehleranalyse in Zusmamnarbeit mit Torsten\r\nKein Fehler auf der Homepage oder in MySQL sondern\r\nim Filemaker',
    '',
    '2023-06-16 00:00:00',
    '',
    '',
    '2023-06-19 11:30:00',
    '2023-06-19 12:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1218,
    54,
    'Add new slide -Das sagen unsere Kunden-',
    '',
    '',
    '2023-06-14 00:00:00',
    '',
    '30min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1219,
    104,
    'Datenschutz + www redirect + email secure setting',
    '',
    NULL,
    '2023-06-21 00:00:00',
    'low',
    '1 h',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'open'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1220,
    258,
    'Add google track code - Sabine',
    '',
    '',
    '2023-07-13 00:00:00',
    'low',
    '20min',
    '2023-07-13 09:28:00',
    '2023-07-13 09:48:00',
    'closed'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1221,
    252,
    'SSL saved again',
    '',
    '',
    '2023-07-03 00:00:00',
    '',
    '15 min',
    '2023-07-03 15:15:00',
    '2023-07-03 15:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1222,
    258,
    'Check google 404 page sp-expert-webclient-workshop - Sabine',
    '',
    '',
    '2023-06-22 00:00:00',
    'low',
    '20min',
    '2023-06-22 09:29:00',
    '2023-06-22 09:49:00',
    'closed'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1223,
    182,
    'Email Zugangsdaten zugeschickt',
    '',
    '',
    '2023-07-13 00:00:00',
    '',
    '15 min',
    '2023-07-13 09:45:00',
    '2023-07-13 10:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1224,
    299,
    'Image Captcha ergänzt ',
    '... bei alle Formularen',
    '',
    '2023-07-24 00:00:00',
    '',
    '30 min',
    '2023-07-24 11:30:00',
    '2023-07-24 11:45:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1225,
    182,
    'Biol. Med. - neue Seite veröffentlicht',
    '',
    '',
    '2023-07-24 00:00:00',
    '',
    '15 min',
    '2023-07-24 12:00:00',
    '2023-07-24 12:20:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1226,
    228,
    'Show post content - help to activate in edit area',
    '',
    '',
    '2023-07-27 00:00:00',
    '',
    '15',
    '2023-07-27 11:30:00',
    '2023-07-27 12:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1227,
    82,
    'Rechtschreibfehler Website',
    'Email vom 1.8. Jan Mittler',
    '',
    '2023-08-01 00:00:00',
    'low',
    '15 min',
    '2023-08-01 09:20:00',
    '2023-08-01 09:25:00',
    'closed'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1228,
    85,
    'Add Vorkosten in print layout',
    '',
    '',
    '2023-08-01 00:00:00',
    '',
    '',
    '2023-08-01 14:47:00',
    '2023-08-01 14:57:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1229,
    92,
    'Seitenleiste mit Logos ändern',
    '',
    '',
    '2023-08-03 00:00:00',
    '',
    '20 min',
    '2023-08-03 09:57:00',
    '2023-08-03 10:22:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1230,
    220,
    'cache problem',
    '',
    '',
    '2023-08-09 00:00:00',
    '',
    '',
    '2023-08-09 17:40:00',
    '2023-08-09 17:55:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1231,
    187,
    'SSL connect',
    '',
    '',
    '2023-08-18 00:00:00',
    'low',
    '15 min',
    '2023-08-18 19:00:00',
    '2023-08-18 19:15:00',
    'closed'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1232,
    254,
    'Changes Email Stephanie 28.08.',
    '1. Rearange product categories in main menu\r\n2. Update referenzen page',
    '',
    '2023-08-22 00:00:00',
    'low',
    '1h',
    '2023-08-28 14:53:00',
    '2023-08-28 15:53:00',
    'closed'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1233,
    291,
    'Update WP and all plugins - fix bug with website',
    '',
    '',
    '2023-08-28 00:00:00',
    'low',
    '15min',
    '2023-08-28 10:00:00',
    '2023-08-28 10:15:00',
    'closed'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1234,
    182,
    'Add SPF to dns records',
    '',
    '',
    '2023-08-24 00:00:00',
    '',
    '30min',
    '2023-08-24 11:00:00',
    '2023-08-24 11:30:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1235,
    291,
    'Programing link to slider images',
    '',
    '',
    '2023-08-22 00:00:00',
    '',
    '15min',
    '2023-08-29 17:20:00',
    '2023-08-29 17:35:00',
    'closed'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1236,
    287,
    'New contact data in footer',
    '',
    '',
    '2023-08-29 00:00:00',
    'low',
    '15min',
    '2023-08-29 17:33:00',
    '2023-08-29 17:48:00',
    'closed'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1237,
    202,
    'New events - Hugo email',
    '',
    '',
    '2023-09-04 00:00:00',
    '',
    '15min',
    '2023-09-04 12:35:00',
    '2023-09-04 12:50:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1238,
    202,
    'New events - extra infos - Hugo email',
    '',
    NULL,
    '2023-03-16 00:00:00',
    '',
    '15min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'invoiced'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1239,
    267,
    'Claudia Schori - emails',
    '1.remove leading zero from phone\r\n2. Increase number of jobs (overview page)',
    NULL,
    '2023-09-13 00:00:00',
    'low',
    '15min',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'open'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1240,
    77,
    'Update website to PHP 8.2',
    '1. update wp + all plugins\r\n2. fix potential problems durring php version change',
    '',
    '2023-09-19 00:00:00',
    'low',
    '30min',
    '2023-09-19 09:16:00',
    '2023-09-19 09:46:00',
    'closed'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1241,
    62,
    'Update website to PHP 8.2',
    '1. responsive menu new version programing\r\n2. update all plugins + wp',
    '',
    '2023-09-26 00:00:00',
    'low',
    '1h',
    '2023-09-26 11:00:00',
    '2023-09-26 11:30:00',
    'closed'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1242,
    287,
    'Update website to PHP 8.2',
    '',
    '',
    '2023-09-20 00:00:00',
    'low',
    '30min',
    '2023-09-27 14:20:00',
    '2023-09-27 14:50:00',
    'closed'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1243,
    254,
    'Update website to PHP 8.2',
    '',
    NULL,
    '2023-09-20 00:00:00',
    'low',
    '',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00',
    'closed'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1244,
    92,
    'SSL neu ausgestellt',
    '',
    '',
    '2023-09-28 00:00:00',
    'low',
    '15 min',
    '2023-09-28 10:00:00',
    '2023-09-28 10:15:00',
    'closed'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1245,
    227,
    'Roland project',
    '1. Updating needed plugins / Eliminating not needed plugins\r\n + remove old default theme-posible hack entry points  - 1.5h\r\n2. Upload fresh wp-includes folder via ftp / clean old dirs / remove malicious code - 1h\r\n3. create robot.txt file for wp - 30min\r\n4. Yoast Test Helper install - SEO clean jobs\r\n5. install and config auto fill image alt tags - 1h',
    '',
    '2023-09-28 00:00:00',
    'low',
    '',
    '2023-09-29 10:08:00',
    '2023-09-29 14:08:00',
    'open'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1246,
    267,
    'Installing events manager - ceating temp page with dumy event',
    '',
    NULL,
    '2023-09-29 00:00:00',
    'low',
    '1 h',
    '2023-10-04 10:00:00',
    '2023-10-04 23:00:00',
    'closed'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1266,
    40,
    'php task',
    'test desciption',
    'no notice',
    '2023-10-04 23:12:13',
    NULL,
    NULL,
    '2023-10-01 10:00:00',
    '2023-10-01 10:54:00',
    'working'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1268,
    72,
    'change to PHP 8.1',
    'test description',
    '',
    '2023-10-05 23:03:27',
    NULL,
    NULL,
    '2023-10-10 11:45:00',
    '2023-10-10 12:25:00',
    'closed'
  );
INSERT INTO
  `pms_tasks` (
    `task_id`,
    `task_project_id`,
    `task_name`,
    `task_description`,
    `task_notice`,
    `task_add_date`,
    `task_priority`,
    `task_plan_time`,
    `task_start_time`,
    `task_end_time`,
    `task_status`
  )
VALUES
  (
    1273,
    231,
    'Check google 404 page sp-expert-webclient-workshop - Sabine',
    '',
    '',
    '2023-10-08 23:13:35',
    NULL,
    NULL,
    '2023-10-04 10:00:00',
    '2023-10-04 10:30:00',
    'invoiced'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: pms_users
# ------------------------------------------------------------

INSERT INTO
  `pms_users` (
    `uid`,
    `user_avatar`,
    `first_name`,
    `last_name`,
    `username`,
    `password`,
    `email`,
    `refreshToken`,
    `created_date`,
    `last_login`,
    `role`,
    `verified`,
    `verifedToken`
  )
VALUES
  (
    1,
    'http://localhost:8080/0.31850133480761156-Tobias_Deusch.jpg',
    'Aleksandar',
    'Cvetkovic',
    'aleksandar',
    '$2b$10$PP281mFpv078emPNkjIPKuqPjtasEjumx5FdQTG2nDolhTk9RYAKu',
    'aleksandar@rixner.net',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImFsZWtzYW5kYXIiLCJpYXQiOjE2OTg1NzMwMDl9.D1NWAqeR_pdlJIiOhF_jq2uzXoACqurO5LRuozPgcn4',
    '2023-05-10 01:53:57',
    '2023-10-29 10:50:09',
    'admin',
    '1',
    NULL
  );
INSERT INTO
  `pms_users` (
    `uid`,
    `user_avatar`,
    `first_name`,
    `last_name`,
    `username`,
    `password`,
    `email`,
    `refreshToken`,
    `created_date`,
    `last_login`,
    `role`,
    `verified`,
    `verifedToken`
  )
VALUES
  (
    2,
    NULL,
    'Norbert',
    'Rixner',
    'norbert',
    '$2a$12$sJlheXuZAWc/otaFJdJPsOuOYQUNqLDDyXRysPahOWsOZsF6vv2gu',
    'kontakt@rixner.net',
    NULL,
    '2023-10-10 01:41:10',
    '2023-10-17 02:09:12',
    'admin',
    '1',
    NULL
  );
INSERT INTO
  `pms_users` (
    `uid`,
    `user_avatar`,
    `first_name`,
    `last_name`,
    `username`,
    `password`,
    `email`,
    `refreshToken`,
    `created_date`,
    `last_login`,
    `role`,
    `verified`,
    `verifedToken`
  )
VALUES
  (
    33,
    NULL,
    'Petar',
    'Petrovic',
    'pera',
    '$2b$10$MpBmjz8UyvvMXJGvkVM9beLKU.ohJ8lSbpC3n.8TbGrx6XTU41UIW',
    'aleksandar@e-seo.info',
    NULL,
    '2023-10-06 17:39:53',
    '0000-00-00 00:00:00',
    'user',
    '0',
    ''
  );
INSERT INTO
  `pms_users` (
    `uid`,
    `user_avatar`,
    `first_name`,
    `last_name`,
    `username`,
    `password`,
    `email`,
    `refreshToken`,
    `created_date`,
    `last_login`,
    `role`,
    `verified`,
    `verifedToken`
  )
VALUES
  (
    49,
    '',
    'Biljana',
    'Vuckovic',
    'bixy',
    '$2b$10$8I.504GRn6WUsp/Dnnr5p.PW8TdZM.HM6PRz/gN9TbqU5vSxeQe/K',
    'aleksandar81@e-vlasotince.info',
    NULL,
    '2023-10-15 00:14:26',
    '2023-10-17 01:34:18',
    'admin',
    '1',
    ''
  );

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
