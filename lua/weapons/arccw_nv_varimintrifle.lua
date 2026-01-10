AddCSLuaFile()

SWEP.Base = "arccw_base"
SWEP.NeverPhysBullet = true
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Fallout"
SWEP.PrintName = "Varmint Rifle"
SWEP.ViewModelFOV = 90
SWEP.Slot = 2
SWEP.ViewModel = "models/fnvsweps/dm/fnv_varmintrifle.mdl" -- I mean, you probably have to edit these too
SWEP.WorldModel = "models/weapons/w_knife_ct.mdl"

SWEP.MirrorVMWM = true -- Copy the viewmodel, along with all its attachments, to the worldmodel. Super convenient!

SWEP.WorldModelOffset = {
    pos = Vector(0, 0, 0),
    ang = Angle(0, 0, 0),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}

SWEP.DefaultBodygroups = "00000000"




SWEP.Damage = 26
SWEP.DamageMin = 18 -- damage done at maximum range
SWEP.Range = 200 -- in METRES
SWEP.Penetration = 4
SWEP.DamageType = DMG_BULLET


SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 10 -- DefaultClip is automatically set.
SWEP.Primary.Ammo = "ar2" -- what ammo type the gun uses


SWEP.Recoil = 1.8
SWEP.RecoilSide = 1
SWEP.RecoilRise = 1
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 1.25
SWEP.RecoilPunch = 1.5 
SWEP.RecoilPunchBackMax = 1
SWEP.RecoilVMShake = 1 -- random viewmodel offset when shooty


SWEP.Delay = 60 / 650 -- 60 / RPM.

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "Bolt Action"
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



SWEP.ShootSound = "^fnv/varmint/fire.wav"
SWEP.ShootSoundSilenced = nil


SWEP.MuzzleEffect = "muzzleflash_pistol_deagle"


SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellPitch = 100
SWEP.ShellScale = 1



SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on


SWEP.SpeedMult = 0.9
SWEP.SightedSpeedMult = 0.88
SWEP.ShootSpeedMult = 1



SWEP.IronSightStruct = {
    Pos = Vector(-2.481, 0, 1.279),
    Ang = Angle(0, 0, 0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(0, 0, -45),
    },
}



SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"



SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.ManualAction = true -- pump/bolt action
SWEP.NoLastCycle = true -- do not cycle on last shot

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

