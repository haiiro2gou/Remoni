#> core:load_once
#
# 初回ロード処理
#
# @within function core:load

#> version設定
    data modify storage global GameVersion set value "v0.0.0-alpha"

#> forceload chunks
# origin
    execute in overworld run forceload add -1 -1 0 0
    execute in the_nether run forceload add -1 -1 0 0
    execute in the_end run forceload add -1 -1 0 0

#> gamerule設定
    function core:define_gamerule

#> debug用ストレージ
# @public
    #declare tag InDev
    #declare storage global
    data modify storage global Prefix.DEBUG set value "§3DEBUG >> §r"
    data modify storage global Prefix.SUCCESS set value "§aSUCCESS >> §r"
    data modify storage global Prefix.FAILED set value "§cFAILED >> §r"
    data modify storage global Prefix.ERROR set value "§cERROR >> §r"
    data modify storage global Prefix.CRIT set value "§4CRITICAL >> §r"

#> リセット
    kill 0-0-0-0-0

#> 管理用マーカー設定
# @within *
#   api:**
#   core:**
#   entity:**
#   lib:**
    #alias commonEntity 0-0-0-0-0
    summon marker 0.0 0.0 0.0 {UUID:[I;0,0,0,0]}

#> 当たり判定無効team
# @public
    team add NoCollision
    team modify NoCollision collisionRule never

#> scoreboard類
    #> 一時変数スコア
    # @public
        scoreboard objectives add Temporary dummy
    #> 常時変数スコア
    # @public
        scoreboard objectives add Global dummy
    # 初期乱数生成
        #> private
        # @private
            #declare tag Random
            summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["Random"]}
            execute store result score $Random.Base Global run data get entity @e[tag=Random,limit=1] UUID[1]
            execute store result score $Random.Carry Global run data get entity @e[tag=Random,limit=1] UUID[3]
            kill @e[tag=Random,limit=1]
    #> 定数スコア
    # @public
        scoreboard objectives add Const dummy
        function core:define_const

    #> UUID
    # @public
        scoreboard objectives add EntityUUID dummy

    #> library用
    # @public
        scoreboard objectives add Lib dummy
    
    #> library - private
    # @within * lib:**
        scoreboard objectives add ScoreToHPFluc dummy

    #> motionチェック
        scoreboard objectives add PlayerStopTime dummy