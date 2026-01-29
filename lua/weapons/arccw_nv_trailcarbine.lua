AddCSLuaFile()

-- ========================================
-- BASE SETTINGS
-- ========================================
SWEP.Base = "arccw_base"
SWEP.NeverPhysBullet = true
SWEP.Spawnable = true
SWEP.Category = "DivergeCW - DMRs"
SWEP.PrintName = "Trail Rifle"
SWEP.Slot = 3

-- ========================================
-- VIEWMODEL / WORLDMODEL
-- ========================================
SWEP.ViewModel = "models/fnvsweps/dm/fnv_trailcarbine.mdl"
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
SWEP.Damage = 48
SWEP.DamageMin = 30
SWEP.Range = 120
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
SWEP.Primary.ClipSize = 8
SWEP.Primary.Ammo = "ar2"

-- ========================================
-- RECOIL
-- ========================================
SWEP.Recoil = 1
SWEP.RecoilSide = 1
SWEP.RecoilRise = 1.8
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 1.8

-- ========================================
-- FIRERATE / FIREMODES
-- ========================================
SWEP.Delay = 60 / 650

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "Lever Action"
    },
    {
        Mode = 0,
    },
}

-- ========================================
-- ACCURACY / SPREAD
-- ========================================
SWEP.AccuracyMOA = 5
SWEP.HipDispersion = 500
SWEP.MoveDispersion = 150
SWEP.SightsDispersion = 0
SWEP.JumpDispersion = 300

-- ========================================
-- SOUNDS
-- ========================================
SWEP.ShootSound = "fnv_new_shoot/trailcarbine/fire_trailcarbine.wav"
SWEP.ShootSoundSilenced = nil

-- ========================================
-- EFFECTS
-- ========================================
SWEP.MuzzleEffect = "muzzleflash_m14"
SWEP.MuzzleEffectAttachment = 1

SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellPitch = 0.85
SWEP.ShellScale = 1.25
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
    Pos = Vector(-2.56, -1.5, 1.411),
    Ang = Angle(0, 0, 0),
        Magnification = 1.2,
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
SWEP.ShotgunReload = true

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
        Source = "fire",
    },
    ["cycle"] = {
        Source = "cycle",
        ShellEjectAt = 0.12,
        SoundTable = {
            {s = "fnv/trailercarbine/lever_down.wav", t = 0.02},
            {s = "fnv/trailercarbine/lever_up.wav", t = 0.19},
        }
    },
    ["cycle_iron"] = {
        Source = "cycle_iron",
        ShellEjectAt = 0.12,
        SoundTable = {
            {s = "fnv/trailercarbine/lever_down.wav", t = 0.02},
            {s = "fnv/trailercarbine/lever_up.wav", t = 0.19},
        }
    },
    ["sgreload_start"] = {
        Source = "reload_start",
        SoundTable = {
        }
    },
    ["sgreload_insert"] = {
        Source = "reload_loop",
        SoundTable = {
            {s = "fnv/trailercarbine/shellhit.wav", t = 0.04},
            {s = "fnv/trailercarbine/shellin.wav", t = 0.10},
        }
    },
    ["sgreload_finish"] = {
        Source = "reload_end",
        SoundTable = {
        }
    },
    ["sgreload_finish_empty"] = {
        Source = "reload_end_empty",
        ShellEjectAt = 0.45,
        SoundTable = {
            {s = "fnv/trailercarbine/reload_lever_down.wav", t = 0.24},
            {s = "fnv/trailercarbine/reload_lever_up.wav", t = 0.49},
        }
    },
}
