local QBCore = exports['qb-core']:GetCoreObject()

-- Menu to give job items
RegisterCommand('bikergangmenu', function()
    local elements = {
        {label = 'Get Job Items', value = 'get_items'}
    }

    QBCore.Functions.Notify('Biker Gang Menu', 'primary', 5000)

    QBCore.UI.Menu.Open('default', GetCurrentResourceName(), 'bikergang_menu', {
        title    = 'Biker Gang Menu',
        align    = 'top-left',
        elements = elements
    }, function(data, menu)
        if data.current.value == 'get_items' then
            TriggerServerEvent('qb_biker_gang:giveJobItems')
        end
    end, function(data, menu)
        menu.close()
    end)
end, false)
