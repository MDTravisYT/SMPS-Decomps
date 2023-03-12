MJ_SND_AB_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_AB_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cPSG3, MJ_SND_AB_PSG3,	$00, $00

; PSG3 Data
MJ_SND_AB_PSG3:
	smpsPSGvoice        fTone_01
	smpsModSet          $03, $01, $20, $08
	smpsPSGform         $E7
	dc.b	nA2, $03, nCs3, $04

MJ_SND_AB_Loop00:
	dc.b	nCs4, $09
	dc.b	$FB, 
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsLoop            $00, $02, MJ_SND_AB_Loop00
	smpsStop

; Song seems to not use any FM voices
MJ_SND_AB_Voices:
