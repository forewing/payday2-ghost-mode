_G.GhostMode = _G.GhostMode or {}
GhostMode._path = ModPath
GhostMode._data_path = SavePath .. "ghost_mode_data.json"
GhostMode._data = {}

--[[
	Menu logics
]]
function GhostMode:Save()
    local file = io.open(self._data_path, "w+")
    if file then
        file:write(json.encode(self._data))
        file:close()
    end
end

function GhostMode:Load()
    local file = io.open(self._data_path, "r")
    if file then
        self._data = json.decode(file:read("*all"))
        file:close()
    end
end

function isGMEnabled()
    if GhostMode._data.enable_value == nil then
        GhostMode:Load()
    end
    return GhostMode._data.enable_value
end

Hooks:Add("LocalizationManagerPostInit", "LocalizationManagerPostInit_GhostMode", function(loc)
    loc:load_localization_file(GhostMode._path .. "loc/en.json")
end)

Hooks:Add("MenuManagerInitialize", "MenuManagerInitialize_GhostMode", function(menu_manager)
    MenuCallbackHandler.ghost_mode_callback_enable_toggle = function(self, item)
        GhostMode._data.enable_value = (item:value() == "on" and true or false)
        GhostMode:Save()
        log("Toggle is: " .. item:value())
    end

    GhostMode:Load()
    MenuHelper:LoadFromJsonFile(GhostMode._path .. "menu.json", GhostMode, GhostMode._data)
end)

--[[
	Mod logics
]]
if isGMEnabled() == true then

    function GroupAIStateBase:_clbk_switch_enemies_to_not_cool()
    end

    function PlayerMovement:on_suspicion(observer_unit, status)
    end

    function GroupAIStateBase:on_criminal_suspicion_progress(u_suspect, u_observer, status)
    end

    function GroupAIStateBase:criminal_spotted(unit)
    end

    function GroupAIStateBase:report_aggression(unit)
    end

    function PlayerMovement:on_uncovered(enemy_unit)
    end

    function SecurityCamera:_upd_suspicion(t)
    end

    function SecurityCamera:_sound_the_alarm(detected_unit)
    end

    function SecurityCamera:_set_suspicion_sound(suspicion_level)
    end

    function SecurityCamera:clbk_call_the_police()
    end

    function CopMovement:anim_clbk_police_called(unit)
    end

    function CopLogicArrest._upd_enemy_detection(data)
    end

    function CopLogicArrest._call_the_police(data, my_data, paniced)
    end

    function CopLogicIdle.on_alert(data, alert_data)
    end

    function CopLogicBase._get_logic_state_from_reaction(data, reaction)
        return "idle"
    end

    function GroupAIStateBase:sync_event(event_id, blame_id)
    end

    function GroupAIStateBase:on_police_called(called_reason)
    end

    function GroupAIStateBase:on_police_weapons_hot(called_reason)
    end

    function GroupAIStateBase:on_gangster_weapons_hot(called_reason)
    end

    function GroupAIStateBase:on_enemy_weapons_hot(is_delayed_callback)
    end

    function GroupAIStateBase:_clbk_switch_enemies_to_not_cool()
    end

end
