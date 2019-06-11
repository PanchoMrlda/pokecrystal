	const_def 2 ; object constants
	const FUCHSIACITY_YOUNGSTER
	const FUCHSIACITY_POKEFAN_M
	const FUCHSIACITY_TEACHER
	const FUCHSIACITY_FRUIT_TREE

FuchsiaCity_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_FUCHSIA
	return

FuchsiaCityYoungster:
	jumptextfaceplayer FuchsiaCityYoungsterText

FuchsiaCityPokefanM:
	jumptextfaceplayer FuchsiaCityPokefanMText

FuchsiaCityTeacher:
	jumptextfaceplayer FuchsiaCityTeacherText

FuchsiaCitySign:
	jumptext FuchsiaCitySignText

FuchsiaGymSign:
	jumptext FuchsiaGymSignText

SafariZoneOfficeSign:
	jumptext SafariZoneOfficeSignText

WardensHomeSign:
	jumptext WardensHomeSignText

SafariZoneClosedSign:
	jumptext SafariZoneClosedSignText

NoLitteringSign:
	jumptext NoLitteringSignText

FuchsiaCityPokecenterSign:
	jumpstd pokecentersign

FuchsiaCityMartSign:
	jumpstd martsign

FuchsiaCityFruitTree:
	fruittree FRUITTREE_FUCHSIA_CITY

FuchsiaCityYoungsterVoltorb:
	jumptextfaceplayer FuchsiaCityText4

FuchsiaCityMon:
	jumptextfaceplayer FuchsiaCityText_19b2a

FuchsiaCitySignText11:
  jumptext FuchsiaCityText12

FuchsiaCitySignText12:
  jumptext FuchsiaCityText12

FuchsiaCitySignText13:
  jumptext FuchsiaCityText13

FuchsiaCityMartSignText:
  jumpstd martsign

FuchsiaCityPokeCenterSignText:
  jumpstd pokecentersign

FuchsiaCitySignText16:
  jumptext FuchsiaCityText16

FuchsiaCitySignText17:
  jumptext FuchsiaCityText17

FuchsiaCitySignText18:
  jumptext FuchsiaCityText18

FuchsiaCitySignText19:
  jumptext FuchsiaCityText19

FuchsiaCitySignText20:
  jumptext FuchsiaCityText20

FuchsiaCitySignText21:
  jumptext FuchsiaCityText21

FuchsiaCitySignText22:
  jumptext FuchsiaCityText22

FuchsiaCitySignText23:
  jumptext FuchsiaCityText23

FuchsiaCitySignText24:
  opentext
	writetext FuchsiaCityText24
  waitbutton
  closetext
  refreshscreen
	pokepic OMANYTE
	cry OMANYTE
	waitbutton
	closepokepic
  closetext
  end

FuchsiaCityYoungsterText:
	text "One of the ELITE"
	line "FOUR used to be"

	para "the LEADER of"
	line "FUCHSIA's GYM."
	done

FuchsiaCityPokefanMText:
	text "KOGA's daughter"
	line "succeeded him as"

	para "the GYM LEADER"
	line "after he joined"
	cont "the ELITE FOUR."
	done

FuchsiaCityTeacherText:
	text "The SAFARI ZONE is"
	line "closed… It's sad,"

	para "considering it's"
	line "FUCHSIA's main"
	cont "attraction."
	done

FuchsiaCitySignText:
	text "FUCHSIA CITY"

	para "Behold! It's"
	line "Passion Pink!"
	done

FuchsiaGymSignText:
	text "FUCHSIA CITY"
	line "#MON GYM"
	cont "LEADER: JANINE"

	para "The Poisonous"
	line "Ninja Master"
	done

SafariZoneOfficeSignText:
	text "There's a notice"
	line "here…"

	para "SAFARI ZONE OFFICE"
	line "is closed until"
	cont "further notice."
	done

WardensHomeSignText:
	text "SAFARI ZONE"
	line "WARDEN'S HOME"
	done

SafariZoneClosedSignText:
	text "The WARDEN is"
	line "traveling abroad."

	para "Therefore, the"
	line "SAFARI ZONE is"
	cont "closed."
	done

NoLitteringSignText:
	text "No littering."

	para "Please take your"
	line "waste with you."
	done

FuchsiaCityText1:
	text "Did you try the"
	line "SAFARI GAME? Some"
	cont "#MON can only"
	cont "be caught there."
	done

FuchsiaCityText2:
	text "SAFARI ZONE has a"
	line "zoo in front of"
	cont "the entrance."

	para "Out back is the"
	line "SAFARI GAME for"
	cont "catching #MON."
	done

FuchsiaCityText3:
	text "ERIK: Where's"
	line "SARA? I said I'd"
	cont "meet her here."
	done

FuchsiaCityText4:
	text "That item ball in"
	line "there is really a"
	cont "#MON."
	done

FuchsiaCityText5:
	text "!"
	done

FuchsiaCityText12:
	text "FUCHSIA CITY"
	line "Behold! It's"
	cont "Passion Pink!"
	done

FuchsiaCityText13:
	text "SAFARI GAME"
	line "#MON-U-CATCH!"
	done

FuchsiaCityText16:
	text "SAFARI ZONE"
	line "WARDEN's HOME"
	done

FuchsiaCityText17:
	text "#MON PARADISE"
	line "SAFARI ZONE"
	done

