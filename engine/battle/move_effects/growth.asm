BattleCommand_Growth:
; growth

	ld de, wBattleMonType1
	ld bc, wPlayerStatLevels
	ldh a, [hBattleTurn]
	and a
	jr z, .go
	ld de, wEnemyMonType1
	ld bc, wEnemyStatLevels

.go

; If no stats can be increased, don't.

; Attack
	ld a, [bc]
	cp MAX_STAT_LEVEL
	jr c, .raise

; Special Attack
	inc bc
	inc bc
	inc bc
	ld a, [bc]
	cp MAX_STAT_LEVEL
	jr nc, .cantraise

.raise

; Raise Attack and Defense, and lower Spee
; Raise them twice if there is sunlight

	ld a, [wBattleWeather]
	cp WEATHER_SUN
	jr z, .sun
	call AnimateCurrentMove
	call BattleCommand_AttackUp
	call BattleCommand_StatUpMessage
	call ResetMiss
	call BattleCommand_SpecialAttackUp
	jp BattleCommand_StatUpMessage
.sun
  call BattleCommand_AttackUp2
	call BattleCommand_StatUpMessage
	call ResetMiss
	call BattleCommand_SpecialAttackUp2
	jp BattleCommand_StatUpMessage

.cantraise

; Can't raise either stat.

	ld b, ABILITY + 1
	call GetStatName
	call AnimateFailedMove
	ld hl, WontRiseAnymoreText
	jp StdBattleTextBox
