# Flip the global timerEnabled flag
execute if score global timerEnabled matches 1 run function boti_timer:display/disable
execute unless score global timerEnabled matches 1 run function boti_timer:display/enable
