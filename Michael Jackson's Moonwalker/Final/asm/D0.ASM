MJ_SND_D0_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_D0_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cPSG3, MJ_SND_D0_PSG3,	$00, $01

; PSG3 Data
MJ_SND_D0_PSG3:
	smpsPSGform         $E7
	smpsModSet          $01, $01, $03, $08

MJ_SND_D0_Loop00:
	dc.b	nD3, $01
	dc.b	$FB, 
	dc.b	$01
	smpsLoop            $00, $1A, MJ_SND_D0_Loop00

MJ_SND_D0_Jump00:
	dc.b	$14
	smpsJump            MJ_SND_D0_Jump00

; Song seems to not use any FM voices
MJ_SND_D0_Voices:
