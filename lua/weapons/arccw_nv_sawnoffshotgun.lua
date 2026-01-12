AddCSLuaFile()

-- ========================================
-- BASE SETTINGS
-- ========================================
SWEP.Base = "arccw_base"
SWEP.NeverPhysBullet = true
SWEP.Spawnable = true
SWEP.Category = "DivergeCW - Shotguns"
SWEP.PrintName = "Sawn-off Shotgun"
SWEP.Slot = 1

-- ========================================
-- VIEWMODEL / WORLDMODEL
-- ========================================
SWEP.ViewModel = "models/fnvsweps/sh/fnv_sawnoffshotgun.mdl"
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
SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 2
SWEP.Primary.Ammo = "buckshot"

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
SWEP.ShootSound = "^fnv/10mmpistol/fire.wav"
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
    Pos = Vector(-3.56, 1, 0.5),
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
    ["reload"] = {
        Source = "reload",
        SoundTable = {
        }
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        SoundTable = {
        }
    },
}

