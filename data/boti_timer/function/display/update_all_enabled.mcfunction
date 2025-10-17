# Route by color value stored on 'global'
execute if score global gt_color matches 0 run function boti_timer:display/color/gold
execute if score global gt_color matches 1 run function boti_timer:display/color/yellow
execute if score global gt_color matches 2 run function boti_timer:display/color/light_purple
execute if score global gt_color matches 3 run function boti_timer:display/color/green
execute if score global gt_color matches 4 run function boti_timer:display/color/aqua
execute if score global gt_color matches 5 run function boti_timer:display/color/red
execute if score global gt_color matches 6 run function boti_timer:display/color/gray
