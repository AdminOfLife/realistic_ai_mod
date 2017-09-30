-- Модифицировал PeBePcuB
MercRear_x = {
	MERC = "rear",
	PropertiesInstance = {
			sightrange = 110,
			soundrange = 10,
			aibehavior_behaviour = "Job_StandIdle",
			groupid = 1,
			fileHelmetModel = "",
			bHelmetOnStart = 0,
			specialInfo= "",
			bHasLight = 0,
			bGunReady = 0,
			attackrange = 300,
			accuracy = .7,
			aggression = .3,
			},

	Properties = {
			cohesion = 4,
			aicharacter_character = "Rear",
			equipEquipment = "shotgun",
			equipDropPack = "Shotgun_Pickup",
			bAwareOfPlayerTargeting = 1,
			-- fDamageMultiplier = 1,
			fRushPercentage=-1,
			bHasShield = 0,
			bInvulnerable = 0,
			KEYFRAME_TABLE = "BASE_HUMAN_MODEL",
			SOUND_TABLE = "MERC_REAR",
			suppressedThrhld = 5.5,
			bAffectSOM = 1,
			bSleepOnSpawn = 1,
			bHasArmor = 0,
			dropArmor = 0,
			horizontal_fov = 160,
			eye_height = 2.1,
			forward_speed = 1.27,
			back_speed = 1.27,
			responsiveness = 7.5,
			fSpeciesHostility = 2,
			fGroupHostility = 0,
			fPersistence = 0,
			AnimPack = "Basic",
			SoundPack = "",
			fileModel = "Objects/characters/mercenaries/Merc_rear/merc_rear.cgf",
			max_health = 255,
			pathname = "none",
			pathsteps = 0,
			pathstart = 0,
			ReinforcePoint = "none",
			bPushPlayers = 1,
			bPushedByPlayers = 1,
			AttachHelmetToBone = "hat_bone",
			commrange = 30,
			species = 1,
			special = 0,
			bTrackable = 1,
			bTakeProximityDamage = 1,
			
		speed_scales={
			run			=3.63,
			crouch		=.8,
			prone		=.5,
			xrun		=1.5,
			xwalk		=.81,
			rrun		=3.63,
			rwalk		=.94,
		},
		AniRefSpeeds = {
			WalkFwd = 1.02,
			WalkSide = 1.02,
			WalkBack = 1.29,
			WalkRelaxedFwd = 1.05,
			WalkRelaxedSide = 1.22,
			WalkRelaxedBack = 1.05,
			XWalkFwd = 1.02,
			XWalkSide = 1,
			XWalkBack = .94,
			XRunFwd = 5.05,
			XRunSide = 5.05,
			XRunBack = 5.05,
			RunFwd = 4.62,
			RunSide = 4.62,
			RunBack = 4.62,
			CrouchFwd = 1.02,
			CrouchSide = 1.02,
			CrouchBack = 1.04,
		},
	},
	PhysParams = {
		mass = 80,
		height = 1.8,
		eyeheight = 1.6,
		sphereheight = 1.2,
		radius = .45,
	},
	PlayerDimNormal = {
		height = 1.8,
		eye_height = 1.7,
		ellipsoid_height = 1.2,
		x = .45,
		y = .45,
		z = .41, -- .6
	},
	PlayerDimCrouch = {
		height = 1.5,
		eye_height = 1,
		ellipsoid_height = .95,
		x = .45,
		y = .45,
		z = .1, -- .5
	},
	PlayerDimProne = {
		height = .4,
		eye_height = .5,
		ellipsoid_height = .35,
		x = .45,
		y = .45,
		z = .2,
	},
	DeadBodyParams = {
	  sim_type = 1,
	  max_time_step = .025,
	  gravityz = -7.5,
	  sleep_speed = .025,
	  damping = .3,
	  freefall_gravityz = -9.81,
	  freefall_damping = .1,

	  lying_mode_ncolls = 4,
	  lying_gravityz = -5,
	  lying_sleep_speed = .065,
	  lying_damping = 1,
		
	  water_damping = .1,
	  water_resistance = 1000,
	},
	BulletImpactParams = {
    stiffness_scale = 73,
    max_time_step = .02
},
	GrenadeType = "ProjFlashbangGrenade",
}