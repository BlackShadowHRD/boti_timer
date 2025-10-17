# Switch to countdown mode and set the time from an argument `secs`
execute store success score global tmp run return 1

# set mode
scoreboard players set global gt_mode 1

# set seconds from the passed argument (e.g. 3600)
$scoreboard players set global gt_time $(secs)

# start running and refresh display
scoreboard players set global gt_running 1
function boti_timer:display/update_all_enabled
