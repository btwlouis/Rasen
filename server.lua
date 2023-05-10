
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("rasen:pay")
AddEventHandler("rasen:pay", function(points)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    
    if points < 0 then
	-- ban player or log it
	print('rasen: ' .. xPlayer.identifier .. ' attempted to exploit the rasen script!')
	return
    end

    if points > 10000 then
	print('rasen: ' .. xPlayer.identifier .. ' probably attempted to exploit the rasen script!')
	return		
    end
		
    xPlayer.addMoney(points * 10)
end)
