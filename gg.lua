local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        wait(5)
        
        local screenGui = Instance.new("ScreenGui")
        screenGui.Name = "FakeBSOD"
        screenGui.Parent = player.PlayerGui
        screenGui.IgnoreGuiInset = true
        screenGui.DisplayOrder = 999 
        
        local background = Instance.new("Frame")
        background.Size = UDim2.new(1, 0, 1, 0)
        background.BackgroundColor3 = Color3.fromRGB(0, 43, 128)
        background.Parent = screenGui
       
        local errorText = Instance.new("TextLabel")
        errorText.Size = UDim2.new(0.8, 0, 0.8, 0)
        errorText.Position = UDim2.new(0.1, 0, 0.1, 0)
        errorText.BackgroundTransparency = 1
        errorText.TextColor3 = Color3.new(1, 1, 1)
        errorText.Font = Enum.Font.Code
        errorText.TextSize = 16
        errorText.TextWrapped = true
        errorText.Text = [[
A problem has been detected...
        errorText.Parent = background
        
        local clickDetector = Instance.new("TextButton")
        clickDetector.Size = UDim2.new(0.1, 0, 0.1, 0)
        clickDetector.Position = UDim2.new(0, 0, 0.9, 0) 
        clickDetector.BackgroundTransparency = 1
        clickDetector.Text = ""
        clickDetector.Parent = background
        
        local clickCount = 0
        clickDetector.MouseButton1Click:Connect(function()
            clickCount += 1
            if clickCount >= 5 then
                screenGui:Destroy()
            end
        end)
        
        wait(50)
        screenGui:Destroy()
    end)
end)
