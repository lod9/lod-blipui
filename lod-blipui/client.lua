ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)


local display = false

local market = {
  [1] = {title="Market", colour=2, id=52, x=-50.72, y=-1754.38, z=29.42, np = nil},
  [2] = {title="Market", colour=2, id=52, x=2557.458, y=382.282, np = nil},
  [3] = {title="Market", colour=2, id=52, x=-3038.939, y=585.954, np = nil},
  [4] = {title="Market", colour=2, id=52, x=-3241.927, y=1001.462, np = nil},
  [5] = {title="Market", colour=2, id=52, x=547.431, y=2671.710, z=42.156, np = nil},
  [6] = {title="Market", colour=2, id=52, x=1961.464, y=3740.672, z=32.343, np = nil},
  [7] = {title="Market", colour=2, id=52, x=2678.916, y=3280.671, z=55.241, np = nil},
  [8] = {title="Market", colour=2, id=52, x=1729.563, y=6414.126, z=36.037, np = nil},
  [9] = {title="Market", colour=2, id=52, x=26.18, y=-1347.37, z=29.5, np = nil},
  [10] = {title="Market", colour=2, id=52, x=-48.519, y=-1757.514, z=29.421, np = nil},
  [11] = {title="Market", colour=2, id=52, x=-707.501, y=-914.260, z=19.215, np = nil},
  [12] = {title="Market", colour=2, id=52, x=-1820.523, y=792.518, z=138.118, np = nil},
  [13] = {title="Market", colour=2, id=52, x=1698.388, y=4924.404, z=42.063, np = nil},
  [14] = {title="Market", colour=2, id=52, x=373.74, y=325.96, z=103.57, np = nil},
  [15] = {title="Market", colour=2, id=52, x=-676.58,  y=5835.15, z=17.3314, np = nil} 
}
local banka = {
  [1] = {title="Banka", colour=11, id=108, x = 150.266, y = -1040.203, z = 29.374, np = nil},
  [2] = {title="Banka", colour=11, id=108, x = -1212.980, y = -330.841, z = 37.787, np = nil},
  [3] = {title="Banka", colour=11, id=108, x = -2962.582, y = 482.627, z = 15.703, np = nil},
  [4] = {title="Banka", colour=11, id=108, x = -112.202, y = 6469.295, z = 31.626, np = nil},
  [5] = {title="Banka", colour=11, id=108, x = 314.187, y = -278.621, z = 54.170, np = nil},
  [6] = {title="Banka", colour=11, id=108, x = -351.534, y = -49.529, z = 49.042, np = nil},
  [7] = {title="Banka", colour=11, id=108, x = 241.727, y = 220.706, z = 106.286, np = nil},
  [8] = {title="Banka", colour=11, id=108, x = 1175.0643310547, y = 2706.6435546875, z = 38.094036102295, np = nil}
}
local berber = {
  [2] = {title="Berber", colour=1, id=71, x = 136.826,   y = -1708.373, z = 28.291, np = nil},
  [3] = {title="Berber", colour=1, id=71, x = -1282.604, y = -1116.757, z = 5.990, np = nil},
  [4] = {title="Berber", colour=1, id=71, x = 1931.513,  y = 3729.671,  z = 31.844, np = nil},
  [5] = {title="Berber", colour=1, id=71, x = 1212.840,  y = -472.921,  z = 65.208, np = nil},
  [6] = {title="Berber", colour=1, id=71, x = -32.885,   y = -152.319,  z = 56.076, np = nil},
  [7] = {title="Berber", colour=1, id=71, x = -278.077,  y = 6228.463,  z = 30.695, np = nil}
}
local dovme = {
  [1] = {title="Dövmeci", colour=1, id=75, x = 1322.6, y = -1651.9, z = 51.2, np = nil},
  [2] = {title="Dövmeci", colour=1, id=75, x = -1153.6, y = -1425.6, z = 4.9, np = nil},
  [3] = {title="Dövmeci", colour=1, id=75, x = 322.1, y = 180.4, z = 103.5, np = nil},
  [4] = {title="Dövmeci", colour=1, id=75, x = -3170.0, y = 1075.0, z =  20.8, np = nil},
  [5] = {title="Dövmeci", colour=1, id=75, x = 1864.6, y = 3747.7, z =  33.0, np = nil},
  [6] = {title="Dövmeci", colour=1, id=75, x = -293.7, y = 6200.0, z =  31.4, np = nil}
}
local kiyafet = {
  [1] = {title="Kıyafetçi", colour=47, id=73, x = 72.3, y = -1399.1, z = 28.4, np = nil},
    [2] = {title="Kıyafetçi", colour=47, id=73, x = -703.8, y = -152.3, z = 36.4, np = nil},
    [3] = {title="Kıyafetçi", colour=47, id=73, x = -167.9, y = -299.0, z = 38.7, np = nil},
    [4] = {title="Kıyafetçi", colour=47, id=73, x = 428.7, y = -800.1, z = 28.5, np = nil},
    [5] = {title="Kıyafetçi", colour=47, id=73, x =-829.4, y = -1073.7, z = 10.3, np = nil},
    [6] = {title="Kıyafetçi", colour=47, id=73, x = -1447.8, y = -242.5, z = 48.8, np = nil},
    [7] = {title="Kıyafetçi", colour=47, id=73, x = 11.6, y =  6514.2, z = 30.9, np = nil},
    [8] = {title="Kıyafetçi", colour=47, id=73, x = 123.6, y = -219.4, z = 53.6, np = nil},
    [9] = {title="Kıyafetçi", colour=47, id=73, x = 1696.3, y = 4829.3, z = 41.1, np = nil},
    [10] = {title="Kıyafetçi", colour=47, id=73, x =618.1, y = 2759.6, z = 41.1, np = nil},
    [11] = {title="Kıyafetçi", colour=47, id=73, x =1190.6, y = 2713.4, z = 37.2, np = nil},
    [12] = {title="Kıyafetçi", colour=47, id=73, x =-1193.4, y = -772.3, z = 16.3, np = nil},
    [13] = {title="Kıyafetçi", colour=47, id=73, x =-3172.5, y = 1048.1, z = 19.9, np = nil},
    [14] = {title="Kıyafetçi", colour=47, id=73, x =-1108.4, y = 2708.9, z = 18.1, np = nil}
}
local garaj = {
  [1] = {title="Garaj", colour=3, id=357, x = 211.8094329834, y = -934.98626708984, z = 24.275938034058, np = nil},
      [2] = {title="Garaj", colour=3, id=357, x = -129.56, y = 1005.71, z = 235.73, np = nil},
      [3] = {title="Garaj", colour=3, id=357, x = -189.3, y = -1288.06, z = 31.3, np = nil},
      [4] = {title="Garaj", colour=3, id=357, x = 306.21, y = -2023.75, z = 20.33, np = nil},
      [5] = {title="Garaj", colour=3, id=357, x = -1122.05, y = -1614.05, z = 4.38, np = nil},
      [6] = {title="Garaj", colour=3, id=357, x = 273.67422485352, y = -344.15573120117, z = 44.919834136963, np = nil},
      [7] = {title="Garaj", colour=3, id=357, x = 959.33, y = -129.83, z = 74.37, np = nil},
      [8] = {title="Garaj", colour=3, id=357, x = -1918.34, y = 2053.78, z = 140.74, np = nil},
      [9] = {title="Garaj", colour=29, id=357, x = -1803.8967285156, y = -341.45928955078, z = 43.986347198486, np = nil},
      [10] = {title="Garaj", colour=29, id=357, x = 1733.94, y = 3711.99, z = 34.15, np = nil},
      [11] = {title="Garaj", colour=29, id=357, x = 52.56, y = 6487.27, z = 31.43, np = nil},
      [12] = {title="Garaj", colour=29, id=357, x = 366.0082, y = 291.6496, z = 103.40, np = nil},
      [13] = {title="Garaj", colour=29, id=357, x = -110.393, y = -1600.76, z = 31.670, np = nil},
      [14] = {title="Garaj", colour=29, id=357, x = 102.4567, y = -1956.12, z = 20.749, np = nil},
      [15] = {title="Garaj", colour=29, id=357, x = -240.09, y = 609.52, z = 187.55, np = nil},
      [16] = {title="Garaj", colour=29, id=357, x = 1383.76, y = -739.37, z = 67.2, np = nil},
      [17] = {title="Garaj", colour=29, id=357, x = 453.815, y = -979.06, z = 25.6998, np = nil},
      [18] = {title="Garaj", colour=29, id=357, x = 280.864, y = -608.93, z = 43.0888, np = nil},
      [19] = {title="Garaj", colour=29, id=357, x = 1411.164, y = 1117.955, z = 114.83, np = nil},
      [20] = {title="Garaj", colour=29, id=357, x = -370.934, y = -110.912, z = 38.680, np = nil},
      [21] = {title="Garaj", colour=29, id=357, x = -11.1526, y = -1099.69, z = 26.672, np = nil},
      [22] = {title="Garaj", colour=29, id=357, x = -1525.44, y = 82.77, z = 56.55, np = nil},
      [23] = {title="Garaj", colour=29, id=357, x = 2567.93, y = 4652.38, z = 34.08, np = nil}

}
local mekanik = {
  [1] = {title="Mekanik 1", colour=1, id=446, x = 731.07531738281, y = -1089.4586181641, z = 21.71880531311, np = nil},
  [2] = {title="Mekanik 2", colour=3, id=446, x = -338.88, y = -136.84, z = 239.01, np = nil},
  [3] = {title="Mekanik 3", colour=21, id=446, x = 943.520, y = -980.62, z = 39.4998, np = nil}
}

