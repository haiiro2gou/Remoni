#> entity:node/asset/common/register/define_element
# @within function entity:node/asset/common/register/

#> private
# @private
    #declare score_holder $Amount.Base
    #declare score_holder $Amount.None
    #declare score_holder $Amount.Fire
    #declare score_holder $Amount.Water
    #declare score_holder $Amount.Wind
    #declare score_holder $Amount.Earth
    #declare score_holder $Amount.Light
    #declare score_holder $Amount.Dark
    #declare score_holder $Element.None
    #declare score_holder $Element.Fire
    #declare score_holder $Element.Water
    #declare score_holder $Element.Wind
    #declare score_holder $Element.Earth
    #declare score_holder $Element.Light
    #declare score_holder $Element.Dark

# 属性取得
    execute store result score $Element.None Temporary run data get storage entity:node Element.None 100.0
    execute store result score $Element.Fire Temporary run data get storage entity:node Element.Fire 100.0
    execute store result score $Element.Water Temporary run data get storage entity:node Element.Water 100.0
    execute store result score $Element.Wind Temporary run data get storage entity:node Element.Wind 100.0
    execute store result score $Element.Earth Temporary run data get storage entity:node Element.Earth 100.0
    execute store result score $Element.Light Temporary run data get storage entity:node Element.Light 100.0
    execute store result score $Element.Dark Temporary run data get storage entity:node Element.Dark 100.0

# 形質決定
    execute store result score $Amount.Base Temporary run data get storage entity:node Amount 10.0

# None
    scoreboard players operation $Amount.None Temporary = $Amount.Base Temporary
    scoreboard players operation $Amount.None Temporary *= $Element.None Temporary
    scoreboard players operation $Amount.None Temporary /= $10000 Const
    execute store result storage entity:node Amount.None double 0.001 run scoreboard players get $Amount.None Temporary

# Fire
    scoreboard players operation $Amount.Fire Temporary = $Amount.Base Temporary
    scoreboard players operation $Amount.Fire Temporary *= $Element.Fire Temporary
    scoreboard players operation $Amount.Fire Temporary /= $10000 Const
    execute store result storage entity:node Amount.Fire double 0.001 run scoreboard players get $Amount.Fire Temporary

# Water
    scoreboard players operation $Amount.Water Temporary = $Amount.Base Temporary
    scoreboard players operation $Amount.Water Temporary *= $Element.Water Temporary
    scoreboard players operation $Amount.Water Temporary /= $10000 Const
    execute store result storage entity:node Amount.Water double 0.001 run scoreboard players get $Amount.Water Temporary

# Wind
    scoreboard players operation $Amount.Wind Temporary = $Amount.Base Temporary
    scoreboard players operation $Amount.Wind Temporary *= $Element.Wind Temporary
    scoreboard players operation $Amount.Wind Temporary /= $10000 Const
    execute store result storage entity:node Amount.Wind double 0.001 run scoreboard players get $Amount.Wind Temporary

# Earth
    scoreboard players operation $Amount.Earth Temporary = $Amount.Base Temporary
    scoreboard players operation $Amount.Earth Temporary *= $Element.Earth Temporary
    scoreboard players operation $Amount.Earth Temporary /= $10000 Const
    execute store result storage entity:node Amount.Earth double 0.001 run scoreboard players get $Amount.Earth Temporary

# Light
    scoreboard players operation $Amount.Light Temporary = $Amount.Base Temporary
    scoreboard players operation $Amount.Light Temporary *= $Element.Light Temporary
    scoreboard players operation $Amount.Light Temporary /= $10000 Const
    execute store result storage entity:node Amount.Light double 0.001 run scoreboard players get $Amount.Light Temporary

# Dark
    scoreboard players operation $Amount.Dark Temporary = $Amount.Base Temporary
    scoreboard players operation $Amount.Dark Temporary *= $Element.Dark Temporary
    scoreboard players operation $Amount.Dark Temporary /= $10000 Const
    execute store result storage entity:node Amount.Dark double 0.001 run scoreboard players get $Amount.Dark Temporary

# リセット
    scoreboard players reset $Amount.Base Temporary
    scoreboard players reset $Amount.None Temporary
    scoreboard players reset $Amount.Fire Temporary
    scoreboard players reset $Amount.Water Temporary
    scoreboard players reset $Amount.Wind Temporary
    scoreboard players reset $Amount.Earth Temporary
    scoreboard players reset $Amount.Light Temporary
    scoreboard players reset $Amount.Dark Temporary
    scoreboard players reset $Element.None Temporary
    scoreboard players reset $Element.Fire Temporary
    scoreboard players reset $Element.Water Temporary
    scoreboard players reset $Element.Wind Temporary
    scoreboard players reset $Element.Earth Temporary
    scoreboard players reset $Element.Light Temporary
    scoreboard players reset $Element.Dark Temporary