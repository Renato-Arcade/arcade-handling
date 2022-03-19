-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- HANDLING
-----------------------------------------------------------------------------------------------------------------------------------------
local handling = {
    "fMass",
    "fInitialDragCoeff",
    "fDriveBiasFront",
    "nInitialDriveGears",
    "fInitialDriveForce",
    "fDriveInertia",
    "fClutchChangeRateScaleUpShift",
    "fClutchChangeRateScaleDownShift",
    "fInitialDriveMaxFlatVel",
    "fBrakeForce",
    "fHandBrakeForce",
    "fSteeringLock",
    "fTractionCurveMax",
    "fTractionCurveMin",
    "fLowSpeedTractionLossMult",
    "fTractionLossMult",
    "fSuspensionRaise",
    "fAntiRollBarForce",
    "fRollCentreHeightFront",
    "fCollisionDamageMult",
    "fWeaponDamageMult",
    "fDeformationDamageMult",
    "fEngineDamageMult",
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- HANDLINGEVENT
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("gameEventTriggered", function (name, args)
    if name == "CEventNetworkPlayerEnteredVehicle" then
        print("Script de handling desenvolvido por Arcade Shop: https://discord.gg/k52z2kZPFX | Renato#0069")
        local ped = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(ped)
        local vehicleModify = arcade["handlings"][GetEntityModel(vehicle)]
        
        if DoesEntityExist(vehicle) and vehicleModify then
            for k,v in pairs(vehicleModify) do
                if k == "fGravity" then
                    if vehicleModify["fGravity"] < 9 then
                        vehicleModify["fGravity"] = 9
                    end

                    if vehicleModify["fGravity"] > 30 then
                        vehicleModify["fGravity"] = 30
                    end

                    SetVehicleGravityAmount(vehicle,vehicleModify["fGravity"])
                end

                if k == "fAudio" then
                    if vehicleModify["fAudio"] then
                        ForceVehicleEngineAudio(vehicle,vehicleModify["fAudio"])
                    end
                end

                if k ~= "fGravity" and k ~= "fAudio" then
                    SetVehicleHandlingFloat(vehicle,"CHandlingData",k,v)
                end
            end
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HANDLINGPICKUP
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("handling",function(source,args,rawCommand)
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped)
    local infos = ""
    if DoesEntityExist(vehicle) then
        infos = "["..GetEntityModel(vehicle).."] = {\n['fAudio'] = false,\n['fGravity'] = "..string.sub(GetVehicleGravityAmount(vehicle), 1, 4)..","

        for k,v in pairs(handling) do
            local handlingInfo = string.sub(GetVehicleHandlingFloat(vehicle,"CHandlingData",v), 1, 6)
            if k == #handling then
                infos = infos.."\n['"..v.."'] = "..handlingInfo..",\n},"
            else
                infos = infos.."\n['"..v.."'] = "..handlingInfo..","
            end
        end
        vRP.prompt("Handling do Veículo:",infos)
    end
end)