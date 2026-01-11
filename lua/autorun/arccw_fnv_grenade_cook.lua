-- Hook to allow grenade cooking by pausing pre_throw animation at the end
-- This is for ARC9 grenades
hook.Add("ARC9_PlayAnimation", "ArcCW_FNV_StunGrenadeCook", function(wep, anim)
    if not IsValid(wep) then return end

    -- Check if this is the stun grenade from arccw folder
    if wep:GetClass() ~= "arccw_nv_thr_stungrenade" then return end

    -- Check if this is a pullpin animation
    if anim == "pullpin" or anim == "pre_throw" then
        -- Get the animation table
        local animtable = wep.Animations[anim]
        if animtable then
            -- Set MinProgress to pause at 99% to allow cooking/holding
            animtable.MinProgress = 0.99
        end
    end
end)
