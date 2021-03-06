local SWEP = QSWEP.Base or {}
local HoldTypeTable = {
	['melee'] = {
		[ACT_IDLE] 								= ACT_IDLE_MELEE,
		[ACT_IDLE_ANGRY] 						= ACT_IDLE_MELEE,
		[ACT_IDLE_RELAXED] 						= ACT_IDLE_MELEE,
		[ACT_IDLE_STIMULATED] 					= ACT_IDLE_MELEE,
		[ACT_IDLE_AGITATED] 					= ACT_IDLE_MELEE,
		[ACT_IDLE_AIM_RELAXED] 					= ACT_IDLE_MELEE,
		[ACT_IDLE_AIM_STIMULATED] 				= ACT_IDLE_MELEE,
		[ACT_IDLE_AIM_AGITATED] 				= ACT_IDLE_MELEE,
		[ACT_RANGE_ATTACK1] 					= ACT_RANGE_ATTACK_THROW,
		[ACT_RANGE_ATTACK1_LOW] 				= ACT_MELEE_ATTACK_SWING,
		[ACT_MELEE_ATTACK1] 					= ACT_MELEE_ATTACK_SWING,
		[ACT_MELEE_ATTACK2] 					= ACT_MELEE_ATTACK_SWING,
		[ACT_SPECIAL_ATTACK1] 					= ACT_RANGE_ATTACK_THROW,
		[ACT_RANGE_AIM_LOW] 					= ACT_IDLE_MELEE,
		[ACT_COVER_LOW] 						= ACT_IDLE_MELEE,
		[ACT_WALK] 								= ACT_WALK_SUITCASE,
		[ACT_WALK_RELAXED] 						= ACT_WALK_SUITCASE,
		[ACT_WALK_STIMULATED] 					= ACT_WALK_SUITCASE,
		[ACT_WALK_AGITATED] 					= ACT_WALK_SUITCASE,
		[ACT_RUN_CROUCH] 						= ACT_RUN_CROUCH,
		[ACT_RUN_CROUCH_AIM] 					= ACT_RUN_CROUCH,
		[ACT_RUN] 								= ACT_RUN,
		[ACT_RUN_AIM_RELAXED] 					= ACT_RUN,
		[ACT_RUN_AIM_STIMULATED] 				= ACT_RUN,
		[ACT_RUN_AIM_AGITATED] 					= ACT_RUN,
		[ACT_RUN_AIM] 							= ACT_RUN,
		[ACT_SMALL_FLINCH] 						= ACT_RANGE_ATTACK_PISTOL,
		[ACT_BIG_FLINCH] 						= ACT_RANGE_ATTACK_PISTOL
	},
	['melee2'] = {
		[ACT_IDLE] 								= ACT_IDLE_MELEE,
		[ACT_IDLE_ANGRY] 						= ACT_IDLE_MELEE,
		[ACT_IDLE_RELAXED] 						= ACT_IDLE_MELEE,
		[ACT_IDLE_STIMULATED] 					= ACT_IDLE_MELEE,
		[ACT_IDLE_AGITATED] 					= ACT_IDLE_MELEE,
		[ACT_IDLE_AIM_RELAXED] 					= ACT_IDLE_MELEE,
		[ACT_IDLE_AIM_STIMULATED] 				= ACT_IDLE_MELEE,
		[ACT_IDLE_AIM_AGITATED] 				= ACT_IDLE_MELEE,
		[ACT_RANGE_ATTACK1] 					= ACT_RANGE_ATTACK_THROW,
		[ACT_RANGE_ATTACK1_LOW] 				= ACT_MELEE_ATTACK_SWING,
		[ACT_MELEE_ATTACK1] 					= ACT_MELEE_ATTACK_SWING,
		[ACT_MELEE_ATTACK2] 					= ACT_MELEE_ATTACK_SWING,
		[ACT_SPECIAL_ATTACK1] 					= ACT_RANGE_ATTACK_THROW,
		[ACT_RANGE_AIM_LOW] 					= ACT_IDLE_MELEE,
		[ACT_COVER_LOW] 						= ACT_IDLE_MELEE,
		[ACT_WALK] 								= ACT_WALK_SUITCASE,
		[ACT_WALK_RELAXED] 						= ACT_WALK_SUITCASE,
		[ACT_WALK_STIMULATED] 					= ACT_WALK_SUITCASE,
		[ACT_WALK_AGITATED] 					= ACT_WALK_SUITCASE,
		[ACT_RUN_CROUCH] 						= ACT_RUN_CROUCH,
		[ACT_RUN_CROUCH_AIM] 					= ACT_RUN_CROUCH,
		[ACT_RUN] 								= ACT_RUN,
		[ACT_RUN_AIM_RELAXED] 					= ACT_RUN,
		[ACT_RUN_AIM_STIMULATED] 				= ACT_RUN,
		[ACT_RUN_AIM_AGITATED] 					= ACT_RUN,
		[ACT_RUN_AIM] 							= ACT_RUN,
		[ACT_SMALL_FLINCH] 						= ACT_RANGE_ATTACK_PISTOL,
		[ACT_BIG_FLINCH] 						= ACT_RANGE_ATTACK_PISTOL
	},
	['pistol'] = {
		[ACT_IDLE] 								= ACT_IDLE_PISTOL,
		[ACT_IDLE_ANGRY] 						= ACT_IDLE_ANGRY_PISTOL,
		[ACT_IDLE_AGITATED] 					= ACT_IDLE_ANGRY_PISTOL,
		[ACT_RANGE_ATTACK1] 					= ACT_RANGE_ATTACK_PISTOL,
		[ACT_RELOAD] 							= ACT_RELOAD_PISTOL,
		[ACT_WALK] 								= ACT_WALK_PISTOL,
		[ACT_WALK_AIM] 							= ACT_WALK_AIM_PISTOL,
		[ACT_RUN] 								= ACT_RUN_PISTOL,
		[ACT_RUN_AIM] 							= ACT_RUN_AIM_PISTOL,
		[ACT_RANGE_ATTACK1] 					= ACT_RANGE_ATTACK_PISTOL,
		[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_GESTURE_RANGE_ATTACK_PISTOL,
		[ACT_RELOAD_LOW] 						= ACT_RELOAD_PISTOL_LOW,
		[ACT_RANGE_ATTACK1_LOW] 				= ACT_RANGE_ATTACK_PISTOL_LOW,
		[ACT_COVER_LOW] 						= ACT_COVER_PISTOL_LOW,
		[ACT_RANGE_AIM_LOW] 					= ACT_RANGE_AIM_PISTOL_LOW,
		[ACT_GESTURE_RELOAD] 					= ACT_GESTURE_RELOAD_PISTOL
	},
	['revolver'] = {
		[ACT_IDLE] 								= ACT_IDLE_PISTOL,
		[ACT_IDLE_ANGRY] 						= ACT_IDLE_ANGRY_PISTOL,
		[ACT_IDLE_AGITATED] 					= ACT_IDLE_ANGRY_PISTOL,
		[ACT_RANGE_ATTACK1] 					= ACT_RANGE_ATTACK_PISTOL,
		[ACT_RELOAD] 							= ACT_RELOAD_PISTOL,
		[ACT_WALK] 								= ACT_WALK_PISTOL,
		[ACT_WALK_AIM] 							= ACT_WALK_AIM_PISTOL,
		[ACT_RUN] 								= ACT_RUN_PISTOL,
		[ACT_RUN_AIM] 							= ACT_RUN_AIM_PISTOL,
		[ACT_RANGE_ATTACK1] 					= ACT_RANGE_ATTACK_PISTOL,
		[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_GESTURE_RANGE_ATTACK_PISTOL,
		[ACT_RELOAD_LOW] 						= ACT_RELOAD_PISTOL_LOW,
		[ACT_RANGE_ATTACK1_LOW] 				= ACT_RANGE_ATTACK_PISTOL_LOW,
		[ACT_COVER_LOW] 						= ACT_COVER_PISTOL_LOW,
		[ACT_RANGE_AIM_LOW] 					= ACT_RANGE_AIM_PISTOL_LOW,
		[ACT_GESTURE_RELOAD] 					= ACT_GESTURE_RELOAD_PISTOL
	},
	['ar2'] = {
		[ACT_RANGE_ATTACK1] 					= ACT_RANGE_ATTACK_AR2,
		[ACT_RELOAD] 							= ACT_RELOAD_SMG1,
		[ACT_IDLE] 								= ACT_IDLE_SMG1,
		[ACT_IDLE_ANGRY] 						= ACT_IDLE_ANGRY_SMG1,
		[ACT_WALK] 								= ACT_WALK_RIFLE,
		[ACT_IDLE_RELAXED] 						= ACT_IDLE_SMG1_RELAXED,
		[ACT_IDLE_STIMULATED] 					= ACT_IDLE_SMG1_STIMULATED,
		[ACT_IDLE_AGITATED] 					= ACT_IDLE_ANGRY_SMG1,
		[ACT_WALK_RELAXED] 						= ACT_WALK_RIFLE_RELAXED,
		[ACT_WALK_STIMULATED] 					= ACT_WALK_RIFLE_STIMULATED,
		[ACT_WALK_AGITATED] 					= ACT_WALK_AIM_RIFLE,
		[ACT_RUN_RELAXED] 						= ACT_RUN_RIFLE_RELAXED,
		[ACT_RUN_STIMULATED] 					= ACT_RUN_RIFLE_STIMULATED,
		[ACT_RUN_AGITATED] 						= ACT_RUN_AIM_RIFLE,
		[ACT_IDLE_AIM_RELAXED] 					= ACT_IDLE_SMG1_RELAXED,
		[ACT_IDLE_AIM_STIMULATED] 				= ACT_IDLE_AIM_RIFLE_STIMULATED,
		[ACT_IDLE_AIM_AGITATED] 				= ACT_IDLE_ANGRY_SMG1,
		[ACT_WALK_AIM_RELAXED] 					= ACT_WALK_RIFLE_RELAXED,
		[ACT_WALK_AIM_STIMULATED] 				= ACT_WALK_AIM_RIFLE_STIMULATED,
		[ACT_WALK_AIM_AGITATED] 				= ACT_WALK_AIM_RIFLE,
		[ACT_RUN_AIM_RELAXED] 					= ACT_RUN_RIFLE_RELAXED,
		[ACT_RUN_AIM_STIMULATED] 				= ACT_RUN_AIM_RIFLE_STIMULATED,
		[ACT_RUN_AIM_AGITATED] 					= ACT_RUN_AIM_RIFLE,
		[ACT_WALK_AIM] 							= ACT_WALK_AIM_RIFLE,
		[ACT_WALK_CROUCH] 						= ACT_WALK_CROUCH_RIFLE,
		[ACT_WALK_CROUCH_AIM] 					= ACT_WALK_CROUCH_AIM_RIFLE,
		[ACT_RUN] 								= ACT_RUN_RIFLE,
		[ACT_RUN_AIM] 							= ACT_RUN_AIM_RIFLE,
		[ACT_RUN_CROUCH] 						= ACT_RUN_CROUCH_RIFLE,
		[ACT_RUN_CROUCH_AIM] 					= ACT_RUN_CROUCH_AIM_RIFLE,
		[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_GESTURE_RANGE_ATTACK_AR2,
		[ACT_COVER_LOW] 						= ACT_COVER_SMG1_LOW,
		[ACT_RANGE_AIM_LOW] 					= ACT_RANGE_AIM_AR2_LOW,
		[ACT_RANGE_ATTACK1_LOW] 				= ACT_RANGE_ATTACK_SMG1_LOW,
		[ACT_RELOAD_LOW] 						= ACT_RELOAD_SMG1_LOW,
		[ACT_GESTURE_RELOAD] 					= ACT_GESTURE_RELOAD_SMG1
	},
	['smg'] = {
		[ACT_IDLE] 								= ACT_IDLE_SMG1,
		[ACT_IDLE_ANGRY] 						= ACT_IDLE_ANGRY_SMG1,
		[ACT_RANGE_ATTACK1] 					= ACT_RANGE_ATTACK_SMG1,
		[ACT_RELOAD] 							= ACT_RELOAD_SMG1,
		[ACT_WALK_AIM] 							= ACT_WALK_AIM_RIFLE,
		[ACT_RUN_AIM] 							= ACT_RUN_AIM_RIFLE,
		[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_GESTURE_RANGE_ATTACK_SMG1,
		[ACT_RELOAD_LOW] 						= ACT_RELOAD_SMG1_LOW,
		[ACT_RANGE_ATTACK1_LOW] 				= ACT_RANGE_ATTACK_SMG1_LOW,
		[ACT_COVER_LOW] 						= ACT_COVER_SMG1_LOW,
		[ACT_RANGE_AIM_LOW] 					= ACT_RANGE_AIM_SMG1_LOW,
		[ACT_GESTURE_RELOAD] 					= ACT_GESTURE_RELOAD_SMG1
	},
	['shotgun'] = {
		[ACT_RANGE_ATTACK1]						= ACT_RANGE_ATTACK_SHOTGUN,
		[ACT_RELOAD]							= ACT_RELOAD_SHOTGUN,
		[ACT_IDLE]								= ACT_IDLE_SMG1,
		[ACT_IDLE_ANGRY]						= ACT_IDLE_ANGRY_SHOTGUN,
		[ACT_WALK]								= ACT_WALK_RIFLE,
		[ACT_MP_RUN] 							= ACT_HL2MP_RUN_SHOTGUN,
		[ACT_IDLE_RELAXED]						= ACT_IDLE_SMG1_RELAXED,
		[ACT_IDLE_STIMULATED]                  	= ACT_IDLE_SMG1_STIMULATED,
		[ACT_IDLE_AGITATED]                    	= ACT_IDLE_ANGRY_SMG1,
		[ACT_MP_CROUCHWALK] 					= ACT_HL2MP_WALK_CROUCH_SHOTGUN,
		[ACT_WALK_RELAXED]                     	= ACT_WALK_RIFLE_RELAXED,
		[ACT_WALK_STIMULATED]       			= ACT_WALK_RIFLE_STIMULATED,
		[ACT_WALK_AGITATED]         			= ACT_WALK_AIM_RIFLE,
		[ACT_RUN_RELAXED]           			= ACT_RUN_RIFLE_RELAXED,
		[ACT_RUN_STIMULATED]        			= ACT_RUN_RIFLE_STIMULATED,
		[ACT_RUN_AGITATED]          			= ACT_RUN_AIM_RIFLE,
		[ACT_IDLE_AIM_RELAXED]      			= ACT_IDLE_SMG1_RELAXED,
		[ACT_IDLE_AIM_STIMULATED]   			= ACT_IDLE_AIM_RIFLE_STIMULATED,
		[ACT_IDLE_AIM_AGITATED]     			= ACT_IDLE_ANGRY_SMG1,
		[ACT_WALK_AIM_RELAXED]      			= ACT_WALK_RIFLE_RELAXED,
		[ACT_WALK_AIM_STIMULATED]   			= ACT_WALK_AIM_RIFLE_STIMULATED,
		[ACT_WALK_AIM_AGITATED]     			= ACT_WALK_AIM_RIFLE,
		[ACT_RUN_AIM_RELAXED]       			= ACT_RUN_RIFLE_RELAXED,
		[ACT_RUN_AIM_STIMULATED]    			= ACT_RUN_AIM_RIFLE_STIMULATED,
		[ACT_RUN_AIM_AGITATED]      			= ACT_RUN_AIM_RIFLE,
		[ACT_WALK_AIM]              			= ACT_WALK_AIM_RIFLE,
		[ACT_WALK_CROUCH]           			= ACT_WALK_CROUCH_RIFLE,
		[ACT_WALK_CROUCH_AIM]       			= ACT_WALK_CROUCH_AIM_RIFLE,
		[ACT_RUN]                   			= ACT_RUN_RIFLE,
		[ACT_RUN_AIM]               			= ACT_RUN_AIM_RIFLE,
		[ACT_RUN_CROUCH]            			= ACT_RUN_CROUCH_RIFLE,
		[ACT_RUN_CROUCH_AIM]        			= ACT_RUN_CROUCH_AIM_RIFLE,
		[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_GESTURE_RANGE_ATTACK_AR2,
		[ACT_COVER_LOW]             			= ACT_COVER_SMG1_LOW,
		[ACT_RANGE_AIM_LOW]         			= ACT_RANGE_AIM_AR2_LOW,
		[ACT_RANGE_ATTACK1_LOW]     			= ACT_RANGE_ATTACK_SMG1_LOW,
		[ACT_RELOAD_LOW]            			= ACT_RELOAD_SMG1_LOW,
		[ACT_GESTURE_RELOAD]        			= ACT_GESTURE_RELOAD_SMG1
	},
	['rpg'] = {
		[ACT_RANGE_ATTACK1]       				= ACT_RANGE_ATTACK_RPG,
		[ACT_RELOAD]              				= ACT_RELOAD_SMG1,
		[ACT_IDLE]                				= ACT_IDLE_SMG1,
		[ACT_IDLE_ANGRY]          				= ACT_IDLE_ANGRY_RPG,
		[ACT_WALK]                				= ACT_WALK_RIFLE,
		[ACT_MP_RUN] 							= ACT_HL2MP_RUN_RPG,
		[ACT_IDLE_RELAXED]        				= ACT_IDLE_SMG1_RELAXED,
		[ACT_IDLE_STIMULATED]     				= ACT_IDLE_SMG1_STIMULATED,
		[ACT_IDLE_AGITATED]       				= ACT_IDLE_ANGRY_SMG1,
		[ACT_MP_CROUCHWALK] 					= ACT_HL2MP_WALK_CROUCH_RPG,
		[ACT_WALK_RELAXED]        				= ACT_WALK_RIFLE_RELAXED,
		[ACT_WALK_STIMULATED]     				= ACT_WALK_RIFLE_STIMULATED,
		[ACT_WALK_AGITATED]       				= ACT_WALK_AIM_RIFLE,
		[ACT_RUN_RELAXED]         				= ACT_RUN_RIFLE_RELAXED,
		[ACT_RUN_STIMULATED]      				= ACT_RUN_RIFLE_STIMULATED,
		[ACT_RUN_AGITATED]        				= ACT_RUN_AIM_RIFLE,
		[ACT_IDLE_AIM_RELAXED]    				= ACT_IDLE_SMG1_RELAXED,
		[ACT_IDLE_AIM_STIMULATED] 				= ACT_IDLE_AIM_RIFLE_STIMULATED,
		[ACT_IDLE_AIM_AGITATED]   				= ACT_IDLE_ANGRY_SMG1,
		[ACT_WALK_AIM_RELAXED]    				= ACT_WALK_RIFLE_RELAXED,
		[ACT_WALK_AIM_STIMULATED] 				= ACT_WALK_AIM_RIFLE_STIMULATED,
		[ACT_WALK_AIM_AGITATED]   				= ACT_WALK_AIM_RIFLE,
		[ACT_RUN_AIM_RELAXED]     				= ACT_RUN_RIFLE_RELAXED,
		[ACT_RUN_AIM_STIMULATED]  				= ACT_RUN_AIM_RIFLE_STIMULATED,
		[ACT_RUN_AIM_AGITATED]    				= ACT_RUN_AIM_RIFLE	,
		[ACT_WALK_AIM]            				= ACT_WALK_AIM_RIFLE,
		[ACT_WALK_CROUCH]         				= ACT_WALK_CROUCH_RIFLE,
		[ACT_WALK_CROUCH_AIM]     				= ACT_WALK_CROUCH_AIM_RIFLE,
		[ACT_RUN]                 				= ACT_RUN_RIFLE,
		[ACT_RUN_AIM]             				= ACT_RUN_AIM_RIFLE,
		[ACT_RUN_CROUCH]          				= ACT_RUN_CROUCH_RIFLE,
		[ACT_RUN_CROUCH_AIM]      				= ACT_RUN_CROUCH_AIM_RIFLE,
		[ACT_GESTURE_RANGE_ATTACK1]				= ACT_GESTURE_RANGE_ATTACK_AR2,
		[ACT_COVER_LOW]           				= ACT_COVER_SMG1_LOW,
		[ACT_RANGE_AIM_LOW]       				= ACT_RANGE_AIM_AR2_LOW,
		[ACT_RANGE_ATTACK1_LOW]   				= ACT_RANGE_ATTACK_SMG1_LOW,
		[ACT_RELOAD_LOW]          				= ACT_RELOAD_SMG1_LOW,
		[ACT_GESTURE_RELOAD]      				= ACT_GESTURE_RELOAD_SMG1,
	}
}

local NPCAnimFix = {
	['npc_combine_s'] = {
		['pistol'] = {
			[ACT_IDLE] 							= ACT_IDLE_SMG1,
			[ACT_IDLE_ANGRY] 					= ACT_IDLE_ANGRY_SMG1,
			[ACT_RANGE_ATTACK1] 				= ACT_RANGE_ATTACK_SMG1,
			[ACT_RELOAD] 						= ACT_RELOAD_SMG1,
			[ACT_WALK_AIM] 						= ACT_WALK_AIM_RIFLE,
			[ACT_RUN_AIM] 						= ACT_RUN_AIM_RIFLE,
			[ACT_GESTURE_RANGE_ATTACK1] 		= ACT_GESTURE_RANGE_ATTACK_SMG1,
			[ACT_RELOAD_LOW] 					= ACT_RELOAD_SMG1_LOW,
			[ACT_RANGE_ATTACK1_LOW] 			= ACT_RANGE_ATTACK_SMG1_LOW,
			[ACT_COVER_LOW] 					= ACT_COVER_SMG1_LOW,
			[ACT_RANGE_AIM_LOW] 				= ACT_RANGE_AIM_SMG1_LOW,
			[ACT_GESTURE_RELOAD] 				= ACT_GESTURE_RELOAD_SMG1
		},
		['revolver'] = {
			[ACT_IDLE] 							= ACT_IDLE_SMG1,
			[ACT_IDLE_ANGRY] 					= ACT_IDLE_ANGRY_SMG1,
			[ACT_RANGE_ATTACK1] 				= ACT_RANGE_ATTACK_SMG1,
			[ACT_RELOAD] 						= ACT_RELOAD_SMG1,
			[ACT_WALK_AIM] 						= ACT_WALK_AIM_RIFLE,
			[ACT_RUN_AIM] 						= ACT_RUN_AIM_RIFLE,
			[ACT_GESTURE_RANGE_ATTACK1] 		= ACT_GESTURE_RANGE_ATTACK_SMG1,
			[ACT_RELOAD_LOW] 					= ACT_RELOAD_SMG1_LOW,
			[ACT_RANGE_ATTACK1_LOW] 			= ACT_RANGE_ATTACK_SMG1_LOW,
			[ACT_COVER_LOW] 					= ACT_COVER_SMG1_LOW,
			[ACT_RANGE_AIM_LOW] 				= ACT_RANGE_AIM_SMG1_LOW,
			[ACT_GESTURE_RELOAD] 				= ACT_GESTURE_RELOAD_SMG1
		},
		['rpg'] = {
			[ACT_RANGE_ATTACK1]       			= ACT_RANGE_ATTACK_AR2,
		},
		['melee'] = {
			[ACT_RANGE_ATTACK1]					= ACT_MELEE_ATTACK_SWING,
			[ACT_RANGE_ATTACK2]					= ACT_MELEE_ATTACK_SWING,
			[ACT_IDLE_ANGRY]					= ACT_IDLE_ANGRY_MELEE,
		},
		['melee2'] = {
			[ACT_RANGE_ATTACK1]					= ACT_MELEE_ATTACK_SWING,
			[ACT_RANGE_ATTACK2]					= ACT_MELEE_ATTACK_SWING,
			[ACT_IDLE_ANGRY]					= ACT_IDLE_ANGRY_MELEE,
		},
	},
	['npc_metropolice'] = {
		['melee'] = {
			[ACT_RANGE_ATTACK1]					= ACT_MELEE_ATTACK_SWING,
			[ACT_RANGE_ATTACK2]					= ACT_MELEE_ATTACK_SWING,
			[ACT_IDLE_ANGRY]					= ACT_IDLE_ANGRY_MELEE,
		},
		['melee2'] = {
			[ACT_RANGE_ATTACK1]					= ACT_MELEE_ATTACK_SWING,
			[ACT_RANGE_ATTACK2]					= ACT_MELEE_ATTACK_SWING,
			[ACT_IDLE_ANGRY]					= ACT_IDLE_ANGRY_MELEE,
		},
		['shotgun'] = {
			[ACT_IDLE] 							= ACT_IDLE_SMG1,
			[ACT_IDLE_ANGRY] 					= ACT_IDLE_ANGRY_SMG1,
			[ACT_RANGE_ATTACK1] 				= ACT_RANGE_ATTACK_SMG1,
			[ACT_RELOAD] 						= ACT_RELOAD_SMG1,
			[ACT_WALK_AIM] 						= ACT_WALK_AIM_RIFLE,
			[ACT_RUN_AIM] 						= ACT_RUN_AIM_RIFLE,
			[ACT_GESTURE_RANGE_ATTACK1] 		= ACT_GESTURE_RANGE_ATTACK_SMG1,
			[ACT_RELOAD_LOW] 					= ACT_RELOAD_SMG1_LOW,
			[ACT_RANGE_ATTACK1_LOW] 			= ACT_RANGE_ATTACK_SMG1_LOW,
			[ACT_COVER_LOW] 					= ACT_COVER_SMG1_LOW,
			[ACT_RANGE_AIM_LOW] 				= ACT_RANGE_AIM_SMG1_LOW,
			[ACT_GESTURE_RELOAD] 				= ACT_GESTURE_RELOAD_SMG1
		},
		['ar2'] = {
			[ACT_IDLE] 							= ACT_IDLE_SMG1,
			[ACT_IDLE_ANGRY] 					= ACT_IDLE_ANGRY_SMG1,
			[ACT_RANGE_ATTACK1] 				= ACT_RANGE_ATTACK_SMG1,
			[ACT_RELOAD] 						= ACT_RELOAD_SMG1,
			[ACT_WALK_AIM] 						= ACT_WALK_AIM_RIFLE,
			[ACT_RUN_AIM] 						= ACT_RUN_AIM_RIFLE,
			[ACT_GESTURE_RANGE_ATTACK1] 		= ACT_GESTURE_RANGE_ATTACK_SMG1,
			[ACT_RELOAD_LOW] 					= ACT_RELOAD_SMG1_LOW,
			[ACT_RANGE_ATTACK1_LOW] 			= ACT_RANGE_ATTACK_SMG1_LOW,
			[ACT_COVER_LOW] 					= ACT_COVER_SMG1_LOW,
			[ACT_RANGE_AIM_LOW] 				= ACT_RANGE_AIM_SMG1_LOW,
			[ACT_GESTURE_RELOAD] 				= ACT_GESTURE_RELOAD_SMG1
		}
	}
}

local function Itbl(e,a)
	if !IsValid(e) then return false end
	
	if NPCAnimFix[e:GetClass()] and NPCAnimFix[e:GetClass()][a] then
		return true
	end
	
	return false
end

function SWEP:SetupWeaponHoldTypeForAI(t)
	local t = HoldTypeTable[t or 'smg'] or HoldTypeTable['smg']
	
	self.ActivityTranslateAI = table.Copy(t)
end

function SWEP:NPCAnimFix(t)
	if Itbl(self.Owner,t) then
		local tbl = NPCAnimFix[self.Owner:GetClass()][t]
		for k,v in pairs(tbl) do
			self.ActivityTranslateAI[k] = v
		end
	end
end