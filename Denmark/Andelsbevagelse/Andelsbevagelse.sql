--==========================================================================================================================	
-- CIVILIZATIONS
--==========================================================================================================================	
--------------------------------	
-- Civilization_BuildingClassOverrides 
--------------------------------		
INSERT INTO Civilization_BuildingClassOverrides 
		(CivilizationType, 			BuildingClassType, 			BuildingType)
VALUES	('CIVILIZATION_DENMARK',	'BUILDINGCLASS_STOCKYARD',	'BUILDING_DENMARK_ANDELSBEVAEGELSE');
--==========================================================================================================================	

--==========================================================================================================================
-- ARTDEFINES
--==========================================================================================================================	
------------------------------
-- IconTextureAtlases
------------------------------
INSERT INTO IconTextureAtlases 
		(Atlas, 							IconSize, 	Filename, 									IconsPerRow, 	IconsPerColumn)
VALUES	('BUILDING_DENMARK_ATLAS', 			256, 		'AndelsbevagelsePicture_256.dds',			1, 				1),
		('BUILDING_DENMARK_ATLAS', 			128, 		'AndelsbevagelsePicture_128.dds',			1, 				1),
		('BUILDING_DENMARK_ATLAS', 			64, 		'AndelsbevagelsePicture_064.dds',			1, 				1),
		('BUILDING_DENMARK_ATLAS', 			45, 		'AndelsbevagelsePicture_045.dds',			1, 				1);
--==========================================================================================================================

--==========================================================================================================================	
-- BUILDINGS
--==========================================================================================================================	
------------------------------
-- Buildings
------------------------------	
INSERT INTO Buildings 	
			(Type,									BuildingClass,	GoldMaintenance, Cost, EnhancedYieldTech, TechEnhancedTourism, AllowsRangeStrike, Defense,	ExtraCityHitPoints, TrainedFreePromotion,	CitySupplyFlat,	DefenseHappinessChange, GreatPeopleRateModifier, GreatWorkSlotType, GreatWorkCount, FreshWater, Cost, FreeStartEra, Happiness, NeverCapture, GoldMaintenance, PrereqTech, ArtDefineTag, SpecialistType, SpecialistCount, MinAreaSize, ConquestProb, HurryCostModifier,	BuildingProductionModifier,	Help,												Description,									Civilopedia,										Strategy,												IconAtlas,					PortraitIndex)
SELECT		'BUILDING_DENMARK_ANDELSBEVAEGELSE', 	BuildingClass,	GoldMaintenance, Cost, EnhancedYieldTech, TechEnhancedTourism, AllowsRangeStrike, Defense,	ExtraCityHitPoints, TrainedFreePromotion,	CitySupplyFlat,	DefenseHappinessChange,	GreatPeopleRateModifier, GreatWorkSlotType, GreatWorkCount, FreshWater, Cost, FreeStartEra, Happiness, NeverCapture, GoldMaintenance, PrereqTech, ArtDefineTag, SpecialistType, SpecialistCount, MinAreaSize, ConquestProb, HurryCostModifier,	10,							'TXT_KEY_BUILDING_DENMARK_ANDELSBEVAEGELSE_HELP',	'TXT_KEY_BUILDING_DENMARK_ANDELSBEVAEGELSE', 	'TXT_KEY_BUILDING_DENMARK_ANDELSBEVAEGELSE_TEXT',	'TXT_KEY_BUILDING_DENMARK_ANDELSBEVAEGELSE_STRATEGY',	'BUILDING_DENMARK_ATLAS',	0
FROM Buildings WHERE Type = 'BUILDING_STOCKYARD';	
------------------------------	
-- Building_Flavors
------------------------------		
INSERT INTO Building_Flavors 	
			(BuildingType, 							FlavorType,				Flavor)
VALUES		('BUILDING_DENMARK_ANDELSBEVAEGELSE',	'FLAVOR_PRODUCTION',	100),
			('BUILDING_DENMARK_ANDELSBEVAEGELSE',	'FLAVOR_GOLD',			10),
			('BUILDING_DENMARK_ANDELSBEVAEGELSE',	'FLAVOR_GROWTH',		100);
------------------------------	
-- Building_ClassesNeededInCity
------------------------------		
INSERT INTO Building_ClassesNeededInCity 	
		(BuildingType, 							BuildingClassType)
SELECT	'BUILDING_DENMARK_ANDELSBEVAEGELSE',	BuildingClassType
FROM Building_ClassesNeededInCity WHERE BuildingType = 'BUILDING_STOCKYARD';
--------------------------------	
-- Building_YieldChanges
--------------------------------
INSERT INTO Building_YieldChanges
			(BuildingType,							YieldType,		Yield)
VALUES		('BUILDING_DENMARK_ANDELSBEVAEGELSE',	'YIELD_FOOD',	5),
		('BUILDING_DENMARK_ANDELSBEVAEGELSE',	'YIELD_PRODUCTION',	3),
		('BUILDING_DENMARK_ANDELSBEVAEGELSE',	'YIELD_GOLD',	3);
------------------------------	
-- Building_YieldModifiers
------------------------------
--INSERT INTO Building_YieldModifiers 	
--			(BuildingType,							YieldType, 		Yield)
--VALUES		('BUILDING_DENMARK_ANDELSBEVAEGELSE',	'YIELD_FOOD',	5);
------------------------------
-- Building_ImprovementYieldChanges
------------------------------
INSERT INTO Building_ImprovementYieldChanges
			(BuildingType, 							ImprovementType, 		YieldType, 			Yield)
VALUES		('BUILDING_DENMARK_ANDELSBEVAEGELSE', 	'IMPROVEMENT_PASTURE',	'YIELD_FOOD', 		3),
			('BUILDING_DENMARK_ANDELSBEVAEGELSE', 	'IMPROVEMENT_PASTURE',	'YIELD_PRODUCTION', 1),
			('BUILDING_DENMARK_ANDELSBEVAEGELSE', 	'IMPROVEMENT_PASTURE',	'YIELD_GOLD', 2),
			('BUILDING_DENMARK_ANDELSBEVAEGELSE', 	'IMPROVEMENT_FARM',		'YIELD_FOOD', 		3);
------------------------------
-- Building_TerrainYieldChanges
------------------------------
INSERT INTO Building_TerrainYieldChanges
			(BuildingType, 							TerrainType, 			YieldType, 			Yield)
VALUES		('BUILDING_DENMARK_ANDELSBEVAEGELSE', 	'TERRAIN_PLAINS',		'YIELD_FOOD', 		1);
------------------------------	
-- Building_ResourceQuantityRequirements
------------------------------
INSERT INTO Building_ResourceQuantityRequirements 	
			(BuildingType,							ResourceType, Cost)
SELECT		'BUILDING_DENMARK_ANDELSBEVAEGELSE', 	ResourceType, 0
FROM Building_ResourceQuantityRequirements WHERE BuildingType = 'BUILDING_STOCKYARD';
--==========================================================================================================================
--==========================================================================================================================


