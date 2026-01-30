AddCSLuaFile()

-- ========================================
-- BASE SETTINGS
-- ========================================
SWEP.Base = "arccw_base"
SWEP.NeverPhysBullet = true
SWEP.Spawnable = true
SWEP.Category = "DivergeCW - Shotguns"
SWEP.PrintName = "Caravan Shotgun"
SWEP.Slot = 2

-- ========================================
-- VIEWMODEL / WORLDMODEL
-- ========================================
SWEP.ViewModel = "models/fnvsweps/sh/fnv_caravanshotgun.mdl"
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
SWEP.Damage = 9   
SWEP.DamageMin = 1  
SWEP.Range = 15
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
SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 2
SWEP.Primary.Ammo = "buckshot"
SWEP.Num = 12

-- ========================================
-- RECOIL
-- ========================================
SWEP.Recoil = 2
SWEP.RecoilSide = 1 
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
SWEP.Delay = 60 / 1500

SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        PrintName = "BOTH",
        Mode = -2,
        RunawayBurst = true,
    },
    {
        Mode = 0,
    },
}

-- ========================================
-- ACCURACY / SPREAD
-- ========================================
SWEP.AccuracyMOA = 50
SWEP.HipDispersion = 100
SWEP.MoveDispersion = 100
SWEP.SightsDispersion = 0
SWEP.JumpDispersion = 0
SWEP.ShotgunSpreadDispersion = true -- dispersion will cause pattern to increase instead of shifting

-- ========================================
-- SOUNDS
-- ========================================
SWEP.ShootSound = "fnv_new_shoot/caravanshotgun/fire_caravanshotgun.wav"
SWEP.ShootSoundSilenced = nil

-- ========================================
-- EFFECTS
-- ========================================
SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.MuzzleEffectAttachment = 1

SWEP.ShellModel = nil
SWEP.ShellPitch = nil
SWEP.ShellScale = nil
SWEP.CaseEffectAttachment = nil

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
    Pos = Vector(-2.56, 0, 0.68),
    Ang = Angle(1.121, 0, 0),
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
    ["draw"] = {
        Source = "draw",
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

    ["fire"] = {
        Source = "fire",
    },
    ["fire_iron"] = {
        Source = "fire_iron",
    },
    ["reload"] = {
        Source = "reload",
        SoundTable = {
            {s = "fnv/caravanshotgun/open.wav", t = 0.05},
            {s = "fnv/caravanshotgun/shellhit.wav", t = 1},
            {s = "weapons/arccw/casings/casing_12ga_1.wav", t = 1.15},
            {s = "fnv/caravanshotgun/shellin.wav", t = 1.1},
            {s = "fnv/caravanshotgun/close.wav", t = 1.35},
        }
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        SoundTable = {
            {s = "fnv/caravanshotgun/open.wav", t = 0.05},
            {s = "fnv/caravanshotgun/shellhit.wav", t = 1.1},
            {s = "fnv/caravanshotgun/shellin.wav", t = 1.2},
            {s = "fnv/caravanshotgun/shellhit.wav", t = 1.6},
            {s = "weapons/arccw/casings/casing_12ga_1.wav", t = 1.15},
            {s = "weapons/arccw/casings/casing_12ga_1.wav", t = 1.19},
            {s = "fnv/caravanshotgun/shellin.wav", t = 1.7},
            {s = "fnv/caravanshotgun/close.wav", t = 2},
        }
    },
}

