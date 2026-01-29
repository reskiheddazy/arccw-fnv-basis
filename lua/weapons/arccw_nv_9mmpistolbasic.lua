AddCSLuaFile()

-- ========================================
-- BASE SETTINGS
-- ========================================
SWEP.Base = "arccw_base"
SWEP.NeverPhysBullet = true
SWEP.Spawnable = true
SWEP.Category = "DivergeCW - Pistols"
SWEP.PrintName = "9MM Pistol"
SWEP.Slot = 1

-- ========================================
-- VIEWMODEL / WORLDMODEL
-- ========================================
SWEP.ViewModel = "models/fnvsweps/pi/fnv_9mmpistol.mdl"
SWEP.ViewModelFOV = 90
SWEP.WorldModel = "models/weapons/w_knife_ct.mdl"
SWEP.MirrorVMWM = true

SWEP.WorldModelOffset = {
    pos = Vector(0, 0, 0),
    ang = Angle(0, 0, 0),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}

SWEP.DefaultBodygroups = "00000000"

-- ========================================
-- DAMAGE / BALLISTICS
-- ========================================
SWEP.Damage = 20
SWEP.DamageMin = 10
SWEP.Range = 60
SWEP.RangeMin = 30 -- Damage falloff begins here.
SWEP.Penetration = 4
SWEP.DamageType = DMG_BULLET

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

-- ========================================
-- MAGAZINE / AMMO
-- ========================================
SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 15
SWEP.Primary.Ammo = "pistol"

-- ========================================
-- RECOIL
-- ========================================
SWEP.Recoil = 1
SWEP.RecoilSide = 0.5
SWEP.RecoilRise = 1
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 1.15

// those are animated by the viewmodel itself

--SWEP.RecoilPunch = 0
--SWEP.RecoilPunchBackMax = 0
--SWEP.RecoilVMShake = 0

-- ========================================
-- FIRERATE / FIREMODES
-- ========================================
SWEP.Delay = 60 / 400

SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0,
    },
}

-- ========================================
-- ACCURACY / SPREAD
-- ========================================
SWEP.AccuracyMOA = 20
SWEP.HipDispersion = 100
SWEP.MoveDispersion = 100
SWEP.SightsDispersion = 10
SWEP.JumpDispersion = 300

-- ========================================
-- SOUNDS
-- ========================================
SWEP.ShootSound = "fnv_new_shoot/9mmpistol/fire_9mmpistol.wav"
SWEP.ShootSoundSilenced = nil

-- ========================================
-- EFFECTS
-- ========================================
SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.MuzzleEffectAttachment = 1

SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellPitch = 100
SWEP.ShellScale = 1
SWEP.CaseEffectAttachment = 2

-- ========================================
-- SPEED MULTIPLIERS
-- ========================================
SWEP.SpeedMult = 0.9
SWEP.SightedSpeedMult = 0.88
SWEP.ShootSpeedMult = 1

-- ========================================
-- IRON SIGHTS
-- ========================================
SWEP.IronSightStruct = {
    Pos = Vector(-3.48, 0, 1.09),
    Ang = Angle(0, 0, 0),
    Midpoint = {
        Pos = Vector(0, 15, -4),
        Ang = Angle(0, 0, -45),
    },
}

-- ========================================
-- HOLDTYPES
-- ========================================
SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.ActivePos = Vector(0, -2, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

-- ========================================
-- ANIMATIONS
-- ========================================
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle_empty",
    },
    ["reload"] = {
        Source = "reload",
        SoundTable = {
            {s = "fnv/9mm/magrel.wav", t = 0.15},
            {s = "fnv/9mm/magout.wav", t = 0.19},
            {s = "fnv/9mm/maghit.wav", t = 1.10},
            {s = "fnv/9mm/magin.wav", t = 1.19},
        }
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        SoundTable = {
            {s = "fnv/9mm/magrel.wav", t = 0.15},
            {s = "fnv/9mm/magout.wav", t = 0.19},
            {s = "fnv/9mm/maghit.wav", t = 1.10},
            {s = "fnv/9mm/magin.wav", t = 1.19},
            {s = "fnv/9mm/boltrel.wav", t = 1.75},
        }
    },
    ["draw"] = {
        Source = "draw",
        SoundTable = {
            {s = "fnv/foley/sidearm_out.wav", t = 0},
        }
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        SoundTable = {
            {s = "fnv/foley/sidearm_out.wav", t = 0},
        }
    },
    ["holster"] = {
        Source = "holster",
        SoundTable = {
            {s = "fnv/foley/sidearm_in.wav", t = 0},
        }
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        SoundTable = {
            {s = "fnv/foley/sidearm_in.wav", t = 0},
        }
    },
    ["fire"] = {
        Source = "fire",
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire_iron",
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "fire_empty",
        ShellEjectAt = 0,
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        ShellEjectAt = 0,
    },
}

