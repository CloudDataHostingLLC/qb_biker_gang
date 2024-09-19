local QBCore = exports['qb-core']:GetCoreObject()

-- Define job ranks
local bikerRanks = {
    'prospect',
    'member',
    'enforcer',
    'vicepresident',
    'president'
}

-- Add job for new players (default to prospect)
RegisterServerEvent('qb_biker_gang:setJob')
AddEventHandler('qb_biker_gang:setJob', function(playerId, jobGrade)
    local Player = QBCore.Functions.GetPlayer(playerId)
    if Player then
        if not jobGrade then jobGrade = 0 end
        Player.Functions.SetJob('bikergang', jobGrade)
    end
end)

-- Grant items based on rank
RegisterServerEvent('qb_biker_gang:giveJobItems')
AddEventHandler('qb_biker_gang:giveJobItems', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.PlayerData.job.name == 'bikergang' then
        if Player.PlayerData.job.grade.name == 'prospect' then
            exports.ox_inventory:AddItem(source, 'weapon_knife', 1)
        elseif Player.PlayerData.job.grade.name == 'member' then
            exports.ox_inventory:AddItem(source, 'weapon_pistol', 1)
        elseif Player.PlayerData.job.grade.name == 'enforcer' then
            exports.ox_inventory:AddItem(source, 'weapon_bat', 1)
        elseif Player.PlayerData.job.grade.name == 'vicepresident' then
            exports.ox_inventory:AddItem(source, 'weapon_smg', 1)
        elseif Player.PlayerData.job.grade.name == 'president' then
            exports.ox_inventory:AddItem(source, 'weapon_assaultrifle', 1)
        end
    end
end)
