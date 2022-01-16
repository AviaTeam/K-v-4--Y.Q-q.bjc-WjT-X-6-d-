local gui = script.Parent.Parent.UI.SCIGui
local plr = game:GetService("Players").LocalPlayer

local aerosysSCI = require(game.Workspace.AS_SCI.README)

local MarketplaceService = game:GetService("MarketplaceService")

local re2 = script.Parent.freakyfriday

local Main = gui.Main

local StartingFrame = Main.StartingFrame
local BookingFrame = Main.BookingFrame
local FlightInfo = script.Parent.Parent.UI.SCIGui.Main.FlightInfo
local TocFrame = Main.TocFrame
local PrintFrame = Main.PrintFrame

local selectedClass = nil

local function check()
	local result = re2:InvokeServer()
	if result == true then
		return true
	end
end

local function countcheck(class)
	local result = game.ReplicatedStorage.SCI.RE.MainRF:InvokeServer(class, "check")
	if result == true then
		return true
	elseif result == false then
		return false
	end
end

local function remove(class)
	game.ReplicatedStorage.SCI.RE.MainRF:InvokeServer(class, "remove")
end

StartingFrame.BeginBtn.MouseButton1Click:Connect(function()
	if check() then
		StartingFrame.ClosedTxt.Visible = false
		local tweenInfo = TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out)
		local tweenTurn = game:GetService("TweenService"):Create(StartingFrame.BeginTurning, tweenInfo, {Rotation=180})
		tweenTurn:Play()
		wait(0.25)
		local tweenOpacity = game:GetService("TweenService"):Create(StartingFrame.BeginTurning, tweenInfo, {BackgroundTransparency=1})
		local tweenOpacity2 = game:GetService("TweenService"):Create(StartingFrame.BeginTurning.ImageLabel, tweenInfo, {ImageTransparency=1})
		tweenOpacity:Play()
		tweenOpacity2:Play()
		wait(0.5)
		FlightInfo.Visible = true
		StartingFrame.Position = UDim2.new(-1,0,0,0)
		StartingFrame.Visible = false
		FlightInfo:TweenPosition(
			UDim2.new(0, 0, 0, 0),
			"Out",
			"Quad",
			0.5,
			false
		)
	else
		StartingFrame.ClosedTxt.Visible = true
	end
end)

FlightInfo.NextBtn.MouseButton1Click:Connect(function()
	BookingFrame.Visible = true
	FlightInfo:TweenPosition(
		UDim2.new(0, 0, 1, 0),
		"Out",
		"Quad",
		0.5,
		false
	)
	wait(0.6)
	BookingFrame:TweenPosition(
		UDim2.new(0, 0, 0, 0),
		"Out",
		"Quad",
		0.5,
		false
	)
	wait(0.5)
	Main.Timeline.Visible = true
	FlightInfo.Visible = false
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
	game.ReplicatedStorage.SCI.RE.ClosePanel:FireServer("sci")
	gui:Destroy()
end)

-- Class 1 Selection

BookingFrame.Class1Btn.MouseButton1Click:Connect(function(class)
	if countcheck(aerosysSCI.Class1Name) == false then
		BookingFrame.Class1SelectTxt.Text = "FULL"
		wait(2)
		BookingFrame.Class1SelectTxt.Text = "SELECT"
	else
		if selectedClass == nil then
			BookingFrame.Class1SelectTxt.Text = "SELECTED"
			selectedClass = aerosysSCI.Class1Name
			BookingFrame.SelectionFrame1.BackgroundColor3 = Color3.fromRGB(255, 204, 94)
		elseif selectedClass == aerosysSCI.Class1Name then
			BookingFrame.Class1SelectTxt.Text = "SELECT"
			selectedClass = nil
			BookingFrame.SelectionFrame1.BackgroundColor3 = Color3.fromRGB(13, 209, 103)
		end
	end
end)

-- Class 2 Selection

