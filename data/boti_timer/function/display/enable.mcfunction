# Enable the global timer display
scoreboard players set global timerEnabled 1

# optional: clears any stale actionbar right away
title @a actionbar {"text":""}
tellraw @a [{"text":"[timer] Display enabled","color":"green"}]
