/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.13-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: combot_db
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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
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

-- Dump completed on 2025-09-30 17:45:57
