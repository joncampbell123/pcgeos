SJISGB/OS2MANAGER.obj \
SJISGB/OS2MANAGER.eobj: DOSGEODE.DEF GEOS.DEF HEAP.DEF GEODE.DEF RESOURCE.DEF \
                EC.DEF LMEM.DEF SYSTEM.DEF LOCALIZE.DEF SLLANG.DEF \
                DRIVE.DEF DISK.DEF FILE.DEF DRIVER.DEF TIMEDATE.DEF \
                SEM.DEF TIMER.DEF INITFILE.DEF GCNLIST.DEF \
                OBJECTS/METAC.DEF OBJECT.DEF CHUNKARR.DEF GEOWORKS.DEF \
                GRAPHICS.DEF FONTID.DEF FONT.DEF COLOR.DEF \
                INTERNAL/SEMINT.DEF INTERNAL/INTERRUP.DEF \
                INTERNAL/DOS.DEF FILEENUM.DEF INTERNAL/FILEINT.DEF \
                INTERNAL/DRIVEINT.DEF INTERNAL/DISKINT.DEF \
                INTERNAL/FSD.DEF INTERNAL/LOG.DEF INTERNAL/HEAPINT.DEF \
                SYSSTATS.DEF INTERNAL/GEODESTR.DEF INTERNAL/FILESTR.DEF \
                INTERNAL/LOCALINT.DEF CHAR.DEF UNICODE.DEF \
                INTERNAL/FSDRIVER.DEF INTERNAL/DOSFSDR.DEF \
                INTERNAL/PRODFEATURES.DEF ASSERT.DEF OS2INTERFACE.DEF \
                DOSCONSTANT.DEF DOSMACRO.DEF DOSSTRINGS.ASM \
                DOSVARIABLE.DEF OS2STRINGS.ASM OS2VARIABLE.DEF \
                DOSENTRY.ASM DOSDISK.ASM DOSDRIVE.ASM OS2DRIVE.ASM \
                DOSPATH.ASM DOSENUM.ASM DOSFORMAT.ASM DOSFORMATINIT.ASM \
                DOSDISKCOPY.ASM DOSIO.ASM DOSPRIMARY.ASM DOSINITEXIT.ASM \
                OS2INITEXIT.ASM DOSCRITICAL.ASM DOSUTILS.ASM OS2UTILS.ASM \
                DOSVIRTUAL.ASM DOSSUSPEND.ASM DOSLINK.ASM DOSIDLE.ASM \
                DOSFILECHANGE.ASM DOSCONVERT.ASM DOSCMAPUS.ASM \
                DOSCMAPMULTI.ASM dosConstantSJIS.def dosConvertSJIS.asm \
		dosCMapSJIS.asm dosConvertJIS.def dosConvertJIS.asm \
		dosConvertEUC.asm dosConstantGB.def dosConvertGB.asm \
		dosCMapGB.asm

SJISGB/OS2EC.geo SJISGB/OS2.geo : GEOS.LDF 
