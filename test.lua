
local args = {
    [1] = {
        [1] = {
            [1] = "Camera_Shake",
            [2] = false
        },
        [2] = {
            [1] = "Blur",
            [2] = true
        },
        [3] = {
            [1] = "Character_Tags",
            [2] = true
        },
        [4] = {
            [1] = "Damage_Indicator",
            [2] = true
        },
        [5] = {
            [1] = "Hit_Effects",
            [2] = true
        },
        [6] = {
            [1] = "Music",
            [2] = true
        },
        [7] = {
            [1] = "Low_GFX",
            [2] = false
        },
        [8] = {
            [1] = "Impact_Frames",
            [2] = true
        },
        [9] = {
            [1] = "Voicelines",
            [2] = true
        },
        [10] = {
            [1] = "Armor_Indicator",
            [2] = true
        },
        [11] = {
            [1] = "Stun_Indicator",
            [2] = true
        },
        [12] = {
            [1] = "Sprint_Toggle",
            [2] = workspace
        },
        [13] = {
            [1] = "Mastery_Auras",
            [2] = true
        },
        [14] = {
            [1] = "Auras_Others",
            [2] = true
        },
        [15] = {
            [1] = "Variation_Icons",
            [2] = true
        },
        [16] = {
            [1] = "Awakening",
            [2] = "G"
        },
        [17] = {
            [1] = "Block",
            [2] = "F"
        },
        [18] = {
            [1] = "Cinematic",
            [2] = "RightControl"
        },
        [19] = {
            [1] = "Dash",
            [2] = "Q"
        },
        [20] = {
            [1] = "Emote",
            [2] = "E"
        },
        [21] = {
            [1] = "Rush",
            [2] = "X"
        },
        [22] = {
            [1] = "Shiftlock",
            [2] = "LeftControl"
        },
        [23] = {
            [1] = "Skill1",
            [2] = "One"
        },
        [24] = {
            [1] = "Skill2",
            [2] = "Two"
        },
        [25] = {
            [1] = "Skill3",
            [2] = "Three"
        },
        [26] = {
            [1] = "Skill4",
            [2] = "Four"
        },
        [27] = {
            [1] = "Sprint",
            [2] = "LeftShift"
        },
        [28] = {
            [1] = "Evasive",
            [2] = "R"
        },
        [29] = {
            [1] = "Ultimate",
            [2] = "T"
        },
        [30] = {
            [1] = "Uptilt",
            [2] = "MouseButton2"
        },
        [31] = {
            [1] = "Utility",
            [2] = "C"
        }
    }
}

game:GetService("ReplicatedStorage").Remotes.Settings:FireServer(unpack(args))

