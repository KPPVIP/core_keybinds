Config = {

--TO MAKE MENU WORK WHEN PRESSED YOU NEED TO ADD TRIGGER LISTENERS IN CLIENT/MAIN.LUA PASTE THEM UNCOMMENTED AND UNDER (--REGISTER YOUR TRIGGERS)

--COMMON USES IN FUNCTION
-- ExecuteCommand(command)
-- openMenu(menuName)

--RegisterNUICallback(
--    (triggerName),  -- Write the trigger name here example "OpenInformation"
--    function()
--      
--    This is what the button does when clicked in this example it executes command
--        ExecuteCommand('info')

--    end
--)





OpenKeyBindsCommand = 'keybinds',
Keybinds = { -- Available function for keybinds (EVERY COMMAND USED NEEDS TO BE HERE FOR IT TO NOT GLITCH)
    {label = "OPEN GENERAL", command = "general"},
    {label = "OPEN DISPATCH", command = "dispatch"},
    {label = "OPEN WEAPON MENU", command = "weapon"},
    {label = "OPEN JOBS", command = "jobs"},
    {label = "OPEN POLICE MENU", command = "policemenu"},
    {label = "OPEN VEHICLE CONTROL", command = "vehcontrol"}
},

DefaultKeybinds = { -- Keybinds that will be set by default
    ['F10'] = 'dispach',
    ['F11'] = 'jobs'
},

BlockKeys = { -- Block keys to be used in keybinds
   -- ['F2'] = true
},

Menus = {

    ['general'] = {
        Label = 'GENERAL', -- Label
        OpenCommand = 'general', -- Open Command if you dont want to open with command leave '' (IF U WANT TO OPEN WITH KEY ADD TO KEYBINDS)
        OpenLocations = nil, -- Open Locations if you dont want to open in location leave {} otherwise {vector3(x,y,z), ...}  
        JobWhitelist = {}, -- Jobs that can open this menu leave {} if you want everybody to open
        Fill = true, -- Fills remaining squares that do nothing
        CloseOnClick = true, -- Closes menu when clicked
        OnlyVehicle = false, -- Can only be opened in vehicle
        Boxes = {

            {
                label = 'MY JOBS', -- Label of box
                icon = 'fas fa-briefcase', -- Icon from fontawsome.com
                jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                trigger = 'openJobs' -- This will be used to identify in client script what to do after press
            },
            {
                label = 'MY ID', -- Label of box
                icon = 'fas fa-id-card', -- Icon from fontawsome.com
                jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                trigger = 'openID' -- This will be used to identify in client script what to do after press
            },
            {
                label = 'ANIMATIONS', -- Label of box
                icon = 'fas fa-walking', -- Icon from fontawsome.com
                jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                trigger = 'openAnim' -- This will be used to identify in client script what to do after press
            },
            {
                label = 'SETTINGS', -- Label of box
                icon = 'fas fa-cog', -- Icon from fontawsome.com
                jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                trigger = 'openSettings' -- This will be used to identify in client script what to do after press
            },
             {
                label = 'VEHICLE CONTROL', -- Label of box
                icon = 'fas fa-car', -- Icon from fontawsome.com
                jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                trigger = 'openCarControl' -- This will be used to identify in client script what to do after press
            }

        }


    },

     ['mission'] = {
        Label = 'MISSION', -- Label
        OpenCommand = '', -- Open Command if you dont want to open with command leave '' (IF U WANT TO OPEN WITH KEY ADD TO KEYBINDS)
        OpenLocations = {{coords = vector3(1251.3848876953,-515.60424804688,69.349075317), text = "[~r~E~w~] Open", marker = {markerSize = 1.3, markerColor = {255,255,255}, markerType = 27}, blip =  {useBlip = true, blipSprite = 126, blipColor = 64, blipText = "Mission"} }}, -- Open Locations if you dont want to open in location leave {} otherwise {vector3(x,y,z), ...}  
        JobWhitelist = {}, -- Jobs that can open this menu leave {} if you want everybody to open
        Fill = false, -- Fills remaining squares that do nothing
        CloseOnClick = true, -- Closes menu when clicked
        OnlyVehicle = false, -- Can only be opened in vehicle
        Boxes = {

            {
                label = 'START MISSION', -- Label of box
                icon = 'fas fa-play', -- Icon from fontawsome.com
                jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                trigger = 'startMission' -- This will be used to identify in client script what to do after press
            },
            {
                label = 'DELIVER GOODS', -- Label of box
                icon = 'fas fa-cannabis', -- Icon from fontawsome.com
                jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                trigger = 'deliverGoods' -- This will be used to identify in client script what to do after press
            },
            {
                label = 'HISTORY', -- Label of box
                icon = 'fas fa-clipboard', -- Icon from fontawsome.com
                jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                trigger = 'openHistory' -- This will be used to identify in client script what to do after press
            }
           

        }


    },


     ['vehcontrol'] = {
        Label = 'VEHICLE CONTROL', -- Label
        OpenCommand = 'vehcontrol', -- Open Command if you dont want to open with command leave '' (IF U WANT TO OPEN WITH KEY ADD TO KEYBINDS)
        OpenLocations = nil,
        JobWhitelist = {}, -- Jobs that can open this menu leave {} if you want everybody to open
        Fill = true, -- Fills remaining squares that do nothing
        CloseOnClick = false, -- Closes menu when clicked
        OnlyVehicle = true, -- Can only be opened in vehicle
        Boxes = {

            {
                label = 'PUSH TO START', -- Label of box
                icon = 'fas fa-power-off', -- Icon from fontawsome.com
                jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                trigger = 'startEngine' -- This will be used to identify in client script what to do after press
            },
            {
                label = 'FRONT LEFT', -- Label of box
                icon = 'fas fa-car-side', -- Icon from fontawsome.com
                jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                trigger = 'frontLeft' -- This will be used to identify in client script what to do after press
            },
             {
                label = 'FRONT RIGHT', -- Label of box
                icon = 'fas fa-car-side', -- Icon from fontawsome.com
                jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                trigger = 'frontRight' -- This will be used to identify in client script what to do after press
            },
            {
                label = 'BACK LEFT', -- Label of box
                icon = 'fas fa-car-side', -- Icon from fontawsome.com
                jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                trigger = 'backLeft' -- This will be used to identify in client script what to do after press
            },
            {
                label = 'BACK RIGHT', -- Label of box
                icon = 'fas fa-car-side', -- Icon from fontawsome.com
                jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                trigger = 'backRight' -- This will be used to identify in client script what to do after press
            },
             {
                label = 'HOOD', -- Label of box
                icon = 'fas fa-car-side', -- Icon from fontawsome.com
                jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                trigger = 'hood' -- This will be used to identify in client script what to do after press
            },
             {
                label = 'TRUNK', -- Label of box
                icon = 'fas fa-car-side', -- Icon from fontawsome.com
                jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                trigger = 'trunk' -- This will be used to identify in client script what to do after press
            }


        }


    }

   


},

Text = {

    ['not_in_vehicle'] = 'You must be in a vehicle',
    ['key_not_usable'] = 'Key %s cant be used',
    ['no_such_menu'] = 'There is no such menu',
    ['not_whitelisted'] = 'Not whitelisted'

}

}



function SendTextMessage(msg)

        ESX.ShowNotification(msg)
        --SetNotificationTextEntry('STRING')
        --AddTextComponentString(msg)
        --DrawNotification(0,1)

        --EXAMPLE USED IN VIDEO
        --exports['mythic_notify']:SendAlert('inform', msg)

end
  --[[  
██╗░░░██╗██████╗░██╗░░░░░███████╗░█████╗░██╗░░██╗░██████╗
██║░░░██║██╔══██╗██║░░░░░██╔════╝██╔══██╗██║░██╔╝██╔════╝
██║░░░██║██████╔╝██║░░░░░█████╗░░███████║█████═╝░╚█████╗░
██║░░░██║██╔═══╝░██║░░░░░██╔══╝░░██╔══██║██╔═██╗░░╚═══██╗
╚██████╔╝██║░░░░░███████╗███████╗██║░░██║██║░╚██╗██████╔╝
░╚═════╝░╚═╝░░░░░╚══════╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░
█████████████████████████████████████████████████████████
discord.gg/6CRxjqZJFB ]]--