FuchsiaCityText18:
	text "FUCHSIA CITY"
	line "#MON GYM"
	cont "LEADER: KOGA"

	para "The Poisonous"
	line "Ninja Master"
	done

FuchsiaCityText19:
; FuchsiaCityChanseyText:
	text "Name: CHANSEY"

	para "Catching one is"
	line "all up to chance."
	prompt

FuchsiaCityText20:
; FuchsiaCityVoltorbText:
	text "Name: VOLTORB"

	para "The very image of"
	line "a # BALL."
	prompt

FuchsiaCityText21:
; FuchsiaCityKangaskhanText:
	text "Name: KANGASKHAN"

	para "A maternal #MON"
	line "that raises its"
	cont "young in a pouch"
	cont "on its belly."
	prompt

FuchsiaCityText22:
; FuchsiaCitySlowpokeText:
	text "Name: SLOWKING"

	para "Friendly and very"
	line "slow moving."
	prompt

FuchsiaCityText23:
; FuchsiaCityLaprasText:
	text "Name: LAPRAS"

	para "A.K.A. the king"
	line "of the seas."
	prompt

FuchsiaCityText24:
; FuchsiaCityOmanyteText:
	text "Name: OMANYTE"

	para "A #MON that"
	line "was resurrected"
	cont "from a fossil."
	prompt

FuchsiaCityKabutoText:
	text "Name: KABUTO"

	para "A #MON that"
	line "was resurrected"
	cont "from a fossil."
	prompt

FuchsiaCityText_19b2a:
	text "..."
	done

FuchsiaCity_MapEvents:
	db 0, 0 ; filler

	db 11 ; warp events
	warp_event  5, 13, FUCHSIA_MART, 2
	warp_event 22, 13, SAFARI_ZONE_MAIN_OFFICE, 1
	warp_event  8, 27, FUCHSIA_GYM, 1
	warp_event 11, 27, BILLS_BROTHERS_HOUSE, 1
	warp_event 19, 27, FUCHSIA_POKECENTER_1F, 1
	warp_event 27, 27, SAFARI_ZONE_WARDENS_HOME, 1
	warp_event 18,  3, SAFARI_ZONE_FUCHSIA_GATE_BETA, 3 ; inaccessible
	warp_event 37, 22, ROUTE_15_FUCHSIA_GATE, 1
	warp_event 37, 23, ROUTE_15_FUCHSIA_GATE, 2
	warp_event  7, 35, ROUTE_19_FUCHSIA_GATE, 1
	warp_event  8, 35, ROUTE_19_FUCHSIA_GATE, 2

	db 0 ; coord events

	; db 8 ; bg events
	; bg_event 21, 15, BGEVENT_READ, FuchsiaCitySign
	; bg_event  5, 29, BGEVENT_READ, FuchsiaGymSign
	; bg_event 25, 15, BGEVENT_READ, SafariZoneOfficeSign
	; bg_event 27, 29, BGEVENT_READ, WardensHomeSign
	; bg_event 17,  5, BGEVENT_READ, SafariZoneClosedSign
	; bg_event 13, 15, BGEVENT_READ, NoLitteringSign
	; bg_event 20, 27, BGEVENT_READ, FuchsiaCityPokecenterSign
	; bg_event  6, 13, BGEVENT_READ, FuchsiaCityMartSign

	db 14 ; bg events
	bg_event 15, 23, BGEVENT_READ, FuchsiaCitySignText11
	bg_event 25, 15, BGEVENT_READ, FuchsiaCitySignText12
	bg_event 17,  5, BGEVENT_READ, FuchsiaCitySignText13
	bg_event  6, 13, BGEVENT_READ, FuchsiaCityMartSignText
	bg_event 20, 27, BGEVENT_READ, FuchsiaCityPokeCenterSignText
	bg_event 27, 29, BGEVENT_READ, FuchsiaCitySignText16
	bg_event 21, 15, BGEVENT_READ, FuchsiaCitySignText17
	bg_event  5, 29, BGEVENT_READ, FuchsiaCitySignText18
	bg_event 33,  7, BGEVENT_READ, FuchsiaCitySignText19
	bg_event 27,  7, BGEVENT_READ, FuchsiaCitySignText20
	bg_event 13,  7, BGEVENT_READ, FuchsiaCitySignText21
	bg_event 31, 13, BGEVENT_READ, FuchsiaCitySignText22
	bg_event 13, 15, BGEVENT_READ, FuchsiaCitySignText23
	bg_event  7,  7, BGEVENT_READ, FuchsiaCitySignText24

	db 11 ; object events
	object_event 23, 18, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FuchsiaCityYoungster, -1
	object_event 13,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FuchsiaCityPokefanM, -1
	object_event 16, 14, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FuchsiaCityTeacher, -1
	object_event  8,  1, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCityFruitTree, -1
	object_event  6,  5, SPRITE_OMANYTE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCityMon, -1
	object_event  8, 17, SPRITE_BIG_LAPRAS, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCityMon, -1
	object_event 30, 12, SPRITE_SLOWKING, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCityMon, -1
	object_event 12,  5, SPRITE_KANGASKHAN, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCityMon, -1
	object_event 25,  6, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCityMon, -1
	object_event 31,  5, SPRITE_CHANSEY, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCityMon, -1
	object_event 24,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FuchsiaCityYoungsterVoltorb, -1
