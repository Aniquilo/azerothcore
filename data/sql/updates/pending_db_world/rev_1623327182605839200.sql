INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1623327182605839200');

-- Only display his Menu options whenever the player has the quest in an incomplete state
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 15) AND (`SourceGroup` = 1802) AND (`SourceEntry` = 0) AND (`SourceId` = 0) AND (`ElseGroup` = 0) AND (`ConditionTypeOrReference` = 47) AND (`ConditionTarget` = 0) AND (`ConditionValue1` = 3909) AND (`ConditionValue2` = 8) AND (`ConditionValue3` = 0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 1802, 0, 0, 0, 47, 0, 3909, 8, 0, 0, 0, 0, '', '');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 15) AND (`SourceGroup` = 1802) AND (`SourceEntry` = 1) AND (`SourceId` = 0) AND (`ElseGroup` = 0) AND (`ConditionTypeOrReference` = 47) AND (`ConditionTarget` = 0) AND (`ConditionValue1` = 3909) AND (`ConditionValue2` = 8) AND (`ConditionValue3` = 0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 1802, 1, 0, 0, 47, 0, 3909, 8, 0, 0, 0, 0, '', '');

-- Brewspewer has a White ballon icon when you over him regardless of his vendor flags
UPDATE `creature_template` SET `IconName` = 'Speak' WHERE (`entry` = 7775);

-- Removing his script name
UPDATE `creature_template` SET `ScriptName` = '' WHERE (`entry` = 7775);

-- This NPC has his npc flags overriden
UPDATE `creature` SET `npcflag`='131' WHERE  `guid`=50145;
