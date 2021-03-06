-- Variables

local HubID = "570534229763555359"
local Product = "Self Check-In"
local MainModel = script.Parent
local myPod = require(4460787902)

-- Services

local http = game:GetService("HttpService")
local myPod = require(4460787902)

-- Whitelist Checker

function httpe()
    local s = pcall(function()
        game:GetService('HttpService'):GetAsync('http://www.google.com/robots.txt')
    end)
    return s
end

if httpe() == false then
    print("Http requests is not on. (Error: 101)")
    MainModel:Destroy()
end

local PlaceId = game.PlaceId
local PlaceInfo = game:GetService("MarketplaceService"):GetProductInfo(PlaceId)
local gameOwner = nil
if game.CreatorType == Enum.CreatorType.Group then
    gameOwner = game:GetService("GroupService"):GetGroupInfoAsync(PlaceInfo.Creator.CreatorTargetId).Owner.Id
else
    gameOwner = game.CreatorId
end

myPod:GetAsync(HubID, Product, gameOwner, function(Success, Value)
    if Success == false then
        print("Player does not own SCI. (Error: 102)")
        MainModel:Destroy()
    end
end)

-- ADD YOUR CODE FROM THIS POINT

local AdminPanel = Instance.new("ScreenGui")
AdminPanel.Name = "AdminPanel"
AdminPanel.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local Main = Instance.new("ImageLabel")
Main.Name = "Main"
Main.Size = UDim2.new(0.2985, 0, 0.3736215, 0)
Main.SizeConstraint = Enum.SizeConstraint.RelativeXX
Main.ClipsDescendants = true
Main.BackgroundTransparency = 1
Main.Position = UDim2.new(0.3505682, 0, 0.1672682, 0)
Main.BorderSizePixel = 0
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.ScaleType = Enum.ScaleType.Fit
Main.Image = "http://www.roblox.com/asset/?id=8314847709"
Main.Parent = AdminPanel

local CloseBtn = Instance.new("TextButton")
CloseBtn.Name = "CloseBtn"
CloseBtn.Size = UDim2.new(0.0521366, 0, 0.0392453, 0)
CloseBtn.BackgroundTransparency = 1
CloseBtn.Position = UDim2.new(0.9059786, 0, 0.0264993, 0)
CloseBtn.BorderSizePixel = 0
CloseBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn.FontSize = Enum.FontSize.Size14
CloseBtn.TextTransparency = 1
CloseBtn.TextSize = 14
CloseBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
CloseBtn.Text = " "
CloseBtn.TextWrap = true
CloseBtn.Font = Enum.Font.SourceSans
CloseBtn.TextWrapped = true
CloseBtn.TextScaled = true
CloseBtn.Parent = Main

local SelfCheckIn = Instance.new("Frame")
SelfCheckIn.Name = "SelfCheckIn"
SelfCheckIn.Visible = false
SelfCheckIn.Size = UDim2.new(1, 0, 1, 0)
SelfCheckIn.BackgroundTransparency = 1
SelfCheckIn.Position = UDim2.new(0, 0, 1, 0)
SelfCheckIn.BorderSizePixel = 0
SelfCheckIn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelfCheckIn.Parent = Main

local SelectionFrame = Instance.new("Frame")
SelectionFrame.Name = "SelectionFrame"
SelectionFrame.Size = UDim2.new(1, 0, 1, 0)
SelectionFrame.BackgroundTransparency = 1
SelectionFrame.BorderSizePixel = 0
SelectionFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelectionFrame.Parent = SelfCheckIn

local FlightInfo = Instance.new("TextLabel")
FlightInfo.Name = "FlightInfo"
FlightInfo.LayoutOrder = 1
FlightInfo.ZIndex = 3
FlightInfo.Size = UDim2.new(0.4439315, 0, 0.0427112, 0)
FlightInfo.BorderColor3 = Color3.fromRGB(27, 42, 53)
FlightInfo.BackgroundTransparency = 1
FlightInfo.Position = UDim2.new(0.1106876, 0, 0.2865503, 0)
FlightInfo.BorderSizePixel = 0
FlightInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FlightInfo.FontSize = Enum.FontSize.Size32
FlightInfo.TextSize = 30
FlightInfo.TextColor3 = Color3.fromRGB(136, 136, 136)
FlightInfo.Text = "Flight Info"
FlightInfo.TextWrap = true
FlightInfo.Font = Enum.Font.GothamSemibold
FlightInfo.TextWrapped = true
FlightInfo.TextXAlignment = Enum.TextXAlignment.Left
FlightInfo.TextScaled = true
FlightInfo.Parent = SelectionFrame

local WhiteBG = Instance.new("Frame")
WhiteBG.Name = "WhiteBG"
WhiteBG.Size = UDim2.new(0.8738809, 0, 0.7014167, 0)
WhiteBG.Position = UDim2.new(0.0598441, 0, 0.2302543, 0)
WhiteBG.BorderSizePixel = 0
WhiteBG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WhiteBG.Parent = SelectionFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0.015, 0)
UICorner.Parent = WhiteBG

local Lines = Instance.new("Frame")
Lines.Name = "Lines"
Lines.ZIndex = 4
Lines.Size = UDim2.new(0.813, 0, 0.001, 0)
Lines.Position = UDim2.new(0.0929788, 0, 0.3463277, 0)
Lines.BorderSizePixel = 0
Lines.BackgroundColor3 = Color3.fromRGB(219, 219, 220)
Lines.Parent = SelectionFrame

local FlightInfoFrame = Instance.new("Frame")
FlightInfoFrame.Name = "FlightInfoFrame"
FlightInfoFrame.Size = UDim2.new(0.2378644, 0, 0.0433157, 0)
FlightInfoFrame.Position = UDim2.new(0.6447965, 0, 0.2859458, 0)
FlightInfoFrame.BorderSizePixel = 0
FlightInfoFrame.BackgroundColor3 = Color3.fromRGB(114, 186, 175)
FlightInfoFrame.Parent = SelectionFrame

local UICorner1 = Instance.new("UICorner")
UICorner1.CornerRadius = UDim.new(0.3, 0)
UICorner1.Parent = FlightInfoFrame

local FlightInfoBtn = Instance.new("TextButton")
FlightInfoBtn.Name = "FlightInfoBtn"
FlightInfoBtn.Size = UDim2.new(0.2378646, 0, 0.0433157, 0)
FlightInfoBtn.BackgroundTransparency = 1
FlightInfoBtn.Position = UDim2.new(0.6447965, 0, 0.2859458, 0)
FlightInfoBtn.BorderSizePixel = 0
FlightInfoBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FlightInfoBtn.FontSize = Enum.FontSize.Size14
FlightInfoBtn.TextSize = 14
FlightInfoBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
FlightInfoBtn.Text = " "
FlightInfoBtn.TextWrap = true
FlightInfoBtn.Font = Enum.Font.SourceSans
FlightInfoBtn.TextWrapped = true
FlightInfoBtn.TextScaled = true
FlightInfoBtn.Parent = SelectionFrame

