MJ_SND_AA_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_AA_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cPSG3, MJ_SND_AA_PSG3,	$00, $01

; PSG3 Data
MJ_SND_AA_PSG3:
	smpsModSet          $01, $01, $F0, $08
	smpsPSGform         $E7
	dc.b	nB3, $04, nCs6, $04

MJ_SND_AA_Loop00:
	dc.b	nEb5, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, MJ_SND_AA_Loop00
	smpsStop

; Song seems to not use any FM voices
MJ_SND_AA_Voices:
