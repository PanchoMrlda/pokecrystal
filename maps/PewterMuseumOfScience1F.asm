	const_def 2 ; object constants
	const PEWTERMUSEUM1F_RECEPTIONIST
  const ALREADY_PAID_MUSEUM_TICKET

PewterMuseumOfScience1F_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene ; SCENE_DEFAULT

	db 0 ; callbacks

.DummyScene:
  clearflag ALREADY_PAID_MUSEUM_TICKET
	end

PewterMuseumReceptionistScript1:
  checkflag ALREADY_PAID_MUSEUM_TICKET
  iftrue .AlreadyPaid
	turnobject PLAYER, RIGHT
	opentext
  writetext MuseumReceptionistWelcomeText
  buttonsound
	special PlaceMoneyTopRight
  yesorno
  iffalse .Refused
  checkmoney YOUR_MONEY, 50
	ifequal HAVE_LESS, .NotEnoughMoney
  takemoney YOUR_MONEY, 50
  setflag ALREADY_PAID_MUSEUM_TICKET
  writetext MuseumReceptionistTakeTimeText
  waitbutton
  closetext
	end

.NotEnoughMoney:
	writetext PewterMuseumNotEnoughMoneyText
	waitbutton

.Refused:
	writetext MuseumReceptionistRefusedText
	waitbutton
  closetext
	applymovement PLAYER, Movement_MuseumOfScienceTurnBack
  end

.AlreadyPaid:
  end

PewterMuseumReceptionistScript2:
  checkflag ALREADY_PAID_MUSEUM_TICKET
  iftrue .AlreadyPaid2
	turnobject PLAYER, RIGHT
	applymovement PLAYER, Movement_MuseumOfScienceTurnRight
  jump PewterMuseumReceptionistScript1

.AlreadyPaid2:
  end

PewterMuseumSageScript:
	jumptextfaceplayer PewterMuseumSageText

PewterMuseumProudScientistScript:
	jumptextfaceplayer PewterMuseumProudScientistText

PewterMuseumIgnoredScientistScript:
	jumptextfaceplayer PewterMuseumIgnoredScientistText

PewterMuseumAerodactylFossil:
  opentext
	writetext PewterMuseumAerodactylFossilText
  waitbutton
  closetext
  refreshscreen
	pokepic AERODACTYL
	waitbutton
	closepokepic
  closetext
  end

PewterMuseumKabutopsFossil:
	opentext
	writetext PewterMuseumKabutopsFossilText
  waitbutton
  closetext
  refreshscreen
	pokepic KABUTOPS
	waitbutton
	closepokepic
  closetext
  end

PewterMuseumOldAmberScript:
	jumptext PewterMuseumOldAmberText

Movement_MuseumOfScienceTurnBack:
	step DOWN
	turn_head UP
	step_end

Movement_MuseumOfScienceTurnRight:
  step RIGHT
  step_end

MuseumReceptionistWelcomeText:
	text "Welcome. It's ¥50"
	line "for a ticket."

	para "Would you like to"
	line "come in?"
	done

MuseumReceptionistRefusedText:
	text "Come again!"
	done

PewterMuseumNotEnoughMoneyText:
	text "You don't have"
	line "enough money."
	prompt

MuseumReceptionistTakeTimeText:
  text "Right, ¥50!"
	line "Thank you!"

	para "Take plenty of"
	line "time to look!"
	done

PewterMuseumSageText:
	text "That is one"
	line "magnificent"
	cont "fossil!"
	done

PewterMuseumProudScientistText:
	text "We are proud of 2"
	line "fossils of very"
	cont "rare, prehistoric"
	cont "#MON!"
	done

PewterMuseumIgnoredScientistText:
	text "Ssh! I think that"
	line "this chunk of"
	cont "AMBER contains"
	cont "#MON DNA!"

	para "It would be great"
	line "if #MON could"
	cont "be resurrected"
	cont "from it!"

	para "But, my colleagues"
	line "just ignore me!"

	para "So I have a favor"
	line "to ask!"

	para "Take this to a"
	line "#MON LAB and"
	cont "get it examined!"
	prompt

PewterMuseumAerodactylFossilText:
	text "AERODACTYL Fossil"
	line "A primitive and"
  cont "rare #MON."
	done

PewterMuseumKabutopsFossilText:
	text "KABUTOPS Fossil"
	line "A primitive and"
  cont "rare #MON."
	done

PewterMuseumOldAmberText:
	text "The AMBER is"
	line "clear and gold!"
	done

PewterMuseumOfScience1F_MapEvents:
	db 0, 0 ; filler

	; db 2 ; warp events
	; warp_event  9, 23, SAFARI_ZONE_FUCHSIA_GATE_BETA, 1
	; warp_event 10, 23, SAFARI_ZONE_FUCHSIA_GATE_BETA, 2
  db 5 ; warp events
	warp_event 10,  7, PEWTER_CITY, 6
	warp_event 11,  7, PEWTER_CITY, 6
	warp_event 16,  7, PEWTER_CITY, 7
	warp_event 17,  7, PEWTER_CITY, 7
	warp_event  7,  7, PEWTER_MUSEUM_OF_SCIENCE_2F, 1

	db 2 ; coord events
	coord_event 10,  4, SCENE_DEFAULT, PewterMuseumReceptionistScript1
	coord_event  9,  4, SCENE_DEFAULT, PewterMuseumReceptionistScript2

	db 2 ; bg events
	bg_event  2,  3, BGEVENT_READ, PewterMuseumAerodactylFossil
	bg_event  2,  6, BGEVENT_READ, PewterMuseumKabutopsFossil

	db 5 ; object events
	object_event  1,  4, SPRITE_SAGE, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterMuseumSageScript, -1
	object_event 12,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 16,  2, SPRITE_OLD_AMBER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseumOldAmberScript, -1
	object_event 15,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterMuseumIgnoredScientistScript, -1
	object_event 17,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterMuseumProudScientistScript, -1
