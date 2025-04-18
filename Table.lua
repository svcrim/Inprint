script_key=""

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
    ["Target"] = true,
    ["Box Sync"] = true,
    ["Mode"] = "Toggle", -- ? Hold, Toggle
    ["MinDelay"] = 0.03,
    ["MaxDelay"] = 0.07,
}

getgenv().SilentAim = {
    ["Enabled"] = true,
    ["Prediction"] = 0, -- ? Keep it on 0 for normal DH
    ["FOV Size"] = 100,
    ["Mode"] = "Target", -- ? Target, Regular
    ["BodyPartMode"] = "Full", -- ? Full, Partial
    ["OverrideYAxis"] = "Full", -- ? Full, Partial
    ["FOV Mode"] = "BoxFOV" -- ? Legit, Unlegit, BoxFOV
}

getgenv().Aimbot = {
    ["Enabled"] = true,
    ["Auto"] = true,
    ["Prediction"] = 0,
    ["FOV Size"] = 200,
    ["Mode"] = "Hold", -- ? Hold, Toggle

    ["Easing"] = {
        ["Style"] = "easeInSine", -- ? All easing styles: https://easings.net
        ["Smoothness"] = 0.12,
        ["Lerp"] = {
            ["Enabled"] = true,
            ["LerpMin"] = 0.027,
            ["LerpMax"] = 0.032
        },
        ["UseCustom"] = false,
        ["Custom"] = function(t)
            return 2 ^ (10 * (t - 1))
        end
    }
}

getgenv().Blatant = {
    ["Spread Modifier"] = {
        ["[Double-Barrel SG]"] = {
            ["Enabled"] = true,
            ["Multiplier"] = {
                ["Min"] = 0.4,
                ["Max"] = 0.4
            }
        },
        ["[TacticalShotgun]"] = {
            ["Enabled"] = true,
            ["Multiplier"] = {
                ["Min"] = 0.4,
                ["Max"] = 0.4
            }
        },
        ["[Shotgun]"] = {
            ["Enabled"] = true,
            ["Multiplier"] = {
                ["Min"] = 0.4,
                ["Max"] = 0.4
            }
        },
        ["[Drum-Shotgun]"] = {
            ["Enabled"] = true,
            ["Multiplier"] = {
                ["Min"] = 0.4,
                ["Max"] = 0.4
            }
        }
    },

    ["Hitbox Expander"] = {
        ["Enabled"] = false,
        ["Multiplier"] = {
            ["X"] = 1,
            ["Y"] = 1,
            ["Z"] = 1
        }
    }
}

getgenv().Safety = {
    ["Friend Check"] = false,
    ["Crew Check"] = true,
    ["Knocked Check"] = true,
    ["Grabbed Check"] = true,
    ["Wall Check"] = true,
    ["Weapon Check"] = true
}

getgenv().Visuals = {
    ["Aimbot FOV"] = {
        ["Visible"] = false,
        ["Thickness"] = 0.25,
        ["Transparency"] = 1,
        ["FOV Color"] = Color3.new(1, 0, 0)
    },
    ["Silent FOV"] = {
        ["Visible"] = false,
        ["Thickness"] = 0.25,
        ["Transparency"] = 1,
        ["FOV Color"] = Color3.new(1, 0, 0),
        ["Box FOV"] = {
            ["Width"] = 2.5,
            ["Height"] = 5
        }
    },
    ["Hitbox Expander"] = {
        ["Enabled"] = false,
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
        ["Enabled"] = false,
        ["Speed"] = 100
    },
    ["Jump Power"] = {
        ["Enabled"] = false,
        ["Power"] = 25
    },
    ["NoJumpCoolDown"] = {
        ["Enabled"] = false
    }
}

getgenv().Macro = {
    ["Enabled"] = false,
    ["Mode"] = "Hold" -- ? Hold, Toggle
}

getgenv().Keybinds = {
    ["Lockon"] = "M",
    ["Unlock"] = "Z",
    ["Triggerbot Toggle"] = "L",
    ["Silent Aim Toggle"] = "B",
    ["Aimbot Toggle"] = "P",
    ["Hitbox Expander"] = "Z",
    ["Spread Modifier"] = "H",
    ["Hide Visuals"] = "L",
    ["Macro"] = "X",
    ["Speed Toggle"] = "K",
    ["Jump Toggle"] = "U"
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/c9fc08a4bb34d9173de7ee532dadb612.lua"))()
