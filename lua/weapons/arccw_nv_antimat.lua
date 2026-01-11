AddCSLuaFile()

-- ========================================
-- BASE SETTINGS
-- ========================================
SWEP.Base = "arccw_base"
SWEP.NeverPhysBullet = true
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Fallout"
SWEP.PrintName = "Anti Materiel Rifle"
SWEP.Slot = 3

-- ========================================
-- VIEWMODEL / WORLDMODEL
-- ========================================
SWEP.ViewModel = "models/fnvsweps/sn/fnv_amr.mdl"
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
SWEP.Damage = 180
SWEP.DamageMin = 120
SWEP.Range = 350
SWEP.Penetration = 4
SWEP.DamageType = DMG_BULLET

-- ========================================
-- MAGAZINE / AMMO
-- ========================================
SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 4
SWEP.Primary.Ammo = "SniperPenetratedRound"

-- ========================================
-- RECOIL
-- ========================================
SWEP.Recoil = 2.5
SWEP.RecoilSide = 1
SWEP.RecoilRise = 1.8
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 1.8
SWEP.RecoilPunch = 2
SWEP.RecoilPunchBackMax = 1
SWEP.RecoilVMShake = 2

-- ========================================
-- FIRERATE / FIREMODES
-- ========================================
SWEP.Delay = 60 / 650

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "Bolt Action"
    },
    {
        Mode = 0,
    },
}

-- ========================================
-- ACCURACY / SPREAD
-- ========================================
SWEP.AccuracyMOA = 15
SWEP.HipDispersion = 500
SWEP.MoveDispersion = 150
SWEP.SightsDispersion = 0
SWEP.JumpDispersion = 300

-- ========================================
-- SOUNDS
-- ========================================
SWEP.ShootSound = "^fnv/amr/fire.wav"
SWEP.ShootSoundSilenced = nil

-- ========================================
-- EFFECTS
-- ========================================
SWEP.MuzzleEffect = "muzzleflash_m14"
SWEP.MuzzleEffectAttachment = 1

SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 0.50
SWEP.ShellScale = 1.5
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
    Pos = Vector(-2.921, 0, 0.119),
    Ang = Angle(0, 0, 0),
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
-- MANUAL ACTION
-- ========================================
SWEP.ManualAction = true
SWEP.NoLastCycle = true

-- ========================================
-- ANIMATIONS
-- ========================================
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["draw"] = {
        Source = "draw",
    },
    ["holster"] = {
        Source = "holster",
    },
    ["fire"] = {
        Source = "fire",
    },
    ["fire_iron"] = {
        Source = "fire_iron",
    },
    ["fire_iron_empty"] = {
        Source = "fire_empty",
    },
    ["reload"] = {
        Source = "reload",
        SoundTable = {
            {s = "fnv/amr/magrel.wav", t = 0.35},
            {s = "fnv/amr/magout.wav", t = 0.43},
            {s = "fnv/amr/maghit.wav", t = 2.1},
        }
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        ShellEjectAt = 0.45,
        SoundTable = {
            {s = "fnv/amr/boltgrab.wav", t = 0.14},
            {s = "fnv/amr/boltback.wav", t = 0.21},
            {s = "fnv/amr/magrel.wav", t = 1.2},
            {s = "fnv/amr/magout.wav", t = 1.25},
            {s = "fnv/amr/maghit.wav", t = 3},
            {s = "fnv/amr/magin.wav", t = 3.2},
            {s = "fnv/amr/boltfwd.wav", t = 4.25},
            {s = "fnv/amr/boltdown.wav", t = 4.35},
        }
    },
    ["cycle"] = {
        Source = "cycle",
        ShellEjectAt = 0.45,
        SoundTable = {
            {s = "fnv/amr/boltgrab.wav", t = 0.14},
            {s = "fnv/amr/boltback.wav", t = 0.21},
            {s = "fnv/amr/boltfwd.wav", t = 0.51},
            {s = "fnv/amr/boltdown.wav", t = 0.61},
        }
    },
    ["cycle_iron"] = {
        Source = "cycle_iron",
        ShellEjectAt = 0.45,
        SoundTable = {
            {s = "fnv/amr/boltgrab.wav", t = 0.14},
            {s = "fnv/amr/boltback.wav", t = 0.21},
            {s = "fnv/amr/boltfwd.wav", t = 0.51},
            {s = "fnv/amr/boltdown.wav", t = 0.61},
        }
    },
}

-- ========================================
-- ATTACHMENTS
-- ========================================
SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "None",
        Slot = {"bigoptic_compatible"},
        Bone = "weapon",
        Offset = {
            vpos = Vector(0.05, -2.5, 1.9),
            vang = Angle(90, 0, -90),
        },
    },
}
