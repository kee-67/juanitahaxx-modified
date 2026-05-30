local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/sametexe001/juanitahaxx/refs/heads/main/Library.lua"))()

-- EXAMPLE
do
    Window = Library:Window({Name = "juanitahaxx free release"})
    local Watermark = Window:Watermark({Name = "juanitahaxx"})
    local KeybindList = Window:KeybindList()

    do -- Window
        local CombatPage = Window:Page({Name = "combat"})
        local MiscPage = Window:Page({Name = "misc"})
        local VisualsPage = Window:Page({Name = "visuals"})
        local VisualsPage = Window:Page({Name = "players"})

        do -- Combat Page
            local LeftSection = CombatPage:Section({Name = "Left", Side = 1})
            local RightSection = CombatPage:Section({Name = "Right", Side = 2})

            do -- Section left
                LeftSection:Toggle({
                    Name = "Auto Parry",
                    Flag = "AutoParry",
                    Default = false,
                    Callback = function(v)
                        print(v)
                    end
                })

                LeftSection:Button({
                    Name = "Execute",
                    Callback = function()
                        print("Clicked")
                    end
                })

                LeftSection:Slider({
                    Name = "Walkspeed",
                    Flag = "walkspeed",
                    Min = 0,
                    Max = 100,
                    Default = 16,
                    Decimals = 1,
                    Suffix = "%",
                    Callback = function(value)
                
                    end
                })

                LeftSection:Dropdown({
                    Name = "Target",
                    Flag = "target",
                    Items = {"Head", "Torso", "Random", "foot", "penile"},
                    Default = "Head",
                    Multi = false,
                    Callback = function(value)
                
                    end
                })
            end

            do -- Right Section
                RightSection:Button({
                    Name = "post notif",
                    Callback = function()
                        Library:Notification("This is a notification lmfao", 5, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255)))
                    end
                })

                RightSection:Label({Name = "default laberl"})

                RightSection:Label({Name = "colorpicker"}):Colorpicker({
                    Name = "Colorpicker",
                    Flag = "color",
                    Default = Color3.fromRGB(255, 255, 255),
                    Callback = function(value, alpha)
                        print(value, alpha)
                    end
                })

                RightSection:Label({Name = "Keybind"}):Keybind({
                    Name = "Keybind",
                    Flag = "keybind",
                    Default = Enum.KeyCode.E,
                    Mode = "Toggle",
                    Callback = function(value)
                        print(value)
                    end
                })

                RightSection:Label({Name = "second keybind"}):Keybind({
                    Name = "Keybind",
                    Flag = "keybind2",
                    Default = Enum.KeyCode.F,
                    Mode = "Toggle",
                    Callback = function(value)
                        print(value)
                    end
                })

                RightSection:Label({Name = "third keybind"}):Keybind({
                    Name = "Keybind",
                    Flag = "keybind3",
                    Default = Enum.KeyCode.R,
                    Mode = "Toggle",
                    Callback = function(value)
                        print(value)
                    end
                })

                RightSection:Textbox({
                    Name = "Textbox",
                    Flag = "textbox",
                    Default = "default",
                    Placeholder = "placeholder",
                    Numeric = false,
                    Finished = false,
                    Callback = function(value)
                        print(value)
                    end
                })
            end
        end
    end

    do -- Watermark
        local FpsText = Watermark:Add("FPS: ")
        local DateTimeText = Watermark:Add("")

        local FPS = 0
        local FrameCount = 0
        local Elapsed = 0

        Library:Connect(game:GetService("RunService").RenderStepped, function(DeltaT)
            FrameCount += 1
            Elapsed += DeltaT

            if Elapsed >= 1 then
                FPS = math.floor(FrameCount / Elapsed)

                FpsText:SetText("FPS: " .. FPS)

                FrameCount = 0
                Elapsed = 0
            end

            DateTimeText:SetText(os.date("%H:%M:%S %d/%m/%Y"))
        end)
    end
end

Window:Init()
