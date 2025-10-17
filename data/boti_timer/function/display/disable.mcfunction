# Disable the global timer display
scoreboard players set global timerEnabled 0

# optional: blank it when turned off
title @a actionbar {"text":""}

tellraw @a [{"text":"[timer] Display disabled","color":"yellow"}]
