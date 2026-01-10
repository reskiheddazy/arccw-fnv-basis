AddCSLuaFile()

SWEP.Base = "arccw_base"
SWEP.NeverPhysBullet = true
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Fallout"
SWEP.PrintName = "Trail Rifle"
SWEP.ViewModelFOV = 90
SWEP.Slot = 3
SWEP.ViewModel = "models/fnvsweps/dm/fnv_trailcarbine.mdl" -- I mean, you probably have to edit these too
SWEP.WorldModel = "models/weapons/w_knife_ct.mdl"

SWEP.MirrorVMWM = true -- Copy the viewmodel, along with all its attachments, to the worldmodel. Super convenient!

SWEP.WorldModelOffset = {
    pos = Vector(0, 0, 0),
    ang = Angle(0, 0, 0),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}

SWEP.DefaultBodygroups = "00000000"




SWEP.Damage = 48
SWEP.DamageMin = 30 -- damage done at maximum range
SWEP.Range = 120 -- in METRES
SWEP.Penetration = 4
SWEP.DamageType = DMG_BULLET


SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 8 -- DefaultClip is automatically set.
SWEP.Primary.Ammo = "ar2" -- what ammo type the gun uses


SWEP.Recoil = 1
SWEP.RecoilSide = 1
SWEP.RecoilRise = 1.8
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 1.8
SWEP.RecoilPunch = 2
SWEP.RecoilPunchBackMax = 1
SWEP.RecoilVMShake = 2 -- random viewmodel offset when shooty


SWEP.Delay = 60 / 650 -- 60 / RPM.

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "Lever Action"
    },
    {
        Mode = 0,
    },
}


SWEP.AccuracyMOA = 15 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 500 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 0 -- dispersion that remains even in sights
SWEP.JumpDispersion = 300 -- dispersion penalty when in the air



SWEP.ShootSound = "fnv/trailercarbine/fire.wav"
SWEP.ShootSoundSilenced = nil


SWEP.MuzzleEffect = "muzzleflash_m14"


SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellPitch = 0.85
SWEP.ShellScale = 1.25



SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on


SWEP.SpeedMult = 0.9
SWEP.SightedSpeedMult = 0.88
SWEP.ShootSpeedMult = 1



SWEP.IronSightStruct = {
    Pos = Vector(-2.56, 0, 1.411),
    Ang = Angle(0, 0, 0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(0, 0, -45),
    },
}



SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"



SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.ManualAction = true -- pump/bolt action
SWEP.NoLastCycle = true -- do not cycle on last shot
SWEP.ShotgunReload = true -- reloads like shotgun instead of magazines

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

