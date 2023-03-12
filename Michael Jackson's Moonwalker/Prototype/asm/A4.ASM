MJ_SND_A4_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_A4_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cPSG2, MJ_SND_A4_PSG2,	$F4, $00
	smpsHeaderSFXChannel cPSG3, MJ_SND_A4_PSG3,	$F4, $00

; PSG2 Data
MJ_SND_A4_PSG2:
	smpsPSGvoice        fTone_01
	smpsModSet          $01, $01, $50, $17
	dc.b	nF5, $0C

MJ_SND_A4_Loop01:
	dc.b	nG2, $07
	smpsPSGAlterVol     $05
	smpsLoop            $00, $04, MJ_SND_A4_Loop01
	smpsStop

; PSG3 Data
MJ_SND_A4_PSG3:
	smpsPSGvoice        fTone_01
	smpsModSet          $02, $01, $20, $10
	smpsPSGform         $E7
	dc.b	nE5, $08

MJ_SND_A4_Loop00:
	dc.b	nF5, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0A, MJ_SND_A4_Loop00
	smpsStop

; Song seems to not use any FM voices
MJ_SND_A4_Voices:
