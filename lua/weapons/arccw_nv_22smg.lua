AddCSLuaFile()

-- ========================================
-- BASE SETTINGS
-- ========================================
SWEP.Base = "arccw_base"
SWEP.NeverPhysBullet = true
SWEP.Spawnable = true
SWEP.Category = "DivergeCW - SMGs"
SWEP.PrintName = "22 Silenced SMG"
SWEP.Slot = 1

-- ========================================
-- VIEWMODEL / WORLDMODEL
-- ========================================
SWEP.ViewModel = "models/fnvsweps/sm/fnv_22smg.mdl"
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
SWEP.Damage = 11
SWEP.DamageMin = 1
SWEP.Range = 10
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
SWEP.Primary.ClipSize = 50
SWEP.Primary.Ammo = "ar2"

-- ========================================
-- RECOIL
-- ========================================
SWEP.Recoil = 0.1
SWEP.RecoilSide = 0.45
SWEP.RecoilRise = 0.5
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 1.25

-- ========================================
-- FIRERATE / FIREMODES
-- ========================================
SWEP.Delay = 60 / 450

SWEP.Firemodes = {
    {
        Mode = 2,
    },
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
SWEP.AccuracyMOA = 15
SWEP.HipDispersion = 200
SWEP.MoveDispersion = 150
SWEP.SightsDispersion = 0
SWEP.JumpDispersion = 300

-- ========================================
-- SOUNDS
-- ========================================
SWEP.ShootSound = {"fnv_new_shoot/22silencedsmg/fire_1.wav","fnv_new_shoot/22silencedsmg/fire_2.wav","fnv_new_shoot/22silencedsmg/fire_3.wav" }
SWEP.ShootSoundSilenced = nil

-- ========================================
-- EFFECTS
-- ========================================
SWEP.MuzzleEffect = "muzzleflash_suppressed"
SWEP.MuzzleEffectAttachment = 1

SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellPitch = 125
SWEP.ShellScale = 0.85
SWEP.ShellSounds = "weapons/arccw/casings/casing_556_1.wav"
SWEP.CaseEffectAttachment = 2

-- ========================================
-- SPEED MULTIPLIERS
-- ========================================
SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 1
SWEP.ShootSpeedMult = 1

-- ========================================
-- IRON SIGHTS
-- ========================================
SWEP.IronSightStruct = {
    Pos = Vector(-3.13, 0, 1.3),
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

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

-- ========================================
-- ANIMATIONS
-- ========================================
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["ready"] = {
        Source = "ready",
        SoundTable = {
            {s = "fnv/foley/sidearm_out.wav", t = 0},
            {s = "fnv/22smg/boltback.wav", t = 0.32},
            {s = "fnv/22smg/boltfwd.wav", t = 0.62},
        }
    },
    ["draw"] = {
        Source = "draw",
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
    ["fire"] = {
        Source = "fire",
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire_iron",
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "fire",
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        SoundTable = {
            {s = "fnv/22smg/magrelease.wav", t = 0.28},
            {s = "fnv/22smg/magout.wav", t = 0.30},
            {s = "fnv/22smg/maghit.wav", t = 1.80},
            {s = "fnv/22smg/magin.wav", t = 1.90},
        }
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        SoundTable = {
            {s = "fnv/22smg/magrelease.wav", t = 0.28},
            {s = "fnv/22smg/magout.wav", t = 0.30},
            {s = "fnv/22smg/maghit.wav", t = 1.80},
            {s = "fnv/22smg/magin.wav", t = 1.90},
            {s = "fnv/22smg/boltback.wav", t = 2.40},
            {s = "fnv/22smg/boltfwd.wav", t = 2.62},
        }
    },
}
