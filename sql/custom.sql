/**
 * CREATE NPC EQUIPMENT
 */

REPLACE INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3)
VALUES
(200199, 18353, 6236, 0), -- clara
(200200, 33494, 0, 0), -- druid staff
(200201, 35064, 0, 0), -- hunter
(200202, 29981, 0, 0), -- mage
(200203, 17182, 0, 0), -- paladin
(200204, 34199, 0, 0), -- priest
(200205, 28572, 28572, 0), -- rogue
(200206, 34346, 34346, 0), -- shaman
(200207, 30021, 0, 0), -- warlock
(200208, 19019, 22819, 0); -- warrior: thunder fury + shield of condemnation

/**
 * CREATE TRAINERS
 */

UPDATE creature_template SET EquipmentTemplateId = 200200, ModelId1 = 1756 WHERE Entry = 26324; -- druid trainer
UPDATE creature_template SET EquipmentTemplateId = 200201, ModelId1 = 5014 WHERE Entry = 26325; -- hunter trainer
UPDATE creature_template SET EquipmentTemplateId = 200202, ModelId1 = 1471 WHERE Entry = 26326; -- mage trainer
UPDATE creature_template SET EquipmentTemplateId = 200203, ModelId1 = 1499 WHERE Entry = 26327; -- paladin trainer
UPDATE creature_template SET EquipmentTemplateId = 200204, ModelId1 = 5549 WHERE Entry = 26328; -- priest trainer
UPDATE creature_template SET EquipmentTemplateId = 200205, ModelId1 = 13171 WHERE Entry = 26329; -- rogue trainer
UPDATE creature_template SET EquipmentTemplateId = 200206, ModelId1 = 1524 WHERE Entry = 26330; -- shaman trainer
UPDATE creature_template SET EquipmentTemplateId = 200207, ModelId1 = 2961 WHERE Entry = 26331; -- warlock trainer
UPDATE creature_template SET EquipmentTemplateId = 200208, ModelId1 = 1504 WHERE Entry = 26332; -- warrior trainer

UPDATE creature_template_addon SET b2_0_sheath = 0 WHERE entry IN (26324, 26325,26326, 26327, 26328, 26331, 26332);

UPDATE creature_template SET subname = "Clara's Company" WHERE entry >= 26324 AND entry <= 26332; 

REPLACE INTO creature_template (entry, NAME, subname, minlevel, maxlevel, modelid1, faction, creaturetype, npcflags, unitflags, 
	extraflags, unitclass, trainertype, TrainerClass, trainertemplateid, vendortemplateid, EquipmentTemplateId)
VALUES
(995070, "Mining Trainer", "Clara's Company", 70,70,1512,35,7,145,37376,2,1,2,0,1011,0, 5514),
(995071, "Blacksmithing Trainer", "Clara's Company", 70,70,1288,35,7,145,32768,2,1,2,0,1063,0, 514),
(995072, "Engineering Trainer", "Clara's Company", 70,70,6844,35,7,145,0,2,1,2,0,1001,0, 5518),
(995073, "Jewelcrafting Trainer", "Clara's Company", 70,70,15669,35,7,145,4608,2,1,2,0,1091,0, 15708),
(995074, "Tailoring Trainer", "Clara's Company", 70,70,1485,35,7,145,4608,2,1,2,0,1081,0, 1316),
(995075, "Enchanting Trainer", "Clara's Company", 70,70,1481,35,7,145,512,2,1,2,0,1041,0, 1318),
(995076, "Skinning Trainer", "Clara's Company", 70,70,3448,35,7,17,145,2,1,2,0,1021,0, 1292),
(995077, "Leatherworking Trainer", "Clara's Company", 70,70,10625,35,7,145,4608,2,1,2,0,1071,0, 11096),
(995078, "Herbalism Trainer", "Clara's Company", 70,70,1520,35,7,17,512,2,1,2,0,1031,0, 1321),
(995079, "Alchemy Trainer", "Clara's Company", 70,70,1489,35,7,145,0,2,1,2,0,1054,0, 0),
(995080, "First Aid Trainer", "Clara's Company", 70,70,1473,35,7,145,4608,2,1,2,0,1100,0, 0),
(995081, "Fishing Trainer", "Clara's Company", 70,70,23548,35,7,145,0,2,1,2,0,1120,0, 0),
(995082, "Cooking Trainer", "Clara's Company", 70,70,1433,35,7,145,4608,2,1,2,0,1110,0, 0),
(995083, "Weapon Master", "Clara's Company", 70,70,11804,35,7,19,37376,2,1,2,0,1201,0, 11867),
(995084, "Riding Trainer", "Clara's Company", 70,70,3274,35,7,18,4608,2,1,1,0,1131,0, 0),
(995095, "Pet Trainer", "Clara's Company", 70,70,5043,35,7,19,4608,2,1,3,3,100,0, 0);

REPLACE INTO npc_trainer VALUES (26327,7328,0,0,0,12,0); -- redemption
REPLACE INTO npc_trainer VALUES (26327,34767,0,0,0,60,0); -- charger
REPLACE INTO npc_trainer VALUES (26327,23214,0,0,0,60,0); -- charger

REPLACE INTO npc_trainer VALUES (26326,28272,0,0,0,60,0); -- pig
REPLACE INTO npc_trainer VALUES (26326,28271,0,0,0,60,0); -- turtle

REPLACE INTO npc_trainer VALUES (26331,688,0,0,0,5,0); -- imp
REPLACE INTO npc_trainer VALUES (26331,697,0,0,0,10,0); -- void
REPLACE INTO npc_trainer VALUES (26331,712,0,0,0,20,0); -- bus
REPLACE INTO npc_trainer VALUES (26331,691,0,0,0,29,0); -- felhunter
REPLACE INTO npc_trainer VALUES (26331,1122,0,0,0,50,0); -- infernal
REPLACE INTO npc_trainer VALUES (26331,603,0,0,0,60,0); -- doom
REPLACE INTO npc_trainer VALUES (26331,23161,0,0,0,60,0); -- dreadsteed

REPLACE INTO npc_trainer VALUES (26332,20252,0,0,0,30,0); -- berserker
REPLACE INTO npc_trainer VALUES (26332,2458,0,0,0,30,0); -- intercept
REPLACE INTO npc_trainer VALUES (26332,71,0,0,0,10,0); -- defense

REPLACE INTO npc_trainer VALUES (26330,58753,0,0,0,10,0); -- earth totem
REPLACE INTO npc_trainer VALUES (26330,3599,0,0,0,16,0); -- fire totem
REPLACE INTO npc_trainer VALUES (26330,5394,0,0,0,30,0); -- water totem

REPLACE INTO npc_trainer VALUES (26325,883,0,0,0,10,0); -- call pet
REPLACE INTO npc_trainer VALUES (26325,5149,0,0,0,10,0); -- train pet
REPLACE INTO npc_trainer VALUES (26325,6991,0,0,0,10,0); -- feed pet
REPLACE INTO npc_trainer VALUES (26325,982,0,0,0,10,0); -- revive pet
REPLACE INTO npc_trainer VALUES (26325,2641,0,0,0,10,0); -- dismiss pet
REPLACE INTO npc_trainer VALUES (26325,1515,0,0,0,10,0); -- tame beast

REPLACE INTO npc_trainer VALUES (26324,5487,0,0,0,10,0); -- bear form
REPLACE INTO npc_trainer VALUES (26324,8946,0,0,0,14,0); -- poison
REPLACE INTO npc_trainer VALUES (26324,1066,0,0,0,18,0); -- aquatic form
REPLACE INTO npc_trainer VALUES (26324,40120,0,0,0,70,0); -- flight form

REPLACE INTO npc_trainer VALUES (995083,196,0,0,0,1,0); -- 1h axes
REPLACE INTO npc_trainer VALUES (995083,197,0,0,0,1,0); -- 2h axes
REPLACE INTO npc_trainer VALUES (995083,198,0,0,0,1,0); -- 1h maces
REPLACE INTO npc_trainer VALUES (995083,199,0,0,0,1,0); -- 2h maces
REPLACE INTO npc_trainer VALUES (995083,266,0,0,0,1,0); -- guns
REPLACE INTO npc_trainer VALUES (995083,227,0,0,0,1,0); -- staves
REPLACE INTO npc_trainer VALUES (995083,264,0,0,0,1,0); -- bows
REPLACE INTO npc_trainer VALUES (995083,2567,0,0,0,1,0); -- thrown
REPLACE INTO npc_trainer VALUES (995083,201,0,0,0,1,0); -- one hand swords
REPLACE INTO npc_trainer VALUES (995083,202,0,0,0,1,0); -- two hand swords
REPLACE INTO npc_trainer VALUES (995083,15590,0,0,0,1,0); -- fists
REPLACE INTO npc_trainer VALUES (995083,1180,0,0,0,1,0); -- daggers
REPLACE INTO npc_trainer VALUES (995083,5011,0,0,0,1,0); -- crossbows

/**
 * OTHER
 */

REPLACE INTO creature_template (entry, NAME, minlevel, maxlevel, modelid1, faction, creaturetype, npcflags, unitflags, unitclass, equipmenttemplateid)
VALUES
(909101, "Arena Teams", 70,70,5567,35,7,262144,768,1,12480),
(909102, "Innkeeper", 70,70,25219,35,7,65536,768,1,0),
(909103, "Bank", 70,70,6588,35,7,131072,768,1,0);

REPLACE INTO creature_template_addon (entry, b2_0_sheath) 
VALUES
(909101, 0);

/**
 *CREATE CLARA'S COMPANY
 */

REPLACE INTO creature_template (entry, NAME, subname, minlevel, maxlevel, modelid1, faction, 
	creaturetype, npcflags, unitflags, unitclass, EquipmentTemplateId)
VALUES
(909000, "Clara", "Auction House", 58, 58, 4558, 35, 7, 2097152, 36864, 1, 200199),
(909001, "John", "Clara's Company", 41, 41, 308, 35, 7, 0, 0, 1, 55250),
(909002, "William", "Clara's Company", 44, 44, 308, 35, 7, 0, 0, 1, 2267),
(909003, "Henry", "Clara's Company", 41, 49, 89, 35, 7, 0, 0, 1, 0),
(909004, "Kodo Carrier", "Clara's Company", 70, 70, 7933, 35, 7, 0, 0, 1, 0);

REPLACE INTO creature_template (entry, NAME, subname, minlevel, maxlevel, modelid1, faction, 
	creaturetype, npcflags, unitflags, extraflags, unitclass,ScriptName,EquipmentTemplateId)
VALUES
(999888, "Jasmine", "Clara's Company", 70,70,25523,35,7,1,0,0,0,'ef_npc',14847);

REPLACE INTO creature_template (entry, NAME, subname, minlevel, maxlevel, modelid1, faction, 
	creaturetype, npcflags, unitflags, extraflags, unitclass,ScriptName,EquipmentTemplateId,
	RegenerateStats, DynamicFlags,Expansion,
	HealthMultiplier, PowerMultiplier, ArmorMultiplier, MinLevelHealth, MaxLevelHealth, Armor)
VALUES
(999889, "Training Dummy", "Clara's Company", 70, 70, 16074, 1095, 9, 0, 0, 66, 2, 'npc_targetDummy',0,
14, 16, 1,
15, 15, 1, 8, 8, 15);

/**
 * ADD ITEMS TO AUCTION HOUSE
 */

-- Fix enchantment item subclass
UPDATE item_template SET subclass = 6
WHERE class = 0 AND subclass = 8 AND name LIKE 'Enchant%';

DELETE FROM tbccharacters.item_instance WHERE owner_guid = 1;
DELETE FROM tbccharacters.auction WHERE itemowner = 1;


INSERT INTO tbccharacters.item_instance (
	`guid`, `owner_guid`, `itemEntry`, `creatorGuid`, 
	`giftCreatorGuid`, `count`, `duration`, `charges`, 
	`flags`, `enchantments`, `randomPropertyId`, `durability`, 
	`itemTextId`)
SELECT 
A.entry, 1, A.entry, 0,
0, A.stackable, 0, 0, 
0, 0, 0, A.MaxDurability,
0 
FROM tbcmangos.item_template AS A 
WHERE 
(
	A.quality >= 4
	OR entry in (
		5175,5176,5177,5178, -- shaman quest totems
		7005 -- skinning knife
	)
	OR (class = 0 AND Quality >= 1)
) AND A.bonding != 4 AND A.duration = 0; -- potions, eixirs, food...

INSERT INTO tbccharacters.auction (
	`id`,`houseid`, `itemguid`, `item_template`, `item_count`, 
	`item_randompropertyid`, `itemowner`, `buyoutprice`, `time`, 
	`buyguid`, `lastbid`, `startbid`, `deposit`)
SELECT A.guid, 7, A.guid, A.itemEntry, A.count,
0, 1, 100, 2147483648,
0, 0, 100, 10
FROM tbccharacters.item_instance AS A WHERE `owner_guid` = 1;

/**
 * Remove item requirements
 */

UPDATE item_template SET
	RequiredCityRank = 0,
	RequiredDisenchantSkill = 0,
	requiredhonorrank = 0,
	RequiredReputationFaction = 0,
	RequiredReputationRank  = 0,
	RequiredSkill = 0,
	RequiredSkillRank = 0,
	requiredspell = 0;

/**
 * PLAYER CREATE INFO
 */

UPDATE `playercreateinfo` SET
	map = 0,
	zone = 12,
	position_x = -9432.809570, 
	position_y = 59.817032,
	position_z = 56.599995,
	orientation = 2.988663;


/**
 * DELETE ORIGINAL ELWYNN FOREST NPCS
 */

DELETE FROM creature WHERE guid=80334;
DELETE FROM creature_addon WHERE guid=80334;
DELETE FROM creature_movement WHERE id=80334;
DELETE FROM game_event_creature WHERE guid=80334;
DELETE FROM game_event_creature_data WHERE guid=80334;
DELETE FROM creature_battleground WHERE guid=80334;
DELETE FROM creature_linking WHERE guid=80334 OR master_guid=80334;
DELETE FROM creature WHERE guid=80335;
DELETE FROM creature_addon WHERE guid=80335;
DELETE FROM creature_movement WHERE id=80335;
DELETE FROM game_event_creature WHERE guid=80335;
DELETE FROM game_event_creature_data WHERE guid=80335;
DELETE FROM creature_battleground WHERE guid=80335;
DELETE FROM creature_linking WHERE guid=80335 OR master_guid=80335;
DELETE FROM creature WHERE guid=80336;
DELETE FROM creature_addon WHERE guid=80336;
DELETE FROM creature_movement WHERE id=80336;
DELETE FROM game_event_creature WHERE guid=80336;
DELETE FROM game_event_creature_data WHERE guid=80336;
DELETE FROM creature_battleground WHERE guid=80336;
DELETE FROM creature_linking WHERE guid=80336 OR master_guid=80336;
DELETE FROM creature WHERE guid=80339;
DELETE FROM creature_addon WHERE guid=80339;
DELETE FROM creature_movement WHERE id=80339;
DELETE FROM game_event_creature WHERE guid=80339;
DELETE FROM game_event_creature_data WHERE guid=80339;
DELETE FROM creature_battleground WHERE guid=80339;
DELETE FROM creature_linking WHERE guid=80339 OR master_guid=80339;
DELETE FROM creature WHERE guid=80338;
DELETE FROM creature_addon WHERE guid=80338;
DELETE FROM creature_movement WHERE id=80338;
DELETE FROM game_event_creature WHERE guid=80338;
DELETE FROM game_event_creature_data WHERE guid=80338;
DELETE FROM creature_battleground WHERE guid=80338;
DELETE FROM creature_linking WHERE guid=80338 OR master_guid=80338;
DELETE FROM creature WHERE guid=80320;
DELETE FROM creature_addon WHERE guid=80320;
DELETE FROM creature_movement WHERE id=80320;
DELETE FROM game_event_creature WHERE guid=80320;
DELETE FROM game_event_creature_data WHERE guid=80320;
DELETE FROM creature_battleground WHERE guid=80320;
DELETE FROM creature_linking WHERE guid=80320 OR master_guid=80320;
DELETE FROM creature WHERE guid=80337;
DELETE FROM creature_addon WHERE guid=80337;
DELETE FROM creature_movement WHERE id=80337;
DELETE FROM game_event_creature WHERE guid=80337;
DELETE FROM game_event_creature_data WHERE guid=80337;
DELETE FROM creature_battleground WHERE guid=80337;
DELETE FROM creature_linking WHERE guid=80337 OR master_guid=80337;
DELETE FROM creature WHERE guid=80325;
DELETE FROM creature_addon WHERE guid=80325;
DELETE FROM creature_movement WHERE id=80325;
DELETE FROM game_event_creature WHERE guid=80325;
DELETE FROM game_event_creature_data WHERE guid=80325;
DELETE FROM creature_battleground WHERE guid=80325;
DELETE FROM creature_linking WHERE guid=80325 OR master_guid=80325;
DELETE FROM creature WHERE guid=80333;
DELETE FROM creature_addon WHERE guid=80333;
DELETE FROM creature_movement WHERE id=80333;
DELETE FROM game_event_creature WHERE guid=80333;
DELETE FROM game_event_creature_data WHERE guid=80333;
DELETE FROM creature_battleground WHERE guid=80333;
DELETE FROM creature_linking WHERE guid=80333 OR master_guid=80333;
DELETE FROM creature WHERE guid=80330;
DELETE FROM creature_addon WHERE guid=80330;
DELETE FROM creature_movement WHERE id=80330;
DELETE FROM game_event_creature WHERE guid=80330;
DELETE FROM game_event_creature_data WHERE guid=80330;
DELETE FROM creature_battleground WHERE guid=80330;
DELETE FROM creature_linking WHERE guid=80330 OR master_guid=80330;
DELETE FROM creature WHERE guid=80326;
DELETE FROM creature_addon WHERE guid=80326;
DELETE FROM creature_movement WHERE id=80326;
DELETE FROM game_event_creature WHERE guid=80326;
DELETE FROM game_event_creature_data WHERE guid=80326;
DELETE FROM creature_battleground WHERE guid=80326;
DELETE FROM creature_linking WHERE guid=80326 OR master_guid=80326;
DELETE FROM creature WHERE guid=80327;
DELETE FROM creature_addon WHERE guid=80327;
DELETE FROM creature_movement WHERE id=80327;
DELETE FROM game_event_creature WHERE guid=80327;
DELETE FROM game_event_creature_data WHERE guid=80327;
DELETE FROM creature_battleground WHERE guid=80327;
DELETE FROM creature_linking WHERE guid=80327 OR master_guid=80327;
DELETE FROM creature WHERE guid=80350;
DELETE FROM creature_addon WHERE guid=80350;
DELETE FROM creature_movement WHERE id=80350;
DELETE FROM game_event_creature WHERE guid=80350;
DELETE FROM game_event_creature_data WHERE guid=80350;
DELETE FROM creature_battleground WHERE guid=80350;
DELETE FROM creature_linking WHERE guid=80350 OR master_guid=80350;
DELETE FROM creature WHERE guid=80345;
DELETE FROM creature_addon WHERE guid=80345;
DELETE FROM creature_movement WHERE id=80345;
DELETE FROM game_event_creature WHERE guid=80345;
DELETE FROM game_event_creature_data WHERE guid=80345;
DELETE FROM creature_battleground WHERE guid=80345;
DELETE FROM creature_linking WHERE guid=80345 OR master_guid=80345;
DELETE FROM creature WHERE guid=80346;
DELETE FROM creature_addon WHERE guid=80346;
DELETE FROM creature_movement WHERE id=80346;
DELETE FROM game_event_creature WHERE guid=80346;
DELETE FROM game_event_creature_data WHERE guid=80346;
DELETE FROM creature_battleground WHERE guid=80346;
DELETE FROM creature_linking WHERE guid=80346 OR master_guid=80346;
DELETE FROM creature WHERE guid=80348;
DELETE FROM creature_addon WHERE guid=80348;
DELETE FROM creature_movement WHERE id=80348;
DELETE FROM game_event_creature WHERE guid=80348;
DELETE FROM game_event_creature_data WHERE guid=80348;
DELETE FROM creature_battleground WHERE guid=80348;
DELETE FROM creature_linking WHERE guid=80348 OR master_guid=80348;
DELETE FROM creature WHERE guid=79647;
DELETE FROM creature_addon WHERE guid=79647;
DELETE FROM creature_movement WHERE id=79647;
DELETE FROM game_event_creature WHERE guid=79647;
DELETE FROM game_event_creature_data WHERE guid=79647;
DELETE FROM creature_battleground WHERE guid=79647;
DELETE FROM creature_linking WHERE guid=79647 OR master_guid=79647;
DELETE FROM creature WHERE guid=80349;
DELETE FROM creature_addon WHERE guid=80349;
DELETE FROM creature_movement WHERE id=80349;
DELETE FROM game_event_creature WHERE guid=80349;
DELETE FROM game_event_creature_data WHERE guid=80349;
DELETE FROM creature_battleground WHERE guid=80349;
DELETE FROM creature_linking WHERE guid=80349 OR master_guid=80349;
DELETE FROM creature WHERE guid=80355;
DELETE FROM creature_addon WHERE guid=80355;
DELETE FROM creature_movement WHERE id=80355;
DELETE FROM game_event_creature WHERE guid=80355;
DELETE FROM game_event_creature_data WHERE guid=80355;
DELETE FROM creature_battleground WHERE guid=80355;
DELETE FROM creature_linking WHERE guid=80355 OR master_guid=80355;
DELETE FROM creature WHERE guid=80352;
DELETE FROM creature_addon WHERE guid=80352;
DELETE FROM creature_movement WHERE id=80352;
DELETE FROM game_event_creature WHERE guid=80352;
DELETE FROM game_event_creature_data WHERE guid=80352;
DELETE FROM creature_battleground WHERE guid=80352;
DELETE FROM creature_linking WHERE guid=80352 OR master_guid=80352;
DELETE FROM creature WHERE guid=80353;
DELETE FROM creature_addon WHERE guid=80353;
DELETE FROM creature_movement WHERE id=80353;
DELETE FROM game_event_creature WHERE guid=80353;
DELETE FROM game_event_creature_data WHERE guid=80353;
DELETE FROM creature_battleground WHERE guid=80353;
DELETE FROM creature_linking WHERE guid=80353 OR master_guid=80353;
DELETE FROM creature WHERE guid=80354;
DELETE FROM creature_addon WHERE guid=80354;
DELETE FROM creature_movement WHERE id=80354;
DELETE FROM game_event_creature WHERE guid=80354;
DELETE FROM game_event_creature_data WHERE guid=80354;
DELETE FROM creature_battleground WHERE guid=80354;
DELETE FROM creature_linking WHERE guid=80354 OR master_guid=80354;
DELETE FROM creature WHERE guid=80344;
DELETE FROM creature_addon WHERE guid=80344;
DELETE FROM creature_movement WHERE id=80344;
DELETE FROM game_event_creature WHERE guid=80344;
DELETE FROM game_event_creature_data WHERE guid=80344;
DELETE FROM creature_battleground WHERE guid=80344;
DELETE FROM creature_linking WHERE guid=80344 OR master_guid=80344;
DELETE FROM creature WHERE guid=79645;
DELETE FROM creature_addon WHERE guid=79645;
DELETE FROM creature_movement WHERE id=79645;
DELETE FROM game_event_creature WHERE guid=79645;
DELETE FROM game_event_creature_data WHERE guid=79645;
DELETE FROM creature_battleground WHERE guid=79645;
DELETE FROM creature_linking WHERE guid=79645 OR master_guid=79645;
DELETE FROM creature WHERE guid=79646;
DELETE FROM creature_addon WHERE guid=79646;
DELETE FROM creature_movement WHERE id=79646;
DELETE FROM game_event_creature WHERE guid=79646;
DELETE FROM game_event_creature_data WHERE guid=79646;
DELETE FROM creature_battleground WHERE guid=79646;
DELETE FROM creature_linking WHERE guid=79646 OR master_guid=79646;
DELETE FROM creature WHERE guid=80347;
DELETE FROM creature_addon WHERE guid=80347;
DELETE FROM creature_movement WHERE id=80347;
DELETE FROM game_event_creature WHERE guid=80347;
DELETE FROM game_event_creature_data WHERE guid=80347;
DELETE FROM creature_battleground WHERE guid=80347;
DELETE FROM creature_linking WHERE guid=80347 OR master_guid=80347;
DELETE FROM creature WHERE guid=80332;
DELETE FROM creature_addon WHERE guid=80332;
DELETE FROM creature_movement WHERE id=80332;
DELETE FROM game_event_creature WHERE guid=80332;
DELETE FROM game_event_creature_data WHERE guid=80332;
DELETE FROM creature_battleground WHERE guid=80332;
DELETE FROM creature_linking WHERE guid=80332 OR master_guid=80332;
DELETE FROM creature WHERE guid=80331;
DELETE FROM creature_addon WHERE guid=80331;
DELETE FROM creature_movement WHERE id=80331;
DELETE FROM game_event_creature WHERE guid=80331;
DELETE FROM game_event_creature_data WHERE guid=80331;
DELETE FROM creature_battleground WHERE guid=80331;
DELETE FROM creature_linking WHERE guid=80331 OR master_guid=80331;
DELETE FROM creature WHERE guid=80340;
DELETE FROM creature_addon WHERE guid=80340;
DELETE FROM creature_movement WHERE id=80340;
DELETE FROM game_event_creature WHERE guid=80340;
DELETE FROM game_event_creature_data WHERE guid=80340;
DELETE FROM creature_battleground WHERE guid=80340;
DELETE FROM creature_linking WHERE guid=80340 OR master_guid=80340;
DELETE FROM creature WHERE guid=80328;
DELETE FROM creature_addon WHERE guid=80328;
DELETE FROM creature_movement WHERE id=80328;
DELETE FROM game_event_creature WHERE guid=80328;
DELETE FROM game_event_creature_data WHERE guid=80328;
DELETE FROM creature_battleground WHERE guid=80328;
DELETE FROM creature_linking WHERE guid=80328 OR master_guid=80328;
DELETE FROM creature WHERE guid=80329;
DELETE FROM creature_addon WHERE guid=80329;
DELETE FROM creature_movement WHERE id=80329;
DELETE FROM game_event_creature WHERE guid=80329;
DELETE FROM game_event_creature_data WHERE guid=80329;
DELETE FROM creature_battleground WHERE guid=80329;
DELETE FROM creature_linking WHERE guid=80329 OR master_guid=80329;
DELETE FROM creature WHERE guid=99697;
DELETE FROM creature_addon WHERE guid=99697;
DELETE FROM creature_movement WHERE id=99697;
DELETE FROM game_event_creature WHERE guid=99697;
DELETE FROM game_event_creature_data WHERE guid=99697;
DELETE FROM creature_battleground WHERE guid=99697;
DELETE FROM creature_linking WHERE guid=99697 OR master_guid=99697;
DELETE FROM creature WHERE guid=80283;
DELETE FROM creature_addon WHERE guid=80283;
DELETE FROM creature_movement WHERE id=80283;
DELETE FROM game_event_creature WHERE guid=80283;
DELETE FROM game_event_creature_data WHERE guid=80283;
DELETE FROM creature_battleground WHERE guid=80283;
DELETE FROM creature_linking WHERE guid=80283 OR master_guid=80283;

