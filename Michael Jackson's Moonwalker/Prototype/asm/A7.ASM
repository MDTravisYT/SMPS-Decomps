MJ_SND_A7_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_A7_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cPSG3, MJ_SND_A7_PSG3,	$00, $00

; PSG3 Data
MJ_SND_A7_PSG3:
	smpsPSGform         $E7
	smpsModSet          $01, $01, $07, $02

MJ_SND_A7_Loop00:
	dc.b	nG2, $04
	dc.b	$FB, 
	dc.b	$01
	smpsLoop            $00, $20, MJ_SND_A7_Loop00
	dc.b	$14
	smpsStop

; Song seems to not use any FM voices
MJ_SND_A7_Voices:
