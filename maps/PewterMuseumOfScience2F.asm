PewterMuseumOfScience2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

PewterMuseumYoungsterScript:
	jumptextfaceplayer PewterMuseumYoungsterText

PewterMuseumGrampsScript:
	jumptextfaceplayer PewterMuseumGrampsText

PewterMuseumScientistScript:
	jumptextfaceplayer PewterMuseumScientistText

PewterMuseumLassScript:
  faceplayer
	opentext
  writetext PewterMuseumLassText
  waitbutton
  closetext
  turnobject LAST_TALKED, RIGHT
  end

PewterMuseumFisherScript:
	jumptextfaceplayer PewterMuseumFisherText

PewterMuseumMoonStone:
	jumptextfaceplayer PewterMuseumMoonStoneText

PewterMuseumSpaceShuttle:
	jumptextfaceplayer PewterMuseumSpaceShuttleText

PewterMuseumYoungsterText:
	text "MOON STONE?"

	para "What's so special"
	line "about it?"
	done

PewterMuseumGrampsText:
	text "July 20, 1969!"

	para "The 1st lunar"
	line "landing!"

	para "I bought a color"
	line "TV to watch it!"
	done

PewterMuseumScientistText:
	text "We have a space"
	line "exhibit now."
	done

PewterMuseumLassText:
	text "I want a PIKACHU!"
	line "It's so cute!"

	para "I asked my Daddy"
	line "to catch me one!"
	done

PewterMuseumFisherText:
	text "Yeah, a PIKACHU"
	line "soon, I promise!"
	done

PewterMuseumSpaceShuttleText:
	text "SPACE SHUTTLE"
	line "COLUMBIA"
	done

PewterMuseumMoonStoneText:
	text "Meteorite that"
	line "fell on MT.MOON."
	cont "(MOON STONE?)"
	done

PewterMuseumOfScience2F_MapEvents:
	db 0, 0 ; filler
  
  db 1 ; warp events
	warp_event  7,  7, PEWTER_MUSEUM_OF_SCIENCE_1F, 5

	db 0 ; coord events

	db 2 ; bg events
	bg_event  2,  5, BGEVENT_READ, PewterMuseumMoonStone
	bg_event 11,  2, BGEVENT_READ, PewterMuseumSpaceShuttle

	db 5 ; object events
	object_event  1,  7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterMuseumYoungsterScript, -1
	object_event  0,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseumGrampsScript, -1
	object_event  7,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterMuseumScientistScript, -1
	object_event 11,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterMuseumLassScript, -1
	object_event 12,  5, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PewterMuseumFisherScript, -1
