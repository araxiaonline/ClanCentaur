-- ######################################################--
--	NPC VENDOR TEMPLATE - 320: EARTHCALLER JALYSSA
-- 		Gelkis Quartermaster (Faction 132)
-- ######################################################--
SET
@Entry 		:= 320,
@Model 		:= 9424, -- Gelkis Centaur
@Name 		:= "Earthcaller Jalyssa",
@Title 		:= "Gelkis Quartermaster",
@Icon 		:= "Buy",
@GossipMenu := 0,
@MinLevel 	:= 11,
@MaxLevel 	:= 11,
@Faction 	:= 132, 	-- Gelkis Centaur (Hostile to Magram)
@NPCFlag 	:= 4224, 	-- Vendor + Gossip
@Scale		:= 1.0,
@Rank		:= 0,
@Type 		:= 7, 		-- Humanoid
@TypeFlags 	:= 0,
@FlagsExtra := 2, 		-- Static
@AIName		:= "",
@Script 	:= "",
@Map 		:= 1,
@PosX 		:= -1928.3124,
@PosY 		:= 2595.8772,
@PosZ 		:= 63.043484,
@O 			:= 5.649051,
@Guid 		:= 32001;


-- NPC TEMPLATE
DELETE FROM creature_template WHERE entry = @Entry;
INSERT INTO creature_template (entry, difficulty_entry_1, difficulty_entry_2, difficulty_entry_3, name, subname, IconName, gossip_menu_id, minlevel, maxlevel, exp, faction, npcflag, speed_walk, speed_run, scale, rank, unit_class, unit_flags, unit_flags2, dynamicflags, family, trainer_type, trainer_spell, trainer_class, trainer_race, type, type_flags, flags_extra, AIName, ScriptName) VALUES
(@Entry, 0, 0, 0, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, 0, @Faction, @NPCFlag, 1, 1.14286, @Scale, @Rank, 1, 512, 2048, 0, 0, 0, 0, 0, 0, @Type, @TypeFlags, @FlagsExtra, @AIName, @Script);

-- NPC MODEL
DELETE FROM `creature_template_model` WHERE (`CreatureID` = @Entry);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(@Entry, 0, @Model, 1, 1, 12340);

-- NPC SPAWN (Using Gelkis Village Coordinates)
DELETE FROM `creature` WHERE `id` = @Entry;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimeecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `world_guid`, `spawntype`, `phase_mask`, `area_id`, `spawn_flags`) VALUES
(@Guid, @Entry, @Map, 1, 0, 0, @PosX, @PosY, @PosZ, @O, 150000000, 0, 0, 100, 100, 0, 0, 0, 1, 0, 1);

-- NPC VENDOR ITEMS (All using Gold: ExtendedCost 0)
DELETE FROM npc_vendor WHERE entry = @Entry;
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost) VALUES
(@Entry, 1, 200310, 0, 0, 0), -- Batu'kar of the Second Khan (Epic, Rank 7)
(@Entry, 2, 200311, 0, 0, 0), -- Ceremonial Centaur Ring (Rare, Rank 6)
(@Entry, 3, 200312, 0, 0, 0), -- Gelkis Earthbinder (Rare, Rank 6)
(@Entry, 4, 200313, 0, 0, 0), -- Maraudine Oath Pauldrons (Rare, Rank 6)
(@Entry, 5, 200314, 0, 0, 0), -- Windbinder Gloves (Rare, Rank 7)
(@Entry, 6, 200315, 0, 0, 0), -- Mantle of Centaur Authority (Rare, Rank 7)
(@Entry, 7, 200316, 0, 0, 0), -- Centaur Skullcap (Uncommon, Rank 5)
(@Entry, 8, 200317, 0, 0, 0), -- Grips of the Unified Storm (Uncommon, Rank 5)
(@Entry, 9, 200318, 0, 0, 0); -- Warleader Sash (Uncommon, Rank 5)

-- END OF JALYSSA

-- ######################################################--
--	NPC VENDOR TEMPLATE - 321: DEATHCALLER AISHA
-- 		Magram Quartermaster (Faction 133)
-- ######################################################--
SET
@Entry 		:= 321,
@Model 		:= 9431, -- Magram Centaur
@Name 		:= "Deathcaller Aisha",
@Title 		:= "Magram Quartermaster",
@Icon 		:= "Buy",
@GossipMenu := 0,
@MinLevel 	:= 11,
@MaxLevel 	:= 11,
@Faction 	:= 133, 	-- Magram Centaur (Hostile to Gelkis)
@NPCFlag 	:= 4224, 	-- Vendor + Gossip
@Scale		:= 1.0,
@Rank		:= 0,
@Type 		:= 7, 		-- Humanoid
@TypeFlags 	:= 0,
@FlagsExtra := 2, 		-- Static
@AIName		:= "",
@Script 	:= "",
@Map 		:= 1,
@PosX 		:= -1583.57,
@PosY 		:= 933.561,
@PosZ 		:= 89.9789,
@O 			:= 0.00612077,
@Guid 		:= 32101;


-- NPC TEMPLATE
DELETE FROM creature_template WHERE entry = @Entry;
INSERT INTO creature_template (entry, difficulty_entry_1, difficulty_entry_2, difficulty_entry_3, name, subname, IconName, gossip_menu_id, minlevel, maxlevel, exp, faction, npcflag, speed_walk, speed_run, scale, rank, unit_class, unit_flags, unit_flags2, dynamicflags, family, trainer_type, trainer_spell, trainer_class, trainer_race, type, type_flags, flags_extra, AIName, ScriptName) VALUES
(@Entry, 0, 0, 0, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, 0, @Faction, @NPCFlag, 1, 1.14286, @Scale, @Rank, 1, 512, 2048, 0, 0, 0, 0, 0, 0, @Type, @TypeFlags, @FlagsExtra, @AIName, @Script);

-- NPC MODEL
DELETE FROM `creature_template_model` WHERE (`CreatureID` = @Entry);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(@Entry, 0, @Model, 1, 1, 12340);

-- NPC SPAWN (Using Magram Village Coordinates)
DELETE FROM `creature` WHERE `id` = @Entry;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimeecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `world_guid`, `spawntype`, `phase_mask`, `area_id`, `spawn_flags`) VALUES
(@Guid, @Entry, @Map, 1, 0, 0, @PosX, @PosY, @PosZ, @O, 150000000, 0, 0, 100, 100, 0, 0, 0, 1, 0, 1);

-- NPC VENDOR ITEMS (All using Gold: ExtendedCost 0)
DELETE FROM npc_vendor WHERE entry = @Entry;
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost) VALUES
(@Entry, 1, 200300, 0, 0, 0), -- Soul-Forged Maul (Epic, Rank 7)
(@Entry, 2, 200301, 0, 0, 0), -- Girdle of the Duststrider (Epic, Rank 7)
(@Entry, 3, 200302, 0, 0, 0), -- Mantle of the Earthmover (Epic, Rank 7)
(@Entry, 4, 200303, 0, 0, 0), -- Magram Battle-Gloves (Rare, Rank 6)
(@Entry, 5, 200304, 0, 0, 0), -- Centaur Ring of Unity (Rare, Rank 6)
(@Entry, 6, 200305, 0, 0, 0), -- Magram Shaman's Staff (Rare, Rank 6)
(@Entry, 7, 200306, 0, 0, 0), -- Magram Tunic (Rare, Rank 6)
(@Entry, 8, 200307, 0, 0, 0), -- Belt of the Maraudine (Uncommon, Rank 5)
(@Entry, 9, 200308, 0, 0, 0), -- Maraudine Handguards (Uncommon, Rank 5)
(@Entry, 10, 200309, 0, 0, 0); -- Magram Skullcap (Uncommon, Rank 5)

-- END OF AISHA
