AddCSLuaFile()

SWEP.Base = "arccw_base"
SWEP.NeverPhysBullet = true
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Fallout"
SWEP.PrintName = "22 Silenced Pistol"
SWEP.ViewModelFOV = 90
SWEP.Slot = 1
SWEP.ViewModel = "models/fnvsweps/pi/fnv_22silpistol.mdl" -- I mean, you probably have to edit these too
SWEP.WorldModel = "models/weapons/w_knife_ct.mdl"

SWEP.MirrorVMWM = true -- Copy the viewmodel, along with all its attachments, to the worldmodel. Super convenient!

SWEP.WorldModelOffset = {
    pos = Vector(0, 0, 0),
    ang = Angle(0, 0, 0),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}

SWEP.DefaultBodygroups = "00000000"




SWEP.Damage = 18
SWEP.DamageMin = 10 -- damage done at maximum range
SWEP.Range = 45 -- in METRES
SWEP.Penetration = 4
SWEP.DamageType = DMG_BULLET


SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 10 -- DefaultClip is automatically set.
SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses


SWEP.Recoil = 0.5
SWEP.RecoilSide = 1
SWEP.RecoilRise = 1
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 1.25
SWEP.RecoilPunch = 1.5 
SWEP.RecoilPunchBackMax = 1
SWEP.RecoilVMShake = 1 -- random viewmodel offset when shooty


SWEP.Delay = 60 / 545 -- 60 / RPM.

SWEP.Firemodes = {
    {
        Mode = 1,
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



SWEP.ShootSound = "^fnv/22silpistol/fire.wav"
SWEP.ShootSoundSilenced = nil


SWEP.MuzzleEffect = "muzzleflash_suppressed"


SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellPitch = 125
SWEP.ShellScale = 0.85



SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on


SWEP.SpeedMult = 0.9
SWEP.SightedSpeedMult = 0.88
SWEP.ShootSpeedMult = 1



SWEP.IronSightStruct = {
    Pos = Vector(-2.498, 0, 1.08),
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


SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle_empty",
    },
    ["draw"] = {
        Source = "draw",
    },
    ["draw_empty"] = {
        Source = "draw_empty",
    },
    ["holster"] = {
        Source = "holster",
    },
    ["holster_empty"] = {
        Source = "holster_empty",
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
            {s = "fnv/22silpistol/magrel.wav", t=  0.10},
            {s = "fnv/22silpistol/magout.wav", t =  0.12},
            {s = "fnv/22silpistol/maghit.wav", t =  1.2},
            {s = "fnv/22silpistol/magin.wav", t =  1.3},
        }
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        SoundTable = {
            {s = "fnv/22silpistol/magrel.wav", t=  0.10},
            {s = "fnv/22silpistol/magout.wav", t =  0.12},
            {s = "fnv/22silpistol/maghit.wav", t =  1.2},
            {s = "fnv/22silpistol/magin.wav", t =  1.3},
            {s = "fnv/22silpistol/charge.wav", t =  1.69},
        }
    },
}

