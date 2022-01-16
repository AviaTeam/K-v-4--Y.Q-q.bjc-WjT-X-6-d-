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
        game:GetService('HttpService'):GetAsync('http://www.google.com/') 
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
	print("Player does not own SCI (Error: 102)")
        MainModel:Destroy()
    end
end)

-- ADD YOUR CODE FROM THIS POINT

local set = require(workspace.AS_SCI.README)

local SCIGui = Instance.new("ScreenGui")
SCIGui.Name = "SCIGui"
SCIGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local Main = Instance.new("ImageLabel")
Main.Name = "Main"
Main.Size = UDim2.new(0.2985, 0, 0.3735652, 0)
Main.SizeConstraint = Enum.SizeConstraint.RelativeXX
Main.ClipsDescendants = true
Main.BackgroundTransparency = 1
Main.Position = UDim2.new(0.3505682, 0, 0.1672681, 0)
Main.BorderSizePixel = 0
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.ScaleType = Enum.ScaleType.Fit
Main.Image = "http://www.roblox.com/asset/?id=8314847709"
Main.Parent = SCIGui

local BookingFrame = Instance.new("Frame")
BookingFrame.Name = "BookingFrame"
BookingFrame.Visible = false
BookingFrame.Size = UDim2.new(1, 0, 1, 0)
BookingFrame.BackgroundTransparency = 1
BookingFrame.Position = UDim2.new(0, 0, 1, 0)
BookingFrame.BorderSizePixel = 0
BookingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BookingFrame.Parent = Main

local Lines1 = Instance.new("Frame")
Lines1.Name = "Lines1"
Lines1.ZIndex = 4
Lines1.Size = UDim2.new(0.813, 0, 0.003, 0)
Lines1.Position = UDim2.new(0.0877432, 0, 0.3881687, 0)
Lines1.BorderSizePixel = 0
Lines1.BackgroundColor3 = Color3.fromRGB(219, 219, 220)
Lines1.Parent = BookingFrame

local Lines2 = Instance.new("Frame")
Lines2.Name = "Lines2"
Lines2.Size = UDim2.new(0.813, 0, 0.0021294, 0)
Lines2.Position = UDim2.new(0.0929788, 0, 0.5094883, 0)
Lines2.BorderSizePixel = 0
Lines2.BackgroundColor3 = Color3.fromRGB(219, 219, 220)
Lines2.Parent = BookingFrame

local Lines3 = Instance.new("Frame")
Lines3.Name = "Lines3"
Lines3.ZIndex = 4
Lines3.Size = UDim2.new(0.813, 0, 0.002, 0)
Lines3.Position = UDim2.new(0.0877432, 0, 0.6280203, 0)
Lines3.BorderSizePixel = 0
Lines3.BackgroundColor3 = Color3.fromRGB(219, 219, 220)
Lines3.Parent = BookingFrame

local Lines4 = Instance.new("Frame")
Lines4.Name = "Lines4"
Lines4.ZIndex = 4
Lines4.Size = UDim2.new(0.813, 0, 0.003, 0)
Lines4.Position = UDim2.new(0.0929788, 0, 0.7632865, 0)
Lines4.BorderSizePixel = 0
Lines4.BackgroundColor3 = Color3.fromRGB(219, 219, 220)
Lines4.Parent = BookingFrame

local WarningTxt = Instance.new("TextLabel")
WarningTxt.Name = "WarningTxt"
WarningTxt.LayoutOrder = 1
WarningTxt.ZIndex = 3
WarningTxt.Size = UDim2.new(0.6868704, 0, 0.0488063, 0)
WarningTxt.BorderColor3 = Color3.fromRGB(27, 42, 53)
WarningTxt.BackgroundTransparency = 1
WarningTxt.Position = UDim2.new(0.1518714, 0, 0.9316961, 0)
WarningTxt.BorderSizePixel = 0
WarningTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WarningTxt.FontSize = Enum.FontSize.Size14
WarningTxt.TextSize = 14
WarningTxt.TextColor3 = Color3.fromRGB(136, 136, 136)
WarningTxt.Text = "Some classes may not be available, please view your airline's flight information or ask a member of staff for the available classes to book."
WarningTxt.TextWrap = true
WarningTxt.Font = Enum.Font.Gotham
WarningTxt.TextWrapped = true
WarningTxt.TextScaled = true
WarningTxt.Parent = BookingFrame

local Class1 = Instance.new("TextLabel")
Class1.Name = "Class1"
Class1.LayoutOrder = 1
Class1.ZIndex = 3
Class1.Size = UDim2.new(0.4439315, 0, 0.0427112, 0)
Class1.BorderColor3 = Color3.fromRGB(27, 42, 53)
Class1.BackgroundTransparency = 1
Class1.Position = UDim2.new(0.1106876, 0, 0.2865503, 0)
Class1.BorderSizePixel = 0
Class1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Class1.FontSize = Enum.FontSize.Size32
Class1.TextSize = 30
Class1.TextColor3 = Color3.fromRGB(136, 136, 136)
Class1.Text = set.Class1Name
Class1.TextWrap = true
Class1.Font = Enum.Font.GothamSemibold
Class1.TextWrapped = true
Class1.TextXAlignment = Enum.TextXAlignment.Left
Class1.TextScaled = true
Class1.Parent = BookingFrame

local Class2SelectTxt = Instance.new("TextLabel")
Class2SelectTxt.Name = "Class2SelectTxt"
Class2SelectTxt.LayoutOrder = 1
Class2SelectTxt.ZIndex = 3
Class2SelectTxt.Size = UDim2.new(0.0996224, 0, 0.0613565, 0)
Class2SelectTxt.BorderColor3 = Color3.fromRGB(27, 42, 53)
Class2SelectTxt.BackgroundTransparency = 1
Class2SelectTxt.Position = UDim2.new(0.7257676, 0, 0.4080441, 0)
Class2SelectTxt.BorderSizePixel = 0
Class2SelectTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Class2SelectTxt.FontSize = Enum.FontSize.Size14
Class2SelectTxt.TextSize = 14
Class2SelectTxt.TextColor3 = Color3.fromRGB(255, 255, 255)
Class2SelectTxt.Text = "SELECT"
Class2SelectTxt.TextWrap = true
Class2SelectTxt.Font = Enum.Font.GothamSemibold
Class2SelectTxt.TextWrapped = true
Class2SelectTxt.TextScaled = true
Class2SelectTxt.Parent = BookingFrame
if set.Classes < 2 then
	Class2SelectTxt.Position = UDim2.new(1, 0, 1, 0)
end

local Class4 = Instance.new("TextLabel")
Class4.Name = "Class4"
Class4.LayoutOrder = 1
Class4.ZIndex = 3
Class4.Size = UDim2.new(0.4439315, 0, 0.0427112, 0)
Class4.BorderColor3 = Color3.fromRGB(27, 42, 53)
Class4.BackgroundTransparency = 1
Class4.Position = UDim2.new(0.1106876, 0, 0.6658534, 0)
Class4.BorderSizePixel = 0
Class4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Class4.FontSize = Enum.FontSize.Size32
Class4.TextSize = 30
Class4.TextColor3 = Color3.fromRGB(136, 136, 136)
Class4.Text = set.Class4Name
Class4.TextWrap = true
Class4.Font = Enum.Font.GothamSemibold
Class4.TextWrapped = true
Class4.TextXAlignment = Enum.TextXAlignment.Left
Class4.TextScaled = true
Class4.Parent = BookingFrame
if set.Classes < 4 then
	Class4.Position = UDim2.new(1, 0, 1, 0)
	Lines4.Visible = false
	
end

local Class3SelectTxt = Instance.new("TextLabel")
Class3SelectTxt.Name = "Class3SelectTxt"
Class3SelectTxt.LayoutOrder = 1
Class3SelectTxt.ZIndex = 3
Class3SelectTxt.Size = UDim2.new(0.0996224, 0, 0.0613565, 0)
Class3SelectTxt.BorderColor3 = Color3.fromRGB(27, 42, 53)
Class3SelectTxt.BackgroundTransparency = 1
Class3SelectTxt.Position = UDim2.new(0.7257676, 0, 0.5265752, 0)
Class3SelectTxt.BorderSizePixel = 0
Class3SelectTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Class3SelectTxt.FontSize = Enum.FontSize.Size14
Class3SelectTxt.TextSize = 14
Class3SelectTxt.TextColor3 = Color3.fromRGB(255, 255, 255)
Class3SelectTxt.Text = "SELECT"
Class3SelectTxt.TextWrap = true
Class3SelectTxt.Font = Enum.Font.GothamSemibold
Class3SelectTxt.TextWrapped = true
Class3SelectTxt.TextScaled = true
Class3SelectTxt.Parent = BookingFrame
if set.Classes < 3 then
	Class3SelectTxt.Position = UDim2.new(1, 0, 1, 0)
	Lines3.Visible = false
end

local NextTxt = Instance.new("TextLabel")
NextTxt.Name = "NextTxt"
NextTxt.LayoutOrder = 1
NextTxt.ZIndex = 3
NextTxt.Size = UDim2.new(0.0769015, 0, 0.0334672, 0)
NextTxt.BorderColor3 = Color3.fromRGB(27, 42, 53)
NextTxt.BackgroundTransparency = 1
NextTxt.Position = UDim2.new(0.4585562, 0, 0.81609, 0)
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
NextTxt.Parent = BookingFrame

local Class3Btn = Instance.new("TextButton")
Class3Btn.Name = "Class3Btn"
Class3Btn.Size = UDim2.new(0.2551796, 0, 0.0502008, 0)
Class3Btn.BackgroundTransparency = 1
Class3Btn.Position = UDim2.new(0.6488343, 0, 0.5315008, 0)
Class3Btn.BorderSizePixel = 0
Class3Btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Class3Btn.FontSize = Enum.FontSize.Size14
Class3Btn.TextTransparency = 1
Class3Btn.TextSize = 14
Class3Btn.TextColor3 = Color3.fromRGB(0, 0, 0)
Class3Btn.Text = " "
Class3Btn.TextWrap = true
Class3Btn.Font = Enum.Font.SourceSans
Class3Btn.TextWrapped = true
Class3Btn.TextScaled = true
Class3Btn.Parent = BookingFrame
if set.Classes < 3 then
	Class3Btn.Position = UDim2.new(1, 0, 1, 0)
end

local Class2 = Instance.new("TextLabel")
Class2.Name = "Class2"
Class2.LayoutOrder = 1
Class2.ZIndex = 3
Class2.Size = UDim2.new(0.4439315, 0, 0.0427112, 0)
Class2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Class2.BackgroundTransparency = 1
Class2.Position = UDim2.new(0.1106876, 0, 0.4092661, 0)
Class2.BorderSizePixel = 0
Class2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Class2.FontSize = Enum.FontSize.Size32
Class2.TextSize = 30
Class2.TextColor3 = Color3.fromRGB(136, 136, 136)
Class2.Text = set.Class2Name
Class2.TextWrap = true
Class2.Font = Enum.Font.GothamSemibold
Class2.TextWrapped = true
Class2.TextXAlignment = Enum.TextXAlignment.Left
Class2.TextScaled = true
Class2.Parent = BookingFrame
if set.Classes < 2 then
	Class2.Position = UDim2.new(1, 0, 1, 0)
	Lines2.Visible = false
end

local Class4SelectTxt = Instance.new("TextLabel")
Class4SelectTxt.Name = "Class4SelectTxt"
Class4SelectTxt.LayoutOrder = 1
Class4SelectTxt.ZIndex = 3
Class4SelectTxt.Size = UDim2.new(0.0996224, 0, 0.0613565, 0)
Class4SelectTxt.BorderColor3 = Color3.fromRGB(27, 42, 53)
Class4SelectTxt.BackgroundTransparency = 1
Class4SelectTxt.Position = UDim2.new(0.7222772, 0, 0.6562633, 0)
Class4SelectTxt.BorderSizePixel = 0
Class4SelectTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Class4SelectTxt.FontSize = Enum.FontSize.Size14
Class4SelectTxt.TextSize = 14
Class4SelectTxt.TextColor3 = Color3.fromRGB(255, 255, 255)
Class4SelectTxt.Text = "SELECT"
Class4SelectTxt.TextWrap = true
Class4SelectTxt.Font = Enum.Font.GothamSemibold
Class4SelectTxt.TextWrapped = true
Class4SelectTxt.TextScaled = true
Class4SelectTxt.Parent = BookingFrame
if set.Classes < 4 then
	Class4SelectTxt.Position = UDim2.new(1, 0, 1, 0)
end

local Class3 = Instance.new("TextLabel")
Class3.Name = "Class3"
Class3.LayoutOrder = 1
Class3.ZIndex = 3
Class3.Size = UDim2.new(0.4439315, 0, 0.0427112, 0)
Class3.BorderColor3 = Color3.fromRGB(27, 42, 53)
Class3.BackgroundTransparency = 1
Class3.Position = UDim2.new(0.1106876, 0, 0.5361652, 0)
Class3.BorderSizePixel = 0
Class3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Class3.FontSize = Enum.FontSize.Size32
Class3.TextSize = 30
Class3.TextColor3 = Color3.fromRGB(136, 136, 136)
Class3.Text = set.Class3Name
Class3.TextWrap = true
Class3.Font = Enum.Font.GothamSemibold
Class3.TextWrapped = true
Class3.TextXAlignment = Enum.TextXAlignment.Left
Class3.TextScaled = true
Class3.Parent = BookingFrame
if set.Classes < 3 then
	Class3.Position = UDim2.new(1, 0, 1, 0)
end

local Class4Btn = Instance.new("TextButton")
Class4Btn.Name = "Class4Btn"
Class4Btn.Size = UDim2.new(0.2551796, 0, 0.0502008, 0)
Class4Btn.BackgroundTransparency = 1
Class4Btn.Position = UDim2.new(0.6488343, 0, 0.6612079, 0)
Class4Btn.BorderSizePixel = 0
Class4Btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Class4Btn.FontSize = Enum.FontSize.Size14
Class4Btn.TextTransparency = 1
Class4Btn.TextSize = 14
Class4Btn.TextColor3 = Color3.fromRGB(0, 0, 0)
Class4Btn.Text = " "
Class4Btn.TextWrap = true
Class4Btn.Font = Enum.Font.SourceSans
Class4Btn.TextWrapped = true
Class4Btn.TextScaled = true
Class4Btn.Parent = BookingFrame
if set.Classes < 4 then
	Class4Btn.Position = UDim2.new(1, 0, 1, 0)
end

local WhiteBG = Instance.new("Frame")
WhiteBG.Name = "WhiteBG"
WhiteBG.Size = UDim2.new(0.8738809, 0, 0.7014167, 0)
WhiteBG.Position = UDim2.new(0.0598441, 0, 0.2302543, 0)
WhiteBG.BorderSizePixel = 0
WhiteBG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WhiteBG.Parent = BookingFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0.015, 0)
UICorner.Parent = WhiteBG

local Class1Btn = Instance.new("TextButton")
Class1Btn.Name = "Class1Btn"
Class1Btn.Size = UDim2.new(0.2551796, 0, 0.0502008, 0)
Class1Btn.BackgroundTransparency = 1
Class1Btn.Position = UDim2.new(0.645344, 0, 0.2832442, 0)
Class1Btn.BorderSizePixel = 0
Class1Btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Class1Btn.FontSize = Enum.FontSize.Size14
Class1Btn.TextTransparency = 1
Class1Btn.TextSize = 14
Class1Btn.TextColor3 = Color3.fromRGB(0, 0, 0)
Class1Btn.Text = " "
Class1Btn.TextWrap = true
Class1Btn.Font = Enum.Font.SourceSans
Class1Btn.TextWrapped = true
Class1Btn.TextScaled = true
Class1Btn.Parent = BookingFrame

local NextFrame = Instance.new("Frame")
NextFrame.Name = "NextFrame"
NextFrame.Size = UDim2.new(0.2569211, 0, 0.0502008, 0)
NextFrame.Position = UDim2.new(0.3674502, 0, 0.8075636, 0)
NextFrame.BorderSizePixel = 0
NextFrame.BackgroundColor3 = Color3.fromRGB(136, 136, 136)
NextFrame.Parent = BookingFrame

local UICorner1 = Instance.new("UICorner")
UICorner1.CornerRadius = UDim.new(0.3, 0)
UICorner1.Parent = NextFrame

local SelectionFrame2 = Instance.new("Frame")
SelectionFrame2.Name = "SelectionFrame2"
SelectionFrame2.Size = UDim2.new(0.2569211, 0, 0.0502008, 0)
SelectionFrame2.Position = UDim2.new(0.6488345, 0, 0.4143283, 0)
SelectionFrame2.BorderSizePixel = 0
SelectionFrame2.BackgroundColor3 = Color3.fromRGB(13, 209, 103)
SelectionFrame2.Parent = BookingFrame
if set.Classes < 2 then
	SelectionFrame2.Position = UDim2.new(1, 0, 1, 0)
end

local UICorner2 = Instance.new("UICorner")
UICorner2.CornerRadius = UDim.new(0.3, 0)
UICorner2.Parent = SelectionFrame2

local Class2Btn = Instance.new("TextButton")
Class2Btn.Name = "Class2Btn"
Class2Btn.Size = UDim2.new(0.2551796, 0, 0.0502008, 0)
Class2Btn.BackgroundTransparency = 1
Class2Btn.Position = UDim2.new(0.6523247, 0, 0.4129513, 0)
Class2Btn.BorderSizePixel = 0
Class2Btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Class2Btn.FontSize = Enum.FontSize.Size14
Class2Btn.TextTransparency = 1
Class2Btn.TextSize = 14
Class2Btn.TextColor3 = Color3.fromRGB(0, 0, 0)
Class2Btn.Text = " "
Class2Btn.TextWrap = true
Class2Btn.Font = Enum.Font.SourceSans
Class2Btn.TextWrapped = true
Class2Btn.TextScaled = true
Class2Btn.Parent = BookingFrame
if set.Classes < 2 then
	Class2SelectTxt.Position = UDim2.new(1, 0, 1, 0)
end

local Class1SelectTxt = Instance.new("TextLabel")
Class1SelectTxt.Name = "Class1SelectTxt"
Class1SelectTxt.LayoutOrder = 1
Class1SelectTxt.ZIndex = 3
Class1SelectTxt.Size = UDim2.new(0.0996224, 0, 0.0613565, 0)
Class1SelectTxt.BorderColor3 = Color3.fromRGB(27, 42, 53)
Class1SelectTxt.BackgroundTransparency = 1
Class1SelectTxt.Position = UDim2.new(0.7222772, 0, 0.2769599, 0)
Class1SelectTxt.BorderSizePixel = 0
Class1SelectTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Class1SelectTxt.FontSize = Enum.FontSize.Size14
Class1SelectTxt.TextSize = 14
Class1SelectTxt.TextColor3 = Color3.fromRGB(255, 255, 255)
Class1SelectTxt.Text = "SELECT"
Class1SelectTxt.TextWrap = true
Class1SelectTxt.Font = Enum.Font.GothamSemibold
Class1SelectTxt.TextWrapped = true
Class1SelectTxt.TextScaled = true
Class1SelectTxt.Parent = BookingFrame

