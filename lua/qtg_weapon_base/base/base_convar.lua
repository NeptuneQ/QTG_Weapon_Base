function QSWEP.AddConVar(a,b,c)
	if c then
		if !ConVarExists('cl_qswep_'..a) then CreateClientConVar('cl_qswep_'..a,b,true,true) end
	else
		if !ConVarExists('sv_qswep_'..a) then CreateConVar('sv_qswep_'..a,b,CLIENT and {FCVAR_REPLICATED} or {FCVAR_REPLICATED,FCVAR_ARCHIVE,FCVAR_NOTIFY}) end
	end
end

function QSWEP.GetConVar(a,b)
	if ConVarExists('sv_qswep_'..a) or b == 'sv' then
		return GetConVar('sv_qswep_'..a)
	elseif ConVarExists('cl_qswep_'..a) or b == 'cl' then
		return GetConVar('cl_qswep_'..a)
	end

	QSWEP.Error('"'..a..'" QTG Weapon Base Convar Not Found!')
end

QSWEP.GetConvar = QSWEP.GetConVar
QSWEP.AddConvar = QSWEP.AddConVar

QSWEP.AddConVar('crosshair',1,true)
QSWEP.AddConVar('crosshair_dot',0,true)
QSWEP.AddConVar('crosshair_aid',0,true)
QSWEP.AddConVar('crosshair_r',255,true)
QSWEP.AddConVar('crosshair_g',255,true)
QSWEP.AddConVar('crosshair_b',255,true)
QSWEP.AddConVar('crosshair_a',255,true)
QSWEP.AddConVar('crosshair_team',1,true)
QSWEP.AddConVar('crosshair_good_r',0,true)
QSWEP.AddConVar('crosshair_good_g',255,true)
QSWEP.AddConVar('crosshair_good_b',0,true)
QSWEP.AddConVar('crosshair_bad_r',255,true)
QSWEP.AddConVar('crosshair_bad_g',0,true)
QSWEP.AddConVar('crosshair_bad_b',0,true)
QSWEP.AddConVar('custom_hud',1,true)
QSWEP.AddConVar('custom_hud_r',255,true)
QSWEP.AddConVar('custom_hud_g',255,true)
QSWEP.AddConVar('custom_hud_b',255,true)
QSWEP.AddConVar('custom_menu',1,true)
QSWEP.AddConVar('custom_menu_key',0,true)
QSWEP.AddConVar('blur_reload',1,true)
QSWEP.AddConVar('blur_deploy',0,true)
QSWEP.AddConVar('vm_bob',1,true)
QSWEP.AddConVar('vm_idle',1,true)
QSWEP.AddConVar('vm_crouch',1,true)
QSWEP.AddConVar('vm_sway',10,true)
QSWEP.AddConVar('view_tilt',0,true)

QSWEP.AddConVar('altatt_key',0)
QSWEP.AddConVar('ironsights',1)
QSWEP.AddConVar('holdironsights',0)
QSWEP.AddConVar('changelog',1)
QSWEP.AddConVar('running',1)
QSWEP.AddConVar('penetration',1)
QSWEP.AddConVar('ricochet',1)
QSWEP.AddConVar('reload',1)
QSWEP.AddConVar('spreadinair',1)