MJ_SND_B0_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_B0_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, MJ_SND_B0_FM5,	$00, $00

; FM5 Data
MJ_SND_B0_FM5:
	smpsStop

; Song seems to not use any FM voices
MJ_SND_B0_Voices:
