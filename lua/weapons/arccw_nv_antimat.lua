AddCSLuaFile()

SWEP.Base = "arccw_base"
SWEP.NeverPhysBullet = true
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Fallout"
SWEP.PrintName = "Anti Materiel Rifle"
SWEP.ViewModelFOV = 90
SWEP.Slot = 3
SWEP.ViewModel = "models/fnvsweps/sn/fnv_amr.mdl" -- I mean, you probably have to edit these too
SWEP.WorldModel = "models/weapons/w_knife_ct.mdl"

SWEP.MirrorVMWM = true -- Copy the viewmodel, along with all its attachments, to the worldmodel. Super convenient!

SWEP.WorldModelOffset = {
    pos = Vector(0, 0, 0),
    ang = Angle(0, 0, 0),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}

SWEP.DefaultBodygroups = "00000000"




SWEP.Damage = 180
SWEP.DamageMin = 120 -- damage done at maximum range
SWEP.Range = 350 -- in METRES
SWEP.Penetration = 4
SWEP.DamageType = DMG_BULLET


SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 4 -- DefaultClip is automatically set.
SWEP.Primary.Ammo = "SniperPenetratedRound" -- what ammo type the gun uses


SWEP.Recoil = 2.5
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



SWEP.ShootSound = "^fnv/amr/fire.wav"
SWEP.ShootSoundSilenced = nil


SWEP.MuzzleEffect = "muzzleflash_m14"


SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 0.50
SWEP.ShellScale = 1.5



SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on


SWEP.SpeedMult = 0.9
SWEP.SightedSpeedMult = 0.88
SWEP.ShootSpeedMult = 1



SWEP.IronSightStruct = {
    Pos = Vector(-2.921, 0, 0.119),
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

