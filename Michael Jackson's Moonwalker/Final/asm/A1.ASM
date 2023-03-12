MJ_SND_A1_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_A1_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cPSG1, MJ_SND_A1_PSG1,	$E8, $02
	smpsHeaderSFXChannel cPSG2, MJ_SND_A1_PSG2,	$E8, $02

; PSG2 Data
MJ_SND_A1_PSG2:
	smpsAlterNote       $01

; PSG1 Data
MJ_SND_A1_PSG1:
	dc.b	nAb7, $02, nFs7, nE7
	smpsLoop            $00, $03, MJ_SND_A1_PSG1

MJ_SND_A1_Loop00:
	dc.b	nFs7, nE7, nD7
	smpsLoop            $00, $03, MJ_SND_A1_Loop00

MJ_SND_A1_Loop01:
	dc.b	nE7, nD7, nC7
	smpsLoop            $00, $03, MJ_SND_A1_Loop01

MJ_SND_A1_Loop02:
	dc.b	nFs7, nE7, nD7
	smpsLoop            $00, $03, MJ_SND_A1_Loop02
	smpsJump            MJ_SND_A1_PSG1

; Song seems to not use any FM voices
MJ_SND_A1_Voices:
