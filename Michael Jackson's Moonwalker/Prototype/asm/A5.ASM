MJ_SND_A5_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_A5_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cPSG2, MJ_SND_A5_PSG2,	$F4, $00
	smpsHeaderSFXChannel cPSG3, MJ_SND_A5_PSG3,	$F4, $00

; PSG2 Data
MJ_SND_A5_PSG2:
	smpsPSGvoice        fTone_01
	smpsModSet          $01, $01, $50, $17
	dc.b	nD2, $0A

MJ_SND_A5_Loop01:
	dc.b	nBb2, $04
	smpsPSGAlterVol     $02
	smpsLoop            $00, $06, MJ_SND_A5_Loop01
	smpsStop

; PSG3 Data
MJ_SND_A5_PSG3:
	smpsPSGvoice        fTone_01
	smpsModSet          $02, $01, $20, $10
	smpsPSGform         $E7
	dc.b	nG5, $0A

MJ_SND_A5_Loop00:
	dc.b	nF5, $02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, MJ_SND_A5_Loop00
	smpsStop

; Song seems to not use any FM voices
MJ_SND_A5_Voices:
