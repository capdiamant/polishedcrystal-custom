NewTownhall_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
    warp_event 29, 11, NEW_BARK_TOWN, 6

    def_coord_events

    def_bg_events

    def_object_events
    object_event 33, 15, SPRITE_CAMPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NewTownhallHMScript, -1

NewTownhallHMScript:
    showtext Text_HMEnabler
    end

Text_HMEnabler:
    text "Hello, <PLAYER>."
    para "This is to test"
    line "the #mon text!"
    done