local SelectionFrame1 = Instance.new("Frame")
SelectionFrame1.Name = "SelectionFrame1"
SelectionFrame1.Size = UDim2.new(0.2569211, 0, 0.0502008, 0)
SelectionFrame1.Position = UDim2.new(0.6453441, 0, 0.2832442, 0)
SelectionFrame1.BorderSizePixel = 0
SelectionFrame1.BackgroundColor3 = Color3.fromRGB(13, 209, 103)
SelectionFrame1.Parent = BookingFrame

local UICorner3 = Instance.new("UICorner")
UICorner3.CornerRadius = UDim.new(0.3, 0)
UICorner3.Parent = SelectionFrame1

local SelectionFrame4 = Instance.new("Frame")
SelectionFrame4.Name = "SelectionFrame4"
SelectionFrame4.Size = UDim2.new(0.2569211, 0, 0.0502008, 0)
SelectionFrame4.Position = UDim2.new(0.6453441, 0, 0.6625472, 0)
SelectionFrame4.BorderSizePixel = 0
SelectionFrame4.BackgroundColor3 = Color3.fromRGB(13, 209, 103)
SelectionFrame4.Parent = BookingFrame
if set.Classes < 4 then
	SelectionFrame4.Position = UDim2.new(1, 0, 1, 0)
end

local UICorner4 = Instance.new("UICorner")
UICorner4.CornerRadius = UDim.new(0.3, 0)
UICorner4.Parent = SelectionFrame4

local SelectionFrame3 = Instance.new("Frame")
SelectionFrame3.Name = "SelectionFrame3"
SelectionFrame3.Size = UDim2.new(0.2569211, 0, 0.0502008, 0)
SelectionFrame3.Position = UDim2.new(0.6488345, 0, 0.5342538, 0)
SelectionFrame3.BorderSizePixel = 0
SelectionFrame3.BackgroundColor3 = Color3.fromRGB(13, 209, 103)
SelectionFrame3.Parent = BookingFrame
if set.Classes < 3 then
	SelectionFrame3.Position = UDim2.new(1, 0, 1, 0)
end

local UICorner5 = Instance.new("UICorner")
UICorner5.CornerRadius = UDim.new(0.3, 0)
UICorner5.Parent = SelectionFrame3

local NextBtn = Instance.new("TextButton")
NextBtn.Name = "NextBtn"
NextBtn.Size = UDim2.new(0.2569211, 0, 0.0502008, 0)
NextBtn.BackgroundTransparency = 1
NextBtn.Position = UDim2.new(0.3674502, 0, 0.8075637, 0)
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
NextBtn.Parent = BookingFrame

local Class1Seats = Instance.new("TextLabel")
Class1Seats.Name = "Class1Seats"
Class1Seats.LayoutOrder = 1
Class1Seats.ZIndex = 3
Class1Seats.Size = UDim2.new(0.4439315, 0, 0.0304887, 0)
Class1Seats.BorderColor3 = Color3.fromRGB(27, 42, 53)
Class1Seats.BackgroundTransparency = 1
Class1Seats.Position = UDim2.new(0.1106876, 0, 0.3283913, 0)
Class1Seats.BorderSizePixel = 0
Class1Seats.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Class1Seats.FontSize = Enum.FontSize.Size32
Class1Seats.TextSize = 30
Class1Seats.TextColor3 = Color3.fromRGB(136, 136, 136)
Class1Seats.Text = "Remaining Seats: 0"
Class1Seats.TextWrap = true
Class1Seats.Font = Enum.Font.GothamSemibold
Class1Seats.TextWrapped = true
Class1Seats.TextXAlignment = Enum.TextXAlignment.Left
Class1Seats.TextScaled = true
Class1Seats.Parent = BookingFrame

local Class2Seats = Instance.new("TextLabel")
Class2Seats.Name = "Class2Seats"
Class2Seats.LayoutOrder = 1
Class2Seats.ZIndex = 3
Class2Seats.Size = UDim2.new(0.4439315, 0, 0.0304887, 0)
Class2Seats.BorderColor3 = Color3.fromRGB(27, 42, 53)
Class2Seats.BackgroundTransparency = 1
Class2Seats.Position = UDim2.new(0.1106876, 0, 0.4511249, 0)
Class2Seats.BorderSizePixel = 0
Class2Seats.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Class2Seats.FontSize = Enum.FontSize.Size32
Class2Seats.TextSize = 30
Class2Seats.TextColor3 = Color3.fromRGB(136, 136, 136)
Class2Seats.Text = "Remaining Seats: 0"
Class2Seats.TextWrap = true
Class2Seats.Font = Enum.Font.GothamSemibold
Class2Seats.TextWrapped = true
Class2Seats.TextXAlignment = Enum.TextXAlignment.Left
Class2Seats.TextScaled = true
Class2Seats.Parent = BookingFrame
if set.Classes < 2 then
	Class2Seats.Position = UDim2.new(1, 0, 1, 0)
end

local Class3Seats = Instance.new("TextLabel")
Class3Seats.Name = "Class3Seats"
Class3Seats.LayoutOrder = 1
Class3Seats.ZIndex = 3
Class3Seats.Size = UDim2.new(0.4439315, 0, 0.0304887, 0)
Class3Seats.BorderColor3 = Color3.fromRGB(27, 42, 53)
Class3Seats.BackgroundTransparency = 1
Class3Seats.Position = UDim2.new(0.1106876, 0, 0.5836214, 0)
Class3Seats.BorderSizePixel = 0
Class3Seats.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Class3Seats.FontSize = Enum.FontSize.Size32
Class3Seats.TextSize = 30
Class3Seats.TextColor3 = Color3.fromRGB(136, 136, 136)
Class3Seats.Text = "Remaining Seats: 0"
Class3Seats.TextWrap = true
Class3Seats.Font = Enum.Font.GothamSemibold
Class3Seats.TextWrapped = true
Class3Seats.TextXAlignment = Enum.TextXAlignment.Left
Class3Seats.TextScaled = true
Class3Seats.Parent = BookingFrame
if set.Classes < 3 then
	Class3Seats.Position = UDim2.new(1, 0, 1, 0)
end

local Class4Seats = Instance.new("TextLabel")
Class4Seats.Name = "Class4Seats"
Class4Seats.LayoutOrder = 1
Class4Seats.ZIndex = 3
Class4Seats.Size = UDim2.new(0.4439315, 0, 0.0304887, 0)
Class4Seats.BorderColor3 = Color3.fromRGB(27, 42, 53)
Class4Seats.BackgroundTransparency = 1
Class4Seats.Position = UDim2.new(0.1089424, 0, 0.7119339, 0)
Class4Seats.BorderSizePixel = 0
Class4Seats.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Class4Seats.FontSize = Enum.FontSize.Size32
Class4Seats.TextSize = 30
Class4Seats.TextColor3 = Color3.fromRGB(136, 136, 136)
Class4Seats.Text = "Remaining Seats: 0"
Class4Seats.TextWrap = true
Class4Seats.Font = Enum.Font.GothamSemibold
Class4Seats.TextWrapped = true
Class4Seats.TextXAlignment = Enum.TextXAlignment.Left
Class4Seats.TextScaled = true
Class4Seats.Parent = BookingFrame
if set.Classes < 4 then
	Class4Seats.Position = UDim2.new(1, 0, 1, 0)
end

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

local UICorner6 = Instance.new("UICorner")
UICorner6.CornerRadius = UDim.new(1, 0)
UICorner6.Parent = BeginTurning

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

local ClosedTxt = Instance.new("TextLabel")
ClosedTxt.Name = "ClosedTxt"
ClosedTxt.Visible = false
ClosedTxt.Size = UDim2.new(0.492356, 0, 0.104543, 0)
ClosedTxt.BackgroundTransparency = 1
ClosedTxt.Position = UDim2.new(0.2530541, 0, 0.2482566, 0)
ClosedTxt.BorderSizePixel = 0
ClosedTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClosedTxt.FontSize = Enum.FontSize.Size14
ClosedTxt.TextSize = 14
ClosedTxt.TextColor3 = Color3.fromRGB(77, 77, 77)
ClosedTxt.Text = "Sorry, the self check-in is currently closed. Come back later."
ClosedTxt.TextWrap = true
ClosedTxt.Font = Enum.Font.SourceSans
ClosedTxt.TextWrapped = true
ClosedTxt.TextScaled = true
ClosedTxt.Parent = StartingFrame

local FlightInfo = Instance.new("Frame")
FlightInfo.Name = "FlightInfo"
FlightInfo.Visible = false
FlightInfo.Size = UDim2.new(1, 0, 1, 0)
FlightInfo.BackgroundTransparency = 1
FlightInfo.Position = UDim2.new(0, 0, 1, 0)
FlightInfo.BorderSizePixel = 0
FlightInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FlightInfo.Parent = Main

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
Flight.Text = "Aircraft:"
Flight.TextWrap = true
Flight.Font = Enum.Font.GothamSemibold
Flight.TextWrapped = true
Flight.TextXAlignment = Enum.TextXAlignment.Left
Flight.TextScaled = true
Flight.Parent = FlightInfo

local NextTxt1 = Instance.new("TextLabel")
NextTxt1.Name = "NextTxt"
NextTxt1.LayoutOrder = 1
NextTxt1.ZIndex = 3
NextTxt1.Size = UDim2.new(0.0769015, 0, 0.0334672, 0)
NextTxt1.BorderColor3 = Color3.fromRGB(27, 42, 53)
NextTxt1.BackgroundTransparency = 1
NextTxt1.Position = UDim2.new(0.4637918, 0, 0.8607204, 0)
NextTxt1.BorderSizePixel = 0
NextTxt1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NextTxt1.FontSize = Enum.FontSize.Size14
NextTxt1.TextSize = 14
NextTxt1.TextColor3 = Color3.fromRGB(255, 255, 255)
NextTxt1.Text = "NEXT"
NextTxt1.TextWrap = true
NextTxt1.Font = Enum.Font.GothamSemibold
NextTxt1.TextWrapped = true
NextTxt1.TextScaled = true
NextTxt1.Parent = FlightInfo

local FlightNum = Instance.new("TextLabel")
FlightNum.Name = "FlightNum"
FlightNum.LayoutOrder = 1
FlightNum.ZIndex = 3
FlightNum.Size = UDim2.new(0.4439315, 0, 0.0427112, 0)
FlightNum.BorderColor3 = Color3.fromRGB(27, 42, 53)
FlightNum.BackgroundTransparency = 1
FlightNum.Position = UDim2.new(0.505103, 0, 0.3548906, 0)
FlightNum.BorderSizePixel = 0
FlightNum.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FlightNum.FontSize = Enum.FontSize.Size32
FlightNum.TextSize = 30
FlightNum.TextColor3 = Color3.fromRGB(136, 136, 136)
FlightNum.Text = "FE504"
FlightNum.TextWrap = true
FlightNum.Font = Enum.Font.GothamSemibold
FlightNum.TextWrapped = true
FlightNum.TextXAlignment = Enum.TextXAlignment.Left
FlightNum.TextScaled = true
FlightNum.Parent = FlightInfo

local WhiteBG1 = Instance.new("Frame")
WhiteBG1.Name = "WhiteBG"
WhiteBG1.Size = UDim2.new(0.8738809, 0, 0.7014167, 0)
WhiteBG1.Position = UDim2.new(0.0598441, 0, 0.2302543, 0)
WhiteBG1.BorderSizePixel = 0
WhiteBG1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WhiteBG1.Parent = FlightInfo

local UICorner7 = Instance.new("UICorner")
UICorner7.CornerRadius = UDim.new(0.015, 0)
UICorner7.Parent = WhiteBG1

local NextFrame1 = Instance.new("Frame")
NextFrame1.Name = "NextFrame"
NextFrame1.Size = UDim2.new(0.2569211, 0, 0.0502008, 0)
NextFrame1.Position = UDim2.new(0.3726858, 0, 0.852194, 0)
NextFrame1.BorderSizePixel = 0
NextFrame1.BackgroundColor3 = Color3.fromRGB(136, 136, 136)
NextFrame1.Parent = FlightInfo

local UICorner8 = Instance.new("UICorner")
UICorner8.CornerRadius = UDim.new(0.3, 0)
UICorner8.Parent = NextFrame1

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
Gate.Text = "Boarding:"
Gate.TextWrap = true
Gate.Font = Enum.Font.GothamSemibold
Gate.TextWrapped = true
Gate.TextXAlignment = Enum.TextXAlignment.Left
Gate.TextScaled = true
Gate.Parent = FlightInfo

local GateNum = Instance.new("TextLabel")
GateNum.Name = "GateNum"
GateNum.LayoutOrder = 1
GateNum.ZIndex = 3
GateNum.Size = UDim2.new(0.4439315, 0, 0.0427112, 0)
GateNum.BorderColor3 = Color3.fromRGB(27, 42, 53)
GateNum.BackgroundTransparency = 1
GateNum.Position = UDim2.new(0.505103, 0, 0.4176521, 0)
GateNum.BorderSizePixel = 0
GateNum.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GateNum.FontSize = Enum.FontSize.Size32
GateNum.TextSize = 30
GateNum.TextColor3 = Color3.fromRGB(136, 136, 136)
GateNum.Text = "1"
GateNum.TextWrap = true
GateNum.Font = Enum.Font.GothamSemibold
GateNum.TextWrapped = true
GateNum.TextXAlignment = Enum.TextXAlignment.Left
GateNum.TextScaled = true
GateNum.Parent = FlightInfo

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
Dest.Text = "Departure:"
Dest.TextWrap = true
Dest.Font = Enum.Font.GothamSemibold
Dest.TextWrapped = true
Dest.TextXAlignment = Enum.TextXAlignment.Left
Dest.TextScaled = true
Dest.Parent = FlightInfo

local DestTxt = Instance.new("TextLabel")
DestTxt.Name = "DestTxt"
DestTxt.LayoutOrder = 1
DestTxt.ZIndex = 3
DestTxt.Size = UDim2.new(0.4439315, 0, 0.0427112, 0)
DestTxt.BorderColor3 = Color3.fromRGB(27, 42, 53)
DestTxt.BackgroundTransparency = 1
DestTxt.Position = UDim2.new(0.505103, 0, 0.5473592, 0)
DestTxt.BorderSizePixel = 0
DestTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DestTxt.FontSize = Enum.FontSize.Size32
DestTxt.TextSize = 30
DestTxt.TextColor3 = Color3.fromRGB(136, 136, 136)
DestTxt.Text = "Alicante"
DestTxt.TextWrap = true
DestTxt.Font = Enum.Font.GothamSemibold
DestTxt.TextWrapped = true
DestTxt.TextXAlignment = Enum.TextXAlignment.Left
DestTxt.TextScaled = true
DestTxt.Parent = FlightInfo

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
DepTime.Text = "Arrival:"
DepTime.TextWrap = true
DepTime.Font = Enum.Font.GothamSemibold
DepTime.TextWrapped = true
DepTime.TextXAlignment = Enum.TextXAlignment.Left
DepTime.TextScaled = true
DepTime.Parent = FlightInfo

local DepTimeTxt = Instance.new("TextLabel")
DepTimeTxt.Name = "DepTimeTxt"
DepTimeTxt.LayoutOrder = 1
DepTimeTxt.ZIndex = 3
DepTimeTxt.Size = UDim2.new(0.4439315, 0, 0.0427112, 0)
DepTimeTxt.BorderColor3 = Color3.fromRGB(27, 42, 53)
DepTimeTxt.BackgroundTransparency = 1
DepTimeTxt.Position = UDim2.new(0.5051029, 0, 0.6170942, 0)
DepTimeTxt.BorderSizePixel = 0
DepTimeTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DepTimeTxt.FontSize = Enum.FontSize.Size32
DepTimeTxt.TextSize = 30
DepTimeTxt.TextColor3 = Color3.fromRGB(136, 136, 136)
DepTimeTxt.Text = "15:20"
DepTimeTxt.TextWrap = true
DepTimeTxt.Font = Enum.Font.GothamSemibold
DepTimeTxt.TextWrapped = true
DepTimeTxt.TextXAlignment = Enum.TextXAlignment.Left
DepTimeTxt.TextScaled = true
DepTimeTxt.Parent = FlightInfo

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
ArrivalTime.Text = "Flight:"
ArrivalTime.TextWrap = true
ArrivalTime.Font = Enum.Font.GothamSemibold
ArrivalTime.TextWrapped = true
ArrivalTime.TextXAlignment = Enum.TextXAlignment.Left
ArrivalTime.TextScaled = true
ArrivalTime.Parent = FlightInfo

local ArrivalTimeTxt = Instance.new("TextLabel")
ArrivalTimeTxt.Name = "ArrivalTimeTxt"
ArrivalTimeTxt.LayoutOrder = 1
ArrivalTimeTxt.ZIndex = 3
ArrivalTimeTxt.Size = UDim2.new(0.4439315, 0, 0.0427112, 0)
ArrivalTimeTxt.BorderColor3 = Color3.fromRGB(27, 42, 53)
ArrivalTimeTxt.BackgroundTransparency = 1
ArrivalTimeTxt.Position = UDim2.new(0.505103, 0, 0.6910133, 0)
ArrivalTimeTxt.BorderSizePixel = 0
ArrivalTimeTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ArrivalTimeTxt.FontSize = Enum.FontSize.Size32
ArrivalTimeTxt.TextSize = 30
ArrivalTimeTxt.TextColor3 = Color3.fromRGB(136, 136, 136)
ArrivalTimeTxt.Text = "23:55"
ArrivalTimeTxt.TextWrap = true
ArrivalTimeTxt.Font = Enum.Font.GothamSemibold
ArrivalTimeTxt.TextWrapped = true
ArrivalTimeTxt.TextXAlignment = Enum.TextXAlignment.Left
ArrivalTimeTxt.TextScaled = true
ArrivalTimeTxt.Parent = FlightInfo

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
Aircraft.Text = "Gate:"
Aircraft.TextWrap = true
Aircraft.Font = Enum.Font.GothamSemibold
Aircraft.TextWrapped = true
Aircraft.TextXAlignment = Enum.TextXAlignment.Left
Aircraft.TextScaled = true
Aircraft.Parent = FlightInfo

