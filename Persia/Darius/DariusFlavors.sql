--==========================================================================================================================
-- LEADER
--==========================================================================================================================	
-- Leader_Flavors
------------------------------
INSERT INTO Leader_Flavors
			(LeaderType,		FlavorType,			Flavor)
VALUES		('LEADER_DARIUS',	'FLAVOR_CULTURE',	7);
--==========================================================================================================================
-- TRAIT
--==========================================================================================================================	
-- GoldToGAP
------------------------------
UPDATE Traits SET GoldToGAP = '15' WHERE Type = 'TRAIT_ENHANCED_GOLDEN_AGES';
------------------------------
-- GoldenAgeDurationModifier
------------------------------
UPDATE Traits SET GoldenAgeDurationModifier = '0' WHERE Type = 'TRAIT_ENHANCED_GOLDEN_AGES';
