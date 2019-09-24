local function AQTrack(self, event, ...)
    local questIndex, questId = ...
    if not IsQuestComplete(questId) then
        AddQuestWatch(questIndex)
    end
end

local AQTEvt = CreateFrame("FRAME")
AQTEvt:RegisterEvent("QUEST_ACCEPTED")
AQTEvt:SetScript("OnEvent", AQTrack)