local AircraftTxt = Instance.new("TextLabel")
AircraftTxt.Name = "AircraftTxt"
AircraftTxt.LayoutOrder = 1
AircraftTxt.ZIndex = 3
AircraftTxt.Size = UDim2.new(0.4439315, 0, 0.0427112, 0)
AircraftTxt.BorderColor3 = Color3.fromRGB(27, 42, 53)
AircraftTxt.BackgroundTransparency = 1
AircraftTxt.Position = UDim2.new(0.505103, 0, 0.762143, 0)
AircraftTxt.BorderSizePixel = 0
AircraftTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AircraftTxt.FontSize = Enum.FontSize.Size32
AircraftTxt.TextSize = 30
AircraftTxt.TextColor3 = Color3.fromRGB(136, 136, 136)
AircraftTxt.Text = "B787-900"
AircraftTxt.TextWrap = true
AircraftTxt.Font = Enum.Font.GothamSemibold
AircraftTxt.TextWrapped = true
AircraftTxt.TextXAlignment = Enum.TextXAlignment.Left
AircraftTxt.TextScaled = true
AircraftTxt.Parent = FlightInfo

local NextBtn1 = Instance.new("TextButton")
NextBtn1.Name = "NextBtn"
NextBtn1.Size = UDim2.new(0.2569211, 0, 0.0502008, 0)
NextBtn1.BackgroundTransparency = 1
NextBtn1.Position = UDim2.new(0.3726858, 0, 0.8521941, 0)
NextBtn1.BorderSizePixel = 0
NextBtn1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NextBtn1.FontSize = Enum.FontSize.Size14
NextBtn1.TextTransparency = 1
NextBtn1.TextSize = 14
NextBtn1.TextColor3 = Color3.fromRGB(0, 0, 0)
NextBtn1.Text = " "
NextBtn1.TextWrap = true
NextBtn1.Font = Enum.Font.SourceSans
NextBtn1.TextWrapped = true
NextBtn1.TextScaled = true
NextBtn1.Parent = FlightInfo

local FlightInfo1 = Instance.new("TextLabel")
FlightInfo1.Name = "FlightInfo"
FlightInfo1.LayoutOrder = 1
FlightInfo1.ZIndex = 3
FlightInfo1.Size = UDim2.new(0.5451642, 0, 0.062389, 0)
FlightInfo1.BorderColor3 = Color3.fromRGB(27, 42, 53)
FlightInfo1.BackgroundTransparency = 1
FlightInfo1.Position = UDim2.new(0.0984711, 0, 0.2447093, 0)
FlightInfo1.BorderSizePixel = 0
FlightInfo1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FlightInfo1.FontSize = Enum.FontSize.Size32
FlightInfo1.TextSize = 30
FlightInfo1.TextColor3 = Color3.fromRGB(136, 136, 136)
FlightInfo1.Text = "Information"
FlightInfo1.TextWrap = true
FlightInfo1.Font = Enum.Font.GothamSemibold
FlightInfo1.TextWrapped = true
FlightInfo1.TextXAlignment = Enum.TextXAlignment.Left
FlightInfo1.TextScaled = true
FlightInfo1.Parent = FlightInfo

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
BoarTime.Text = "Destination:"
BoarTime.TextWrap = true
BoarTime.Font = Enum.Font.GothamSemibold
BoarTime.TextWrapped = true
BoarTime.TextXAlignment = Enum.TextXAlignment.Left
BoarTime.TextScaled = true
BoarTime.Parent = FlightInfo

local BoarTimeTxt = Instance.new("TextLabel")
BoarTimeTxt.Name = "BoarTimeTxt"
BoarTimeTxt.LayoutOrder = 1
BoarTimeTxt.ZIndex = 3
BoarTimeTxt.Size = UDim2.new(0.4439315, 0, 0.0427112, 0)
BoarTimeTxt.BorderColor3 = Color3.fromRGB(27, 42, 53)
BoarTimeTxt.BackgroundTransparency = 1
BoarTimeTxt.Position = UDim2.new(0.5051029, 0, 0.4804136, 0)
BoarTimeTxt.BorderSizePixel = 0
BoarTimeTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BoarTimeTxt.FontSize = Enum.FontSize.Size32
BoarTimeTxt.TextSize = 30
BoarTimeTxt.TextColor3 = Color3.fromRGB(136, 136, 136)
BoarTimeTxt.Text = "15:10"
BoarTimeTxt.TextWrap = true
BoarTimeTxt.Font = Enum.Font.GothamSemibold
BoarTimeTxt.TextWrapped = true
BoarTimeTxt.TextXAlignment = Enum.TextXAlignment.Left
BoarTimeTxt.TextScaled = true
BoarTimeTxt.Parent = FlightInfo

local Timeline = Instance.new("Frame")
Timeline.Name = "Timeline"
Timeline.Visible = false
Timeline.Size = UDim2.new(1, 0, 1, 0)
Timeline.BackgroundTransparency = 1
Timeline.BorderSizePixel = 0
Timeline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Timeline.Parent = Main

local TimeLine2 = Instance.new("Frame")
TimeLine2.Name = "TimeLine2"
TimeLine2.Size = UDim2.new(0.4156167, 0, 0.0055788, 0)
TimeLine2.Position = UDim2.new(0.2867444, 0, 0.155232, 0)
TimeLine2.BorderSizePixel = 0
TimeLine2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TimeLine2.Parent = Timeline

local TimeLine3 = Instance.new("Frame")
TimeLine3.Name = "TimeLine3"
TimeLine3.Size = UDim2.new(0.2097314, 0, 0.0055779, 0)
TimeLine3.Position = UDim2.new(0.6922134, 0, 0.1552877, 0)
TimeLine3.BorderSizePixel = 0
TimeLine3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TimeLine3.Parent = Timeline

local ToCircle = Instance.new("Frame")
ToCircle.Name = "ToCircle"
ToCircle.Size = UDim2.new(0.0401985, 0, 0.0320727, 0)
ToCircle.Position = UDim2.new(0.4771391, 0, 0.1410085, 0)
ToCircle.BorderSizePixel = 0
ToCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToCircle.Parent = Timeline

local UICorner9 = Instance.new("UICorner")
UICorner9.CornerRadius = UDim.new(1, 0)
UICorner9.Parent = ToCircle

local BookTxt = Instance.new("TextLabel")
BookTxt.Name = "BookTxt"
BookTxt.LayoutOrder = 1
BookTxt.ZIndex = 3
BookTxt.Size = UDim2.new(0.0751538, 0, 0.041834, 0)
BookTxt.BorderColor3 = Color3.fromRGB(27, 42, 53)
BookTxt.BackgroundTransparency = 1
BookTxt.Position = UDim2.new(0.0519943, 0, 0.1694498, 0)
BookTxt.BorderSizePixel = 0
BookTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BookTxt.FontSize = Enum.FontSize.Size14
BookTxt.TextSize = 14
BookTxt.TextColor3 = Color3.fromRGB(255, 255, 255)
BookTxt.Text = "Book"
BookTxt.TextWrap = true
BookTxt.Font = Enum.Font.GothamSemibold
BookTxt.TextWrapped = true
BookTxt.TextScaled = true
BookTxt.Parent = Timeline

local PrintTxt = Instance.new("TextLabel")
PrintTxt.Name = "PrintTxt"
PrintTxt.LayoutOrder = 1
PrintTxt.ZIndex = 3
PrintTxt.Size = UDim2.new(0.0699105, 0, 0.0348617, 0)
PrintTxt.BorderColor3 = Color3.fromRGB(27, 42, 53)
PrintTxt.BackgroundTransparency = 1
PrintTxt.Position = UDim2.new(0.8773199, 0, 0.172847, 0)
PrintTxt.BorderSizePixel = 0
PrintTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PrintTxt.FontSize = Enum.FontSize.Size14
PrintTxt.TextSize = 14
PrintTxt.TextColor3 = Color3.fromRGB(255, 255, 255)
PrintTxt.Text = "Print"
PrintTxt.TextWrap = true
PrintTxt.Font = Enum.Font.GothamSemibold
PrintTxt.TextWrapped = true
PrintTxt.TextScaled = true
PrintTxt.Parent = Timeline

local ToCTxt = Instance.new("TextLabel")
ToCTxt.Name = "ToCTxt"
ToCTxt.LayoutOrder = 1
ToCTxt.ZIndex = 3
ToCTxt.Size = UDim2.new(0.1450642, 0, 0.0432285, 0)
ToCTxt.BorderColor3 = Color3.fromRGB(27, 42, 53)
ToCTxt.BackgroundTransparency = 1
ToCTxt.Position = UDim2.new(0.42341, 0, 0.1714526, 0)
ToCTxt.BorderSizePixel = 0
ToCTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToCTxt.FontSize = Enum.FontSize.Size14
ToCTxt.TextSize = 14
ToCTxt.TextColor3 = Color3.fromRGB(255, 255, 255)
ToCTxt.Text = "Terms & Conditions"
ToCTxt.TextWrap = true
ToCTxt.Font = Enum.Font.GothamSemibold
ToCTxt.TextWrapped = true
ToCTxt.TextScaled = true
ToCTxt.Parent = Timeline

local TimeLine1 = Instance.new("Frame")
TimeLine1.Name = "TimeLine1"
TimeLine1.Size = UDim2.new(0.2097314, 0, 0.0055779, 0)
TimeLine1.Position = UDim2.new(0.0912336, 0, 0.1552877, 0)
TimeLine1.BorderSizePixel = 0
TimeLine1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TimeLine1.Parent = Timeline

local PrintCircle = Instance.new("Frame")
PrintCircle.Name = "PrintCircle"
PrintCircle.Size = UDim2.new(0.0401985, 0, 0.0320727, 0)
PrintCircle.Position = UDim2.new(0.8931069, 0, 0.1410085, 0)
PrintCircle.BorderSizePixel = 0
PrintCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PrintCircle.Parent = Timeline

local UICorner10 = Instance.new("UICorner")
UICorner10.CornerRadius = UDim.new(1, 0)
UICorner10.Parent = PrintCircle

