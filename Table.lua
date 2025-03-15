script_key = "keyhere"

getgenv().Inprint = {
	["Combat"] = {
		["Triggerbot"] = {
			["Enabled"] = true,
			["Safety"]  = true,
			["CamSync"] = true, -- ! If this is on, the triggerbot will target the same person as the camlock
			["Target"] = false,

			["Settings"] = {
				["MinDelay"] = 0.14,
				["MaxDelay"] = 0.17,
				["Mode"] = "Hold" -- ? "Hold", "Toggle"
			},
			["BodyPartMode"] = "Inprint", -- ? "Full", "Inprint"
		},
		["Camlock"] = {
			["Enabled"] = true,
			["FOV Size"] = 100,
			["Mode"] = "Hold", -- ? "Hold, "Toggle" (why the fuck would anyone ever do this)
			["Easing"] = {
				["Style"] = "easeInSine", -- ? for documentation: https://easings.net
				["Smoothness"] = 0.12,
					--[[ 
					!! CASE SENSITIVE !!

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
					["Enabled"] = false,
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
					-- TODO: Add ["MODE"], make it so the bullets can go towards the current target or just edit the spread normally
					["Multiplier"] = 0.2,
				},
				["[TacticalShotgun]"] = {
					["Enabled"] = true,
					-- TODO: Add ["MODE"]
					["Multiplier"] = 0.2,
				},
				["[Shotgun]"] = {
					["Enabled"] = true,
					-- TODO: Add ["MODE"]
					["Multiplier"] = 0.2,
				},
				["[DrumShotgun]"] = {
					["Enabled"] = true,
					-- TODO: Add ["MODE"]
					["Multiplier"] = 0.2,
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
			["Weapon Check"] = true, -- ! Added
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
			["Enabled"] = false,
			["Fill"] = {
				["Fill Color"] = Color3.new(1, 0, 0),
				["Fill Transparency"] = 0.9,
				-- TODO: Add more settings
			},
			["Outline"] = {
				["Outline Color"] = Color3.new(1, 1, 1),
				["Outline Transparency"] = 0
				-- TODO: Add more settings
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
		["Anti Fling"] = true,
		["DisableSeats"] = true, -- ! This turns seats off while you're macroing
		["Mode"] = "Hold" -- ? "Hold", "Toggle"
	},

	["Binds"] = {
		["Triggerbot Toggle"] = Enum.KeyCode.J,
		["Triggerbot Target"] = Enum.KeyCode.P,
		["Camlock Toggle"] = Enum.KeyCode.J,
		["Camlock Target"] = Enum.KeyCode.C,
		["Hide Visuals"] = Enum.KeyCode.L,
		["Hitbox Expander"] = Enum.KeyCode.Z,
		["Spread Modifier"] = Enum.KeyCode.H,
		["Macro"] = Enum.KeyCode.X,
	}

}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/c9fc08a4bb34d9173de7ee532dadb612.lua"))()

