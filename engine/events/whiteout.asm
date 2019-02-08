Script_BattleWhiteout::
	callasm BattleBGMap
	jump Script_Whiteout

Script_OverworldWhiteout::
	refreshscreen
	callasm OverworldBGMap

Script_Whiteout:
	writetext .WhitedOutText
	waitbutton
	special FadeOutPalettes
	pause 40
	special HealParty
	checkflag ENGINE_BUG_CONTEST_TIMER
	iftrue .bug_contest
	callasm HalveMoney
	callasm GetWhiteoutSpawn
	farscall Script_AbortBugContest
	special WarpToSpawnPoint
	newloadmap MAPSETUP_WARP
	endall

.bug_contest
	jumpstd bugcontestresultswarp

.WhitedOutText:
	; is out of useable #MON!  whited out!
	text_jump UnknownText_0x1c0a4e
	db "@"

OverworldBGMap:
	call ClearPalettes
	call ClearScreen
	call WaitBGMap2
	call HideSprites
	call RotateThreePalettesLeft
	ret

BattleBGMap:
	ld b, SCGB_BATTLE_GRAYSCALE
	call GetSGBLayout
	call SetPalettes
	ret

HalveMoney:
	farcall StubbedTrainerRankings_WhiteOuts

  ; don't loose money if is not a trainer battle
  ld a, [wBattleMode]
	dec a
  ret z

  ld bc, 255
  ld de, wMoney
	ld hl, wBadges
  ld a, [hl]
  cp a, 8
  jr z, .EightBadges
	cp a, 7
  jr z, .SevenBadges
	cp a, 6
  jr z, .SixBadges
	cp a, 5
  jr z, .FiveBadges
	cp a, 4
  jr z, .FourBadges
	cp a, 3
  jr z, .ThreeBadges
	cp a, 2
  jr z, .TwoBadges
	cp a, 1
  jr z, .OneBadge
	cp a, 0
  jr z, .NoBadges

.EightBadges
	farcall TakeMoney
  farcall TakeMoney
  farcall TakeMoney
  farcall TakeMoney
.SevenBadges
	farcall TakeMoney
  farcall TakeMoney
  farcall TakeMoney
.SixBadges
	farcall TakeMoney
  farcall TakeMoney
  farcall TakeMoney
.FiveBadges
	farcall TakeMoney
  farcall TakeMoney
  farcall TakeMoney
.FourBadges
	farcall TakeMoney
  farcall TakeMoney
.ThreeBadges
	farcall TakeMoney
  farcall TakeMoney
.TwoBadges
	farcall TakeMoney
  farcall TakeMoney
.OneBadge
	farcall TakeMoney
  farcall TakeMoney
.NoBadges
	farcall TakeMoney
  ret

GetWhiteoutSpawn:
	ld a, [wLastSpawnMapGroup]
	ld d, a
	ld a, [wLastSpawnMapNumber]
	ld e, a
	farcall IsSpawnPoint
	ld a, c
	jr c, .yes
	xor a ; SPAWN_HOME

.yes
	ld [wDefaultSpawnpoint], a
	ret
