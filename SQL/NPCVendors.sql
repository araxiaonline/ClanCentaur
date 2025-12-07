-- ######################################################--
--	NPC VENDOR TEMPLATE - 321: DEATHCALLER AISHA
-- 		Magram Quartermaster (Faction 133)
-- ######################################################--
SET
@Entry 		:= 321,
@Model 		:= 9431, 	-- Magram Centaur
@Name 		:= "Deathcaller Aisha",
@Title 		:= "Magram Quartermaster",
@Icon 		:= "Buy",
@GossipMenu := 0,
@MinLevel 	:= 11,
@MaxLevel 	:= 11,
@Faction 	:= 35, 	    -- Friendly Faction (Overwritten by NPCFlag 8064)
@NPCFlag 	:= 8064, 	-- Vendor + Gossip (8064 = 4224 (Vendor/Gossip) + 3840 (Gossip) + 0 (default))
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
@Guid 		:= 10001218; -- Changed GUID to be unique for 321

-- NPC TEMPLATE
DELETE FROM `creature_template` WHERE (`entry` = @Entry);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@Entry, 0, 0, 0, 0, 0, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, 0, @Faction, @NPCFlag, 1, 1.14286, 1, 1, 18, @Scale, @Rank, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 0, 0, 0, 0, @Type, @TypeFlags, 0, 0, 0, 0, 0, 0, 0, @AIName, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, @FlagsExtra, @Script, 12340);

-- NPC MODEL
DELETE FROM `creature_template_model` WHERE (`CreatureID` = @Entry);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(@Entry, 0, @Model, 1, 1, 12340);

-- NPC SPAWN
DELETE FROM `creature` WHERE (`id1` = @Entry);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(@Guid, @Entry, 0, 0, @Map, 0, 0, 1, 1, 0, @PosX, @PosY, @PosZ, @O, 300, 0, 0, 222, 0, 0, 0, 0, 0, '', NULL, 0, @Name);

-- NPC VENDOR ITEMS (All using Gold: ExtendedCost 0)
DELETE FROM `npc_vendor` WHERE `entry` = @Entry;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(@Entry, 1, 200300, 0, 0, 0, 12340), -- Soul-Forged Maul (Epic, Rank 7)
(@Entry, 2, 200301, 0, 0, 0, 12340), -- Girdle of the Duststrider (Epic, Rank 7)
(@Entry, 3, 200302, 0, 0, 0, 12340), -- Mantle of the Earthmover (Epic, Rank 7)
(@Entry, 4, 200303, 0, 0, 0, 12340), -- Magram Battle-Gloves (Rare, Rank 6)
(@Entry, 5, 200304, 0, 0, 0, 12340), -- Centaur Ring of Unity (Rare, Rank 6)
(@Entry, 6, 200305, 0, 0, 0, 12340), -- Magram Shaman's Staff (Rare, Rank 6)
(@Entry, 7, 200306, 0, 0, 0, 12340), -- Magram Tunic (Rare, Rank 6)
(@Entry, 8, 200307, 0, 0, 0, 12340), -- Belt of the Maraudine (Uncommon, Rank 5)
(@Entry, 9, 200308, 0, 0, 0, 12340), -- Maraudine Handguards (Uncommon, Rank 5)
(@Entry, 10, 200309, 0, 0, 0, 12340); -- Magram Skullcap (Uncommon, Rank 5)



-- ######################################################--
--	NPC VENDOR TEMPLATE - 321: DEATHCALLER AISHA
-- 		Magram Quartermaster (Faction 133)
-- ######################################################--
SET
@Entry 		:= 321,
@Model 		:= 9431, 	-- Magram Centaur
@Name 		:= "Deathcaller Aisha",
@Title 		:= "Magram Quartermaster",
@Icon 		:= "Buy",
@GossipMenu := 0,
@MinLevel 	:= 11,
@MaxLevel 	:= 11,
@Faction 	:= 35, 	    -- Friendly Faction (Overwritten by NPCFlag 4224)
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
@Guid 		:= 10001218;

-- NPC TEMPLATE
DELETE FROM `creature_template` WHERE (`entry` = @Entry);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@Entry, 0, 0, 0, 0, 0, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, 0, @Faction, @NPCFlag, 1, 1.14286, 1, 1, 18, @Scale, @Rank, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 0, 0, 0, 0, @Type, @TypeFlags, 0, 0, 0, 0, 0, 0, 0, @AIName, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, @FlagsExtra, @Script, 12340);

-- NPC MODEL
DELETE FROM `creature_template_model` WHERE (`CreatureID` = @Entry);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(@Entry, 0, @Model, 1, 1, 12340);

-- NPC VENDOR ITEMS (All using Gold: ExtendedCost 0)
DELETE FROM `npc_vendor` WHERE (`entry` = @Entry);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(@Entry, 1, 200300, 0, 0, 0, 12340), -- Soul-Forged Maul (Epic, Rank 7)
(@Entry, 2, 200301, 0, 0, 0, 12340), -- Girdle of the Duststrider (Epic, Rank 7)
(@Entry, 3, 200302, 0, 0, 0, 12340), -- Mantle of the Earthmover (Epic, Rank 7)
(@Entry, 4, 200303, 0, 0, 0, 12340), -- Magram Battle-Gloves (Rare, Rank 6)
(@Entry, 5, 200304, 0, 0, 0, 12340), -- Centaur Ring of Unity (Rare, Rank 6)
(@Entry, 6, 200305, 0, 0, 0, 12340), -- Magram Shaman's Staff (Rare, Rank 6)
(@Entry, 7, 200306, 0, 0, 0, 12340), -- Magram Tunic (Rare, Rank 6)
(@Entry, 8, 200307, 0, 0, 0, 12340), -- Belt of the Maraudine (Uncommon, Rank 5)
(@Entry, 9, 200308, 0, 0, 0, 12340), -- Maraudine Handguards (Uncommon, Rank 5)
(@Entry, 10, 200309, 0, 0, 0, 12340); -- Magram Skullcap (Uncommon, Rank 5)

-- NPC SPAWN
DELETE FROM `creature` WHERE (`id1` = @Entry);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(@Guid, @Entry, 0, 0, @Map, 0, 0, 1, 1, 0, @PosX, @PosY, @PosZ, @O, 300, 0, 0, 222, 0, 0, 0, 0, 0, '', NULL, 0, @Name);


