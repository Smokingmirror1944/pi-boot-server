/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.13-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: citysite_c17db
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
-- Table structure for table `branching_outcomes`
--

DROP TABLE IF EXISTS `branching_outcomes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `branching_outcomes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `scene_id` varchar(255) DEFAULT NULL,
  `outcome_type` text DEFAULT NULL,
  `next_scene_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `scene_id` (`scene_id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branching_outcomes`
--

LOCK TABLES `branching_outcomes` WRITE;
/*!40000 ALTER TABLE `branching_outcomes` DISABLE KEYS */;
INSERT INTO `branching_outcomes` VALUES
(1,'scene_campaign_intro','success','Scene transitions to the Metro Train Ride scene. No skill check required.'),
(2,'scene_campaign_intro','failure','There is no failure state in the prologue; it serves purely as narrative introduction.'),
(3,'scene_intro_train','success','scene_arrival_city_view'),
(4,'scene_intro_train','success','scene_blending_in_success'),
(5,'scene_intro_train','failure','scene_blending_in_failure_flagged'),
(6,'scene_intro_train','failure','scene_blending_in_failure_blow_cover'),
(7,'scene_arrival_city_view','success','scene_blending_in_success'),
(8,'scene_arrival_city_view','failure','scene_blending_in_failure_flagged'),
(9,'scene_arrival_city_view','failure','scene_blending_in_failure_blow_cover'),
(10,'scene_blending_in_success','success','scene_rooftop_escape'),
(11,'scene_blending_in_failure_flagged','success','scene_security_checkpoint_success'),
(12,'scene_blending_in_failure_flagged','failure','scene_security_checkpoint_failure'),
(13,'scene_blending_in_failure_blow_cover','success','scene_isolation_encounter'),
(14,'scene_blending_in_failure_blow_cover','failure','scene_isolation_encounter'),
(15,'scene_security_checkpoint_success','success','scene_rooftop_escape'),
(16,'scene_security_checkpoint_failure','success','scene_isolation_encounter'),
(17,'scene_security_checkpoint_failure','failure','scene_isolation_encounter'),
(18,'scene_isolation_encounter','success','scene_rooftop_escape'),
(19,'scene_rooftop_escape','success','scene_rendezvous_with_raven'),
(20,'scene_rooftop_escape','failure','scene_rooftop_combat'),
(21,'scene_rendezvous_with_raven','success','scene_white_forest_mission'),
(22,'scene_rooftop_combat','success','scene_rendezvous_with_raven'),
(23,'scene_rooftop_combat','failure','scene_capture_and_processing'),
(24,'scene_capture_and_processing','success','scene_raven_processing_escape'),
(25,'scene_capture_and_processing','failure','scene_raven_processing_escape'),
(26,'scene_raven_processing_escape','success','scene_rendezvous_with_raven'),
(27,'scene_campaign_intro','success','Scene transitions to the Metro Train Ride scene. No skill check required.'),
(28,'scene_campaign_intro','failure','There is no failure state in the prologue; it serves purely as narrative introduction.'),
(29,'scene_intro_train','success','scene_arrival_city_view'),
(30,'scene_intro_train','success','scene_blending_in_success'),
(31,'scene_intro_train','failure','scene_blending_in_failure_flagged'),
(32,'scene_intro_train','failure','scene_blending_in_failure_blow_cover'),
(33,'scene_arrival_city_view','success','scene_blending_in_success'),
(34,'scene_arrival_city_view','failure','scene_blending_in_failure_flagged'),
(35,'scene_arrival_city_view','failure','scene_blending_in_failure_blow_cover'),
(36,'scene_blending_in_success','success','scene_rooftop_escape'),
(37,'scene_blending_in_failure_flagged','success','scene_security_checkpoint_success'),
(38,'scene_blending_in_failure_flagged','failure','scene_security_checkpoint_failure'),
(39,'scene_blending_in_failure_blow_cover','success','scene_isolation_encounter'),
(40,'scene_blending_in_failure_blow_cover','failure','scene_isolation_encounter'),
(41,'scene_security_checkpoint_success','success','scene_rooftop_escape'),
(42,'scene_security_checkpoint_failure','success','scene_isolation_encounter'),
(43,'scene_security_checkpoint_failure','failure','scene_isolation_encounter'),
(44,'scene_isolation_encounter','success','scene_rooftop_escape'),
(45,'scene_rooftop_escape','success','scene_rendezvous_with_raven'),
(46,'scene_rooftop_escape','failure','scene_rooftop_combat'),
(47,'scene_rendezvous_with_raven','success','scene_white_forest_mission'),
(48,'scene_rooftop_combat','success','scene_rendezvous_with_raven'),
(49,'scene_rooftop_combat','failure','scene_capture_and_processing'),
(50,'scene_capture_and_processing','success','scene_raven_processing_escape'),
(51,'scene_capture_and_processing','failure','scene_raven_processing_escape'),
(52,'scene_raven_processing_escape','success','scene_rendezvous_with_raven'),
(53,'scene_rendezvous_with_raven','success','scene_white_forest_mission'),
(54,'scene_white_forest_mission','success','scene_undercity_entry'),
(55,'scene_undercity_entry','success','scene_undercity_progress'),
(56,'scene_undercity_entry','failure','scene_undercity_ambush'),
(57,'scene_undercity_progress','success','scene_white_forest_entry'),
(58,'scene_undercity_ambush','success','scene_white_forest_entry'),
(59,'scene_undercity_ambush','failure','scene_capture_and_processing'),
(60,'scene_white_forest_entry','success','scene_white_forest_launch_prep'),
(61,'scene_white_forest_launch_prep','success','scene_white_forest_launch_sequence'),
(62,'scene_white_forest_launch_prep','failure','scene_white_forest_launch_sequence'),
(63,'scene_white_forest_launch_sequence','success','scene_white_forest_launch_success'),
(64,'scene_white_forest_launch_sequence','failure','scene_white_forest_launch_failure');
/*!40000 ALTER TABLE `branching_outcomes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `abilities_json` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES
(1,'Biotechnician','Biotechnicians are masters of genetic engineering and biological manipulation, bending both organic and synthetic ecosystems to their will. In City-17, they are urban bio-sorcerers who craft living weapons, reshape city environments, and unleash swarms of engineered creatures against the Broodâ€™s regime. Some are revolutionaries aiming to reclaim Terraâ€™s balance; others simply revel in the power to reforge life. Their art merges ancient druidic traditions with cutting-edge science, proving that nature can adaptâ€”even in a concrete jungle.','[{\"name\":\"Genetic Code\",\"level\":1,\"description\":\"At 1st level, you know how to manipulate the building blocks of life. Your spellcasting draws from the Biotechnician spell list, using Wisdom as your spellcasting ability.\"},{\"name\":\"Biotech Focus\",\"level\":1,\"description\":\"At 1st level, you can use a biotech device or engineered organism as your spellcasting focus.\"},{\"name\":\"Bioform Shift\",\"level\":2,\"description\":\"Starting at 2nd level, you can alter your biology to take on beast-like traits. As an action, you can transform into a beast you have seen before, following the same rules as the druid\\u2019s Wild Shape feature.\"},{\"name\":\"Biotech Circle\",\"level\":2,\"description\":\"At 2nd level, you choose a Biotech Circle representing your approach to biological warfare and engineering: TerraformR, SplicR, or AnimatR. Your choice grants you features at 2nd, 6th, 10th, and 14th levels.\"},{\"name\":\"Urban Environmental Adaptation\",\"level\":7,\"description\":\"At 7th level, you can navigate City-17\\u2019s terrain with ease. Difficult terrain in urban environments doesn\\u2019t slow your group\\u2019s travel. You can also detect environmental hazards, such as radiation zones or biochemical spills, automatically.\"},{\"name\":\"Bioform Upgrade\",\"level\":8,\"description\":\"At 8th level, you can transform into creatures of CR 1 or lower.\"},{\"name\":\"Genetic Resilience\",\"level\":11,\"description\":\"At 11th level, you become resistant to poison and disease due to genetic modifications.\"},{\"name\":\"Urban Camouflage\",\"level\":15,\"description\":\"At 15th level, you can blend into urban environments. You can hide even when only lightly obscured by crowds, shadows, or urban clutter.\"},{\"name\":\"Timeless Cell Structure\",\"level\":18,\"description\":\"At 18th level, your cell regeneration slows aging dramatically. You suffer none of the frailty of old age and cannot be aged magically.\"},{\"name\":\"Apex Biotechnician\",\"level\":20,\"description\":\"At 20th level, you become a master of biological adaptation. You can use your Bioform Shift an unlimited number of times. Additionally, you can transform into beasts of CR 3 or lower.\"}]'),
(2,'Broker','Brokers are the social architects and manipulators of City-17. They trade in secrets, data flows, and human connections. In the war for Terra, information is power, and Brokers are the ones who bend that power to their willâ€”whether on a neon-lit stage or in the shadows of corporate towers. Whether charming crowds, cracking encrypted networks, or planting false intel, Brokers shape the Resistanceâ€™s fortunes without ever drawing a blade. Theyâ€™re storytellers, propagandists, and cunning schemersâ€”warriors of words and whispers.','[{\"name\":\"Broker Skills\",\"level\":1,\"description\":\"At 1st level, you gain proficiency with three skills of your choice and three urban performance tools or musical instruments.\"},{\"name\":\"Tactical Inspiration\",\"level\":1,\"description\":\"As a Broker, you can inspire allies through clever tactics and coded signals. You have a pool of Inspiration dice equal to your Charisma modifier (minimum 1). These dice are d6s. As a bonus action, you can grant one creature you can see an Inspiration die, usable within 10 minutes to add to an ability check, attack roll, or saving throw. This die increases to d8 at 5th level, d10 at 10th level, and d12 at 15th level.\"},{\"name\":\"Jack of All Trades\",\"level\":2,\"description\":\"Starting at 2nd level, you add half your proficiency bonus to any ability check that doesn\\u2019t already include your proficiency bonus.\"},{\"name\":\"Song of Rest\",\"level\":2,\"description\":\"Beginning at 2nd level, while allies regain hit points during a short rest, you can perform to soothe them. Any creature regaining hit points regains an extra 1d6 hit points. This bonus increases as you level.\"},{\"name\":\"Font of Inspiration\",\"level\":5,\"description\":\"At 5th level, you regain all expended Inspiration dice when you finish a short or long rest.\"},{\"name\":\"Counter-Hack\",\"level\":7,\"description\":\"At 7th level, your mastery of information warfare allows you to disrupt enemy spells. You can use your reaction to impose disadvantage on a creature\\u2019s spell attack against you or an ally within 30 feet.\"},{\"name\":\"Tactical Secrets\",\"level\":9,\"description\":\"Starting at 9th level, you learn two spells of your choice from any class. These count as Broker spells for you and don\\u2019t count against your number of spells known. You learn an additional spell from any class at 13th and 17th levels.\"},{\"name\":\"Expertise\",\"level\":10,\"description\":\"At 10th level, choose two skills you\\u2019re proficient in. Your proficiency bonus is doubled for checks with those skills.\"},{\"name\":\"Magical Disruption\",\"level\":11,\"description\":\"At 11th level, when a creature you can see within 60 feet makes a saving throw against an enchantment or illusion spell, you can grant them advantage as a reaction.\"},{\"name\":\"Counter-Charm\",\"level\":15,\"description\":\"At 15th level, you can use your action to grant yourself and allies within 30 feet advantage on saving throws against being frightened or charmed for 1 minute.\"},{\"name\":\"Supreme Inspiration\",\"level\":20,\"description\":\"At 20th level, when you roll initiative and have no Inspiration dice left, you regain one die.\"}]'),
(3,'Cursed','Cursed are individuals bound to alien entities, rogue AIs, or forbidden energies lingering from the Rift. These pacts grant them immense powerâ€”arcane, psychic, or technologicalâ€”but at a terrible price. Whispers haunt their thoughts, shadows coil around their steps, and the Broodâ€™s sensors sometimes flicker when they pass. Cursed walk City-17â€™s streets as enigmas. They wield magic fused with quantum anomalies, radiological pulses, or echoes of forgotten gods. Some serve the Resistance; others pursue cryptic agendas known only to them and their patrons.','[{\"name\":\"Patron Pact\",\"level\":1,\"description\":\"At 1st level, you forge a pact with an otherworldly patron\\u2014a rogue AI, an alien entity, or an echo of the Rift\\u2019s chaos. This connection grants you unique abilities and shapes your powers. Your choice grants features at 1st, 6th, 10th, and 14th levels.\"},{\"name\":\"Eldritch Invocations\",\"level\":2,\"description\":\"Starting at 2nd level, you gain access to forbidden techniques called Eldritch Invocations, altering how your magic manifests.\"},{\"name\":\"Pact Boon\",\"level\":3,\"description\":\"At 3rd level, your bond deepens, granting you a specific boon, such as a weapon made of data constructs, a high-tech focus implant, or a biotech companion.\"},{\"name\":\"Mystic Arcanum\",\"level\":11,\"description\":\"At 11th level, you can cast powerful spells once per long rest without using spell slots, representing catastrophic technologies or alien rituals.\"},{\"name\":\"Eldritch Master\",\"level\":20,\"description\":\"At 20th level, you can commune with your patron to regain all expended spell slots of your Cursed class after a one-minute ritual.\"}]'),
(4,'Ghost','Ghosts are masters of infiltration, urban stealth, and sudden violence. In the towering streets and hidden tunnels of City-17, they slip unseen through security nets, assassinate high-value targets, and vanish before alarms ever sound. To the Brood, a Ghost is a phantom insurgent; to the Resistance, theyâ€™re vital operatives who carve paths through the regimeâ€™s defenses. Ghosts harness precision, speed, and cunning. Their tools range from simple blades to high-tech infiltration gear. Each Ghost is an urban predator, waiting in silence for the perfect moment to strike.','[{\"name\":\"Ghost Skills\",\"level\":1,\"description\":\"At 1st level, you gain proficiency with four skills from the Ghost list, thieves\' tools, and a hacker\\u2019s kit or infiltration gear.\"},{\"name\":\"Precision Strike\",\"level\":1,\"description\":\"Once per turn, deal extra damage with a finesse or ranged weapon if you have advantage, or if an ally is adjacent to the target.\"},{\"name\":\"Cunning Tech\",\"level\":2,\"description\":\"At 2nd level, use a bonus action to Dash, Disengage, Hide, or attempt a quick hack.\"},{\"name\":\"Ghost Path\",\"level\":3,\"description\":\"At 3rd level, choose a Ghost Path reflecting your tactics: Widowmaker, Shadowman, or Underboss.\"},{\"name\":\"Uncanny Dodge\",\"level\":5,\"description\":\"At 5th level, use your reaction to halve an attack\\u2019s damage.\"},{\"name\":\"Evasion\",\"level\":7,\"description\":\"At 7th level, take no damage on a successful Dexterity save and half on a failure.\"},{\"name\":\"Infiltration Expertise\",\"level\":9,\"description\":\"At 9th level, move stealthily at full speed and leave no trace unless you choose to.\"},{\"name\":\"Reliable Talent\",\"level\":11,\"description\":\"At 11th level, treat rolls of 9 or lower on ability checks as 10 if you\\u2019re proficient.\"},{\"name\":\"Blindsense\",\"level\":13,\"description\":\"At 13th level, detect hidden or invisible creatures within 10 feet.\"},{\"name\":\"Slippery Mind\",\"level\":15,\"description\":\"At 15th level, gain proficiency in Wisdom saving throws.\"},{\"name\":\"Elusive\",\"level\":17,\"description\":\"At 17th level, attackers never gain advantage against you while you\\u2019re conscious.\"},{\"name\":\"Stroke of Luck\",\"level\":20,\"description\":\"At 20th level, turn a missed attack into a hit or a failed check into a 20 once per rest.\"}]'),
(5,'Intelligentsia','Intelligentsia are the Resistanceâ€™s scholars, scientists, and arcane researchers. They blend ancient magic with bleeding-edge science, studying energy flows, neural fields, and digital architectures. From data vaults beneath City-17 to the strange echoes of the Rift, Intelligentsia seek ultimate knowledge and the means to twist the world to their will. Their magic isnâ€™t born of passion or bloodlinesâ€”itâ€™s precision, calculation, and relentless pursuit of understanding. For every Carbine algorithm, an Intelligentsia has a counter-code. For every Brood psychic field, they devise an interference pattern. Knowledge is their weapon.','[{\"name\":\"Spellcasting\",\"level\":1,\"description\":\"At 1st level, you have a spellbook containing six 1st-level spells of your choice from the Intelligentsia spell list. Intelligence is your spellcasting ability.\"},{\"name\":\"Arcane Recovery\",\"level\":1,\"description\":\"Once per day when you finish a short rest, you can recover a number of spell slots equal to half your Intelligentsia level (rounded up).\"},{\"name\":\"Arcane Tradition\",\"level\":2,\"description\":\"At 2nd level, you choose your specialized field of study, called an Arcane Tradition. Choose from Physicist (Evocation), Subversionist (Illusion), Neurologist (Enchantment), Immunologist (Abjuration), Biogenesist (Necromancy), Analyst (Divination), Synthesist (Conjuration), Alchemist (Transmutation), or Arcanist (Arcana). Each grants features at 2nd, 6th, 10th, and 14th levels.\"},{\"name\":\"Spell Mastery\",\"level\":18,\"description\":\"At 18th level, choose one 1st-level and one 2nd-level spell in your spellbook. You can cast those spells at their lowest level without expending a spell slot.\"},{\"name\":\"Signature Spells\",\"level\":20,\"description\":\"At 20th level, choose two 3rd-level spells in your spellbook as signature spells. You can cast them once without expending a spell slot. You regain this ability after a short or long rest.\"}]'),
(6,'Mercenary','Mercenaries are martial artists, urban combat specialists, and silent weapons of the Resistance. In City-17â€™s concrete jungles and neon-lit alleyways, Mercenaries rely on speed, precision, and devastating physical techniques to strike at the heart of the Broodâ€™s regime. Theyâ€™re disciplined warriors honed through rigorous training, mental focus, and sheer survival instinct. Some act as stealth assassins, others as relentless brawlers, but all Mercenaries wield their bodies as deadly weapons, blending ancient combat styles with urban warfare tactics.','[{\"name\":\"Martial Arts\",\"level\":1,\"description\":\"At 1st level, your training lets you fight unarmed or with specific weapons. You can use Dexterity instead of Strength for attack and damage rolls. You roll a Martial Arts die for damage, which increases as you level up. When you use the Attack action with an unarmed strike or Mercenary weapon, you can make one unarmed strike as a bonus action.\"},{\"name\":\"Urban Ki\",\"level\":2,\"description\":\"At 2nd level, you tap into your inner ki energy. Your ki points fuel special techniques, such as Flurry of Blows, Patient Defense, and Step of the Wind. You regain all ki points after a short or long rest.\"},{\"name\":\"Unarmored Movement\",\"level\":2,\"description\":\"Starting at 2nd level, your speed increases while unarmored, as shown on the Mercenary table.\"},{\"name\":\"Mercenary Path\",\"level\":3,\"description\":\"At 3rd level, you choose a path that defines your fighting style: Bouncer, Foot Soldier, or Cage Fighter. Your choice grants features at 3rd, 6th, 11th, and 15th levels.\"},{\"name\":\"Extra Attack\",\"level\":5,\"description\":\"At 5th level, you can attack twice instead of once when you take the Attack action.\"},{\"name\":\"Stunning Strike\",\"level\":5,\"description\":\"At 5th level, when you hit a creature with a melee attack, you can spend 1 ki point to force it to make a Constitution save or be stunned until the end of your next turn.\"},{\"name\":\"Evasion\",\"level\":7,\"description\":\"At 7th level, you take no damage on a successful Dex save against effects that deal half damage and only half damage on a failed save.\"},{\"name\":\"Stillness of Mind\",\"level\":7,\"description\":\"At 7th level, you can end one effect on yourself causing you to be charmed or frightened.\"},{\"name\":\"Purity of Body\",\"level\":10,\"description\":\"At 10th level, you\\u2019re immune to disease and poison.\"},{\"name\":\"Tongue of the City Streets\",\"level\":13,\"description\":\"At 13th level, you can understand and speak all spoken languages and anyone can understand your words.\"},{\"name\":\"Diamond Soul\",\"level\":14,\"description\":\"At 14th level, you gain proficiency in all saving throws. You can spend 1 ki point to reroll a failed save.\"},{\"name\":\"Timeless Body\",\"level\":17,\"description\":\"At 17th level, you suffer none of the frailty of old age and no longer need food or water.\"},{\"name\":\"Empty Body\",\"level\":18,\"description\":\"At 18th level, you can spend 4 ki points to become invisible for 1 minute. During this time, you have resistance to all damage but force damage. You can also spend 8 ki points to cast astral projection.\"},{\"name\":\"Perfect Self\",\"level\":20,\"description\":\"At 20th level, when you roll initiative and have no ki points, you regain 4 ki points.\"}]'),
(7,'Engineer','Engineers are technological innovators in City-17, merging science, arcane principles, and pure inventive genius. They design battlefield tech, craft high-tech gadgets, and build devices that keep the Resistance a step ahead of the Broodâ€™s overwhelming might. Whether rigging explosives, creating combat drones, or hacking Carbine systems, Engineers are the cutting edge of Terraâ€™s secret war. An Engineerâ€™s brilliance is part art, part science, and part raw stubbornness. Their minds are always one step ahead, solving problems before others even realize thereâ€™s danger coming.','[{\"name\":\"Tech Casting\",\"level\":1,\"description\":\"At 1st level, you gain the ability to cast spells, drawing on scientific and arcane knowledge. Intelligence is your spellcasting ability.\"},{\"name\":\"Infuse Item\",\"level\":2,\"description\":\"At 2nd level, you can magically enhance objects with arcane infusions, creating gadgets like energy shields or comm-links.\"},{\"name\":\"Technological Savant\",\"level\":2,\"description\":\"At 2nd level, you craft devices in half the time and cost.\"},{\"name\":\"Engineer Specialty\",\"level\":3,\"description\":\"At 3rd level, choose a specialty: Chemtech, Grenadier, or Mech-Tech. This grants features at 3rd, 5th, 9th, and 15th levels.\"},{\"name\":\"Arcane Engineering\",\"level\":5,\"description\":\"At 5th level, you can use infused tools or weapons as your spellcasting focus.\"},{\"name\":\"Flash of Genius\",\"level\":7,\"description\":\"At 7th level, you can add your Intelligence modifier to an ally\\u2019s ability check or saving throw as a reaction.\"},{\"name\":\"Magic Item Adept\",\"level\":10,\"description\":\"At 10th level, you craft magic items faster and attune up to four items.\"},{\"name\":\"Spell-Storing Device\",\"level\":11,\"description\":\"At 11th level, you can store a spell in a custom device for later use.\"},{\"name\":\"Magic Item Savant\",\"level\":14,\"description\":\"At 14th level, you ignore class, race, or level restrictions on magic items and attune up to five items.\"},{\"name\":\"Technological Mastery\",\"level\":15,\"description\":\"At 15th level, you can cast greater restoration and fabricate once per long rest and attune instantly to magic items during a short rest.\"},{\"name\":\"Magic Item Master\",\"level\":18,\"description\":\"At 18th level, you can attune to six magic items.\"},{\"name\":\"Supreme Engineer\",\"level\":20,\"description\":\"At 20th level, you can empower infused items to grant advantage once per turn without expending resources.\"}]'),
(8,'Pathfinder','Pathfinders are the Resistanceâ€™s scouts, trackers, and infiltrators. They know the ruined streets, hidden tunnels, and radioactive wastelands of Terra better than any satellite map. Masters of pursuit and guerrilla warfare, Pathfinders stalk the Broodâ€™s patrols and guide their allies through the most dangerous zones of the city. To the Pathfinders, the city itself is a weapon: they read the neon lights and shifting crowds like terrain, striking quickly and disappearing without a trace.','[{\"name\":\"Urban Tracker\",\"level\":1,\"description\":\"At 1st level, you gain proficiency with Investigation and Survival, or you can choose two other skills from the Pathfinder list. You\\u2019re also proficient in urban navigation and can move through crowds and tight spaces without being slowed.\"},{\"name\":\"Combat Style\",\"level\":1,\"description\":\"At 1st level, choose a combat style: Dual Wielding, Marksman, or Defense. You gain a benefit associated with your chosen style.\"},{\"name\":\"Tactical Awareness\",\"level\":2,\"description\":\"At 2nd level, you gain a bonus to initiative rolls equal to your Wisdom modifier. Additionally, on your first turn in combat, your movement speed increases by 10 feet.\"},{\"name\":\"Pathfinder Archetype\",\"level\":3,\"description\":\"At 3rd level, choose a Pathfinder Archetype that shapes your urban operations: Pointman, Urban Bounty Hunter, or Somnambulist. Your choice grants features at 3rd, 7th, 11th, and 15th levels.\"},{\"name\":\"Urban Camouflage\",\"level\":6,\"description\":\"At 6th level, you can attempt to hide even when only lightly obscured in an urban environment.\"},{\"name\":\"Stealth Operative\",\"level\":9,\"description\":\"At 9th level, you can move at full speed while hiding and leave no trace of your passage unless you choose to.\"},{\"name\":\"Multi-Strike\",\"level\":11,\"description\":\"At 11th level, when you take the Attack action, you can make one additional attack as part of the same action.\"},{\"name\":\"Urban Escape\",\"level\":13,\"description\":\"At 13th level, you can Disengage as a bonus action and ignore difficult terrain during that turn.\"},{\"name\":\"Ambush Master\",\"level\":15,\"description\":\"At 15th level, if you surprise a creature and hit it during the first round of combat, that creature cannot act until the end of your next turn.\"},{\"name\":\"Enhanced Camouflage\",\"level\":18,\"description\":\"At 18th level, you can hide even while being directly observed if you are lightly obscured in urban terrain.\"},{\"name\":\"Master Tracker\",\"level\":20,\"description\":\"At 20th level, you always know the distance and direction to any creature you have seen or tracked within the last year.\"}]');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enemies`
--

DROP TABLE IF EXISTS `enemies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `enemies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `statblock` longtext DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enemies`
--