local FlightInfoTxt = Instance.new("TextLabel")
FlightInfoTxt.Name = "FlightInfoTxt"
FlightInfoTxt.LayoutOrder = 1
FlightInfoTxt.ZIndex = 3
FlightInfoTxt.Size = UDim2.new(0.159773, 0, 0.0320303, 0)
FlightInfoTxt.BorderColor3 = Color3.fromRGB(27, 42, 53)
FlightInfoTxt.BackgroundTransparency = 1
FlightInfoTxt.Position = UDim2.new(0.6831133, 0, 0.2907344, 0)
FlightInfoTxt.BorderSizePixel = 0
FlightInfoTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FlightInfoTxt.FontSize = Enum.FontSize.Size32
FlightInfoTxt.TextSize = 30
FlightInfoTxt.TextColor3 = Color3.fromRGB(255, 255, 255)
FlightInfoTxt.Text = "Configure"
FlightInfoTxt.TextWrap = true
FlightInfoTxt.Font = Enum.Font.SourceSans
FlightInfoTxt.TextWrapped = true
FlightInfoTxt.TextScaled = true
FlightInfoTxt.Parent = SelectionFrame

local SeatsAvailable = Instance.new("TextLabel")
SeatsAvailable.Name = "SeatsAvailable"
SeatsAvailable.LayoutOrder = 1
SeatsAvailable.ZIndex = 3
SeatsAvailable.Size = UDim2.new(0.4439315, 0, 0.037532, 0)
SeatsAvailable.BorderColor3 = Color3.fromRGB(27, 42, 53)
SeatsAvailable.BackgroundTransparency = 1
SeatsAvailable.Position = UDim2.new(0.1106876, 0, 0.3688376, 0)
SeatsAvailable.BorderSizePixel = 0
SeatsAvailable.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SeatsAvailable.FontSize = Enum.FontSize.Size32
SeatsAvailable.TextSize = 30
SeatsAvailable.TextColor3 = Color3.fromRGB(136, 136, 136)
SeatsAvailable.Text = "Seats Available:"
SeatsAvailable.TextWrap = true
SeatsAvailable.Font = Enum.Font.GothamSemibold
SeatsAvailable.TextWrapped = true
SeatsAvailable.TextXAlignment = Enum.TextXAlignment.Left
SeatsAvailable.TextScaled = true
SeatsAvailable.Parent = SelectionFrame

local ABg = Instance.new("Frame")
ABg.Name = "ABg"
ABg.Size = UDim2.new(0.1728435, 0, 0.0438768, 0)
ABg.Position = UDim2.new(0.0986241, 0, 0.4799299, 0)
ABg.BorderSizePixel = 0
ABg.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
ABg.Parent = SelectionFrame

local UICorner2 = Instance.new("UICorner")
UICorner2.CornerRadius = UDim.new(0.2, 0)
UICorner2.Parent = ABg

local Class1Seats = Instance.new("TextBox")
Class1Seats.Name = "Class1Seats"
Class1Seats.LayoutOrder = 1
Class1Seats.Selectable = false
Class1Seats.ZIndex = 3
Class1Seats.Size = UDim2.new(0.1677609, 0, 0.0438768, 0)
Class1Seats.BorderColor3 = Color3.fromRGB(27, 42, 53)
Class1Seats.BackgroundTransparency = 1
Class1Seats.Position = UDim2.new(0.0984711, 0, 0.4785352, 0)
Class1Seats.Active = false
Class1Seats.BorderSizePixel = 0
Class1Seats.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Class1Seats.FontSize = Enum.FontSize.Size32
Class1Seats.TextSize = 30
Class1Seats.TextWrapped = true
Class1Seats.TextWrap = true
Class1Seats.TextColor3 = Color3.fromRGB(255, 255, 255)
Class1Seats.Text = "0"
Class1Seats.Font = Enum.Font.SourceSans
Class1Seats.TextScaled = true
Class1Seats.Parent = SelectionFrame

local Class2Seats = Instance.new("TextBox")
Class2Seats.Name = "Class2Seats"
Class2Seats.LayoutOrder = 1
Class2Seats.Selectable = false
Class2Seats.ZIndex = 3
Class2Seats.Size = UDim2.new(0.1677609, 0, 0.0438768, 0)
Class2Seats.BorderColor3 = Color3.fromRGB(27, 42, 53)
Class2Seats.BackgroundTransparency = 1
Class2Seats.Position = UDim2.new(0.3131308, 0, 0.4785352, 0)
Class2Seats.Active = false
Class2Seats.BorderSizePixel = 0
Class2Seats.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Class2Seats.FontSize = Enum.FontSize.Size32
Class2Seats.TextSize = 30
Class2Seats.TextWrapped = true
Class2Seats.TextWrap = true
Class2Seats.TextColor3 = Color3.fromRGB(255, 255, 255)
Class2Seats.Text = "0"
Class2Seats.Font = Enum.Font.SourceSans
Class2Seats.TextScaled = true
Class2Seats.Parent = SelectionFrame

local ABg1 = Instance.new("Frame")
ABg1.Name = "ABg"
ABg1.Size = UDim2.new(0.1728435, 0, 0.0438768, 0)
ABg1.Position = UDim2.new(0.3080482, 0, 0.4785352, 0)
ABg1.BorderSizePixel = 0
ABg1.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
ABg1.Parent = SelectionFrame

local UICorner3 = Instance.new("UICorner")
UICorner3.CornerRadius = UDim.new(0.2, 0)
UICorner3.Parent = ABg1

local Class3Seats = Instance.new("TextBox")
Class3Seats.Name = "Class3Seats"
Class3Seats.LayoutOrder = 1
Class3Seats.Selectable = false
Class3Seats.ZIndex = 3
Class3Seats.Size = UDim2.new(0.1677609, 0, 0.0438768, 0)
Class3Seats.BorderColor3 = Color3.fromRGB(27, 42, 53)
Class3Seats.BackgroundTransparency = 1
Class3Seats.Position = UDim2.new(0.5225549, 0, 0.4799299, 0)
Class3Seats.Active = false
Class3Seats.BorderSizePixel = 0
Class3Seats.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Class3Seats.FontSize = Enum.FontSize.Size32
Class3Seats.TextSize = 30
Class3Seats.TextWrapped = true
Class3Seats.TextWrap = true
Class3Seats.TextColor3 = Color3.fromRGB(255, 255, 255)
Class3Seats.Text = "0"
Class3Seats.Font = Enum.Font.SourceSans
Class3Seats.TextScaled = true
Class3Seats.Parent = SelectionFrame

local Class4Seats = Instance.new("TextBox")
Class4Seats.Name = "Class4Seats"
Class4Seats.LayoutOrder = 1
Class4Seats.Selectable = false
Class4Seats.ZIndex = 3
Class4Seats.Size = UDim2.new(0.1677609, 0, 0.0438768, 0)
Class4Seats.BorderColor3 = Color3.fromRGB(27, 42, 53)
Class4Seats.BackgroundTransparency = 1
Class4Seats.Position = UDim2.new(0.7302337, 0, 0.4799299, 0)
Class4Seats.Active = false
Class4Seats.BorderSizePixel = 0
Class4Seats.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Class4Seats.FontSize = Enum.FontSize.Size32
Class4Seats.TextSize = 30
Class4Seats.TextWrapped = true
Class4Seats.TextWrap = true
Class4Seats.TextColor3 = Color3.fromRGB(255, 255, 255)
Class4Seats.Text = "0"
Class4Seats.Font = Enum.Font.SourceSans
Class4Seats.TextScaled = true
Class4Seats.Parent = SelectionFrame