/**
 * SPAWN NPCS
 */

INSERT INTO tbcmangos.creature (id,`map`,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,
	spawntimesecsmin,spawntimesecsmax,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(13876,0,1,0,0,-9509.51,89.7891,59.6514,5.23918,25,25,0.0,0,0,0,0,0),
(26325,0,1,0,200201,-9466.17,-0.455909,56.9497,6.15496,25,25,0.0,0,0,0,0,0),
(26324,0,1,0,200200,-9463.66,13.1043,56.9625,2.03162,25,25,0.0,0,0,0,0,0),
(909000,0,1,0,200199,-9496.99,71.2138,57.3822,6.08551,25,25,0.0,0,0,0,0,0),
(995084,0,1,0,0,-9466.76,49.4944,57.0639,1.47454,25,25,0.0,0,0,0,0,0),
(5405,0,1,0,0,-9470.5,47.3306,56.8315,4.57294,25,25,0.0,0,0,0,0,0),
(14559,0,1,0,0,-9473.43,47.8077,56.7684,5.14785,25,25,0.0,0,0,0,0,0),
(995095,0,1,0,0,-9466.04,-4.32182,56.9496,1.87273,25,25,0.0,0,0,0,0,0),
(22515,0,1,0,0,-9449.76,67.5118,56.2735,5.84607,25,25,0.0,0,0,0,0,0),
(995083,0,1,0,0,-9473.95,28.7485,56.3396,4.59129,25,25,0.0,0,0,0,0,0),
(26330,0,1,0,200206,-9460.42,30.9949,56.9661,1.44862,25,25,0.0,0,0,0,0,0),
(26332,0,1,0,200208,-9477.99,24.9358,63.8204,6.20813,25,25,0.0,0,0,0,0,0),
(26327,0,1,0,200203,-9462.58,0.63431,63.8206,1.44469,25,25,0.0,0,0,0,0,0),
(26329,0,1,0,200205,-9465.38,12.441,63.8205,0.989796,25,25,0.0,0,0,0,0,0),
(26328,0,1,0,200204,-9457.8,32.4126,63.8205,3.82901,25,25,0.0,0,0,0,0,0),
(26326,0,1,0,200202,-9473.13,33.0169,63.8205,4.5987,25,25,0.0,0,0,0,0,0),
(26331,0,1,0,200207,-9471.41,-5.55137,49.7946,5.74383,25,25,0.0,0,0,0,0,0),
(909001,0,1,0,55250,-9504.16,76.2397,57.7099,2.86977,25,25,0.0,0,0,0,0,0),
(909003,0,1,0,0,-9512.13,66.5983,58.4329,5.70506,25,25,0.0,0,0,0,0,0),
(909002,0,1,0,2267,-9512.1,62.8423,58.3769,0.610967,25,25,0.0,0,0,0,0,0),
(909004,0,1,0,0,-9508.32,77.9475,58.8117,5.2314,25,25,0.0,0,0,0,0,0),
(999888,0,1,0,14847,-9498.36,58.8484,56.3476,5.93085,25,25,0,0,0,0,0,0),
(999889,0,1,0,0,-9474.78,98.3929,57.0861,3.15942,25,25,0,0,0,0,0,0),
(909101,0,1,0,12480,-9465.72,75.0152,56.7267,4.73347,25,25,0,0,0,0,0,0),
(20362,0,1,0,20362,-9455.79,87.5012,58.3445,2.70477,25,25,0,0,0,0,0,0),
(20384,0,1,0,20384,-9457.38,99.9123,58.3436,4.02163,25,25,0,0,0,0,0,0),
(19915,0,1,0,0,-9464.46,93.946,58.3424,0.0250087,25,25,5,0,0,0,0,0);

/**
 * SPAWN OBJECTS
 */

INSERT INTO tbcmangos.gameobject (id,`map`,spawnMask,position_x,position_y,position_z,orientation,rotation0,rotation1,
	rotation2,rotation3,spawntimesecsmin,spawntimesecsmax,animprogress,state) VALUES
(211018,0,1,-9497.72,62.1217,57.1309,6.10076,0.0,0.0,0.0910874,-0.995843,25,25,100,1),
(186672,0,1,-9497.46,69.5714,56.3585,5.63509,0.0,0.0,0.318408,-0.947954,25,25,100,1),
(181626,0,1,-9499.12,59.9494,56.4847,4.37702,0.0,0.0,0.815204,-0.579174,25,25,100,1),
(181626,0,1,-9498.31,62.6857,56.4076,6.02268,0.0,0.0,0.129885,-0.991529,25,25,100,1),
(176785,0,1,-9496.99,71.2138,56.4085,6.08551,0.0,0.0,0.0986753,-0.99512,25,25,100,1),
(337,0,1,-9499.09,62.2787,58.1643,6.07,0.0,0.0,0.106389,-0.994325,25,25,100,1),
(21680,0,1,-9466.49,75.9788,56.8842,4.79135,0.0,0.0,0.678647,-0.734464,25,25,100,1);
