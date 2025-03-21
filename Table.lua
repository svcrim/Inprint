script_key = "keyhere"

getgenv().Inprint = {
	["Combat"] = {
		["Triggerbot"] = {
			["Enabled"] = true,
			["Mode"] = "Target", -- ? "Target", "Auto"
			["BodyPartMode"] = "Inprint", -- ? "Full", "Inprint"

			["Settings"] = {
				["Safety"]  = true,
				["CamSync"] = true, -- ! If this is on, the triggerbot will target the same person as the camlock and will do everything camlock does
				["Mode"] = "Hold" -- ? "Hold", "Toggle" 
			},

			["MinDelay"] = 0.14,
			["MaxDelay"] = 0.17,
	
		},
		["Camlock"] = {
			["Enabled"] = true,
			["Auto"] = true, -- ! If this is on, it'll automatically target the closest person to your cursor when you click the toggle keybind
			["Settings"] = {
				["FOV Size"] = 100,
				["Mode"] = "Hold", -- ? "Hold, "Toggle"
			},
			["Easing"] = {
				["Style"] = "easeInSine", -- ? for documentation: https://easings.net
				["Smoothness"] = 0.12,
					--[[ 
					-- ! CASE SENSITIVE

					The styles that you can use:
					-- * Quad:  	easeInQuad, easeOutQuad, easeInOutQuad,
					-- * Cubic: 	easeInCubic, easeOutCubic, easeInOutCubic,
					-- * Quart: 	easeInQuart, easeOutQuart, easeInOutQuart,
					-- * Quint: 	easeInQuint, easeOutQuint, easeInOutQuint,
					-- * Sine:		easeInSine, easeOutSine, easeInOutSine,
					-- * Circular:	easeInCirc, easeOutCirc, easeInOutCirc,
					-- * Back:		easeInBack, easeOutBack, easeInOutBack,
					-- * Elastic	easeInElastic, easeOutElastic, easeInOutElastic,
					-- * Expo: 		easeInExpo, easeOutExpo, easeInOutExpo,
					-- * Bounce:	easeOutBounce, easeInBounce, easeInOutBounce
					]]--

				["Lerp"] = {
					["Enabled"] = false, -- ! If this is on, it'll override all of the settings
					["LerpMin"] = 0.005,
					["LerpMax"] = 0.010
				},

				["UseCustom"] = false, -- ! If this is enabled, the function below will be used instead of our Easing Styles, for more information: www.githublinkhere.com
				["Custom"] = function(t)
					return 2 ^ (10 * (t - 1)) -- * This is just an example of the basic "Exponential" easing style
				end
			}
		},
		["Blatant"] = {
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
				["Mode"] = "CamTarget", -- ? "CamTarget", "TBTarget", "All"
				["Multiplier"] = {
					["X"] = 0.9,
					["Y"] = 1,
					["Z"] = 0.5
				}
			}
		},
		["Safety Measures"] = {
			["Friend Check"] = true,
			["Crew Check"] = true,
			["Knocked Check"] = true,
			["Grabbed Check"] = true,
			["Wall Check"] = true,
			["Weapon Check"] = true,
		}
	},

	["Visuals"] = {
		["Aimbot FOV"] = {
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
				["Fill Transparency"] = 0.9,
			},
			["Outline"] = {
				["Outline Color"] = Color3.new(1, 1, 1),
				["Outline Transparency"] = 0
			}
		},
		["Misc"] = {
			["Toggles"] = true, -- ! Show a list of the toggles on the side of your screen. e.g: Triggerbot: ON
			["Debug Print"] = true, -- ! debug print to the console (may slow down some things)
			["Spread Visualizer"] = { -- ! Doesn't work very well
				["Enabled"] = true,
				["Beam"] = {
					["Enabled"] = true,
					["Color"] = ColorSequence.new(Color3.fromRGB(255, 0, 0)),
					["Height"] = 0.15,
					["Width"] = 0.15
				},
				["Circle"] = {
					["Transparency"] = 0.5,
					["Color"] = Color3.fromRGB(255, 0, 0)
				}
			}
		}
	},

	["Macro"] = {
		["Enabled"] = true,
		["Mode"] = "Hold" -- ? "Hold", "Toggle"
	},

	["Binds"] = {
		["Triggerbot Toggle"] = "J",
		["Triggerbot Target"] = "P",
	  --_______________________________________--
		["Camlock Toggle"] = "J",
		["Camlock Target"] = "C",
	  --____________________________________--
		["Hitbox Expander"] = "Z",
		["Spread Modifier"] = "H",
	  --_____________________________________--
		["Hide Visuals"] = "L",
		["Macro"] = "X"
	}

}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/c9fc08a4bb34d9173de7ee532dadb612.lua"))()
