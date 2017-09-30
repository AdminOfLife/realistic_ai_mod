--   Created By: Petar
--   Description: ai following player behavior
--   modified by Mixer

AIBehaviour.SpecialFollow = {
	Name = "SpecialFollow",

	-- SYSTEM EVENTS			-----
	OnSelected = function(self,entity)	
	end,

	OnSpawn = function(self,entity)
		entity:Event_Follow()
	end,

	OnActivate = function(self,entity)
	end,

	OnNoTarget = function(self,entity)
		-- called when the enemy stops having an attention target
	end,

	OnPlayerSeen = function(self,entity,fDistance,NotContact)
		entity:TriggerEvent(AIEVENT_CLEAR)
		AI:Signal(SIGNALID_READIBILITY,1,"WE_HAVE_BEEN_DISCOVERED",entity.id)
		AI:Signal(0,1,"SPECOPS_EXIT",entity.id)
	end,

	OnEnemyMemory = function(self,entity,fDistance,NotContact)
	end,

	OnInterestingSoundHeard = function(self,entity)
		-- called when the enemy hears an interesting sound
		AI:Signal(0,1,"SPECOPS_EXIT",entity.id)
	end,

	OnThreateningSoundHeard = function(self,entity)
		-- AI:Signal(SIGNALID_READIBILITY,1,"WE_HAVE_BEEN_DISCOVERED",entity.id)
		entity:InsertSubpipe(0,"randomhide")
		AI:Signal(0,1,"SPECOPS_EXIT",entity.id)
	end,

	OnReload = function(self,entity)
	-- called when the enemy goes into automatic reload after its clip is empty
	end,

	OnGroupMemberDied = function(self,entity)
	-- called when a member of the group dies
	end,

	OnNoHidingPlace = function(self,entity,sender)
	-- called when no hiding place can be found with the specified parameters
	end,	

	OnNoFormationPoint = function(self,entity,sender)
	-- called when the enemy found no formation point
	end,

	OnReceivingDamage = function(self,entity,sender)
		entity:TriggerEvent(AIEVENT_CLEAR)
		-- if (entity.Properties.species~=sender.Properties.species) then
			entity:InsertSubpipe(0,"randomhide")
		-- end
		AI:Signal(0,1,"SPECOPS_EXIT",entity.id)
	end,
	-- Mixer: when bullets fly around,look where player looks at.
	OnBulletRain = function(self,entity,sender)
		local lplayerang=_localplayer:GetAngles()
		entity:SetAngles(lplayerang)
		AI:Signal(0,1,"SPECOPS_EXIT",entity.id)
	end,
	---
	-- GROUP SIGNALS

	KEEP_FORMATION = function(self,entity,sender)
	-- the team leader wants everyone to keep formation
	end,

	BREAK_FORMATION = function(self,entity,sender)
	-- the team can split
	end,

	SINGLE_GO = function(self,entity,sender)
	-- the team leader has instructed this group member to approach the enemy
	end,

	GROUP_COVER = function(self,entity,sender)
	-- the team leader has instructed this group member to cover his friends
	end,

	IN_POSITION = function(self,entity,sender)
	-- some member of the group is safely in position
	end,

	GROUP_SPLIT = function(self,entity,sender)
	-- team leader instructs group to split
	end,

	PHASE_RED_ATTACK = function(self,entity,sender)
	-- team leader instructs red team to attack
	end,

	PHASE_BLACK_ATTACK = function(self,entity,sender)
	-- team leader instructs black team to attack
	end,

	GROUP_MERGE = function(self,entity,sender)
	-- team leader instructs groups to merge into a team again
	end,

	CLOSE_IN_PHASE = function(self,entity,sender)
	-- team leader instructs groups to initiate part one of assault fire maneuver
	end,

	ASSAULT_PHASE = function(self,entity,sender)
	-- team leader instructs groups to initiate part one of assault fire maneuver
	end,

	GROUP_NEUTRALISED = function(self,entity,sender)
	-- team leader instructs groups to initiate part one of assault fire maneuver
	end,
}