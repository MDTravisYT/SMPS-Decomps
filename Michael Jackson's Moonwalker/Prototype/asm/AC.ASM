MJ_SND_AC_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_AC_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cPSG3, MJ_SND_AC_PSG3,	$FC, $00

; PSG3 Data
MJ_SND_AC_PSG3:
	smpsPSGform         $E7
	smpsModSet          $01, $01, $F0, $08
	dc.b	nF5, $02
	smpsModSet          $01, $01, $14, $01

MJ_SND_AC_Loop00:
	dc.b	nAb4, $04
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MJ_SND_AC_Loop00
	smpsStop

; Song seems to not use any FM voices
MJ_SND_AC_Voices:
