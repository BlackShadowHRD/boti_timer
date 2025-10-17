# boti_timer:tick — runs each second

# Count up
execute if score global gt_running matches 1.. if score global gt_mode matches 0 run scoreboard players add global gt_time 1

# Count down (stop at 0)
execute if score global gt_running matches 1.. if score global gt_mode matches 1 if score global gt_time matches 1.. run scoreboard players remove global gt_time 1
execute if score global gt_mode matches 1 if score global gt_time matches 0 run scoreboard players set global gt_running 0
execute if score global gt_mode matches 1 if score global gt_time matches 0 run title @a actionbar {"text":"Timer finished","color":"red"}

# Derive H M S
scoreboard players operation h gt_h = global gt_time
scoreboard players operation m gt_m = global gt_time
scoreboard players operation s gt_s = global gt_time

scoreboard players operation h gt_h /= c3600 gt_const
# clamp to 99 hours for two-digit display
execute if score h gt_h matches 100.. run scoreboard players set h gt_h 99

scoreboard players operation m gt_m %= c3600 gt_const
scoreboard players operation m gt_m /= c60 gt_const

scoreboard players operation s gt_s %= c60 gt_const

# Build digits
scoreboard players operation ht gt_ht = h gt_h
scoreboard players operation ho gt_ho = h gt_h
scoreboard players operation ht gt_ht /= c10 gt_const
scoreboard players operation ho gt_ho %= c10 gt_const

scoreboard players operation mt gt_mt = m gt_m
scoreboard players operation mo gt_mo = m gt_m
scoreboard players operation mt gt_mt /= c10 gt_const
scoreboard players operation mo gt_mo %= c10 gt_const

scoreboard players operation st gt_st = s gt_s
scoreboard players operation so gt_so = s gt_s
scoreboard players operation st gt_st /= c10 gt_const
scoreboard players operation so gt_so %= c10 gt_const

# Show to all players
function boti_timer:display/update_all_enabled

# Reschedule
schedule function boti_timer:tick 1s
