--==========================================================================================================================	
-- CIVILIZATIONS
--==========================================================================================================================	
--------------------------------	
-- Civilization_BuildingClassOverrides 
--------------------------------		
INSERT INTO Civilization_BuildingClassOverrides 
		(CivilizationType, 		BuildingClassType, 					BuildingType)
VALUES	('CIVILIZATION_RUSSIA',	'BUILDINGCLASS_MINT',				'BUILDING_RUSSIA_POGOST_1');
--==========================================================================================================================	

--==========================================================================================================================
-- ARTDEFINES
--==========================================================================================================================	
------------------------------
-- IconTextureAtlases
------------------------------
INSERT INTO IconTextureAtlases 
			(Atlas, 							IconSize, 	Filename, 							IconsPerRow, 	IconsPerColumn)
VALUES		('BUILDING_RUSSIA_ATLAS', 			256, 		'PogostPicture_256.dds',			1, 				1),
			('BUILDING_RUSSIA_ATLAS', 			128, 		'PogostPicture_128.dds',			1, 				1),
			('BUILDING_RUSSIA_ATLAS', 			64, 		'PogostPicture_064.dds',			1, 				1),
			('BUILDING_RUSSIA_ATLAS', 			45, 		'PogostPicture_045.dds',			1, 				1),
			('BUILDING_RUSSIA2_ATLAS', 			256, 		'Pogost2Picture_256.dds',			1, 				1),
			('BUILDING_RUSSIA2_ATLAS', 			128, 		'Pogost2Picture_128.dds',			1, 				1),
			('BUILDING_RUSSIA2_ATLAS', 			64, 		'Pogost2Picture_064.dds',			1, 				1),
			('BUILDING_RUSSIA2_ATLAS', 			45, 		'Pogost2Picture_045.dds',			1, 				1),
			('BUILDING_RUSSIA3_ATLAS', 			256, 		'Pogost3Picture_256.dds',			1, 				1),
			('BUILDING_RUSSIA3_ATLAS', 			128, 		'Pogost3Picture_128.dds',			1, 				1),
			('BUILDING_RUSSIA3_ATLAS', 			64, 		'Pogost3Picture_064.dds',			1, 				1),
			('BUILDING_RUSSIA3_ATLAS', 			45, 		'Pogost3Picture_045.dds',			1, 				1);

--==========================================================================================================================	

--==========================================================================================================================	
-- BUILDINGS
--==========================================================================================================================	
------------------------------
-- Buildings
------------------------------	
INSERT INTO Buildings 	
			(Type,						BuildingClass,	GoldMaintenance, CityConnectionGoldModifier, 	Cost, FaithCost,	EnhancedYieldTech, TechEnhancedTourism, AllowsRangeStrike, Defense,	ExtraCityHitPoints, TrainedFreePromotion,	CitySupplyFlat,	PovertyHappinessChange, GreatPeopleRateModifier, GreatWorkSlotType, GreatWorkCount, FreshWater, FreeStartEra, Happiness, NeverCapture, PrereqTech, ArtDefineTag, SpecialistType, SpecialistCount, MinAreaSize, ConquestProb, HurryCostModifier,	TradeRouteRecipientBonus,	TradeRouteTargetBonus,	FinishLandTRTourism,	FinishSeaTRTourism,		Help,										Description,						Civilopedia,								Strategy,									IconAtlas,					PortraitIndex)
SELECT		'BUILDING_RUSSIA_POGOST_1',	BuildingClass,	GoldMaintenance, 10, 							Cost, FaithCost,	EnhancedYieldTech, TechEnhancedTourism, AllowsRangeStrike, Defense,	ExtraCityHitPoints, TrainedFreePromotion,	CitySupplyFlat,	PovertyHappinessChange,	GreatPeopleRateModifier, GreatWorkSlotType, GreatWorkCount, FreshWater, FreeStartEra, Happiness, NeverCapture, PrereqTech, ArtDefineTag, SpecialistType, SpecialistCount, MinAreaSize, ConquestProb, HurryCostModifier,	TradeRouteRecipientBonus+2,	TradeRouteTargetBonus,	FinishLandTRTourism,	FinishSeaTRTourism,		'TXT_KEY_BUILDING_RUSSIA_POGOST_1_HELP',	'TXT_KEY_BUILDING_RUSSIA_POGOST_1',	'TXT_KEY_BUILDING_RUSSIA_POGOST_TEXT',		'TXT_KEY_BUILDING_RUSSIA_POGOST_STRATEGY',	'BUILDING_RUSSIA_ATLAS',	0
FROM Buildings WHERE Type = 'BUILDING_MINT';

