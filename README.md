# al-metaldetector

Preview of the script: https://www.youtube.com/watch?v=Uk-hqCwVUxI

A simple metal detector script, with configurable items


Make sure you add to your items.lua (qb-core/shared/items.lua)

    ["metaldetector"] = {
        ["name"] = "metaldetector",					
        ["label"] = "Metal Detector",					
        ["weight"] = 200,		
        ["type"] = "item",		
        ["image"] = "metaldetector.png",				
        ["unique"] = false, 	
        ["useable"] = true,	
        ["shouldClose"] = true,	
        ["combinable"] = nil,	
        ["description"] = "*beep*, *beep*"},
    },

Make sure to also add metaldetector.png to your inventory script's image folder.

This is also my first script so please share some ideas, you would like to see for this
