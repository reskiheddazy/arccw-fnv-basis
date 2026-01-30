AddCSLuaFile()

-- ========================================
-- BASE SETTINGS
-- ========================================
SWEP.Base = "arccw_base"
SWEP.NeverPhysBullet = true
SWEP.Spawnable = true
SWEP.Category = "DivergeCW - Rifles"
SWEP.PrintName = "Service Rifle"
SWEP.Slot = 2

-- ========================================
-- VIEWMODEL / WORLDMODEL
-- ========================================
SWEP.ViewModel = "models/fnvsweps/ar/fnv_servicerifle.mdl"
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
SWEP.Damage = 22
SWEP.DamageMin = 12
SWEP.Range = 75
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
SWEP.Primary.ClipSize = 20
SWEP.Primary.Ammo = "ar2"

-- ========================================
-- RECOIL
-- ========================================
SWEP.Recoil = 0.2
SWEP.RecoilSide = 0.3
SWEP.RecoilRise = 1
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 1.25

-- ========================================
-- FIRERATE / FIREMODES
-- ========================================
SWEP.Delay = 60 / 380

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
SWEP.AccuracyMOA = 10
SWEP.HipDispersion = 500
SWEP.MoveDispersion = 150
SWEP.SightsDispersion = 0
SWEP.JumpDispersion = 750

-- ========================================
-- SOUNDS
-- ========================================
SWEP.ShootSound = "fnv_new_shoot/servicerifle/fire_servicerifle.wav"
SWEP.ShootSoundSilenced = nil

-- ========================================
-- EFFECTS
-- ========================================
SWEP.MuzzleEffect = "muzzleflash_famas"
SWEP.MuzzleEffectAttachment = 1

SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellPitch = 80
SWEP.ShellScale = 1.2
SWEP.ShellSounds = "weapons/arccw/casings/casing_556_1.wav"
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
    Pos = Vector(-3, -2, 0.119),
    Ang = Angle(0.282, 0, 0),
    Magnification = 1.5,
    Midpoint = {
        Pos = Vector(0, 15, -4),
        Ang = Angle(0, 0, -45),
    },
}

-- ========================================
-- HOLDTYPES
-- ========================================
SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.ActivePos = Vector(0, 0, 0)
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
    ["draw"] = {
        Source = "draw",
        SoundTable = {
            {s = "fnv/foley/rifle_out.wav", t = 0},
        }
    },
    ["ready"] = {
        Source = "ready",
        SoundTable = {
            {s = "fnv/foley/rifle_out.wav", t = 0},
            {s = "fnv/servicerifle_redux/maghit.wav", t = 0.42},
            {s = "fnv/servicerifle_redux/magin.wav", t = 0.58},
            {s = "fnv/foley/rifle_in.wav", t = 1.25},
        }
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        SoundTable = {
            {s = "fnv/foley/rifle_out.wav", t = 0},
        }
    },
    ["holster"] = {
        Source = "holster",
        SoundTable = {
            {s = "fnv/foley/rifle_in.wav", t = 0},
        }
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        SoundTable = {
            {s = "fnv/foley/rifle_in.wav", t = 0},
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
    ["reload"] = {
        Source = "reload",
        SoundTable = {
            {s = "fnv/servicerifle_redux/magout.wav", t = 0.25},
            {s = "fnv/servicerifle_redux/maghit.wav", t = 1.42},
            {s = "fnv/servicerifle_redux/magin.wav", t = 1.58},
        }
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        SoundTable = {
            {s = "fnv/servicerifle_redux/magout.wav", t = 0.25},
            {s = "fnv/servicerifle_redux/maghit.wav", t = 1.42},
            {s = "fnv/servicerifle_redux/magin.wav", t = 1.58},
            {s = "fnv/servicerifle_redux/bolt_press.wav", t = 1.90},
        }
    },
}
