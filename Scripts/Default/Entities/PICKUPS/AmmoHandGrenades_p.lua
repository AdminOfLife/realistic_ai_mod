Script:ReloadScript("Scripts/Default/Entities/Pickups/PickupPhysCommon.lua")
	local phys_item = new(BasicEntity)
	----
	---- EDIT HERE: weapon_name   examples: weapon_P90 weapon_M4 etc...
	phys_item.Properties.Animation.Animation = "weapon_HandGrenade"
	phys_item.Properties.Animation.fAmmo_Primary = 1
	phys_item.Properties.Animation.sAmmotype_Primary="HandGrenade"
	phys_item.Properties.Animation.fAmmo_Secondary = 0
	phys_item.Properties.Animation.sAmmotype_Secondary=""
	phys_item.pp_sound = "sounds/items/grenade_pickup.wav"
	----
	----
	phys_item.Properties.object_Model = "Objects/pickups/grenade/grenade_frag_pickup.cgf"
	phys_item.Properties.Physics.damping = .02
	phys_item.Properties.Physics.Mass = 2 -- По нормальному вес одной гранаты - 600 грамм, но при таком весе гранаты с лёгкостью улетают вдаль при попадании по ним.
	phys_item.Properties.Physics.Type = "smisc"
	phys_item.Properties.Physics.bRigidBody=1
	phys_item.Properties.Physics.LowSpec.bRigidBody=1
	phys_item.Properties.Physics.LowSpec.Mass = 2
	phys_item.physpickup = 1  -- used in basicplayer to indicate it is pickup

	phys_item.weapon="HandGrenade"

	PickupHandGrenades_p = phys_item

function PickupHandGrenades_p:OnSave(stm)
	-- store ammo amounts of clips
	stm:WriteInt(self.Properties.Animation.fAmmo_Primary)
	--stm:WriteInt(self.Properties.Animation.fAmmo_Secondary)
end

function PickupHandGrenades_p:OnLoad(stm)
	-- load ammo amounts of clips
	self.Properties.Animation.fAmmo_Primary=stm:ReadInt()
	--self.Properties.Animation.fAmmo_Secondary=stm:ReadInt()
end
