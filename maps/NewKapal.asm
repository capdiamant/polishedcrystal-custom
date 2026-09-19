NewKapal_MapScriptHeader:
    def_scene_scripts
    scene_script NewKapalPanUpScene, SCENE_KAPAL_PAN_UP
    scene_const SCENE_KAPAL_NOOP

    def_callbacks

    def_warp_events
    warp_event 5, 5, NEW_KAPAL_KELUAR, 1

    def_coord_events
    ; coord_event 21, 14, SCENE_KAPAL_NOOP, NewKapalPanUpScript

    def_bg_events

    def_object_events
    object_event -3, -3, SPRITE_MOM, SPRITEMOVEDATA_PLACEHOLDER_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, DoNothingScript, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1

    object_const_def
    const NEWKAPALSUB_PLAYER

NewKapalPanUpScene:
    sdefer .Script
    end
.Script:
    applyonemovement PLAYER, turn_head_up
    pause 10
    callasm .PreparePlayerSubstitute
    appear NEWKAPALSUB_PLAYER
    applymovement PLAYER, NewKapalPanUpMovementData
    pause 60
    applymovement PLAYER, NewKapalPanDownMovementData
    applyonemovement PLAYER, turn_head_up
    setscene SCENE_KAPAL_NOOP
    disappear NEWKAPALSUB_PLAYER
    opentext
    writetext NewKapalMoveOnText
    waitbutton
    closetext
    end
.PreparePlayerSubstitute:
	farcall GetPlayerSpriteInA
	farcall LoadSpriteAsMapObject1
    ld a, [wXCoord]
	ld [wSavedXCoord], a
	add 4
	ld d, a
	ld a, [wYCoord]
	add 4
	ld e, a
	ld b, NEWKAPALSUB_PLAYER
	farjp CopyDECoordsToMapObject

NewKapalPanUpMovementData:
    hide_object
    slow_step_up
    slow_step_up
    slow_step_up
    step_end

NewKapalPanDownMovementData:
    slow_step_down
    slow_step_down
    slow_step_down
    show_object
    step_end

NewKapalMoveOnText:
    text "Gotta move on."
    done