RegisterCommand("blips", function(source, args)
    SetDisplay(not display)
end)

function SetDisplay(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "ui",
        status = bool,
    })
end

function blipolustur(x, y, sprite, colour, scale, text)
  local blip = AddBlipForCoord(x, y)
  SetBlipSprite(blip, sprite)
  SetBlipColour(blip, colour)
  SetBlipAsShortRange(blip, true)
  SetBlipScale(blip, scale)
  BeginTextCommandSetBlipName("STRING")
  AddTextComponentString(text)
  EndTextCommandSetBlipName(blip)
  table.insert(blipshs, blip)
end

blipshs = {}

RegisterNUICallback("marketac", function(data)
  for k, v in pairs(market) do
    blipolustur(v.x,v.y, 52, 24, 0.6, 'Market')
  end
end)


RegisterNUICallback("marketkapat", function(data)
  for k, v in pairs(blipshs) do
    RemoveBlip(v)
  end
end)
-- ###########################################
RegisterNUICallback("bankac", function(data)
  for k, v in pairs(banka) do
    blipolustur(v.x,v.y, 108, 11, 0.7, 'Banka')
  end
end)


RegisterNUICallback("bankapat", function(data)
  for k, v in pairs(blipshs) do
    RemoveBlip(v)
  end
end)
-- ###########################################
RegisterNUICallback("berberac", function(data)
  for k, v in pairs(berber) do
    blipolustur(v.x,v.y, 71, 1, 0.5, 'Berber')
  end
end)


