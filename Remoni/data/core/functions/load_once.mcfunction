#> core:load_once
#
# 初回ロード処理
#
# @within function core:load

#> version設定
    data modify storage global DataVersion set value "v0.0.0-alpha"

#> forceload設定

#> gamerule設定
    function core:define_gamerule

#> alias登録
# @public

#> デバッグ用storage設定
# @public
    #declare tag InDev
    #declare storage global
    data modify storage global Prefix.DEBUG set value "§3DEBUG >> §r"
    data modify storage global Prefix.SUCCESS set value "§aSUCCESS >> §r"
    data modify storage global Prefix.FAILED set value "§cFAILED >> §r"
    data modify storage global Prefix.ERROR set value "§cERROR >> §r"
    data modify storage global Prefix.CRIT set value "§4CRITICAL >> §r"

#> リセット

#> 汎用エンティティの生成
    summon marker 0.0 0.0 0.0 {UUID:[I;0,0,0,0]}

#> 汎用Teamの作成
# @public
    team add NoCollision
    team modify NoCollision collisionRule never

#> スコアボード類の設定
    #> 1tickスコアボード
    # @global
        scoreboard objectives add Temporary dummy

    #> 共有スコアボード
    # @global
        scoreboard objectives add Global dummy

    #> 初期乱数の生成
    # @private
        #declare tag Random
        summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["Random"]}
        execute store result score $Random.Base Global run data get entity @e[tag=Random,limit=1] UUID[1]
        execute store result score $Random.Carry Global run data get entity @e[tag=Random,limit=1] UUID[3]
        kill @e[tag=Random,limit=1]

    #> 定数用スコアボード
    # @global
        scoreboard objectives add Const dummy
        function core:define_const

    #> IDの生成
        scoreboard objectives add UserID dummy
        scoreboard objectives add MobUUID dummy

    #> Debug用スコアボード
        scoreboard objectives add Debug dummy

    #> イベントハンドラ用スコアボード
    # @within function
    #   core:load_once
    #   core:handler/*
    #   core:tick/**
        scoreboard objectives add FirstJoinEvent custom:play_time
        scoreboard objectives add RejoinEvent custom:leave_game
        scoreboard objectives add AttackEvent custom:damage_dealt_absorbed
        scoreboard objectives add DeathEvent deathCount
        scoreboard objectives add RespawnEvent custom:time_since_death
        scoreboard objectives add ClickCarrotEvent used:carrot_on_a_stick
        scoreboard objectives add Sneak custom:sneak_time
        scoreboard objectives add Elytra custom:aviate_one_cm
        scoreboard objectives add DropEvent custom:drop

    #> Library用スコアボード
        scoreboard objectives add Lib dummy

    #> Library用スコアボード
    # @within * lib:**
        scoreboard objectives add ScoreToHPFluc dummy

    #> 攻撃検知スコアボード
    # @within function
    #   core:tick/
        scoreboard objectives add AttackingEntity dummy
        scoreboard objectives add AttackedEntity dummy
        