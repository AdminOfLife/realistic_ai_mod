


PlaceableExplo = {
	type = "Trigger",

	Properties = {
		DimX = 5,
		DimY = 5,
		DimZ = 5,
		ScriptCommand="",
		PlaySequence="",
		dummyModel="Objects/Pickups/explosive/explosive_dummy.cgf",		--
		fileModel="objects/pickups/explosive/explosive.cgf",			--
		object_ModelDestroyed="",										--
		
		ExplosionEffect="",
		ExplosionScale=1,
		
		countdown=10, -- '-1' to disable
		explDamage = 100,
		explRmin = 2.0,
		explRmax = 20.5,
		explRadius = 3,
		explImpulsive_pressure = 200,
		bInitiallyVisible=1,
		bAutomaticPlaceable=1,
		TextInstruction="",
		bActive=1,
	},

	--PHYSICS PARAMS
	explosion_params = {
		pos = nil,
		damage = 100,
		rmin = 2.0,
		rmax = 20.5,
		radius = 3,
		impulsive_pressure = 200,
		shooter = nil,
		weapon = nil,
	},

	countdown_step=0,

	Editor={
		Model="Objects/Editor/T.cgf",
	},	

	timing_soundfile = "SOUNDS/items/bombcount.wav",
	timing_sound = nil,
}




-------------------------------------------------------------------------------
function PlaceableExplo:LoadGeometry()
	if(self.Properties.dummyModel~="")then
		self:LoadObject(self.Properties.dummyModel,0,1);
	end
	if(self.Properties.fileModel~="")then
		self:LoadObject(self.Properties.fileModel,1,1);
	end
	if(self.Properties.object_ModelDestroyed~="")then
		self:LoadObject(self.Properties.object_ModelDestroyed,2,1);		
	end
end

-------------------------------------------------------------------------------
function PlaceableExplo:RegisterStates()
	self:RegisterState("placeable");		-- show dummy
	self:RegisterState("notarmed");			-- show explosives not ticking, armable
	self:RegisterState("armed");			-- show explosives ticking, disarmable
	self:RegisterState("detonated");		-- detonated no visual
end


-------------------------------------------------------------------------------
function PlaceableExplo:OnReset()
	self:EnableUpdate(0);
	self:TrackColliders(1);

	--if(self.Properties.bInitiallyVisible==1)then
		self:GotoState("placeable");
	--else
	--	self:GotoState("detonated");	
	--end
	
--	if ((self.Properties.object_ModelDestroyed ~="") and 
--	(self.Properties.object_ModelDestroyed ~= self.CurrDestroyedModel)) then
--		self.CurrDestroyedModel = self.Properties.object_ModelDestroyed;
--		self:LoadObject(self.Properties.object_ModelDestroyed,1,1);
--		self:DrawObject(1,0);
--		self:CreateStaticEntity( 10,100 );
--	end

	
	local Min = { x=-self.Properties.DimX/2, y=-self.Properties.DimY/2, z=-self.Properties.DimZ/2 };
	local Max = { x=self.Properties.DimX/2, y=self.Properties.DimY/2, z=self.Properties.DimZ/2 };
	self:SetBBox( Min, Max );
		
	if(self.Properties.ExplosionEffect ~= "")then
		self.explosion_effect = self.Properties.ExplosionEffect;
	else
		self.explosion_effect = "explosions.grenade_air.explosion";
	end
		
	if(self.Properties.bInitiallyVisible==1)then
		self:DrawObject(0,1);
	else
		self:DrawObject(0,0);
	end

	self.bActive=self.Properties.bActive;
end


-------------------------------------------------------------------------------
function PlaceableExplo:OnMultiplayerReset()
	self:OnReset();
end


-------------------------------------------------------------------------------
function PlaceableExplo:OnPropertyChange()
	self:OnReset();
end


-------------------------------------------------------------------------------

function PlaceableExplo:PrintMessage(id,msg)
	if(id)then
		local slot=Server:GetServerSlotByEntityId(id)
		if(slot)then
			slot:SendText(msg,.9)
		end
	end
end








----------------------------------------------------
--SERVER
----------------------------------------------------
PlaceableExplo.Server={
	OnInit=function(self)
		self:LoadGeometry()
		self:RegisterStates();
		self:OnReset();
		self:NetPresent(nil);
	end,
-------------------------------------
	placeable={
		OnBeginState=function(self)
			self:DestroyPhysics();
		end,
		OnEnterArea = function(self,collider)
			if(GameRules:IsInteractionPossible(collider,self))then
				if(collider.type=="Player" and (collider.cnt.health>0))then
					self.Who = collider;
					self:SetTimer(1);
				end
			end		
		end,
		OnLeaveArea = function(self,collider)
			if (collider == self.Who) then
				self.Who = nil;
			end
		end,
		--------------------------------
		OnTimer = function(self,dt)
			if (self.Who) then
				self:Collide( self.Who );
				self:SetTimer(1);
			end
		end,
	},
-------------------------------------
	notarmed={
		OnBeginState=function(self)
			self:DestroyPhysics();
		end,
	},
-------------------------------------
	armed={
		OnBeginState=function(self)
			self:DestroyPhysics();
		end,
		OnTimer=function(self)
			-- [marco] it happens that the old timer is still set
			-- from a previous state, if the player is colliding
			if (self.Properties.countdown>=0) then
				if (self.countdown_step==0) then
					self:GotoState("detonated");
					BroadcastEvent( self,"Explode");
				else
				--	Hud:AddMessage(self.countdown_step.." seconds left",100);
					--self:PrintMessage(self.target,self.countdown_step.." seconds left");
					self:PrintMessage(self.target,self.countdown_step.." @secondsleft");
					self.countdown_step=self.countdown_step-1;
					self:SetTimer(1000); -- 1000 so the new message doesn't appear at the same time as an old messagge
					
					self:PlaySound(self.timing_sound);
				end
			end
		end,
	},
-------------------------------------
	detonated={
		OnBeginState=function(self)
			if(self.Properties.object_ModelDestroyed~="")then
				self:CreateStaticEntity( 10,100 );
			end
		end,
	},
}

----------------------------------------------------
--CLIENT
----------------------------------------------------
PlaceableExplo.Client={
	OnInit=function(self)
		self:LoadGeometry()
		self:RegisterStates();
		self.timing_sound=Sound:Load3DSound(self.timing_soundfile, 0, 255, 10, 250);
		self:OnReset();
		
	end,
-------------------------------------
	placeable={
		OnBeginState=function(self)
			self:DrawObject(0,1);
			self:DrawObject(1,0);
			self:DrawObject(2,0);
			self:DestroyPhysics();
			Sound:StopSound(self.timing_sound);
		end,
	},
-------------------------------------
	notarmed={
		OnBeginState=function(self)
			self:DrawObject(0,0);
			self:DrawObject(1,1);
			self:DrawObject(2,0);
			self:DestroyPhysics();
			Sound:StopSound(self.timing_sound);
		end,
	},
-------------------------------------
	armed={
		OnBeginState=function(self)
			self:DrawObject(0,0);
			self:DrawObject(1,1);
			self:DrawObject(2,0);
			self:DestroyPhysics();
			--Sound:SetSoundPosition(self.timing_sound, self:GetPos());
			self:PlaySound(self.timing_sound);
			--Sound:SetSoundLoop(self.timing_sound, 1);			
		end,
	},
-------------------------------------
	detonated={
		OnBeginState=function(self)
			self:Explode();
			self:DrawObject(0,0);
			self:DrawObject(1,0);
			self:DrawObject(2,1);
			Sound:StopSound(self.timing_sound);
			if(self.Properties.object_ModelDestroyed~="")then
				self:CreateStaticEntity( 10,100 );
			end
		end,
	},
}




-------------------------------------------------------------------------------
function PlaceableExplo:Collide(player)

	-- [marco] player should not place explosives while driving
	-- a vehicle
	if ((player.type ~= "Player") or (player.theVehicle)) then return end

	if (self.bActive==0) then return end

	-- if the collider does have an explosive,
	-- let's place it and remove it from the player

	for i,val in player.explosives do
		if (val==1) then

			if (self.Properties.bAutomaticPlaceable~=1) then
				if (not player.cnt.use_pressed) then
					Hud.label=self.Properties.TextInstruction;
					do return end
				end
			end

			player.explosives[i]=0;				
			self.target=player.id
			self:GotoState("armed");
		
			-- [marco] set countdown to 1 second and display a msg about
			-- the countdown every second, repeat self.Properties.countdown times
		
			self.countdown_step=self.Properties.countdown;
			--self:SetTimer(self.Properties.countdown*1000);
	
			-- [marco] needed by designers to activate explosion
			-- by triggering something else after the explosive
			-- has been placed
			if (self.Properties.countdown>=0) then
				self:SetTimer(1000);
			end
		
			self:Event_ExplosivePlaced();

			break;
		end			
	end	
end

-------------------------------------------------------------------------------
function PlaceableExplo:Event_Activate(sender)
	self.bActive=1;
	BroadcastEvent( self,"Activate");
end

-------------------------------------------------------------------------------
function PlaceableExplo:Event_DeActivateAndHide(sender)
	self.bActive=0;
	BroadcastEvent( self,"DeActivateAndHide");
	self:Event_Hide();
end

-------------------------------------------------------------------------------
function PlaceableExplo:Event_ExplosivePlaced(sender)
	BroadcastEvent( self,"ExplosivePlaced");
end

-------------------------------------------------------------------------------
function PlaceableExplo:Event_Explode(sender)
	BroadcastEvent( self,"Explode" );
	self:Explode();
end

-------------------------------------------------------------------------------
function PlaceableExplo:Event_Hide(sender)
--	self:DrawObject(0,0);
--	self.enabled = nil;
	self:Hide(1);	
end

-------------------------------------------------------------------------------
function PlaceableExplo:Event_Show(sender)
--	self:DrawObject(0,1);
--	self.enabled = 1;
	self:Hide(0);
end

-------------------------------------------------------------------------------
function PlaceableExplo:Explode()

	local normal = { x=0,y=0,z=0.7 };
	local pos = self:GetPos();
	
	Particle:SpawnEffect( pos,normal,self.explosion_effect,self.Properties.ExplosionScale );	
	
	-- raduis, r, g, b, lifetime, pos
	CreateEntityLight( self, 7, 1, 1, 0.7, 0.5);
	
	self.explosion_params.pos = pos;
	self.explosion_params.shooter=self;		

	self.explosion_params.damage =		self.Properties.explDamage;
	self.explosion_params.rmin = 		self.Properties.explRmin;
	self.explosion_params.rmax =		self.Properties.explRmax;
	self.explosion_params.radius = 		self.Properties.explRadius;
	self.explosion_params.impulsive_pressure = self.Properties.explImpulsive_pressure;

	Game:CreateExplosion(self.explosion_params);

	-- Trigger script command on explode.
	if(self.Properties.ScriptCommand and self.Properties.ScriptCommand~="")then
		--System:LogToConsole("Executing: "..self.Properties.ScriptCommand);
		dostring(self.Properties.ScriptCommand);
	end

	if(self.Properties.PlaySequence~="")then
		Movie:PlaySequence( self.Properties.PlaySequence );
	end
end




