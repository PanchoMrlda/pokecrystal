PewterMuseumOfScience2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

PewterMuseumOfScience2FSign1:
	jumptext PewterMuseumOfScience2FSign1Text

PewterMuseumOfScience2FSign1Text:
	text "ROUTE 42"

	para "ECRUTEAK CITY -"
	line "MAHOGANY TOWN"
	done

PewterMuseumOfScience2F_MapEvents:
	db 0, 0 ; filler
  
  db 1 ; warp events
	warp_event  7,  7, PEWTER_MUSEUM_OF_SCIENCE_1F, 5

	db 0 ; coord events

	db 1 ; bg events
	bg_event  2,  5, BGEVENT_READ, PewterMuseumOfScience2FSign1

	db 0 ; object events