BookingFrame.Class2Btn.MouseButton1Click:Connect(function()
	if MarketplaceService:PlayerOwnsAsset(plr, aerosysSCI.Class2ShirtID) or plr:GetRankInGroup(aerosysSCI.GroupId) >= aerosysSCI.Class2GroupRank then
		if countcheck(aerosysSCI.Class2Name) == false then
			BookingFrame.Class2SelectTxt.Text = "FULL"
			wait(2)
			BookingFrame.Class2SelectTxt.Text = "SELECT"
		else
			if selectedClass == nil then
				BookingFrame.Class2SelectTxt.Text = "SELECTED"
				selectedClass = aerosysSCI.Class2Name
				BookingFrame.SelectionFrame2.BackgroundColor3 = Color3.fromRGB(255, 204, 94)
			elseif selectedClass == aerosysSCI.Class2Name then
				BookingFrame.Class2SelectTxt.Text = "SELECT"
				selectedClass = nil
				BookingFrame.SelectionFrame2.BackgroundColor3 = Color3.fromRGB(13, 209, 103)
			end
		end
	end
end)

-- Class 3 Selection

BookingFrame.Class3Btn.MouseButton1Click:Connect(function()
	if MarketplaceService:PlayerOwnsAsset(plr, aerosysSCI.Class3ShirtID) or plr:GetRankInGroup(aerosysSCI.GroupId) >= aerosysSCI.Class3GroupRank then
		if countcheck(aerosysSCI.Class3Name) == false then
			BookingFrame.Class3SelectTxt.Text = "FULL"
			wait(2)
			BookingFrame.Class3SelectTxt.Text = "SELECT"
		else
			if selectedClass == nil then
				BookingFrame.Class3SelectTxt.Text = "SELECTED"
				selectedClass = aerosysSCI.Class3Name
				BookingFrame.SelectionFrame3.BackgroundColor3 = Color3.fromRGB(255, 204, 94)
			elseif selectedClass == aerosysSCI.Class3Name then
				BookingFrame.Class3SelectTxt.Text = "SELECT"
				selectedClass = nil
				BookingFrame.SelectionFrame3.BackgroundColor3 = Color3.fromRGB(13, 209, 103)
			end
		end
	end
end)

-- Class 4 Selection

BookingFrame.Class4Btn.MouseButton1Click:Connect(function()
	if MarketplaceService:PlayerOwnsAsset(plr, aerosysSCI.Class4ShirtID) or plr:GetRankInGroup(aerosysSCI.GroupId) >= aerosysSCI.Class4GroupRank then
		if countcheck(aerosysSCI.Class4Name) == false then
			BookingFrame.Class4SelectTxt.Text = "FULL"
			wait(2)
			BookingFrame.Class4SelectTxt.Text = "SELECT"
		else
			if selectedClass == nil then
				BookingFrame.Class4SelectTxt.Text = "SELECTED"
				selectedClass = aerosysSCI.Class4Name
				BookingFrame.SelectionFrame4.BackgroundColor3 = Color3.fromRGB(255, 204, 94)
			elseif selectedClass == aerosysSCI.Class4Name then
				BookingFrame.Class4SelectTxt.Text = "SELECT"
				selectedClass = nil
				BookingFrame.SelectionFrame4.BackgroundColor3 = Color3.fromRGB(13, 209, 103)
			end
		end
	end
end)

-- Class 1 Mouse Hovers

BookingFrame.Class1Btn.MouseEnter:Connect(function()
	if BookingFrame.Class1SelectTxt.Text == "SELECTED" then
		BookingFrame.Class1SelectTxt.Text = "UNSELECT"
	end
end)

BookingFrame.Class1Btn.MouseLeave:Connect(function()
	if BookingFrame.Class1SelectTxt.Text == "UNSELECT" then
		BookingFrame.Class1SelectTxt.Text = "SELECTED"
	end
end)

-- Class 2 Mouse Hovers

BookingFrame.Class2Btn.MouseEnter:Connect(function()
	if BookingFrame.Class2SelectTxt.Text == "SELECTED" then
		BookingFrame.Class2SelectTxt.Text = "UNSELECT"
	end
end)

BookingFrame.Class2Btn.MouseLeave:Connect(function()
	if BookingFrame.Class2SelectTxt.Text == "UNSELECT" then
		BookingFrame.Class2SelectTxt.Text = "SELECTED"
	end
end)

-- Class 3 Mouse Hovers

BookingFrame.Class3Btn.MouseEnter:Connect(function()
	if BookingFrame.Class3SelectTxt.Text == "SELECTED" then
		BookingFrame.Class3SelectTxt.Text = "UNSELECT"
	end
end)

BookingFrame.Class3Btn.MouseLeave:Connect(function()
	if BookingFrame.Class3SelectTxt.Text == "UNSELECT" then
		BookingFrame.Class3SelectTxt.Text = "SELECTED"
	end
end)

-- Class 4 Mouse Hovers

BookingFrame.Class4Btn.MouseEnter:Connect(function()
	if BookingFrame.Class4SelectTxt.Text == "SELECTED" then
		BookingFrame.Class4SelectTxt.Text = "UNSELECT"
	end
end)

BookingFrame.Class4Btn.MouseLeave:Connect(function()
	if BookingFrame.Class4SelectTxt.Text == "UNSELECT" then
		BookingFrame.Class4SelectTxt.Text = "SELECTED"
	end
end)

-- Next button (Booking frame)

BookingFrame.NextBtn.MouseButton1Click:Connect(function()
	if selectedClass ~= nil then
		TocFrame.Visible = true
		BookingFrame:TweenPosition(
			UDim2.new(0, 0, 1, 0),
			"Out",
			"Quad",
			0.5,
			false
		)
		wait(0.6)
		TocFrame:TweenPosition(
			UDim2.new(0, 0, 0, 0),
			"Out",
			"Quad",
			0.5,
			false
		)
		BookingFrame.Visible = false
	end
end)

-- Toc Frame stuff

TocFrame.AgreeBtn.MouseButton1Click:Connect(function()
	TocFrame.AgreeBtn.Visible = false
	TocFrame.AprooveTxt.Visible = false
	TocFrame.AprooveFrame.Visible = false
	wait(0.2)
	TocFrame.NextBtn.Visible = true
	TocFrame.NextTxt.Visible = true
	TocFrame.NextFrame.Visible = true
end)

TocFrame.NextBtn.MouseButton1Click:Connect(function(class)
	PrintFrame.Visible = true
	TocFrame:TweenPosition(
		UDim2.new(0, 0, 1, 0),
		"Out",
		"Quad",
		0.5,
		false
	)
	wait(0.6)
	PrintFrame:TweenPosition(
		UDim2.new(0, 0, 0, 0),
		"Out",
		"Quad",
		0.5,
		false
	)
	wait(0.6)
	TocFrame.Visible = false
	game.ReplicatedStorage.SCI.RE.GiveCard:FireServer(selectedClass)
	class = selectedClass
	remove(selectedClass)
	script.Parent.Instance:FireServer(selectedClass)
end)

-- Print frame stuff

PrintFrame.CloseBtn.MouseButton1Click:Connect(function()
	Main:TweenPosition(
		UDim2.new(1, 0, 0.167, 0),
		"Out",
		"Quad",
		0.5,
		false
	)
	wait(0.5)
	game.ReplicatedStorage.SCI.RE.ClosePanel:FireServer("sci")
	gui:Destroy()
end)

game.ReplicatedStorage.SCI.RE.FlightInfo.OnClientEvent:Connect(function(arrival, departure, destination, boarding,gate, aircraft,flightnum,class1,class2,class3,class4)
	FlightInfo:FindFirstChild("ArrivalTimeTxt").Text = arrival
	FlightInfo:FindFirstChild("DepTimeTxt").Text = departure
	FlightInfo:FindFirstChild("DestTxt").Text = destination
	FlightInfo:FindFirstChild("BoarTimeTxt").Text = boarding
	FlightInfo:FindFirstChild("GateNum").Text = gate
	FlightInfo:FindFirstChild("AircraftTxt").Text = aircraft
	FlightInfo:FindFirstChild("FlightNum").Text = flightnum
	BookingFrame:FindFirstChild("Class1Seats").Text = "Remaining Seats: "..class1
	BookingFrame:FindFirstChild("Class2Seats").Text = "Remaining Seats: "..class2
	BookingFrame:FindFirstChild("Class3Seats").Text = "Remaining Seats: "..class3
	BookingFrame:FindFirstChild("Class4Seats").Text = "Remaining Seats: "..class4
end)