local ABg2 = Instance.new("Frame")
ABg2.Name = "ABg"
ABg2.Size = UDim2.new(0.1728435, 0, 0.0438768, 0)
ABg2.Position = UDim2.new(0.5174722, 0, 0.4799299, 0)
ABg2.BorderSizePixel = 0
ABg2.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
ABg2.Parent = SelectionFrame

local UICorner4 = Instance.new("UICorner")
UICorner4.CornerRadius = UDim.new(0.2, 0)
UICorner4.Parent = ABg2

local Class1 = Instance.new("TextLabel")
Class1.Name = "Class1"
Class1.LayoutOrder = 1
Class1.ZIndex = 3
Class1.Size = UDim2.new(0.1432928, 0, 0.0301645, 0)
Class1.BorderColor3 = Color3.fromRGB(27, 42, 53)
Class1.BackgroundTransparency = 1
Class1.Position = UDim2.new(0.105452, 0, 0.4329937, 0)
Class1.BorderSizePixel = 0
Class1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Class1.FontSize = Enum.FontSize.Size32
Class1.TextSize = 30
Class1.TextColor3 = Color3.fromRGB(136, 136, 136)
Class1.Text = "Class1"
Class1.TextWrap = true
Class1.Font = Enum.Font.GothamSemibold
Class1.TextWrapped = true
Class1.TextXAlignment = Enum.TextXAlignment.Left
Class1.TextScaled = true
Class1.Parent = SelectionFrame

local Class2 = Instance.new("TextLabel")
Class2.Name = "Class2"
Class2.LayoutOrder = 1
Class2.ZIndex = 3
Class2.Size = UDim2.new(0.1432928, 0, 0.0301645, 0)
Class2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Class2.BackgroundTransparency = 1
Class2.Position = UDim2.new(0.3113857, 0, 0.4343884, 0)
Class2.BorderSizePixel = 0
Class2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Class2.FontSize = Enum.FontSize.Size32
Class2.TextSize = 30
Class2.TextColor3 = Color3.fromRGB(136, 136, 136)
Class2.Text = "Class2"
Class2.TextWrap = true
Class2.Font = Enum.Font.GothamSemibold
Class2.TextWrapped = true
Class2.TextXAlignment = Enum.TextXAlignment.Left
Class2.TextScaled = true
Class2.Parent = SelectionFrame

local Class3 = Instance.new("TextLabel")
Class3.Name = "Class3"
Class3.LayoutOrder = 1
Class3.ZIndex = 3
Class3.Size = UDim2.new(0.1432928, 0, 0.0301645, 0)
Class3.BorderColor3 = Color3.fromRGB(27, 42, 53)
Class3.BackgroundTransparency = 1
Class3.Position = UDim2.new(0.5208098, 0, 0.4343884, 0)
Class3.BorderSizePixel = 0
Class3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Class3.FontSize = Enum.FontSize.Size32
Class3.TextSize = 30
Class3.TextColor3 = Color3.fromRGB(136, 136, 136)
Class3.Text = "Class3"
Class3.TextWrap = true
Class3.Font = Enum.Font.GothamSemibold
Class3.TextWrapped = true
Class3.TextXAlignment = Enum.TextXAlignment.Left
Class3.TextScaled = true
Class3.Parent = SelectionFrame

local Class4 = Instance.new("TextLabel")
Class4.Name = "Class4"
Class4.LayoutOrder = 1
Class4.ZIndex = 3
Class4.Size = UDim2.new(0.1432928, 0, 0.0301645, 0)
Class4.BorderColor3 = Color3.fromRGB(27, 42, 53)
Class4.BackgroundTransparency = 1
Class4.Position = UDim2.new(0.7441955, 0, 0.4343884, 0)
Class4.BorderSizePixel = 0
Class4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Class4.FontSize = Enum.FontSize.Size32
Class4.TextSize = 30
Class4.TextColor3 = Color3.fromRGB(136, 136, 136)
Class4.Text = "Class4"
Class4.TextWrap = true
Class4.Font = Enum.Font.GothamSemibold
Class4.TextWrapped = true
Class4.TextXAlignment = Enum.TextXAlignment.Left
Class4.TextScaled = true
Class4.Parent = SelectionFrame

local ABg3 = Instance.new("Frame")
ABg3.Name = "ABg"
ABg3.Size = UDim2.new(0.1728435, 0, 0.0438768, 0)
ABg3.Position = UDim2.new(0.7286415, 0, 0.4799299, 0)
ABg3.BorderSizePixel = 0
ABg3.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
ABg3.Parent = SelectionFrame

local UICorner5 = Instance.new("UICorner")
UICorner5.CornerRadius = UDim.new(0.2, 0)
UICorner5.Parent = ABg3

local ABg4 = Instance.new("Frame")
ABg4.Name = "ABg"
ABg4.Size = UDim2.new(0.1685008, 0, 0.0319607, 0)
ABg4.Position = UDim2.new(0.0994764, 0, 0.5362623, 0)
ABg4.BorderSizePixel = 0
ABg4.BackgroundColor3 = Color3.fromRGB(82, 112, 80)
ABg4.Parent = SelectionFrame

local UICorner6 = Instance.new("UICorner")
UICorner6.CornerRadius = UDim.new(0.2, 0)
UICorner6.Parent = ABg4

local ABg5 = Instance.new("Frame")
ABg5.Name = "ABg"
ABg5.Size = UDim2.new(0.1685008, 0, 0.0319607, 0)
ABg5.Position = UDim2.new(0.3089005, 0, 0.5362623, 0)
ABg5.BorderSizePixel = 0
ABg5.BackgroundColor3 = Color3.fromRGB(82, 112, 80)
ABg5.Parent = SelectionFrame

local UICorner7 = Instance.new("UICorner")
UICorner7.CornerRadius = UDim.new(0.2, 0)
UICorner7.Parent = ABg5

local ABg6 = Instance.new("Frame")
ABg6.Name = "ABg"
ABg6.Size = UDim2.new(0.1685008, 0, 0.0319607, 0)
ABg6.Position = UDim2.new(0.521815, 0, 0.5362623, 0)
ABg6.BorderSizePixel = 0
ABg6.BackgroundColor3 = Color3.fromRGB(82, 112, 80)
ABg6.Parent = SelectionFrame

local UICorner8 = Instance.new("UICorner")
UICorner8.CornerRadius = UDim.new(0.2, 0)
UICorner8.Parent = ABg6

local ABg7 = Instance.new("Frame")
ABg7.Name = "ABg"
ABg7.Size = UDim2.new(0.1685008, 0, 0.0319607, 0)
ABg7.Position = UDim2.new(0.7294938, 0, 0.5348676, 0)
ABg7.BorderSizePixel = 0
ABg7.BackgroundColor3 = Color3.fromRGB(82, 112, 80)
ABg7.Parent = SelectionFrame

local UICorner9 = Instance.new("UICorner")
UICorner9.CornerRadius = UDim.new(0.2, 0)
UICorner9.Parent = ABg7

local SetClass1 = Instance.new("TextButton")
SetClass1.Name = "SetClass1"
SetClass1.Size = UDim2.new(0.170246, 0, 0.0326581, 0)
SetClass1.BackgroundTransparency = 1
SetClass1.Position = UDim2.new(0.0977312, 0, 0.5355648, 0)
SetClass1.BorderSizePixel = 0
SetClass1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SetClass1.FontSize = Enum.FontSize.Size14
SetClass1.TextSize = 14
SetClass1.TextColor3 = Color3.fromRGB(255, 255, 255)
SetClass1.Text = "Set"
SetClass1.TextWrap = true
SetClass1.Font = Enum.Font.SourceSans
SetClass1.TextWrapped = true
SetClass1.TextScaled = true
SetClass1.Parent = SelectionFrame

local SetClass2 = Instance.new("TextButton")
SetClass2.Name = "SetClass2"
SetClass2.Size = UDim2.new(0.170246, 0, 0.0326581, 0)
SetClass2.BackgroundTransparency = 1
SetClass2.Position = UDim2.new(0.3106457, 0, 0.5355648, 0)
SetClass2.BorderSizePixel = 0
SetClass2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SetClass2.FontSize = Enum.FontSize.Size14
SetClass2.TextSize = 14
SetClass2.TextColor3 = Color3.fromRGB(255, 255, 255)
SetClass2.Text = "Set"
SetClass2.TextWrap = true
SetClass2.Font = Enum.Font.SourceSans
SetClass2.TextWrapped = true
SetClass2.TextScaled = true
SetClass2.Parent = SelectionFrame

local SetClass3 = Instance.new("TextButton")
SetClass3.Name = "SetClass3"
SetClass3.Size = UDim2.new(0.170246, 0, 0.0326581, 0)
SetClass3.BackgroundTransparency = 1
SetClass3.Position = UDim2.new(0.521815, 0, 0.5355648, 0)
SetClass3.BorderSizePixel = 0
SetClass3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SetClass3.FontSize = Enum.FontSize.Size14
SetClass3.TextSize = 14
SetClass3.TextColor3 = Color3.fromRGB(255, 255, 255)
SetClass3.Text = "Set"
SetClass3.TextWrap = true
SetClass3.Font = Enum.Font.SourceSans
SetClass3.TextWrapped = true
SetClass3.TextScaled = true
SetClass3.Parent = SelectionFrame

local SetClass4 = Instance.new("TextButton")
SetClass4.Name = "SetClass4"
SetClass4.Size = UDim2.new(0.170246, 0, 0.0326581, 0)
SetClass4.BackgroundTransparency = 1
SetClass4.Position = UDim2.new(0.7294939, 0, 0.5355648, 0)
SetClass4.BorderSizePixel = 0
SetClass4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SetClass4.FontSize = Enum.FontSize.Size14
SetClass4.TextSize = 14
SetClass4.TextColor3 = Color3.fromRGB(255, 255, 255)
SetClass4.Text = "Set"
SetClass4.TextWrap = true
SetClass4.Font = Enum.Font.SourceSans
SetClass4.TextWrapped = true
SetClass4.TextScaled = true
SetClass4.Parent = SelectionFrame

local ABg8 = Instance.new("Frame")
ABg8.Name = "ABg"
ABg8.Size = UDim2.new(0.1685008, 0, 0.0319607, 0)
ABg8.Position = UDim2.new(0.078534, 0, 0.8877267, 0)
ABg8.BorderSizePixel = 0
ABg8.BackgroundColor3 = Color3.fromRGB(82, 112, 80)
ABg8.Parent = SelectionFrame

local UICorner10 = Instance.new("UICorner")
UICorner10.CornerRadius = UDim.new(0.3, 0)
UICorner10.Parent = ABg8

local ABg9 = Instance.new("Frame")
ABg9.Name = "ABg"
ABg9.Size = UDim2.new(0.1685008, 0, 0.0319607, 0)
ABg9.Position = UDim2.new(0.2844677, 0, 0.8877267, 0)
ABg9.BorderSizePixel = 0
ABg9.BackgroundColor3 = Color3.fromRGB(112, 48, 48)
ABg9.Parent = SelectionFrame

local UICorner11 = Instance.new("UICorner")
UICorner11.CornerRadius = UDim.new(0.3, 0)
UICorner11.Parent = ABg9

local Close = Instance.new("TextButton")
Close.Name = "Close"
Close.Size = UDim2.new(0.170246, 0, 0.0326581, 0)
Close.BackgroundTransparency = 1
Close.Position = UDim2.new(0.2827225, 0, 0.8870293, 0)
Close.BorderSizePixel = 0
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.FontSize = Enum.FontSize.Size14
Close.TextSize = 14
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.Text = "Close"
Close.TextWrap = true
Close.Font = Enum.Font.SourceSans
Close.TextWrapped = true
Close.TextScaled = true
Close.Parent = SelectionFrame

local Open = Instance.new("TextButton")
Open.Name = "Open"
Open.Size = UDim2.new(0.170246, 0, 0.0326581, 0)
Open.BackgroundTransparency = 1
Open.Position = UDim2.new(0.078534, 0, 0.8870293, 0)
Open.BorderSizePixel = 0
Open.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Open.FontSize = Enum.FontSize.Size14
Open.TextSize = 14
Open.TextColor3 = Color3.fromRGB(255, 255, 255)
Open.Text = "Open"
Open.TextWrap = true
Open.Font = Enum.Font.SourceSans
Open.TextWrapped = true
Open.TextScaled = true
Open.Parent = SelectionFrame

local SaveBg = Instance.new("Frame")
SaveBg.Name = "SaveBg"
SaveBg.Size = UDim2.new(0.1685008, 0, 0.0319607, 0)
SaveBg.Position = UDim2.new(0.7364747, 0, 0.8835426, 0)
SaveBg.BorderSizePixel = 0
SaveBg.BackgroundColor3 = Color3.fromRGB(82, 112, 80)
SaveBg.Parent = SelectionFrame

local UICorner12 = Instance.new("UICorner")
UICorner12.CornerRadius = UDim.new(0.3, 0)
UICorner12.Parent = SaveBg

local Save = Instance.new("TextButton")
Save.Name = "Save"
Save.Size = UDim2.new(0.170246, 0, 0.0326581, 0)
Save.BackgroundTransparency = 1
Save.Position = UDim2.new(0.7347295, 0, 0.8828452, 0)
Save.BorderSizePixel = 0
Save.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Save.FontSize = Enum.FontSize.Size14
Save.TextSize = 14
Save.TextColor3 = Color3.fromRGB(255, 255, 255)
Save.Text = "Save"
Save.TextWrap = true
Save.Font = Enum.Font.SourceSans
Save.TextWrapped = true
Save.TextScaled = true
Save.Parent = SelectionFrame

local Unbooking = Instance.new("TextLabel")
Unbooking.Name = "Unbooking"
Unbooking.LayoutOrder = 1
Unbooking.ZIndex = 3
Unbooking.Size = UDim2.new(0.4439315, 0, 0.037532, 0)
Unbooking.BorderColor3 = Color3.fromRGB(27, 42, 53)
Unbooking.BackgroundTransparency = 1
Unbooking.Position = UDim2.new(0.0967289, 0, 0.6145927, 0)
Unbooking.BorderSizePixel = 0
Unbooking.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Unbooking.FontSize = Enum.FontSize.Size32
Unbooking.TextSize = 30
Unbooking.TextColor3 = Color3.fromRGB(136, 136, 136)
Unbooking.Text = "Unbooking:"
Unbooking.TextWrap = true
Unbooking.Font = Enum.Font.GothamSemibold
Unbooking.TextWrapped = true
Unbooking.TextXAlignment = Enum.TextXAlignment.Left
Unbooking.TextScaled = true
Unbooking.Parent = SelectionFrame

local Unbooking1 = Instance.new("TextLabel")
Unbooking1.Name = "Unbooking"
Unbooking1.LayoutOrder = 1
Unbooking1.ZIndex = 3
Unbooking1.Size = UDim2.new(0.4303205, 0, 0.0404756, 0)
Unbooking1.BorderColor3 = Color3.fromRGB(27, 42, 53)
Unbooking1.BackgroundTransparency = 1
Unbooking1.Position = UDim2.new(0.096729, 0, 0.6676534, 0)
Unbooking1.BorderSizePixel = 0
Unbooking1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Unbooking1.FontSize = Enum.FontSize.Size32
Unbooking1.TextSize = 30
Unbooking1.TextColor3 = Color3.fromRGB(136, 136, 136)
Unbooking1.Text = "If you are doing multiple flights you can reset who checked in."
Unbooking1.TextWrap = true
Unbooking1.Font = Enum.Font.GothamSemibold
Unbooking1.TextWrapped = true
Unbooking1.TextXAlignment = Enum.TextXAlignment.Left
Unbooking1.TextScaled = true
Unbooking1.Parent = SelectionFrame

local ABg10 = Instance.new("Frame")
ABg10.Name = "ABg"
ABg10.Size = UDim2.new(0.1685008, 0, 0.0319607, 0)
ABg10.Position = UDim2.new(0.0977703, 0, 0.7327334, 0)
ABg10.BorderSizePixel = 0
ABg10.BackgroundColor3 = Color3.fromRGB(112, 48, 48)
ABg10.Parent = SelectionFrame

local UICorner13 = Instance.new("UICorner")
UICorner13.CornerRadius = UDim.new(0.3, 0)
UICorner13.Parent = ABg10

local Reset = Instance.new("TextButton")
Reset.Name = "Reset"
Reset.Size = UDim2.new(0.170246, 0, 0.0326581, 0)
Reset.BackgroundTransparency = 1
Reset.Position = UDim2.new(0.0995148, 0, 0.7306396, 0)
Reset.BorderSizePixel = 0
Reset.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Reset.FontSize = Enum.FontSize.Size14
Reset.TextSize = 14
Reset.TextColor3 = Color3.fromRGB(255, 255, 255)
Reset.Text = "Reset"
Reset.TextWrap = true
Reset.Font = Enum.Font.SourceSans
Reset.TextWrapped = true
Reset.TextScaled = true
Reset.Parent = SelectionFrame

local FlightInfo1 = Instance.new("Frame")
FlightInfo1.Name = "FlightInfo"
FlightInfo1.Visible = false
FlightInfo1.Size = UDim2.new(1, 0, 1, 0)
FlightInfo1.BackgroundTransparency = 1
FlightInfo1.BorderSizePixel = 0
FlightInfo1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FlightInfo1.Parent = SelfCheckIn

local Flight = Instance.new("TextLabel")
Flight.Name = "Flight"
Flight.LayoutOrder = 1
Flight.ZIndex = 3
Flight.Size = UDim2.new(0.4439315, 0, 0.0427112, 0)
Flight.BorderColor3 = Color3.fromRGB(27, 42, 53)
Flight.BackgroundTransparency = 1
Flight.Position = UDim2.new(0.096726, 0, 0.3548906, 0)
Flight.BorderSizePixel = 0
Flight.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Flight.FontSize = Enum.FontSize.Size32
Flight.TextSize = 30
Flight.TextColor3 = Color3.fromRGB(136, 136, 136)
Flight.Text = "Flight:"
Flight.TextWrap = true
Flight.Font = Enum.Font.GothamSemibold
Flight.TextWrapped = true
Flight.TextXAlignment = Enum.TextXAlignment.Left
Flight.TextScaled = true
Flight.Parent = FlightInfo1

local NextTxt = Instance.new("TextLabel")
NextTxt.Name = "NextTxt"
NextTxt.LayoutOrder = 1
NextTxt.ZIndex = 3
NextTxt.Size = UDim2.new(0.0769015, 0, 0.0334672, 0)
NextTxt.BorderColor3 = Color3.fromRGB(27, 42, 53)
NextTxt.BackgroundTransparency = 1
NextTxt.Position = UDim2.new(0.4637918, 0, 0.8607204, 0)
NextTxt.BorderSizePixel = 0
NextTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NextTxt.FontSize = Enum.FontSize.Size14
NextTxt.TextSize = 14
NextTxt.TextColor3 = Color3.fromRGB(255, 255, 255)
NextTxt.Text = "NEXT"
NextTxt.TextWrap = true
NextTxt.Font = Enum.Font.GothamSemibold
NextTxt.TextWrapped = true
NextTxt.TextScaled = true
NextTxt.Parent = FlightInfo1

local WhiteBG1 = Instance.new("Frame")
WhiteBG1.Name = "WhiteBG"
WhiteBG1.Size = UDim2.new(0.8738809, 0, 0.7014167, 0)
WhiteBG1.Position = UDim2.new(0.0598441, 0, 0.2302543, 0)
WhiteBG1.BorderSizePixel = 0
WhiteBG1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WhiteBG1.Parent = FlightInfo1

local UICorner14 = Instance.new("UICorner")
UICorner14.CornerRadius = UDim.new(0.015, 0)
UICorner14.Parent = WhiteBG1

local NextFrame = Instance.new("Frame")
NextFrame.Name = "NextFrame"
NextFrame.Size = UDim2.new(0.2569211, 0, 0.0502008, 0)
NextFrame.Position = UDim2.new(0.3726858, 0, 0.852194, 0)
NextFrame.BorderSizePixel = 0
NextFrame.BackgroundColor3 = Color3.fromRGB(136, 136, 136)
NextFrame.Parent = FlightInfo1

local UICorner15 = Instance.new("UICorner")
UICorner15.CornerRadius = UDim.new(0.3, 0)
UICorner15.Parent = NextFrame

local Gate = Instance.new("TextLabel")
Gate.Name = "Gate"
Gate.LayoutOrder = 1
Gate.ZIndex = 3
Gate.Size = UDim2.new(0.4439315, 0, 0.0427112, 0)
Gate.BorderColor3 = Color3.fromRGB(27, 42, 53)
Gate.BackgroundTransparency = 1
Gate.Position = UDim2.new(0.096726, 0, 0.4176521, 0)
Gate.BorderSizePixel = 0
Gate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Gate.FontSize = Enum.FontSize.Size32
Gate.TextSize = 30
Gate.TextColor3 = Color3.fromRGB(136, 136, 136)
Gate.Text = "Gate:"
Gate.TextWrap = true
Gate.Font = Enum.Font.GothamSemibold
Gate.TextWrapped = true
Gate.TextXAlignment = Enum.TextXAlignment.Left
Gate.TextScaled = true
Gate.Parent = FlightInfo1

local Dest = Instance.new("TextLabel")
Dest.Name = "Dest"
Dest.LayoutOrder = 1
Dest.ZIndex = 3
Dest.Size = UDim2.new(0.4439315, 0, 0.0427112, 0)
Dest.BorderColor3 = Color3.fromRGB(27, 42, 53)
Dest.BackgroundTransparency = 1
Dest.Position = UDim2.new(0.096726, 0, 0.5473592, 0)
Dest.BorderSizePixel = 0
Dest.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dest.FontSize = Enum.FontSize.Size32
Dest.TextSize = 30
Dest.TextColor3 = Color3.fromRGB(136, 136, 136)
Dest.Text = "Destination:"
Dest.TextWrap = true
Dest.Font = Enum.Font.GothamSemibold
Dest.TextWrapped = true
Dest.TextXAlignment = Enum.TextXAlignment.Left
Dest.TextScaled = true
Dest.Parent = FlightInfo1

