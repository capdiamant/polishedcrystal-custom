NewTownhall_MapScriptHeader:
    def_scene_scripts

    def_callbacks
    callback MAPCALLBACK_NEWMAP, NewTownhallFlyPoint

    def_warp_events
    warp_event 29, 11, NEW_BARK_TOWN, 6
    ; warp_event 13, 17, NEW_TH_KIRI, 1

    def_coord_events

    def_bg_events

    def_object_events
    object_event 33, 15, SPRITE_CAMPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NewTownhallHMScript, -1
    tmhmball_event 36, 14, HM_SURF, EVENT_GOT_HM03_SURF
    tmhmball_event 37, 14, HM_CUT, EVENT_GOT_HM01_CUT
    tmhmball_event 36, 15, HM_STRENGTH, EVENT_GOT_HM04_STRENGTH
    tmhmball_event 37, 15, HM_FLY, EVENT_GOT_HM02_FLY
    tmhmball_event 36, 16, HM_WHIRLPOOL, EVENT_GOT_HM05_WHIRLPOOL
    tmhmball_event 37, 16, HM_WATERFALL, EVENT_GOT_HM06_WATERFALL

NewTownhallFlyPoint:
    setflag ENGINE_FLYPOINT_NEW_TOWNHALL
    endcallback

NewTownhallHMScript:
    faceplayer
    opentext
    writetext Text_HMEnablerText
    yesorno
    iftruefwd .EnableHM
    closetext
    end
.EnableHM:
    checkflag ENGINE_FOGBADGE
    iftruefwd .RemoveBadge
    sjumpfwd .EnableBadge
.RemoveBadge:
    clearflag ENGINE_FOGBADGE
    clearflag ENGINE_HIVEBADGE
    clearflag ENGINE_PLAINBADGE
    clearflag ENGINE_STORMBADGE
    clearflag ENGINE_GLACIERBADGE
    clearflag ENGINE_RISINGBADGE
    jumpthisopenedtext
    text "HM removed!"
    done
.EnableBadge:
    setflag ENGINE_FOGBADGE
    setflag ENGINE_HIVEBADGE
    setflag ENGINE_PLAINBADGE
    setflag ENGINE_STORMBADGE
    setflag ENGINE_GLACIERBADGE
    setflag ENGINE_RISINGBADGE
    jumpthisopenedtext
    text "HM enabled!"
    done

Text_HMEnablerText:
    text "Toggle movement?"
    done