INSERT INTO Buildings 	
			(Type,						BuildingClass,	GoldMaintenance, CityConnectionGoldModifier, 	Cost, FaithCost,	EnhancedYieldTech, TechEnhancedTourism, AllowsRangeStrike, Defense,	ExtraCityHitPoints, TrainedFreePromotion,	CitySupplyFlat,	PovertyHappinessChange, GreatPeopleRateModifier, GreatWorkSlotType, GreatWorkCount, FreshWater, FreeStartEra, Happiness, NeverCapture, PrereqTech, ArtDefineTag, SpecialistType, SpecialistCount, MinAreaSize, ConquestProb, HurryCostModifier,	TradeRouteRecipientBonus,	TradeRouteTargetBonus,	FinishLandTRTourism,	FinishSeaTRTourism,		Help,										Description,						Civilopedia,								Strategy,									IconAtlas,					PortraitIndex)
SELECT		'BUILDING_RUSSIA_POGOST_2',	BuildingClass,	GoldMaintenance, 20, 							Cost, FaithCost,	EnhancedYieldTech, TechEnhancedTourism, AllowsRangeStrike, Defense,	ExtraCityHitPoints, TrainedFreePromotion,	CitySupplyFlat,	PovertyHappinessChange,	GreatPeopleRateModifier, GreatWorkSlotType, GreatWorkCount, FreshWater, FreeStartEra, Happiness, NeverCapture, PrereqTech, ArtDefineTag, SpecialistType, SpecialistCount, MinAreaSize, ConquestProb, HurryCostModifier,	TradeRouteRecipientBonus+2,	TradeRouteTargetBonus,	FinishLandTRTourism,	FinishSeaTRTourism,		'TXT_KEY_BUILDING_RUSSIA_POGOST_2_HELP',	'TXT_KEY_BUILDING_RUSSIA_POGOST_2',	'TXT_KEY_BUILDING_RUSSIA_POGOST_TEXT',		'TXT_KEY_BUILDING_RUSSIA_POGOST_STRATEGY',	'BUILDING_RUSSIA2_ATLAS',	0
FROM Buildings WHERE Type = 'BUILDING_MINT';

INSERT INTO Buildings 	
			(Type,						BuildingClass,	GoldMaintenance, CityConnectionGoldModifier, 	Cost, FaithCost,	EnhancedYieldTech, TechEnhancedTourism, AllowsRangeStrike, Defense,	ExtraCityHitPoints, TrainedFreePromotion,	CitySupplyFlat,	PovertyHappinessChange, GreatPeopleRateModifier, GreatWorkSlotType, GreatWorkCount, FreshWater, FreeStartEra, Happiness, NeverCapture, PrereqTech, ArtDefineTag, SpecialistType, SpecialistCount, MinAreaSize, ConquestProb, HurryCostModifier,	TradeRouteRecipientBonus,	TradeRouteTargetBonus,	FinishLandTRTourism,	FinishSeaTRTourism,		Help,										Description,						Civilopedia,								Strategy,									IconAtlas,					PortraitIndex)
SELECT		'BUILDING_RUSSIA_POGOST_3',	BuildingClass,	GoldMaintenance, 30, 							Cost, FaithCost,	EnhancedYieldTech, TechEnhancedTourism, AllowsRangeStrike, Defense,	ExtraCityHitPoints, TrainedFreePromotion,	CitySupplyFlat,	PovertyHappinessChange,	GreatPeopleRateModifier, GreatWorkSlotType, GreatWorkCount, FreshWater, FreeStartEra, Happiness, NeverCapture, PrereqTech, ArtDefineTag, SpecialistType, SpecialistCount, MinAreaSize, ConquestProb, HurryCostModifier,	TradeRouteRecipientBonus+2,	TradeRouteTargetBonus,	FinishLandTRTourism,	FinishSeaTRTourism,		'TXT_KEY_BUILDING_RUSSIA_POGOST_3_HELP',	'TXT_KEY_BUILDING_RUSSIA_POGOST_3',	'TXT_KEY_BUILDING_RUSSIA_POGOST_TEXT',		'TXT_KEY_BUILDING_RUSSIA_POGOST_STRATEGY',	'BUILDING_RUSSIA3_ATLAS',	0
FROM Buildings WHERE Type = 'BUILDING_MINT';
------------------------------	
-- Building_Flavors
------------------------------		
INSERT INTO Building_Flavors 	
			(BuildingType, 					FlavorType,					Flavor)
VALUES		('BUILDING_RUSSIA_POGOST_1',	'FLAVOR_GOLD',				120),
			('BUILDING_RUSSIA_POGOST_1',	'FLAVOR_CULTURE',			60),
			('BUILDING_RUSSIA_POGOST_1',	'FLAVOR_RELIGION',			20),
			('BUILDING_RUSSIA_POGOST_2',	'FLAVOR_GOLD',				50),
			('BUILDING_RUSSIA_POGOST_2',	'FLAVOR_SCIENCE',			5),
			('BUILDING_RUSSIA_POGOST_3',	'FLAVOR_RELIGION',			50);
			
------------------------------	
-- Building_ClassesNeededInCity
------------------------------		
INSERT INTO Building_ClassesNeededInCity 	
		(BuildingType, 				BuildingClassType)
SELECT	'BUILDING_RUSSIA_POGOST_1',	BuildingClassType
FROM Building_ClassesNeededInCity WHERE BuildingType = 'BUILDING_MINT';
------------------------------	
-- Building_YieldChanges
------------------------------		
INSERT INTO Building_YieldChanges 	
			(BuildingType, 					YieldType,			Yield)
VALUES		('BUILDING_RUSSIA_POGOST_1',	'YIELD_CULTURE',	3),
			('BUILDING_RUSSIA_POGOST_1',	'YIELD_GOLD',		2),
			('BUILDING_RUSSIA_POGOST_2',	'YIELD_CULTURE',	3),
			('BUILDING_RUSSIA_POGOST_2',	'YIELD_GOLD',		2),
			('BUILDING_RUSSIA_POGOST_2',	'YIELD_SCIENCE',	2),
			('BUILDING_RUSSIA_POGOST_3',	'YIELD_CULTURE',	3),
			('BUILDING_RUSSIA_POGOST_3',	'YIELD_GOLD',		2),
			('BUILDING_RUSSIA_POGOST_3',	'YIELD_SCIENCE',	2),
			('BUILDING_RUSSIA_POGOST_3',	'YIELD_FAITH',	2);
------------------------------
-- Building_ImprovementYieldChanges
------------------------------		
INSERT INTO Building_ImprovementYieldChanges	
			(BuildingType, 					ImprovementType,					YieldType,		Yield)
VALUES		('BUILDING_RUSSIA_POGOST_1',	'IMPROVEMENT_TRADING_POST', 		'YIELD_GOLD',	1),
			('BUILDING_RUSSIA_POGOST_1',	'IMPROVEMENT_CUSTOMS_HOUSE',		'YIELD_GOLD',	1),
			('BUILDING_RUSSIA_POGOST_1',	'IMPROVEMENT_CUSTOMS_HOUSE_VENICE',	'YIELD_GOLD',	1),
			('BUILDING_RUSSIA_POGOST_1',	'IMPROVEMENT_CELTS_OPPIDUM',		'YIELD_GOLD',	1),
			('BUILDING_RUSSIA_POGOST_2',	'IMPROVEMENT_TRADING_POST', 		'YIELD_GOLD',	1),
			('BUILDING_RUSSIA_POGOST_2',	'IMPROVEMENT_CUSTOMS_HOUSE',		'YIELD_GOLD',	1),
			('BUILDING_RUSSIA_POGOST_2',	'IMPROVEMENT_CUSTOMS_HOUSE_VENICE',	'YIELD_GOLD',	1),
			('BUILDING_RUSSIA_POGOST_2',	'IMPROVEMENT_CELTS_OPPIDUM',		'YIELD_GOLD',	1),
			('BUILDING_RUSSIA_POGOST_3',	'IMPROVEMENT_TRADING_POST', 		'YIELD_GOLD',	1),
			('BUILDING_RUSSIA_POGOST_3',	'IMPROVEMENT_CUSTOMS_HOUSE',		'YIELD_GOLD',	1),
			('BUILDING_RUSSIA_POGOST_3',	'IMPROVEMENT_CUSTOMS_HOUSE_VENICE',	'YIELD_GOLD',	1),
			('BUILDING_RUSSIA_POGOST_3',	'IMPROVEMENT_CELTS_OPPIDUM',		'YIELD_GOLD',	1);
------------------------------	
-- Building_BuildingClassLocalYieldChanges
------------------------------
INSERT INTO Building_BuildingClassLocalYieldChanges 	
			(BuildingType,					BuildingClassType,		YieldType,		YieldChange)
VALUES		('BUILDING_RUSSIA_POGOST_3',	'BUILDINGCLASS_MONASTERY',	'YIELD_FAITH',	2),
			('BUILDING_RUSSIA_POGOST_3',	'BUILDINGCLASS_SHRINE',	'YIELD_FAITH',	2),
			('BUILDING_RUSSIA_POGOST_3',	'BUILDINGCLASS_TEMPLE',	'YIELD_FAITH',	2);
--==========================================================================================================================
--==========================================================================================================================

