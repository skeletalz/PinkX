for i,v in pairs(game.CoreGui:GetChildren()) do if v:FindFirstChild("UiShadow") then v:Destroy() end end
loadstring(game:HttpGet('https://pastebin.com/raw/3c4ngd7M'))('PinkX')
local library = {}

function library:Create(name)
	local PinkSexUiLib = Instance.new("ScreenGui")
	local UiShadow = Instance.new("ImageLabel")
	local Main = Instance.new("ImageLabel")
	local Top = Instance.new("ImageLabel")
	local Title = Instance.new("TextLabel")
	local Close = Instance.new("ImageButton")
	local List = Instance.new("ImageLabel")
	local UIPadding = Instance.new("UIPadding")
	local UIListLayout = Instance.new("UIListLayout")
	PinkSexUiLib.Name = name
	PinkSexUiLib.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	UiShadow.Name = "UiShadow"
	UiShadow.Parent = PinkSexUiLib
	UiShadow.BackgroundColor3 = Color3.fromRGB(22, 37, 17)
	UiShadow.BackgroundTransparency = 1.000
	UiShadow.BorderSizePixel = 0
	UiShadow.Position = UDim2.new(0.296000004, 6, 0.239999995, 6)
	UiShadow.Size = UDim2.new(0, 564, 0, 334)
	UiShadow.Image = "rbxassetid://1316045217"
	UiShadow.ImageColor3 = Color3.fromRGB(35, 35, 35)
	UiShadow.ImageTransparency = 0.500
	UiShadow.ScaleType = Enum.ScaleType.Slice
	UiShadow.SliceCenter = Rect.new(10, 10, 118, 118)

	Main.Name = "Main"
	Main.Parent = PinkSexUiLib
	Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Main.BackgroundTransparency = 1.000
	Main.Position = UDim2.new(0.296128273, 0, 0.239779666, 0)
	Main.Size = UDim2.new(0, 560, 0, 330)
	Main.ZIndex = 2
	Main.Image = "rbxassetid://3570695787"
	Main.ImageColor3 = Color3.fromRGB(154, 69, 144)
	Main.ScaleType = Enum.ScaleType.Slice
	Main.SliceCenter = Rect.new(100, 100, 100, 100)
	Main.SliceScale = 0.060

	Top.Name = "Top"
	Top.Parent = Main
	Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Top.BackgroundTransparency = 1.000
	Top.BorderSizePixel = 0
	Top.Size = UDim2.new(0, 560, 0, 25)
	Top.ZIndex = 2
	Top.Image = "rbxassetid://3570695787"
	Top.ImageColor3 = Color3.fromRGB(226, 102, 208)
	Top.ScaleType = Enum.ScaleType.Slice
	Top.SliceCenter = Rect.new(100, 100, 100, 100)
	Top.SliceScale = 0.060
		local dragger = {}; 
		local mouse        = game:GetService("Players").LocalPlayer:GetMouse();
		local inputService = game:GetService('UserInputService');
		local heartbeat    = game:GetService("RunService").Heartbeat;
		-- // credits to Ririchi / Inori for this cute drag function :)
		function dragger.new(frame)
			local s, event = pcall(function()
				return frame.MouseEnter
			end)
	
			if s then
				frame.Active = true;
	
				event:connect(function()
					local input = frame.InputBegan:connect(function(key)
						if key.UserInputType == Enum.UserInputType.MouseButton1 then
							local objectPosition = Vector2.new(mouse.X - frame.Parent.AbsolutePosition.X, mouse.Y - frame.Parent.AbsolutePosition.Y);
							while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
								pcall(function()
									frame.Parent:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X, 0, mouse.Y - objectPosition.Y), 'Out', 'Linear', 0.1, true);
								end)
							end
						end
					end)
	
					local leave;
					leave = frame.MouseLeave:connect(function()
						input:disconnect();
						leave:disconnect();
					end)
				end)
			end
		end
		dragger.new(Top)
	Title.Name = "Title"
	Title.Parent = Top
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.00892857183, 0, 0, 0)
	Title.Size = UDim2.new(0, 387, 0, 25)
	Title.ZIndex = 3
	Title.Font = Enum.Font.GothamBold
	Title.Text = name
	Title.TextColor3 = Color3.fromRGB(224, 233, 243)
	Title.TextSize = 18.000
	Title.TextXAlignment = Enum.TextXAlignment.Left

	Close.Name = "Close"
	Close.Parent = Top
	Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Close.BackgroundTransparency = 1.000
	Close.BorderColor3 = Color3.fromRGB(255, 255, 255)
	Close.BorderSizePixel = 0
	Close.Position = UDim2.new(0.95485723, 0, 0, 0)
	Close.Size = UDim2.new(0, 25, 0, 25)
	Close.ZIndex = 4
	Close.AutoButtonColor = false
	Close.Image = "http://www.roblox.com/asset/?id=54479706"

	List.Name = "List"
	List.Parent = Main
	List.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	List.BackgroundTransparency = 1.000
	List.Position = UDim2.new(0, 0, 0.0454545468, 0)
	List.Size = UDim2.new(0, 108, 0, 315)
	List.ZIndex = 2
	List.Image = "rbxassetid://3570695787"
	List.ImageColor3 = Color3.fromRGB(222, 100, 204)
	List.ScaleType = Enum.ScaleType.Slice
	List.SliceCenter = Rect.new(100, 100, 100, 100)
	List.SliceScale = 0.060

	UIPadding.Parent = List
	UIPadding.PaddingLeft = UDim.new(0, 2)
	UIPadding.PaddingRight = UDim.new(0, 2)
	UIPadding.PaddingTop = UDim.new(0, 15)

	UIListLayout.Parent = List
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 4)
	local categories = Instance.new("Frame")
	categories.Name = "categories"
	categories.Parent = Main
	categories.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	categories.BackgroundTransparency = 1.000
	categories.BorderSizePixel = 0
	categories.Position = UDim2.new(0.192857146, 0, 0.075757578, 0)
	categories.Size = UDim2.new(0, 441, 0, 305)
	categories.ZIndex = 4
	
	local win = {}
	
	function win:Category(name1)
		local Category = Instance.new("TextButton")
		local BG = Instance.new("ImageLabel")
		local Category_2 = Instance.new("ScrollingFrame")
		Category.Name = name1
		Category.Parent = List
		Category.BackgroundColor3 = Color3.fromRGB(173, 78, 159)
		Category.BackgroundTransparency = 1.000
		Category.BorderSizePixel = 0
		Category.Position = UDim2.new(0.0370370373, 0, 0.0126984129, 0)
		Category.Size = UDim2.new(1, -4, 0, 20)
		Category.ZIndex = 5
		Category.Font = Enum.Font.GothamBold
		Category.Text = name1
		Category.TextColor3 = Color3.fromRGB(255, 255, 255)
		Category.TextSize = 14.000

		BG.Name = "BG"
		BG.Parent = Category
		BG.Active = true
		BG.AnchorPoint = Vector2.new(0.5, 0.5)
		BG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		BG.BackgroundTransparency = 1.000
		BG.Position = UDim2.new(0.5, 0, 0.5, 0)
		BG.Selectable = true
		BG.Size = UDim2.new(1, 0, 1, 0)
		BG.ZIndex = 4
		BG.Image = "rbxassetid://3570695787"
		BG.ImageColor3 = Color3.fromRGB(200, 90, 186)
		BG.ScaleType = Enum.ScaleType.Slice
		BG.SliceCenter = Rect.new(100, 100, 100, 100)
		BG.SliceScale = 0.060

		Category_2.Name = name1
		Category_2.Parent = categories
		Category_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Category_2.BackgroundTransparency = 1.000
		Category_2.BorderSizePixel = 0
		Category_2.Selectable = false
		Category_2.Size = UDim2.new(1.02430844, 0, 1, 0)
		Category_2.ZIndex = 5
		Category_2.ScrollBarThickness = 6
		Category_2.CanvasSize = UDim2.new(0,0,1,0)
		Category_2.Visible = false
		local UIPadding = Instance.new("UIPadding")
		local UIListLayout = Instance.new("UIListLayout")
		UIPadding.Parent = List
		UIPadding.PaddingLeft = UDim.new(0, 2)
		UIPadding.PaddingRight = UDim.new(0, 2)
		UIPadding.PaddingTop = UDim.new(0, 15)

		UIListLayout.Parent = List
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 4)
		local UIPadding = Instance.new("UIPadding")
		local UIListLayout = Instance.new("UIListLayout")
		UIPadding.Parent = Category_2
		UIPadding.PaddingLeft = UDim.new(0, 0)
		UIPadding.PaddingRight = UDim.new(0, 0)
		UIPadding.PaddingTop = UDim.new(0, 10)

		UIListLayout.Parent = Category_2
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 20)
		local cat = {}
		
		function cat:Section(name2)
			local  rap = Instance.new("Frame")
			local Frame = Instance.new("ImageLabel")
			local TextLabel = Instance.new("TextLabel")
			rap.Parent= Category_2
			rap.BackgroundTransparency = 1
			rap.Size = UDim2.new(0,405,0,24)
			rap.ZIndex = 4
			Frame.Name = name2
			Frame.Parent = rap
			Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Frame.BackgroundTransparency = 1.000
			Frame.Position = UDim2.new(0, 0, 0.0229508206, 0)
			Frame.Size = UDim2.new(0, 405, 0, 24)
			Frame.ZIndex = 4
			Frame.Image = "rbxassetid://3570695787"
			Frame.ImageColor3 = Color3.fromRGB(226, 102, 208)
			Frame.ScaleType = Enum.ScaleType.Slice
			Frame.SliceCenter = Rect.new(100, 100, 100, 100)
			Frame.SliceScale = 0.060
			Category_2.CanvasSize = Category_2.CanvasSize + UDim2.new(0,0,0,48)
			TextLabel.Parent = Frame
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.Selectable = true
			TextLabel.Size = UDim2.new(0, 69, 0, 24)
			TextLabel.ZIndex = 5
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel.Font = Enum.Font.GothamBold
			TextLabel.Text = "  "..name2
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 16.000
			local Frame_2 = Instance.new("ImageLabel")
			Frame_2.Name = "Frame"
			Frame_2.Parent = Frame
			Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Frame_2.BackgroundTransparency = 1.000
			Frame_2.Position = UDim2.new(0, 0, 0.458333343, 0)
			Frame_2.Size = UDim2.new(0, 405, 0, 12)
			Frame_2.ZIndex = 3
			Frame_2.Image = "rbxassetid://3570695787"
			Frame_2.ImageColor3 = Color3.fromRGB(190, 86, 176)
			Frame_2.ScaleType = Enum.ScaleType.Slice
			Frame_2.SliceCenter = Rect.new(100, 100, 100, 100)
			Frame_2.SliceScale = 0.060
			local UIPadding_2 = Instance.new("UIPadding")
			local UIListLayout_2 = Instance.new("UIListLayout")
			UIPadding_2.Parent = Frame_2
			UIPadding_2.PaddingLeft = UDim.new(0, 6)
			UIPadding_2.PaddingRight = UDim.new(0, 6)
			UIPadding_2.PaddingTop = UDim.new(0, 20)

			UIListLayout_2.Parent = Frame_2
			UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_2.Padding = UDim.new(0, 4)
			local sect = {}
			function sect:Label(name3)
				local Label = Instance.new("TextLabel")
				local BG_2 = Instance.new("ImageLabel")
				rap.Size = rap.Size + UDim2.new(0,0,0,38)
				Frame_2.Size = Frame_2.Size + UDim2.new(0,0,0,38)
				Label.Name = name3
				Label.Parent = Frame_2
				Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Label.BackgroundTransparency = 1.000
				Label.Size = UDim2.new(1, 0, 0, 30)
				Label.ZIndex = 6
				Label.Font = Enum.Font.GothamBold
				Label.Text = "  "..name3
				Label.TextColor3 = Color3.fromRGB(255, 255, 255)
				Label.TextSize = 14.000
				Label.TextXAlignment = Enum.TextXAlignment.Left
				Category_2.CanvasSize = Category_2.CanvasSize + UDim2.new(0,0,0,38)
				BG_2.Name = "BG"
				BG_2.Parent = Label
				BG_2.Active = true
				BG_2.AnchorPoint = Vector2.new(0.5, 0.5)
				BG_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				BG_2.BackgroundTransparency = 1.000
				BG_2.Position = UDim2.new(0.5, 0, 0.5, 0)
				BG_2.Selectable = true
				BG_2.Size = UDim2.new(1, 0, 1, 0)
				BG_2.ZIndex = 4
				BG_2.Image = "rbxassetid://3570695787"
				BG_2.ImageColor3 = Color3.fromRGB(161, 72, 151)
				BG_2.ScaleType = Enum.ScaleType.Slice
				BG_2.SliceCenter = Rect.new(100, 100, 100, 100)
				BG_2.SliceScale = 0.060
			end
			function sect:Toggle(name3,callback)
				callback = callback or function() end
				local Toggle = Instance.new("TextButton")
				local V1 = Instance.new("ImageButton")
				local Circle = Instance.new("ImageLabel")
				local Bar = Instance.new("ImageLabel")
				local BG_3 = Instance.new("ImageLabel")
				rap.Size = rap.Size + UDim2.new(0,0,0,38)
				Frame_2.Size = Frame_2.Size + UDim2.new(0,0,0,38)
				Category_2.CanvasSize = Category_2.CanvasSize + UDim2.new(0,0,0,38)
				Toggle.Name = name3
				Toggle.Parent = Frame_2
				Toggle.Active = false
				Toggle.BackgroundColor3 = Color3.fromRGB(226, 102, 208)
				Toggle.BackgroundTransparency = 1.000
				Toggle.Selectable = false
				Toggle.Size = UDim2.new(1, 0, 0, 30)
				Toggle.ZIndex = 5
				Toggle.Font = Enum.Font.GothamBold
				Toggle.Text = "  "..name3
				Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
				Toggle.TextSize = 14.000
				Toggle.TextXAlignment = Enum.TextXAlignment.Left

				V1.Name = "V1"
				V1.Parent = Toggle
				V1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				V1.BackgroundTransparency = 1.000
				V1.BorderColor3 = Color3.fromRGB(27, 42, 53)
				V1.BorderSizePixel = 0
				V1.ClipsDescendants = true
				V1.Position = UDim2.new(0.86500001, 0, 0, 0)
				V1.Size = UDim2.new(0, 46, 0, 30)
				V1.ZIndex = 6
				V1.AutoButtonColor = false
				V1.Image = "rbxassetid://3570695787"
				V1.ImageColor3 = Color3.fromRGB(52, 156, 76)
				V1.ImageTransparency = 1.000
				V1.ScaleType = Enum.ScaleType.Slice
				V1.SliceCenter = Rect.new(100, 100, 100, 100)
				V1.SliceScale = 0.060

				Circle.Name = "Circle"
				Circle.Parent = V1
				Circle.Active = true
				Circle.AnchorPoint = Vector2.new(0, 0.5)
				Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Circle.BackgroundTransparency = 1.000
				Circle.BorderColor3 = Color3.fromRGB(27, 42, 53)
				Circle.BorderSizePixel = 0
				Circle.ClipsDescendants = true
				Circle.Position = UDim2.new(0.0652173907, 0, 0.5, 0)
				Circle.Selectable = true
				Circle.Size = UDim2.new(0, 18, 0, 18)
				Circle.ZIndex = 8
				Circle.Image = "rbxassetid://3570695787"
				Circle.ImageColor3 = Color3.fromRGB(255, 115, 232)
				Circle.ScaleType = Enum.ScaleType.Slice
				Circle.SliceCenter = Rect.new(100, 100, 100, 100)

				Bar.Name = "Bar"
				Bar.Parent = V1
				Bar.Active = true
				Bar.AnchorPoint = Vector2.new(0.5, 0.5)
				Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Bar.BackgroundTransparency = 1.000
				Bar.BorderColor3 = Color3.fromRGB(27, 42, 53)
				Bar.BorderSizePixel = 0
				Bar.ClipsDescendants = true
				Bar.Position = UDim2.new(0.5, 0, 0.5, 0)
				Bar.Selectable = true
				Bar.Size = UDim2.new(0, 20, 0, 10)
				Bar.ZIndex = 7
				Bar.Image = "rbxassetid://3570695787"
				Bar.ImageColor3 = Color3.fromRGB(59, 59, 59)
				Bar.ScaleType = Enum.ScaleType.Slice
				Bar.SliceCenter = Rect.new(100, 100, 100, 100)
				Bar.SliceScale = 0.060

				BG_3.Name = "BG"
				BG_3.Parent = Toggle
				BG_3.Active = true
				BG_3.AnchorPoint = Vector2.new(0.5, 0.5)
				BG_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				BG_3.BackgroundTransparency = 1.000
				BG_3.Position = UDim2.new(0.5, 0, 0.5, 0)
				BG_3.Selectable = true
				BG_3.Size = UDim2.new(1, 0, 1, 0)
				BG_3.ZIndex = 4
				BG_3.Image = "rbxassetid://3570695787"
				BG_3.ImageColor3 = Color3.fromRGB(161, 72, 151)
				BG_3.ScaleType = Enum.ScaleType.Slice
				BG_3.SliceCenter = Rect.new(100, 100, 100, 100)
				BG_3.SliceScale = 0.060
				local tog = false
				local function tween(a,b,c)
					game:GetService("TweenService"):Create(a,TweenInfo.new(b),c):Play()
				end
				V1.MouseButton1Click:Connect(function()
					if tog == false then tog = true
						tween(Circle,0.3,{Position = UDim2.new(0.55,0,0.5,0)})
						tween(Circle,0.3,{ImageColor3 = Color3.fromRGB(222, 100, 204)})
						tween(Bar,0.3,{ImageColor3 = Color3.fromRGB(200, 90, 186)})
						
					else
						tog = false
						tween(Circle,0.3,{Position = UDim2.new(0.065,0,0.5,0)})
						tween(Circle,0.3,{ImageColor3 = Color3.fromRGB(255, 115, 232)})
						tween(Bar,0.3,{ImageColor3 = Color3.fromRGB(59, 59, 59)})
					end
					callback(tog)
				end)
				Toggle.MouseButton1Click:Connect(function()
					if tog == false then tog = true
						tween(Circle,0.3,{Position = UDim2.new(0.55,0,0.5,0)})
						tween(Circle,0.3,{ImageColor3 = Color3.fromRGB(222, 100, 204)})
						tween(Bar,0.3,{ImageColor3 = Color3.fromRGB(200, 90, 186)})
					else
						tog = false
						tween(Circle,0.3,{Position = UDim2.new(0.065,0,0.5,0)})
						tween(Circle,0.3,{ImageColor3 = Color3.fromRGB(255, 115, 232)})
						tween(Bar,0.3,{ImageColor3 = Color3.fromRGB(59, 59, 59)})
					end
					callback(tog)
				end)
			end
			function sect:Slider(name3,min,default,max,callback)
				min = min or 0
				max = max or 100
				default = default or max/4
				callback = callback or function() end
				local Slider = Instance.new("TextButton")
				local BG_4 = Instance.new("ImageLabel")
				local In = Instance.new("TextButton")
				local Inner = Instance.new("TextButton")
				local Number = Instance.new("TextLabel")
				rap.Size = rap.Size + UDim2.new(0,0,0,58)
				Frame_2.Size = Frame_2.Size + UDim2.new(0,0,0,58)
				Category_2.CanvasSize = Category_2.CanvasSize + UDim2.new(0,0,0,38)
				Slider.Name = name3
				Slider.Parent = Frame_2
				Slider.Active = false
				Slider.BackgroundColor3 = Color3.fromRGB(226, 102, 208)
				Slider.BackgroundTransparency = 1.000
				Slider.Position = UDim2.new(0.0148148146, 0, 0.407407403, 0)
				Slider.Selectable = false
				Slider.Size = UDim2.new(1, 0, 0, 52)
				Slider.ZIndex = 5
				Slider.Font = Enum.Font.GothamBold
				Slider.LineHeight = 3.000
				Slider.Text = "  "..name3
				Slider.TextColor3 = Color3.fromRGB(255, 255, 255)
				Slider.TextSize = 14.000
				Slider.TextXAlignment = Enum.TextXAlignment.Left

				BG_4.Name = "BG"
				BG_4.Parent = Slider
				BG_4.Active = true
				BG_4.AnchorPoint = Vector2.new(0.5, 0.5)
				BG_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				BG_4.BackgroundTransparency = 1.000
				BG_4.Position = UDim2.new(0.5, 0, 0.5, 0)
				BG_4.Selectable = true
				BG_4.Size = UDim2.new(1, 0, 1, 0)
				BG_4.ZIndex = 4
				BG_4.Image = "rbxassetid://3570695787"
				BG_4.ImageColor3 = Color3.fromRGB(161, 72, 151)
				BG_4.ScaleType = Enum.ScaleType.Slice
				BG_4.SliceCenter = Rect.new(100, 100, 100, 100)
				BG_4.SliceScale = 0.060
				
				In.Name = "In"
				In.Parent = Slider
				In.Active = false
				In.BackgroundColor3 = Color3.fromRGB(116, 52, 108)
				In.ClipsDescendants = true
				In.Position = UDim2.new(0.0203562342, 0, 0.499999404, 0)
				In.Selectable = false
				In.Size = UDim2.new(0, 362, 0, 14)
				In.ZIndex = 6
				In.AutoButtonColor = false
				In.Text = ""
				local inuicorn = Instance.new("UICorner",In)
				inuicorn.CornerRadius = UDim.new(0,4)
				Inner.Name = "Inner"
				Inner.Parent = In
				Inner.Active = false
				Inner.BackgroundColor3 = Color3.fromRGB(200, 90, 186)
				Inner.Selectable = false
				Inner.Size = UDim2.new(0, 0, 1, 0)
				Inner.ZIndex = 7
				Inner.AutoButtonColor = false
				Inner.Text = ""
				local ineruicorn = Instance.new("UICorner",Inner)
				ineruicorn.CornerRadius = UDim.new(0,4)
				Number.Name = "Number"
				Number.Parent = Slider
				Number.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Number.BackgroundTransparency = 1.000
				Number.Position = UDim2.new(0.869576395, 0, -3.0932037e-07, 0)
				Number.Size = UDim2.new(0, 29, 0, 20)
				Number.ZIndex = 4
				Number.Font = Enum.Font.ArialBold
				Number.Text = "0"
				Number.TextColor3 = Color3.fromRGB(255, 255, 255)
				Number.TextSize = 14.000

				
				local Slider = In
				local Inner = Inner
				local mouse = game.Players.LocalPlayer:GetMouse()
				local old = ""
				local uis = game:GetService("UserInputService")
				local Value;
				local down = false
				Number.Text = default
				game:GetService("TweenService"):Create(Inner, TweenInfo.new(0.05), {Size = UDim2.new(default/max, 0, 0, 14)}):Play()
				local function Activate()
					spawn(function()
						down = true
						Value = math.floor((((tonumber(max) - tonumber(min)) / 362) * Inner.AbsoluteSize.X) +tonumber(min)) or 0
						pcall(function()
							callback(Value)
						end)
						Number.Text = Value     
						game:GetService("TweenService"):Create(Inner, TweenInfo.new(0.05), {Size = UDim2.new(0, math.clamp(mouse.X - Inner.AbsolutePosition.X, 0, 362), 0, 14)}):Play()

						while game:GetService("RunService").RenderStepped:wait() and down do
							Value = math.floor((((tonumber(max) - tonumber(min)) / 362) * Inner.AbsoluteSize.X) +tonumber(min)) or 0
							Number.Text = Value               
							pcall(function()
								callback(Value)
							end)
							game:GetService("TweenService"):Create(Inner, TweenInfo.new(0.05), {Size = UDim2.new(0, math.clamp(mouse.X - Inner.AbsolutePosition.X, 0, 362), 0, 14)}):Play()
						end
					end)
				end
				Inner.MouseButton1Down:Connect(function()
					Activate()
				end)
				Slider.MouseButton1Down:Connect(function()
					Activate()
				end)
				uis.InputEnded:connect(function(key)
					if key.UserInputType == Enum.UserInputType.MouseButton1 and down then
						down = false
						Value = math.floor((((tonumber(max) - tonumber(min)) / 362) * Inner.AbsoluteSize.X) +tonumber(min)) or 0
						Number.Text = Value     
						pcall(function()
							callback(Value)
						end)
						game:GetService("TweenService"):Create(Inner, TweenInfo.new(0.05), {Size = UDim2.new(0, math.clamp(mouse.X - Inner.AbsolutePosition.X, 0, 362), 0, 14)}):Play()
					end        
				end)
			end
			function sect:Button(name,callback)
				callback = callback or function() end
				local Button = Instance.new("TextButton")
				local BG_5 = Instance.new("ImageLabel")
				Button.Name = name
				Button.Parent = Frame_2
				Button.Active = false
				Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Button.BackgroundTransparency = 1.000
				Button.ClipsDescendants = true
				Button.Selectable = false
				Button.Size = UDim2.new(1, 0, 0, 30)
				Button.ZIndex = 6
				Button.Font = Enum.Font.GothamBold
				Button.TextColor3 = Color3.fromRGB(255, 255, 255)
				Button.TextSize = 14.000
				rap.Size = rap.Size + UDim2.new(0,0,0,38)
				Frame_2.Size = Frame_2.Size + UDim2.new(0,0,0,38)
				Category_2.CanvasSize = Category_2.CanvasSize + UDim2.new(0,0,0,38)
				BG_5.Name = "BG"
				BG_5.Parent = Button
				BG_5.Active = true
				BG_5.AnchorPoint = Vector2.new(0.5, 0.5)
				BG_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				BG_5.BackgroundTransparency = 1.000
				BG_5.Position = UDim2.new(0.5, 0, 0.5, 0)
				BG_5.Selectable = true
				BG_5.Size = UDim2.new(1, 0, 1, 0)
				BG_5.ZIndex = 4
				BG_5.Image = "rbxassetid://3570695787"
				BG_5.ImageColor3 = Color3.fromRGB(161, 72, 151)
				BG_5.ScaleType = Enum.ScaleType.Slice
				BG_5.SliceCenter = Rect.new(100, 100, 100, 100)
				BG_5.SliceScale = 0.060
				m=game.Players.LocalPlayer:GetMouse()
				function CircleClick(Button, X, Y)
					coroutine.resume(coroutine.create(function()
						Button.ClipsDescendants = true
						local Circle = Instance.new("ImageLabel",Button) Circle.BackgroundTransparency=1;Circle.Visible=true;Circle.Name="Circle";Circle.Image="rbxassetid://266543268";Circle.ImageColor3=Color3.fromRGB(190, 86, 176)
						Circle.Parent = Button
						Circle.ZIndex=5
						local NewX = X - Circle.AbsolutePosition.X
						local NewY = Y - Circle.AbsolutePosition.Y
						Circle.Position = UDim2.new(0, NewX, 0, NewY)
						local Size = 0
						if Button.AbsoluteSize.X > Button.AbsoluteSize.Y then
							Size = Button.AbsoluteSize.X*1.5
						elseif Button.AbsoluteSize.X < Button.AbsoluteSize.Y then
							Size = Button.AbsoluteSize.Y*1.5
						elseif Button.AbsoluteSize.X == Button.AbsoluteSize.Y then																																																																													
							Size = Button.AbsoluteSize.X*1.5
						end
						local Time = 0.3
						Circle:TweenSizeAndPosition(UDim2.new(0, Size, 0, Size), UDim2.new(0.5, -Size/2, 0.5, -Size/2), "Out", "Quad", Time, false, nil)
						for i=1,10 do
							Circle.ImageTransparency = Circle.ImageTransparency + 0.01
							wait(Time/10)
						end
						Circle:Destroy()
					end))
				end
				Button.MouseButton1Click:Connect(function()
					CircleClick(Button,m.X,m.Y)
					callback()
				end)
			end
			function sect:Dropdown(name3,args,callback)
				args = args or {"Your","fat","and","Gay","FAGGOT"}
				callback = callback or function() end
				local Dropdown = Instance.new("TextButton")
				local BG_6 = Instance.new("ImageLabel")
				local ScrollingFrame = Instance.new("ScrollingFrame")
				local UIListLayout_3 = Instance.new("UIListLayout")
				local UIPadding_3 = Instance.new("UIPadding")
				local ImageButton = Instance.new("ImageButton")
				rap.Size = rap.Size + UDim2.new(0,0,0,38)
				Frame_2.Size = Frame_2.Size + UDim2.new(0,0,0,38)
				Category_2.CanvasSize = Category_2.CanvasSize + UDim2.new(0,0,0,38)
				Dropdown.Name = name3
				Dropdown.Parent = Frame_2
				Dropdown.Active = false
				Dropdown.BackgroundColor3 = Color3.fromRGB(226, 102, 208)
				Dropdown.BackgroundTransparency = 1.000
				Dropdown.Selectable = false
				Dropdown.Size = UDim2.new(1, 0, 0, 30)
				Dropdown.ZIndex = 5
				Dropdown.Font = Enum.Font.GothamBold
				Dropdown.Text = "  "..name3
				Dropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
				Dropdown.TextSize = 14.000
				Dropdown.TextXAlignment = Enum.TextXAlignment.Left

				BG_6.Name = "BG"
				BG_6.Parent = Dropdown
				BG_6.Active = true
				BG_6.AnchorPoint = Vector2.new(0.5, 0.5)
				BG_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				BG_6.BackgroundTransparency = 1.000
				BG_6.Position = UDim2.new(0.5, 0, 0.5, 0)
				BG_6.Selectable = true
				BG_6.Size = UDim2.new(1, 0, 1, 0)
				BG_6.ZIndex = 4
				BG_6.Image = "rbxassetid://3570695787"
				BG_6.ImageColor3 = Color3.fromRGB(161, 72, 151)
				BG_6.ScaleType = Enum.ScaleType.Slice
				BG_6.SliceCenter = Rect.new(100, 100, 100, 100)
				BG_6.SliceScale = 0.060

				ScrollingFrame.Parent = Dropdown
				ScrollingFrame.Active = true
				ScrollingFrame.AnchorPoint = Vector2.new(0.5, 0)
				ScrollingFrame.BackgroundColor3 = Color3.fromRGB(161, 72, 151)
				ScrollingFrame.BorderSizePixel = 0
				ScrollingFrame.Position = UDim2.new(0.5, 0, 0.75, 0)
				ScrollingFrame.Size = UDim2.new(1, 0, 0, 0)
				ScrollingFrame.ZIndex = 11
				ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)

				UIListLayout_3.Parent = ScrollingFrame
				UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

				UIPadding_3.Parent = ScrollingFrame
				UIPadding_3.PaddingTop = UDim.new(0, 12)
		
				ImageButton.Parent = Dropdown
				ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ImageButton.BackgroundTransparency = 1.000
				ImageButton.Position = UDim2.new(0.923364222, 0, 0.29309839, 0)
				ImageButton.Size = UDim2.new(0, 10, 0, 12)
				ImageButton.ZIndex = 11
				ImageButton.Image = "rbxassetid://252644715"
				local function tween(a,b,c)
					game:GetService("TweenService"):Create(a,TweenInfo.new(b),c):Play()
				end
				local H = false
				local old = ""
				local nums = 0
				for i,v in pairs(args) do
					local Button_2 = Instance.new("TextButton")
					local BG_7 = Instance.new("ImageLabel")
					Button_2.Name = v
					Button_2.Parent = ScrollingFrame
					Button_2.Active = false
					Button_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Button_2.BackgroundTransparency = 1.000
					Button_2.Selectable = false
					Button_2.Size = UDim2.new(1, 0, 0, 30)
					Button_2.ZIndex = 12
					Button_2.Text = v
					Button_2.Font = Enum.Font.GothamBold
					Button_2.TextColor3 = Color3.fromRGB(255, 255, 255)
					Button_2.TextSize = 14.000

					BG_7.Name = "BG"
					BG_7.Parent = Button_2
					BG_7.Active = true
					BG_7.AnchorPoint = Vector2.new(0.5, 0.5)
					BG_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					BG_7.BackgroundTransparency = 1.000
					BG_7.Position = UDim2.new(0.5, 0, 0.5, 0)
					BG_7.Selectable = true
					BG_7.Size = UDim2.new(1, -12, 1, -4)
					BG_7.ZIndex = 11
					BG_7.Image = "rbxassetid://3570695787"
					BG_7.ImageColor3 = Color3.fromRGB(190, 86, 176)
					BG_7.ScaleType = Enum.ScaleType.Slice
					BG_7.SliceCenter = Rect.new(100, 100, 100, 100)
					BG_7.SliceScale = 0.060
					nums=nums+1
					Button_2.MouseButton1Click:Connect(function()
						H = false
						tween(ScrollingFrame,0.3,{Size=UDim2.new(1,0,0,0)})
						tween(ImageButton,0.3,{Rotation=0})
						old = Button_2.Text
						Dropdown.Text = "  "..name3..":  "..old
						wait(0.3)tween(Button_2,0.3,{TextColor3=Color3.fromRGB(255, 255, 255)})
					end)
					Button_2.MouseEnter:Connect(function()
						tween(Button_2.BG,0.3,{ImageColor3 = Color3.fromRGB(173, 78, 159)})
					end)
					Button_2.MouseLeave:Connect(function()
						tween(Button_2.BG,0.3,{ImageColor3 = Color3.fromRGB(190, 86, 176)})
					end)
				end
				local httphentai = 12
				if nums > 4 then
					httphentai = 156
				else
					httphentai = 12+(nums*30)
				end
				Dropdown.MouseButton1Click:Connect(function()
					if H==true then
						H = false
						tween(ScrollingFrame,0.3,{Size=UDim2.new(1,0,0,0)})
						tween(ImageButton,0.3,{Rotation=0})
						Dropdown.Text = "  "..name3..":  "..old
					else
						H = true
						tween(ScrollingFrame,0.3,{Size=UDim2.new(1,0,0,httphentai)})
						tween(ImageButton,0.3,{Rotation=180})
						Dropdown.Text = "  "..name3..":  ..."
					end
				end)
				ImageButton.MouseButton1Click:Connect(function()
					if H==true then
						H = false
						tween(ScrollingFrame,0.3,{Size=UDim2.new(1,0,0,0)})
						tween(ImageButton,0.3,{Rotation=0})
						Dropdown.Text = "  "..name3..":  "..old
					else
						H = true
						tween(ScrollingFrame,0.3,{Size=UDim2.new(1,0,0,httphentai)})
						tween(ImageButton,0.3,{Rotation=180})
						Dropdown.Text = "  "..name3..":  ..."
					end
				end)
			end
			function sect:Box(name3,callback)
				callback = callback or function() end
				local TextBox = Instance.new("TextLabel")
				local BG_8 = Instance.new("ImageLabel")
				local TextBox_2 = Instance.new("TextBox")
				local TextBox_Roundify_6px = Instance.new("ImageLabel")
				TextBox.Name = name3
				TextBox.Parent = Frame_2
				TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextBox.BackgroundTransparency = 1.000
				TextBox.Size = UDim2.new(1, 0, 0, 30)
				TextBox.ZIndex = 6
				TextBox.Font = Enum.Font.GothamBold
				TextBox.Text = "  "..name3
				TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextBox.TextSize = 14.000
				TextBox.TextXAlignment = Enum.TextXAlignment.Left
				rap.Size = rap.Size + UDim2.new(0,0,0,38)
				Frame_2.Size = Frame_2.Size + UDim2.new(0,0,0,38)
				Category_2.CanvasSize = Category_2.CanvasSize + UDim2.new(0,0,0,38)
				BG_8.Name = "BG"
				BG_8.Parent = TextBox
				BG_8.Active = true
				BG_8.AnchorPoint = Vector2.new(0.5, 0.5)
				BG_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				BG_8.BackgroundTransparency = 1.000
				BG_8.Position = UDim2.new(0.5, 0, 0.5, 0)
				BG_8.Selectable = true
				BG_8.Size = UDim2.new(1, 0, 1, 0)
				BG_8.ZIndex = 4
				BG_8.Image = "rbxassetid://3570695787"
				BG_8.ImageColor3 = Color3.fromRGB(161, 72, 151)
				BG_8.ScaleType = Enum.ScaleType.Slice
				BG_8.SliceCenter = Rect.new(100, 100, 100, 100)
				BG_8.SliceScale = 0.060

				TextBox_2.Parent = TextBox
				TextBox_2.AnchorPoint = Vector2.new(0, 0.5)
				TextBox_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextBox_2.BackgroundTransparency = 1.000
				TextBox_2.BorderSizePixel = 0
				TextBox_2.Position = UDim2.new(0.692167878, 0, 0.5, 0)
				TextBox_2.Size = UDim2.new(-0.0381679386, 115, 1, -8)
				TextBox_2.ZIndex = 6
				TextBox_2.Font = Enum.Font.GothamBold
				TextBox_2.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
				TextBox_2.PlaceholderText = "TextHere"
				TextBox_2.Text = ""
				TextBox_2.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextBox_2.TextSize = 14.000

				TextBox_Roundify_6px.Name = "TextBox_Roundify_6px"
				TextBox_Roundify_6px.Parent = TextBox_2
				TextBox_Roundify_6px.Active = true
				TextBox_Roundify_6px.AnchorPoint = Vector2.new(0.5, 0.5)
				TextBox_Roundify_6px.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextBox_Roundify_6px.BackgroundTransparency = 1.000
				TextBox_Roundify_6px.Position = UDim2.new(0.5, 0, 0.5, 0)
				TextBox_Roundify_6px.Selectable = true
				TextBox_Roundify_6px.Size = UDim2.new(1, 0, 1, 0)
				TextBox_Roundify_6px.ZIndex = 5
				TextBox_Roundify_6px.Image = "rbxassetid://3570695787"
				TextBox_Roundify_6px.ImageColor3 = Color3.fromRGB(116, 52, 108)
				TextBox_Roundify_6px.ScaleType = Enum.ScaleType.Slice
				TextBox_Roundify_6px.SliceCenter = Rect.new(100, 100, 100, 100)
				TextBox_Roundify_6px.SliceScale = 0.060
				TextBox_2.FocusLost:Connect(function()callback(TextBox_2.Text)end)
			end
			return sect;
		end
		return cat;
	end
	local original = Title.Text
	function win:Active(name1)
		local function tween(a,b,c)
			game:GetService("TweenService"):Create(a,TweenInfo.new(b),c):Play()
		end
		for i,v in pairs(List:GetChildren()) do if v:IsA("TextButton") then
					tween(v.BG,0.3,{ImageColor3 = Color3.fromRGB(200, 90, 186)})
				
			end
		end
		for i,v in pairs(categories:GetChildren()) do 
			v.Visible = false 
		end
		categories[name1].Visible = true
		tween(List[name1].BG,0.3,{ImageColor3 = Color3.fromRGB(173, 78, 159)})
		Title.Text =  original .. " / "..name1
	end
	local function EOVOOM_fake_script() -- Close.LocalScript 
		local script = Instance.new('LocalScript', Close)

		local function tween(a,b,c)
			game:GetService("TweenService"):Create(a,TweenInfo.new(b),c):Play()
		end
		script.Parent.MouseEnter:Connect(function()
			tween(script.Parent,0.2,{ImageColor3 = Color3.fromRGB(255, 0, 0)})
		end)
		script.Parent.MouseLeave:Connect(function()
			tween(script.Parent,0.1,{ImageColor3 = Color3.fromRGB(255, 255, 255)})
		end)
	end
	coroutine.wrap(EOVOOM_fake_script)()
	function win:Reload()
		local script = Instance.new('LocalScript', List)

		local function tween(a,b,c)
			game:GetService("TweenService"):Create(a,TweenInfo.new(b),c):Play()
		end
		local active = nil
		for i,v in pairs(script.Parent:GetChildren()) do if v:IsA("TextButton") then
				v.MouseEnter:Connect(function()
					tween(v.BG,0.3,{ImageColor3 = Color3.fromRGB(173, 78, 159)})
				end)
				v.MouseLeave:Connect(function()
					if v ~= active then
						tween(v.BG,0.3,{ImageColor3 = Color3.fromRGB(200, 90, 186)})
					end
				end)
				v.MouseButton1Click:connect(function()
					active = v
					for i,v in pairs(script.Parent.Parent.categories:GetChildren()) do 
						if v ~= active then v.Visible = false end
					end
					script.Parent.Parent.categories[v.Name].Visible = true
					tween(v.BG,0.3,{ImageColor3 = Color3.fromRGB(173, 78, 159)})
					for i,v in pairs(script.Parent:GetChildren()) do if v:IsA("TextButton") then
							if v ~= active then
								tween(v.BG,0.3,{ImageColor3 = Color3.fromRGB(200, 90, 186)})
							end
						end
					end


					script.Parent.Parent.Top.Title.Text = original .. " / "..v.Name
				end)
			end
		end
	end
	return win;
end
return library;
