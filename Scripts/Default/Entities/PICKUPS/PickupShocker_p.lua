	Script:ReloadScript("Scripts/Default/Entities/Pickups/PickupPhysCommon.lua")
	local phys_item = new(BasicEntity)
	----
	---- EDIT HERE: weapon_name   examples: weapon_P90 weapon_M4 etc...
	phys_item.Properties.Animation.Animation = "weapon_Shocker"
	-- phys_item.Properties.Animation.Speed=32  -- throw power multiplier
	-- phys_item.Properties.damage_players=2.6  -- throwable deadly machete
	phys_item.Properties.Animation.fAmmo_Primary = 0
	phys_item.Properties.Animation.sAmmotype_Primary=""
	phys_item.Properties.Animation.fAmmo_Secondary = 0
	phys_item.Properties.Animation.sAmmotype_Secondary=""
	phys_item.pp_sound = "Sounds/Weapons/Mortar/mortar_33.wav"
	----------
	-- phys_item.throw_sound = "Sounds/Weapons/melee/swish.wav"
	-- phys_item.throw_z = -90
	----
	----
	phys_item.Properties.object_Model = "Objects/Weapons/Shocker/Shocker_bind.cgf"
	phys_item.Properties.Physics.damping = .2
	phys_item.Properties.Physics.Mass = 30
	phys_item.Properties.Physics.Type = "Shocker"
	phys_item.Properties.Physics.bRigidBody=1
	phys_item.Properties.Physics.LowSpec.bRigidBody=1
	phys_item.Properties.Physics.LowSpec.Mass = 30
	phys_item.physpickup = 1  -- used in basicplayer to indicate it is pickup

	phys_item.weapon="Shocker"

	PickupShocker_p = phys_item

function PickupShocker_p:OnSave(stm)
	-- store ammo amounts of clips
	--stm:WriteInt(self.Properties.Animation.fAmmo_Primary)
end

function PickupShocker_p:OnLoad(stm)
	-- load ammo amounts of clips
	--self.Properties.Animation.fAmmo_Primary=stm:ReadInt()
end
