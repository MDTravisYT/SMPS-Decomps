MJ_SND_A0_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_A0_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cPSG1, MJ_SND_A0_PSG1,	$00, $03
	smpsHeaderSFXChannel cPSG2, MJ_SND_A0_PSG2,	$00, $03

; PSG1 Data
MJ_SND_A0_PSG1:
	dc.b	nRst, $02
	smpsAlterNote       $0A
	smpsPSGvoice        fTone_03

MJ_SND_A0_Loop02:
	dc.b	nE5, $03, nFs5, nAb5
	smpsPSGAlterVol     $02
	dc.b	$FB, 
	dc.b	$FF, 
	smpsLoop            $00, $04, MJ_SND_A0_Loop02

MJ_SND_A0_Loop03:
	dc.b	nE5, $03, nFs5, nAb5
	smpsPSGAlterVol     $02
	dc.b	$FB, 
	dc.b	$01
	smpsLoop            $00, $02, MJ_SND_A0_Loop03
	smpsStop

; PSG2 Data
MJ_SND_A0_PSG2:
	smpsPSGvoice        fTone_03

MJ_SND_A0_Loop00:
	dc.b	nE5, $02, nFs5, nAb5
	smpsPSGAlterVol     $02
	dc.b	$FB, 
	dc.b	$FF, 
	smpsLoop            $00, $06, MJ_SND_A0_Loop00

MJ_SND_A0_Loop01:
	dc.b	nE5, $02, nFs5, nAb5
	smpsPSGAlterVol     $02
	dc.b	$FB, 
	dc.b	$01
	smpsLoop            $00, $04, MJ_SND_A0_Loop01
	smpsStop

; Song seems to not use any FM voices
MJ_SND_A0_Voices:
