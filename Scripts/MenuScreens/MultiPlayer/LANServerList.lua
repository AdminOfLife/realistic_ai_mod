UI.PageLANServerList=
{
	Servers={},
	GUI =
	{
		ServerList=
		{
			OnInit = function (Sender)
				Sender:ClearColumns();
				Sender:AddColumn("@Name", 248, UIALIGN_LEFT, UI.szListViewOddColor, "0 0 0 0");
				Sender:AddColumn("@GameType", 72, UIALIGN_CENTER, UI.szListViewEvenColor, "0 0 0 64");
				Sender:AddColumn("@Mod", 72, UIALIGN_CENTER, UI.szListViewOddColor, "0 0 0 0");
				Sender:AddColumn("@Map", 96, UIALIGN_CENTER, UI.szListViewEvenColor, "0 0 0 64");
				Sender:AddColumn("@Players", 48, UIALIGN_CENTER, UI.szListViewOddColor, "0 0 0 0", nil, nil, 1);
				Sender:AddColumn("@Ping", 42, UIALIGN_CENTER, UI.szListViewEvenColor, "0 0 0 64", nil, nil, 1);				
				Sender:AddColumn("@IP", 104, UIALIGN_CENTER, UI.szListViewOddColor, "0 0 0 0");
			end,
			
			OnChanged = function(Sender)
				if (Sender:GetSelectionCount() > 0) then
					UI:EnableWidget(UI.PageMultiplayer.GUI.Join);
				else
					UI:DisableWidget(UI.PageMultiplayer.GUI.Join);
				end
			end,

			skin = UI.skins.ListView,
			fontsize = 12,

			left = 200, top = 140.5,
			width = 580, height = 318,
			
			tabstop = 3,

			vscrollbar=
			{
				skin = UI.skins.VScrollBar,
			},

			hscrollbar=
			{
				skin = UI.skins.HScrollBar,
			},

			OnCommand = function(Sender)
			
				local iSelected = UI.PageLANServerList.GUI.ServerList:GetSelection(0);

				if(iSelected and UI.PageLANServerList.Servers[iSelected].Mod~="@UnknownMod")then
					if (ClientStuff) then
						UI.YesNoBox(Localize("TerminateCurrentGame"), Localize("TerminateCurrentGameLabel"), UI.PageLANServerList.CheckChangeModToJoin);
					else
						UI.PageLANServerList.CheckChangeModToJoin();
					end
				end
			end
		},

		RefreshingLabel=
		{
			classname = "static",
			left = 201, top = 141,
			width = 578, height = 317,
			
			flags = UIFLAG_ENABLED,
			
			zorder = 150,
			
			color = "0 0 0 196",
			
			halign = UIALIGN_CENTER,
			valign = UIALIGN_MIDDLE,
			
			text = Localize("RefreshingServerList");
		},

		OnActivate = function(Sender)
			UI.PageLANServerList.RefreshList();
		end,
		
		OnDeactivate = function(Sender)
			UI.PageLANServerList.bRefreshing = nil;
		end,
		
		OnUpdate = function(Sender)			
			if (UI.PageLANServerList.bRefreshing) then
				if (UI.PageLANServerList.fRefreshingTime + 1.70 < _time) then
					UI.PageLANServerList.bRefreshing = nil;
					UI.PageLANServerList:PopulateServerList(UI.PageLANServerList);
				end
-- uncomment this to have automatic refreshing every 30seconds after last refresh
--			elseif (_time - UI.PageLANServerList.fLastRefreshingTime > 30) then
--				UI.PageLANServerList.RefreshList();
			end
		end,
	},
	
	-- is a modchange needed?
	CheckChangeModToJoin = function()
		System:Log("CheckChangeModToJoin");		-- debug
		local Page = UI.PageLANServerList;
		local iSelected = Page.GUI.ServerList:GetSelection(0);
		
		local sSelected=Page.Servers[iSelected].Mod;
		local sCurrent=Game:GetCurrentModName();
	
		System:Log("CheckChangeModToJoin '"..sSelected.."' '"..sCurrent.."'");	-- debug
		
		-- is a Mod change needed
		if sSelected~=sCurrent then
			UI.YesNoBox( Localize( "ModChange1" ), Localize( "ModChange2" ), UI.PageLANServerList.ChangeModToJoin,nil );
		else
			UI.PageLANServerList.PrepareToJoin();
		end
	end,
	
	-- change the mod and restart the game
	ChangeModToJoin = function()
		local Page = UI.PageLANServerList;
		local iSelected = Page.GUI.ServerList:GetSelection(0);
		
		System:Log("ChangeModToJoin");		-- debug
		Game:LoadMOD(Page.Servers[iSelected].Mod,1);
	end,

	PrepareToJoin = function()
		System:Log("PrepareToJoin");		-- debug
		local Page = UI.PageLANServerList;
		local iSelected = Page.GUI.ServerList:GetSelection(0);
		
		Game:Disconnect();
		
		if (iSelected) then
			local szServerIP = Page.Servers[iSelected].IP;
			
			UI.PageLANServerList.szJoinIP = szServerIP;

			UI.PageLANServerList.JoinServer();
		end	
	end,

	JoinServer = function(Sender)
		if (UI.PageLANServerList.szJoinIP) then
			Game:Connect(UI.PageLANServerList.szJoinIP, 1);					-- (IP=..,bLateSwitch=1,bCDKeyAuthorization=0)
		end
		UI.PageLANServerList.szJoinIP = nil;
	end,

	RefreshList = function(Sender)
		UI:ShowWidget("RefreshingLabel", "LANServerList");

		UI.PageLANServerList.bRefreshing = 1;
		UI.PageLANServerList.fRefreshingTime = _time;

		Game:RefreshServerList();
	end,

	PopulateServerList = function(Sender)

		local ServerList = Game:GetServerList();
		local LocalServerList = UI.PageLANServerList.Servers;
		local ServerListView = UI.PageLANServerList.GUI.ServerList;
		local ServerIndex;
		local szPing;
		local szPlayers;

		ServerListView:Clear();

		for iIndex, Server in ServerList do
			if (Server.Password and Server.Password ~= 0) then
				Server.Name = "$4"..Server.Name;
			else
				Server.Name = "$3"..Server.Name;
			end
			
			if (Server.CheatsEnabled and Server.CheatsEnabled ~= 0) then
				Server.Name = "[cheats] " .. Server.Name;
			end

			-- colored server settings			
			if (Server.Ping < 50) then
				szPing = "$3"..Server.Ping;
			elseif (Server.Ping < 80) then
				szPing = "$6"..Server.Ping;
			elseif (Server.Ping < 120) then
				szPing = "$8"..Server.Ping;
			else
				szPing = "$4"..Server.Ping;
			end

			if (Server.Players == 0) then
				szPlayers = "$6" ..Server.Players.."$1/$6"..Server.MaxPlayers;
			elseif (Server.Players < Server.MaxPlayers) then
				szPlayers = "$3" ..Server.Players.."$1/$3"..Server.MaxPlayers;
			else
				szPlayers = "$4" ..Server.Players.."$1/$4"..Server.MaxPlayers;
			end

			if (Server.InternetServer == 0) then
				ServerIndex = ServerListView:AddItem(Server.Name, Server.GameType, Server.Mod, Server.Map, szPlayers, szPing, Server.IP);
				LocalServerList[ServerIndex] = {};
				LocalServerList[ServerIndex].IP = Server.IP;
				LocalServerList[ServerIndex].Mod = Server.Mod;
				LocalServerList[ServerIndex].Password = Server.Password;
			else
				printf("Not showing internet server: %s",Server.IP);
			end
			
		end

		UI:HideWidget("RefreshingLabel", "LANServerList");
		UI.PageLANServerList.fLastRefreshingTime = _time;
	end,
}

UI:CreateScreenFromTable("LANServerList", UI.PageLANServerList.GUI);