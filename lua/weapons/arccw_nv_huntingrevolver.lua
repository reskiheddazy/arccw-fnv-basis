AddCSLuaFile()

SWEP.Base = "arccw_base"
SWEP.NeverPhysBullet = true
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Fallout"
SWEP.PrintName = "Hunting Revolver"
SWEP.ViewModelFOV = 90
SWEP.Slot = 1
SWEP.ViewModel = "models/fnvsweps/pi/fnv_huntingrev.mdl" -- I mean, you probably have to edit these too
SWEP.WorldModel = "models/weapons/w_knife_ct.mdl"

SWEP.MirrorVMWM = true -- Copy the viewmodel, along with all its attachments, to the worldmodel. Super convenient!

SWEP.WorldModelOffset = {
    pos = Vector(0, 0, 0),
    ang = Angle(0, 0, 0),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}

SWEP.DefaultBodygroups = "00000000"




SWEP.Damage = 70
SWEP.DamageMin = 40 -- damage done at maximum range
SWEP.Range = 85 -- in METRES
SWEP.Penetration = 4
SWEP.DamageType = DMG_BULLET


SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 5 -- DefaultClip is automatically set.
SWEP.Primary.Ammo = "357" -- what ammo type the gun uses


SWEP.Recoil = 2
SWEP.RecoilSide = 1
SWEP.RecoilRise = 1
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 1.25
SWEP.RecoilPunch = 1.5 
SWEP.RecoilPunchBackMax = 1
SWEP.RecoilVMShake = 1 -- random viewmodel offset when shooty


SWEP.Delay = 60 / 450 -- 60 / RPM.

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "Double Action",
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



SWEP.ShootSound = "^fnv/huntingrev/fire.wav"
SWEP.ShootSoundSilenced = nil


SWEP.MuzzleEffect = "muzzleflash_pistol_rbull"


SWEP.ShellModel = nil
SWEP.ShellPitch = 75
SWEP.ShellScale = 1.25



SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = nil -- which attachment to put the case effect on


SWEP.SpeedMult = 0.9
SWEP.SightedSpeedMult = 0.88
SWEP.ShootSpeedMult = 1



SWEP.IronSightStruct = {
    Pos = Vector(-2.294, 0, -0.101),
    Ang = Angle(1.394, 0, 0),
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

SWEP.TriggerDelay = true

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
    ["reload"] = {
        Source = "reload",
        SoundTable = {
            {s = "fnv/huntingrev/cylopen.wav", t=  0.35},
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

