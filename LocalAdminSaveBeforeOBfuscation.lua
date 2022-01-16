local gui = script.Parent
local plr = game:GetService("Players").LocalPlayer

local aerosysSCI = require(game.Workspace.AS_SCI.README)

local MarketplaceService = game:GetService("MarketplaceService")

local Main = gui.Main

local StartingFrame = Main.StartingFrame
local ProductSelectionFrame = Main.ProductSelectionFrame
local SelfCheckIn = Main.SelfCheckIn
local SelectionFrame = SelfCheckIn.SelectionFrame
local FlightInfoFrame = SelfCheckIn.FlightInfo

local selectedClass = nil

StartingFrame.BeginBtn.MouseButton1Click:Connect(function()
	local tweenInfo = TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out)
	local tweenTurn = game:GetService("TweenService"):Create(StartingFrame.BeginTurning, tweenInfo, {Rotation=180})
	tweenTurn:Play()
	wait(0.25)
	local tweenOpacity = game:GetService("TweenService"):Create(StartingFrame.BeginTurning, tweenInfo, {BackgroundTransparency=1})
	local tweenOpacity2 = game:GetService("TweenService"):Create(StartingFrame.BeginTurning.ImageLabel, tweenInfo, {ImageTransparency=1})
	tweenOpacity:Play()
	tweenOpacity2:Play()
	wait(0.5)
	ProductSelectionFrame.Visible = true
	StartingFrame.Position = UDim2.new(-1,0,0,0)
	StartingFrame.Visible = false
	ProductSelectionFrame:TweenPosition(
		UDim2.new(0, 0, 0, 0),
		"Out",
		"Quad",
		0.5,
		false
	)
end)

ProductSelectionFrame.SciProduct.SelfCheckIn.MouseButton1Click:Connect(function()
	SelfCheckIn.Visible = true
	ProductSelectionFrame:TweenPosition(
		UDim2.new(0, 0, 1, 0),
		"Out",
		"Quad",
		0.5,
		false
	)
	wait(0.6)
	ProductSelectionFrame.Visible = false
	SelfCheckIn:TweenPosition(
		UDim2.new(0, 0, 0, 0),
		"Out",
		"Quad",
		0.5,
		false
	)
	wait(0.6)
	FlightInfoFrame.Position = UDim2.new(0, 0, 1, 0)
end)

Main.CloseBtn.MouseButton1Click:Connect(function()
	Main:TweenPosition(
		UDim2.new(1, 0, 0.167, 0),
		"Out",
		"Quad",
		0.5,
		false
	)
	wait(0.5)
	game.ReplicatedStorage.SCI.RE.ClosePanel:FireServer("admin")
	gui:Destroy()
end)

SelectionFrame.FlightInfoBtn.MouseButton1Click:Connect(function()
	FlightInfoFrame.Visible = true
	SelectionFrame:TweenPosition(
		UDim2.new(0, 0, 1, 0),
		"Out",
		"Quad",
		0.5,
		false
	)
	wait(0.6)
	SelectionFrame.Visible = false
	FlightInfoFrame:TweenPosition(
		UDim2.new(0, 0, 0, 0),
		"Out",
		"Quad",
		0.5,
		false
	)
end)

FlightInfoFrame.NextBtn.MouseButton1Click:Connect(function()
	SelectionFrame.Visible = true
	FlightInfoFrame:TweenPosition(
		UDim2.new(0, 0, 1, 0),
		"Out",
		"Quad",
		0.5,
		false
	)
	wait(0.6)
	FlightInfoFrame.Visible = false
	SelectionFrame:TweenPosition(
		UDim2.new(0, 0, 0, 0),
		"Out",
		"Quad",
		0.5,
		false
	)
end)

SelectionFrame.Save.MouseButton1Click:Connect(function(arrival, departure, destination, boarding, gate, aircraft, flightnum, class1, class2, class3, class4)
	arrival = FlightInfoFrame.ArrivalTimeTxt.Text
	departure = FlightInfoFrame.DepTimeTxt.Text
	destination = FlightInfoFrame.DestTxt.Text
	boarding = FlightInfoFrame.BoarTimeTxt.Text
	gate = FlightInfoFrame.GateNum.Text
	aircraft = FlightInfoFrame.AircraftTxt.Text
	flightnum = FlightInfoFrame.FlightNum.Text
	class1 = SelectionFrame.Class1Seats.Text
	class2 = SelectionFrame.Class2Seats.Text
	class3 = SelectionFrame.Class3Seats.Text
	class4 = SelectionFrame.Class4Seats.Text
	game.ReplicatedStorage.SCI.RE.ChangeInfo:FireServer(arrival, departure, destination, boarding, gate, aircraft, flightnum, class1, class2, class3, class4)
end)

SelectionFrame.Open.MouseButton1Click:Connect(function()
	game.ReplicatedStorage.SCI.RE.ChangeEnable:FireServer("Open")
end)

SelectionFrame.Close.MouseButton1Click:Connect(function()
	game.ReplicatedStorage.SCI.RE.ChangeEnable:FireServer("Close")
end)

SelectionFrame.Reset.MouseButton1Click:Connect(function()
	game.ReplicatedStorage.SCI.RE.checkedIn:FireServer()
end)