RegisterNUICallback("berberkapat", function(data)
  for k, v in pairs(blipshs) do
    RemoveBlip(v)
  end
end)
-- ###########################################
RegisterNUICallback("dovmeac", function(data)
  for k, v in pairs(dovme) do
    blipolustur(v.x,v.y, 75, 1, 0.5, 'Dövmeci')
  end
end)


RegisterNUICallback("dovmekapat", function(data)
  for k, v in pairs(blipshs) do
    RemoveBlip(v)
  end
end)
-- ###########################################
RegisterNUICallback("kiyafetac", function(data)
  for k, v in pairs(kiyafet) do
    blipolustur(v.x,v.y, 73, 48, 0.5, 'Kıyafetci')
  end
end)


RegisterNUICallback("kiyafetkapat", function(data)
  for k, v in pairs(blipshs) do
    RemoveBlip(v)
  end
end)
-- ###########################################
RegisterNUICallback("garajac", function(data)
  for k, v in pairs(garaj) do
    blipolustur(v.x,v.y, 357, 26, 0.5, 'Garaj')
  end
end)


RegisterNUICallback("garajkapat", function(data)
  for k, v in pairs(blipshs) do
    RemoveBlip(v)
  end
end)
-- ###########################################
RegisterNUICallback("mekaniksac", function(data)
  for k, v in pairs(mekanik) do
    blipolustur(v.x,v.y, 446, 83, 0.5, 'Mekanik')
  end
end)


RegisterNUICallback("mekanikskapat", function(data)
  for k, v in pairs(blipshs) do
    RemoveBlip(v)
  end
end)
-- ###########################################
RegisterNUICallback('close', function()
  SetNuiFocus(false, false)
end)

