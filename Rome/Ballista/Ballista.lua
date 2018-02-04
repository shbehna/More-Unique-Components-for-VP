-- Ballista and Legion
-- Author: adan_eslavo
-- DateCreated: 30/12/2017
--------------------------------------------------------------
local iGeneral = GameInfoTypes.UNIT_GREAT_GENERAL
local iLegatus = GameInfoTypes.PROMOTION_UNIT_ROME_LEGATUS_LEGIONIS_ON_BALLISTA
local iLegatusEffect = GameInfoTypes.PROMOTION_UNIT_ROME_LEGATUS_LEGIONIS_EFFECT
local iPraefectus = GameInfoTypes.PROMOTION_UNIT_ROME_PRAEFECTUS_CASTRORUM_ON_LEGION
local iPraefectusEffect = GameInfoTypes.PROMOTION_UNIT_ROME_PRAEFECTUS_CASTRORUM_EFFECT

function LegatusAndPraefectus(iPlayer)
	local pPlayer = Players[iPlayer];

	for pUnit in pPlayer:Units() do
		if pUnit:IsHasPromotion(iLegatus) or pUnit:IsHasPromotion(iPraefectus) then
			local bInRange = pUnit:IsWithinDistanceOfUnit(iGeneral, 0, true, false)

			if not bInRange then
				bInRange = pUnit:IsAdjacentToUnit(iGeneral, true, false)

				if not bInRange then
					bInRange = pUnit:IsWithinDistanceOfUnit(iGeneral, 2, true, false)
				end
			end

			if pUnit:IsHasPromotion(iLegatus) then
				pUnit:SetHasPromotion(iLegatusEffect, bInRange)
			elseif pUnit:IsHasPromotion(iPraefectus) then
				pUnit:SetHasPromotion(iPraefectusEffect, bInRange)
			end
		end
	end
end

GameEvents.PlayerEndTurnCompleted.Add(LegatusAndPraefectus)