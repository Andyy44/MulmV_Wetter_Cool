timeNow = -1
weatherType = nil

ESX.RegisterCommand("settime", 'admin', function(xPlayer, args)
    TriggerClientEvent("weather:changeTime", -1, args[1])
    xPlayer.showNotification("Die Zeit wurde auf " .. args[1] .. "Uhr gesetzt.")
    timeNow = args[1]
end, true, {help = "Ändere die Zeit für alle Spieler"})

ESX.RegisterCommand("setweather", 'admin', function(xPlayer, args)
    TriggerClientEvent("weather:changeWeather", -1, args[1])
    xPlayer.showNotification("Das Wetter wurde auf " .. args[1] .. " gesetzt.")
    weatherType = args[1]
end, true, {help = "Ändere das Wetter für alle Spieler"})

-- Wer das liest kann lesen