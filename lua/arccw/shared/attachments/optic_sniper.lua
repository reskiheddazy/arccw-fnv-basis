att.PrintName = "Sniper Optic"
att.Description = "Optic found on the Sniper rifle. Provides zoom level for medium-range engagements."

att.SortOrder = 6

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic_large"

att.Model = "models/fnvatts/scopes/fnv_att_snpscope.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(-0.06, 15, -2.5),
        Ang = Angle(0, 0, 0),
        Magnification = 1,
        IgnoreExtra = true
    }
}

att.ScopeGlint = true

att.Holosight = true
att.HolosightReticle = Material("vgui/huds/mildot.png", "smooth")
att.HolosightNoFlare = true
att.HolosightSize = 15
att.HolosightBone = "holosight"
att.HolosightPiece = "models/fnvatts/scopes/fnv_att_snpscopehsp.mdl"
att.Colorable = true

att.HolosightMagnification = 4
att.HolosightBlackbox = true


att.Mult_SightTime = 1.15
att.Mult_SightedSpeedMult = 0.88
att.Mult_SpeedMult = 0.98