LOCK TABLES `enemies` WRITE;
/*!40000 ALTER TABLE `enemies` DISABLE KEYS */;
/*!40000 ALTER TABLE `enemies` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Table structure for table `flags`
--

DROP TABLE IF EXISTS `flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `flags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flag_name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `mission_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flags`
--

LOCK TABLES `flags` WRITE;
/*!40000 ALTER TABLE `flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `flags` ENABLE KEYS */;
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
-- Table structure for table `lore`
--

DROP TABLE IF EXISTS `lore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `text` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lore`
--

LOCK TABLES `lore` WRITE;
/*!40000 ALTER TABLE `lore` DISABLE KEYS */;
/*!40000 ALTER TABLE `lore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `missions`
--

DROP TABLE IF EXISTS `missions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `missions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `summary` text DEFAULT NULL,
  `full_text` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `missions`
--

LOCK TABLES `missions` WRITE;
/*!40000 ALTER TABLE `missions` DISABLE KEYS */;
INSERT INTO `missions` VALUES
(1,'To White Forest','A desperate mission to reach and activate White Forest before it’s too late.','The players must navigate City-17 and escape through the Undercity to reach the White Forest launch facility. Their choices will determine the fate of the resistance.');
/*!40000 ALTER TABLE `missions` ENABLE KEYS */;
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
-- Table structure for table `possible_enemies`
--

