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

NewTownhallFlyPoint:
    setflag ENGINE_FLYPOINT_NEW_TOWNHALL
    endcallback

NewTownhallHMScript:
    jumptextfaceplayer Text_HMEnabler
    end

Text_HMEnabler:
    text "Hello, <PLAYER>."
    para "This is to test"
    line "the #mon text!"
    done