-- ######################################################--
--	NPC VENDOR TEMPLATE - 321: DEATHCALLER AISHA
-- 		Magram Quartermaster (Faction 133)
-- ######################################################--
DELETE FROM `creature_template` WHERE (`entry` = 321);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(321, 0, 0, 0, 0, 0, 'Deathcaller Aisha', 'Magram Quartermaster', 'Buy', 0, 11, 11, 0, 35, 4224, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 321);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(321, 0, 9431, 1, 1, 12340);

DELETE FROM `npc_vendor` WHERE (`entry` = 321);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(321, 1, 200300, 0, 0, 0, 12340),
(321, 2, 200301, 0, 0, 0, 12340),
(321, 3, 200302, 0, 0, 0, 12340),
(321, 4, 200303, 0, 0, 0, 12340),
(321, 5, 200304, 0, 0, 0, 12340),
(321, 6, 200305, 0, 0, 0, 12340),
(321, 7, 200306, 0, 0, 0, 12340),
(321, 8, 200307, 0, 0, 0, 12340),
(321, 9, 200308, 0, 0, 0, 12340),
(321, 10, 200309, 0, 0, 0, 12340);

DELETE FROM `creature` WHERE (`id1` = 321);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9999359, 321, 0, 0, 0, 0, 0, 1, 1, 0, 3619.09, -3757.98, 41.6906, 1.7461, 300, 0, 0, 277, 0, 0, 0, 0, 0, '', NULL, 0, NULL);


-- ######################################################--
--	NPC VENDOR TEMPLATE - 320: Earthcaller Jalyssa
-- 		Gelkis Quartermaster (Faction 132)
-- ######################################################--
DELETE FROM `creature_template` WHERE (`entry` = 320);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(320, 0, 0, 0, 0, 0, 'Earthcaller Jalyssa', 'Gelkis Quartermaster', 'Buy', 0, 11, 11, 0, 35, 3, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 320);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(320, 0, 9424, 1, 1, 12340);

DELETE FROM `npc_vendor` WHERE (`entry` = 320);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(320, 1, 200310, 0, 0, 0, 12340),
(320, 2, 200311, 0, 0, 0, 12340),
(320, 3, 200312, 0, 0, 0, 12340),
(320, 4, 200313, 0, 0, 0, 12340),
(320, 5, 200314, 0, 0, 0, 12340),
(320, 6, 200315, 0, 0, 0, 12340),
(320, 7, 200316, 0, 0, 0, 12340),
(320, 8, 200317, 0, 0, 0, 12340),
(320, 9, 200318, 0, 0, 0, 12340);

DELETE FROM `creature` WHERE (`id1` = 320);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9999028, 320, 0, 0, 369, 0, 0, 1, 1, 0, -46.9284, 1243.94, -135.668, 1.6867, 300, 0, 0, 127, 0, 0, 0, 0, 0, '', NULL, 0, NULL);
