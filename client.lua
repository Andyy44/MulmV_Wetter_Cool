RegisterNetEvent('weather:changeTime')
AddEventHandler('weather:changeTime', function(time)
    SetClockTime(time)
end)

RegisterNetEvent('weather:changeWeather')
AddEventHandler('weather:changeWeather', function(type)
    SetWeatherOwnedByNetwork(false)
    SetWeatherTypeNow(type)
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded',function(xPlayer)
    ESX.TriggerServerCallback('esx_example:test', function(timeNow, weatherType)
        if timeNow >= 0 then
            TriggerEvent("weather:changeTime", timeNow)
        end
        if weatherType ~= nil then
            TriggerEvent("weather:changeWeather", weatherType)
        end
    end)
end)