local DepTime = Instance.new("TextLabel")
DepTime.Name = "DepTime"
DepTime.LayoutOrder = 1
DepTime.ZIndex = 3
DepTime.Size = UDim2.new(0.4439315, 0, 0.0427112, 0)
DepTime.BorderColor3 = Color3.fromRGB(27, 42, 53)
DepTime.BackgroundTransparency = 1
DepTime.Position = UDim2.new(0.096726, 0, 0.6170942, 0)
DepTime.BorderSizePixel = 0
DepTime.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DepTime.FontSize = Enum.FontSize.Size32
DepTime.TextSize = 30
DepTime.TextColor3 = Color3.fromRGB(136, 136, 136)
DepTime.Text = "Departure:"
DepTime.TextWrap = true
DepTime.Font = Enum.Font.GothamSemibold
DepTime.TextWrapped = true
DepTime.TextXAlignment = Enum.TextXAlignment.Left
DepTime.TextScaled = true
DepTime.Parent = FlightInfo1

local ArrivalTime = Instance.new("TextLabel")
ArrivalTime.Name = "ArrivalTime"
ArrivalTime.LayoutOrder = 1
ArrivalTime.ZIndex = 3
ArrivalTime.Size = UDim2.new(0.4439315, 0, 0.0427112, 0)
ArrivalTime.BorderColor3 = Color3.fromRGB(27, 42, 53)
ArrivalTime.BackgroundTransparency = 1
ArrivalTime.Position = UDim2.new(0.096726, 0, 0.6910133, 0)
ArrivalTime.BorderSizePixel = 0
ArrivalTime.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ArrivalTime.FontSize = Enum.FontSize.Size32
ArrivalTime.TextSize = 30
ArrivalTime.TextColor3 = Color3.fromRGB(136, 136, 136)
ArrivalTime.Text = "Arrival:"
ArrivalTime.TextWrap = true
ArrivalTime.Font = Enum.Font.GothamSemibold
ArrivalTime.TextWrapped = true
ArrivalTime.TextXAlignment = Enum.TextXAlignment.Left
ArrivalTime.TextScaled = true
ArrivalTime.Parent = FlightInfo1

local Aircraft = Instance.new("TextLabel")
Aircraft.Name = "Aircraft"
Aircraft.LayoutOrder = 1
Aircraft.ZIndex = 3
Aircraft.Size = UDim2.new(0.4439315, 0, 0.0427112, 0)
Aircraft.BorderColor3 = Color3.fromRGB(27, 42, 53)
Aircraft.BackgroundTransparency = 1
Aircraft.Position = UDim2.new(0.096726, 0, 0.762143, 0)
Aircraft.BorderSizePixel = 0
Aircraft.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Aircraft.FontSize = Enum.FontSize.Size32
Aircraft.TextSize = 30
Aircraft.TextColor3 = Color3.fromRGB(136, 136, 136)
Aircraft.Text = "Aircraft:"
Aircraft.TextWrap = true
Aircraft.Font = Enum.Font.GothamSemibold
Aircraft.TextWrapped = true
Aircraft.TextXAlignment = Enum.TextXAlignment.Left
Aircraft.TextScaled = true
Aircraft.Parent = FlightInfo1

local NextBtn = Instance.new("TextButton")
NextBtn.Name = "NextBtn"
NextBtn.Size = UDim2.new(0.2569211, 0, 0.0502008, 0)
NextBtn.BackgroundTransparency = 1
NextBtn.Position = UDim2.new(0.3726858, 0, 0.8521941, 0)
NextBtn.BorderSizePixel = 0
NextBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NextBtn.FontSize = Enum.FontSize.Size14
NextBtn.TextTransparency = 1
NextBtn.TextSize = 14
NextBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
NextBtn.Text = " "
NextBtn.TextWrap = true
NextBtn.Font = Enum.Font.SourceSans
NextBtn.TextWrapped = true
NextBtn.TextScaled = true
NextBtn.Parent = FlightInfo1

local FlightInfo2 = Instance.new("TextLabel")
FlightInfo2.Name = "FlightInfo"
FlightInfo2.LayoutOrder = 1
FlightInfo2.ZIndex = 3
FlightInfo2.Size = UDim2.new(0.5451642, 0, 0.062389, 0)
FlightInfo2.BorderColor3 = Color3.fromRGB(27, 42, 53)
FlightInfo2.BackgroundTransparency = 1
FlightInfo2.Position = UDim2.new(0.0984711, 0, 0.2447093, 0)
FlightInfo2.BorderSizePixel = 0
FlightInfo2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FlightInfo2.FontSize = Enum.FontSize.Size32
FlightInfo2.TextSize = 30
FlightInfo2.TextColor3 = Color3.fromRGB(136, 136, 136)
FlightInfo2.Text = "Information"
FlightInfo2.TextWrap = true
FlightInfo2.Font = Enum.Font.GothamSemibold
FlightInfo2.TextWrapped = true
FlightInfo2.TextXAlignment = Enum.TextXAlignment.Left
FlightInfo2.TextScaled = true
FlightInfo2.Parent = FlightInfo1

local BoarTime = Instance.new("TextLabel")
BoarTime.Name = "BoarTime"
BoarTime.LayoutOrder = 1
BoarTime.ZIndex = 3
BoarTime.Size = UDim2.new(0.4439315, 0, 0.0427112, 0)
BoarTime.BorderColor3 = Color3.fromRGB(27, 42, 53)
BoarTime.BackgroundTransparency = 1
BoarTime.Position = UDim2.new(0.096726, 0, 0.4804136, 0)
BoarTime.BorderSizePixel = 0
BoarTime.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BoarTime.FontSize = Enum.FontSize.Size32
BoarTime.TextSize = 30
BoarTime.TextColor3 = Color3.fromRGB(136, 136, 136)
BoarTime.Text = "Boarding:"
BoarTime.TextWrap = true
BoarTime.Font = Enum.Font.GothamSemibold
BoarTime.TextWrapped = true
BoarTime.TextXAlignment = Enum.TextXAlignment.Left
BoarTime.TextScaled = true
BoarTime.Parent = FlightInfo1

local FlightNum = Instance.new("TextBox")
FlightNum.Name = "FlightNum"
FlightNum.LayoutOrder = 1
FlightNum.Selectable = false
FlightNum.ZIndex = 3
FlightNum.Size = UDim2.new(0.4439315, 0, 0.0427112, 0)
FlightNum.BorderColor3 = Color3.fromRGB(27, 42, 53)
FlightNum.BackgroundTransparency = 1
FlightNum.Position = UDim2.new(0.505103, 0, 0.3548906, 0)
FlightNum.Active = false
FlightNum.BorderSizePixel = 0
FlightNum.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FlightNum.PlaceholderColor3 = Color3.fromRGB(217, 217, 217)
FlightNum.FontSize = Enum.FontSize.Size32
FlightNum.TextSize = 30
FlightNum.TextWrapped = true
FlightNum.TextWrap = true
FlightNum.TextColor3 = Color3.fromRGB(136, 136, 136)
FlightNum.Text = ""
FlightNum.Font = Enum.Font.GothamSemibold
FlightNum.TextXAlignment = Enum.TextXAlignment.Left
FlightNum.PlaceholderText = "Input.."
FlightNum.TextScaled = true
FlightNum.Parent = FlightInfo1