DROP TABLE IF EXISTS `possible_enemies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `possible_enemies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `scene_id` varchar(255) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `scene_id` (`scene_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `possible_enemies`
--

LOCK TABLES `possible_enemies` WRITE;
/*!40000 ALTER TABLE `possible_enemies` DISABLE KEYS */;
INSERT INTO `possible_enemies` VALUES
(1,'scene_intro_train','Brood Enforcer','Heavily armored soldiers clad in matte-black plating, faces hidden behind glowing visors. They speak with clipped, metallic voices and carry shock batons capable of subduing citizens instantly. Assigned to train patrols and station security.'),
(2,'scene_intro_train','Biometric Drone','Floating surveillance units bristling with cameras, optical sensors, and scanning arrays. Their quiet hum is often the only warning before they descend to check ID cards or scan neural implants. Their presence inspires terror among civilians.'),
(3,'scene_arrival_city_view','Brood Enforcer','Towering figures clad in matte-black armor, faces hidden behind red-glowing visors. They patrol station platforms, scanning passengers for anomalies, ready to deploy shock batons or call reinforcements.'),
(4,'scene_arrival_city_view','Goliath Walker','Massive biomechanical war machines moving on piston-driven legs. Armed with turret cannons, they patrol the streets below but are visible from the platform, contributing to the oppressive atmosphere.'),
(5,'scene_blending_in_failure_flagged','Brood Enforcer','Fully armed, ready to subdue or eliminate any resistance operatives discovered during inspections.'),
(6,'scene_blending_in_failure_blow_cover','Brood Enforcer','Armed with shock batons and short-range plasma rifles. They attack as a disciplined squad.'),
(7,'scene_blending_in_failure_blow_cover','Manhack Drones','Small rotary drones with razor blades for close-quarters attacks. Fast, aggressive, and dangerous in numbers.'),
(8,'scene_security_checkpoint_success','Brood Enforcer','Cold, methodical figures standing watch at every scanning station. Prepared to apprehend anyone who fails biometric screening.'),
(9,'scene_security_checkpoint_failure','Brood Enforcer','Black-armored soldiers wielding shock batons and plasma rifles. Trained to subdue or eliminate threats with ruthless efficiency.'),
(10,'scene_security_checkpoint_failure','Manhack Drones','Small, bladed drones that buzz through the air, slashing with whirling steel blades. Fast, agile, and deadly in close quarters.'),
(11,'scene_isolation_encounter','Brood Enforcer','Still searching the station. Their presence looms over the escape, although no direct combat happens in this corridor unless players delay too long.'),
(12,'scene_rooftop_escape','Civil Protection Gunship','VTOL aircraft bristling with searchlights and plasma cannons. Hunts targets from above, capable of unleashing devastating firepower if the players are exposed.'),
(13,'scene_rooftop_escape','Brood Enforcer Patrol','Small squads of armored soldiers climbing to rooftops. They move in coordinated formations, firing plasma rifles at any detected dissidents.'),
(14,'scene_rooftop_combat','Brood Enforcer Squad','Armed with plasma rifles and shock batons. Coordinate to flank and corner the party. Durable, disciplined, and dangerous at close range.'),
(15,'scene_rooftop_combat','Civil Protection Gunship','Hovers above the rooftops, using searchlights and heavy plasma cannons. Difficult to destroy but can be driven off with concentrated fire or EMP attacks.'),
(16,'scene_rooftop_combat','Manhack Drones','Fast-moving rotary drones with spinning blades. Target exposed players and try to cut them down in close quarters.'),
(17,'scene_capture_and_processing','Brood Overseer','A towering figure of gleaming bio-mechanical alloy, with psychic capabilities strong enough to probe and shatter human minds. Commands lower Enforcers and drones.'),
(18,'scene_capture_and_processing','Brood Enforcer','Present as guards during the processing sequence, prepared to subdue or terminate prisoners attempting escape.'),
(19,'scene_raven_processing_escape','Brood Overseer','A towering psychic juggernaut capable of mental assaults and high damage plasma strikes. Severely weakened after the EMP blast but still deadly.'),
(20,'scene_raven_processing_escape','Brood Enforcers','Recovering from the EMP, trying to regroup and block escape routes. Wield shock batons and plasma rifles.'),
(21,'scene_intro_train','Brood Enforcer','Heavily armored soldiers clad in matte-black plating, faces hidden behind glowing visors. They speak with clipped, metallic voices and carry shock batons capable of subduing citizens instantly. Assigned to train patrols and station security.'),
(22,'scene_intro_train','Biometric Drone','Floating surveillance units bristling with cameras, optical sensors, and scanning arrays. Their quiet hum is often the only warning before they descend to check ID cards or scan neural implants. Their presence inspires terror among civilians.'),
(23,'scene_arrival_city_view','Brood Enforcer','Towering figures clad in matte-black armor, faces hidden behind red-glowing visors. They patrol station platforms, scanning passengers for anomalies, ready to deploy shock batons or call reinforcements.'),
(24,'scene_arrival_city_view','Goliath Walker','Massive biomechanical war machines moving on piston-driven legs. Armed with turret cannons, they patrol the streets below but are visible from the platform, contributing to the oppressive atmosphere.'),
(25,'scene_blending_in_failure_flagged','Brood Enforcer','Fully armed, ready to subdue or eliminate any resistance operatives discovered during inspections.'),
(26,'scene_blending_in_failure_blow_cover','Brood Enforcer','Armed with shock batons and short-range plasma rifles. They attack as a disciplined squad.'),
(27,'scene_blending_in_failure_blow_cover','Manhack Drones','Small rotary drones with razor blades for close-quarters attacks. Fast, aggressive, and dangerous in numbers.'),
(28,'scene_security_checkpoint_success','Brood Enforcer','Cold, methodical figures standing watch at every scanning station. Prepared to apprehend anyone who fails biometric screening.'),
(29,'scene_security_checkpoint_failure','Brood Enforcer','Black-armored soldiers wielding shock batons and plasma rifles. Trained to subdue or eliminate threats with ruthless efficiency.'),
(30,'scene_security_checkpoint_failure','Manhack Drones','Small, bladed drones that buzz through the air, slashing with whirling steel blades. Fast, agile, and deadly in close quarters.'),
(31,'scene_isolation_encounter','Brood Enforcer','Still searching the station. Their presence looms over the escape, although no direct combat happens in this corridor unless players delay too long.'),
(32,'scene_rooftop_escape','Civil Protection Gunship','VTOL aircraft bristling with searchlights and plasma cannons. Hunts targets from above, capable of unleashing devastating firepower if the players are exposed.'),
(33,'scene_rooftop_escape','Brood Enforcer Patrol','Small squads of armored soldiers climbing to rooftops. They move in coordinated formations, firing plasma rifles at any detected dissidents.'),
(34,'scene_rooftop_combat','Brood Enforcer Squad','Armed with plasma rifles and shock batons. Coordinate to flank and corner the party. Durable, disciplined, and dangerous at close range.'),
(35,'scene_rooftop_combat','Civil Protection Gunship','Hovers above the rooftops, using searchlights and heavy plasma cannons. Difficult to destroy but can be driven off with concentrated fire or EMP attacks.'),
(36,'scene_rooftop_combat','Manhack Drones','Fast-moving rotary drones with spinning blades. Target exposed players and try to cut them down in close quarters.'),
(37,'scene_capture_and_processing','Brood Overseer','A towering figure of gleaming bio-mechanical alloy, with psychic capabilities strong enough to probe and shatter human minds. Commands lower Enforcers and drones.'),
(38,'scene_capture_and_processing','Brood Enforcer','Present as guards during the processing sequence, prepared to subdue or terminate prisoners attempting escape.'),
(39,'scene_raven_processing_escape','Brood Overseer','A towering psychic juggernaut capable of mental assaults and high damage plasma strikes. Severely weakened after the EMP blast but still deadly.'),
(40,'scene_raven_processing_escape','Brood Enforcers','Recovering from the EMP, trying to regroup and block escape routes. Wield shock batons and plasma rifles.'),
(41,'scene_undercity_entry','Brood Patrol','Small units of Carbine Enforcers, scanning the tunnels for resistance cells. Equipped with low-light vision and neural trackers.'),
(42,'scene_undercity_entry','Undercity Stalkers','Semi-feral mutants, remnants of civilians twisted by psychic backlash and toxic runoff. Lurk in the shadows, attacking from ambush.'),
(43,'scene_undercity_ambush','Brood Enforcers','Heavily armored patrol troops equipped with plasma rifles and shock batons. Use tunnel cover and suppressive fire.'),
(44,'scene_undercity_ambush','Manhack Drones','Whirling blades spinning on tiny rotors. Fast, lethal, and difficult to hit in close quarters.'),
(45,'scene_white_forest_launch_prep','Brood Infiltrator','Resistance members secretly assimilated by the Brood. Appear perfectly human but harbor concealed weapons and psychic implants.'),
(46,'scene_white_forest_launch_prep','Goliath Walkers','Colossal bipedal siege machines pounding toward White Forest. Their plasma cannons can breach blast doors if not stopped.'),
(47,'scene_white_forest_launch_sequence','Brood Enforcers','Storm the control room, seeking to kill Raven and sabotage the launch. Armed with plasma rifles and shock batons.'),
(48,'scene_white_forest_launch_sequence','Manhack Drones','Divebomb the party, seeking to shred cables and kill techs working on the launch consoles.'),
(49,'scene_white_forest_launch_sequence','Goliath Walkers (outside)','Hammering at blast doors from the exterior. Their presence creates a ticking clock of doom for the facility.'),
(50,'scene_white_forest_launch_failure','Brood Enforcers','Pushing into White Forest as defenders retreat, ready to crush remaining resistance forces.'),
(51,'scene_white_forest_launch_failure','Goliath Walkers','Pounding through breached defenses, unstoppable and relentless in their advance.');
/*!40000 ALTER TABLE `possible_enemies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `races`
--

DROP TABLE IF EXISTS `races`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `races` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `traits_json` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `races`
--

LOCK TABLES `races` WRITE;
/*!40000 ALTER TABLE `races` DISABLE KEYS */;
/*!40000 ALTER TABLE `races` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scene_links`
--

DROP TABLE IF EXISTS `scene_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `scene_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_scene_id` int(11) NOT NULL,
  `to_scene_id` int(11) NOT NULL,
  `link_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `from_scene_id` (`from_scene_id`),
  KEY `to_scene_id` (`to_scene_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scene_links`
--

LOCK TABLES `scene_links` WRITE;
/*!40000 ALTER TABLE `scene_links` DISABLE KEYS */;
INSERT INTO `scene_links` VALUES
(1,0,0,'Blend in successfully'),
(2,0,0,'Fail disguise check (flagged)'),
(3,0,0,'Completely blow cover'),
(4,0,0,'Get taken to checkpoint'),
(5,0,0,'Combat breaks out'),
(6,0,0,'Advance past security'),
(7,0,0,'Rescue by Raven');
/*!40000 ALTER TABLE `scene_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scene_npcs`
--

DROP TABLE IF EXISTS `scene_npcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `scene_npcs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scene_id` varchar(255) NOT NULL,
  `npc_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `scene_id` (`scene_id`),
  KEY `npc_id` (`npc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scene_npcs`
--

LOCK TABLES `scene_npcs` WRITE;
/*!40000 ALTER TABLE `scene_npcs` DISABLE KEYS */;
INSERT INTO `scene_npcs` VALUES
(1,'scene_campaign_intro',1),
(2,'scene_campaign_intro',2),
(3,'scene_campaign_intro',3),
(4,'scene_intro_train',4),
(5,'scene_intro_train',5),
(6,'scene_arrival_city_view',6),
(7,'scene_blending_in_success',6),
(8,'scene_blending_in_failure_flagged',6),
(9,'scene_security_checkpoint_success',7),
(10,'scene_security_checkpoint_success',6),
(11,'scene_security_checkpoint_failure',6),
(12,'scene_isolation_encounter',5),
(13,'scene_rooftop_escape',5),
(14,'scene_rendezvous_with_raven',5),
(15,'scene_rooftop_combat',5),
(16,'scene_capture_and_processing',5),
(17,'scene_capture_and_processing',6),
(18,'scene_raven_processing_escape',5),
(19,'scene_campaign_intro',1),
(20,'scene_campaign_intro',2),
(21,'scene_campaign_intro',3),
(22,'scene_intro_train',4),
(23,'scene_intro_train',5),
(24,'scene_arrival_city_view',6),
(25,'scene_blending_in_success',6),
(26,'scene_blending_in_failure_flagged',6),
(27,'scene_security_checkpoint_success',7),
(28,'scene_security_checkpoint_success',6),
(29,'scene_security_checkpoint_failure',6),
(30,'scene_isolation_encounter',5),
(31,'scene_rooftop_escape',5),
(32,'scene_rendezvous_with_raven',5),
(33,'scene_rooftop_combat',5),
(34,'scene_capture_and_processing',5),
(35,'scene_capture_and_processing',6),
(36,'scene_raven_processing_escape',5),
(37,'scene_rendezvous_with_raven',5),
(38,'scene_white_forest_mission',5),
(39,'scene_undercity_entry',5),
(40,'scene_undercity_progress',5),
(41,'scene_undercity_ambush',5),
(42,'scene_white_forest_entry',5),
(43,'scene_white_forest_entry',8),
(44,'scene_white_forest_launch_prep',5),
(45,'scene_white_forest_launch_prep',8),
(46,'scene_white_forest_launch_sequence',5),
(47,'scene_white_forest_launch_sequence',8),
(48,'scene_white_forest_launch_success',5),
(49,'scene_white_forest_launch_success',8),
(50,'scene_white_forest_launch_failure',5),
(51,'scene_white_forest_launch_failure',8),
(52,'scene_post_launch_victory',5),
(53,'scene_post_launch_victory',8),
(54,'scene_post_launch_failure',5),
(55,'scene_post_launch_failure',8);
/*!40000 ALTER TABLE `scene_npcs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scenes`
--

DROP TABLE IF EXISTS `scenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `scenes` (
  `scene_id` varchar(255) NOT NULL,
  `scene_name` varchar(255) DEFAULT NULL,
  `narration` longtext DEFAULT NULL,
  `dm_notes` longtext DEFAULT NULL,
  `mission_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`scene_id`),
  KEY `mission_id` (`mission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scenes`
--

LOCK TABLES `scenes` WRITE;
/*!40000 ALTER TABLE `scenes` DISABLE KEYS */;
INSERT INTO `scenes` VALUES
('scene_campaign_intro','Mission Prologue - To White Forest','Two centuries ago, Terra burned with ambition. Its cityscapes stretched from horizon to horizonâ€”a single, glittering metropolis pulsing with neon and sorcery. Towers of glass and steel clawed at the sky, while orbital elevators stitched Earth to the stars. Humanity believed it had tamed chaos itself. Neural implants offered perfect memory. Arcane reactors hummed with inexhaustible power. Disease and famine were ghosts of the past. \n\nBut arrogance always invites ruin.\n\nThe Rift began as a pinprick of violet lightâ€”a tiny tear in realityâ€™s fabric, hidden deep within a government lab. Scientists called it the Riftgate, a conduit to endless cosmic energy. They thought it a window. It was a door.\n\nThrough that door came the Brood.\n\nA psychic storm tore across Terra. Entire districts fell silent, their inhabitants devoured or remade. The planetary defense network collapsed. The skies were torn open by flashes of biomechanical wings. Humans were seized mid-battle and dragged into the Riftâ€”emerging hours later as hollow-eyed soldiers with glinting neural ports. Their minds were gone, replaced by the Broodâ€™s voice.\n\nWithin three days, humanity lost its world.\n\nThe Hive-Spire rose like a black wound at the heart of City-17â€”a tower of bone and alien alloy. Its walls pulse with psychic energy, broadcasting thoughts that choke human minds into submission. The streets below have become steel tombs where Goliath Walkers prowl and biometric drones hover, scanning for any sign of rebellion.\n\nYet in tunnels and shadows, the Resistance survives. Not an armyâ€”just a whisper. No fortresses or fleetsâ€”only scraps of stolen technology, the will to resist, and the hope of a single artifact that might sever the Broodâ€™s hold.\n\nAnd now, operatives ride a rusting metro train into City-17, their identities hidden behind forged IDs and trembling hope. If they fail, the last chance to close the Rift will vanish. If they succeedâ€¦ Terra might see dawn again.\n\nThe war was lost before it began. But humanity refuses to kneel.\n\nWelcomeâ€¦ to the Shadows of City-17.','Read this at a deliberate, ominous pace. Emphasize the fall from greatness, the cosmic horror, and the crushing weight of the Broodâ€™s occupation. Let this prologue build dread and set expectations: survival is unlikely, victory is impossibleâ€”but defiance still matters.',1),
('scene_intro_train','Metro Train Ride','The world shudders around you as the metro train plunges through endless darkness beneath City-17. Steel wheels scream over rusted tracks, sending vibrations rattling through the carriage walls. The train bucks and groans like a wounded beast. Outside the windows, bolts of violet and electric blue magic spark and dance, igniting shadows in brief, violent flashes. Each arc of energy reveals glimpses of the tunnel wallsâ€”crusted with grime and etched with alien glyphs that shimmer faintly, as though whispering secrets in a language no human should know.\n\nInside, the carriage is a relic of a lost world. Flickering neon strips stutter overhead, buzzing like dying insects. When the lights fail, darkness surges in, swallowing the car whole. In those black moments, the metal groans louder, the rattling of the wheels grows monstrous, and the train seems to become a coffin barreling through an abyss.\n\nRows of passengers sit hunched and silent. Civilian faces, pale and sallow, stare dead-eyed at nothing. Shadows pool beneath their sunken eyes. Their bodies sag beneath stained coats and threadbare tunics. One womanâ€™s hands tremble in her lap, knuckles white against her knees. A man two seats away has a metal compliance implant glinting behind his ear, faint lights pulsing beneath his skin like a heartbeat enslaved to some distant machine.\n\nThe air reeks of sweat, stale smoke, and hot metal. Somewhere overhead, sparks spit from a torn cable, filling the carriage with sharp ozone and flashes of blue light. A thin haze of cigarette smoke clings to the ceiling. Rust stains streak the corners of the floor like old blood. Cracks spiderweb across grimy plastic seatbacks, revealing the rusted metal skeleton beneath. Graffiti is scratched into the panelsâ€”some in Terran script, others in the jagged curves of Brood glyphs. One phrase, scrawled in shaking human letters, reads: â€œTHE BROOD SEES ALL.â€\n\nA battered telescreen flickers in and out of static. When it stabilizes, it shows serene footage of City-17â€™s skyline, all shining towers and orderly crowds. A broken voice croaks from hidden speakers: â€œCompliance ensures safety. The Carbine provides. Compliance ensures safety. The Carbine provides.â€\n\nOccasionally, the train jolts violently. Passengers flinch, gripping filthy handrails, fear flickering in their eyes before itâ€™s swallowed again by resignation. The metal howls in protest as wheels grind against the rails, echoing through the train like tortured screams.\n\nYour hand drifts to your pocket. Your fingers close around a scrap of crumpled paper, edges softened by sweat. You pull it free, shielding it from view, and unfold it under the flickering neon glow. Scrawled across its surface in faded ink are the words:\n\nCodename: â€˜Ravenâ€™\nCodeword: â€˜Isolationâ€™\n\nOne fragile thread tying you to a purpose. Proof that even in this tomb of steel and shadows, hope still flickers. You slide the paper back into your pocket, pulse quickening, eyes scanning the passengers around you. Any one of them might be harmlessâ€”or an informant waiting to raise an alarm.\n\nYour forged ID card sits in your inner coat pocket. Technically valid, but barely. One biometric scan, one suspicious glance, and your mask could crack. The resistance would lose one more soldier. And the Brood would add another voice to their choir of obedience.\n\nOverhead, the intercom crackles to life. The voice is metallic and hollow, distorted by countless layers of encryption and machine modulation:\n\nâ€œCitizens, remain calm. Maintain composure. All travel is subject to security verification. The Carbine ensures your safety.â€\n\nAs the train rattles ever closer to City-17, the neon glare reveals one last scene: across the aisle, a man stares into space, tears cutting clean paths through the grime caked on his cheeks. His neural implant flickers softly. He does not look at you.\n\nNobody speaks. Nobody dares. For in this placeâ€¦ even your thoughts might betray you.','Prompt the players to describe how they are disguised or blending in. Are they wearing factory worker coveralls, civic coats, or scavenged reprocessed uniforms? How are they concealing weapons or contraband? Are they tense, casual, or doing something specific to appear compliant? Encourage players to describe gestures, posture, and body language to deepen immersion.',1),
('scene_arrival_city_view','Arrival in City-17','The metro train slows with a tortured shriek of steel on steel. Sparks spray from the rails outside the windows as brakes clamp down. The lights flicker one last time, then surge to full brightness with a buzz of overloaded circuits. A metallic voice calls over the intercom: â€œPrepare for disembarkation. All passengers will submit to security screening.â€\n\nThe tunnel walls finally open, and the train emerges into a station hollowed into the heart of City-17. Beyond the platformâ€™s edge, the skyline unfolds in a monstrous, alien silhouette.\n\nCity-17 is no longer human.\n\nBlack towers rise like jagged teeth into a sky the color of bruises. The Hive-Spire dominates everythingâ€”a colossal needle of bone-white alloy, its surface rippling with alien glyphs that crawl and shift as if alive. Pulses of violet psychic energy throb along veins running up its walls, radiating a faint glow that reflects off the clouds. Above it, skyward rifts crackle and churn, vomiting arcs of purple lightning that twist across the heavens. Shapes swim behind the rift curtainsâ€”vast, insectoid shadows glimpsed for mere heartbeats before vanishing back into cosmic darkness.\n\nSteel bridges crisscross between skyscrapers, packed with columns of armored Carbine soldiers marching in perfect synchrony. Below, Goliath Walkersâ€”colossal bipedal machines fused with biomechanical sinewâ€”thud along the streets, their turrets swiveling, scanning every crowd. \n\nThe streets themselves are rivers of movement. Citizens shuffle forward in tight formations, heads bowed, eyes blank, each step perfectly aligned to the rhythmic commands booming from propaganda loudspeakers. Civil Protection drones hover overhead, red scanning lasers sweeping left and right like hunting predators.\n\nPropaganda banners hang from towers, bearing stylized glyphs and slogans: â€œHarmony Through Unity,â€ â€œThe Carbine Provides,â€ â€œCompliance Ensures Survival.â€ Flickering telescreens embedded in the architecture display the serene face of Dr. Elias Breen, City-17â€™s puppet governor, delivering calm assurances in a voice that resonates with the subtle, hypnotic cadence of psychic influence.\n\nThe train doors hiss open with a gust of sour, recycled air. Cold neon spills into the carriage, casting harsh light on the waiting platform. Brood Enforcers stand there in perfect stillness, black visors glowing with red light, shock batons crackling faintly in their fists. A low, pulsing vibration rises in the floorâ€”an inaudible psychic thrum that makes your skull ache, as if the Hive-Spire itself were watching and thinking.\n\nAhead lies the station exitâ€”and the first checkpoint.','Describe the **scale** and **alien nature** of City-17. Make the players feel small and hunted. Reinforce that the city is alive, shifting, and dangerous. Encourage the players to react emotionally to the sight of the Hive-Spire. Do they feel fear, anger, resignation? Use their responses to shape how they enter the checkpoint scene.',1),
('scene_blending_in_success','Blending In - Success','The train doors slide open with a hydraulic hiss, releasing a wave of stale air into the neon-lit station. Around you, the sea of passengers rises in silence, moving as one mass of bowed heads and shuffling feet. You slip into their flow, shoulders hunched, eyes low, breathing measured.\n\nYour forged ID sits heavy in your pocket. You avoid the gaze of the Brood Enforcers stationed along the platform. They stand immobile, faces hidden behind red-lit visors. The thrum of their neural scanners cuts through the station like an electric blade. One of them tilts its helmet slightly, the crimson glow sweeping over your formâ€”and then moving on, apparently satisfied.\n\nPropaganda screens overhead flicker to life, showing Dr. Elias Breenâ€™s pale, tranquil face. His voice drifts through the cavernous space, a smooth, well-rehearsed performance:\n\nâ€œWelcome. Welcome to City-17. You have chosen, or been chosen, to relocate to one of our finest remaining urban centers. I thought so much of City-17 that I elected to establishâ€¦ my administration here, in the Citadel so thoughtfully provided byâ€¦ our benefactors. I have been proud to call City-17 my home. And so, whether you are here to stay, or passing through on your way to parts unknownâ€¦ welcome to City-17.â€\n\nYou keep your head lowered as you shuffle toward the exit barriers. A flickering scanner passes over your group, projecting shimmering grids of light across your faces and torsos. It chirps twice, then falls silent. Green glyphs flicker on its surface, signaling safe passage.\n\nYouâ€™ve slipped through. For now, you are just another piece of the machine.\n\nBeyond the security archways, the roar of the city grows louderâ€”a thunderous mix of marching boots, distant explosions, and the psychic pulse emanating from the Hive-Spire like a migraine lodged behind your eyes.\n\nYou sense that somewhere beyond these walls, your contact waits: Raven. And City-17 itself seems to lean closer, listening.','Play up the relief and tension. Even though they succeeded, the danger hasnâ€™t passed. Let players decide if they head immediately for Ravenâ€™s rendezvous or linger to gather intel. Allow short scenes for roleplay if desired.',1),
('scene_blending_in_failure_flagged','Blending In - Flagged for Scrutiny','The train doors hiss open, and the passengers begin filing off in heavy silence. You try to slip into the flow, but your movements draw a flicker of attention. A Brood Enforcer, towering in matte-black armor, lifts one gloved hand and speaks in a voice like crushed metal:\n\nâ€œHold there. Stand straight, citizen.â€\n\nIts crimson visor sweeps over your group, scanning from head to foot. Static crackles from its helmet as the neural scanner buzzes to life. A row of green glyphs flickers across its chest plateâ€¦ then suddenly stutters, showing a pulsing amber glow.\n\nAnother Enforcer steps closer, shock baton humming with stored energy. Passengers around you keep moving, their eyes fixed to the floor, desperate not to be associated with whatever is happening.\n\nThe Enforcer speaks again, voice flat and echoing:\n\nâ€œPrepare for secondary biometric inspection. Any deviation will result in immediate disciplinary action.â€\n\nSomewhere above, propaganda speakers churn out the same gentle voice of Dr. Breen:\n\nâ€œRemember, compliance is safety. Resistance only prolongs suffering. The Carbine provides.â€\n\nYour heart thunders in your chest. The platform feels narrower. The Hive-Spire pulses in the distance like a heartbeat rattling the station walls.','Players can attempt new checks to talk or bluff their way out, or plan an escape. Tension should be extremely high. This scene sets up either a stealth solution or potential combat. Emphasize how citizens avoid eye contact and how isolation can become deadly.',1),
('scene_blending_in_failure_blow_cover','Blending In - Cover Blown','The moment the train doors open, everything goes wrong. A Brood Enforcer points directly at your group, its metallic voice booming:\n\nâ€œDISSIDENTS DETECTED. SUBJECTS FLAGGED FOR IMMEDIATE PROCESSING.â€\n\nPassengers around you scream and scatter. Enforcers surge forward, shock batons igniting with blue-white energy. Hovering drones pivot and dive, red targeting lasers pinning you in place. Alarms blare through the station, a klaxon howl echoing off steel beams.\n\nThe propaganda telescreen above flickers urgently, Dr. Breenâ€™s face replaced by a scrolling wall of crimson glyphs. Over the PA system, a synthesized voice bellows:\n\nâ€œALL CITIZENS FREEZE. COMPLIANCE MANDATORY. NEURAL RESTRUCTURING PENDING.â€\n\nThe air fills with the acrid scent of ozone as Manhacks swoop in, rotary blades whirring like razors. The Hive-Spire looms through the station windows, its glow pulsing faster, as though the city itself has noticed your presence.\n\nSteel barriers slam shut at either end of the platform. Youâ€™re trapped. Weapons hum to life around you.\n\nItâ€™s time to fightâ€”or die.','Immediate combat is inevitable. Ravenâ€™s intervention may occur later to help the group escape. Play up chaos, screaming civilians, crashing drones, and how quickly a surveillance state becomes a war zone.',1),
('scene_security_checkpoint_success','Security Checkpoint - Success','Escorted by Brood Enforcers, youâ€™re guided through a fenced corridor beneath a canopy of flickering lights. The walls around you are alive with shifting alien glyphs, pulsing with subtle psychic energy. Every step echoes through the station, magnified by the hush that has fallen over the civilian lines waiting for processing.\n\nAhead, biometric scanners hum with stored energy, each device lined with fine needles of crystal, glowing faintly green. One by one, passengers step forward and stand in place. A red beam sweeps over their faces, eyes, neural implants, and even beneath clothing. A chime signals clearanceâ€¦ or a shrill, warbling alarm that leads to immediate detainment.\n\nA Brood Enforcer gestures you forward. Its voice is a metallic hiss filtered through static:\n\nâ€œStand still, citizen. Maintain eye contact with the scan node. Noncompliance is an admission of guilt.â€\n\nThe scanner rises to your eye level, projecting fractal symbols that dance across your retinas. For an instant, your vision dissolves into dazzling geometric patterns. You feel a psychic pressure pressing into your thoughtsâ€”as if something enormous and cold were trying to peel back the layers of your mind.\n\nThenâ€”chime.\n\nA pale green glyph blossoms across the scannerâ€™s surface. The Enforcer jerks his chin toward the exit archway.\n\nâ€œProceed.â€\n\nYour forged ID held. Your mental defenses held. You slip through the checkpoint, nerves alight with adrenaline.\n\nBeyond the security barriers, the world opens into the vast concourse of City-17â€™s transport nexus. Strobing neon signs guide crowds along orderly lanes. Propaganda screens show endless loops of Dr. Breen speaking with false warmth. Goliath Walkers stomp through the thoroughfares outside, while the Hive-Spire looms above, its psychic pulse vibrating through your bones.\n\nSomewhere among these streets, Raven waits.','Describe the tension and relief in detail. Even though they passed, the checkpoint is a place of terror. Let players decompress slightly but remind them this city is still hunting them. Offer them the option to head for the rendezvous immediately, or try to gather intel in the concourse.',1),
('scene_security_checkpoint_failure','Security Checkpoint - Failure','Guided by Brood Enforcers, youâ€™re herded into a fenced corridor separated from the main flow of passengers. The lights above flicker harshly, casting your shadows in sharp angles across the concrete floor. Static crackles through hidden speakers as propaganda drones whir overhead, repeating the same droning message:\n\nâ€œCompliance is safety. Resistance prolongs suffering. The Carbine provides.â€\n\nAhead, a biometric scanning station looms, flanked by two Enforcers whose visors burn crimson in the gloom. One of them gestures you forward with a sharp flick of its baton. Its metallic voice echoes through the confined space:\n\nâ€œStep forward. Present identification. Prepare for secondary neural interrogation.â€\n\nThe scanner rises on a hydraulic arm, shining a web of fractal lights into your eyes. A wave of psychic pressure slams into your mind, as if icy claws are scraping across the inside of your skull. A deep voice speaks directly into your thoughts:\n\nâ€œERROR. ANOMALY DETECTED. SUBJECT IDENTITY MISMATCH.â€\n\nSuddenly, the scanning device begins strobing with violent red light. A shrill alarm blares. Citizens outside the corridor recoil, shuffling backward in silent horror. Enforcers snap to attention, weapons primed. The lead Enforcer raises its baton and speaks in a voice as cold as metal:\n\nâ€œDISSIDENTS IDENTIFIED. PREPARE FOR IMMEDIATE COMPLIANCE CORRECTION.â€\n\nManhacks drop from overhead hatches, rotary blades screaming through the air. Surveillance drones swoop in, focusing red tracking lasers on your group. A red glyph pulses across every telescreen in the station, repeating the same urgent broadcast:\n\nâ€œNON-COMPLIANT INDIVIDUALS LOCATED. INITIATING CONTAINMENT MEASURES.â€\n\nChaos erupts as civilians scatter in all directions. Screams echo off concrete walls. The Hive-Spire pulses in the distant skyline beyond the windows, its glow intensifying as if it, too, is aware of whatâ€™s unfolding.\n\nThereâ€™s no time to think. Fightâ€¦ or run.','Immediate conflict is unavoidable. Either combat begins, or Raven intervenes to extract the group. Play up the terror among civilians and the overwhelming show of force. The atmosphere should feel lethal and hopelessâ€”like the city is closing in on the players from all sides.',1),
('scene_isolation_encounter','Isolation Encounter (Raven Rescue)','Chaos reigns across the station. Klaxons blare and red warning lights strobe like arterial blood across concrete walls. Manhacks dart overhead, spinning their bladed rotors as civilians scatter, screaming. Enforcers move in perfect formation, weapons raised, visors burning red. Each mechanical footstep rings like a hammer strike, closing in around you.\n\nAnd thenâ€”a shudder ripples through the crowd. A single Brood Enforcer staggers as if pushed by an invisible force. Its crimson visor flickers, stuttering with static. It tries to speak, but only garbled noise comes out.\n\nAnother Enforcer steps forward, voice metallic and precise:\n\nâ€œIâ€™ll handle this one. Stand down. A little time in iso-la-tion will correct this oneâ€™s attitude.â€\n\nSomething in the tone doesnâ€™t match the others. Itâ€™s too fluid, tooâ€¦ human. The Enforcer subtly tilts its helmet toward you and jerks its head toward a side corridor. Its baton brushes against yours, and a low voice crackles through your comm implant:\n\nâ€œCodename Raven. Isolation. Move. Now.â€\n\nThe false Enforcer shoves one of the civilians aside and barks in official tones:\n\nâ€œClear this area! Non-citizens to Processing!â€\n\nBefore anyone can question it, the disguised figure grabs your arm and pulls you into a dim side corridor. The neon glare of the station vanishes behind a thick steel door that slams shut, sealing you in a narrow maintenance tunnel lined with exposed cables and dripping condensation.\n\nSilence crashes down, broken only by distant echoes of alarms.\n\nThe false Enforcer rips off its helmet, revealing a face streaked with sweat and dark combat paint. Sharp eyes gleam from beneath cropped hair.\n\nâ€œRaven,â€ they say, voice low but urgent. â€œWe donâ€™t have long. This whole cityâ€™s a knife waiting to drop. Youâ€™ve just been flagged. We have one shot to get you out before they tighten the net.â€\n\nThey glance back toward the sealed door, eyes narrowing. Beyond it, faint thuds reverberate as boots pound the station floor.\n\nâ€œI hope youâ€™re ready to run. Because everything after thisâ€¦ is a fight.â€','This is Ravenâ€™s reveal. Let the players react to the shock, or roleplay asking questions. Raven remains brisk but is willing to answer brief inquiries before moving. Make sure to communicate urgencyâ€”the next steps will either be stealth escape or rooftop pursuit. This scene funnels all branches back together.',1),
('scene_rooftop_escape','Rooftop Escape','Raven leads you at a sprint through the narrow maintenance tunnel, boots pounding on steel grating. The walls blur past in a haze of shadows and flickering red warning lights. Somewhere above, alarms howl like wounded beasts, echoing down metal ventilation shafts. Sparks shower from a ruptured conduit, casting bursts of blue light across Ravenâ€™s determined face.\n\nYou reach a rust-streaked ladder leading up toward a sealed hatch. Raven grips the metal bars and looks back, voice hushed but sharp:\n\nâ€œThis way. The streets are locked down. The rooftops are our only chance.â€\n\nThey shove the hatch open, and a blast of cold night air hits your face like a slap. You emerge into a chaos of light and noise atop a low industrial building, wind howling between the towering spires of City-17. Neon floods the rooftop in harsh colors: crimson, amber, electric blue. The sky churns above, purple lightning cracking across rents in the clouds, revealing glimpses of alien shapes twisting beyond the Rift.\n\nBelow, the streets are rivers of flashing red lights and mechanical patrols. Goliath Walkers stomp through the avenues, metal legs pounding the pavement, turrets sweeping for targets. Columns of Civil Protection soldiers flood intersections, shouting commands in harsh, metallic voices.\n\nThe Hive-Spire looms over everything, radiating pulses of psychic force that seem to vibrate through your teeth and bones. Its glyph-covered surface ripples like living flesh, as though breathing in time with your heartbeat.\n\nRaven signals you forward, moving in quick, low strides across the rooftopâ€™s rusted sheet-metal panels. They duck behind HVAC units and steel chimneys, scanning the skies with sharp eyes.\n\nâ€œKeep low,â€ Raven whispers. â€œSkywatch is running thermal scans. Stay off the ridgelines. Move when I say.â€\n\nSuddenly, a searchlight sweeps across the rooftop, blinding in its brilliance. Raven yanks you backward as a Civil Protection gunship howls overhead, engines shrieking. Its floodlight stabs into every corner, hunting for heat signatures. Through the gunshipâ€™s cockpit windows, red glyphs flicker across tactical readouts as weapons pivot downward.\n\nRavenâ€™s jaw tightens. â€œWe have to move. On threeâ€¦ oneâ€¦ twoâ€”â€\n\nThey bolt from cover, racing across the rooftop toward a narrow catwalk connecting to the next building. The metal creaks under your weight as you follow, the city sprawling beneath like a labyrinth of neon and steel.\n\nGunfire rattles in the distance. The roar of the Hive-Spire grows louder. Somewhere behind you, alarms shift in pitch, signaling the cityâ€™s relentless pursuit.\n\nThe chase has begun.','This scene should feel fast, tense, and cinematic. Raven takes the lead, but players can choose how to traverse rooftopsâ€”stealth, speed, or brute force. If players linger or fail stealth checks, gunships or patrols may engage them, leading to a rooftop combat encounter. Encourage vivid descriptions of movement and the vertigo-inducing heights.',1),
('scene_rendezvous_with_raven','Rendezvous with Raven - Success','Metal shrieks beneath your boots as you sprint across the final rooftop, Raven moving like a shadow ahead of you. Neon reflections streak across your vision: crimson, teal, radioactive green. Wind howls in your ears, carrying the psychic hum of the Hive-Spire pulsing through the skyline behind you.\n\nAhead, a massive ventilation duct rises from the rooftop like a rusted tower. Raven slows, one hand raised. They drop to a knee beside the ductâ€™s hatch and pull out a small black device, a portable EMP generator. Sparks leap from its coils as Raven mutters:\n\nâ€œCover me. Thisâ€™ll kill the alarms for ninety seconds.â€\n\nThereâ€™s a muffled snap. The hatch pops open, exhaling a burst of stale, metallic air. Raven waves you in. You follow, sliding into darkness. The windâ€™s roar fades behind you as the metal door swings shut.\n\nYou crawl through a narrow shaft that slopes downward at a dizzying angle. Somewhere above, gunship rotors beat the air in frustrated circles, sweeping rooftops for any trace of you.\n\nFinally, the vent opens into a cavernous maintenance chamber. Huge pipe networks cross overhead like tangled steel veins. Steam hisses from joints in pressurized valves. Pools of water ripple across the concrete floor, reflecting the pale glow of safety lights.\n\nRaven stands and pulls off their helmet, shaking out damp hair. Their face, streaked with sweat, breaks into a fleeting grin.\n\nâ€œNot bad,â€ Raven says, voice low. â€œThatâ€™s twice this week Iâ€™ve had to pull people out of a meat grinder.â€\n\nThey stride toward a battered metal locker and retrieve a satchel of resistance tech: forged IDs, small arms, comm chips. Raven tosses a data pad onto a nearby crate. On its cracked screen pulses a glowing map of City-17.\n\nâ€œWelcome to the fight,â€ Raven says. â€œYouâ€™ve seen the Hive-Spire. You know what weâ€™re up against. The next stepâ€¦ is White Forest. But first, youâ€™ll need to rest. Weâ€™ll move at first light.â€\n\nSomewhere above, the Hive-Spireâ€™s psychic pulse throbs through concrete and steel. Even here, deep beneath the city, its presence gnaws at your skull like invisible teeth. But for nowâ€¦ youâ€™re alive.','This scene offers a moment of calm. Let players catch their breath, talk to Raven, ask questions about the city, the Resistance, or next objectives. Raven provides intel and resources. This is also a good time to offer a short rest if using D&D mechanics.',1),
('scene_rooftop_combat','Rooftop Combat','The clang of your boots on metal rings too loudly. The wind shifts, carrying your heat signature straight into the gunshipâ€™s sensors. Its engines roar overhead, flooding the rooftops with searing white light. Raven spins toward you, eyes wide.\n\nâ€œDOWN!â€\n\nBlazing plasma bolts slam into the rooftop, exploding panels of steel into molten slag. Raven drags you behind an industrial vent as the gunship banks sharply, side cannons glowing with charged energy.\n\nFrom the far rooftop, Brood Enforcers burst through a rooftop door, rifles raised, helmets gleaming beneath the neon wash. They fire in disciplined bursts, shots sparking off metal ducts and tearing chunks from concrete walls.\n\nâ€œAmbush!â€ Raven shouts. â€œWeâ€™re compromised! We need to break through!â€\n\nWind howls around you, whipping coils of steam across the rooftop. Gunfire rattles the catwalks. Manhacks buzz overhead like hornets, blades spinning as they dive toward exposed flesh.\n\nRaven slides a compact plasma pistol across the rooftop to you.\n\nâ€œUse it. Weâ€™re fighting our way out.â€\n\nThe rooftop erupts into chaos. Sparks fly, gunfire roars, and the alien glow of the Hive-Spire pulses brighter, as though the city itself is feeding on the violence.','This is a combat scene. Roll initiative. Enemy tactics include suppressive fire from Enforcers and aerial strikes from the gunship. Manhacks engage in melee. Raven fights alongside the party. Allow creative tactics: ducking behind vents, leaping to other rooftops, or disabling drones. Victory lets them escape with Raven via the same maintenance vent as in the success scene.',1),
('scene_capture_and_processing','Capture and Processing','You fight until your muscles burn and your lungs scream for air. Plasma bolts scorch the rooftop around you, sending showers of molten sparks into the wind. Manhacks dive and slash, their bladed rotors drawing lines of crimson across skin and steel. Raven shouts for you to keep movingâ€”but the gunship swings lower, cannons glowing white-hot.\n\nA final burst of weapons fire crashes into the rooftop. The catwalk under your feet buckles. Youâ€™re thrown into a rolling tumble, striking the metal floor with stunning force. The world reels, a storm of neon and roaring wind.\n\nWhen your vision clears, you find yourself staring up at crimson lights shining through swirling clouds of steam. Brood Enforcers loom over you, shock batons crackling. Raven struggles nearby, pinned under two armored soldiers, blood streaking one side of their face.\n\nA synthesized voice booms through a comm unit:\n\nâ€œNEURAL ANOMALY NEUTRALIZED. SUBJECTS CLEARED FOR PROCESSING.â€\n\nA Manhack buzzes down toward your face, scanning your eyes with flickering red glyphs. Restraints clamp around your wrists, cold steel biting into your skin. The Enforcers drag you across the rooftop, boots clanging against blood-slick metal. Somewhere in the sky, the Hive-Spire pulses brighter, psychic tendrils pressing against your skull like invisible claws.\n\nHours blur into darkness. Youâ€™re thrown into a transport pod, shackled to a metal bench, Raven beside you, barely conscious. The hum of engines rises around you. Above the podâ€™s reinforced window, a propaganda screen flickers to life, showing Dr. Breenâ€™s serene face. His voice echoes in your skull:\n\nâ€œCompliance ensures safety. Resistance is chaos. The Carbine provides.â€\n\nYouâ€™re driven deeper into the cityâ€™s labyrinthine core, past flickering neon corridors and towering alloy walls pulsing with alien glyphs.\n\nEventually, the pod slides to a stop inside a cavernous processing chamber. The air hums with psychic static. Rows of civilians stand frozen in metal frames, neural spikes piercing the base of their skulls. Technicians in surgical masks monitor flickering consoles, their eyes hidden behind dark goggles.\n\nAn Overseer steps forward, taller than any human, its skull elongated and plated in sleek, bio-mechanical alloy. Its voice cuts into your mind without moving its lips:\n\nâ€œWelcome to the Hive-Spire. You will be refined. Do not resist.â€\n\nThe chamberâ€™s lights dim. The machines whir louder. And you feel the cold fingers of alien technology closing around your mind.','This is the lowest point in the arcâ€”a moment of despair and total vulnerability. Let players roleplay fear, defiance, or attempts to resist. If desired, offer skill checks for mental resistance, escape attempts, or for Raven to exploit a weakness in the processing facility. If they fail everything, the story continues with partial memory loss or psychological trauma. Either way, Ravenâ€™s presence allows an eventual breakout so the campaign can continue.',1),
('scene_raven_processing_escape','Ravenâ€™s Processing Escape','A needle-tipped neural spike hovers inches from your neck, glinting under harsh surgical lights. Cold metal clamps tighten around your skull. The Brood Overseerâ€™s psychic voice drills into your mind:\n\nâ€œCease struggle. Your essence shall be re-shaped.â€\n\nBut a flicker of motion catches your eye. Raven lifts their head slowly. One bloodshot eye locks on yours. Subtly, they open their palm to reveal a small cylindrical deviceâ€”a compact EMP grenade, hidden even during the pat-down.\n\nThe Overseerâ€™s metal skull tilts. It begins to raise a clawed hand, sensors flickering. But Ravenâ€™s lips barely move as they whisper:\n\nâ€œNow.â€\n\nA sharp click echoes through the processing chamber. The EMP detonates in a blue flash, spraying arcs of electric fire across cables and consoles. Lights explode in showers of sparks. Screens stutter and go dark. The neural spike retracts instantly, slamming back into its housing. The psychic pressure lifts like a storm breaking.\n\nBrood Enforcers stagger, their visors flickering and glitching. Manhack drones spin out of control, crashing into walls in showers of sparking metal. The Overseer reels back, its smooth alloy surface splintering with hairline fractures as arcs of psychic backlash crawl over its form.\n\nRaven wrenches free of the neural clamps, blood streaming down one temple. They drop to a crouch, grabbing a plasma pistol from a stunned technicianâ€™s belt and tossing it to you.\n\nâ€œMOVE!â€ Raven shouts.\n\nRed warning glyphs flare across remaining screens. Sirens shriek as security doors begin slamming down across the chamber. Raven sprints toward a side corridor, firing precise shots to drop Brood Enforcers as they attempt to recover. \n\nThe room becomes chaos. Sparks fall like neon rain. Pipes rupture overhead, pouring steam across the prisoners. Through the haze, you glimpse other civilians still trapped in neural harnesses, eyes pleading. Raven pivots toward the consoles and slams a fist onto a control pad. Hydraulic locks clunk open one by one, releasing dozens of prisoners from their frames.\n\nâ€œGet them out!â€ Raven barks. â€œTheyâ€™re coming in force!â€\n\nThe Overseer staggers back upright, psychic energy boiling off its skull like ghostly fire. It raises a claw and speaks into your mind:\n\nâ€œResisting is extinction.â€\n\nRaven turns to you, eyes blazing.\n\nâ€œYour call. Escape or fight. Either way, weâ€™re blowing this place to hell.â€','This is a high-tension escape scene. Players can choose to:\n\n- Help free prisoners (risking time and exposure)\n- Flee with Raven immediately\n- Stand and fight the Overseer for a decisive blow\n\nLet them roll skill checks for hacking consoles, fighting, or navigating the collapsing facility. If they stay to fight, prepare for a deadly boss battle. Either way, Raven ensures at least a partial escape so the campaign continues.',1),
('scene_white_forest_mission','White Forest Mission Briefing','The low hum of ventilation fans fills the concrete chamber as Raven slides a battered metal case onto the table. The case is locked with five tumblers, each etched with tiny glyphs that flicker between Terran letters and alien symbols. Raven kneels beside it, fingers working the tumblers one by one.\n\nClick. Click. Click.\n\nThe final latch pops open. Inside, wrapped in faded black velvet, lies the Artifact: a crystalline shard roughly the length of a dagger, pulsing with an inner glow that shifts between shades of indigo and ultraviolet. Runes spiral across its surface, rotating slowly as though engraved into liquid glass. It hums gently, vibrating in tune with the distant psychic pulse of the Hive-Spire.\n\nRaven exhales, voice hushed.\n\nâ€œWhite Forest. Thatâ€™s where this thing belongs. The only place left with enough arcane infrastructureâ€”and enough missile capacityâ€”to launch it into the Rift.â€\n\nThey slide a map across the table, lines of red and blue winding between city districts, sewers, and abandoned transit routes.\n\nâ€œThe Brood knows about the Artifact. Theyâ€™re searching every tunnel, checkpoint, and air lane. Weâ€™ll go in through the Undercity. Itâ€™s a labyrinth, but itâ€™s off the grid. From there, we hit White Forestâ€™s silo complex, install the Artifact into the launch array, and fire it straight into the Rift.â€\n\nRavenâ€™s eyes meet yours, intense and unflinching.\n\nâ€œOnce we fire that shotâ€¦ thereâ€™s no going back. The Brood will throw everything they have at us. The Hive-Spire itself might react.â€\n\nA deep boom echoes above, distant but powerful, as if some titanic machine has shifted its weight. Dust rains from the concrete ceiling.\n\nRaven leans forward.\n\nâ€œYour choice. We leave nowâ€¦ or we stay here and wait to be hunted.â€\n\nSilence fills the chamber. The Artifact glows softly, casting indigo shadows across the cracked walls. Somewhere far above, the Hive-Spire pulses, as though listening.','This scene is pure narrative and planning. Let players ask Raven any questions about the Artifact, White Forest, or the route. Raven shares tactical details and can provide maps, gear, or rumor-based intel. Encourage players to decide how theyâ€™ll approach the Undercity routeâ€”stealthy infiltration, speed, or brute force. This sets tone and flags for upcoming encounters.',1),
('scene_undercity_entry','Undercity Entry','The route to White Forest begins in darkness.\n\nRaven leads you through a narrow service corridor behind the bunker walls. Concrete gives way to rusted steel as you descend flight after flight of ancient stairwells, each step groaning under your weight. The air grows colder, filled with the tang of old water and mold.\n\nEventually, Raven halts beside a massive iron bulkhead half-buried in rubble. Arcane glyphs are scorched across its surface, evidence of magical warding burned away in some forgotten skirmish. Raven kneels, prying open a hidden panel with a combat knife. Sparks flicker as they bypass a corroded locking mechanism.\n\nâ€œHold your breath,â€ Raven mutters.\n\nThe door lurches aside with a tortured squeal. A blast of foul air rushes out, thick with decay and stagnant moisture. Beyond lies the Undercityâ€”a tunnel system older than City-17 itself. Arches of brick and steel stretch off into darkness, each corridor webbed with hanging cables, dripping pipes, and clusters of glistening fungal growths pulsing faintly with bioluminescent light.\n\nWater runs ankle-deep in some passages, carrying debris and swirling rainbow slicks of industrial runoff. Echoes dance across the tunnel walls, creating ghostly whispers impossible to trace back to a single source. Occasionally, distant vibrations rumble through the floor, as if something titanic prowls the depths far below.\n\nRaven gestures you forward, voice low and urgent.\n\nâ€œEyes open. The Undercity was abandoned when the Brood took power. Now itâ€™s a mazeâ€”and worse. Things live down here. Patrols sometimes come hunting. And if the Broodâ€™s psychic scouts find usâ€¦ weâ€™re done.â€\n\nYour footsteps splash through shallow water. Shadows twist in the flickering glow of phosphorescent fungi. Every metal drip and shifting echo seems to follow you like a predator.\n\nDeeper in the tunnel, a tangle of cables dangles like a curtain across the corridor. Raven lifts a hand, scanning it carefully.\n\nâ€œTripwires. Motion sensors. Could be Brood techâ€”or old Resistance traps.â€\n\nThe weight of the Hive-Spireâ€™s psychic pulse presses down even here, like invisible chains coiling around your mind.\n\nWelcomeâ€¦ to the Undercity.','This scene is ideal for establishing tension and environmental hazards. Let players describe how they proceed: stealthily creeping forward, investigating traps, or moving quickly. Consider random encounters with minor foes. The sense of claustrophobia and uncertainty should be palpable. Give players the option to disarm traps, gather intel, or avoid potential fights.',1),
('scene_undercity_progress','Undercity Progress - Success','Your party moves like shadows through the labyrinth of tunnels, Raven guiding you with hand signals and silent glances. The tunnels stretch on for miles, winding deeper under City-17â€™s foundations. Bioluminescent fungi ripple faintly as you pass, casting eerie turquoise glows across wet brick walls.\n\nAlong the way, you slip past ancient barriers of welded steel, each marked with faded resistance symbols and hidden code phrases. Raven crouches often, inspecting the ground for bootprints or scuffed detritus.\n\nEventually, Raven raises a hand, signaling a halt. You arrive at a large, domed chamber deep beneath the Hive-Spire. Rusted catwalks span pools of stagnant water glowing faintly green with industrial runoff. The ceiling arches high overhead, encrusted with pipes and cables drooping like steel vines.\n\nIn the center of the chamber rises an ancient rail terminal platform, half-buried under debris. Resistance graffiti scars its stonework:\n\n\'CARBINE BURNS\' and \'THE RIFT WILL FALL.\'\n\nRaven kneels beside a small metal hatch and opens it with practiced fingers. Inside lies a narrow shaft dropping straight into darkness.\n\nâ€œThis,â€ Raven murmurs, â€œis our shortcut. Drops us right under the White Forest perimeter. Bypass a dozen checkpoints.â€\n\nThey look back at you, eyes glinting in the glow of fungal light.\n\nâ€œNice work back there. Iâ€™m starting to believe we might pull this off.â€\n\nA low rumble echoes from far away, like the city exhaling in its sleep. Raven motions toward the shaft.\n\nâ€œReady?â€','This scene should feel like a reward for successful stealth or investigation. Give the party a moment to breathe, reflect, or ask Raven for additional details. Let them check equipment or plan their approach into White Forest. Itâ€™s also a good place to discover hidden supplies or intelligence caches if desired.',1),
('scene_undercity_ambush','Undercity Ambush - Failure','As your party advances through ankle-deep water, your boot scuffs a loose length of steel pipe. The sharp clang echoes through the tunnels like a gunshot. Raven whips around, eyes wide, fingers flying into combat signals.\n\nFrom every side tunnel, faint lights flare to lifeâ€”flashlights mounted to helmets, beams cutting through mist. Shadows shift behind rusted grates. The low clank of armored boots grows louder. Then a metallic voice barks through the dark:\n\nâ€œHalt! Carbine patrol. Show identification!â€\n\nBrood Enforcers step forward, weapons trained on your group. Their crimson visors burn like coals in the tunnel gloom. Behind them, two Manhack drones unfurl from folded frames, rotors screaming as they lift off, blades glinting in the phosphorescent light.\n\nRaven hisses through clenched teeth:\n\nâ€œToo late. We fight.â€\n\nSuddenly, blinding lights flood the chamber. Plasma bolts sizzle through the mist, striking brick walls and spraying mortar chips into the water. Manhacks dive, blades spinning, aiming to shred anything in reach. The tunnels explode into chaos. \n\nMuffled shouts echo as the Brood Enforcers advance in tight formation, plasma rifles spitting purple fire. Steam erupts from ruptured pipes. Shadows swirl as the Hive-Spireâ€™s psychic pulse grows stronger, pressing like iron bands around your temples.\n\nRaven ducks behind a steel column, eyes blazing.\n\nâ€œWe have to break through. Fast!â€','This is an immediate combat encounter. Use tight corridors and low visibility to shape tactics. Manhacks dive at players, Enforcers use overlapping fields of fire. Raven fights alongside the party. After the battle, let the party loot gear or gain intel that helps them later. Even though itâ€™s a failure branch, victory lets them continue into White Forest, possibly with injuries or lost time.',1),
('scene_white_forest_entry','White Forest Entry','The shaft opens into a cavernous underground vault. You crawl out onto a grated platform overlooking a chasm of exposed concrete and tangled steel. Electric lanterns flicker in a perimeter ring, casting stark shadows across blast doors twenty feet high, stamped with faded black letters:\n\nWHITE FOREST MISSILE COMPLEX\nAUTHORIZED PERSONNEL ONLY\n\nRaven stands beside you, silent for a moment, eyes scanning every corner of the vault. Their voice is hushed when they finally speak:\n\nâ€œWelcome to White Forest. Last place on Terra they havenâ€™t taken. Yet.â€\n\nThe walls bear scars of past battlesâ€”scorch marks from plasma fire, pockmarks where rounds slammed into reinforced concrete. Dozens of resistance symbols are spray-painted across bulkheads: eagles, shattered Brood glyphs, phrases like \'THE RIFT WILL FALL.\'\n\nCatwalks crisscross overhead, draped in cables and conduits. The scent of burned circuits and dust hangs heavy. The Hive-Spireâ€™s psychic pulse still thrums faintly through the rock, but here, it feels slightly muted, as though shielded by layers of steel and earth.\n\nRaven leads you to a vault door set into the far wall. They produce a palm-sized, battered keycard. A scanner chirps in response, red lights shifting to green. Gears grind. Massive bolts retract with seismic booms. The vault door slowly opens inward, revealing a brightly lit corridor painted in resistance white and red.\n\nInside, resistance fighters rush back and forth, clad in makeshift armor, carrying crates of ammo and electronic gear. Sparks fly as technicians weld armored plates to blast doors. In the distance, you hear the echo of code phrases being exchanged and the faint thump of heavy machinery.\n\nA resistance officer approaches, eyes sharp under a mop of silver hair. She speaks in a low voice:\n\nâ€œYou made it. And with the Artifact, I hope.â€\n\nRaven nods and carefully opens the satchel, revealing the crystalline shard pulsing with its violet glow. The officerâ€™s eyes widen briefly with aweâ€¦ and fear.\n\nâ€œAll right,â€ she says, â€œget them to the control chamber. White Forestâ€™s firing array is readyâ€”but the Broodâ€™s already sniffing at our outer defenses. Once we launch that payload, theyâ€™ll come with everything theyâ€™ve got.â€\n\nRaven looks at you.\n\nâ€œThis is it. Weâ€™re either closing the Riftâ€¦ or dying in the attempt.â€','Let players soak in the atmosphere. Allow them to speak with resistance fighters, ask about defenses, or prepare weapons and spells. This is the staging ground for the final mission. Feel free to drop clues about Brood infiltration or add side NPCs offering side quests or rumors. Players can choose how directly to proceed to the launch control or explore first.',1),
('scene_white_forest_launch_prep','White Forest Launch Preparation','The corridor twists deeper into White Forest, walls closing in with reinforced alloy plating. The hum of generators vibrates through your boots, blending with the distant rhythmic clank of missile silo mechanisms shifting into place.\n\nRaven leads you into a massive command chamber filled with consoles, tactical holomaps, and walls of glowing monitors. Resistance personnel hurry back and forth, shouting over static-filled radios, their faces lit by flickering readouts. In the center of the room stands a towering circular platform bathed in blue light. At its heart rests a containment cradleâ€”a curved steel harness lined with arcane filaments pulsing in sync with the Hive-Spireâ€™s distant rhythm.\n\nRaven sets the Artifact into the cradle. Instantly, it reacts, sending pulses of ultraviolet light shooting across the room. Arcane glyphs blossom in midair around the shard, spiraling like orbiting satellites. Technicians shield their eyes as consoles flare with alarms.\n\nOne technician calls out:\n\nâ€œEnergy readings off the scale! Itâ€™s resonating with the Riftâ€™s psychic frequency!â€\n\nRavenâ€™s eyes narrow. â€œExactly what we need.â€\n\nThe Resistance Officer steps forward, a grim line drawn across her face.\n\nâ€œListen carefully. Once this thingâ€™s in the warhead, we fire it into the Rift. If it detonates correctly, the psychic tether should collapse. The Broodâ€™s entire network will lose connection to this plane. But if we failâ€¦ the backlash could fry every neural network from here to the Arctic.â€\n\nRaven glances at the screens, jaw set.\n\nâ€œAnd they know weâ€™re here. Weâ€™ve intercepted Brood comms. Heavy units en route. Goliath Walkers. Gunships. Possibly the Hive-Spireâ€™s psychic strike force.â€\n\nThe Officer snaps her fingers. â€œWe have to buy time. I need power routed to the launch gantry, encryption on the targeting array, and physical defenses at the silo doors.â€\n\nShe looks to you all.\n\nâ€œChoose. Help with tech systems, hold the line outside, or guard the control chamber. Your actions will decide if we live to see dawn.â€\n\nAround you, resistance techs scramble between control stations. Sparks fly from overloaded consoles. Distant explosions echo through the complex as enemy forces test White Forestâ€™s outer defenses. The glow of the Artifact pulses faster, casting shadows across the chamber walls like writhing tentacles of light.\n\nThe fate of Terra balances on a razorâ€™s edge.','This is a critical decision point. Let players choose between:\n\n- Assisting with magical or technological systems (Arcana, Technology checks)\n- Fighting on the front line against incoming Brood forces\n- Defending the control chamber from infiltration\n\nThe playersâ€™ choices shape whether the launch sequence succeeds smoothly or becomes a chaotic final stand. Offer rolls to influence progress timers, mitigate disasters, or uncover last-minute sabotage. Emphasize tension and urgency.',1),
('scene_white_forest_launch_sequence','White Forest Launch Sequence','The chamber rocks as another distant explosion shakes the foundations of White Forest. Dust rains down from concrete beams. Sirens scream overhead in pulsing tones. Technicians rush between consoles, their faces pale under flashing red emergency lights.\n\nThe Artifact glows like a miniature sun in its cradle. Streams of violet and ultraviolet light spiral upward into twisting glyphs, projecting shifting shadows across the chamber walls. Each pulse of light thrums in perfect time with the psychic resonance of the Hive-Spire, as though the two are locked in a cosmic conversation.\n\nRaven stands at a console, fingers flying over glowing touchpads. Sparks burst from overloaded circuits. A voice crackles through nearby speakers:\n\nâ€œOuter doors breached! Goliath Walkers inbound! Weâ€™re down to emergency power!â€\n\nThe Resistance Officer shouts:\n\nâ€œLock the blast doors! Reroute power to the missile lifts!â€\n\nA technician screams from another console:\n\nâ€œTheyâ€™re hacking the launch sequence! Brood signals flooding the grid!â€\n\nRaven spins to you, eyes blazing:\n\nâ€œHelp me override the encryptionâ€”or weâ€™re firing this warhead into the ocean instead of the Rift!â€\n\nBrood Enforcers burst into the chamber entrance, weapons blazing. Plasma bolts slice through the air, searing white-hot trails into consoles and walls. Sparks shower the floor as metal explodes under the impacts. Resistance fighters return fire, hunkering behind overturned tables.\n\nManhacks swirl through the chaos, blades whirring. Red targeting lasers sweep over your group. The psychic thrum in your skull grows unbearable, as if the Hive-Spire itself is screaming.\n\nAbove the roar of gunfire, the Artifactâ€™s glow intensifies. It sings in a high, pure note, filling the air with dazzling light. A ripple of psychic force hammers outward, sending loose papers flying and glass panels shattering.\n\nRaven grips your shoulder, voice hoarse:\n\nâ€œThis is our moment! Either we launchâ€”\n\nâ€”or we die here.â€','This scene is both combat and high-stakes skill challenge. Players can:\n\n- Fight enemies in the chamber\n- Attempt skill checks to finalize the launch\n- Protect Raven as they complete critical tasks\n\nAdjust the pacing for maximum tension. Keep the sense of chaos and danger. If the launch fails, White Forest may fall entirelyâ€”but even a partial success can change the story. Allow big hero moments, sacrifice scenes, and powerful final actions.',1),
('scene_white_forest_launch_success','White Forest Launch - Success','Raven slams the final sequence into the console, eyes blazing with a mix of triumph and desperation. Lights surge across the chamber, every screen turning brilliant white. The Artifact flares so brightly itâ€™s impossible to look at directly. Its glow explodes outward in a shockwave of indigo and violet, rippling through the walls like liquid light.\n\nThe holographic map above the console spins and locks onto the Riftâ€™s coordinates. Targeting glyphs converge into a single piercing point. A countdown pulses on every monitor:\n\n5â€¦ 4â€¦ 3â€¦\n\nOutside, the rumble of Goliath Walkers thunders against blast doors. Resistance fighters roar defiance, firing volley after volley into advancing Brood troops.\n\n2â€¦\n\nRaven grabs your arm, eyes fierce. â€œBrace yourself!â€\n\n1â€¦\n\nWith a roar that splits the air, the missile silo beneath your feet shakes as an ancient launch mechanism comes to life. Pistons slam upward, propelling a sleek missile toward a retracting roof high overhead. Flame and fury erupt from the silo mouth, a pillar of fire roaring upward.\n\nOn the main screen, a camera feed tracks the missile rising into the bruised sky. Its contrail glows like a blade of violet fire. It curves toward the seething Rift, where purple lightning churns through cosmic wounds.\n\nA heartbeat later, the Artifact detonates inside the Rift in a silent burst of psychic brilliance. The Rift thrashes, folding inward as arcs of lightning twist into spirals. Glyphs race across the Riftâ€™s surface like panic-stricken creatures, then vanish one by one. The psychic pressure pressing on your skull evaporates like fog under sunlight.\n\nOutside, Brood forces stagger. Drones drop lifeless from the air. Enforcers clutch at their helmets as crimson lights flicker and die. Even the Hive-Spire itself wavers, its glow dimming as if it suddenly forgot why it was alive.\n\nSilence settles over White Forest, punctuated only by the ragged breathing of survivors. Raven lowers their weapon, trembling.\n\nâ€œItâ€™sâ€¦ itâ€™s closing. The Riftâ€™s closing.â€\n\nThe Resistance Officer looks around the chamber, face streaked with dirt and tears. â€œWe mightâ€¦ we might have just won.â€\n\nAbove, the Rift shrinks to a narrow seam of violet lightâ€”and finally snaps shut like a wound healed. Darkness settles over City-17, broken only by the pale neon glow of towers slowly flickering back to life. The Hive-Spire quiversâ€”and begins to fracture.\n\nRaven turns to you, eyes glinting with fierce hope.\n\nâ€œWhite Forest stands. And Terraâ€¦ still breathes.â€','This is a cinematic victory scene. Let players celebrate, share reactions, or mourn fallen comrades. Raven may offer heartfelt thanks or glimpses of what rebuilding might look like. The campaign may either close here as a bittersweet victoryâ€”or continue with fallout missions if desired.',1),
('scene_white_forest_launch_failure','White Forest Launch - Failure','Alarms scream in a rising wail. Sparks rain from overhead conduits. Raven curses under their breath as a red error glyph blooms across the main console:\n\n> TARGETING COORDINATES CORRUPTED\n> ARTIFACT OVERLOAD IMMINENT\n\nThe Artifact convulses in its cradle, radiating searing waves of violet light. Fractures spiderweb across its crystalline surface. A shrill psychic keening floods your skull, drowning out every other sound.\n\nTechnicians stagger back, clutching their heads as blood seeps from their noses. The Resistance Officer pounds a fist against a console:\n\nâ€œShut it down! Shut it down!â€\n\nRaven shouts, voice ragged:\n\nâ€œI canâ€™t! Itâ€™s feeding on the Riftâ€™s resonance! If we abort now, itâ€™ll blow and take White Forest with it!â€\n\nOutside the chamber, an explosion rips through the complex. Sections of ceiling collapse as chunks of concrete and twisted rebar crash to the floor. Goliath Walkers pound ever closer, their footfalls shaking the silo like an earthquake.\n\nThe holographic map flickers and distorts. The Rift on-screen ripples violently, expanding outward instead of closing. Dark glyphs spin across its surface like a vortex of madness.\n\nRaven makes one last attempt at the console, fingers flying over cracked keys. The Artifact emits a final, piercing scream. Then it shattersâ€”exploding into a storm of violet shards and psychic shockwaves.\n\nA wave of force slams through the chamber, hurling bodies across consoles. Glass shatters. Sparks erupt. The psychic pressure bursts into raw agony, stabbing into your thoughts. For an instant, alien visions flood your mindâ€”towering shapes in impossible geometries, endless corridors spiraling into darkness, and the whispered certainty that the Brood is eternal.\n\nWhen the shockwave fades, silence falls. Smoke coils through the chamber, lit by dying embers. The Artifact is gone. The Hive-Spire still stands in the distance, pulsing stronger than ever.\n\nRaven drags themselves upright, blood streaking their brow, eyes haunted.\n\nâ€œWe failed. The Riftâ€¦ itâ€™s growing.â€\n\nOutside, Brood forces roar as they surge forward. Gunfire rattles closer and closer. The Resistance Officer locks eyes with you, jaw clenched in grim finality.\n\nâ€œFall back. All unitsâ€”fall back to secondary positions!â€\n\nRaven grips your arm, voice shaking.\n\nâ€œThis isnâ€™t over. Weâ€™ll find another way.â€\n\nBut as you look up at the Hive-Spire looming above, glowing brighter than ever, a sick certainty settles in your gut: The Brood is coming. And Terraâ€™s nightmare has only deepened.','This scene is dark, tragic, and sets up future arcs where the fight continues. Allow players to react emotionally, decide how they retreat, or attempt last-ditch heroics. Emphasize Ravenâ€™s resolve that this isnâ€™t the end. You can pivot into future resistance missions or leave it as a cliffhanger. Either way, the world remains in peril.',1),
('scene_post_launch_victory','Post-Launch Fallout - Victory','Hours pass under flickering lights in White Forest. The air remains thick with smoke and the tang of scorched metal, but the alarms have finally gone silent. Outside, dawn begins to break over City-17, spilling pale gold across the sky. The Hive-Spire, once pulsing with malevolent light, lies fractured on the horizon, split into leaning shards of alien alloy. Faint lightning still dances among the Riftâ€™s dying edgesâ€”but itâ€™s fading, slowly being swallowed by the skyâ€™s natural blue.\n\nInside the command chamber, resistance fighters patch wounds, drag twisted metal from doorways, and offer each other silent nods of weary relief. Some stare blankly at consoles still flickering with residual error messages. A few weep openly, shoulders shaking with the release of years of terror.\n\nRaven stands beside you, arms crossed, eyes locked on the distant skyline. The rising sun gleams across the scratches and bruises marking their face. For the first time since you met, Raven actually smilesâ€”a small, tired curve of lips, but genuine.\n\nâ€œWe did it,â€ they murmur. â€œThe Riftâ€™s gone. Theyâ€™ve lost their hold on Terra.â€\n\nThe Resistance Officer steps forward, her voice firm though hoarse from hours of shouting commands:\n\nâ€œCarbine units are in chaos. Brood signals have collapsed across multiple cities. Weâ€™re getting reports of Goliath Walkers shutting down mid-stride. Citizens are fighting back.â€\n\nShe clasps your hand firmly.\n\nâ€œYouâ€™ve saved millions. Maybe the entire species.â€\n\nOutside, distant cheers rise across City-17 as word begins to spread. Citizens emerge cautiously from hiding, eyes wide as they stare at the Hive-Spireâ€™s shattered remains. Neon lights flicker back on, illuminating streets that no longer feel entirely owned by monsters.\n\nRaven glances at you again, voice quiet.\n\nâ€œThis warâ€™s not over. Thereâ€™ll be cleanup, hunting down stragglers. And the scars wonâ€™t heal fast. But for the first time in yearsâ€¦ we get to decide what comes next.â€\n\nThey extend a hand toward you.\n\nâ€œSo. Want to help rebuild the world?â€','This is a hopeful epilogue. Let players roleplay conversations with Raven and other survivors. Offer closure or hints about future missions. Emphasize hope mixed with exhaustion. The world still needs rebuilding, but the nightmare is breaking apart.',1),
('scene_post_launch_failure','Post-Launch Fallout - Failure','Smoke coils through White Forestâ€™s corridors like a living creature. Emergency lights flash in broken pulses, revealing corridors choked with debris and bodies. The Hive-Spire looms larger than ever on the skyline aboveâ€”a monstrous fang of alien alloy pulsing with renewed psychic brilliance. Violet lightning flickers across its surface, dancing like veins through dark glass.\n\nThe command chamber lies in shambles. Consoles sparked and burned during the Artifactâ€™s overload. Resistance fighters drag injured comrades away on makeshift stretchers. Blood streaks the floor. The air is hot, stinking of ozone, charred electronics, and the iron tang of spilled blood.\n\nRaven sits slumped against a blast wall, eyes hollow. They stare into the middle distance as if trying to remember how hope once felt.\n\nâ€œIt was right there,â€ they whisper. â€œWe almost had it.â€\n\nThe Resistance Officer staggers over, a deep gash crossing her cheek. She wipes blood from her eyes and grips Ravenâ€™s shoulder.\n\nâ€œSnap out of it. This isnâ€™t over. The Broodâ€™s pressing in on every front. We fall back to the old tunnels. We regroup. We hit them again.â€\n\nShe turns to you, voice low but burning with defiance.\n\nâ€œYouâ€™re still resistance. Youâ€™ve proven that. And Terraâ€™s not dead yet.â€\n\nOutside, the Hive-Spire pulses with even brighter psychic radiance. Its glow bleeds down the skyline, illuminating the ruins of City-17 in unnatural violet light. Distant roars echo across the cityâ€”throaty, monstrous howls that donâ€™t sound entirely human.\n\nOne last console sparks to life. A message scrolls across the screen in crimson glyphs:\n\n> RIFT EXPANSION INITIATED\n> CONSOLIDATION PROTOCOL ALPHA\n> ALL HIVE UNITS DEPLOY\n\nRaven pushes to their feet, grim determination returning.\n\nâ€œIf they want war,â€ Raven growls, eyes flaring, â€œthen we give them war.â€\n\nThe Resistance Officer squares her shoulders.\n\nâ€œGather what you can. We leave in ten. The fightâ€™s not over. Not while one of us still breathes.â€\n\nFar above, the Hive-Spire screams psychic static into the night, as Terra plunges into its next chapter of darkness.','Lean into tragedy and defiance. Let players process grief, rage, or determination. Offer the possibility of future missions to continue the resistance. Raven and the Resistance Officer remain alive and determined to keep fighting. This is a grim, yet open-ended outcome.',1);
/*!40000 ALTER TABLE `scenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_checks`
--

DROP TABLE IF EXISTS `skill_checks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_checks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `scene_id` varchar(255) DEFAULT NULL,
  `skill` text DEFAULT NULL,
  `dc` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `success_outcome` text DEFAULT NULL,
  `failure_outcome` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `scene_id` (`scene_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_checks`
--

LOCK TABLES `skill_checks` WRITE;
/*!40000 ALTER TABLE `skill_checks` DISABLE KEYS */;
INSERT INTO `skill_checks` VALUES
(1,'scene_intro_train','Deception',14,'Feign the vacant stare, defeated posture, and hollow voice of reprocessed citizens. Mask nerves or suspicious behavior.','The players blend seamlessly into the crowd, their demeanor utterly convincing. No suspicion arises as the train nears City-17.','Nearby passengers glance toward the group, sensing something off. A biometric droneâ€™s optical sensor lingers a fraction too long, flagging them for further scrutiny at the station.'),
(2,'scene_intro_train','Insight',13,'Analyze the crowd to spot potential informants, loyalists, or fellow resistance sympathizers.','Players identify subtle cuesâ€”a nervous tic, a hidden tattoo, the haunted look of those living in fearâ€”and can choose where to sit or whom to avoid, reducing risk in upcoming encounters.','Players misread the signs and might engage the wrong person. A conversation could draw unwanted attention or trigger suspicion.'),
(3,'scene_intro_train','Stealth',15,'Move quietly between seats, stay in blind spots, or subtly shift away from biometric scanners and cameras.','Players remain physically unnoticeable, hidden even from scanning drones and suspicious eyes. No immediate flags are raised.','A camera swivels at the wrong moment, or a seat creaks loudly. Security footage or an alert is triggered, prompting scrutiny at the platform.'),
(4,'scene_blending_in_failure_flagged','Deception',15,'Calmly lie, provide a plausible reason for biometric anomalies.','The Enforcers step back and allow the group to proceed. They leave flagged but unwatchedâ€”for now.','The Enforcers remain suspicious and escalate the situation to the checkpoint.'),
(5,'scene_blending_in_failure_flagged','Persuasion',14,'Attempt to appeal to the Enforcersâ€™ logic or procedural guidelines.','The Enforcers wave them through to avoid clogging the line, though they remain flagged in the system.','The Enforcers escort the group toward a side room for further scanning.'),
(6,'scene_rooftop_escape','Stealth',16,'Move across the rooftop silently, avoiding gunship spotlights and sensor sweeps.','Players evade detection, allowing a clean escape to the next rendezvous point with Raven.','Gunships or patrols spot them. Raven shouts for immediate evasive action, triggering combat or a desperate rooftop sprint.'),
(7,'scene_rooftop_escape','Acrobatics',14,'Leap across gaps, balance on narrow catwalks, or navigate unstable rooftop structures.','Players make the jumps safely, maintaining speed and stealth.','A player slips or crashes through a panel, causing noise and potential injuries. Raven may help them up, but pursuit intensifies.'),
(8,'scene_capture_and_processing','Wisdom Saving Throw',16,'Resist the initial psychic interrogation during processing.','The player retains secrets and personal memories. The Brood fails to extract key intel about the Resistance.','The player suffers psychic damage and partial memory loss, and the Brood may learn crucial details about the mission.'),
(9,'scene_capture_and_processing','Sleight of Hand',15,'Attempt to free hands from the shackles while under observation.','The player unlocks their bonds, ready to stage an escape or assist Raven.','An alarm triggers, summoning additional Brood Enforcers. Escape becomes much harder.'),
(10,'scene_raven_processing_escape','Arcana',15,'Disable neural clamps holding prisoners in place or disrupt psychic feedback loops.','Dozens of civilians are freed, potentially creating chaos to cover the escape.','Security locks re-engage, delaying escape and drawing additional enemies.'),
(11,'scene_raven_processing_escape','Athletics',14,'Force jammed doors open or carry injured prisoners to safety.','The players clear a path, ensuring Raven and civilians can escape.','Players become pinned under debris or attacked by recovering Enforcers.'),
(12,'scene_raven_processing_escape','Attack Rolls',0,'If players choose to fight the Brood Overseer, normal combat rules apply. The Overseer is powerful and may inflict psychic damage or cause mental status effects.','The Overseer is defeated or driven back, allowing a clean escape.','The party suffers heavy damage. Escape becomes a desperate retreat.'),
(13,'scene_intro_train','Deception',14,'Feign the vacant stare, defeated posture, and hollow voice of reprocessed citizens. Mask nerves or suspicious behavior.','The players blend seamlessly into the crowd, their demeanor utterly convincing. No suspicion arises as the train nears City-17.','Nearby passengers glance toward the group, sensing something off. A biometric droneâ€™s optical sensor lingers a fraction too long, flagging them for further scrutiny at the station.'),
(14,'scene_intro_train','Insight',13,'Analyze the crowd to spot potential informants, loyalists, or fellow resistance sympathizers.','Players identify subtle cuesâ€”a nervous tic, a hidden tattoo, the haunted look of those living in fearâ€”and can choose where to sit or whom to avoid, reducing risk in upcoming encounters.','Players misread the signs and might engage the wrong person. A conversation could draw unwanted attention or trigger suspicion.'),
(15,'scene_intro_train','Stealth',15,'Move quietly between seats, stay in blind spots, or subtly shift away from biometric scanners and cameras.','Players remain physically unnoticeable, hidden even from scanning drones and suspicious eyes. No immediate flags are raised.','A camera swivels at the wrong moment, or a seat creaks loudly. Security footage or an alert is triggered, prompting scrutiny at the platform.'),
(16,'scene_blending_in_failure_flagged','Deception',15,'Calmly lie, provide a plausible reason for biometric anomalies.','The Enforcers step back and allow the group to proceed. They leave flagged but unwatchedâ€”for now.','The Enforcers remain suspicious and escalate the situation to the checkpoint.'),
(17,'scene_blending_in_failure_flagged','Persuasion',14,'Attempt to appeal to the Enforcersâ€™ logic or procedural guidelines.','The Enforcers wave them through to avoid clogging the line, though they remain flagged in the system.','The Enforcers escort the group toward a side room for further scanning.'),
(18,'scene_rooftop_escape','Stealth',16,'Move across the rooftop silently, avoiding gunship spotlights and sensor sweeps.','Players evade detection, allowing a clean escape to the next rendezvous point with Raven.','Gunships or patrols spot them. Raven shouts for immediate evasive action, triggering combat or a desperate rooftop sprint.'),
(19,'scene_rooftop_escape','Acrobatics',14,'Leap across gaps, balance on narrow catwalks, or navigate unstable rooftop structures.','Players make the jumps safely, maintaining speed and stealth.','A player slips or crashes through a panel, causing noise and potential injuries. Raven may help them up, but pursuit intensifies.'),
(20,'scene_capture_and_processing','Wisdom Saving Throw',16,'Resist the initial psychic interrogation during processing.','The player retains secrets and personal memories. The Brood fails to extract key intel about the Resistance.','The player suffers psychic damage and partial memory loss, and the Brood may learn crucial details about the mission.'),
(21,'scene_capture_and_processing','Sleight of Hand',15,'Attempt to free hands from the shackles while under observation.','The player unlocks their bonds, ready to stage an escape or assist Raven.','An alarm triggers, summoning additional Brood Enforcers. Escape becomes much harder.'),
(22,'scene_raven_processing_escape','Arcana',15,'Disable neural clamps holding prisoners in place or disrupt psychic feedback loops.','Dozens of civilians are freed, potentially creating chaos to cover the escape.','Security locks re-engage, delaying escape and drawing additional enemies.'),
(23,'scene_raven_processing_escape','Athletics',14,'Force jammed doors open or carry injured prisoners to safety.','The players clear a path, ensuring Raven and civilians can escape.','Players become pinned under debris or attacked by recovering Enforcers.'),
(24,'scene_raven_processing_escape','Attack Rolls',0,'If players choose to fight the Brood Overseer, normal combat rules apply. The Overseer is powerful and may inflict psychic damage or cause mental status effects.','The Overseer is defeated or driven back, allowing a clean escape.','The party suffers heavy damage. Escape becomes a desperate retreat.'),
(25,'scene_undercity_entry','Perception',14,'Spot tripwires, motion sensors, or hidden surveillance nodes in the tunnels.','Players identify and avoid the traps safely, preserving stealth and speed.','An alarm is triggered, alerting nearby patrols or creatures lurking in the Undercity.'),
(26,'scene_undercity_entry','Stealth',15,'Move silently through ankle-deep water and avoid creating echoes that carry through the tunnels.','Players pass unnoticed, maintaining the element of surprise.','Distant echoes draw attention. A patrol may intercept them further in.'),
(27,'scene_undercity_entry','Investigation',13,'Analyze the tunnel walls and environment for signs of previous resistance movement, hidden caches, or safe routes.','Players discover a concealed side passage, offering a safer or faster route.','Players waste time exploring dead ends, risking random encounters or psychic detection.'),
(28,'scene_white_forest_launch_prep','Arcana',16,'Calibrate the Artifactâ€™s magical resonance to match the Riftâ€™s psychic signature.','The Artifact syncs perfectly, ensuring maximum damage to the Rift with minimal psychic backlash.','The Artifactâ€™s readings destabilize, risking a partial collapse that might devastate nearby resistance forces.'),
(29,'scene_white_forest_launch_prep','Technology',15,'Reprogram launch protocols and encrypt targeting arrays to block Brood interference.','The launch computer locks onto the Riftâ€™s coordinates, preventing Brood cyber-attacks.','Brood forces manage to inject false coordinates, threatening to misfire the payload.'),
(30,'scene_white_forest_launch_prep','Insight',14,'Detect any sabotage attempts among resistance personnel or identify hidden Brood infiltrators.','A disguised infiltrator is exposed and neutralized before they can sabotage the launch sequence.','A hidden agent remains undetected, planting sabotage devices that trigger complications during launch.'),
(31,'scene_white_forest_launch_sequence','Technology',17,'Override Brood cyber-attacks on the launch sequence.','Launch coordinates lock onto the Rift. The Artifact is ready for firing.','The Brood inject false data, risking misfire. Partial damage may result or catastrophic failure.'),
(32,'scene_white_forest_launch_sequence','Arcana',16,'Stabilize the Artifactâ€™s resonance as it overloads.','The Artifact remains intact, channeling perfect energy into the missile warhead.','The Artifact fractures, causing psychic backlash that injures nearby allies and threatens the launch.'),
(33,'scene_white_forest_launch_sequence','Athletics',14,'Physically secure blast doors or shove back invading Brood Enforcers.','Brood forces are held off long enough for Raven to complete the launch sequence.','Enforcers breach deeper into the chamber, endangering consoles and resistance personnel.');
/*!40000 ALTER TABLE `skill_checks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell`
--

DROP TABLE IF EXISTS `spell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `spell` (
  `idpell` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `level` int(4) NOT NULL,
  `verbal` tinyint(1) NOT NULL,
  `somatic` tinyint(1) NOT NULL,
  `material` tinyint(1) NOT NULL,
  `description` text NOT NULL,
  `rangeBase` varchar(64) NOT NULL,
  `rangeExtra` varchar(64) NOT NULL,
  `school` int(11) NOT NULL,
  `baseclass` varchar(64) NOT NULL,
  PRIMARY KEY (`idpell`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell`
--

LOCK TABLES `spell` WRITE;
/*!40000 ALTER TABLE `spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `spell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weapons`
--

DROP TABLE IF EXISTS `weapons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `weapons` (
  `id` varchar(5) DEFAULT NULL,
  `name` varchar(29) DEFAULT NULL,
  `properties` varchar(74) DEFAULT NULL,
  `dam_1` varchar(16) DEFAULT NULL,
  `dam_2` varchar(13) DEFAULT NULL,
  `description` varchar(175) DEFAULT NULL,
  `rails` varchar(59) DEFAULT NULL,
  `barrel` varchar(12) DEFAULT NULL,
  `form` varchar(20) DEFAULT NULL,
  `ammo` varchar(9) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `origin` varchar(3) DEFAULT NULL,
  `module` varchar(13) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapons`
--

LOCK TABLES `weapons` WRITE;
/*!40000 ALTER TABLE `weapons` DISABLE KEYS */;
INSERT INTO `weapons` VALUES
('w_001','Alley Blade','Finesse, Light','1d6 piercing','—','A slender, rust-streaked blade with a wire-wrapped grip, forged from broken fencing and reinforced with carbon wire—favored for tight alley skirmishes.','—','—','Melee','—','Melee (Simple)','PUB','Psi-Small'),
('w_002','Anti-Materiel Rifle','Heavy, Two-Handed, Reload 1, Misfire 3, Loud, Ignore Full Cover (at disv.)','1d12 piercing','1d12 force','A long-barreled rifle with a reinforced muzzle brake. Fires heavy rounds capable of tearing through walls, mechs, or bodies in powered armor.','Bottom: Sigma-Small','Zeta-Small','Rifle (Heavy)','.50','Ranged (Martial)','RES','Rho-Medium'),
('w_003','Anti-Tank Rifle','Heavy, Two-Handed, Chambered 1, Misfire 3','2d12 force','-','An anti-vehicle weapon with heat-vented coils lining its barrel. Emits a shrill whine before discharging a sabot round laced with fireburst gel.','Bottom: Theta-Small','Zeta-Large','Rifle (Heavy)','.50','Ranged (Martial)','CAR','Xi-Medium'),
('w_004','AR88 Assault Rifle','Light, Burst Fire (2), Reload 8, Misfire 2','1d6 piercing','1d4 fire','A modular rifle frame with double-side rails and patch-welded casing. Its muzzle flare is minimal, ideal for suppressive fire in tight corridors.','Bottom: Theta-Medium, Right: Theta-Medium','Zeta-Large','Rifle (Assault)','9mm','Ranged (Martial)','CRA','Psi-Medium'),
('w_005','Arc Blade','Finesse, Light, 1d4 Fire (DC 12 DEX)','2d6 radiant','—','An angular hilt emits a rugged, unstable beam of ionized plasma. Edges ripple with power surges and leave cauterized gashes through alloy or armor.','—','—','Melee','—','Melee (Martial)','CAR','Xi-Medium'),
('w_006','Backscatter Breacher','Chambered 2, Misfire 3, Two-Handed,','2d4 bludgeoning','—','Its sawed-off barrel is jagged where the pipe cutter slipped. Fires wide-spread blasts that fill doorways with flying lead and pulverized armor.','Bottom: Sigma-Medium','Kappa-Large','Shotgun','12g','Ranged (Simple)','RES','Rho-Medium'),
('w_007','Ballistic Knife','Finesse, Light, Thrown (20/60)','1d4 piercing','—','A matte-black handle conceals a spring-loaded core capable of ejecting the blade tip with lethal velocity. Engraved with serials from a long-dead facility.','—','—','Melee','—','Melee (Simple)','CAR','Xi-Medium'),
('w_008','Beam Rifle','Misfire 2, Reload 6','2d8 radiant','1d4 fire','Broad frame with triple beam alignment lenses. Recoil-balanced and calibrated for controlled arcs of pure energy discharge.','Bottom: Sigma-Medium, Right: Sigma-Small','Zeta-Small','Rifle, DMR (Energy)','Pulsecoil','Ranged (Martial)','CAR','Xi-Medium'),
('w_009','Black Ray Rifle','Two-Handed, Magnetic Optics, Nonlethal Variant Available','1d8 radiant','—','A two-tone body with chrome ridges and minimalist aesthetics. Power-draw lines run along its sides, offering silent burst fire with urban lethality.','Top: Sigma-Medium','Zeta-Small','Rifle, DMR (Assault)','9mm','Ranged (Martial)','PUB','Upsilon-Small'),
('w_010','Blowback Shotgun','Two-Handed, Scatter (15 ft cone), Reload 1, Misfire 2','1d6 piercing','1d4 fire','A gas-powered beast with forward rails and wide chamber intake. Each round feeds with a loud clunk, followed by a recoil-heavy report that echoes through bunkers.','Top: Sigma-Medium, Bottom: Theta-Large','Kappa-Large','Shotgun','12g','Ranged (Martial)','CAR','Xi-Medium'),
('w_011','Bone Knife','Light, Finesse','1d4 slashing','—','A serrated sliver of femur ground to a razor edge, bound in synth-leather and often etched with tribal glyphs or prison tally marks.','—','—','Melee','—','Melee (Simple)','PUB','Upsilon-Small'),
('w_012','Bone Wrench','Improvised','2d6 bludgeoning','—','Industrial spanner cracked and reshaped with bone plating; strikes with hollow clangs that reverberate through armor. Often seen in riot toolkits.','—','—','Melee','—','Melee (Simple)','PUB','—'),
('w_013','Bottle Shiv','Improvised, Finesse, High Crit (19–20)','2d6 piercing','—','A shattered glass neck fused to a duct-taped handle, its edges jagged and irregular, designed to maximize bleeding with each slash.','—','—','Melee','—','Melee (Simple)','CRA','—'),
('w_014','Breaker’s Hook','Versatile (1d10)','1d8 bludgeoning','—','Reforged demolition hook sharpened along its inner curve, capable of tearing into machinery or muscle with equal efficiency.','—','—','Melee','—','Melee (Simple)','RES','—'),
('w_015','Buzzsaw','Heavy, Two-Handed','2d8 slashing','—','An angular weapon built from a repurposed floor-saw motor. Its teeth spin erratically, kicking off sparks and screeching like tortured metal.','—','—','Melee','—','Melee (Simple)','RES','Rho-Medium'),
('w_016','Carbine BAR','Burst Fire (3), Reload 6, Two-Handed, Misfire 2','1d6 piercing','1d4 fire','A long-frame assault rifle with burst-fire mode and magnetic recoil dampeners. Fitted with a tactical rail and thermal sights for city-zone engagements.','Bottom: Theta-Large','Zeta-Medium','Rifle (Assault)','.308','Ranged (Martial)','CAR','Xi-Medium'),
('w_017','CB-5 Battle Rifle','Burst Fire (2), Reload 6, Misfire 2','1d8 piercing','1d4 fire','Balanced, brutal, and efficient. Built for precision bursts and thermal bleedthrough on impact. Cooling fins glow orange after each volley.','Right: Theta-Small','Kappa-Medium','Rifle, DMR (Assault)','7.62mm','Ranged (Martial)','CAR','Xi-Medium'),
('w_018','CB-781 Rifle','Two-Handed, Reload 10, Semi-Auto Mode (2d6 piercing), Misfire 3','1d10 piercing','—','Built for precision in close quarters, this rifle features multiple rail mounts and an integrated stabilizer core. Its clean recoil pattern makes it a favorite of elite units.','Top: Theta-Medium, Bottom: Theta-Medium, Right: Theta-Small','Zeta-Large','Rifle (Assault)','10mm','Ranged (Martial)','CAR','Xi-Medium'),
('w_019','CBR4 Heavy Shotgun','Two-Handed, Reload 6, Spread Shot (15ft Cone DC 12 DEX), Misfire 3','2d6 bludgeoning','—','A reinforced model with dual venting ports and braced recoil pads. Rounds punch holes through barricades, and its chamber lights up before each fire.','Top: Sigma-Medium, Bottom: Sigma-Medium','Kappa-Medium','Shotgun','12g','Ranged (Martial)','CAR','Xi-Medium'),
('w_020','Chainblade','Heavy, Two-Handed, Continuous (DC 13 CON save)','4d6 slashing','—','An oversized weapon resembling a butcher’s sword fused with a repurposed bike chain and servo, roaring when swung and leaving molten cuts.','—','—','Melee','—','Melee (Martial)','CAR','Xi-Medium'),
('w_021','Combat Shotgun','Heavy, Reload, Misfire 2','1d6 piercing','1d6 force','An urban salvage job wrapped in duct tape and scavenged grips. Unpredictable but lethal, it\'s the gun of choice for deadzone hunters and riot looters.','Top: Sigma-Medium','Zeta-Small','Shotgun','12g','Ranged (Martial)','CRA','Psi-Medium'),
('w_022','Combi-bolter','Burst Fire, Reload 5, Misfire 3','1d6 piercing','—','Dual-barrel hybrid with a lower tube for support fire and upper mount for accurate bursts. Its body is scratched with tally marks and resistance slogans.','Top: Theta-Medium, Bottom: Theta-Small','Zeta-Medium','Rifle (Assault)','5.56mm','Ranged (Martial)','RES','Rho-Medium'),
('w_023','Compliance Stick','Versatile (1d10), Nonlethal','1d8 bludgeoning','—','A black poly-alloy baton lined with impact studs and a feedback coil, humming faintly when held. Often issued to riot enforcers and break squads.','—','—','Melee','—','Melee (Simple)','CAR','—'),
('w_024','CPT Rifle','Two-Handed, Reload 10, Misfire 2','1d10 piercing','1d4 lightning','Military-grade stock and targeting scope have been replaced with makeshift optics and patched wiring. Still fires in ten-round bursts with arc-capacitor feedback.','Top: Theta-Medium','Zeta-Medium','Rifle (Assault)','9mm','Ranged (Martial)','RES','Psi-Medium'),
('w_025','Crate Splitter','Light, Finesse, Improvised','1d8 slashing','—','Forged from shipping rig prongs and rail brake components, this jagged tool is shaped like a hooked chisel—used in close-range crate raids and brutal alley ambushes.','—','—','Melee','—','Melee (Simple)','PUB','—'),
('w_026','Deadeye Vulture Rifle','Two-Handed, Chambered 6, Misfire 2','1d12 piercing','—','A weathered marksman’s weapon with a long scope scratched by dust storms. Its bolt-action system is reliable, though the magazine often jams.','Top: Theta-Medium','Kappa-Medium','Rifle, DMR (Bolt)','.308','Ranged (Martial)','RES','Rho-Medium'),
('w_027','Disintegrator Pistol','Burst Fire (3), Overheat on Nat 1 (DC 13 CON or Disarm)','2d6 radiant','—','A bulky sidearm with a spinning barrel core and nanite-burst chamber. It leaves smoking holes through most common alloys.','Bottom: Sigma-Large, Right: Theta-Medium','Kappa-Small','Handgun (Assault)','10mm','Ranged (Martial)','RES','Rho-Medium'),
('w_028','Dread Eagle','Light, Concealable, Reload 6','1d6 piercing','—','A hefty revolver with an oversized chamber. The matte-black grip shows blood and ash stains, and the recoil kicks like a piston.','—','Zeta-Small','Handgun (Heavy)','.44','Ranged (Martial)','RES','Rho-Small'),
('w_029','E-11 Blaster Rifle','Burst Fire (2), Misfire 2','1d8 radiant','1d4 fire','Compact, skeletal frame with reinforced polymer housing. Emits a plasma-snap with each shot, followed by a low-end hum like a capacitor venting pressure.','Bottom: Theta-Small','Kappa-Large','Rifle (Assault)','9mm','Ranged (Martial)','CRA','Psi-Medium'),
('w_030','EMP-S','Reload 5, Knockback on Crit (10 ft)','1d10 force','—','Shotgun design adapted for magnetic-slug fire. Impact sends enemies flying if it hits center mass. Perfect for clearing stairwells.','Top: Theta-Medium','Zeta-Medium','Shotgun','Magslug','Ranged (Martial)','RES','Psi-Medium'),
('w_031','EMP-X','Heavy, Reload 1, Misfire 6, Loud','2d12 piercing','2d12 force','Massive long-frame rail platform built to dismantle vehicles or construct walls with equal ease. The recoil requires body bracing or powered assistance.','Top: Theta-Large','Kappa-Large','Railgun','GAUSS','Ranged (Martial)','RES','Psi-Large'),
('w_032','Fireaxe','Heavy, Two-Handed','2d6 slashing','—','The haft is half-charred, and the blade is notched from years of use. Still functional—barely—and favored by those who value weight over precision.','—','—','Melee','—','Melee (Martial)','PUB','—'),
('w_033','Flamethrower','Burst Fire (Cone 15 ft), Ignites on Fail (DC 13 DEX), Fuel-Tracked','1d6 fire','—','A heavy weapon with twin fuel lines and triple-vent nozzles. Emits a low, chugging roar as it sprays fire across anything in its path.','Top: Sigma-Medium, Bottom: Theta-Large, Right: Theta-Medium','Kappa-Small','Heavy Weapon','FLM','Ranged (Martial)','CRA','Psi-Medium'),
('w_034','Flare Gun','Reload 1, Ignites Target (DC 12 DEX or catch fire), Signal Flare','1d4 fire','—','Stubby signal flare launcher with a cracked trigger guard. Used more for distraction or ignition than damage—unless aimed point-blank.','—','Kappa-Small','Handgun (Energy)','FLG','Ranged (Simple)','RES','—'),
('w_035','Flashbang','AoE (15 ft Circle), Blind/Deaf (DC 13 CON), Loud','1d6 radiant','1d4 thunder','Compact and matte white, this canister emits a superheated burst of light and sound tuned to disorient even augmented senses in enclosed spaces.','—','—','Explosive','—','Thrown/Set','CAR','Xi-Medium'),
('w_036','Flayonet','Finesse, Reach, Bayonet Mount','1d10 slashing','—','Designed for rifle mounting, this motorized bayonet crackles to life when activated, its teeth coated with dry blood and melted insulation.','—','—','Melee','—','Melee (Martial)','RES','Rho-Medium'),
('w_037','Fragmentation Grenade','AoE (10 ft Circle)','2d6 piercing','','Handcrafted in undercity chop shops, this crude metal sphere is packed with rusted bolts and chemical accelerants, igniting with erratic blast radius.','—','—','Explosive','—','Thrown/Set','PUB','Psi-Small'),
('w_038','G17 Pistol','Light, Reload 12, Concealable','1d6 piercing','—','Simple, reliable, and widely used by Resistance scouts. Lightweight frame, quick reload, and no questions asked—except “do you have ammo?”','—','Zeta-Small','Handgun (Light)','9mm','Ranged (Simple)','RES','Rho-Small'),
('w_039','Galvanic Rifle','Burst Fire, Toxic (DC 12 CON on crit or poisoned)','2d6 piercing','1d4 poison','Fitted with a rotating charge drum and corrosion-tipped rounds, this rifle emits an electric pop before each deadly discharge.','Bottom: Theta-Large','Zeta-Medium','Rifle, DMR (Assault)','5.56mm','Ranged (Martial)','CAR','Xi-Medium'),
('w_040','Gear Hook','Versatile (1d6), Trip (DC 12 STR)','1d4 piercing','—','Made from a snapped-off maintenance crane claw, this tool features a pivoting grip and sharpened hook head, perfect for catching joints and yanking bodies off balance.','—','—','Melee','—','Melee (Simple)','CRA','—'),
('w_041','HSK Hi-Power','Two-Handed, Chambered 6, Misfire 2, Loud','2d6 piercing','—','A custom recrafted DMR with layered barrel shielding and internal compensators. Fires precise volleys and handles like it was built from salvaged mech chassis.','Top: Theta-Medium, Bottom: Theta-Medium, Right: Theta-Small','Kappa-Medium','Rifle (Assault)','9mm','Ranged (Martial)','PUB','Upsilon-Small'),
('w_042','HSK LMG','Two-Handed, Reload 15, Burst Fire (3). Misfire 3','1d6 piercing','1d4 poison','Compact and belt-fed, this light machine gun has a polymer stock and quick-swap battery housing. Its barrel glows dull red after sustained fire in tight corridors.','Bottom: Theta-Medium','Zeta-Large','LMG','10mm','Ranged (Martial)','RES','Rho-Medium'),
('w_043','HSK11 Hunting Rifle','Two-Handed, Reload 1','1d10 piercing','—','A civilian model retooled for war, with a wooden stock, synthetic grip, and makeshift bipod. Still accurate at range despite age.','Top: Theta-Medium','Kappa-Medium','Rifle, DMR (Bolt)','.308','Ranged (Martial)','RES','Rho-Medium'),
('w_044','Infernus Shotgun','Two-Handed, Spread Fire Shot (15 ft Cone), Reload 2, Loud, Misfire 3','2d6 fire','1d4 fire','This grimy scattergun is engraved with warning symbols in dead languages. When fired, it spits gouts of fire along with its shot, leaving smoke trails in its wake.','Bottom: Theta-Medium, Right: Sigma-Medium','Kappa-Large','Shotgun','12g','Ranged (Martial)','PUB','Upsilon-Small'),
('w_045','KS-23 Shotgun','Two-Handed, Reload 2, Misfire 3','2d6 piercing','1d4 poison','A sleek, long-barreled unit with coil-wrapped grips and a bolt-sealed magazine. Each shot releases a toxic payload designed to melt synth-armor.','—','Kappa-Medium','Shotgun','12g','Ranged (Martial)','CAR','Xi-Medium'),
('w_046','KSK Assault Rifle','Light, Burst Fire (2), Misfire 3','2d6 piercing','1d4 fire','A DIY modular build popular in frontier workshops. The rifle\'s compact recoil chamber glows faintly from residual flame-based accelerant.','Bottom: Theta-Small','Kappa-Small','Rifle (Assault)','9mm','Ranged (Martial)','CRA','Psi-Medium'),
('w_047','Laser Pulse Rifle','Heavy, Burst Fire (2), Misfire 2','2d6 radiant','1d4 fire','Slim-profile pulse weapon with thermal vents and under-barrel capacitors. Emits a tight beam that carves through armored targets with terrifying speed.','Bottom: Theta-Large','Kappa-Medium','Rifle, DMR (Energy)','Pulsecoil','Ranged (Martial)','CAR','Xi-Medium'),
('w_048','Locking Blade','Finesse, Light','2d6 slashing','—','Mechanized teeth along the back edge clamp tight once embedded in flesh or plating, locking in place until manually disengaged. Used to pin or tear.','—','—','Melee','—','Melee (Simple)','RES','Rho-Medium'),
('w_049','M41A Pulse Rifle MK2','Burst Fire (3), Reload 6, Two-Handed, Misfire 3','1d8 radiant','1d4 fire','This repurposed firearm hums before each shot. A side-vented energy cell drives incendiary bolts with brutal efficiency. The casing is faded yellow, scratched by urban war.','Top: Sigma-Small, Bottom: Sigma-Medium','Kappa-Large','Rifle (Energy)','10mm','Ranged (Martial)','PUB','Psi-Small'),
('w_050','Maglev Raildriver','Heavy, Two-Handed, Reload 1, Misfire 3, Loud, Ignore Full Cover (at disv.)','2d8 piercing','1d4 fire','Compact variant of the rail series, this unit crackles with unstable coils and arc-welded targeting fins. Fires with a pulse of compressed kinetic energy.','Top: Sigma-Medium','Kappa-Large','Railgun','GAUSS','Ranged (Martial)','RES','Rho-Medium'),
('w_051','Magnetic SMG Prototype','Burst Fire (3), Reload 15, Misfire 1','1d8 force','—','A sleek, almost surgical SMG prototype. Its barrel is ringed by magnetic coils that glow purple when fired. Emits a whine as it recharges between bursts.','Top: Sigma-Small','Zeta-Medium','SMG','Magcoil','Ranged (Martial)','RES','Psi-Medium'),
('w_052','Mech Gauntlet','Finesse, Light','1d8 slashing','—','Encases the forearm in reinforced armor-plating with servo-motor knuckles. Powered strikes land with surgical brutality, cracking ribs or steel plating alike.','—','—','Melee','—','Melee (Martial)','CAR','Xi-Medium'),
('w_053','MG24','Heavy, Two-Handed, Reload 30, Burst Fire (5), Misfire 3','1d6 piercing','—','A rugged machine gun with exposed coolant tubing and rust-patched plating. Fires in drawn-out bursts, coughing rounds downrange with deafening rhythm.','Bottom: Theta-Large, Right: Theta-Small','Zeta-Medium','HMG','10mm','Ranged (Martial)','RES','Rho-Medium'),
('w_054','MM9 Rocket Launcher','AoE (20ft Circle DC 15 DEX, half on save), Loud','3d6 fire','3d6 force','Tube-fed launcher with burn markings and exposed recoil dampeners. Missiles are small but devastating—especially in tight zones.','Top: Theta-Small, Right: Theta-Medium','Kappa-Medium','Heavy Weapon','MM9','Ranged (Martial)','PUB','Psi-Small'),
('w_055','Nerve Gas Grenade','AoE (20 ft Circle), Poisoned (1 turn, DC 14 CON), Lasting Zone (1 min)','2d8 poison','—','Smooth canister with biometric latch, releasing a vapor of engineered neurotoxins that silence targets with surgical lethality—leaves no scorch marks.','—','—','Explosive','—','Thrown/Set','RES','Rho-Medium'),
('w_056','Neural Flail','Special (DC 14 WIS, Disadv. on INT checks 1 min)','1d8 psychic','—','A dense coil of fiber-optic strands tipped with electroshock nodes. When activated, it emits bursts of psionic interference tuned to disrupt mental focus.','—','—','Melee','—','Melee (Martial)','CAR','—'),
('w_057','Phaser Pistol','Burst Fire, Misfire 2, Charge Glow (visible in dark)','2d6 radiant','1d4 fire','This semi-automatic sidearm is fitted with arc regulators and a crystal capacitor. Its shot resonates with vibrating heat on impact.','Top: Theta-Small, Bottom: Theta-Large, Right: Sigma-Medium','Zeta-Medium','Handgun (Heavy)','10mm','Ranged (Simple)','PUB','Psi-Small'),
('w_058','Plasma Claw','Finesse, Stun (DC 12 CON on crit)','3d6 lightning','—','Five arcing filaments of compressed heat flicker from a knuckle-mounted grid. When slashed, they leave scorched claw trails across armor and flesh alike.','—','—','Melee','—','Melee (Martial)','CAR','Xi-Medium'),
('w_059','Plasma Dagger','Finesse, Light, High Crit (19–20)','1d4 radiant','—','A short, focused plasma beam shaped into a blade, flickering slightly with unstable charge. The handle is charred from repeated overvolts.','—','—','Melee','—','Melee (Simple)','CAR','—'),
('w_060','Plasma Grenade','AoE (10 ft Circle), Ignores Cover','1d6 radiant','—','Metallic orb with vents glowing soft blue, discharges unstable plasma upon contact, liquefying steel and flash-boiling flesh.','—','—','Explosive','—','Thrown/Set','PUB','Psi-Small'),
('w_061','Plasma Pistol','Light, Reload 6, Overcharge (crit deals 2x)','1d6 radiant','—','Compact and humming, its plasma coil glows with faint blue light. Fires searing bolts that burn straight through organic matter.','Top: Sigma-Medium, Bottom: Theta-Large, Right: Sigma-Medium','Kappa-Small','Handgun (Energy)','10mm','Ranged (Simple)','RES','Rho-Medium'),
('w_062','Power Gauntlet','Heavy, Two-Handed, Knockback (10 ft)','2d8 force','—','A reinforced wrist brace and reinforced glove powered by internal capacitors. On full charge, a single blow can crater concrete or throw bodies across rooms.','—','—','Melee','—','Melee (Martial)','CAR','Xi-Medium'),
('w_063','Pulse Pistol','Light, Reload 8, Chance to Ignite (burn on 18+)','1d6 radiant','1d4 burn','Glows with a faint internal hum, building charge between shots. Can ignite clothing or flesh, leaving seared and smoking entry points.','—','Zeta-Small','Handgun (Energy)','Pulsecoil','Ranged (Simple)','RES','Psi-Small'),
('w_064','Pulse Ray Rifle','Two-Handed, Reload 10, Misfire 2','3d6 radiant','—','Features a side-mounted cooling chamber and a triple-barrel pulse disperser. Fires radiant blasts that sear armor and blind optics.','Top: Theta-Medium','Zeta-Medium','Rifle (Energy)','Pulsecoil','Ranged (Martial)','CAR','Xi-Medium'),
('w_065','Raildriver XXR','Two-Handed, Reload 1, Misfire 3, Ignore Full Cover (at disv.)','2d6 piercing','—','Slimmer design with lateral fins and chemical-dampening wrap. Its lighter coils allow for faster shots at the cost of penetrative power.','Bottom: Theta-Medium','Zeta-Large','Railgun','GAUSS','Ranged (Martial)','PUB','Upsilon-Small'),
('w_066','Rebar Knuckle','','2d6 bludgeoning','—','Twin rods of steel rebar welded into a frame and sharpened at the ends. Favored for its raw weight and bone-shattering potential.','—','—','Melee','—','Melee (Martial)','CRA','—'),
('w_067','Rebel Claw','Finesse, Light','1d6 slashing','—','A modified gardening tool wrapped in cloth and strapping, bent into a talon shape. Used by insurgents for quick throat work or limb hooking.','—','—','Melee','—','Melee (Simple)','RES','—'),
('w_068','Resistance BAR','Two-Handed, Chambered 6, Misfire 3','2d6 piercing','1d4 fire','A heavy steel frame with a worn grip and custom gas expansion ports. When it fires, the muzzle blast briefly lights up like a blowtorch.','Bottom: Theta-Large, Right: Theta-Medium','Kappa-Small','Rifle (Assault)','5.56mm','Ranged (Martial)','RES','Rho-Medium'),
('w_069','Rivet Hammer','Heavy, Loud, Versatile (1d10)','1d6 bludgeoning','1d4 thunder','A factory repair tool with reinforced head and pneumatic pulse driver still semi-functional. Emits a loud hiss with every crushing swing.','—','—','Melee','—','Melee (Simple)','PUB','Psi-Small'),
('w_070','Rocket Maul','Heavy, Two-Handed, Explosive Knockback (DC 15 STR)','2d12 bludgeoning','—','A two-handed sledge with a retrofitted thruster on its back. Each swing can be boosted for maximum impact—though the recoil is just as dangerous.','—','—','Melee','—','Melee (Martial)','RES','Rho-Medium'),
('w_071','RPG-1','AoE (20ft Circle DC 13 DEX, half on save), Loud','2d8 fire','2d8 force','Shoulder-fired rocket tube with red-striped casing. Fires explosive shells laced with chemical agents, designed for maximum environmental chaos.','Bottom: Theta-Large, Right: Sigma-Small','Kappa-Small','Heavy Weapon','RPG','Ranged (Martial)','RES','Rho-Medium'),
('w_072','RZ40 SMG','Two-Handed, Burst Fire, Suppressed Variant Available','1d6 piercing','—','Lightweight with a squared-off grip and integrated side handle. Fires rapidly from a top-loading clip; favored in collapsing buildings and tunnel chases.','Right: Theta-Medium','Kappa-Large','SMG','9mm','Ranged (Simple)','PUB','Upsilon-Small'),
('w_073','RZ43 Automatic Pistol','Rapid Fire (3), Reload 10','1d8 piercing','1d4 poison','A compact auto-pistol with ridged slides and chemical-sealed mags. Rapid fire with nerve agent rounds, preferred in sabotage ops and tunnel fights.','Bottom: Theta-Large','Zeta-Large','Handgun (Assault)','9mm','Ranged (Simple)','RES','Rho-Medium'),
('w_074','RZ666 Super-Heavy Auto Pistol','Rapid Fire (2)','1d6 piercing','—','This hand-cannon features a welded barrel jacket and overclocked recoil spring. Its oversized mag slams into place with a hiss, kicking like a short-range cannon.','Top: Theta-Medium, Bottom: Sigma-Large','Zeta-Small','Handgun (Heavy)','10mm','Ranged (Martial)','CRA','Psi-Medium'),
('w_075','Sawn-Off Shotgun','Light, Reload 2, Spread Shot (15ft Cone DC 12 DEX), Misfire 3','2d6 piercing','—','Cut clean at the grip and muzzle, this weapon kicks like hell. No sights, no safety, just a loud blast and whatever’s unfortunate enough to be in front of it.','—','Kappa-Medium','Shotgun','12g','Ranged (Simple)','RES','Rho-Medium'),
('w_076','Scorpion Whip','Finesse, Reach, Trip (DC 13 DEX)','2d8 slashing','—','A segmented whip with razor-tipped plates along its spine, each link capable of drawing deep cuts or tearing into armor plating.','—','—','Melee','—','Melee (Simple)','CAR','Xi-Medium'),
('w_077','Shifting Spear','Finesse, Versatile (1d12), Reach','1d10 piercing','—','Composed of nanite-linked segments that adjust length and curvature mid-thrust. Can curl, hook, or extend based on wielder intent and embedded code.','—','—','Melee','—','Melee (Martial)','RES','Rho-Medium'),
('w_078','Shock Truncheon','Light, Nonlethal','1d4 bludgeoning','1d4 lightning','A black composite baton wired to a power cell, humming faintly when held. Discharges a sharp electrical pulse with each swing, used for suppression and crowd control.','—','—','Melee','—','Melee (Martial)','CAR','—'),
('w_079','Shredder','Heavy, Two-Handed,','3d8 slashing','—','A two-handed monstrosity with rotating teeth, this improvised chain-axe chews through obstacles, armor, and spine alike—unstable but brutal.','—','—','Melee','—','Melee (Martial)','RES','Rho-Medium'),
('w_080','Smoke Grenade','AoE (20 ft Circle), Obscures Vision','1d6 poison','1d4 fire','Matte casing with a pressure-release dial, pours thick black haze laced with trace irritants designed to blind optics and lungs alike.','—','—','Explosive','—','Thrown/Set','PUB','Upsilon-Small'),
('w_081','Street Mace','Heavy, Improvised','2d4 bludgeoning','—','A reinforced pipe bound with chain links and embedded nails. Favored in underground brawls and known for smashing bone through polymer armor.','—','—','Melee','—','Melee (Simple)','CRA','—'),
('w_082','Streetline Compact','Light, Concealable, Chambered 1, Misfire 1','1d6 piercing','—','Small enough to disappear into a boot or cybernetic sleeve. Prone to misfires, but deadly when drawn fast in close quarters.','—','Zeta-Small','Handgun (Light)','9mm','Ranged (Simple)','RES','Rho-Small'),
('w_083','Stun Grenade','AoE (15 ft Circle), Stun (1 turn, DC 13 WIS)','2d6 thunder','1d4 lightning','Reinforced shell marked by twin energy cells, emits a pulse that overrides nervous systems, briefly frying organic and digital sensors.','—','—','Explosive','—','Thrown/Set','CAR','Xi-Medium'),
('w_084','Suppressor Glove','Two-Handed, Grapple Advantage, Stun (DC 12 CON on crit)','1d8 bludgeoning','—','A padded gauntlet with integrated shock coils and trauma plates, meant for riot control. Delivers crushing punches with nonlethal—or lethal—intent.','—','—','Melee','—','Melee (Martial)','CAR','—'),
('w_085','Tunnel Jack','Heavy, Two-Handed, Push (DC 13 STR on hit or fall prone)','2d6 bludgeoning','—','A repurposed mining tool with serrated jaws and a telescoping haft. When swung, its weight and hooked ends make it deadly in close tunnel fighting.','—','—','Melee','—','Melee (Martial)','RES','—'),
('w_086','Turbine Impact Hammer','Light, Knockback (5 ft),','1d6 bludgeoning','—','A compact sledge with a turbine-blown piston head. The internal compressor adds momentum to each swing, delivering devastating force in tight spaces.','—','—','Melee','—','Melee (Simple)','RES','Rho-Medium'),
('w_087','Twinhammer Breaker','Light, Chambered 2, Misfire 2, Break-Reload','1d10 piercing','—','A break-barrel double-shot pistol. Reloading it requires breaking the entire frame in half and slamming it shut with two heavy rounds.','—','Kappa-Small','Handgun (Heavy)','.44','Ranged (Martial)','RES','Rho-Small'),
('w_088','XR308 Bolt-Action Rifle','Two-Handed, Reload 1','1d10 piercing','—','A militia favorite. Simple, rugged, and old-world in design. Strips down fast for parts or sabotage.','Top: Theta-Medium','Kappa-Medium','Rifle, DMR (Bolt)','.308','Ranged (Martial)','RES','Rho-Medium'),
('w_089','XT Hunting Crossbow','Two-Handed, Reload 1, Silent','1d8 piercing','—','Worn wooden grip and silent pulley mechanism make this bow ideal for ambushes and silent takedowns. Uses scavenged quarrels.','—','—','Crossbow','BOLT','Ranged (Simple)','RES','Psi-Small'),
('w_090','Z-110 Boltshot','Burst Fire (2), Reload 5','1d8 piercing','—','A compact rifle with burst-fire capacitor coils mounted beneath the barrel. Custom fins vent heat when rapid-fired, but they glow dangerously.','Top: Sigma-Medium, Bottom: Sigma-Large','Kappa-Small','Rifle, DMR (Bolt)','.308','Ranged (Martial)','CAR','Xi-Medium');
/*!40000 ALTER TABLE `weapons` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-30 17:45:54
