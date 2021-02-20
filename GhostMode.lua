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
