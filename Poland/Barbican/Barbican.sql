--==========================================================================================================================	
-- CIVILIZATIONS
--==========================================================================================================================	
--------------------------------	
-- Civilization_BuildingClassOverrides 
--------------------------------		
INSERT INTO Civilization_BuildingClassOverrides 
		(CivilizationType, 		BuildingClassType, 		BuildingType)
VALUES	('CIVILIZATION_POLAND',	'BUILDINGCLASS_CASTLE',	'BUILDING_POLAND_BARBICAN'),
		('CIVILIZATION_POLAND',	'BUILDINGCLASS_ARMORY',	null);
--==========================================================================================================================	

--==========================================================================================================================
-- ARTDEFINES
--==========================================================================================================================	
------------------------------
-- IconTextureAtlases
------------------------------
INSERT INTO IconTextureAtlases 
		(Atlas, 							IconSize, 	Filename, 							IconsPerRow, 	IconsPerColumn)
VALUES	('BUILDING_POLAND_ATLAS', 			256, 		'BarbicanPicture_256.dds',			1, 				1),
		('BUILDING_POLAND_ATLAS', 			128, 		'BarbicanPicture_128.dds',			1, 				1),
		('BUILDING_POLAND_ATLAS', 			64, 		'BarbicanPicture_064.dds',			1, 				1),
		('BUILDING_POLAND_ATLAS', 			45, 		'BarbicanPicture_045.dds',			1, 				1);
--==========================================================================================================================	

--==========================================================================================================================	
-- BUILDINGS
--==========================================================================================================================	
------------------------------
-- Buildings
------------------------------	
INSERT INTO Buildings 	
			(Type,						BuildingClass,	GoldMaintenance, Cost,		FaithCost,	EnhancedYieldTech, TechEnhancedTourism, AllowsRangeStrike, Defense,		RangedStrikeModifier, 	ExtraCityHitPoints,		TrainedFreePromotion,	CitySupplyFlat,		CitySupplyModifier, DefenseHappinessChange,		GreatPeopleRateModifier, GreatWorkSlotType, GreatWorkCount, FreshWater, FreeStartEra, Happiness, NeverCapture, PrereqTech,		ArtDefineTag, SpecialistType, SpecialistCount, MinAreaSize, ConquestProb, HurryCostModifier, DisplayPosition,	Help,										Description,						Civilopedia,								Strategy,										IconAtlas,					PortraitIndex)
SELECT		'BUILDING_POLAND_BARBICAN', BuildingClass,	GoldMaintenance, Cost+100,	FaithCost,	EnhancedYieldTech, TechEnhancedTourism, AllowsRangeStrike, Defense+500,	RangedStrikeModifier+25, ExtraCityHitPoints+25,	TrainedFreePromotion,	CitySupplyFlat+2,	CitySupplyModifier, DefenseHappinessChange-50,	GreatPeopleRateModifier, GreatWorkSlotType, GreatWorkCount, FreshWater, FreeStartEra, Happiness, NeverCapture, 'TECH_STEEL',	ArtDefineTag, SpecialistType, SpecialistCount, MinAreaSize, ConquestProb, HurryCostModifier, DisplayPosition,	'TXT_KEY_BUILDING_POLAND_BARBICAN_HELP',	'TXT_KEY_BUILDING_POLAND_BARBICAN', 'TXT_KEY_BUILDING_POLAND_BARBICAN_TEXT',	'TXT_KEY_BUILDING_POLAND_BARBICAN_STRATEGY',	'BUILDING_POLAND_ATLAS',	0
FROM Buildings WHERE Type = 'BUILDING_CASTLE';	
------------------------------	
-- Building_Flavors
------------------------------		
INSERT INTO Building_Flavors 	
			(BuildingType, 					FlavorType,					Flavor)
VALUES		('BUILDING_POLAND_BARBICAN',	'FLAVOR_MILITARY_TRAINING', 40),
			('BUILDING_POLAND_BARBICAN',	'FLAVOR_CITY_DEFENSE',		50),
			('BUILDING_POLAND_BARBICAN',	'FLAVOR_CULTURE',			10),
			('BUILDING_POLAND_BARBICAN',	'FLAVOR_SCIENCE',			10),
			('BUILDING_POLAND_BARBICAN',	'FLAVOR_RANGED',			30);			
------------------------------	
-- Building_ClassesNeededInCity
------------------------------		
INSERT INTO Building_ClassesNeededInCity 	
			(BuildingType, 				BuildingClassType)
SELECT		'BUILDING_POLAND_BARBICAN',	BuildingClassType
FROM Building_ClassesNeededInCity WHERE BuildingType = 'BUILDING_CASTLE';
------------------------------	
-- Building_Free_XP
------------------------------		
INSERT INTO Building_DomainFreeExperiences 	
			(BuildingType, 					DomainType, 	Experience)
VALUES		('BUILDING_POLAND_BARBICAN',	'DOMAIN_LAND',	25),
			('BUILDING_POLAND_BARBICAN',	'DOMAIN_SEA',	25),
			('BUILDING_POLAND_BARBICAN',	'DOMAIN_AIR',	25);
------------------------------	
-- Building_YieldChanges
------------------------------		
INSERT INTO Building_YieldChanges 	
			(BuildingType, 					YieldType,			Yield)
VALUES		('BUILDING_POLAND_BARBICAN',	'YIELD_CULTURE',	3),
			('BUILDING_POLAND_BARBICAN',	'YIELD_SCIENCE',	3);
------------------------------	
-- Building_ImprovementYieldChanges
------------------------------		
INSERT INTO Building_ImprovementYieldChanges 	
			(BuildingType, 				ImprovementType,	YieldType,	Yield)
SELECT		'BUILDING_POLAND_BARBICAN',	ImprovementType,	YieldType,	Yield
FROM Building_ImprovementYieldChanges WHERE BuildingType = 'BUILDING_CASTLE';
--==========================================================================================================================	

--==========================================================================================================================	
-- PROMOTIONS
--==========================================================================================================================	
------------------------------
-- UnitPromotions
------------------------------
INSERT INTO UnitPromotions 
			(Type, 								Description, 								Help, 											Sound, 				RangedAttackModifier,	MovesChange,	AttackMod,	DefenseMod, ExperiencePercent,	IgnoreZOC,	LostWithUpgrade,	CannotBeChosen, PortraitIndex, 	IconAtlas, 			PediaType, 		PediaEntry)
VALUES		('PROMOTION_UNIT_POLAND_BARBICAN',	'TXT_KEY_PROMOTION_UNIT_POLAND_BARBICAN',	'TXT_KEY_PROMOTION_UNIT_POLAND_BARBICAN_HELP',	'AS2D_IF_LEVELUP',	33,						0,				0,			0,			0,					0,			0,					1, 				55, 			'PROMOTION_ATLAS', 	'PEDIA_RANGED', 'TXT_KEY_PROMOTION_UNIT_POLAND_BARBICAN');
--==========================================================================================================================
--==========================================================================================================================

