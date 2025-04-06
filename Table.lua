script_key = ""

getgenv().Inprint = {
    ["Intro"] = true,
    ["Panic"] = false,
    ["FPS"] = {
        ["Unlock FPS"] = true,
        ["FPS Cap"] = 999
    }
}

getgenv().Triggerbot = {
    ["Enabled"] = true,
    ["Settings"] = {
        ["Target"] = true,
        ["Mode"] = "Hold" -- ? Hold, Toggle
    },
    ["MinDelay"] = 0.14,
    ["MaxDelay"] = 0.17
}

getgenv().SilentAim = {
    ["Enabled"] = true,
    ["Anti Curve"] = true,
    ["Prediction"] = 0, -- ? Keep it on 0 for normal DH
    ["Settings"] = {
        ["FOV Size"] = 100,
        ["Mode"] = "Target", -- ? Target, Regular
        ["BodyPartMode"] = "Full", -- ? Full, Partial
        ["OverrideYAxis"] = "Full" -- ? Full, Partial
    }
}

getgenv().Aimbot = {
    ["Enabled"] = true,
    ["Auto"] = true,
    ["Prediction"] = 0,
    ["Settings"] = {
        ["FOV Size"] = 100,
        ["Mode"] = "Hold" -- ? Hold, Toggle
    },
    ["Easing"] = {
        ["Style"] = "easeInSine", -- ? All easing styles: https://easings.net
        ["Smoothness"] = 0.12,
        ["Lerp"] = {
            ["Enabled"] = false,
            ["LerpMin"] = 0.005,
            ["LerpMax"] = 0.010
        },
        ["UseCustom"] = false,
        ["Custom"] = function(t)
            return 2 ^ (10 * (t - 1))
        end
    }
}

getgenv().Blatant = {

    ["Hood Customs"] = {
        ["Forcehit"] = false,
    },

    ["RapidFire"] = {
        ["Enabled"] = true,
        ["Factor"] = 100,
    },

    ["Spread Modifier"] = {
        ["[Double-Barrel SG]"] = {
            ["Enabled"] = true,
            ["Multiplier"] = {
                ["Min"] = 0.2,
                ["Max"] = 0.4
            }
        },
        ["[TacticalShotgun]"] = {
            ["Enabled"] = true,
            ["Multiplier"] = {
                ["Min"] = 0.2,
                ["Max"] = 0.4
            }
        },
        ["[Shotgun]"] = {
            ["Enabled"] = true,
            ["Multiplier"] = {
                ["Min"] = 0.2,
                ["Max"] = 0.4
            }
        },
        ["[Drum-Shotgun]"] = {
            ["Enabled"] = true,
            ["Multiplier"] = {
                ["Min"] = 0.2,
                ["Max"] = 0.4
            }
        }
    },

    ["Hitbox Expander"] = {
        ["Enabled"] = true,
        ["Mode"] = "Target", -- ? Target, All
        ["Multiplier"] = {
            ["X"] = 0.9,
            ["Y"] = 1,
            ["Z"] = 0.5
        }
    }
}

getgenv().Safety = {
    ["Friend Check"] = true,
    ["Crew Check"] = true,
    ["Knocked Check"] = true,
    ["Grabbed Check"] = true,
    ["Wall Check"] = true,
    ["Weapon Check"] = true
}

getgenv().Visuals = {
    ["Aimbot FOV"] = {
        ["Enabled"] = true,
        ["Filled"] = false,
        ["Sides"] = 64,
        ["Thickness"] = 0.25,
        ["Transparency"] = 0.5,
        ["FOV Color"] = Color3.new(1, 0, 0)
    },
    ["Silent FOV"] = {
        ["Enabled"] = true,
        ["Filled"] = false,
        ["Sides"] = 64,
        ["Thickness"] = 0.25,
        ["Transparency"] = 0.5,
        ["FOV Color"] = Color3.new(1, 0, 0)
    },
    ["Hitbox Expander"] = {
        ["Enabled"] = true,
        ["Fill"] = {
            ["Fill Color"] = Color3.new(1, 0, 0),
            ["Fill Transparency"] = 0.9
        },
        ["Outline"] = {
            ["Outline Color"] = Color3.new(1, 1, 1),
            ["Outline Transparency"] = 0
        }
    },
    ["Misc"] = {
        ["Toggles"] = true,
        ["Debug Mode"] = true, -- ? Debug Prints and Debug Visuals
        ["Memory Spoofer"] = {
            ["Enabled"] = true,
            ["Min"] = 1654,
            ["Max"] = 1774
        }
    } 
}

getgenv().Movement = {
    ["WalkSpeed"] = {
        ["Enabled"] = true,
        ["Speed"] = 100
    },
    ["Jump Power"] = {
        ["Enabled"] = true,
        ["Power"] = 25
    },
    ["NoJumpCoolDown"] = {
        ["Enabled"] = true
    }
}

getgenv().Macro = {
    ["Enabled"] = true,
    ["Mode"] = "Hold" -- ? Hold, Toggle
}

getgenv().Keybinds = {
    ["Lockon"] = "C",
    ["Unlock"] = "Z",
    ["Triggerbot Toggle"] = "J",
    ["Silent Aim Toggle"] = "B",
    ["Aimbot Toggle"] = "J",
    ["Hitbox Expander"] = "Z",
    ["Spread Modifier"] = "H",
    ["Hide Visuals"] = "L",
    ["Macro"] = "X",
    ["Speed Toggle"] = "K",
    ["Jump Toggle"] = "U"
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/c9fc08a4bb34d9173de7ee532dadb612.lua"))()
