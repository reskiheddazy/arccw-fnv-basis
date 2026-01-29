AddCSLuaFile()

-- ========================================
-- BASE SETTINGS
-- ========================================
SWEP.Base = "arccw_base_nade"
SWEP.Spawnable = true
SWEP.Category = "DivergeCW - Grenades"
SWEP.AdminOnly = false
SWEP.PrintName = "Stun Grenade"
SWEP.Slot = 4

SWEP.Trivia_Class = "Hand Grenade"
SWEP.Trivia_Desc = "Non-lethal grenade designed to produce a loud bang accompanied with bright flash, disorienting targets."
SWEP.Trivia_Manufacturer = "Military Surplus"
SWEP.Trivia_Calibre = "N/A"
SWEP.Trivia_Mechanism = "Pyrotechnic delay fuze"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1979

SWEP.Singleton = true -- for grenades, means that weapons ARE ammo; hold one, use one.


SWEP.CookPrimFire = false
SWEP.CookAltFire = true

-- ========================================
-- THROWING SETTINGS
-- ========================================
SWEP.Throwing = true
SWEP.NotForNPCs = true
SWEP.PullPinTime = 0.85

SWEP.MuzzleVelocity = 1500
SWEP.ShootEntity = "arccw_fnv_stun" -- entity to fire

-- ========================================
-- VIEWMODEL / WORLDMODEL
-- ========================================
SWEP.UseHands = true
SWEP.ViewModel = "models/fnvsweps/th/fnv_stungrenade.mdl"
SWEP.WorldModel = "models/weapons/w_eq_flashbang.mdl"
SWEP.ViewModelFOV = 85

-- ========================================
-- MAGAZINE / AMMO
-- ========================================
SWEP.Primary.ClipSize = 1
SWEP.ForceDefaultClip = 0
SWEP.ForceDefaultAmmo = 0

-- ========================================
-- ANIMATIONS
-- ========================================
SWEP.Animations = {
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
    ["pre_throw"] = {
        Source = "pre_throw_overhand",
        SoundTable = {
            {s = "fnv/throwables/pin_start.wav", t = 0.1},
            {s = "fnv/throwables/pin_end.wav", t = 0.25},
        },
    },
    ["throw"] = {
        Source = "throw_overhand",
        TPAnim = ACT_HL2MP_GESTURE_RANGE_ATTACK_GRENADE,
        SoundTable = {
            {s = "fnv/throwables/throw.wav", t = 0},
        },
    },
}
