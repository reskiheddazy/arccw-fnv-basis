AddCSLuaFile()

-- ========================================
-- BASE SETTINGS
-- ========================================
SWEP.Base = "arccw_base"
SWEP.NeverPhysBullet = true
SWEP.Spawnable = true
SWEP.Category = "DivergeCW - Pistols"
SWEP.PrintName = "Hunting Revolver"
SWEP.Slot = 1

-- ========================================
-- VIEWMODEL / WORLDMODEL
-- ========================================
SWEP.ViewModel = "models/fnvsweps/pi/fnv_huntingrev.mdl"
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
SWEP.Damage = 70
SWEP.DamageMin = 40
SWEP.Range = 85
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
SWEP.Primary.ClipSize = 5
SWEP.Primary.Ammo = "357"

-- ========================================
-- RECOIL
-- ========================================
SWEP.Recoil = 2
SWEP.RecoilSide = 1
SWEP.RecoilRise = 1
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 1.25

-- ========================================
-- FIRERATE / FIREMODES
-- ========================================
SWEP.Delay = 60 / 450

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "Double Action",
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
SWEP.ShootSound = "^fnv/huntingrev/fire.wav"
SWEP.ShootSoundSilenced = nil

-- ========================================
-- EFFECTS
-- ========================================
SWEP.MuzzleEffect = "muzzleflash_pistol_deagle"
SWEP.MuzzleEffectAttachment = 1

SWEP.ShellModel = nil
SWEP.ShellPitch = 75
SWEP.ShellScale = 1.25
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
    Pos = Vector(-2.294, 0, -0.101),
    Ang = Angle(1.394, 0, 0),
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
-- TRIGGER SETTINGS
-- ========================================
SWEP.TriggerDelay = true

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
    },
    ["fire_iron"] = {
        Source = "fire_iron",
    },
    ["fire_iron_empty"] = {
        Source = "fire",
    },
    ["reload"] = {
        Source = "reload",
        SoundTable = {
            {s = "fnv/huntingrev/cylopen.wav", t = 0.35},
            {s = "fnv/huntingrev/bulletsout.wav", t = 0.88},
            {s = "fnv/huntingrev/loadround.wav", t = 1.8},
            {s = "fnv/huntingrev/loadround.wav", t = 2.85},
            {s = "fnv/huntingrev/loadround.wav", t = 3.86},
            {s = "fnv/huntingrev/loadround.wav", t = 4.85},
            {s = "fnv/huntingrev/loadround.wav", t = 6.48},
            {s = "fnv/huntingrev/cylclose.wav", t = 6.85},
        }
    },
    ["trigger"] = {
        Source = "trigger",
        SoundTable = {
            {s = "fnv/huntingrev/trigger.wav", t = 0},
        }
    },
}
