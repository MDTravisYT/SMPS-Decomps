MJ_SND_BD_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_BD_Voices
	smpsHeaderTempoSFX  $02
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, MJ_SND_BD_FM5,	$00, $08

; FM5 Data
MJ_SND_BD_FM5:
	smpsSetvoice        $00
	smpsReturn

MJ_SND_BD_Voices:
;	Voice $00
;	$2C
;	$72, $72, $33, $32, 	$1F, $0F, $1F, $0F, 	$01, $03, $01, $03
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$19, $80, $17, $85
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $02, $03, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0F, $1F, $0F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $01, $03, $01
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $05, $17, $00, $19