local BookCircle = Instance.new("Frame")
BookCircle.Name = "BookCircle"
BookCircle.Size = UDim2.new(0.0401985, 0, 0.0320727, 0)
BookCircle.Position = UDim2.new(0.0699106, 0, 0.1410085, 0)
BookCircle.BorderSizePixel = 0
BookCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BookCircle.Parent = Timeline

local UICorner11 = Instance.new("UICorner")
UICorner11.CornerRadius = UDim.new(1, 0)
UICorner11.Parent = BookCircle

local TocFrame = Instance.new("Frame")
TocFrame.Name = "TocFrame"
TocFrame.Visible = false
TocFrame.Size = UDim2.new(1, 0, 1, 0)
TocFrame.BackgroundTransparency = 1
TocFrame.Position = UDim2.new(0, 0, 1, 0)
TocFrame.BorderSizePixel = 0
TocFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TocFrame.Parent = Main

local Lines4 = Instance.new("Frame")
Lines4.Name = "Lines"
Lines4.ZIndex = 4
Lines4.Size = UDim2.new(0.813, 0, 0.0015174, 0)
Lines4.Position = UDim2.new(0.0929786, 0, 0.3508354, 0)
Lines4.BorderSizePixel = 0
Lines4.BackgroundColor3 = Color3.fromRGB(219, 219, 220)
Lines4.Parent = TocFrame

local Text = Instance.new("TextLabel")
Text.Name = "Text"
Text.LayoutOrder = 1
Text.ZIndex = 3
Text.Size = UDim2.new(0.4826992, 0, 0.0393825, 0)
Text.BorderColor3 = Color3.fromRGB(27, 42, 53)
Text.BackgroundTransparency = 1
Text.Position = UDim2.new(0.0914903, 0, 0.2982472, 0)
Text.BorderSizePixel = 0
Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text.FontSize = Enum.FontSize.Size32
Text.TextSize = 30
Text.TextColor3 = Color3.fromRGB(136, 136, 136)
Text.Text = "Terms & Conditions"
Text.TextWrap = true
Text.Font = Enum.Font.GothamSemibold
Text.TextWrapped = true
Text.TextXAlignment = Enum.TextXAlignment.Left
Text.TextScaled = true
Text.Parent = TocFrame

local NextBtn2 = Instance.new("TextButton")
NextBtn2.Name = "NextBtn"
NextBtn2.Visible = false
NextBtn2.Size = UDim2.new(0.2569211, 0, 0.0502008, 0)
NextBtn2.BackgroundTransparency = 1
NextBtn2.Position = UDim2.new(0.3674502, 0, 0.8075637, 0)
NextBtn2.BorderSizePixel = 0
NextBtn2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NextBtn2.FontSize = Enum.FontSize.Size14
NextBtn2.TextTransparency = 1
NextBtn2.TextSize = 14
NextBtn2.TextColor3 = Color3.fromRGB(0, 0, 0)
NextBtn2.Text = " "
NextBtn2.TextWrap = true
NextBtn2.Font = Enum.Font.SourceSans
NextBtn2.TextWrapped = true
NextBtn2.TextScaled = true
NextBtn2.Parent = TocFrame

local NextTxt2 = Instance.new("TextLabel")
NextTxt2.Name = "NextTxt"
NextTxt2.LayoutOrder = 1
NextTxt2.ZIndex = 3
NextTxt2.Visible = false
NextTxt2.Size = UDim2.new(0.0769015, 0, 0.0334672, 0)
NextTxt2.BorderColor3 = Color3.fromRGB(27, 42, 53)
NextTxt2.BackgroundTransparency = 1
NextTxt2.Position = UDim2.new(0.4585562, 0, 0.81609, 0)
NextTxt2.BorderSizePixel = 0
NextTxt2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NextTxt2.FontSize = Enum.FontSize.Size14
NextTxt2.TextSize = 14
NextTxt2.TextColor3 = Color3.fromRGB(255, 255, 255)
NextTxt2.Text = "NEXT"
NextTxt2.TextWrap = true
NextTxt2.Font = Enum.Font.GothamSemibold
NextTxt2.TextWrapped = true
NextTxt2.TextScaled = true
NextTxt2.Parent = TocFrame

local WhiteBG2 = Instance.new("Frame")
WhiteBG2.Name = "WhiteBG"
WhiteBG2.Size = UDim2.new(0.8738809, 0, 0.7014167, 0)
WhiteBG2.Position = UDim2.new(0.0598441, 0, 0.2302543, 0)
WhiteBG2.BorderSizePixel = 0
WhiteBG2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WhiteBG2.Parent = TocFrame

local UICorner12 = Instance.new("UICorner")
UICorner12.CornerRadius = UDim.new(0.015, 0)
UICorner12.Parent = WhiteBG2

local NextFrame2 = Instance.new("Frame")
NextFrame2.Name = "NextFrame"
NextFrame2.Visible = false
NextFrame2.Size = UDim2.new(0.2569211, 0, 0.0502008, 0)
NextFrame2.Position = UDim2.new(0.3674502, 0, 0.8075636, 0)
NextFrame2.BorderSizePixel = 0
NextFrame2.BackgroundColor3 = Color3.fromRGB(136, 136, 136)
NextFrame2.Parent = TocFrame

local UICorner13 = Instance.new("UICorner")
UICorner13.CornerRadius = UDim.new(0.3, 0)
UICorner13.Parent = NextFrame2

local AprooveFrame = Instance.new("Frame")
AprooveFrame.Name = "AprooveFrame"
AprooveFrame.Size = UDim2.new(0.2569211, 0, 0.0502008, 0)
AprooveFrame.Position = UDim2.new(0.3674502, 0, 0.7475915, 0)
AprooveFrame.BorderSizePixel = 0
AprooveFrame.BackgroundColor3 = Color3.fromRGB(88, 136, 87)
AprooveFrame.Parent = TocFrame

local UICorner14 = Instance.new("UICorner")
UICorner14.CornerRadius = UDim.new(0.3, 0)
UICorner14.Parent = AprooveFrame

local AgreeBtn = Instance.new("TextButton")
AgreeBtn.Name = "AgreeBtn"
AgreeBtn.Size = UDim2.new(0.2569211, 0, 0.0502008, 0)
AgreeBtn.BackgroundTransparency = 1
AgreeBtn.Position = UDim2.new(0.3674502, 0, 0.7475916, 0)
AgreeBtn.BorderSizePixel = 0
AgreeBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AgreeBtn.FontSize = Enum.FontSize.Size14
AgreeBtn.TextTransparency = 1
AgreeBtn.TextSize = 14
AgreeBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
AgreeBtn.Text = " "
AgreeBtn.TextWrap = true
AgreeBtn.Font = Enum.Font.SourceSans
AgreeBtn.TextWrapped = true
AgreeBtn.TextScaled = true
AgreeBtn.Parent = TocFrame

local AprooveTxt = Instance.new("TextLabel")
AprooveTxt.Name = "AprooveTxt"
AprooveTxt.LayoutOrder = 1
AprooveTxt.ZIndex = 3
AprooveTxt.Size = UDim2.new(0.1039762, 0, 0.0334672, 0)
AprooveTxt.BorderColor3 = Color3.fromRGB(27, 42, 53)
AprooveTxt.BackgroundTransparency = 1
AprooveTxt.Position = UDim2.new(0.4428494, 0, 0.7547233, 0)
AprooveTxt.BorderSizePixel = 0
AprooveTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AprooveTxt.FontSize = Enum.FontSize.Size14
AprooveTxt.TextSize = 14
AprooveTxt.TextColor3 = Color3.fromRGB(255, 255, 255)
AprooveTxt.Text = "AGREE"
AprooveTxt.TextWrap = true
AprooveTxt.Font = Enum.Font.GothamSemibold
AprooveTxt.TextWrapped = true
AprooveTxt.TextScaled = true
AprooveTxt.Parent = TocFrame

local Line1 = Instance.new("TextLabel")
Line1.Name = "Line1"
Line1.LayoutOrder = 1
Line1.ZIndex = 3
Line1.Size = UDim2.new(0.4826992, 0, 0.0356409, 0)
Line1.BorderColor3 = Color3.fromRGB(27, 42, 53)
Line1.BackgroundTransparency = 1
Line1.Position = UDim2.new(0.0914903, 0, 0.3749557, 0)
Line1.BorderSizePixel = 0
Line1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line1.FontSize = Enum.FontSize.Size32
Line1.TextSize = 30
Line1.TextColor3 = Color3.fromRGB(136, 136, 136)
if set.TocLine1 ~= "noline" then
	Line1.Text = set.TocLine1
else
	Line1.Position = UDim2.new(1, 0, 1, 0)
end
Line1.TextWrap = true
Line1.Font = Enum.Font.GothamSemibold
Line1.TextWrapped = true
Line1.TextXAlignment = Enum.TextXAlignment.Left
Line1.TextScaled = true
Line1.Parent = TocFrame

local Line2 = Instance.new("TextLabel")
Line2.Name = "Line2"
Line2.LayoutOrder = 1
Line2.ZIndex = 3
Line2.Size = UDim2.new(0.4826992, 0, 0.0356409, 0)
Line2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Line2.BackgroundTransparency = 1
Line2.Position = UDim2.new(0.0914903, 0, 0.4251649, 0)
Line2.BorderSizePixel = 0
Line2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line2.FontSize = Enum.FontSize.Size32
Line2.TextSize = 30
Line2.TextColor3 = Color3.fromRGB(136, 136, 136)
if set.TocLine2 ~= "noline" then
	Line2.Text = set.TocLine2
else
	Line2.Position = UDim2.new(1, 0, 1, 0)
end
Line2.TextWrap = true
Line2.Font = Enum.Font.GothamSemibold
Line2.TextWrapped = true
Line2.TextXAlignment = Enum.TextXAlignment.Left
Line2.TextScaled = true
Line2.Parent = TocFrame

local Line3 = Instance.new("TextLabel")
Line3.Name = "Line3"
Line3.LayoutOrder = 1
Line3.ZIndex = 3
Line3.Size = UDim2.new(0.4826992, 0, 0.0356409, 0)
Line3.BorderColor3 = Color3.fromRGB(27, 42, 53)
Line3.BackgroundTransparency = 1
Line3.Position = UDim2.new(0.0914903, 0, 0.47119, 0)
Line3.BorderSizePixel = 0
Line3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line3.FontSize = Enum.FontSize.Size32
Line3.TextSize = 30
Line3.TextColor3 = Color3.fromRGB(136, 136, 136)
if set.TocLine3 ~= "noline" then
	Line3.Text = set.TocLine3
else
	Line3.Position = UDim2.new(1, 0, 1, 0)
end
Line3.TextWrap = true
Line3.Font = Enum.Font.GothamSemibold
Line3.TextWrapped = true
Line3.TextXAlignment = Enum.TextXAlignment.Left
Line3.TextScaled = true
Line3.Parent = TocFrame

local Line4 = Instance.new("TextLabel")
Line4.Name = "Line4"
Line4.LayoutOrder = 1
Line4.ZIndex = 3
Line4.Size = UDim2.new(0.4826992, 0, 0.0356409, 0)
Line4.BorderColor3 = Color3.fromRGB(27, 42, 53)
Line4.BackgroundTransparency = 1
Line4.Position = UDim2.new(0.0914903, 0, 0.5158204, 0)
Line4.BorderSizePixel = 0
Line4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line4.FontSize = Enum.FontSize.Size32
Line4.TextSize = 30
Line4.TextColor3 = Color3.fromRGB(136, 136, 136)
if set.TocLine4 ~= "noline" then
	Line4.Text = set.TocLine4
else
	Line4.Position = UDim2.new(1, 0, 1, 0)
end
Line4.TextWrap = true
Line4.Font = Enum.Font.GothamSemibold
Line4.TextWrapped = true
Line4.TextXAlignment = Enum.TextXAlignment.Left
Line4.TextScaled = true
Line4.Parent = TocFrame

local Line5 = Instance.new("TextLabel")
Line5.Name = "Line5"
Line5.LayoutOrder = 1
Line5.ZIndex = 3
Line5.Size = UDim2.new(0.4826992, 0, 0.0356409, 0)
Line5.BorderColor3 = Color3.fromRGB(27, 42, 53)
Line5.BackgroundTransparency = 1
Line5.Position = UDim2.new(0.0914903, 0, 0.5618455, 0)
Line5.BorderSizePixel = 0
Line5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line5.FontSize = Enum.FontSize.Size32
Line5.TextSize = 30
Line5.TextColor3 = Color3.fromRGB(136, 136, 136)
if set.TocLine5 ~= "noline" then
	Line5.Text = set.TocLine5
else
	Line5.Position = UDim2.new(1, 0, 1, 0)
end
Line5.TextWrap = true
Line5.Font = Enum.Font.GothamSemibold
Line5.TextWrapped = true
Line5.TextXAlignment = Enum.TextXAlignment.Left
Line5.TextScaled = true
Line5.Parent = TocFrame

local Line6 = Instance.new("TextLabel")
Line6.Name = "Line6"
Line6.LayoutOrder = 1
Line6.ZIndex = 3
Line6.Size = UDim2.new(0.4826992, 0, 0.0356409, 0)
Line6.BorderColor3 = Color3.fromRGB(27, 42, 53)
Line6.BackgroundTransparency = 1
Line6.Position = UDim2.new(0.0914903, 0, 0.6078706, 0)
Line6.BorderSizePixel = 0
Line6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line6.FontSize = Enum.FontSize.Size32
Line6.TextSize = 30
Line6.TextColor3 = Color3.fromRGB(136, 136, 136)
if set.TocLine6 ~= "noline" then
	Line6.Text = set.TocLine6
else
	Line6.Position = UDim2.new(1, 0, 1, 0)
end
Line6.TextWrap = true
Line6.Font = Enum.Font.GothamSemibold
Line6.TextWrapped = true
Line6.TextXAlignment = Enum.TextXAlignment.Left
Line6.TextScaled = true
Line6.Parent = TocFrame

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

local PrintFrame = Instance.new("Frame")
PrintFrame.Name = "PrintFrame"
PrintFrame.Visible = false
PrintFrame.Size = UDim2.new(1, 0, 1, 0)
PrintFrame.BackgroundTransparency = 1
PrintFrame.Position = UDim2.new(0, 0, 1, 0)
PrintFrame.BorderSizePixel = 0
PrintFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PrintFrame.Parent = Main

local Lines5 = Instance.new("Frame")
Lines5.Name = "Lines"
Lines5.ZIndex = 4
Lines5.Size = UDim2.new(0.813, 0, 0.0015174, 0)
Lines5.Position = UDim2.new(0.0929786, 0, 0.3508354, 0)
Lines5.BorderSizePixel = 0
Lines5.BackgroundColor3 = Color3.fromRGB(219, 219, 220)
Lines5.Parent = PrintFrame

local Text1 = Instance.new("TextLabel")
Text1.Name = "Text"
Text1.LayoutOrder = 1
Text1.ZIndex = 3
Text1.Size = UDim2.new(0.4826992, 0, 0.0393825, 0)
Text1.BorderColor3 = Color3.fromRGB(27, 42, 53)
Text1.BackgroundTransparency = 1
Text1.Position = UDim2.new(0.0914903, 0, 0.2982472, 0)
Text1.BorderSizePixel = 0
Text1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text1.FontSize = Enum.FontSize.Size32
Text1.TextSize = 30
Text1.TextColor3 = Color3.fromRGB(136, 136, 136)
Text1.Text = "Printing"
Text1.TextWrap = true
Text1.Font = Enum.Font.GothamSemibold
Text1.TextWrapped = true
Text1.TextXAlignment = Enum.TextXAlignment.Left
Text1.TextScaled = true
Text1.Parent = PrintFrame

local CloseTxt = Instance.new("TextLabel")
CloseTxt.Name = "CloseTxt"
CloseTxt.LayoutOrder = 1
CloseTxt.ZIndex = 3
CloseTxt.Size = UDim2.new(0.1156333, 0, 0.0334672, 0)
CloseTxt.BorderColor3 = Color3.fromRGB(27, 42, 53)
CloseTxt.BackgroundTransparency = 1
CloseTxt.Position = UDim2.new(0.4428494, 0, 0.8146953, 0)
CloseTxt.BorderSizePixel = 0
CloseTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseTxt.FontSize = Enum.FontSize.Size14
CloseTxt.TextSize = 14
CloseTxt.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseTxt.Text = "CLOSE"
CloseTxt.TextWrap = true
CloseTxt.Font = Enum.Font.GothamSemibold
CloseTxt.TextWrapped = true
CloseTxt.TextScaled = true
CloseTxt.Parent = PrintFrame

local WhiteBG3 = Instance.new("Frame")
WhiteBG3.Name = "WhiteBG"
WhiteBG3.Size = UDim2.new(0.8738809, 0, 0.7014167, 0)
WhiteBG3.Position = UDim2.new(0.0598441, 0, 0.2302543, 0)
WhiteBG3.BorderSizePixel = 0
WhiteBG3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WhiteBG3.Parent = PrintFrame

local UICorner15 = Instance.new("UICorner")
UICorner15.CornerRadius = UDim.new(0.015, 0)
UICorner15.Parent = WhiteBG3

local CloseFrame = Instance.new("Frame")
CloseFrame.Name = "CloseFrame"
CloseFrame.Size = UDim2.new(0.2569211, 0, 0.0502008, 0)
CloseFrame.Position = UDim2.new(0.3674502, 0, 0.8075636, 0)
CloseFrame.BorderSizePixel = 0
CloseFrame.BackgroundColor3 = Color3.fromRGB(154, 75, 75)
CloseFrame.Parent = PrintFrame

local UICorner16 = Instance.new("UICorner")
UICorner16.CornerRadius = UDim.new(0.3, 0)
UICorner16.Parent = CloseFrame

local Line11 = Instance.new("TextLabel")
Line11.Name = "Line1"
Line11.LayoutOrder = 1
Line11.ZIndex = 3
Line11.Size = UDim2.new(0.6258939, 0, 0.0356409, 0)
Line11.BorderColor3 = Color3.fromRGB(27, 42, 53)
Line11.BackgroundTransparency = 1
Line11.Position = UDim2.new(0.0914903, 0, 0.3749557, 0)
Line11.BorderSizePixel = 0
Line11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line11.FontSize = Enum.FontSize.Size32
Line11.TextSize = 30
Line11.TextColor3 = Color3.fromRGB(136, 136, 136)
Line11.Text = "Your ticket has successfully been printed."
Line11.TextWrap = true
Line11.Font = Enum.Font.GothamSemibold
Line11.TextWrapped = true
Line11.TextXAlignment = Enum.TextXAlignment.Left
Line11.TextScaled = true
Line11.Parent = PrintFrame

