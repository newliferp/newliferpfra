function drawTxt(x,y ,width,height,scale, text, r,g,b,a)
    SetTextFont(4)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(2, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end

function drawRct(x,y,width,height,r,g,b,a)
	DrawRect(x + width/2, y + height/2, width, height, r, g, b, a)
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		if(IsPedInAnyVehicle(GetPlayerPed(-1), false))then
			local kmh = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false)) * 3.6
			drawRct(0.11, 0.932, 0.046,0.03,0,0,0,100) 	-- UI:panel kmh
			drawTxt(0.61, 1.42, 1.0,1.0,0.64 , "~w~" .. math.ceil(kmh), 255, 255, 255, 255)  -- INT: kmh
			drawTxt(0.633, 1.432, 1.0,1.0,0.4, "~w~ km/h", 255, 255, 255, 255)	-- TXT: kmh
		end
	end
end)
