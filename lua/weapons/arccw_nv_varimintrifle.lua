AddCSLuaFile()

-- ========================================
-- BASE SETTINGS
-- ========================================
SWEP.Base = "arccw_base"
SWEP.NeverPhysBullet = true
SWEP.Spawnable = true
SWEP.Category = "DivergeCW - Plink Rifles"
SWEP.PrintName = "Varmint Rifle"
SWEP.Slot = 2

-- ========================================
-- VIEWMODEL / WORLDMODEL
-- ========================================
SWEP.ViewModel = "models/fnvsweps/dm/fnv_varmintrifle.mdl"
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
SWEP.Damage = 26
SWEP.DamageMin = 18
SWEP.Range = 200
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
SWEP.Primary.ClipSize = 10
SWEP.Primary.Ammo = "ar2"

-- ========================================
-- RECOIL
-- ========================================
SWEP.Recoil = 1.8
SWEP.RecoilSide = 1
SWEP.RecoilRise = 1
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 1.25

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
SWEP.ShootSound = "fnv_new_shoot/varmint/fire_varmint.wav"
SWEP.ShootSoundSilenced = nil

-- ========================================
-- EFFECTS
-- ========================================
SWEP.MuzzleEffect = "muzzleflash_pistol_deagle"
SWEP.MuzzleEffectAttachment = 1

SWEP.ShellModel = "models/shells/shell_556.mdl"
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
    Pos = Vector(-2.481, 0, 1.279),
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
    ["fire_iron_empty"] = {
        Source = "fire_empty",
    },
    ["reload"] = {
        Source = "reload",
        SoundTable = {
            {s = "fnv/varmint/magout.wav", t = 0.25},
            {s = "fnv/varmint/maghit.wav", t = 1.49},
            {s = "fnv/varmint/magin.wav", t = 1.61},
        }
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        ShellEjectAt = 0.25,
        SoundTable = {
            {s = "fnv/varmint/boltup.wav", t = 0.1},
            {s = "fnv/varmint/boltback.wav", t = 0.19},
            {s = "fnv/varmint/magout.wav", t = 0.95},
            {s = "fnv/varmint/maghit.wav", t = 2.29},
            {s = "fnv/varmint/magin.wav", t = 2.41},
            {s = "fnv/varmint/boltfwd.wav", t = 3.05},
            {s = "fnv/varmint/boltdown.wav", t = 3.15},
        }
    },
    ["cycle"] = {
        Source = "cycle",
        ShellEjectAt = 0.20,
        SoundTable = {
            {s = "fnv/varmint/boltup.wav", t = 0.05},
            {s = "fnv/varmint/boltback.wav", t = 0.15},
            {s = "fnv/varmint/boltfwd.wav", t = 0.32},
            {s = "fnv/varmint/boltdown.wav", t = 0.42},
        }
    },
    ["cycle_iron"] = {
        Source = "cycle_iron",
        ShellEjectAt = 0.20,
        SoundTable = {
            {s = "fnv/varmint/boltup.wav", t = 0.05},
            {s = "fnv/varmint/boltback.wav", t = 0.15},
            {s = "fnv/varmint/boltfwd.wav", t = 0.32},
            {s = "fnv/varmint/boltdown.wav", t = 0.42},
        }
    },
}
