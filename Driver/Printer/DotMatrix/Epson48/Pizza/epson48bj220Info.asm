COMMENT @%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	Copyright (c) Berkeley Softworks 1990 -- All Rights Reserved

PROJECT:	PC GEOS
MODULE:		Epson 48-jet printer driver
FILE:		epson48bj220Info.asm

AUTHOR:		Tsutomu Owa

REVISION HISTORY:
	Name	Date		Description
	----	----		-----------
	Owa	1/94		Initial revision

DESCRIPTION:
	This file contains the device information for the Epson BJ220 printer

	Other Printers Supported by this resource:

	$Id: epson48bj220Info.asm,v 1.1 97/04/18 11:54:45 newdeal Exp $

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@

;----------------------------------------------------------------------------
;	Canon BJ-220 printer
;----------------------------------------------------------------------------

bj220Info	segment	resource

	; info blocks

PrinterInfo		   <		; ---- PrinterType -------------
				< PT_RASTER,
				BMF_MONO >,
					; ---- PrinterConnections ------
				< IC_NO_IEEE488,
				CC_NO_CUSTOM,
				SC_NO_SCSI,
				RC_NO_RS232C,
				CC_CENTRONICS,
				FC_FILE,
				AC_NO_APPLETALK >,
					; ---- PrinterSmarts -----------
				PS_DUMB_RASTER,	
					;-------Custom Entry Routine-------
				NULL,
					;-------Custom Exit Routine-------
				NULL,		
					; ---- Mode Info Offsets -------
				offset bj220lowRes,
				offset bj220medRes,
				offset bj220hiRes,
				offset printerFontInfo:lq850draft,	
				offset printerFontInfo:lq850nlq,
					; ---- Font Geometry -----------
				offset bj220fontGeometries,
                                        ; ---- Symbol Set list -----------
                                NULL,
					; ---- PaperMargins ------------
				< 10,	; Tractor Margins
				10,	;
				12,	;
				32>,	;
				<10,	; ASF Margins, 3.4mm
				10,	; 3mm
				12,	; 1.5mm (A3 portrait 4mm)
				32>,	; 8mm (6.4mm), + 5mm
					; ---- PaperInputOptions -------
				< MF_MANUAL1,
				TF_NO_TRACTOR,
				ASF_TRAY1 >,
					; ---- PaperOutputOptions ------
				< OC_NO_COPIES,
				PS_REVERSE,
				OD_SIMPLEX,
				SO_NO_STAPLER,
				OS_NO_SORTER,
				OB_NO_OUTPUTBIN >,
					;
				842,	; paper width (points). A3
				NULL,	; Main UI
				ASF1BinOnlyOptionsDialogBox, ; Options UI
				PrintEvalASF1BinOnly	; eval routine address
			      >

;----------------------------------------------------------------------------
;	Graphics modes info
;----------------------------------------------------------------------------

bj220lowRes	GraphicsProperties < LO_RES_X_RES,	; xres
				     LO_RES_Y_RES,	; yres
				     LO_RES_BAND_HEIGHT,  ; band height
                                     LO_RES_BUFF_HEIGHT,  ; buffer height
                                     LO_RES_INTERLEAVE_FACTOR, ;#interleaves
				     BMF_MONO,		;color format
				     NULL >		; color format

bj220medRes	GraphicsProperties < MED_RES_X_RES,	; xres
				     MED_RES_Y_RES,	; yres
				     MED_RES_BAND_HEIGHT,  ; band height
                                     MED_RES_BUFF_HEIGHT,  ; buffer height
                                     MED_RES_INTERLEAVE_FACTOR, ;#interleaves
				     BMF_MONO,		;color format
				     handle gamma175 >		; color format

bj220hiRes	GraphicsProperties < HI_RES_X_RES,	; xres
				     HI_RES_Y_RES,	; yres
				     HI_RES_BAND_HEIGHT,  ; band height
                                     HI_RES_BUFF_HEIGHT,  ; buffer height
                                     HI_RES_INTERLEAVE_FACTOR, ;#interleaves
				     BMF_MONO,		;color format
				     handle gamma20 >		; color format

;----------------------------------------------------------------------------
;	Text modes info
;----------------------------------------------------------------------------

                ;need to add geometries in ascending pointsize, grouped by font
bj220fontGeometries     FontGeometry \
                <       FID_DTC_URW_ROMAN,
                        8,
                        offset bj220_8ptpitchTab >,
                <       FID_DTC_URW_ROMAN,
                        12,
                        offset bj220_12ptpitchTab >,
                <       FID_DTC_URW_ROMAN,
                        24,
                        offset bj220_24ptpitchTab >,
                <       FID_DTC_URW_SANS,
                        8,
                        offset bj220_8ptpitchTab >,
                <       FID_DTC_URW_SANS,
                        12,
                        offset bj220_12ptpitchTab >,
                <       FID_DTC_URW_SANS,
                        24,
                        offset bj220_24ptpitchTab >
                word    FID_INVALID             ;table terminator

bj220_8ptpitchTab      label   byte
        byte    TP_15_PITCH
        byte    TP_PROPORTIONAL         ;"table Terminator"

bj220_12ptpitchTab      label   byte
        byte    TP_20_PITCH
        byte    TP_17_PITCH
        byte    TP_12_PITCH
        byte    TP_10_PITCH
        byte    TP_6_PITCH
        byte    TP_5_PITCH
        byte    TP_PROPORTIONAL         ;"table Terminator"

bj220_24ptpitchTab      label   byte
        byte    TP_12_PITCH
        byte    TP_10_PITCH
        byte    TP_6_PITCH
        byte    TP_5_PITCH
        byte    TP_PROPORTIONAL         ;"table Terminator"


bj220Info	ends