local CloseBtn1 = Instance.new("TextButton")
CloseBtn1.Name = "CloseBtn"
CloseBtn1.Size = UDim2.new(0.2569211, 0, 0.0502008, 0)
CloseBtn1.BackgroundTransparency = 1
CloseBtn1.Position = UDim2.new(0.3674502, 0, 0.8075637, 0)
CloseBtn1.BorderSizePixel = 0
CloseBtn1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn1.FontSize = Enum.FontSize.Size14
CloseBtn1.TextTransparency = 1
CloseBtn1.TextSize = 14
CloseBtn1.TextColor3 = Color3.fromRGB(0, 0, 0)
CloseBtn1.Text = " "
CloseBtn1.TextWrap = true
CloseBtn1.Font = Enum.Font.SourceSans
CloseBtn1.TextWrapped = true
CloseBtn1.TextScaled = true
CloseBtn1.Parent = PrintFrame

local Line21 = Instance.new("TextLabel")
Line21.Name = "Line2"
Line21.LayoutOrder = 1
Line21.ZIndex = 3
Line21.Size = UDim2.new(0.6258939, 0, 0.0280157, 0)
Line21.BorderColor3 = Color3.fromRGB(27, 42, 53)
Line21.BackgroundTransparency = 1
Line21.Position = UDim2.new(0.0914903, 0, 0.4209808, 0)
Line21.BorderSizePixel = 0
Line21.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line21.FontSize = Enum.FontSize.Size32
Line21.TextSize = 30
Line21.TextColor3 = Color3.fromRGB(136, 136, 136)
Line21.Text = "Enjoy your flight!"
Line21.TextWrap = true
Line21.Font = Enum.Font.GothamSemibold
Line21.TextWrapped = true
Line21.TextXAlignment = Enum.TextXAlignment.Left
Line21.TextScaled = true
Line21.Parent = PrintFrame

local GroupName = Instance.new("TextLabel")
GroupName.Name = "GroupName"
GroupName.Size = UDim2.new(0.4973603, 0, 0.0577666, 0)
GroupName.BackgroundTransparency = 1
GroupName.Position = UDim2.new(0.2512563, 0, 0.0223414, 0)
GroupName.BorderSizePixel = 0
GroupName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GroupName.FontSize = Enum.FontSize.Size14
GroupName.TextSize = 14
GroupName.TextColor3 = set.GroupTextColor
GroupName.Text = set.GroupName
GroupName.TextWrap = true
GroupName.Font = set.GroupTextFont
GroupName.TextWrapped = true
GroupName.TextScaled = true
GroupName.Parent = Main

SCIGui.Parent = game:GetService("ServerStorage").AGUI.UI











local groupid = set.GroupId
local minrank = set.StaffRank
local C1TN = set.Class1ToolName
local C2TN = set.Class2ToolName
local C3TN = set.Class3ToolName
local C4TN = set.Class4ToolName
local C2S = set.Class2ShirtID
local C2R = set.Class2GroupRank
local C3S = set.Class3ShirtID
local C3R = set.Class3GroupRank
local C4S = set.Class4ShirtID
local C4R = set.Class4GroupRank
local res = game.ReplicatedStorage.SCI.RE
local live = script.Parent.Values.Live
local max = script.Parent.Values.Max
local departure1, destination1, boarding1, aircraft1, gate1, flightnum1, arrival1 = nil
local function countcheck(class)
	if class == set.Class1Name then
		if live.Class1.Value == 0 then
			return false
		else
			return true
		end
	elseif class == set.Class2Name then
		if live.Class2.Value == 0 then
			return false
		else
			return true
		end
	elseif class == set.Class3Name then
		if live.Class3.Value == 0 then
			return false
		else
			return true
		end
	elseif class == set.Class4Name then
		if live.Class4.Value == 0 then
			return false
		else
			return true
		end
	end
end

res.CCRF.OnServerInvoke = function(plr,class)
	if class == set.Class1Name then
		return live.Class1.Value
	elseif class == set.Class3Name then
		return live.Class3.Value
	elseif class == set.Class2Name then
		return live.Class2.Value
	elseif class == set.Class4Name then
		return live.Class4.Value
	end
end

if set.AutoOpen == true then
	script.Parent.Values.Enabled.Value = true
end

res.MainRF.OnServerInvoke = function(plr,class,mode)
	if mode == "check" then
		if countcheck(class) then
			return true
		else
			return false
		end
	elseif mode == "remove" then
		if class == set.Class1Name then
			live.Class1.Value = live.Class1.Value - 1
		elseif class == set.Class2Name then
			live.Class2.Value = live.Class2.Value - 1
		elseif class == set.Class3Name then
			live.Class3.Value = live.Class3.Value - 1
		elseif class == set.Class4Name then
			live.Class4.Value = live.Class4.Value - 1
		end
	end
end

res.ChangeInfo.OnServerEvent:Connect(function(plr, departure, destination, boarding,gate, aircraft, flightnum, arrival, class1, class2, class3, class4)
	arrival1 = arrival
	departure1 = departure
	destination1 = destination
	boarding1 = boarding
	aircraft1 = aircraft
	gate1 = gate
	flightnum1 = flightnum
	class1 = class1
	class2 = class2
	class3 = class3
	class4 = class4
	max.Class1.Value = class1
	max.Class2.Value = class2
	max.Class3.Value = class3
	max.Class4.Value = class4
	game.ServerStorage.AGUI.UI.SCIGui.Main.FlightInfo.ArrivalTimeTxt.Text = arrival
	game.ServerStorage.AGUI.UI.SCIGui.Main.FlightInfo.DepTimeTxt.Text = departure
	game.ServerStorage.AGUI.UI.SCIGui.Main.FlightInfo.DestTxt.Text = destination
	game.ServerStorage.AGUI.UI.SCIGui.Main.FlightInfo.BoarTimeTxt.Text = boarding
	game.ServerStorage.AGUI.UI.SCIGui.Main.FlightInfo.GateNum.Text = gate
	game.ServerStorage.AGUI.UI.SCIGui.Main.FlightInfo.AircraftTxt.Text = aircraft
	game.ServerStorage.AGUI.UI.SCIGui.Main.FlightInfo.FlightNum.Text = flightnum
	game.ServerStorage.AGUI.UI.SCIGui.Main.BookingFrame.Class1Seats.Text = "Remaining Seats: "..class1
	game.ServerStorage.AGUI.UI.SCIGui.Main.BookingFrame.Class2Seats.Text = "Remaining Seats: "..class2
	game.ServerStorage.AGUI.UI.SCIGui.Main.BookingFrame.Class3Seats.Text = "Remaining Seats: "..class3
	game.ServerStorage.AGUI.UI.SCIGui.Main.BookingFrame.Class4Seats.Text = "Remaining Seats: "..class4
	res.FlightInfo:FireAllClients(arrival1,departure1,destination1,boarding1,gate1,aircraft1,flightnum1,class1,class2,class3,class4)
end)

res.GiveCard.OnServerEvent:Connect(function(plr, class)
	if class == set.Class1Name then
		res.Parent.Cards[C1TN]:Clone().Parent = plr.Backpack
		plr.checkedIn.Value = true
	elseif class == set.Class2Name then
		if(game:GetService("MarketplaceService"):PlayerOwnsAsset(plr,C2S)) or plr:GetRankInGroup(groupid) >= C2R then
			res.Parent.Cards[C2TN]:Clone().Parent = plr.BackPack
			plr.checkedIn.Value = true
		elseif class == set.Class3Name then
			if(game:GetService("MarketplaceService"):PlayerOwnsAsset(plr,C3S)) or plr:GetRankInGroup(groupid) >= C3R then
				res.Parent.Cards[C3TN]:Clone().Parent = plr.Backpack
				plr.checkedIn.Value = true
			elseif class == set.Class4Name then
				if(game:GetService("MarketplaceService"):PlayerOwnsAsset(plr,C4S)) or plr:GetRankInGroup(groupid) >= C4R then
					res.Parent.Cards[C4TN]:Clone().Parent = plr.Backpack
					plr.checkedIn.Value = true
				end
			end
		end
	end
end)

res.ClosePanel.OnServerEvent:Connect(function(plr, panel)
	
	if panel == "admin" then
		plr.adminPanelOpen.Value = false
	elseif panel == "sci" then
		plr.sciUiOpen.Value = false
	end
end)

res.ChangeEnable.OnServerEvent:Connect(function(plr, mode)
	if mode == "Open" then
		script.Parent.Values.Enabled.Value = true
	elseif mode == "Close" then
		script.Parent.Values.Enabled.Value = false
	end
end)

res.checkedIn.OnServerEvent:Connect(function(plr)
	for i,v in pairs(game.Players:GetChildren()) do
		v.checkedIn.Value = false
	end
end)

-- Admin panel opener

game.Players.PlayerAdded:Connect(function(plr)
	
	local adminPanelOpen = Instance.new("BoolValue")
	adminPanelOpen.Name = "adminPanelOpen"
	adminPanelOpen.Parent = plr
	
	local checkedIn = Instance.new("BoolValue")
	checkedIn.Name = "checkedIn"
	checkedIn.Parent = plr
	
	local sciUiOpen = Instance.new("BoolValue")
	sciUiOpen.Name = "sciUiOpen"
	sciUiOpen.Parent = plr
	
	plr.Chatted:Connect(function(msg)
		if msg == set.PanelCommand then
			if plr:GetRankInGroup(set.GroupId) >= set.MinRank then
				if adminPanelOpen.Value == false and sciUiOpen.Value == false then
					game.ServerStorage.AdminPanel:Clone().Parent = plr.PlayerGui
					adminPanelOpen.Value = true
				end
			end
		end
	end)
end)
