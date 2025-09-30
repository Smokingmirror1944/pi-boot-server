/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.13-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: terra_db
-- ------------------------------------------------------
-- Server version	10.11.13-MariaDB-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `environment_smells`
--

DROP TABLE IF EXISTS `environment_smells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `environment_smells` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `scene_id` varchar(255) DEFAULT NULL,
  `smell` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `scene_id` (`scene_id`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `environment_smells`
--

LOCK TABLES `environment_smells` WRITE;
/*!40000 ALTER TABLE `environment_smells` DISABLE KEYS */;
INSERT INTO `environment_smells` VALUES
(1,'scene_campaign_intro','Scorched ozone from arcane weaponry'),
(2,'scene_campaign_intro','Rust and damp stone in underground tunnels'),
(3,'scene_campaign_intro','Lingering smoke from burnt cities'),
(4,'scene_intro_train','Burnt ozone from electrical shorts'),
(5,'scene_intro_train','Lingering cigarette smoke'),
(6,'scene_intro_train','Sharp tang of industrial oil and machine grease'),
(7,'scene_intro_train','Sweat soaked into stale clothing'),
(8,'scene_intro_train','Rust and metal dust'),
(9,'scene_arrival_city_view','Sharp tang of ozone from lightning and magical discharges'),
(10,'scene_arrival_city_view','Acidic scent of industrial exhaust wafting into the station'),
(11,'scene_arrival_city_view','Cold, metallic smell of recycled city air'),
(12,'scene_arrival_city_view','Trace of human sweat and fear'),
(13,'scene_blending_in_success','Ozone and metal from the scanning devices'),
(14,'scene_blending_in_success','Lingering cigarette smoke from the train'),
(15,'scene_blending_in_success','Sterile scent of disinfectants used in the station'),
(16,'scene_blending_in_failure_flagged','Sterile tang of cleaning solvents'),
(17,'scene_blending_in_failure_flagged','Ozone from scanning devices'),
(18,'scene_blending_in_failure_blow_cover','Burning ozone from plasma discharges'),
(19,'scene_blending_in_failure_blow_cover','Sweat and fear permeating the station air'),
(20,'scene_security_checkpoint_success','Ozone from scanning devices'),
(21,'scene_security_checkpoint_success','Sterile chemical scent of disinfectant'),
(22,'scene_security_checkpoint_success','Slight tang of sweat and fear among the crowds'),
(23,'scene_security_checkpoint_failure','Burnt ozone from energy weapons'),
(24,'scene_security_checkpoint_failure','Panic sweat filling the air'),
(25,'scene_security_checkpoint_failure','Acrid tang of burning circuits from scanning equipment'),
(26,'scene_isolation_encounter','Sharp tang of ozone from shorting circuits'),
(27,'scene_isolation_encounter','Sweat and old metal in the confined tunnel'),
(28,'scene_isolation_encounter','Hints of burned plastic drifting through the air'),
(29,'scene_rooftop_escape','Sharp tang of ozone from nearby lightning'),
(30,'scene_rooftop_escape','Hot metal heated by neon lights and rooftop machinery'),
(31,'scene_rooftop_escape','Exhaust fumes from industrial stacks below'),
(32,'scene_rendezvous_with_raven','Rust and damp concrete'),
(33,'scene_rendezvous_with_raven','Warm oil from machinery'),
(34,'scene_rendezvous_with_raven','Slight ozone tang from exposed electronics'),
(35,'scene_rooftop_combat','Burning ozone from plasma fire'),
(36,'scene_rooftop_combat','Hot metal and slag vapor rising from destroyed panels'),
(37,'scene_rooftop_combat','Sweat and adrenaline sharp in the cold air'),
(38,'scene_capture_and_processing','Sterile antiseptic mingled with sharp metallic tang of blood'),
(39,'scene_capture_and_processing','Burnt ozone from psychic feedback devices'),
(40,'scene_capture_and_processing','Machine oil and coolant dripping from overhead conduits'),
(41,'scene_raven_processing_escape','Burnt metal and ozone from the EMP blast'),
(42,'scene_raven_processing_escape','Chemical sting of leaking coolant'),
(43,'scene_raven_processing_escape','Sweat and fear in the tight chamber'),
(44,'scene_campaign_intro','Scorched ozone from arcane weaponry'),
(45,'scene_campaign_intro','Rust and damp stone in underground tunnels'),
(46,'scene_campaign_intro','Lingering smoke from burnt cities'),
(47,'scene_intro_train','Burnt ozone from electrical shorts'),
(48,'scene_intro_train','Lingering cigarette smoke'),
(49,'scene_intro_train','Sharp tang of industrial oil and machine grease'),
(50,'scene_intro_train','Sweat soaked into stale clothing'),
(51,'scene_intro_train','Rust and metal dust'),
(52,'scene_arrival_city_view','Sharp tang of ozone from lightning and magical discharges'),
(53,'scene_arrival_city_view','Acidic scent of industrial exhaust wafting into the station'),
(54,'scene_arrival_city_view','Cold, metallic smell of recycled city air'),
(55,'scene_arrival_city_view','Trace of human sweat and fear'),
(56,'scene_blending_in_success','Ozone and metal from the scanning devices'),
(57,'scene_blending_in_success','Lingering cigarette smoke from the train'),
(58,'scene_blending_in_success','Sterile scent of disinfectants used in the station'),
(59,'scene_blending_in_failure_flagged','Sterile tang of cleaning solvents'),
(60,'scene_blending_in_failure_flagged','Ozone from scanning devices'),
(61,'scene_blending_in_failure_blow_cover','Burning ozone from plasma discharges'),
(62,'scene_blending_in_failure_blow_cover','Sweat and fear permeating the station air'),
(63,'scene_security_checkpoint_success','Ozone from scanning devices'),
(64,'scene_security_checkpoint_success','Sterile chemical scent of disinfectant'),
(65,'scene_security_checkpoint_success','Slight tang of sweat and fear among the crowds'),
(66,'scene_security_checkpoint_failure','Burnt ozone from energy weapons'),
(67,'scene_security_checkpoint_failure','Panic sweat filling the air'),
(68,'scene_security_checkpoint_failure','Acrid tang of burning circuits from scanning equipment'),
(69,'scene_isolation_encounter','Sharp tang of ozone from shorting circuits'),
(70,'scene_isolation_encounter','Sweat and old metal in the confined tunnel'),
(71,'scene_isolation_encounter','Hints of burned plastic drifting through the air'),
(72,'scene_rooftop_escape','Sharp tang of ozone from nearby lightning'),
(73,'scene_rooftop_escape','Hot metal heated by neon lights and rooftop machinery'),
(74,'scene_rooftop_escape','Exhaust fumes from industrial stacks below'),
(75,'scene_rendezvous_with_raven','Rust and damp concrete'),
(76,'scene_rendezvous_with_raven','Warm oil from machinery'),
(77,'scene_rendezvous_with_raven','Slight ozone tang from exposed electronics'),
(78,'scene_rooftop_combat','Burning ozone from plasma fire'),
(79,'scene_rooftop_combat','Hot metal and slag vapor rising from destroyed panels'),
(80,'scene_rooftop_combat','Sweat and adrenaline sharp in the cold air'),
(81,'scene_capture_and_processing','Sterile antiseptic mingled with sharp metallic tang of blood'),
(82,'scene_capture_and_processing','Burnt ozone from psychic feedback devices'),
(83,'scene_capture_and_processing','Machine oil and coolant dripping from overhead conduits'),
(84,'scene_raven_processing_escape','Burnt metal and ozone from the EMP blast'),
(85,'scene_raven_processing_escape','Chemical sting of leaking coolant'),
(86,'scene_raven_processing_escape','Sweat and fear in the tight chamber'),
(87,'scene_rendezvous_with_raven','Rust and damp concrete'),
(88,'scene_rendezvous_with_raven','Burnt ozone from damaged circuitry'),
(89,'scene_rendezvous_with_raven','Lingering sweat and adrenaline in the confined space'),
(90,'scene_white_forest_mission','Dust and oil permeating the underground air'),
(91,'scene_white_forest_mission','Faint chemical tang from weapon cleaning solvents'),
(92,'scene_white_forest_mission','Ozone-like scent radiating from the Artifact'),
(93,'scene_undercity_entry','Stale air heavy with mildew'),
(94,'scene_undercity_entry','Rotting organic matter mixed with oil and chemicals'),
(95,'scene_undercity_entry','Sharp ozone scent lingering from old magical wards'),
(96,'scene_undercity_progress','Cold dampness of underground chambers'),
(97,'scene_undercity_progress','Hints of rust and ancient dust'),
(98,'scene_undercity_progress','Faint chemical scent rising from the glowing water below'),
(99,'scene_undercity_ambush','Burning ozone from plasma impacts'),
(100,'scene_undercity_ambush','Rust and stagnant water stirred into the air'),
(101,'scene_undercity_ambush','Acrid tang of scorched metal'),
(102,'scene_white_forest_entry','Hot metal and ozone from ongoing repairs'),
(103,'scene_white_forest_entry','Scent of old concrete and dust disturbed by constant movement'),
(104,'scene_white_forest_entry','Oil and machine grease from stored equipment'),
(105,'scene_white_forest_launch_prep','Burnt plastic from overloaded wiring'),
(106,'scene_white_forest_launch_prep','Tang of ozone radiating from the Artifact'),
(107,'scene_white_forest_launch_prep','Oil and dust kicked up by frantic activity'),
(108,'scene_white_forest_launch_sequence','Burning ozone from plasma discharges'),
(109,'scene_white_forest_launch_sequence','Scorched metal and insulation'),
(110,'scene_white_forest_launch_sequence','Sweat and adrenaline thick in the air'),
(111,'scene_white_forest_launch_success','Scorched air from the missile launch'),
(112,'scene_white_forest_launch_success','Sweat and gunpowder lingering in the chamber'),
(113,'scene_white_forest_launch_success','Cool, clean air wafting in from outside'),
(114,'scene_white_forest_launch_failure','Burning circuits and scorched plastic'),
(115,'scene_white_forest_launch_failure','Dust and acrid smoke filling the chamber air'),
(116,'scene_white_forest_launch_failure','Faint iron tang of blood from wounded fighters'),
(117,'scene_post_launch_victory','Lingering smoke and metal dust'),
(118,'scene_post_launch_victory','Cool, fresh air wafting in as dawn arrives'),
(119,'scene_post_launch_failure','Burned insulation and melted plastic'),
(120,'scene_post_launch_failure','Sharp tang of blood and sweat'),
(121,'scene_post_launch_failure','Lingering ozone from psychic discharges');
/*!40000 ALTER TABLE `environment_smells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `environment_sounds`
--

DROP TABLE IF EXISTS `environment_sounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `environment_sounds` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `scene_id` varchar(255) DEFAULT NULL,
  `sound` text DEFAULT NULL,
  `audio_file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `scene_id` (`scene_id`)
) ENGINE=MyISAM AUTO_INCREMENT=161 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `environment_sounds`
--

LOCK TABLES `environment_sounds` WRITE;
/*!40000 ALTER TABLE `environment_sounds` DISABLE KEYS */;
INSERT INTO `environment_sounds` VALUES
(1,'scene_campaign_intro','Echoes of distant explosions in long-abandoned cities',NULL),
(2,'scene_campaign_intro','A low psychic hum like static in the skull',NULL),
(3,'scene_campaign_intro','The mechanical clank of distant Goliath Walkers',NULL),
(4,'scene_intro_train','The grinding screech of steel wheels over rusted rails',NULL),
(5,'scene_intro_train','Electric sputter and buzz from failing neon lights',NULL),
(6,'scene_intro_train','Creaking metal panels bending under vibration',NULL),
(7,'scene_intro_train','The low mechanical thrum of train engines',NULL),
(8,'scene_intro_train','Distant static propaganda announcements',NULL),
(9,'scene_arrival_city_view','Echoing clang of train wheels slowing on metal tracks',NULL),
(10,'scene_arrival_city_view','Electric buzz from overhead neon lights',NULL),
(11,'scene_arrival_city_view','Booming propaganda messages reverberating through the station',NULL),
(12,'scene_arrival_city_view','Heavy stomping of Goliath Walkers outside the station walls',NULL),
(13,'scene_arrival_city_view','Dull, low-frequency psychic hum that resonates in the skull',NULL),
(14,'scene_blending_in_success','Footsteps echoing on the metal floor',NULL),
(15,'scene_blending_in_success','Propaganda speeches broadcast over distorted speakers',NULL),
(16,'scene_blending_in_success','Subtle hum of neural scanning equipment',NULL),
(17,'scene_blending_in_success','Dull roar of distant urban conflict outside the station',NULL),
(18,'scene_blending_in_failure_flagged','Metal boots striking the floor',NULL),
(19,'scene_blending_in_failure_flagged','Soft hum of biometric scanners powering up',NULL),
(20,'scene_blending_in_failure_flagged','Low droning propaganda messages overhead',NULL),
(21,'scene_blending_in_failure_blow_cover','Blaring klaxons',NULL),
(22,'scene_blending_in_failure_blow_cover','Civilians screaming in panic',NULL),
(23,'scene_blending_in_failure_blow_cover','Electric crackle of charged weapons',NULL),
(24,'scene_blending_in_failure_blow_cover','Rotary buzz of attacking Manhacks',NULL),
(25,'scene_security_checkpoint_success','Hum and pulse of biometric scanning equipment',NULL),
(26,'scene_security_checkpoint_success','Occasional shrill alarms as unlucky citizens are dragged away',NULL),
(27,'scene_security_checkpoint_success','Brood Enforcersâ€™ boots clanging on metal flooring',NULL),
(28,'scene_security_checkpoint_success','Soft buzz of propaganda speakers overhead',NULL),
(29,'scene_security_checkpoint_failure','Shrill klaxons echoing through the station',NULL),
(30,'scene_security_checkpoint_failure','Propaganda drones broadcasting emergency warnings',NULL),
(31,'scene_security_checkpoint_failure','Manhacks buzzing and slicing through the air',NULL),
(32,'scene_security_checkpoint_failure','Civilians screaming in panic',NULL),
(33,'scene_security_checkpoint_failure','Weapons charging with electric whines',NULL),
(34,'scene_isolation_encounter','Muffled alarms echoing through thick metal walls',NULL),
(35,'scene_isolation_encounter','Hissing of steam from broken pipes overhead',NULL),
(36,'scene_isolation_encounter','Occasional thumps of Enforcersâ€™ boots from the station beyond the door',NULL),
(37,'scene_isolation_encounter','Low buzz of sparking power conduits along the tunnel walls',NULL),
(38,'scene_rooftop_escape','Howling wind whipping between skyscrapers',NULL),
(39,'scene_rooftop_escape','Gunships roaring overhead with shrieking engines',NULL),
(40,'scene_rooftop_escape','Distant gunfire rattling across the city',NULL),
(41,'scene_rooftop_escape','Electric hum of neon signs buzzing in the dark',NULL),
(42,'scene_rooftop_escape','Clang of boots on metal rooftops',NULL),
(43,'scene_rendezvous_with_raven','Hissing of steam escaping valves overhead',NULL),
(44,'scene_rendezvous_with_raven','Low metallic groaning of distant machinery',NULL),
(45,'scene_rendezvous_with_raven','Occasional faint boom from distant city conflict above',NULL),
(46,'scene_rendezvous_with_raven','Water dripping into shallow puddles',NULL),
(47,'scene_rooftop_combat','Plasma bolts screaming overhead',NULL),
(48,'scene_rooftop_combat','Gunship engines howling in tight arcs',NULL),
(49,'scene_rooftop_combat','Sparks crackling as metal panels explode',NULL),
(50,'scene_rooftop_combat','Manhacks buzzing like angry insects',NULL),
(51,'scene_rooftop_combat','Wind roaring around towering spires',NULL),
(52,'scene_capture_and_processing','Steady hum of psychic resonance vibrating through the walls',NULL),
(53,'scene_capture_and_processing','Soft hiss of hydraulic doors closing and locking',NULL),
(54,'scene_capture_and_processing','Distant sobbing or whispered prayers from prisoners in other frames',NULL),
(55,'scene_capture_and_processing','Surgical saws whirring quietly at workstations',NULL),
(56,'scene_raven_processing_escape','Screaming sirens wailing through the chamber',NULL),
(57,'scene_raven_processing_escape','Sparks crackling from ruptured cables overhead',NULL),
(58,'scene_raven_processing_escape','Hydraulic doors slamming shut or crashing open',NULL),
(59,'scene_raven_processing_escape','Psychic howls echoing from the Overseer',NULL),
(60,'scene_campaign_intro','Echoes of distant explosions in long-abandoned cities',NULL),
(61,'scene_campaign_intro','A low psychic hum like static in the skull',NULL),
(62,'scene_campaign_intro','The mechanical clank of distant Goliath Walkers',NULL),
(63,'scene_intro_train','The grinding screech of steel wheels over rusted rails',NULL),
(64,'scene_intro_train','Electric sputter and buzz from failing neon lights',NULL),
(65,'scene_intro_train','Creaking metal panels bending under vibration',NULL),
(66,'scene_intro_train','The low mechanical thrum of train engines',NULL),
(67,'scene_intro_train','Distant static propaganda announcements',NULL),
(68,'scene_arrival_city_view','Echoing clang of train wheels slowing on metal tracks',NULL),
(69,'scene_arrival_city_view','Electric buzz from overhead neon lights',NULL),
(70,'scene_arrival_city_view','Booming propaganda messages reverberating through the station',NULL),
(71,'scene_arrival_city_view','Heavy stomping of Goliath Walkers outside the station walls',NULL),
(72,'scene_arrival_city_view','Dull, low-frequency psychic hum that resonates in the skull',NULL),
(73,'scene_blending_in_success','Footsteps echoing on the metal floor',NULL),
(74,'scene_blending_in_success','Propaganda speeches broadcast over distorted speakers',NULL),
(75,'scene_blending_in_success','Subtle hum of neural scanning equipment',NULL),
(76,'scene_blending_in_success','Dull roar of distant urban conflict outside the station',NULL),
(77,'scene_blending_in_failure_flagged','Metal boots striking the floor',NULL),
(78,'scene_blending_in_failure_flagged','Soft hum of biometric scanners powering up',NULL),
(79,'scene_blending_in_failure_flagged','Low droning propaganda messages overhead',NULL),
(80,'scene_blending_in_failure_blow_cover','Blaring klaxons',NULL),
(81,'scene_blending_in_failure_blow_cover','Civilians screaming in panic',NULL),
(82,'scene_blending_in_failure_blow_cover','Electric crackle of charged weapons',NULL),
(83,'scene_blending_in_failure_blow_cover','Rotary buzz of attacking Manhacks',NULL),
(84,'scene_security_checkpoint_success','Hum and pulse of biometric scanning equipment',NULL),
(85,'scene_security_checkpoint_success','Occasional shrill alarms as unlucky citizens are dragged away',NULL),
(86,'scene_security_checkpoint_success','Brood Enforcersâ€™ boots clanging on metal flooring',NULL),
(87,'scene_security_checkpoint_success','Soft buzz of propaganda speakers overhead',NULL),
(88,'scene_security_checkpoint_failure','Shrill klaxons echoing through the station',NULL),
(89,'scene_security_checkpoint_failure','Propaganda drones broadcasting emergency warnings',NULL),
(90,'scene_security_checkpoint_failure','Manhacks buzzing and slicing through the air',NULL),
(91,'scene_security_checkpoint_failure','Civilians screaming in panic',NULL),
(92,'scene_security_checkpoint_failure','Weapons charging with electric whines',NULL),
(93,'scene_isolation_encounter','Muffled alarms echoing through thick metal walls',NULL),
(94,'scene_isolation_encounter','Hissing of steam from broken pipes overhead',NULL),
(95,'scene_isolation_encounter','Occasional thumps of Enforcersâ€™ boots from the station beyond the door',NULL),
(96,'scene_isolation_encounter','Low buzz of sparking power conduits along the tunnel walls',NULL),
(97,'scene_rooftop_escape','Howling wind whipping between skyscrapers',NULL),
(98,'scene_rooftop_escape','Gunships roaring overhead with shrieking engines',NULL),
(99,'scene_rooftop_escape','Distant gunfire rattling across the city',NULL),
(100,'scene_rooftop_escape','Electric hum of neon signs buzzing in the dark',NULL),
(101,'scene_rooftop_escape','Clang of boots on metal rooftops',NULL),
(102,'scene_rendezvous_with_raven','Hissing of steam escaping valves overhead',NULL),
(103,'scene_rendezvous_with_raven','Low metallic groaning of distant machinery',NULL),
(104,'scene_rendezvous_with_raven','Occasional faint boom from distant city conflict above',NULL),
(105,'scene_rendezvous_with_raven','Water dripping into shallow puddles',NULL),
(106,'scene_rooftop_combat','Plasma bolts screaming overhead',NULL),
(107,'scene_rooftop_combat','Gunship engines howling in tight arcs',NULL),
(108,'scene_rooftop_combat','Sparks crackling as metal panels explode',NULL),
(109,'scene_rooftop_combat','Manhacks buzzing like angry insects',NULL),
(110,'scene_rooftop_combat','Wind roaring around towering spires',NULL),
(111,'scene_capture_and_processing','Steady hum of psychic resonance vibrating through the walls',NULL),
(112,'scene_capture_and_processing','Soft hiss of hydraulic doors closing and locking',NULL),
(113,'scene_capture_and_processing','Distant sobbing or whispered prayers from prisoners in other frames',NULL),
(114,'scene_capture_and_processing','Surgical saws whirring quietly at workstations',NULL),
(115,'scene_raven_processing_escape','Screaming sirens wailing through the chamber',NULL),
(116,'scene_raven_processing_escape','Sparks crackling from ruptured cables overhead',NULL),
(117,'scene_raven_processing_escape','Hydraulic doors slamming shut or crashing open',NULL),
(118,'scene_raven_processing_escape','Psychic howls echoing from the Overseer',NULL),
(119,'scene_rendezvous_with_raven','Distant muffled booms reverberating through the tunnels',NULL),
(120,'scene_rendezvous_with_raven','Dripping water echoing in the chamber',NULL),
(121,'scene_rendezvous_with_raven','Occasional clangs of shifting metal overhead',NULL),
(122,'scene_white_forest_mission','Dull thumping of machinery reverberating through the bunker walls',NULL),
(123,'scene_white_forest_mission','Buzz of old fluorescent lights overhead',NULL),
(124,'scene_white_forest_mission','Occasional groans of shifting concrete above',NULL),
(125,'scene_undercity_entry','Echoing drips of water falling from rusted pipes',NULL),
(126,'scene_undercity_entry','Soft hum of distant machinery deeper underground',NULL),
(127,'scene_undercity_entry','The occasional screech of metal shifting under unseen pressure',NULL),
(128,'scene_undercity_entry','Ghostly whispers carried on tunnel echoes',NULL),
(129,'scene_undercity_progress','Soft drip of water falling into underground pools',NULL),
(130,'scene_undercity_progress','Low groaning of shifting pipes overhead',NULL),
(131,'scene_undercity_progress','Gentle rustle of loose debris disturbed underfoot',NULL),
(132,'scene_undercity_ambush','High-pitched whine of plasma bolts',NULL),
(133,'scene_undercity_ambush','Buzzing shriek of Manhack rotors',NULL),
(134,'scene_undercity_ambush','Boots splashing in water as Enforcers advance',NULL),
(135,'scene_undercity_ambush','Pipes rupturing under stray fire',NULL),
(136,'scene_white_forest_entry','Clang of steel doors locking and unlocking',NULL),
(137,'scene_white_forest_entry','Sparks crackling from welding torches',NULL),
(138,'scene_white_forest_entry','Rapid chatter of resistance fighters exchanging intel',NULL),
(139,'scene_white_forest_entry','Low rumble of massive generators powering the facility',NULL),
(140,'scene_white_forest_launch_prep','Alarms blaring in overlapping pitches',NULL),
(141,'scene_white_forest_launch_prep','Generators humming like an iron heartbeat',NULL),
(142,'scene_white_forest_launch_prep','Console keyboards clattering as techs issue rapid commands',NULL),
(143,'scene_white_forest_launch_prep','Distant booming of Brood artillery striking the outer walls',NULL),
(144,'scene_white_forest_launch_sequence','Blazing plasma fire rattling the chamber walls',NULL),
(145,'scene_white_forest_launch_sequence','Alarms screaming in rapid bursts',NULL),
(146,'scene_white_forest_launch_sequence','Artifact singing in a piercing psychic tone',NULL),
(147,'scene_white_forest_launch_sequence','Explosions thundering through distant tunnels',NULL),
(148,'scene_white_forest_launch_success','Distant thud of collapsing structures',NULL),
(149,'scene_white_forest_launch_success','Dying whir of deactivating drones',NULL),
(150,'scene_white_forest_launch_success','Soft crackle of static fading from comms channels',NULL),
(151,'scene_white_forest_launch_failure','Alarms droning in a falling wail',NULL),
(152,'scene_white_forest_launch_failure','Collapsing concrete crashing onto metal floors',NULL),
(153,'scene_white_forest_launch_failure','Distant Brood battle cries echoing closer',NULL),
(154,'scene_white_forest_launch_failure','Electrical arcs sizzling from severed cables',NULL),
(155,'scene_post_launch_victory','Soft hum of power slowly returning to systems',NULL),
(156,'scene_post_launch_victory','Distant cheers rising from streets outside',NULL),
(157,'scene_post_launch_victory','Gentle clatter of debris being cleared from walkways',NULL),
(158,'scene_post_launch_failure','Emergency alarms droning faintly under debris',NULL),
(159,'scene_post_launch_failure','Crackling sparks from damaged consoles',NULL),
(160,'scene_post_launch_failure','Distant alien howls echoing through city streets',NULL);
/*!40000 ALTER TABLE `environment_sounds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `environment_visuals`
--

DROP TABLE IF EXISTS `environment_visuals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `environment_visuals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `scene_id` varchar(255) DEFAULT NULL,
  `visual` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `scene_id` (`scene_id`)
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `environment_visuals`
--

LOCK TABLES `environment_visuals` WRITE;
/*!40000 ALTER TABLE `environment_visuals` DISABLE KEYS */;
INSERT INTO `environment_visuals` VALUES
(1,'scene_campaign_intro','Neon lights flickering over ruined streets'),
(2,'scene_campaign_intro','Hive-Spire pulsing like a living wound'),
(3,'scene_campaign_intro','Biometric drones weaving glowing paths overhead'),
(4,'scene_intro_train','Flickering neon lights overhead, casting dancing shadows'),
(5,'scene_intro_train','Passengers slumped in silence, eyes blank'),
(6,'scene_intro_train','Violet and blue magical arcs outside the windows'),
(7,'scene_intro_train','Graffiti scratched into cracked plastic and steel'),
(8,'scene_intro_train','Occasional bursts of sparks raining down like blue sparks'),
(9,'scene_arrival_city_view','Vast city skyline of black towers and shifting glyphs'),
(10,'scene_arrival_city_view','Hive-Spire glowing and pulsing like a living entity'),
(11,'scene_arrival_city_view','Purple lightning slashing across the sky'),
(12,'scene_arrival_city_view','Propaganda banners fluttering between towers'),
(13,'scene_arrival_city_view','Brood Enforcers standing motionless on the platform'),
(14,'scene_blending_in_success','Red scanning beams sweeping over travelers'),
(15,'scene_blending_in_success','Telescreens flickering with government messages'),
(16,'scene_blending_in_success','Brood Enforcers standing motionless, like statues'),
(17,'scene_blending_in_failure_flagged','Amber warning lights pulsing on Enforcer chest panels'),
(18,'scene_blending_in_failure_flagged','Surveillance cameras swiveling toward the party'),
(19,'scene_blending_in_failure_flagged','Manhacks hovering nearby, blades spinning silently'),
(20,'scene_blending_in_failure_blow_cover','Strobing red warning lights'),
(21,'scene_blending_in_failure_blow_cover','Enforcers charging through smoke'),
(22,'scene_blending_in_failure_blow_cover','Manhacks diving toward the party'),
(23,'scene_security_checkpoint_success','Green scanning lasers sweeping over civilians'),
(24,'scene_security_checkpoint_success','Alien glyphs pulsing on station walls'),
(25,'scene_security_checkpoint_success','Enforcersâ€™ glowing visors scanning faces'),
(26,'scene_security_checkpoint_success','Bright neon lights in the distant concourse'),
(27,'scene_security_checkpoint_failure','Red lights flashing across every surface'),
(28,'scene_security_checkpoint_failure','Manhacks diving toward the group with spinning blades'),
(29,'scene_security_checkpoint_failure','Enforcers raising shock batons and plasma rifles'),
(30,'scene_security_checkpoint_failure','Civilians scattering in all directions'),
(31,'scene_security_checkpoint_failure','Hive-Spire glowing brighter in the skyline beyond the station windows'),
(32,'scene_isolation_encounter','Dimly lit corridor lined with tangled cables and rusted conduits'),
(33,'scene_isolation_encounter','Beads of condensation dripping from overhead pipes'),
(34,'scene_isolation_encounter','Sparks flickering sporadically in the gloom'),
(35,'scene_isolation_encounter','Ravenâ€™s intense gaze illuminated by a single dangling work light'),
(36,'scene_rooftop_escape','Strobing neon signs painting rooftops in violent color'),
(37,'scene_rooftop_escape','Goliath Walkers moving through streets far below'),
(38,'scene_rooftop_escape','Purple lightning crackling overhead, illuminating alien shapes'),
(39,'scene_rooftop_escape','Hive-Spire pulsing in the skyline, glyphs crawling across its surface'),
(40,'scene_rooftop_escape','Searchlights sweeping rooftops, cutting through the darkness'),
(41,'scene_rendezvous_with_raven','Steel pipes crisscrossing overhead, dripping condensation'),
(42,'scene_rendezvous_with_raven','Pale safety lights casting dim reflections on water pools'),
(43,'scene_rendezvous_with_raven','Flickering glow from Ravenâ€™s data pad screen'),
(44,'scene_rooftop_combat','Gunship searchlight sweeping rooftops in blinding arcs'),
(45,'scene_rooftop_combat','Neon reflecting off swirling steam clouds'),
(46,'scene_rooftop_combat','Brood Enforcers advancing in formation'),
(47,'scene_rooftop_combat','Sparks spraying from shattered rooftop vents'),
(48,'scene_capture_and_processing','Rows of restrained prisoners standing like statues in metal frames'),
(49,'scene_capture_and_processing','Alien glyphs flickering across console screens'),
(50,'scene_capture_and_processing','The Overseerâ€™s featureless metal skull reflecting surgical lights'),
(51,'scene_capture_and_processing','Neural spikes descending from mechanical arms toward prisonerâ€™s necks'),
(52,'scene_raven_processing_escape','Blue EMP arcs dancing across shattered consoles'),
(53,'scene_raven_processing_escape','Prisoners staggering from neural frames'),
(54,'scene_raven_processing_escape','Clouds of steam obscuring vision'),
(55,'scene_raven_processing_escape','Overseer radiating psychic energy like ghostly flames'),
(56,'scene_campaign_intro','Neon lights flickering over ruined streets'),
(57,'scene_campaign_intro','Hive-Spire pulsing like a living wound'),
(58,'scene_campaign_intro','Biometric drones weaving glowing paths overhead'),
(59,'scene_intro_train','Flickering neon lights overhead, casting dancing shadows'),
(60,'scene_intro_train','Passengers slumped in silence, eyes blank'),
(61,'scene_intro_train','Violet and blue magical arcs outside the windows'),
(62,'scene_intro_train','Graffiti scratched into cracked plastic and steel'),
(63,'scene_intro_train','Occasional bursts of sparks raining down like blue sparks'),
(64,'scene_arrival_city_view','Vast city skyline of black towers and shifting glyphs'),
(65,'scene_arrival_city_view','Hive-Spire glowing and pulsing like a living entity'),
(66,'scene_arrival_city_view','Purple lightning slashing across the sky'),
(67,'scene_arrival_city_view','Propaganda banners fluttering between towers'),
(68,'scene_arrival_city_view','Brood Enforcers standing motionless on the platform'),
(69,'scene_blending_in_success','Red scanning beams sweeping over travelers'),
(70,'scene_blending_in_success','Telescreens flickering with government messages'),
(71,'scene_blending_in_success','Brood Enforcers standing motionless, like statues'),
(72,'scene_blending_in_failure_flagged','Amber warning lights pulsing on Enforcer chest panels'),
(73,'scene_blending_in_failure_flagged','Surveillance cameras swiveling toward the party'),
(74,'scene_blending_in_failure_flagged','Manhacks hovering nearby, blades spinning silently'),
(75,'scene_blending_in_failure_blow_cover','Strobing red warning lights'),
(76,'scene_blending_in_failure_blow_cover','Enforcers charging through smoke'),
(77,'scene_blending_in_failure_blow_cover','Manhacks diving toward the party'),
(78,'scene_security_checkpoint_success','Green scanning lasers sweeping over civilians'),
(79,'scene_security_checkpoint_success','Alien glyphs pulsing on station walls'),
(80,'scene_security_checkpoint_success','Enforcersâ€™ glowing visors scanning faces'),
(81,'scene_security_checkpoint_success','Bright neon lights in the distant concourse'),
(82,'scene_security_checkpoint_failure','Red lights flashing across every surface'),
(83,'scene_security_checkpoint_failure','Manhacks diving toward the group with spinning blades'),
(84,'scene_security_checkpoint_failure','Enforcers raising shock batons and plasma rifles'),
(85,'scene_security_checkpoint_failure','Civilians scattering in all directions'),
(86,'scene_security_checkpoint_failure','Hive-Spire glowing brighter in the skyline beyond the station windows'),
(87,'scene_isolation_encounter','Dimly lit corridor lined with tangled cables and rusted conduits'),
(88,'scene_isolation_encounter','Beads of condensation dripping from overhead pipes'),
(89,'scene_isolation_encounter','Sparks flickering sporadically in the gloom'),
(90,'scene_isolation_encounter','Ravenâ€™s intense gaze illuminated by a single dangling work light'),
(91,'scene_rooftop_escape','Strobing neon signs painting rooftops in violent color'),
(92,'scene_rooftop_escape','Goliath Walkers moving through streets far below'),
(93,'scene_rooftop_escape','Purple lightning crackling overhead, illuminating alien shapes'),
(94,'scene_rooftop_escape','Hive-Spire pulsing in the skyline, glyphs crawling across its surface'),
(95,'scene_rooftop_escape','Searchlights sweeping rooftops, cutting through the darkness'),
(96,'scene_rendezvous_with_raven','Steel pipes crisscrossing overhead, dripping condensation'),
(97,'scene_rendezvous_with_raven','Pale safety lights casting dim reflections on water pools'),
(98,'scene_rendezvous_with_raven','Flickering glow from Ravenâ€™s data pad screen'),
(99,'scene_rooftop_combat','Gunship searchlight sweeping rooftops in blinding arcs'),
(100,'scene_rooftop_combat','Neon reflecting off swirling steam clouds'),
(101,'scene_rooftop_combat','Brood Enforcers advancing in formation'),
(102,'scene_rooftop_combat','Sparks spraying from shattered rooftop vents'),
(103,'scene_capture_and_processing','Rows of restrained prisoners standing like statues in metal frames'),
(104,'scene_capture_and_processing','Alien glyphs flickering across console screens'),
(105,'scene_capture_and_processing','The Overseerâ€™s featureless metal skull reflecting surgical lights'),
(106,'scene_capture_and_processing','Neural spikes descending from mechanical arms toward prisonerâ€™s necks'),
(107,'scene_raven_processing_escape','Blue EMP arcs dancing across shattered consoles'),
(108,'scene_raven_processing_escape','Prisoners staggering from neural frames'),
(109,'scene_raven_processing_escape','Clouds of steam obscuring vision'),
(110,'scene_raven_processing_escape','Overseer radiating psychic energy like ghostly flames'),
(111,'scene_rendezvous_with_raven','Neon light spilling through cracks in the concrete ceiling'),
(112,'scene_rendezvous_with_raven','Pools of water reflecting flickering lights'),
(113,'scene_rendezvous_with_raven','Freed civilians sitting dazed against the walls'),
(114,'scene_rendezvous_with_raven','Ravenâ€™s map glowing under a portable lamp'),
(115,'scene_white_forest_mission','The Artifact glowing softly, pulsing with shifting colors'),
(116,'scene_white_forest_mission','Worn maps spread across a metal table'),
(117,'scene_white_forest_mission','Ravenâ€™s face half-lit in flickering lamplight'),
(118,'scene_white_forest_mission','Dust motes swirling in beams of pale light from cracks in the ceiling'),
(119,'scene_undercity_entry','Brick and steel tunnels arching away into blackness'),
(120,'scene_undercity_entry','Bioluminescent fungi glowing in clusters like ghost lights'),
(121,'scene_undercity_entry','Tangles of hanging cables and rusted metal'),
(122,'scene_undercity_entry','Pools of brackish water reflecting faint glimmers of light'),
(123,'scene_undercity_progress','Green glow reflecting off pools of still water'),
(124,'scene_undercity_progress','Catwalks crisscrossing high above the chamber floor'),
(125,'scene_undercity_progress','Resistance graffiti scrawled on old stone platforms'),
(126,'scene_undercity_progress','Rust and peeling paint flaking from steel beams'),
(127,'scene_undercity_ambush','Crimson plasma bolts illuminating the tunnel walls'),
(128,'scene_undercity_ambush','Steam clouds swirling through flashlight beams'),
(129,'scene_undercity_ambush','Manhacks darting in flashes of silver blades'),
(130,'scene_undercity_ambush','Brood Enforcers moving like black-clad specters in the mist'),
(131,'scene_white_forest_entry','Massive blast doors with faded lettering'),
(132,'scene_white_forest_entry','Resistance graffiti scrawled across concrete walls'),
(133,'scene_white_forest_entry','Bright industrial lights illuminating supply corridors'),
(134,'scene_white_forest_entry','Resistance fighters carrying weapons and equipment'),
(135,'scene_white_forest_launch_prep','The Artifact blazing with shifting purple light'),
(136,'scene_white_forest_launch_prep','Holographic maps flickering with red enemy markers'),
(137,'scene_white_forest_launch_prep','Technicians sprinting between consoles'),
(138,'scene_white_forest_launch_prep','Ravenâ€™s silhouette lit in brilliant arcs of violet glow'),
(139,'scene_white_forest_launch_sequence','Artifact shining like a miniature star'),
(140,'scene_white_forest_launch_sequence','Holographic displays flickering with red error warnings'),
(141,'scene_white_forest_launch_sequence','Resistance fighters ducking behind barricades'),
(142,'scene_white_forest_launch_sequence','Brood Enforcers marching through clouds of sparks and debris'),
(143,'scene_white_forest_launch_success','Missile contrail fading in the sky like a violet ribbon'),
(144,'scene_white_forest_launch_success','Hive-Spire fracturing in showers of alien light'),
(145,'scene_white_forest_launch_success','Resistance fighters staring in stunned silence'),
(146,'scene_white_forest_launch_success','Screens flickering with static as Brood signals vanish'),
(147,'scene_white_forest_launch_failure','Shattered consoles sparking on the floor'),
(148,'scene_white_forest_launch_failure','Clouds of dust and smoke swirling under emergency lights'),
(149,'scene_white_forest_launch_failure','Hive-Spire glowing brighter, pulsing like a beating heart'),
(150,'scene_white_forest_launch_failure','Resistance fighters dragging comrades away under fire'),
(151,'scene_post_launch_victory','Golden sunrise spilling through cracks in blast doors'),
(152,'scene_post_launch_victory','Hive-Spire fractured into jagged shards on the skyline'),
(153,'scene_post_launch_victory','Resistance fighters sharing quiet embraces or resting against walls'),
(154,'scene_post_launch_victory','Flickering neon lights reigniting across the city'),
(155,'scene_post_launch_failure','Hive-Spire blazing in violent violet light'),
(156,'scene_post_launch_failure','Resistance fighters limping through smoke-filled corridors'),
(157,'scene_post_launch_failure','Glowing alien glyphs scrolling across shattered screens'),
(158,'scene_post_launch_failure','Shattered walls revealing flickers of neon outside');
/*!40000 ALTER TABLE `environment_visuals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `effects_json` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sector_number` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npcs`
--

DROP TABLE IF EXISTS `npcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `npcs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `npcs`
--

LOCK TABLES `npcs` WRITE;
/*!40000 ALTER TABLE `npcs` DISABLE KEYS */;
INSERT INTO `npcs` VALUES
(1,'The Brood','A vast psychic hive-mind, unseen yet omnipresent. Its thoughts radiate through Terra, eroding free will.',NULL),
(2,'The Carbine','Humans fused with alien biotechâ€”obedient soldiers, once people, now tools of the Hive.',NULL),
(3,'The Resistance','Scattered cells hiding beneath the worldâ€™s surface. Fractured, desperate, but unwilling to surrender.',NULL),
(4,'Unnamed Civilian','A man across the aisle, eyes red and vacant, with a neural compliance plate flickering faint lights beneath the skin behind his ear. Silent and unmoving except for the tear streaking down his cheek.',NULL),
(5,'Raven','Mentioned only via the note. A legendary resistance operative, known for extracting operatives from impossible situations. Still unseen in this scene.',NULL),
(6,'Dr. Elias Breen','Puppet governor of City-17, seen here only via telescreens. His soothing propaganda is infused with psychic resonance designed to instill compliance and pacify dissent.',NULL),
(7,'Brood Enforcer','Silent, towering presence. Issues orders in mechanical tones. An ever-present threat that shapes civilian behavior through fear.',NULL),
(8,'Resistance Officer','A stern, seasoned commander overseeing White Forestâ€™s operations. No-nonsense but deeply loyal to the cause. Speaks with authority and urgency.',NULL);
/*!40000 ALTER TABLE `npcs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_characters`
--

DROP TABLE IF EXISTS `player_characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `race_id` int(11) DEFAULT NULL,
  `stats_json` longtext DEFAULT NULL,
  `inventory_json` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_characters`
--

LOCK TABLES `player_characters` WRITE;
/*!40000 ALTER TABLE `player_characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terra_sector_control`
--

DROP TABLE IF EXISTS `terra_sector_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `terra_sector_control` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `indicator` varchar(64) NOT NULL,
  `description` text DEFAULT NULL,
  `value_type` varchar(32) NOT NULL,
  `sector_1` float DEFAULT 0,
  `sector_2` float DEFAULT 0,
  `sector_3` float DEFAULT 0,
  `sector_4` float DEFAULT 0,
  `sector_5` float DEFAULT 0,
  `sector_6` float DEFAULT 0,
  `sector_7` float DEFAULT 0,
  `sector_8` float DEFAULT 0,
  `sector_9` float DEFAULT 0,
  `sector_10` float DEFAULT 0,
  `sector_11` float DEFAULT 0,
  `sector_12` float DEFAULT 0,
  `sector_13` float DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terra_sector_control`
--

LOCK TABLES `terra_sector_control` WRITE;
/*!40000 ALTER TABLE `terra_sector_control` DISABLE KEYS */;
INSERT INTO `terra_sector_control` VALUES
(1,'karbyne_overcity_control_base','Baseline Karbyne overcity control','percentage',0.9,0.85,0.8,0.7,0.6,0.8,0.9,0.75,0.85,0.7,0.8,0.6,0.5),
(2,'karbyne_overcity_control_current','Current Karbyne overcity control','percentage',0.88,0.83,0.79,0.72,0.62,0.77,0.91,0.7,0.8,0.69,0.79,0.58,0.45),
(3,'karbyne_overcity_activity_level','Karbyne operational activity overcity','integer',3,4,5,3,4,5,6,4,5,3,3,2,1),
(4,'karbyne_undercity_control_base','Baseline Karbyne undercity control','percentage',0.6,0.65,0.7,0.68,0.66,0.7,0.7,0.6,0.7,0.55,0.6,0.58,0.5),
(5,'karbyne_undercity_control_present','Current Karbyne undercity control','percentage',0.58,0.63,0.69,0.65,0.64,0.68,0.66,0.58,0.69,0.5,0.6,0.55,0.45),
(6,'karbyne_undercity_activity_level','Karbyne operational activity undercity','integer',4,3,5,4,3,5,5,4,5,2,3,2,2),
(7,'resistance_overcity_control_base','Baseline Resistance overcity control','percentage',0.1,0.12,0.15,0.18,0.2,0.15,0.12,0.2,0.1,0.3,0.2,0.25,0.4),
(8,'resistance_overcity_control_current','Current Resistance overcity control','percentage',0.15,0.14,0.18,0.2,0.25,0.17,0.14,0.24,0.12,0.34,0.24,0.28,0.42),
(9,'resistance_overcity_activity_level','Resistance presence overcity','integer',3,3,4,5,5,4,4,6,3,6,5,5,6),
(10,'resistance_undercity_control_base','Baseline Resistance undercity control','percentage',0.4,0.35,0.3,0.32,0.34,0.3,0.25,0.4,0.3,0.45,0.4,0.38,0.5),
(11,'resistance_undercity_control_current','Current Resistance undercity control','percentage',0.42,0.38,0.32,0.36,0.39,0.35,0.28,0.43,0.32,0.49,0.42,0.4,0.55),
(12,'resistance_undercity_activity_level','Resistance presence undercity','integer',3,4,5,5,4,5,5,5,5,5,6,5,6),
(13,'syndicate_overcity_control_base','Baseline Syndicate overcity control','percentage',0.05,0.1,0.05,0.12,0.08,0.1,0.05,0.15,0.05,0.2,0.1,0.18,0.2),
(14,'syndicate_overcity_control_current','Current Syndicate overcity control','percentage',0.06,0.13,0.06,0.15,0.1,0.12,0.08,0.17,0.06,0.23,0.14,0.2,0.24),
(15,'syndicate_overcity_activity_level','Syndicate presence overcity','integer',3,4,3,5,4,4,3,6,4,5,5,5,6),
(16,'syndicate_undercity_control_base','Baseline Syndicate undercity control','percentage',0.2,0.3,0.2,0.35,0.25,0.3,0.2,0.32,0.2,0.4,0.3,0.38,0.35),
(17,'syndicate_undercity_control_current','Current Syndicate undercity control','percentage',0.22,0.34,0.24,0.38,0.28,0.33,0.24,0.35,0.23,0.43,0.32,0.41,0.38),
(18,'syndicate_undercity_activity_level','Syndicate presence undercity','integer',4,4,4,5,5,5,4,5,4,6,5,6,5),
(19,'civilian_top_class_base','% of elite civilian presence','percentage',0.12,0.11,0.15,0.1,0.2,0.18,0.12,0.1,0.22,0.14,0.15,0.13,0.2),
(20,'civilian_middle_class_base','% of middle-class population','percentage',0.5,0.45,0.6,0.5,0.6,0.65,0.55,0.58,0.6,0.62,0.55,0.54,0.6),
(21,'civilian_lower_class_base','% of low-income or informal sector population','percentage',0.3,0.4,0.25,0.35,0.2,0.17,0.33,0.3,0.15,0.24,0.3,0.33,0.15),
(22,'civilian_activity_level','Daily civilian mobility, market activity, etc','integer',4,5,4,3,5,4,5,6,4,3,4,5,6),
(23,'black_market_activity_level','Clandestine trade, arms, contraband levels','integer',3,4,5,5,6,6,5,5,4,4,3,5,6),
(24,'power_grid_stability','Power infrastructure health and uptime by sector','percentage',0.95,0.92,0.91,0.9,0.93,0.95,0.9,0.88,0.91,0.89,0.87,0.9,0.92),
(25,'karcomm_integrity','Karbyne comms signal integrity (encrypted ops)','percentage',0.85,0.87,0.88,0.89,0.86,0.87,0.88,0.86,0.87,0.85,0.84,0.86,0.87),
(26,'karcomm_alert_level','Active threat level for Karbyne comms','integer',1,1,2,3,1,1,2,3,1,2,2,2,1),
(27,'karnode_integrity','Karbyne node terminal data network status','percentage',0.93,0.92,0.9,0.91,0.89,0.92,0.93,0.91,0.92,0.93,0.92,0.9,0.91),
(28,'karnode_sysnode_alert_level','Alert level for Karbyne system nodes (data control)','integer',1,2,1,2,2,2,1,2,2,1,2,1,2),
(29,'rescomm_integrity','Resistance communication reliability','percentage',0.8,0.82,0.79,0.78,0.81,0.8,0.82,0.78,0.8,0.81,0.79,0.8,0.8),
(30,'civcomm_integrity','Civilian network access and signal strength','percentage',0.75,0.74,0.76,0.77,0.78,0.76,0.75,0.76,0.75,0.77,0.76,0.75,0.74),
(31,'blackcomm_integrity','Black market/syndicate comm system activity','percentage',0.7,0.72,0.71,0.69,0.7,0.72,0.7,0.71,0.73,0.7,0.72,0.71,0.7);
/*!40000 ALTER TABLE `terra_sector_control` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-30 17:46:04
