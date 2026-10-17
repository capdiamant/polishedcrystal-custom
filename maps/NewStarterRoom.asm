NewStarterRoom_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
    warp_event  7, 15, NEW_SIMPANG, 2

    def_coord_events

    def_bg_events

    def_object_events
    object_event  6,  7, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, BELLOSSOM, -1, PAL_MON_GREEN, OBJECTTYPE_SCRIPT, NO_FORM, BellossomChooseScript, -1
    object_event  7,  6, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, GOLEM, -1, PAL_MON_BROWN, OBJECTTYPE_SCRIPT, NO_FORM, GolemChooseScript, -1
    object_event  8,  7, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, OMASTAR, -1, PAL_MON_BLUE, OBJECTTYPE_SCRIPT, NO_FORM, OmastarChooseScript, -1
    object_event  7,  7, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BagScript, -1

    ; Code explanation: 0
    ; https://github.com/capdiamant/polishedcrystal-custom/wiki/Object-Event

    object_const_def


BellossomChooseScript:
    reanchormap
    pokepic BELLOSSOM
    cry BELLOSSOM
    waitbutton
    closepokepic
    end

GolemChooseScript:
    reanchormap
    pokepic GOLEM
    cry GOLEM
    waitbutton
    closepokepic
    end

OmastarChooseScript:
    reanchormap
    pokepic OMASTAR
    cry OMASTAR
    waitbutton
    closepokepic
    end

BagScript:
    showtext BagBeforeStarterText
    end

BagBeforeStarterText:
    text "Your partner is"
    line "protecting your"
    cont "bag from other"
    cont "#mon."
    done