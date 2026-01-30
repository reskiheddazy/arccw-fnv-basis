att.PrintName = "AMR Optic"
att.Description = "Optic found on the AMR sniper rifle. Provides variable zoom levels for long-range engagements."

att.SortOrder = 6

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic_large"

att.Model = "models/fnvatts/scopes/fnv_att_amrscope.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(-0.06, 10, -1.47),
        Ang = Angle(0, 0, 0),
        Magnification = 1,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",
        IgnoreExtra = true
    }
}

att.ScopeGlint = true

att.Holosight = true
att.HolosightReticle = Material("vgui/huds/mildot.png", "smooth")
att.HolosightNoFlare = true
att.HolosightSize = 15
att.HolosightBone = "holosight"
att.HolosightPiece = "models/fnvatts/scopes/fnv_att_hsp_amrscope.mdl"
att.Colorable = true

att.HolosightMagnification = 6
att.HolosightBlackbox = true

att.Mult_SightTime = 1.25 
att.Mult_SightedSpeedMult = 0.85
att.Mult_SpeedMult = 0.94