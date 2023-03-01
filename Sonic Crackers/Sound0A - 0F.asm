Sound0A_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Sound0A_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, Sound0A_FM5,	$00, $00

; FM5 Data
Sound0A_FM5:
	smpsStop

; Song seems to not use any FM voices
Sound0A_Voices:
