Script:LoadScript("scripts/materials/commoneffects.lua")
--#Script:LoadScript("scripts/materials/mat_metal_plate.lua")

Materials["mat_metal_grate"] = {

	type="mat_metal_grate",

	PhysicsSounds=PhysicsSoundsTable.Hard,
	
	bullet_drop_single = CommonEffects.common_bullet_drop_single_metal,
	bullet_drop_rapid = CommonEffects.common_bullet_drop_rapid_metal,
	
	bullet_hit = {
		sounds = {
			{"Sounds/BulletHits/Metal/thin_metal_01.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_02.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_03.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_04.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_05.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_06.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_07.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_08.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_09.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_10.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_11.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_12.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_13.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_14.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_15.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_16.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/1.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/2.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/3.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/4.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/5.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/6.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/7.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/8.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/9.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/10.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/11.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/12.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/13.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/14.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/15.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/16.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/17.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/18.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/19.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/20.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/21.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/22.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/23.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm1.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm2.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm3.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm4.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm5.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm6.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm7.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm8.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm9.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm10.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm11.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm12.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm13.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm14.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm15.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm16.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm17.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm18.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm19.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm20.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm21.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm22.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm23.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm24.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm25.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm26.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm27.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm28.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm29.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm30.mp3",SOUND_UNSCALABLE,255,3,101},
		},
		decal = {
			texture = System:LoadTexture("Textures/Decal/metal.dds"),
			scale = .04,
			},
		
		particleEffects = {
			name = "bullet.hit_metal.a",
		},
	},
	pancor_bullet_hit = {
		sounds = {
			{"Sounds/BulletHits/Metal/thin_metal_01.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_02.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_03.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_04.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_05.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_06.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_07.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_08.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_09.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_10.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_11.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_12.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_13.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_14.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_15.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal/thin_metal_16.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/1.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/2.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/3.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/4.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/5.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/6.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/7.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/8.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/9.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/10.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/11.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/12.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/13.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/14.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/15.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/16.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/17.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/18.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/19.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/20.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/21.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/22.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Metal_thin/23.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm1.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm2.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm3.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm4.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm5.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm6.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm7.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm8.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm9.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm10.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm11.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm12.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm13.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm14.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm15.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm16.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm17.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm18.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm19.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm20.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm21.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm22.mp3",SOUND_UNSCALABLE,255,3,101},
			{"Sounds/BulletHits/Rico/rm23.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm24.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm25.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm26.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm27.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm28.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm29.mp3",SOUND_UNSCALABLE,255,3,101},
			-- {"Sounds/BulletHits/Rico/rm30.mp3",SOUND_UNSCALABLE,255,3,101},
		},
		decal = {
			texture = System:LoadTexture("Textures/Decal/metal.dds"),
			scale = .04,
			},
		
		particleEffects = {
			name = "bullet.hit_metal_pancor.a",
		},
	},

	

-------------------------
	melee_punch = {
		sounds = {
			{"sounds/player/footsteps/metal/grate/step1.wav",SOUND_UNSCALABLE,185,5,30},
			{"sounds/player/footsteps/metal/grate/step2.wav",SOUND_UNSCALABLE,185,5,30},
			{"sounds/player/footsteps/metal/grate/step3.wav",SOUND_UNSCALABLE,185,5,30},
			{"sounds/player/footsteps/metal/grate/step4.wav",SOUND_UNSCALABLE,185,5,30},
		},
	},
	melee_slash = {
		sounds = {
			{"Sounds/Weapons/machete/macheteplate2.wav",SOUND_UNSCALABLE,185,5,30,{fRadius=10,fInterest=1,fThreat=0,},},
			{"Sounds/Weapons/machete/macheteplate3.wav",SOUND_UNSCALABLE,185,5,30,{fRadius=10,fInterest=1,fThreat=0,},},
			{"Sounds/Weapons/machete/macheteplate4.wav",SOUND_UNSCALABLE,185,5,30,{fRadius=10,fInterest=1,fThreat=0,},},
			{"Sounds/Weapons/machete/macheteplate5.wav",SOUND_UNSCALABLE,185,5,30,{fRadius=10,fInterest=1,fThreat=0,},},
		},
		particles = CommonEffects.common_machete_hit_particles.particles,

		decal = {
			texture = System:LoadTexture("Textures/Decal/metal_slash.dds"),
			scale = .1,
			random_scale = 100,
			random_rotation = .5,
		},
	},
	flashgrenade_hit = CommonEffects.common_flashgrenade_hit,
	projectile_hit = 	{

		particleEffects = {
			name = "explosions.rocket.a",
		},	
	    particles = 
		{
			{--HitMetalSparksTrail
				focus = 0,
				color = {1,1,1},
				speed = 8,
				count = 25, --default 15
				size = .045,
				size_speed=0,
				gravity={x=0,y=0,z=-5},
				lifetime=.5,
				tid = System:LoadTexture("Textures/Decal/Spark.dds"),
				tail_length = .2,
				frames=0,
				blend_type = 2
			},
		},
		sounds = {
			{"Sounds/BulletHits/AT_Rockets/at_rocket_01.mp3",SOUND_UNSCALABLE,255,30,1000},
			{"Sounds/BulletHits/AT_Rockets/at_rocket_02.mp3",SOUND_UNSCALABLE,255,30,1000},
			{"Sounds/BulletHits/AT_Rockets/at_rocket_03.mp3",SOUND_UNSCALABLE,255,30,1000},
			{"Sounds/BulletHits/AT_Rockets/at_rocket_04.mp3",SOUND_UNSCALABLE,255,30,1000},
			{"Sounds/BulletHits/AT_Rockets/at_rocket_05.mp3",SOUND_UNSCALABLE,255,30,1000},
		},
	},
	mortar_hit = 		
	{
	        particles = 
		{
			{--HitMetalSparksTrail
				focus = 0,
				color = {1,1,1},
				speed = 8,
				count = 25, --default 15
				size = .045,
				size_speed=0,
				gravity={x=0,y=0,z=-5},
				lifetime=.5,
				tid = System:LoadTexture("Textures/Decal/Spark.dds"),
				tail_length = .2,
				frames=0,
				blend_type = 2
			},
		},
	},
	smokegrenade_hit = flashgrenade_hit,
	grenade_hit = {
		sounds = {
			{"Sounds/BulletHits/HandGrenade/metal_1.mp3",SOUND_UNSCALABLE,255,2,100},
			{"Sounds/BulletHits/HandGrenade/metal_2.mp3",SOUND_UNSCALABLE,255,2,100},
			{"Sounds/BulletHits/HandGrenade/metal_3.mp3",SOUND_UNSCALABLE,255,2,100},
			{"Sounds/BulletHits/HandGrenade/metal_4.mp3",SOUND_UNSCALABLE,255,2,100},
			{"Sounds/BulletHits/HandGrenade/metal_5.mp3",SOUND_UNSCALABLE,255,2,100},
		},
	},
	rock_hit = {
		sounds = {
			{"Sounds/BulletHits/Stone/stone_metal_thin1.mp3",SOUND_UNSCALABLE,255,2,100},
			{"Sounds/BulletHits/Stone/stone_metal_thin2.mp3",SOUND_UNSCALABLE,255,2,100},
			{"Sounds/BulletHits/Stone/stone_metal_medium1.mp3",SOUND_UNSCALABLE,255,2,100},
			{"Sounds/BulletHits/Stone/stone_metal_medium2.mp3",SOUND_UNSCALABLE,255,2,100},
			-- {"Sounds/BulletHits/Stone/stone_metal1.mp3",SOUND_UNSCALABLE,255,2,100},
			-- {"Sounds/BulletHits/Stone/stone_metal2.mp3",SOUND_UNSCALABLE,255,2,100},
			-- {"Sounds/BulletHits/Stone/stone_metal3.mp3",SOUND_UNSCALABLE,255,2,100},
			{"Sounds/BulletHits/Stone/stone_metal_car1.mp3",SOUND_UNSCALABLE,255,2,100},
			{"Sounds/BulletHits/Stone/stone_metal_car2.mp3",SOUND_UNSCALABLE,255,2,100},
		},
	},
	player_walk = CommonEffects.player_metalgrate_walk,
	player_run = CommonEffects.player_metalgrate_run,
	player_crouch = CommonEffects.player_metalgrate_crouch,
	player_prone = CommonEffects.player_metalgrate_prone,
	player_walk_inwater = CommonEffects.player_walk_inwater,
	player_drop = {
		sounds = {
			{"sounds/player/bodyfalls/bodyfallrock1.wav",SOUND_UNSCALABLE,210,10,150},
			{"sounds/player/bodyfalls/bodyfallrock2.wav",SOUND_UNSCALABLE,210,10,150},
		},

	},
	gameplay_physic = {
		piercing_resistence = 6,
		friction = .7,
		bouncyness= .2, --default 0
	},

	AI = {
		fImpactRadius = 5,
	},
			
}