local GateNum = Instance.new("TextBox")
GateNum.Name = "GateNum"
GateNum.LayoutOrder = 1
GateNum.Selectable = false
GateNum.ZIndex = 3
GateNum.Size = UDim2.new(0.4439315, 0, 0.0427112, 0)
GateNum.BorderColor3 = Color3.fromRGB(27, 42, 53)
GateNum.BackgroundTransparency = 1
GateNum.Position = UDim2.new(0.505103, 0, 0.4176521, 0)
GateNum.Active = false
GateNum.BorderSizePixel = 0
GateNum.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GateNum.PlaceholderColor3 = Color3.fromRGB(217, 217, 217)
GateNum.FontSize = Enum.FontSize.Size32
GateNum.TextSize = 30
GateNum.TextWrapped = true
GateNum.TextWrap = true
GateNum.TextColor3 = Color3.fromRGB(136, 136, 136)
GateNum.Text = ""
GateNum.Font = Enum.Font.GothamSemibold
GateNum.TextXAlignment = Enum.TextXAlignment.Left
GateNum.PlaceholderText = "Input.."
GateNum.TextScaled = true
GateNum.Parent = FlightInfo1

local BoarTimeTxt = Instance.new("TextBox")
BoarTimeTxt.Name = "BoarTimeTxt"
BoarTimeTxt.LayoutOrder = 1
BoarTimeTxt.Selectable = false
BoarTimeTxt.ZIndex = 3
BoarTimeTxt.Size = UDim2.new(0.4439315, 0, 0.0427112, 0)
BoarTimeTxt.BorderColor3 = Color3.fromRGB(27, 42, 53)
BoarTimeTxt.BackgroundTransparency = 1
BoarTimeTxt.Position = UDim2.new(0.5051029, 0, 0.4804136, 0)
BoarTimeTxt.Active = false
BoarTimeTxt.BorderSizePixel = 0
BoarTimeTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BoarTimeTxt.PlaceholderColor3 = Color3.fromRGB(217, 217, 217)
BoarTimeTxt.FontSize = Enum.FontSize.Size32
BoarTimeTxt.TextSize = 30
BoarTimeTxt.TextWrapped = true
BoarTimeTxt.TextWrap = true
BoarTimeTxt.TextColor3 = Color3.fromRGB(136, 136, 136)
BoarTimeTxt.Text = ""
BoarTimeTxt.Font = Enum.Font.GothamSemibold
BoarTimeTxt.TextXAlignment = Enum.TextXAlignment.Left
BoarTimeTxt.PlaceholderText = "Input.."
BoarTimeTxt.TextScaled = true
BoarTimeTxt.Parent = FlightInfo1

local DestTxt = Instance.new("TextBox")
DestTxt.Name = "DestTxt"
DestTxt.LayoutOrder = 1
DestTxt.Selectable = false
DestTxt.ZIndex = 3
DestTxt.Size = UDim2.new(0.4439315, 0, 0.0427112, 0)
DestTxt.BorderColor3 = Color3.fromRGB(27, 42, 53)
DestTxt.BackgroundTransparency = 1
DestTxt.Position = UDim2.new(0.505103, 0, 0.5473592, 0)
DestTxt.Active = false
DestTxt.BorderSizePixel = 0
DestTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DestTxt.PlaceholderColor3 = Color3.fromRGB(217, 217, 217)
DestTxt.FontSize = Enum.FontSize.Size32
DestTxt.TextSize = 30
DestTxt.TextWrapped = true
DestTxt.TextWrap = true
DestTxt.TextColor3 = Color3.fromRGB(136, 136, 136)
DestTxt.Text = ""
DestTxt.Font = Enum.Font.GothamSemibold
DestTxt.TextXAlignment = Enum.TextXAlignment.Left
DestTxt.PlaceholderText = "Input.."
DestTxt.TextScaled = true
DestTxt.Parent = FlightInfo1

local DepTimeTxt = Instance.new("TextBox")
DepTimeTxt.Name = "DepTimeTxt"
DepTimeTxt.LayoutOrder = 1
DepTimeTxt.Selectable = false
DepTimeTxt.ZIndex = 3
DepTimeTxt.Size = UDim2.new(0.4439315, 0, 0.0427112, 0)
DepTimeTxt.BorderColor3 = Color3.fromRGB(27, 42, 53)
DepTimeTxt.BackgroundTransparency = 1
DepTimeTxt.Position = UDim2.new(0.5051029, 0, 0.6170942, 0)
DepTimeTxt.Active = false
DepTimeTxt.BorderSizePixel = 0
DepTimeTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DepTimeTxt.PlaceholderColor3 = Color3.fromRGB(217, 217, 217)
DepTimeTxt.FontSize = Enum.FontSize.Size32
DepTimeTxt.TextSize = 30
DepTimeTxt.TextWrapped = true
DepTimeTxt.TextWrap = true
DepTimeTxt.TextColor3 = Color3.fromRGB(136, 136, 136)
DepTimeTxt.Text = ""
DepTimeTxt.Font = Enum.Font.GothamSemibold
DepTimeTxt.TextXAlignment = Enum.TextXAlignment.Left
DepTimeTxt.PlaceholderText = "Input.."
DepTimeTxt.TextScaled = true
DepTimeTxt.Parent = FlightInfo1

local ArrivalTimeTxt = Instance.new("TextBox")
ArrivalTimeTxt.Name = "ArrivalTimeTxt"
ArrivalTimeTxt.LayoutOrder = 1
ArrivalTimeTxt.Selectable = false
ArrivalTimeTxt.ZIndex = 3
ArrivalTimeTxt.Size = UDim2.new(0.4439315, 0, 0.0427112, 0)
ArrivalTimeTxt.BorderColor3 = Color3.fromRGB(27, 42, 53)
ArrivalTimeTxt.BackgroundTransparency = 1
ArrivalTimeTxt.Position = UDim2.new(0.505103, 0, 0.6910133, 0)
ArrivalTimeTxt.Active = false
ArrivalTimeTxt.BorderSizePixel = 0
ArrivalTimeTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ArrivalTimeTxt.PlaceholderColor3 = Color3.fromRGB(217, 217, 217)
ArrivalTimeTxt.FontSize = Enum.FontSize.Size32
ArrivalTimeTxt.TextSize = 30
ArrivalTimeTxt.TextWrapped = true
ArrivalTimeTxt.TextWrap = true
ArrivalTimeTxt.TextColor3 = Color3.fromRGB(136, 136, 136)
ArrivalTimeTxt.Text = ""
ArrivalTimeTxt.Font = Enum.Font.GothamSemibold
ArrivalTimeTxt.TextXAlignment = Enum.TextXAlignment.Left
ArrivalTimeTxt.PlaceholderText = "Input.."
ArrivalTimeTxt.TextScaled = true
ArrivalTimeTxt.Parent = FlightInfo1

