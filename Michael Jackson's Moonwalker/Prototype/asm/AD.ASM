MJ_SND_AD_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_AD_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cPSG3, MJ_SND_AD_PSG3,	$00, $00

; PSG3 Data
MJ_SND_AD_PSG3:
	smpsPSGvoice        fTone_02
	smpsModSet          $01, $01, $F0, $08
	smpsPSGform         $E7

MJ_SND_AD_Loop00:
	dc.b	nB3, $04, nRst, $02
	smpsLoop            $00, $03, MJ_SND_AD_Loop00
	smpsStop

; Song seems to not use any FM voices
MJ_SND_AD_Voices:
