-- Модифицировал E1LOCK
MercCover_x = {
 -- Все свойства в редакторе сортируются в алфавитном порядке.
	MERC = "cover",
	PropertiesInstance = {
			sightrange = 110, -- Максимальная дальность, на которой юнит видит.
			soundrange = 10,	-- Максимальная дальность слышимости для юнита. Но,помните,что звуковые диапазоны пересекаются и когда юниты находятся в состоянии тревоги - удваиваются.
			aibehavior_behaviour = "Job_StandIdle",-- Устанавливает задачу юнита. В данном случае - просто стоять без дела.
			groupid = 1, -- Групповой индетификатор GroupID. Рекомендую всегда для групп и одиночных юнитов ставить свой уникальный и не делать эти группы черезмерно большими,особенно группы трайгенов-прыгунов.
			bHelmetOnStart = 0, -- Определяет имеет ли юнит шлем/шляпу (1) или нет (0).
			-- bHelmetProtection = 0, -- Имеет ли шлем/шляпа защиту?
			fileHelmetModel = "",-- Определяет 3D модель используемую для шлема.
			specialInfo= "", -- Должно было служить описанием для распознавания целей в бинокле.
			bHasLight = 0, -- Включен ли у юнита фонарик. 1-да,0-нет.
			bGunReady = 0, -- Юнит держит оружие в руке (1) или оно находится за спиной(0),в спокойном состоянии. В первом случае юнит сразу готов стрелять по врагу,а во втором готовится секунду-две.
			attackrange = 300, -- Юнит будет ждать пока цель не окажется в указанном пределе, чтобы открыть огонь.
			accuracy = .7, -- Устанавливает точность стрельбы юнита.
			aggression = .3,	-- Устанавливает агрессивность юнита. 1 = пассивный (короткие,но точные очереди),0 = тотальная агрессия (длинные автоматные очереди).
	},

	Properties = {
			cohesion = 4, -- Степень сотрудничества со своими напарниками. Если количество юнитов в группе больше,чем здесь указано,то юниты всегда держатся вместе. Не получилось проверить.
			aicharacter_character = "Cover",-- Устанавливает модель поведения для юнита,его характер.
			equipEquipment = "M4",-- Экипировка которую использует юнит (должна быть загружена в редакторе экипировки).
			equipDropPack = "M4_pickup",-- Экипировка которая появится после гибели юнита.
			bAwareOfPlayerTargeting = 1, -- Избегать прицеливания игроком. 1-да,0-нет. Не задействовано.
			-- fDamageMultiplier = 1, -- Множитель любых повреждений наносимых по юниту. По умолчанию 1.
			fRushPercentage=-1, -- При значении больше нуля и при здоровье меньше половины есть вероятность, что только что раненый или убитый ИИ скажет своей группе жёстко атаковать конкретно игрока.
			bHasShield = 0, -- Определяет есть ли у юнита в руках щит. 1-да,0-нет.
			bInvulnerable = 0, -- Неубиваемый. 1-да,0-нет.
			KEYFRAME_TABLE = "BASE_HUMAN_MODEL",
			SOUND_TABLE = "MERC_COVER",-- Таблица звуков.
			suppressedThrhld = 5.5,
			bAffectSOM = 1, -- Определяет воздействует ли юнит на радар,т.е. отображаетсяется он на нем или нет,и влияет ли на индикатор тревоги игрока. 
			bSleepOnSpawn = 1, -- Активируется юнит сразу после старта уровня (0),или когда игрок его вот-вот заметит (будет рядом) (1). Так же юнит может быть активирован некоторыми триггерами заранне.
			bHasArmor = 1, -- Определяет использует ли юнит броню. 1-да,0-нет.
			dropArmor = 0, -- Количество едениц сброшенной брони после гибели (0-100). Нуль-не сбрасывать.
			horizontal_fov = 160, -- Определяет горизонтальное поле зрения по горизонтали у юнита в градусах. Не должно быть выше 180, иначе будет видеть как на все 360.
			eye_height = 2, -- Уровень высоты глаз?
			forward_speed = 1.27, -- Определяет скорость с которой юнит идет вперед.
			back_speed = 1.27, -- Определяет скорость перемещения юнита назад.
			responsiveness = 7.5,
			fSpeciesHostility = 2,
			fGroupHostility = 0,
			fPersistence = 0, -- Выносливость. Юниты с этой способностью,не теряют своих атакующих качеств,даже будучи тяжело раненными. Не знаю.
			AnimPack = "Basic",-- Название набора анимации для юнита.
			SoundPack = "",-- Название набора фраз для юнита.
			fileModel = "Objects/characters/mercenaries/Merc_cover/merc_cover.cgf",--Указывает 3D модель для юнита.
			max_health = 255, -- Устанавливает уровень здоровья. 255 - как у игрока.
			pathname = "none",-- Определяет название маршрута для следования юнита.
			pathsteps = 0, -- Устанавливает номер узла первого маршрута.
			pathstart = 0, -- Определяет количество шагов маршрута. Следует учитывать,что первая точка (нулевая) тоже является узлом,ее тоже надо прибавлять.
			ReinforcePoint = "none", -- Не используется.
			bPushPlayers = 1, -- Может ли юнит толкать игроков. 1-да,0-нет.
			bPushedByPlayers = 1, -- Может ли игрок толкать юнита. 1-да,0-нет.
			AttachHelmetToBone = "hat_bone",-- К какой части тела прикреплять шлем.
			commrange = 30, -- Максимальное расстояние коммуникации юнита.
			species = 1, -- Принадлежость к той или иной стороне. 10-друзья(по отношению к игроку),-1 - наемники,-100 - мутанты. Сторон может быть сколько угодно.
			special = 0, -- Специальный юнит,а-ля Валери из компании.
			bTrackable = 1, -- Оставляет ли юнит видимые следы на земле(пыль).
			bTakeProximityDamage = 1, -- Получать ли повреждения от триггера ProximityDamage. 1-да,0-нет.
			-- special Разъяснил Mixer:
			-- В Properties любого живого ИИ существует параметр special,по умолчанию равный . Персонаж с special большим нуля считается особым ИИ. Отличия следующие: 
			-- Противники реагируют на такого ИИ менее интенсивно 
			-- Здоровье особого ИИ восстанавливается до максимума после загрузки сохранения 
			-- Триггеры,у которых установлен флажок OnlySpecialAI,реагируют на такого персонажа 
			-- Стреляя,не выглядывает из-за стен,и не укрывается за низкими укрытиями 
			-- Не участвует в диалогах между ИИ (якоря диалогов MISSION_TALK_INPLACE,AIANCHOR_MISSION_TALK,AIANCHOR_RANDOM_TALK не работают) 
			-- Не включает фонарь по якорю INVESTIGATE_FLASHLIGHT 
			-- Не оповещает группу при наличии поблизости якоря AIANCHOR_NOTIFY_GROUP_DELAY 
			-- Не поднимает тревогу (не идет к якорю BLIND_ALARM,AIANCHOR_PUSH_ALARM,не метает дымовую шашку по якорю AIANCHOR_THROW_FLARE) 
			-- Не бежит к станковому оружию 
			-- Если машина наедет на игрока,а ее водителем является специальный ИИ,игроку ничего не будет. 
			-- Враги слышат звук двигателя машины,которую ведет специальный ИИ (точно так же,как если бы игрок вел эту машину) 
			-- Если в машине сидят один или несколько специальных ИИ,нет иных ИИ,и есть еще свободное место,игрок может сесть в такую машину
			
		speed_scales={	-- Определяет влияние позиции ИИ на скорость.
			run			=2.4, -- Бег.
			crouch		=.8, -- Сидение.
			prone		=.5, -- Лежание.
			xrun		=3.96, -- Бег в скрытом режиме.
			xwalk		=.81, -- Ходьба в скрытом режиме.
			rrun		=2.4, -- Бег в расслабленном состоянии.
			rwalk		=.94, -- Ходьба в расслабленном состоянии.
		},
		AniRefSpeeds = {	-- Определяет скорость движения анимации ИИ.
			WalkFwd = 1.27, -- Ходит.
			WalkSide = 1.22,
			WalkBack = 1.29,
			XWalkFwd = 1.2, -- Ходит в состоянии скрытности.
			XWalkSide = 1,
			XWalkBack = .94,
			WalkRelaxedFwd = 1.05, -- Ходит в расслабленном состоянии.
			WalkRelaxedSide = 1.22,
			WalkRelaxedBack = 1.05,
			XRunFwd = 5.05, -- Бегает в состоянии скрытности.
			XRunSide = 5.05, -- Понизить 5.05
			XRunBack = 5.05, -- Понизить 5.05
			RunFwd = 2.76, -- Бежит.
			RunSide = 3.57,
			RunBack = 2.76,
			CrouchFwd = 1.02, -- Сидит.
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
		eye_height = .4,
		ellipsoid_height = .48,
		x = .45,
		y = .45,
		z = .24,
	},
	DeadBodyParams = {
		max_time_step = .025,
		gravityz = -7.5,
		sleep_speed = .025,
		damping = .3,
		freefall_gravityz = -9.81,
		freefall_damping = .1,

		lying_mode_ncolls = 4,
		lying_gravityz = -5,
		lying_sleep_speed = .065,
		lying_damping = 1.5,
		
		water_damping = .1,
		water_resistance = 1000,	
	},
	BulletImpactParams = {
		stiffness_scale = 73,
		max_time_step = .02
	},
	AI_DynProp = {
		air_control = .9,
		gravity = 9.81,
		jump_gravity = 18,
		swimming_gravity = -.5,
		inertia = 10,
		swimming_inertia = .5,
		nod_speed = 50,
		min_slide_angle = 46,
		max_climb_angle = 55,
		min_fall_angle = 70,
		max_jump_angle = 50,
	},
	GrenadeType = "ProjFlashbangGrenade",
}