local AircraftTxt = Instance.new("TextBox")
AircraftTxt.Name = "AircraftTxt"
AircraftTxt.LayoutOrder = 1
AircraftTxt.Selectable = false
AircraftTxt.ZIndex = 3
AircraftTxt.Size = UDim2.new(0.4439315, 0, 0.0427112, 0)
AircraftTxt.BorderColor3 = Color3.fromRGB(27, 42, 53)
AircraftTxt.BackgroundTransparency = 1
AircraftTxt.Position = UDim2.new(0.505103, 0, 0.762143, 0)
AircraftTxt.Active = false
AircraftTxt.BorderSizePixel = 0
AircraftTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AircraftTxt.PlaceholderColor3 = Color3.fromRGB(217, 217, 217)
AircraftTxt.FontSize = Enum.FontSize.Size32
AircraftTxt.TextSize = 30
AircraftTxt.TextWrapped = true
AircraftTxt.TextWrap = true
AircraftTxt.TextColor3 = Color3.fromRGB(136, 136, 136)
AircraftTxt.Text = ""
AircraftTxt.Font = Enum.Font.GothamSemibold
AircraftTxt.TextXAlignment = Enum.TextXAlignment.Left
AircraftTxt.PlaceholderText = "Input.."
AircraftTxt.TextScaled = true
AircraftTxt.Parent = FlightInfo1

local ProductSelectionFrame = Instance.new("Frame")
ProductSelectionFrame.Name = "ProductSelectionFrame"
ProductSelectionFrame.Visible = false
ProductSelectionFrame.Size = UDim2.new(1, 0, 1, 0)
ProductSelectionFrame.BackgroundTransparency = 1
ProductSelectionFrame.Position = UDim2.new(0, 0, 1, 0)
ProductSelectionFrame.BorderSizePixel = 0
ProductSelectionFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ProductSelectionFrame.Parent = Main

local SciProduct = Instance.new("Frame")
SciProduct.Name = "SciProduct"
SciProduct.Size = UDim2.new(0.929, 0, 0.0718511, 0)
SciProduct.Position = UDim2.new(0.034, 0, 0.2, 0)
SciProduct.BorderSizePixel = 0
SciProduct.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SciProduct.Parent = ProductSelectionFrame

local UICorner16 = Instance.new("UICorner")
UICorner16.CornerRadius = UDim.new(0.3, 0)
UICorner16.Parent = SciProduct

local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(0.3975288, 0, 0.7884765, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.0298147, 0, 0.0871688, 0)
TextLabel.BorderSizePixel = 0
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.FontSize = Enum.FontSize.Size14
TextLabel.TextSize = 14
TextLabel.TextColor3 = Color3.fromRGB(63, 63, 63)
TextLabel.Text = "Self Check-In"
TextLabel.TextWrap = true
TextLabel.Font = Enum.Font.SourceSans
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.TextScaled = true
TextLabel.Parent = SciProduct

local SelfCheckIn1 = Instance.new("TextButton")
SelfCheckIn1.Name = "SelfCheckIn"
SelfCheckIn1.Size = UDim2.new(0.9979877, 0, 1, 0)
SelfCheckIn1.BackgroundTransparency = 1
SelfCheckIn1.BorderSizePixel = 0
SelfCheckIn1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelfCheckIn1.FontSize = Enum.FontSize.Size14
SelfCheckIn1.TextSize = 14
SelfCheckIn1.TextColor3 = Color3.fromRGB(0, 0, 0)
SelfCheckIn1.Text = " "
SelfCheckIn1.TextWrap = true
SelfCheckIn1.Font = Enum.Font.SourceSans
SelfCheckIn1.TextWrapped = true
SelfCheckIn1.TextScaled = true
SelfCheckIn1.Parent = SciProduct

local WhiteBG2 = Instance.new("Frame")
WhiteBG2.Name = "WhiteBG"
WhiteBG2.Size = UDim2.new(0.9290001, 0, 0.0707384, 0)
WhiteBG2.Position = UDim2.new(0.032, 0, 0.11, 0)
WhiteBG2.BorderSizePixel = 0
WhiteBG2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WhiteBG2.Parent = ProductSelectionFrame

local UICorner17 = Instance.new("UICorner")
UICorner17.CornerRadius = UDim.new(0.3, 0)
UICorner17.Parent = WhiteBG2

local TextLabel1 = Instance.new("TextLabel")
TextLabel1.Size = UDim2.new(0.3975288, 0, 0.7884765, 0)
TextLabel1.BackgroundTransparency = 1
TextLabel1.Position = UDim2.new(0.0298147, 0, 0.0871688, 0)
TextLabel1.BorderSizePixel = 0
TextLabel1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel1.FontSize = Enum.FontSize.Size14
TextLabel1.TextSize = 14
TextLabel1.TextColor3 = Color3.fromRGB(63, 63, 63)
TextLabel1.Text = "Products:"
TextLabel1.TextWrap = true
TextLabel1.Font = Enum.Font.SourceSans
TextLabel1.TextWrapped = true
TextLabel1.TextXAlignment = Enum.TextXAlignment.Left
TextLabel1.TextScaled = true
TextLabel1.Parent = WhiteBG2

local StartingFrame = Instance.new("Frame")
StartingFrame.Name = "StartingFrame"
StartingFrame.Size = UDim2.new(1, 0, 1, 0)
StartingFrame.BackgroundTransparency = 1
StartingFrame.BorderSizePixel = 0
StartingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StartingFrame.Parent = Main

local BeginTurning = Instance.new("Frame")
BeginTurning.Name = "BeginTurning"
BeginTurning.Size = UDim2.new(0.1256544, 0, 0.1004184, 0)
BeginTurning.Position = UDim2.new(0.4363002, 0, 0.4490934, 0)
BeginTurning.BorderSizePixel = 0
BeginTurning.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BeginTurning.Parent = StartingFrame

local UICorner18 = Instance.new("UICorner")
UICorner18.CornerRadius = UDim.new(1, 0)
UICorner18.Parent = BeginTurning

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.Size = UDim2.new(0.5416667, 0, 0.5416667, 0)
ImageLabel.Rotation = 180
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.2317674, 0, 0.2346772, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.ImageTransparency = 0.2
ImageLabel.ImageColor3 = Color3.fromRGB(147, 147, 147)
ImageLabel.Image = "http://www.roblox.com/asset/?id=8316890449"
ImageLabel.Parent = BeginTurning

local BeginBtn = Instance.new("TextButton")
BeginBtn.Name = "BeginBtn"
BeginBtn.Size = UDim2.new(0.1256544, 0, 0.1004184, 0)
BeginBtn.BackgroundTransparency = 1
BeginBtn.Position = UDim2.new(0.4363002, 0, 0.4490934, 0)
BeginBtn.BorderSizePixel = 0
BeginBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BeginBtn.FontSize = Enum.FontSize.Size14
BeginBtn.TextSize = 14
BeginBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
BeginBtn.Text = ""
BeginBtn.TextWrap = true
BeginBtn.Font = Enum.Font.SourceSans
BeginBtn.TextWrapped = true
BeginBtn.TextScaled = true
BeginBtn.Parent = StartingFrame

AdminPanel.Parent = script.Parent.AdminPanel.UI

script.LocalAdminClient.Parent = AdminPanel

script.Parent.AdminPanel.UI.AdminPanel.LocalAdminClient.Disabled = false

script.Parent.AdminPanel.Parent = game.ServerStorage

