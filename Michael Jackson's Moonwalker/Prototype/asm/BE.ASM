MJ_SND_BE_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_BE_Voices
	smpsHeaderTempoSFX  $02
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, MJ_SND_BE_FM5,	$00, $08

; FM5 Data
MJ_SND_BE_FM5:
	dc.b	smpsNoAttack
	smpsModSet          $00, $01, $E4, $FF
	dc.b	nFs2, $10
	smpsStop

; Song seems to not use any FM voices
MJ_SND_BE_Voices:
