AddCSLuaFile()

-- ========================================
-- BASE SETTINGS
-- ========================================
SWEP.Base = "arccw_base"
SWEP.NeverPhysBullet = true
SWEP.Spawnable = true
SWEP.Category = "DivergeCW - SMGs"
SWEP.PrintName = "10MM SMG"
SWEP.Slot = 2

-- ========================================
-- VIEWMODEL / WORLDMODEL
-- ========================================
SWEP.ViewModel = "models/fnvsweps/sm/fnv_10mmsmg.mdl"
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
SWEP.Damage = 12
SWEP.DamageMin = 5
SWEP.Range = 35
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
SWEP.Primary.ClipSize = 30
SWEP.Primary.Ammo = "smg"

-- ========================================
-- RECOIL
-- ========================================
SWEP.Recoil = 1
SWEP.RecoilSide = 0.9
SWEP.RecoilRise = 0.5
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 1.25

-- ========================================
-- FIRERATE / FIREMODES
-- ========================================
SWEP.Delay = 60 / 580

SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0,
    },
}

-- ========================================
-- ACCURACY / SPREAD
-- ========================================
SWEP.AccuracyMOA = 25
SWEP.HipDispersion = 200
SWEP.MoveDispersion = 150
SWEP.SightsDispersion = 50
SWEP.JumpDispersion = 300

-- ========================================
-- SOUNDS
-- ========================================
SWEP.ShootSound = "fnv_new_shoot/9mmsmg/fire_9mmsmg.wav"
SWEP.ShootSoundSilenced = nil

-- ========================================
-- EFFECTS
-- ========================================
SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.MuzzleEffectAttachment = 1

SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellPitch = 85
SWEP.ShellScale = 1.15
SWEP.ShellSounds = "weapons/arccw/casings/casing_556_1.wav"
SWEP.CaseEffectAttachment = 2

-- ========================================
-- SPEED MULTIPLIERS
-- ========================================
SWEP.SpeedMult = 0.85
SWEP.SightedSpeedMult = 0.80
SWEP.ShootSpeedMult = 1

-- ========================================
-- IRON SIGHTS
-- ========================================
SWEP.IronSightStruct = {
    Pos = Vector(-3.12, 0, 0.439),
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
            {s = "fnv/10mmsmg/magout.wav", t = 0.16},
            {s = "fnv/10mmsmg/maghit.wav", t = 1.35},
            {s = "fnv/10mmsmg/magin.wav", t = 1.39},
        }
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        SoundTable = {
            {s = "fnv/10mmsmg/magout.wav", t = 0.16},
            {s = "fnv/10mmsmg/maghit.wav", t = 1.35},
            {s = "fnv/10mmsmg/magin.wav", t = 1.39},
            {s = "fnv/10mmsmg/charge.wav", t = 1.89},
        }
    },
}
