/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLuBWINH.aml, Sun Feb 19 11:41:26 2017
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000B3EB (46059)
 *     Revision         0x02
 *     Checksum         0x4F
 *     OEM ID           "Apple "
 *     OEM Table ID     "PARADISE"
 *     OEM Revision     0x00000010 (16)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "DSDT", 2, "Apple ", "PARADISE", 0x00000010)
{
    External (_PR_.CPU0._PPC, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.IEIT.EITV, MethodObj)    // 0 Arguments (from opcode)
    External (CFGD, UnknownObj)    // (from opcode)
    External (ECST, MethodObj)    // 1 Arguments (from opcode)
    External (HDOS, MethodObj)    // 0 Arguments (from opcode)
    External (HNOT, MethodObj)    // 1 Arguments (from opcode)
    External (HWID, IntObj)    // (from opcode)
    External (IDAB, MethodObj)    // 0 Arguments (from opcode)
    External (PDC0, UnknownObj)    // (from opcode)
    External (PDC1, UnknownObj)    // (from opcode)
    External (PDC2, UnknownObj)    // (from opcode)
    External (PDC3, UnknownObj)    // (from opcode)
    External (TNOT, MethodObj)    // 0 Arguments (from opcode)

    Name (WXP1, "Windows 2009")
    Method (GET9, 2, NotSerialized)
    {
        CreateByteField (Arg0, Arg1, TCH9)
        Return (TCH9)
    }

    Method (STR9, 2, Serialized)
    {
        Name (STR8, Buffer (0x50) {})
        Name (STR9, Buffer (0x50) {})
        Store (Arg0, STR8)
        Store (Arg1, STR9)
        Store (Zero, Local0)
        Store (One, Local1)
        While (Local1)
        {
            Store (GET9 (STR8, Local0), Local1)
            Store (GET9 (STR9, Local0), Local2)
            If (LNotEqual (Local1, Local2))
            {
                Return (Zero)
            }

            Increment (Local0)
        }

        Return (One)
    }

    Method (OOSI, 1, NotSerialized)
    {
        If (STR9 (WXP1, Arg0))
        {
            Return (One)
        }

        Return (Zero)
    }

    Name (SP1O, 0x164E)
    Name (IOCB, 0x0A20)
    Name (IOWB, 0x0680)
    Name (IOBB, 0x0A10)
    Name (IOBL, 0x10)
    Name (IOWL, 0x10)
    Name (IOCL, 0x10)
    Name (SMBS, 0x0580)
    Name (SMBL, 0x20)
    Name (PMBS, 0x0400)
    Name (PMLN, 0x80)
    Name (GPBS, 0x0500)
    Name (GPLN, 0x80)
    Name (SMIP, 0xB2)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (SMCR, 0x0430)
    Name (HPTB, 0xFED00000)
    Name (HPTC, 0xFED1F404)
    Name (FLSZ, 0x00200000)
    Name (SRCB, 0xFED1C000)
    Name (RCLN, 0x4000)
    Name (TCBR, 0xFED08000)
    Name (TCLT, 0x1000)
    Name (PEBS, 0xF8000000)
    Name (PELN, 0x04000000)
    Name (LAPB, 0xFEE00000)
    Name (EGPB, 0xFED19000)
    Name (MCHB, 0xFED10000)
    Name (VTBS, 0xFED90000)
    Name (VTLN, 0x4000)
    Name (ACPH, 0xDE)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, One)
    Name (SHPC, One)
    Name (PEPM, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (ITKE, Zero)
    Name (FMBL, One)
    Name (FDTP, 0x02)
    Name (FUPS, 0x03)
    Name (BSH, Zero)
    Name (BEL, One)
    Name (BEH, 0x02)
    Name (BRH, 0x03)
    Name (BTF, 0x04)
    Name (BHC, 0x05)
    Name (BYB, 0x06)
    Name (BPH, 0x07)
    Name (BSHS, 0x08)
    Name (BELS, 0x09)
    Name (BRHS, 0x0A)
    Name (BTFS, 0x0B)
    Name (BEHS, 0x0C)
    Name (BPHS, 0x0D)
    Name (BTL, 0x10)
    Name (BSR, 0x14)
    Name (BOF, 0x20)
    Name (BEF, 0x21)
    Name (BLLE, 0x22)
    Name (BLLC, 0x23)
    Name (BLCA, 0x24)
    Name (BLLS, 0x25)
    Name (BLLP, 0x26)
    Name (BLLD, 0x27)
    Name (BHBE, 0x30)
    Name (BHBC, 0x31)
    Name (BHBN, 0x32)
    Name (BHBM, 0x33)
    Name (TRTP, One)
    Name (WDTE, One)
    Name (TRTD, 0x02)
    Name (TRTI, 0x03)
    Name (GCDD, One)
    Name (DSTA, 0x0A)
    Name (DSLO, 0x0C)
    Name (DSLC, 0x0E)
    Name (PITS, 0x10)
    Name (SBCS, 0x12)
    Name (SALS, 0x13)
    Name (LSSS, 0x2A)
    Name (SOOT, 0x35)
    Name (PDBR, 0x4D)
    Name (DSSP, Zero)
    Name (FHPP, Zero)
    Name (SMIT, 0xB2)
    Name (OFST, 0x35)
    Name (TPMF, Zero)
    Name (TMF1, Zero)
    Name (TMF2, Zero)
    Name (TMF3, Zero)
    Name (MBEC, Zero)
    Name (SS1, One)
    Name (SS2, Zero)
    Name (SS3, One)
    Name (SS4, One)
    Name (IOST, 0x4400)
    Name (TOPM, Zero)
    Name (ROMS, 0xFFE00000)
    OperationRegion (GNVS, SystemMemory, 0xDAFE0E18, 0x01A8)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        SCIF,   8, 
        PRM2,   8, 
        PRM3,   8, 
        LCKF,   8, 
        PRM4,   8, 
        PRM5,   8, 
        P80D,   32, 
        LIDS,   8, 
        PWRS,   8, 
        DBGS,   8, 
        THOF,   8, 
        ACT1,   8, 
        ACTT,   8, 
        PSVT,   8, 
        TC1V,   8, 
        TC2V,   8, 
        TSPV,   8, 
        CRTT,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        DTSF,   8, 
        Offset (0x25), 
        REVN,   8, 
        Offset (0x28), 
        APIC,   8, 
        TCNT,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
        C67L,   8, 
        NATP,   8, 
        CMAP,   8, 
        CMBP,   8, 
        LPTP,   8, 
        FDCP,   8, 
        CMCP,   8, 
        CIRP,   8, 
        SMSC,   8, 
        W381,   8, 
        SMC1,   8, 
        IGDS,   8, 
        TLST,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        SSTE,   16, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        KSV0,   32, 
        KSV1,   8, 
        GDGC,   8, 
        Offset (0x67), 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        Offset (0x6E), 
        EMAE,   8, 
        EMAP,   16, 
        EMAL,   16, 
        Offset (0x74), 
        MEFE,   8, 
        DSTS,   8, 
        Offset (0x78), 
        TPMP,   8, 
        TPME,   8, 
        MORD,   8, 
        TCGP,   8, 
        PPRP,   32, 
        PPRQ,   8, 
        LPPR,   8, 
        GTF0,   56, 
        GTF2,   56, 
        IDEM,   8, 
        GTF1,   56, 
        BID,    8, 
        Offset (0xAA), 
        ASLB,   32, 
        IBTT,   8, 
        IPAT,   8, 
        ITVF,   8, 
        ITVM,   8, 
        IPSC,   8, 
        IBLC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        I409,   8, 
        I509,   8, 
        I609,   8, 
        I709,   8, 
        IPCF,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        GSMI,   8, 
        PAVP,   8, 
        Offset (0xE1), 
        OSCC,   8, 
        NEXP,   8, 
        SBV1,   8, 
        SBV2,   8, 
        Offset (0xEB), 
        DSEN,   8, 
        ECON,   8, 
        GPIC,   8, 
        CTYP,   8, 
        L01C,   8, 
        VFN0,   8, 
        VFN1,   8, 
        VFN2,   8, 
        VFN3,   8, 
        VFN4,   8, 
        Offset (0x100), 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
        EBAS,   32, 
        CPSP,   32, 
        EECP,   32, 
        EVCP,   32, 
        XBAS,   32, 
        OBS1,   32, 
        OBS2,   32, 
        OBS3,   32, 
        OBS4,   32, 
        OBS5,   32, 
        OBS6,   32, 
        OBS7,   32, 
        OBS8,   32, 
        Offset (0x157), 
        ATMC,   8, 
        PTMC,   8, 
        ATRA,   8, 
        PTRA,   8, 
        PNHM,   32, 
        TBAB,   32, 
        TBAH,   32, 
        RTIP,   8, 
        TSOD,   8, 
        ATPC,   8, 
        PTPC,   8, 
        PFLV,   8, 
        BREV,   8, 
        SGMD,   8, 
        SGFL,   8, 
        PWOK,   8, 
        HLRS,   8, 
        DSEL,   8, 
        ESEL,   8, 
        PSEL,   8, 
        PWEN,   8, 
        PRST,   8, 
        MXD1,   32, 
        MXD2,   32, 
        MXD3,   32, 
        MXD4,   32, 
        MXD5,   32, 
        MXD6,   32, 
        MXD7,   32, 
        MXD8,   32, 
        GBAS,   16, 
        Offset (0x19D), 
        ALFP,   8, 
        IMON,   8, 
        PDTS,   8, 
        PKGA,   8, 
        PAMT,   8, 
        AC0F,   8, 
        AC1F,   8, 
        DTS3,   8, 
        DTS4,   8, 
        RSV2,   8, 
        RSV3,   8
    }

    Scope (_SB)
    {
        Name (PR00, Package (0x23)
        {
            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x03, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x03, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR00, Package (0x23)
        {
            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x03, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x03, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR0E, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR0E, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR0F, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR0F, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR01, Package (0x14)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                LNKF, 
                Zero
            }
        })
        Name (AR01, Package (0x14)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                Zero, 
                0x15
            }
        })
        Name (PR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR0A, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR0A, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR0B, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR0B, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR0C, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR0C, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03"))  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00 ())
                }

                Return (PR00 ())
            }

            OperationRegion (HBUS, PCI_Config, Zero, 0x0100)
            Field (HBUS, DWordAcc, NoLock, Preserve)
            {
                Offset (0x40), 
                EPEN,   1, 
                    ,   11, 
                EPBR,   20, 
                Offset (0x48), 
                MHEN,   1, 
                    ,   14, 
                MHBR,   17, 
                Offset (0x50), 
                GCLK,   1, 
                Offset (0x54), 
                D0EN,   1, 
                Offset (0x60), 
                PXEN,   1, 
                PXSZ,   2, 
                    ,   23, 
                PXBR,   6, 
                Offset (0x68), 
                DIEN,   1, 
                    ,   11, 
                DIBR,   20, 
                Offset (0x70), 
                    ,   20, 
                MEBR,   12, 
                Offset (0x80), 
                    ,   4, 
                PM0H,   2, 
                Offset (0x81), 
                PM1L,   2, 
                    ,   2, 
                PM1H,   2, 
                Offset (0x82), 
                PM2L,   2, 
                    ,   2, 
                PM2H,   2, 
                Offset (0x83), 
                PM3L,   2, 
                    ,   2, 
                PM3H,   2, 
                Offset (0x84), 
                PM4L,   2, 
                    ,   2, 
                PM4H,   2, 
                Offset (0x85), 
                PM5L,   2, 
                    ,   2, 
                PM5H,   2, 
                Offset (0x86), 
                PM6L,   2, 
                    ,   2, 
                PM6H,   2, 
                Offset (0x87), 
                Offset (0xA8), 
                    ,   20, 
                TUUD,   19, 
                Offset (0xBC), 
                    ,   20, 
                TLUD,   12, 
                Offset (0xC8), 
                    ,   7, 
                HTSE,   1
            }

            OperationRegion (MCHT, SystemMemory, 0xFED10000, 0x1100)
            Field (MCHT, ByteAcc, NoLock, Preserve)
            {
            }

            Name (BUF0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, _Y00)
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000CF7,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000CF8,         // Length
                    ,, , TypeStatic)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000D00,         // Range Minimum
                    0x0000FFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x0000F300,         // Length
                    ,, , TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y02, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y04, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y05, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y06, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y07, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y08, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y09, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0A, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000F0000,         // Range Minimum
                    0x000FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00010000,         // Length
                    ,, _Y0D, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0xFEAFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFEB00000,         // Length
                    ,, _Y0E, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFED40000,         // Range Minimum
                    0xFED44FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00005000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUF0, \_SB.PCI0._Y00._MAX, PBMX)  // _MAX: Maximum Base Address
                Subtract (ShiftRight (PELN, 0x14), 0x02, PBMX)
                CreateWordField (BUF0, \_SB.PCI0._Y00._LEN, PBLN)  // _LEN: Length
                Subtract (ShiftRight (PELN, 0x14), One, PBLN)
                If (PM1L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y01._LEN, C0LN)  // _LEN: Length
                    Store (Zero, C0LN)
                }

                If (LEqual (PM1L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y01._RW, C0RW)  // _RW_: Read-Write Status
                    Store (Zero, C0RW)
                }

                If (PM1H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y02._LEN, C4LN)  // _LEN: Length
                    Store (Zero, C4LN)
                }

                If (LEqual (PM1H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y02._RW, C4RW)  // _RW_: Read-Write Status
                    Store (Zero, C4RW)
                }

                If (PM2L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y03._LEN, C8LN)  // _LEN: Length
                    Store (Zero, C8LN)
                }

                If (LEqual (PM2L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y03._RW, C8RW)  // _RW_: Read-Write Status
                    Store (Zero, C8RW)
                }

                If (PM2H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y04._LEN, CCLN)  // _LEN: Length
                    Store (Zero, CCLN)
                }

                If (LEqual (PM2H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y04._RW, CCRW)  // _RW_: Read-Write Status
                    Store (Zero, CCRW)
                }

                If (PM3L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y05._LEN, D0LN)  // _LEN: Length
                    Store (Zero, D0LN)
                }

                If (LEqual (PM3L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y05._RW, D0RW)  // _RW_: Read-Write Status
                    Store (Zero, D0RW)
                }

                If (PM3H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y06._LEN, D4LN)  // _LEN: Length
                    Store (Zero, D4LN)
                }

                If (LEqual (PM3H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y06._RW, D4RW)  // _RW_: Read-Write Status
                    Store (Zero, D4RW)
                }

                If (PM4L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y07._LEN, D8LN)  // _LEN: Length
                    Store (Zero, D8LN)
                }

                If (LEqual (PM4L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y07._RW, D8RW)  // _RW_: Read-Write Status
                    Store (Zero, D8RW)
                }

                If (PM4H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y08._LEN, DCLN)  // _LEN: Length
                    Store (Zero, DCLN)
                }

                If (LEqual (PM4H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y08._RW, DCRW)  // _RW_: Read-Write Status
                    Store (Zero, DCRW)
                }

                If (PM5L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y09._LEN, E0LN)  // _LEN: Length
                    Store (Zero, E0LN)
                }

                If (LEqual (PM5L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y09._RW, E0RW)  // _RW_: Read-Write Status
                    Store (Zero, E0RW)
                }

                If (PM5H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0A._LEN, E4LN)  // _LEN: Length
                    Store (Zero, E4LN)
                }

                If (LEqual (PM5H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0A._RW, E4RW)  // _RW_: Read-Write Status
                    Store (Zero, E4RW)
                }

                If (PM6L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0B._LEN, E8LN)  // _LEN: Length
                    Store (Zero, E8LN)
                }

                If (LEqual (PM6L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0B._RW, E8RW)  // _RW_: Read-Write Status
                    Store (Zero, E8RW)
                }

                If (PM6H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0C._LEN, ECLN)  // _LEN: Length
                    Store (Zero, ECLN)
                }

                If (LEqual (PM6H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0C._RW, ECRW)  // _RW_: Read-Write Status
                    Store (Zero, ECRW)
                }

                If (PM0H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0D._LEN, F0LN)  // _LEN: Length
                    Store (Zero, F0LN)
                }

                If (LEqual (PM0H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0D._RW, F0RW)  // _RW_: Read-Write Status
                    Store (Zero, F0RW)
                }

                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._LEN, M1LN)  // _LEN: Length
                ShiftLeft (TLUD, 0x14, M1MN)
                Add (Subtract (M1MX, M1MN), One, M1LN)
                Return (BUF0)
            }

            Name (GUID, ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */)
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Store (Arg3, Local0)
                CreateDWordField (Local0, Zero, CDW1)
                CreateDWordField (Local0, 0x04, CDW2)
                CreateDWordField (Local0, 0x08, CDW3)
                If (LAnd (LEqual (Arg0, GUID), NEXP))
                {
                    Store (CDW2, SUPP)
                    Store (CDW3, CTRL)
                    If (Not (And (CDW1, One)))
                    {
                        If (And (CTRL, One))
                        {
                            NHPG ()
                        }

                        If (And (CTRL, 0x04))
                        {
                            NPME ()
                        }
                    }

                    If (LNotEqual (Arg1, One))
                    {
                        Or (CDW1, 0x08, CDW1)
                    }

                    If (LNotEqual (CDW3, CTRL))
                    {
                        Or (CDW1, 0x10, CDW1)
                    }

                    Store (CTRL, CDW3)
                    Store (CTRL, OSCC)
                    Return (Local0)
                }
                Else
                {
                    Or (CDW1, 0x04, CDW1)
                    Return (Local0)
                }
            }

            Scope (\_SB.PCI0)
            {
                Method (AR00, 0, NotSerialized)
                {
                    Return (^^AR00)
                }

                Method (PR00, 0, NotSerialized)
                {
                    Return (^^PR00)
                }

                Method (AR01, 0, NotSerialized)
                {
                    Return (^^AR01)
                }

                Method (PR01, 0, NotSerialized)
                {
                    Return (^^PR01)
                }

                Method (AR02, 0, NotSerialized)
                {
                    Return (^^AR02)
                }

                Method (PR02, 0, NotSerialized)
                {
                    Return (^^PR02)
                }

                Method (AR04, 0, NotSerialized)
                {
                    Return (^^AR04)
                }

                Method (PR04, 0, NotSerialized)
                {
                    Return (^^PR04)
                }

                Method (AR05, 0, NotSerialized)
                {
                    Return (^^AR05)
                }

                Method (PR05, 0, NotSerialized)
                {
                    Return (^^PR05)
                }

                Method (AR06, 0, NotSerialized)
                {
                    Return (^^AR06)
                }

                Method (PR06, 0, NotSerialized)
                {
                    Return (^^PR06)
                }

                Method (AR07, 0, NotSerialized)
                {
                    Return (^^AR07)
                }

                Method (PR07, 0, NotSerialized)
                {
                    Return (^^PR07)
                }

                Method (AR08, 0, NotSerialized)
                {
                    Return (^^AR08)
                }

                Method (PR08, 0, NotSerialized)
                {
                    Return (^^PR08)
                }

                Method (AR09, 0, NotSerialized)
                {
                    Return (^^AR09)
                }

                Method (PR09, 0, NotSerialized)
                {
                    Return (^^PR09)
                }

                Method (AR0A, 0, NotSerialized)
                {
                    Return (^^AR0A)
                }

                Method (PR0A, 0, NotSerialized)
                {
                    Return (^^PR0A)
                }

                Method (AR0B, 0, NotSerialized)
                {
                    Return (^^AR0B)
                }

                Method (PR0B, 0, NotSerialized)
                {
                    Return (^^PR0B)
                }
            }

            Device (LPCB)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Scope (\_SB)
                {
                    OperationRegion (PCI0.LPCB.LPC1, PCI_Config, 0x40, 0xC0)
                    Field (PCI0.LPCB.LPC1, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x20), 
                        PARC,   8, 
                        PBRC,   8, 
                        PCRC,   8, 
                        PDRC,   8, 
                        Offset (0x28), 
                        PERC,   8, 
                        PFRC,   8, 
                        PGRC,   8, 
                        PHRC,   8
                    }

                    Device (LNKA)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PARC, 0x80, PARC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSA)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLA, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLA, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PARC, 0x0F), IRQ0)
                            Return (RTLA)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PARC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PARC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKB)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x02)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PBRC, 0x80, PBRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSB)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLB, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLB, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PBRC, 0x0F), IRQ0)
                            Return (RTLB)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PBRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PBRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKC)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x03)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PCRC, 0x80, PCRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSC)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLC, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLC, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PCRC, 0x0F), IRQ0)
                            Return (RTLC)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PCRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PCRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKD)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x04)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PDRC, 0x80, PDRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSD)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLD, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLD, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PDRC, 0x0F), IRQ0)
                            Return (RTLD)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PDRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PDRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKE)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x05)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PERC, 0x80, PERC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSE)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLE, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLE, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PERC, 0x0F), IRQ0)
                            Return (RTLE)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PERC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PERC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKF)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x06)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PFRC, 0x80, PFRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSF)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLF, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLF, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PFRC, 0x0F), IRQ0)
                            Return (RTLF)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PFRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PFRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKG)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x07)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PGRC, 0x80, PGRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSG)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLG, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLG, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PGRC, 0x0F), IRQ0)
                            Return (RTLG)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PGRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PGRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKH)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x08)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PHRC, 0x80, PHRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSH)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLH, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLH, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PHRC, 0x0F), IRQ0)
                            Return (RTLH)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PHRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PHRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                }

                OperationRegion (LPC0, PCI_Config, 0x40, 0xC0)
                Field (LPC0, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x40), 
                    IOD0,   8, 
                    IOD1,   8, 
                    Offset (0xB0), 
                    RAEN,   1, 
                        ,   13, 
                    RCBA,   18
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x01,               // Alignment
                            0x11,               // Length
                            )
                        IO (Decode16,
                            0x0093,             // Range Minimum
                            0x0093,             // Range Maximum
                            0x01,               // Alignment
                            0x0D,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, NotBusMaster, Transfer8_16, )
                            {4}
                    })
                }

                Device (FWHD)
                {
                    Name (_HID, EisaId ("INT0800"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        Memory32Fixed (ReadOnly,
                            0xFF000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                    })
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0C01"))  // _CID: Compatible ID
                    Name (_STA, 0x0F)  // _STA: Status
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQNoFlags ()
                            {0,8,11,15}
                        Memory32Fixed (ReadWrite,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            )
                    })
                }

                Device (IPIC)
                {
                    Name (_HID, EisaId ("PNP0000"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B4,             // Range Minimum
                            0x00B4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                }

                Device (LDRC)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x004E,             // Range Minimum
                            0x004E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0063,             // Range Minimum
                            0x0063,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0067,             // Range Minimum
                            0x0067,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B2,             // Range Minimum
                            0x00B2,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0680,             // Range Minimum
                            0x0680,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x1000,             // Range Minimum
                            0x1000,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x1010,             // Range Minimum
                            0x1010,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0400,             // Range Minimum
                            0x0400,             // Range Maximum
                            0x01,               // Alignment
                            0x54,               // Length
                            )
                        IO (Decode16,
                            0x0458,             // Range Minimum
                            0x0458,             // Range Maximum
                            0x01,               // Alignment
                            0x28,               // Length
                            )
                        IO (Decode16,
                            0x0500,             // Range Minimum
                            0x0500,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x164E,             // Range Minimum
                            0x164E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x10,               // Alignment
                            0x04,               // Length
                            )
                    })
                }

                Device (CWDT)
                {
                    Name (_HID, EisaId ("INT3F0D"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0454,             // Range Minimum
                            0x0454,             // Range Maximum
                            0x04,               // Alignment
                            0x04,               // Length
                            )
                    })
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (LEqual (WDTE, One))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Return (BUF0)
                    }
                }

                Device (AMW0)
                {
                    Name (_HID, "PNP0c14")  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (WDG, Buffer (0xB4)
                    {
                        /* 0000 */  0x6A, 0x0F, 0xBC, 0xAB, 0xA1, 0x8E, 0xD1, 0x11,
                        /* 0008 */  0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10, 0x00, 0x00,
                        /* 0010 */  0x41, 0x41, 0x04, 0x01, 0x6B, 0x0F, 0xBC, 0xAB,
                        /* 0018 */  0xA1, 0x8E, 0xD1, 0x11, 0x00, 0xA0, 0xC9, 0x06,
                        /* 0020 */  0x29, 0x10, 0x00, 0x00, 0x41, 0x42, 0x04, 0x05,
                        /* 0028 */  0x6C, 0x0F, 0xBC, 0xAB, 0xA1, 0x8E, 0xD1, 0x11,
                        /* 0030 */  0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10, 0x00, 0x00,
                        /* 0038 */  0x41, 0x43, 0x04, 0x01, 0x6D, 0x0F, 0xBC, 0xAB,
                        /* 0040 */  0xA1, 0x8E, 0xD1, 0x11, 0x00, 0xA0, 0xC9, 0x06,
                        /* 0048 */  0x29, 0x10, 0x00, 0x00, 0x42, 0x41, 0x04, 0x02,
                        /* 0050 */  0x6E, 0x0F, 0xBC, 0xAB, 0xA1, 0x8E, 0xD1, 0x11,
                        /* 0058 */  0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10, 0x00, 0x00,
                        /* 0060 */  0x42, 0x42, 0x04, 0x06, 0x6F, 0x0F, 0xBC, 0xAB,
                        /* 0068 */  0xA1, 0x8E, 0xD1, 0x11, 0x00, 0xA0, 0xC9, 0x06,
                        /* 0070 */  0x29, 0x10, 0x00, 0x00, 0x42, 0x43, 0x04, 0x02,
                        /* 0078 */  0x70, 0x0F, 0xBC, 0xAB, 0xA1, 0x8E, 0xD1, 0x11,
                        /* 0080 */  0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10, 0x00, 0x00,
                        /* 0088 */  0xD0, 0x00, 0x01, 0x08, 0x71, 0x0F, 0xBC, 0xAB,
                        /* 0090 */  0xA1, 0x8E, 0xD1, 0x11, 0x00, 0xA0, 0xC9, 0x06,
                        /* 0098 */  0x29, 0x10, 0x00, 0x00, 0xD1, 0x00, 0x01, 0x0C,
                        /* 00A0 */  0x72, 0x0F, 0xBC, 0xAB, 0xA1, 0x8E, 0xD1, 0x11,
                        /* 00A8 */  0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10, 0x00, 0x00,
                        /* 00B0 */  0xD2, 0x00, 0x01, 0x08                         
                    })
                    Name (SAA0, Buffer (0x10)
                    {
                        /* 0000 */  0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00,
                        /* 0008 */  0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00 
                    })
                    Name (SAA1, Buffer (0x10)
                    {
                        /* 0000 */  0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00,
                        /* 0008 */  0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00 
                    })
                    Name (SAA2, Buffer (0x10)
                    {
                        /* 0000 */  0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00,
                        /* 0008 */  0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00 
                    })
                    Name (SAA3, Buffer (0x10)
                    {
                        /* 0000 */  0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00,
                        /* 0008 */  0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00 
                    })
                    Name (SAB0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!@#$%^&*()1234567890-_=+[]{}")
                    Name (SAB1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!@#$%^&*()1234567890-_=+[]{}")
                    Name (SAB2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!@#$%^&*()1234567890-_=+[]{}")
                    Name (SAB3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!@#$%^&*()1234567890-_=+[]{}")
                    Name (SAC0, Zero)
                    Name (SAC1, One)
                    Name (SAC2, 0x02)
                    Name (SAC3, 0x03)
                    Name (CCAA, Zero)
                    Name (CCAB, Zero)
                    Name (CCAC, Zero)
                    Name (ECD0, Zero)
                    Name (ECD1, Zero)
                    Name (ECD2, Zero)
                    Method (WCAA, 1, Serialized)
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            If (LEqual (CCAA, Zero))
                            {
                                Name (FOO, "WMIACPI: ASL: WCAA called, but CCAA is 0\n")
                                Store (FOO, Debug)
                                Fatal (0xA0, 0x0000000E, Zero)
                            }
                        }
                        ElseIf (LNotEqual (CCAA, Zero))
                        {
                            Name (FOO1, "WMIACPI: ASL: WCAA called, but CCAA is 1\n")
                            Store (FOO1, Debug)
                            Fatal (0xA0, 0x0000000D, Zero)
                        }

                        Store (Arg0, CCAA)
                    }

                    Method (WCAB, 1, Serialized)
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            If (LEqual (CCAB, Zero))
                            {
                                Name (FOO, "WMIACPI: ASL: WCAB called, but CCAB is 0\n")
                                Store (FOO, Debug)
                                Fatal (0xA0, 0x00000010, Zero)
                            }
                        }
                        ElseIf (LNotEqual (CCAB, Zero))
                        {
                            Name (FOO1, "WMIACPI: ASL: WCAB called, but CCAB is 1\n")
                            Store (FOO1, Debug)
                            Fatal (0xA0, 0x0000000F, Zero)
                        }

                        Store (Arg0, CCAB)
                    }

                    Method (WCAC, 1, Serialized)
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            If (LEqual (CCAC, Zero))
                            {
                                Name (FOO, "WMIACPI: ASL: WCAC called, but CCAC is 0\n")
                                Store (FOO, Debug)
                                Fatal (0xA0, 0x00000012, Zero)
                            }
                        }
                        ElseIf (LNotEqual (CCAC, Zero))
                        {
                            Name (FOO1, "WMIACPI: ASL: WCAC called, but CCAC is 1\n")
                            Store (FOO1, Debug)
                            Fatal (0xA0, 0x00000011, Zero)
                        }

                        Store (Arg0, CCAC)
                    }

                    Method (WED0, 1, Serialized)
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            If (LEqual (ECD0, Zero))
                            {
                                Name (FOO, "WMIACPI: ASL: WED0 called, but ECD0 is 0\n")
                                Store (FOO, Debug)
                                Fatal (0xA0, 0x00000014, Zero)
                            }
                        }
                        ElseIf (LNotEqual (ECD0, Zero))
                        {
                            Name (FOO1, "WMIACPI: ASL: WED0 called, but WED0 is 1\n")
                            Store (FOO1, Debug)
                            Fatal (0xA0, 0x00000013, Zero)
                        }

                        Store (Arg0, ECD0)
                    }

                    Method (WED1, 1, Serialized)
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            If (LEqual (ECD1, Zero))
                            {
                                Name (FOO, "WMIACPI: ASL: WED1 called, but ECD1 is 0\n")
                                Store (FOO, Debug)
                                Fatal (0xA0, 0x00000016, Zero)
                            }
                        }
                        ElseIf (LNotEqual (ECD1, Zero))
                        {
                            Name (FOO1, "WMIACPI: ASL: WED1 called, but WED1 is 1\n")
                            Store (FOO1, Debug)
                            Fatal (0xA0, 0x00000015, Zero)
                        }

                        Store (Arg0, ECD1)
                    }

                    Method (WED2, 1, Serialized)
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            If (LEqual (ECD2, Zero))
                            {
                                Name (FOO, "WMIACPI: ASL: WED2 called, but ECD2 is 0\n")
                                Store (FOO, Debug)
                                Fatal (0xA0, 0x00000018, Zero)
                            }
                        }
                        ElseIf (LNotEqual (ECD2, Zero))
                        {
                            Name (FOO1, "WMIACPI: ASL: WED2 called, but WED2 is 1\n")
                            Store (FOO1, Debug)
                            Fatal (0xA0, 0x00000017, Zero)
                        }

                        Store (Arg0, ECD2)
                    }

                    Method (GETA, 1, Serialized)
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            Return (SAA0)
                        }

                        If (LEqual (Arg0, One))
                        {
                            Return (SAA1)
                        }

                        If (LEqual (Arg0, 0x02))
                        {
                            Return (SAA2)
                        }

                        If (LEqual (Arg0, 0x03))
                        {
                            Return (SAA3)
                        }

                        Name (FOO, "WMIACPI: ASL: GETA called with InstanceIndex = ")
                        Store (FOO, Debug)
                        Store (Arg0, Debug)
                        Fatal (0xA0, 0x00000002, Zero)
                        Return (Zero)
                    }

                    Method (GETB, 1, Serialized)
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            Return (SAB0)
                        }

                        If (LEqual (Arg0, One))
                        {
                            Return (SAB1)
                        }

                        If (LEqual (Arg0, 0x02))
                        {
                            Return (SAB2)
                        }

                        If (LEqual (Arg0, 0x03))
                        {
                            Return (SAB3)
                        }

                        Name (FOO, "WMIACPI: ASL: GETB called with InstanceIndex = ")
                        Store (FOO, Debug)
                        Store (Arg0, Debug)
                        Fatal (0xA0, 0x00000004, Zero)
                        Return (Zero)
                    }

                    Method (GETC, 1, Serialized)
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            Store (^^H_EC.BRRP, SAC0)
                            Return (SAC0)
                        }

                        If (LEqual (Arg0, One))
                        {
                            Return (SAC1)
                        }

                        If (LEqual (Arg0, 0x02))
                        {
                            Return (SAC2)
                        }

                        If (LEqual (Arg0, 0x03))
                        {
                            Return (SAC3)
                        }

                        Name (FOO, "WMIACPI: ASL: GETC called with InstanceIndex = ")
                        Store (FOO, Debug)
                        Store (Arg0, Debug)
                        Fatal (0xA0, 0x00000006, Zero)
                        Return (Zero)
                    }

                    Method (WQAA, 1, Serialized)
                    {
                        If (LEqual (CCAA, Zero))
                        {
                            Name (FOO, "WMIACPI: ASL: WQAA called, but CCAA is 0\n")
                            Store (FOO, Debug)
                            Fatal (0xA0, 0x00000001, Zero)
                        }

                        Return (GETA (Arg0))
                    }

                    Method (WQAB, 1, Serialized)
                    {
                        If (LEqual (CCAB, Zero))
                        {
                            Name (FOO, "WMIACPI: ASL: WQAB called, but CCAB is 0\n")
                            Store (FOO, Debug)
                            Fatal (0xA0, 0x00000003, Zero)
                        }

                        Return (GETB (Arg0))
                    }

                    Method (WQAC, 1, Serialized)
                    {
                        If (LEqual (CCAC, Zero))
                        {
                            Name (FOO, "WMIACPI: ASL: WQAC called, but CCAC is 0\n")
                            Store (FOO, Debug)
                            Fatal (0xA0, 0x00000005, Zero)
                        }

                        Return (GETC (Arg0))
                    }

                    Method (SETA, 2, Serialized)
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            Store (Arg1, SAA0)
                            Return (SAA0)
                        }

                        If (LEqual (Arg0, One))
                        {
                            Store (Arg1, SAA1)
                            Return (SAA1)
                        }

                        If (LEqual (Arg0, 0x02))
                        {
                            Store (Arg1, SAA2)
                            Return (SAA2)
                        }

                        If (LEqual (Arg0, 0x03))
                        {
                            Store (Arg1, SAA3)
                            Return (SAA3)
                        }

                        Name (FOO, "WMIACPI: ASL: SETA called with InstanceIndex = ")
                        Store (FOO, Debug)
                        Store (Arg0, Debug)
                        Fatal (0xA0, 0x00000008, Zero)
                        Return (Zero)
                    }

                    Method (SETB, 2, Serialized)
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            Store (Arg1, SAB0)
                            Return (SAB0)
                        }

                        If (LEqual (Arg0, One))
                        {
                            Store (Arg1, SAB1)
                            Return (SAB1)
                        }

                        If (LEqual (Arg0, 0x02))
                        {
                            Store (Arg1, SAB2)
                            Return (SAB2)
                        }

                        If (LEqual (Arg0, 0x03))
                        {
                            Store (Arg1, SAB3)
                            Return (SAB3)
                        }

                        Name (FOO, "WMIACPI: ASL: SETB called with InstanceIndex = ")
                        Store (FOO, Debug)
                        Store (Arg0, Debug)
                        Fatal (0xA0, 0x0000000A, Zero)
                        Return (Zero)
                    }

                    Method (SETC, 2, Serialized)
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            Store (Arg1, SAC0)
                            Return (SAC0)
                        }

                        If (LEqual (Arg0, One))
                        {
                            Store (Arg1, SAC1)
                            Return (SAC1)
                        }

                        If (LEqual (Arg0, 0x02))
                        {
                            Store (Arg1, SAC2)
                            Return (SAC2)
                        }

                        If (LEqual (Arg0, 0x03))
                        {
                            Store (Arg1, SAC3)
                            Return (SAC3)
                        }

                        Name (FOO, "WMIACPI: ASL: SETC called with InstanceIndex = ")
                        Store (FOO, Debug)
                        Store (Arg0, Debug)
                        Fatal (0xA0, 0x0000000C, Zero)
                        Return (Zero)
                    }

                    Method (WSAA, 2, Serialized)
                    {
                        If (LEqual (CCAA, Zero))
                        {
                            Name (FOO, "WMIACPI: ASL: WSAA called, but CCAA is 0\n")
                            Store (FOO, Debug)
                            Fatal (0xA0, 0x00000007, Zero)
                        }

                        Return (SETA (Arg0, Arg1))
                    }

                    Method (WSAB, 2, Serialized)
                    {
                        If (LEqual (CCAB, Zero))
                        {
                            Name (FOO, "WMIACPI: ASL: WSAB called, but CCAB is 0\n")
                            Store (FOO, Debug)
                            Fatal (0xA0, 0x00000009, Zero)
                        }

                        Return (SETB (Arg0, Arg1))
                    }

                    Method (WSAC, 2, Serialized)
                    {
                        If (LEqual (CCAC, Zero))
                        {
                            Name (FOO, "WMIACPI: ASL: WSAC called, but CCAC is 0\n")
                            Store (FOO, Debug)
                            Fatal (0xA0, 0x0000000B, Zero)
                        }

                        Return (SETC (Arg0, Arg1))
                    }

                    Method (VINS, 1, Serialized)
                    {
                        If (LLess (Arg0, Zero))
                        {
                            Name (FOO, "WMIACPI: ASL: VINS called with InstanceIndex = ")
                            Store (FOO, Debug)
                            Store (Arg0, Debug)
                            Fatal (0xA0, 0x0000001B, Zero)
                        }

                        If (LGreater (Arg0, 0x03))
                        {
                            Name (FOO1, "WMIACPI: ASL: VINS called with InstanceIndex = ")
                            Store (FOO1, Debug)
                            Store (Arg0, Debug)
                            Fatal (0xA0, 0x0000001C, Zero)
                        }
                    }

                    Method (WMBA, 3, Serialized)
                    {
                        If (LEqual (Arg1, One))
                        {
                            Return (GETA (Arg0))
                        }

                        If (LEqual (Arg1, 0x02))
                        {
                            SETA (Arg0, Arg2)
                            Return (Zero)
                        }

                        If (LEqual (Arg1, 0x03))
                        {
                            VINS (Arg0)
                            If (LEqual (ECD0, Zero))
                            {
                                Name (FOO, "WMIACPI: ASL: WMBA called, but ECD0 is 0\n")
                                Store (FOO, Debug)
                                Fatal (0xA0, 0x00000019, Zero)
                            }

                            Notify (AMW0, 0xD0)
                            Return (Zero)
                        }

                        Name (FOO1, "WMIACPI: ASL: WMBA passed method id ")
                        Store (FOO1, Debug)
                        Store (Arg1, Debug)
                        Fatal (0xA0, 0x0000001A, Zero)
                        Return (Zero)
                    }

                    Method (WMBB, 3, Serialized)
                    {
                        If (LEqual (Arg1, One))
                        {
                            Return (GETB (Arg0))
                        }

                        If (LEqual (Arg1, 0x02))
                        {
                            SETB (Arg0, Arg2)
                            Return (Zero)
                        }

                        If (LEqual (Arg1, 0x03))
                        {
                            VINS (Arg0)
                            If (LEqual (ECD1, Zero))
                            {
                                Name (FOO, "WMIACPI: ASL: WMBB called, but ECD1 is 0\n")
                                Store (FOO, Debug)
                                Fatal (0xA0, 0x0000001D, Zero)
                            }

                            Notify (AMW0, 0xD1)
                            Return (Zero)
                        }

                        Name (FOO1, "WMIACPI: ASL: WMBB passed method id ")
                        Store (FOO1, Debug)
                        Store (Arg1, Debug)
                        Fatal (0xA0, 0x0000001E, Zero)
                        Return (Zero)
                    }

                    Method (WMBC, 3, Serialized)
                    {
                        If (LEqual (Arg1, One))
                        {
                            Return (GETC (Arg0))
                        }

                        If (LEqual (Arg1, 0x02))
                        {
                            SETC (Arg0, Arg2)
                            Return (Zero)
                        }

                        If (LEqual (Arg1, 0x03))
                        {
                            VINS (Arg0)
                            If (LEqual (ECD2, Zero))
                            {
                                Name (FOO, "WMIACPI: ASL: WMBC called, but ECD2 is 0\n")
                                Store (FOO, Debug)
                                Fatal (0xA0, 0x0000001F, Zero)
                            }

                            Notify (AMW0, 0xD2)
                            Return (Zero)
                        }

                        Name (FOO1, "WMIACPI: ASL: WMBC passed method id ")
                        Store (FOO1, Debug)
                        Store (Arg1, Debug)
                        Fatal (0xA0, 0x00000020, Zero)
                        Return (Zero)
                    }

                    Method (WED, 1, Serialized)
                    {
                        If (LEqual (Arg0, 0xD0))
                        {
                            Return (GETA (Zero))
                        }

                        If (LEqual (Arg0, 0xD1))
                        {
                            Return (GETB (Zero))
                        }

                        If (LEqual (Arg0, 0xD2))
                        {
                            Return (GETC (Zero))
                        }

                        Name (FOO, "WMIACPI: ASL: _WED passed event code ")
                        Store (FOO, Debug)
                        Store (Arg0, Debug)
                        Fatal (0xA0, 0x00000021, Zero)
                        Return (Zero)
                    }
                }

                Device (SIO1)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Method (_UID, 0, NotSerialized)  // _UID: Unique ID
                    {
                        Return (SP1O)
                    }

                    Name (CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            _Y0F)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            _Y10)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            _Y11)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If (LAnd (LLess (SP1O, 0x03F0), LGreater (SP1O, 0xF0)))
                        {
                            CreateWordField (CRS, \_SB.PCI0.LPCB.SIO1._Y0F._MIN, GPI0)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.LPCB.SIO1._Y0F._MAX, GPI1)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.LPCB.SIO1._Y0F._LEN, GPIL)  // _LEN: Length
                            Store (SP1O, GPI0)
                            Store (SP1O, GPI1)
                            Store (0x02, GPIL)
                        }

                        If (IOWB)
                        {
                            CreateWordField (CRS, \_SB.PCI0.LPCB.SIO1._Y10._MIN, GP20)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.LPCB.SIO1._Y10._MAX, GP21)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.LPCB.SIO1._Y10._LEN, GPL2)  // _LEN: Length
                            Store (IOWB, GP20)
                            Store (IOWB, GP21)
                            Store (IOWL, GPL2)
                        }

                        If (IOBB)
                        {
                            CreateWordField (CRS, \_SB.PCI0.LPCB.SIO1._Y11._MIN, GP40)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.LPCB.SIO1._Y11._MAX, GP41)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.LPCB.SIO1._Y11._LEN, GPL4)  // _LEN: Length
                            Store (IOBB, GP40)
                            Store (IOBB, GP41)
                            Store (IOBL, GPL4)
                        }

                        Return (CRS)
                    }

                    Mutex (MUT0, 0x00)
                    Method (ENFG, 0, NotSerialized)
                    {
                        Acquire (MUT0, 0xFFFF)
                        Store (0x55, INDX)
                    }

                    Method (EXFG, 0, NotSerialized)
                    {
                        Store (0xAA, INDX)
                        Release (MUT0)
                    }

                    OperationRegion (RNTR, SystemIO, IOWB, 0x10)
                    Field (RNTR, ByteAcc, NoLock, Preserve)
                    {
                        PMES,   8, 
                        PMEE,   8, 
                        PMS1,   8, 
                        PMS2,   8, 
                        Offset (0x05), 
                        PME1,   8, 
                        PME2,   8, 
                        Offset (0x08), 
                        SMS1,   8, 
                        SMS2,   8, 
                        SME1,   8, 
                        SME2,   8, 
                        GPI1,   8, 
                        GPI2,   8, 
                        Offset (0x0F), 
                        GPI4,   8
                    }

                    OperationRegion (CIRR, SystemIO, IOCB, 0x08)
                    Field (CIRR, ByteAcc, NoLock, Preserve)
                    {
                        OFS0,   8, 
                        OFS1,   8, 
                        OFS2,   8, 
                        OFS3,   8, 
                        OFS4,   8, 
                        OFS5,   8, 
                        OFS6,   8, 
                        OFS7,   8
                    }

                    OperationRegion (IOID, SystemIO, SP1O, 0x02)
                    Field (IOID, ByteAcc, NoLock, Preserve)
                    {
                        INDX,   8, 
                        DATA,   8
                    }

                    IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
                    {
                        CR00,   8, 
                        CR01,   8, 
                        CR02,   8, 
                        CR03,   8, 
                        CR04,   8, 
                        CR05,   8, 
                        CR06,   8, 
                        CR07,   8, 
                        CR08,   8, 
                        CR09,   8, 
                        CR0A,   8, 
                        CR0B,   8, 
                        CR0C,   8, 
                        CR0D,   8, 
                        CR0E,   8, 
                        CR0F,   8, 
                        CR10,   8, 
                        CR11,   8, 
                        CR12,   8, 
                        CR13,   8, 
                        CR14,   8, 
                        CR15,   8, 
                        CR16,   8, 
                        CR17,   8, 
                        CR18,   8, 
                        CR19,   8, 
                        CR1A,   8, 
                        CR1B,   8, 
                        CR1C,   8, 
                        CR1D,   8, 
                        CR1E,   8, 
                        CR1F,   8, 
                        CR20,   8, 
                        CR21,   8, 
                        CR22,   8, 
                        CR23,   8, 
                        CR24,   8, 
                        CR25,   8, 
                        CR26,   8, 
                        CR27,   8, 
                        CR28,   8, 
                        CR29,   8, 
                        CR2A,   8, 
                        CR2B,   8, 
                        CR2C,   8, 
                        CR2D,   8, 
                        CR2E,   8, 
                        CR2F,   8, 
                        CR30,   8, 
                        CR31,   8, 
                        CR32,   8, 
                        CR33,   8, 
                        CR34,   8, 
                        CR35,   8, 
                        CR36,   8, 
                        CR37,   8, 
                        CR38,   8, 
                        CR39,   8, 
                        CR3A,   8, 
                        CR3B,   8, 
                        CR3C,   8
                    }

                    Method (DSTA, 2, NotSerialized)
                    {
                    }

                    Method (DCNT, 2, NotSerialized)
                    {
                        ENFG ()
                        If (LEqual (Arg0, Zero))
                        {
                            ShiftLeft (CR24, 0x02, Local1)
                            If (Arg1)
                            {
                                Or (CR02, 0x08, CR02)
                            }
                            Else
                            {
                                And (CR02, 0xF7, CR02)
                            }
                        }

                        If (LEqual (Arg0, One))
                        {
                            ShiftLeft (CR25, 0x02, Local1)
                            If (Arg1)
                            {
                                Or (CR02, 0x80, CR02)
                            }
                            Else
                            {
                                And (CR02, 0x7F, CR02)
                            }
                        }

                        If (LEqual (Arg0, 0x10))
                        {
                            If (Arg1)
                            {
                                Or (CR02, 0x40, CR02)
                            }
                            Else
                            {
                                And (CR02, 0xBF, CR02)
                            }
                        }

                        RRIO (Arg0, Arg1, Local1, 0x08)
                        EXFG ()
                    }

                    Name (CRS1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            _Y12)
                        IRQNoFlags (_Y13)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y14)
                            {}
                    })
                    CreateWordField (CRS1, \_SB.PCI0.LPCB.SIO1._Y12._MIN, IO11)  // _MIN: Minimum Base Address
                    CreateWordField (CRS1, \_SB.PCI0.LPCB.SIO1._Y12._MAX, IO12)  // _MAX: Maximum Base Address
                    CreateWordField (CRS1, \_SB.PCI0.LPCB.SIO1._Y13._INT, IRQM)  // _INT: Interrupts
                    CreateByteField (CRS1, \_SB.PCI0.LPCB.SIO1._Y14._DMA, DMAM)  // _DMA: Direct Memory Access
                    Name (CRS2, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            _Y15)
                        IRQNoFlags (_Y16)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y17)
                            {}
                    })
                    CreateWordField (CRS2, \_SB.PCI0.LPCB.SIO1._Y15._MIN, IO21)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI0.LPCB.SIO1._Y15._MAX, IO22)  // _MAX: Maximum Base Address
                    CreateWordField (CRS2, \_SB.PCI0.LPCB.SIO1._Y16._INT, IRQE)  // _INT: Interrupts
                    CreateByteField (CRS2, \_SB.PCI0.LPCB.SIO1._Y17._DMA, DMAE)  // _DMA: Direct Memory Access
                    Name (CRS3, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            _Y18)
                        IRQNoFlags (_Y19)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y1A)
                            {}
                    })
                    CreateWordField (CRS3, \_SB.PCI0.LPCB.SIO1._Y18._MIN, IO31)  // _MIN: Minimum Base Address
                    CreateWordField (CRS3, \_SB.PCI0.LPCB.SIO1._Y18._MAX, IO32)  // _MAX: Maximum Base Address
                    CreateByteField (CRS3, \_SB.PCI0.LPCB.SIO1._Y18._LEN, LEN3)  // _LEN: Length
                    CreateWordField (CRS3, \_SB.PCI0.LPCB.SIO1._Y19._INT, IRQF)  // _INT: Interrupts
                    CreateByteField (CRS3, \_SB.PCI0.LPCB.SIO1._Y1A._DMA, DMAF)  // _DMA: Direct Memory Access
                    Name (CRS4, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x06,               // Length
                            _Y1B)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            _Y1C)
                        IRQNoFlags (_Y1D)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y1E)
                            {}
                    })
                    CreateWordField (CRS4, \_SB.PCI0.LPCB.SIO1._Y1B._MIN, IO41)  // _MIN: Minimum Base Address
                    CreateWordField (CRS4, \_SB.PCI0.LPCB.SIO1._Y1B._MAX, IO42)  // _MAX: Maximum Base Address
                    CreateWordField (CRS4, \_SB.PCI0.LPCB.SIO1._Y1C._MIN, IO71)  // _MIN: Minimum Base Address
                    CreateWordField (CRS4, \_SB.PCI0.LPCB.SIO1._Y1C._MAX, IO72)  // _MAX: Maximum Base Address
                    CreateWordField (CRS4, \_SB.PCI0.LPCB.SIO1._Y1D._INT, IRQG)  // _INT: Interrupts
                    CreateByteField (CRS4, \_SB.PCI0.LPCB.SIO1._Y1E._DMA, DMAG)  // _DMA: Direct Memory Access
                    Name (CRS5, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            _Y1F)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            _Y20)
                        IRQNoFlags (_Y21)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y22)
                            {}
                    })
                    CreateWordField (CRS5, \_SB.PCI0.LPCB.SIO1._Y1F._MIN, IO51)  // _MIN: Minimum Base Address
                    CreateWordField (CRS5, \_SB.PCI0.LPCB.SIO1._Y1F._MAX, IO52)  // _MAX: Maximum Base Address
                    CreateByteField (CRS5, \_SB.PCI0.LPCB.SIO1._Y1F._LEN, LEN5)  // _LEN: Length
                    CreateWordField (CRS5, \_SB.PCI0.LPCB.SIO1._Y20._MIN, IO61)  // _MIN: Minimum Base Address
                    CreateWordField (CRS5, \_SB.PCI0.LPCB.SIO1._Y20._MAX, IO62)  // _MAX: Maximum Base Address
                    CreateByteField (CRS5, \_SB.PCI0.LPCB.SIO1._Y20._LEN, LEN6)  // _LEN: Length
                    CreateWordField (CRS5, \_SB.PCI0.LPCB.SIO1._Y21._INT, IRQH)  // _INT: Interrupts
                    CreateByteField (CRS5, \_SB.PCI0.LPCB.SIO1._Y22._DMA, DMAH)  // _DMA: Direct Memory Access
                    Name (CRS6, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            _Y23)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            _Y24)
                        IRQNoFlags (_Y25)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y26)
                            {}
                    })
                    CreateWordField (CRS6, \_SB.PCI0.LPCB.SIO1._Y23._MIN, IO81)  // _MIN: Minimum Base Address
                    CreateWordField (CRS6, \_SB.PCI0.LPCB.SIO1._Y23._MAX, IO82)  // _MAX: Maximum Base Address
                    CreateWordField (CRS6, \_SB.PCI0.LPCB.SIO1._Y24._MIN, IO91)  // _MIN: Minimum Base Address
                    CreateWordField (CRS6, \_SB.PCI0.LPCB.SIO1._Y24._MAX, IO92)  // _MAX: Maximum Base Address
                    CreateWordField (CRS6, \_SB.PCI0.LPCB.SIO1._Y25._INT, IRQI)  // _INT: Interrupts
                    CreateByteField (CRS6, \_SB.PCI0.LPCB.SIO1._Y26._DMA, DMAI)  // _DMA: Direct Memory Access
                    Name (CRS7, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            _Y27)
                        IRQNoFlags (_Y28)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y29)
                            {}
                    })
                    CreateWordField (CRS7, \_SB.PCI0.LPCB.SIO1._Y27._MIN, IOA1)  // _MIN: Minimum Base Address
                    CreateWordField (CRS7, \_SB.PCI0.LPCB.SIO1._Y27._MAX, IOA2)  // _MAX: Maximum Base Address
                    CreateWordField (CRS7, \_SB.PCI0.LPCB.SIO1._Y28._INT, IRQJ)  // _INT: Interrupts
                    CreateByteField (CRS7, \_SB.PCI0.LPCB.SIO1._Y29._DMA, DMAJ)  // _DMA: Direct Memory Access
                    Method (DSRS, 2, NotSerialized)
                    {
                        If (LEqual (Arg1, Zero))
                        {
                            CreateWordField (Arg0, 0x02, IO11)
                            CreateWordField (Arg0, 0x09, IRQM)
                            ENFG ()
                            ShiftLeft (CR24, 0x02, Local1)
                            RRIO (Arg1, Zero, Local1, 0x08)
                            RRIO (Arg1, One, IO11, 0x08)
                            ShiftRight (IO11, 0x02, CR24)
                            If (IRQM)
                            {
                                FindSetRightBit (IRQM, Local0)
                                Subtract (Local0, One, Local0)
                                ShiftLeft (Local0, 0x04, Local0)
                                And (CR28, 0x0F, CR28)
                                Or (CR28, Local0, CR28)
                            }
                            Else
                            {
                                And (CR28, 0x0F, CR28)
                            }

                            EXFG ()
                            DCNT (Arg1, One)
                        }

                        If (LEqual (Arg1, One))
                        {
                            CreateWordField (Arg0, 0x02, IO21)
                            CreateWordField (Arg0, 0x09, IRQE)
                            CreateByteField (Arg0, 0x0C, DMAE)
                            CreateWordField (Arg0, 0x0A, IO81)
                            CreateWordField (Arg0, 0x11, IRQI)
                            CreateByteField (Arg0, 0x14, DMAI)
                            ENFG ()
                            ShiftLeft (CR25, 0x02, Local1)
                            And (CR2C, 0x0F, Local2)
                            If (Local2)
                            {
                                RRIO (Arg1, Zero, Local1, 0x08)
                                RRIO (Arg1, One, IO81, 0x08)
                                ShiftRight (IO81, 0x02, CR25)
                                If (IRQI)
                                {
                                    FindSetRightBit (IRQI, Local0)
                                    Subtract (Local0, One, Local0)
                                    And (CR28, 0xF0, CR28)
                                    Or (CR28, Local0, CR28)
                                }
                                Else
                                {
                                    And (CR28, 0xF0, CR28)
                                }

                                If (DMAI)
                                {
                                    FindSetRightBit (DMAI, Local1)
                                    Subtract (Local1, One, Local1)
                                    And (CR2C, 0xF0, CR2C)
                                    Or (CR2C, Local1, CR2C)
                                }
                                Else
                                {
                                    Store (Zero, CR2C)
                                }
                            }
                            Else
                            {
                                RRIO (Arg1, Zero, Local1, 0x08)
                                RRIO (Arg1, One, IO21, 0x08)
                                ShiftRight (IO21, 0x02, CR25)
                                If (IRQE)
                                {
                                    FindSetRightBit (IRQE, Local0)
                                    Subtract (Local0, One, Local0)
                                    And (CR28, 0xF0, CR28)
                                    Or (CR28, Local0, CR28)
                                }
                                Else
                                {
                                    And (CR28, 0xF0, CR28)
                                }

                                If (DMAE)
                                {
                                    FindSetRightBit (DMAE, Local1)
                                    Subtract (Local1, One, Local1)
                                    And (CR2C, 0xF0, CR2C)
                                    Or (CR2C, Local1, CR2C)
                                }
                                Else
                                {
                                    Store (Zero, CR2C)
                                }
                            }

                            EXFG ()
                            DCNT (Arg1, One)
                        }

                        If (LEqual (Arg1, 0x10))
                        {
                            CreateWordField (Arg0, 0x02, IOA1)
                            CreateWordField (Arg0, 0x09, IRQJ)
                            CreateByteField (Arg0, 0x0C, DMAJ)
                            ENFG ()
                            And (IOA1, 0x03F8, Local0)
                            ShiftRight (Local0, 0x02, CR1F)
                            And (IOA1, 0xFC00, Local0)
                            ShiftRight (Local0, 0x0A, CR20)
                            If (IRQJ)
                            {
                                FindSetRightBit (IRQJ, Local0)
                                Subtract (Local0, One, Local0)
                                ShiftLeft (Local0, 0x04, Local0)
                                And (CR18, 0x0F, CR18)
                                Or (CR18, Local0, CR18)
                            }
                            Else
                            {
                                And (CR18, 0x0F, CR18)
                            }

                            If (DMAJ)
                            {
                                FindSetRightBit (DMAJ, Local0)
                                Subtract (Local0, One, Local0)
                                And (CR18, 0xF0, CR18)
                                Or (CR18, Local0, CR18)
                            }
                            Else
                            {
                                And (CR18, 0xF0, CR18)
                            }

                            EXFG ()
                            DCNT (Arg1, One)
                        }
                    }
                }

                Method (SIOS, 1, NotSerialized)
                {
                    Store ("SIOS", Debug)
                    Store (0x02, ^SIO1.OFS7)
                    And (^SIO1.OFS0, 0x20, Local0)
                    If (LEqual (Local0, Zero))
                    {
                        Store (0x50, ^SIO1.OFS7)
                        Store (0x20, ^SIO1.OFS7)
                        Store (One, ^SIO1.OFS7)
                        And (^SIO1.OFS0, 0x87, Local0)
                        Or (Local0, 0x30, ^SIO1.OFS0)
                        Store (0x02, ^SIO1.OFS7)
                        Store (0x84, ^SIO1.OFS0)
                        If (LAnd (LEqual (^SIO1.OFS1, 0x2B), LEqual (^SIO1.OFS2, 0x2B)))
                        {
                            Store (0x03, ^SIO1.OFS6)
                            Store (0x06, ^SIO1.OFS7)
                            Store (0x3C, ^SIO1.OFS0)
                            Store (0x0F, ^SIO1.OFS1)
                            Store (Zero, ^SIO1.OFS2)
                            Store (0x04, ^SIO1.OFS3)
                            Store (0x80, ^SIO1.OFS4)
                            Store (0x0C, ^SIO1.OFS5)
                            Store (Zero, ^SIO1.OFS6)
                            Store (0x02, ^SIO1.OFS7)
                            Store (0x80, ^SIO1.OFS3)
                            Store (0x0F, ^SIO1.OFS4)
                        }
                        Else
                        {
                            Store (0x45, ^SIO1.OFS3)
                            Store (0xBA, ^SIO1.OFS4)
                            Store (0x12, ^SIO1.OFS5)
                            Store (0x80, ^SIO1.OFS6)
                        }

                        Store (0xE4, ^SIO1.OFS0)
                        Store (Zero, ^SIO1.OFS7)
                        Store (0x80, ^SIO1.OFS5)
                    }

                    Store (0xFF, ^SIO1.PMS2)
                    Store (One, ^SIO1.PMES)
                    Or (^SIO1.PME2, 0x02, ^SIO1.PME2)
                    Or (^SIO1.PMEE, One, ^SIO1.PMEE)
                    Store (0xFF, ^SIO1.PMS2)
                    Store (One, ^SIO1.PMES)
                    ^SIO1.ENFG ()
                    Store (Zero, ^SIO1.CR19)
                    And (^SIO1.CR02, 0x9F, ^SIO1.CR02)
                    Or (^SIO1.CR02, 0x40, ^SIO1.CR02)
                    ^SIO1.EXFG ()
                    Return (Zero)
                }

                Method (SIOW, 1, NotSerialized)
                {
                    Store ("SIOW", Debug)
                    And (^SIO1.PMS2, 0x02, Local0)
                    And (^SIO1.PME2, 0xFD, ^SIO1.PME2)
                    And (^SIO1.PMEE, 0xFE, ^SIO1.PMEE)
                    Store (0xFF, ^SIO1.PMS2)
                    Store (One, ^SIO1.PMES)
                    ^SIO1.ENFG ()
                    If (Local0)
                    {
                        Store (One, ^SIO1.CR19)
                    }
                    Else
                    {
                        Store (Zero, ^SIO1.CR19)
                    }

                    ^SIO1.EXFG ()
                }

                Method (SIOH, 0, NotSerialized)
                {
                    Store ("SIOH", Debug)
                }

                Device (RMSC)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, 0x10)  // _UID: Unique ID
                    Name (CRS1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0022,             // Range Minimum
                            0x0022,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x0044,             // Range Minimum
                            0x0044,             // Range Maximum
                            0x00,               // Alignment
                            0x1C,               // Length
                            )
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x00,               // Alignment
                            0x0B,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x00,               // Alignment
                            0x0E,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0084,             // Range Minimum
                            0x0084,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0088,             // Range Minimum
                            0x0088,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x008C,             // Range Minimum
                            0x008C,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0090,             // Range Minimum
                            0x0090,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x00A2,             // Range Minimum
                            0x00A2,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x00E0,             // Range Minimum
                            0x00E0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Name (CRS2, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0022,             // Range Minimum
                            0x0022,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x0044,             // Range Minimum
                            0x0044,             // Range Maximum
                            0x00,               // Alignment
                            0x1C,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x00,               // Alignment
                            0x0E,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0084,             // Range Minimum
                            0x0084,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0088,             // Range Minimum
                            0x0088,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x008C,             // Range Minimum
                            0x008C,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0090,             // Range Minimum
                            0x0090,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x00A2,             // Range Minimum
                            0x00A2,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x00E0,             // Range Minimum
                            0x00E0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If (And (MBEC, 0xFFFF))
                        {
                            Return (CRS1)
                        }
                        Else
                        {
                            Return (CRS2)
                        }
                    }
                }

                Device (MATH)
                {
                    Name (_HID, EisaId ("PNP0C04"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (PS2K)
                {
                    Name (_HID, EisaId ("PNP0303"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP030B"))  // _CID: Compatible ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (And (IOST, 0x0400))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {1}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            FixedIO (
                                0x0060,             // Address
                                0x01,               // Length
                                )
                            FixedIO (
                                0x0064,             // Address
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {1}
                        }
                        EndDependentFn ()
                    })
                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                        Store (Arg0, KBFG)
                    }
                }

                Scope (\)
                {
                    Name (KBFG, One)
                }

                Method (PS2K._PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x1D, One))
                }

                Device (PS2M)
                {
                    Name (_HID, EisaId ("PNP0F03"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0F13"))  // _CID: Compatible ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (And (IOST, 0x4000))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Name (CRS1, ResourceTemplate ()
                    {
                        IRQNoFlags ()
                            {12}
                    })
                    Name (CRS2, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {12}
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If (And (IOST, 0x0400))
                        {
                            Return (CRS1)
                        }
                        Else
                        {
                            Return (CRS2)
                        }
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IRQNoFlags ()
                                {12}
                        }
                        EndDependentFn ()
                    })
                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                        Store (Arg0, MSFG)
                    }
                }

                Scope (\)
                {
                    Name (MSFG, One)
                }

                Method (PS2M._PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x1D, One))
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Store (Package (0x02)
                        {
                            "compatible", 
                            Buffer (0x0D)
                            {
                                "pci8086,1c46"
                            }
                        }, Local0)
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }
            }

            Device (P0P1)
            {
                Name (_ADR, 0x001E0000)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR01 ())
                    }

                    Return (PR01 ())
                }
            }

            Device (UHC1)
            {
                Name (_ADR, 0x001D0001)  // _ADR: Address
            }

            Device (UHC2)
            {
                Name (_ADR, 0x001D0002)  // _ADR: Address
            }

            Device (UHC3)
            {
                Name (_ADR, 0x001D0003)  // _ADR: Address
            }

            Device (UHC4)
            {
                Name (_ADR, 0x001D0004)  // _ADR: Address
            }

            Device (UHC5)
            {
                Name (_ADR, 0x001A0001)  // _ADR: Address
            }

            Device (UHC6)
            {
                Name (_ADR, 0x001A0002)  // _ADR: Address
            }

            Device (UHC8)
            {
                Name (_ADR, 0x001A0003)  // _ADR: Address
            }

            Device (RP01)
            {
                Name (_ADR, 0x001C0000)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Store (0xC8, Local0)
                        While (Local0)
                        {
                            Store (One, PMSX)
                            If (PMSX)
                            {
                                Decrement (Local0)
                            }
                            Else
                            {
                                Store (Zero, Local0)
                            }
                        }

                        Notify (PXSX, 0x02)
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR04 ())
                    }

                    Return (PR04 ())
                }
            }

            Device (RP02)
            {
                Name (_ADR, 0x001C0001)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        If (LEqual (Arg2, Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                           
                            })
                        }

                        Return (Package (0x0E)
                        {
                            "device-id", 
                            Buffer (0x04)
                            {
                                 0x30, 0x00, 0x00, 0x00                         
                            }, 

                            "name", 
                            "pci168c,30", 
                            "AAPL,slot-name", 
                            Buffer (0x08)
                            {
                                "AirPort"
                            }, 

                            "device_type", 
                            Buffer (0x08)
                            {
                                "AirPort"
                            }, 

                            "model", 
                            Buffer (0x33)
                            {
                                "Atheros 9285 802.11 b/g/n Wireless Network Adapter"
                            }, 

                            "subsystem-id", 
                            Buffer (0x04)
                            {
                                 0x8F, 0x00, 0x00, 0x00                         
                            }, 

                            "subsystem-vendor-id", 
                            Buffer (0x04)
                            {
                                 0x6B, 0x10, 0x00, 0x00                         
                            }
                        })
                    }
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Store (0xC8, Local0)
                        While (Local0)
                        {
                            Store (One, PMSX)
                            If (PMSX)
                            {
                                Decrement (Local0)
                            }
                            Else
                            {
                                Store (Zero, Local0)
                            }
                        }

                        Notify (PXSX, 0x02)
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR05 ())
                    }

                    Return (PR05 ())
                }
            }

            Device (RP03)
            {
                Name (_ADR, 0x001C0002)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                    Name (_SUN, 0x02)  // _SUN: Slot User Number
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Store (0xC8, Local0)
                        While (Local0)
                        {
                            Store (One, PMSX)
                            If (PMSX)
                            {
                                Decrement (Local0)
                            }
                            Else
                            {
                                Store (Zero, Local0)
                            }
                        }

                        Notify (PXSX, 0x02)
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR06 ())
                    }

                    Return (PR06 ())
                }
            }

            Device (RP04)
            {
                Name (_ADR, 0x001C0003)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Store (0xC8, Local0)
                        While (Local0)
                        {
                            Store (One, PMSX)
                            If (PMSX)
                            {
                                Decrement (Local0)
                            }
                            Else
                            {
                                Store (Zero, Local0)
                            }
                        }

                        Notify (PXSX, 0x02)
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR07 ())
                    }

                    Return (PR07 ())
                }
            }

            Device (RP05)
            {
                Name (_ADR, 0x001C0004)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Store (0xC8, Local0)
                        While (Local0)
                        {
                            Store (One, PMSX)
                            If (PMSX)
                            {
                                Decrement (Local0)
                            }
                            Else
                            {
                                Store (Zero, Local0)
                            }
                        }

                        Notify (PXSX, 0x02)
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR08 ())
                    }

                    Return (PR08 ())
                }
            }

            Device (RP06)
            {
                Name (_ADR, 0x001C0005)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Store (0xC8, Local0)
                        While (Local0)
                        {
                            Store (One, PMSX)
                            If (PMSX)
                            {
                                Decrement (Local0)
                            }
                            Else
                            {
                                Store (Zero, Local0)
                            }
                        }

                        Notify (PXSX, 0x02)
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR09 ())
                    }

                    Return (PR09 ())
                }
            }

            Device (RP07)
            {
                Name (_ADR, 0x001C0006)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Store (0xC8, Local0)
                        While (Local0)
                        {
                            Store (One, PMSX)
                            If (PMSX)
                            {
                                Decrement (Local0)
                            }
                            Else
                            {
                                Store (Zero, Local0)
                            }
                        }

                        Notify (PXSX, 0x02)
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0E)
                    }

                    Return (PR0E)
                }
            }

            Device (RP08)
            {
                Name (_ADR, 0x001C0007)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Store (0xC8, Local0)
                        While (Local0)
                        {
                            Store (One, PMSX)
                            If (PMSX)
                            {
                                Decrement (Local0)
                            }
                            Else
                            {
                                Store (Zero, Local0)
                            }
                        }

                        Notify (PXSX, 0x02)
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0F)
                    }

                    Return (PR0F)
                }
            }

            Device (P0P2)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR02 ())
                    }

                    Return (PR02 ())
                }

                Device (PEGP)
                {
                    Name (_ADR, 0xFFFF)  // _ADR: Address
                }
            }

            Device (PEG1)
            {
                Name (_ADR, 0x00010001)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0A ())
                    }

                    Return (PR0A ())
                }
            }

            Device (PEG2)
            {
                Name (_ADR, 0x00010002)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0B ())
                    }

                    Return (PR0B ())
                }
            }

            Device (PEG3)
            {
                Name (_ADR, 0x00060000)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0C)
                    }

                    Return (PR0C)
                }
            }

            Device (B0D4)
            {
                Name (_ADR, 0x00040000)  // _ADR: Address
            }

            Device (IMEI)
            {
                Name (_ADR, 0x00160000)  // _ADR: Address
            }

            Device (MEI)
            {
                Name (_ADR, 0x00160000)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Store (Package (0x02)
                        {
                            "layout-id", 
                            Buffer (0x04)
                            {
                                 0x3A, 0x1C, 0x00, 0x00                         
                            }
                        }, Local0)
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }
            }
        }

        Scope (\_GPE)
        {
            Method (_L1D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                \_SB.PCI0.LPCB.SIOH ()
                Notify (\_SB.PWRB, 0x02)
            }
        }
    }

    Scope (\)
    {
        OperationRegion (IO_T, SystemIO, 0x1000, 0x10)
        Field (IO_T, ByteAcc, NoLock, Preserve)
        {
            TRPI,   16, 
            Offset (0x04), 
            Offset (0x06), 
            Offset (0x08), 
            TRP0,   8, 
            Offset (0x0A), 
            Offset (0x0B), 
            Offset (0x0C), 
            Offset (0x0D), 
            Offset (0x0E), 
            Offset (0x0F), 
            Offset (0x10)
        }

        OperationRegion (IO_D, SystemIO, 0x0810, 0x04)
        Field (IO_D, ByteAcc, NoLock, Preserve)
        {
            TRPD,   8
        }

        OperationRegion (IO_H, SystemIO, 0x1010, 0x10)
        Field (IO_H, ByteAcc, NoLock, Preserve)
        {
            TRPH,   8
        }

        OperationRegion (PMIO, SystemIO, PMBS, 0x80)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
            Offset (0x20), 
            Offset (0x22), 
                ,   3, 
            GPS3,   1, 
            Offset (0x28), 
            Offset (0x2A), 
                ,   3, 
            GPE3,   1, 
            Offset (0x3C), 
                ,   1, 
            UPRW,   1, 
            Offset (0x42), 
                ,   1, 
            GPEC,   1, 
            Offset (0x64), 
                ,   9, 
            SCIS,   1, 
            Offset (0x66)
        }

        OperationRegion (GPIO, SystemIO, GPBS, 0x64)
        Field (GPIO, ByteAcc, NoLock, Preserve)
        {
            GU00,   8, 
            GU01,   8, 
            GU02,   8, 
            GU03,   8, 
            GIO0,   8, 
            GIO1,   8, 
            GIO2,   8, 
            Offset (0x0C), 
            GL00,   8, 
            GL01,   8, 
            GL02,   8, 
                ,   3, 
            GP27,   1, 
            GP28,   1, 
            GP03,   1, 
            GP05,   1, 
            GP06,   1, 
            Offset (0x18), 
            GB00,   8, 
            GB01,   8, 
            GB02,   8, 
            GB03,   8, 
            GP16,   1, 
            Offset (0x2C), 
            GIV0,   8, 
            GIV1,   8, 
            GIV2,   8, 
            GIV3,   8, 
            GU04,   8, 
            GU05,   8, 
            GU06,   8, 
            GU07,   8, 
            GI03,   8, 
            GIO4,   8, 
            GI05,   8, 
            GIO6,   8, 
            GIO7,   8, 
            GL04,   8, 
            GL05,   8, 
            GL06,   8, 
            GL07,   8, 
            Offset (0x40), 
            GU08,   8, 
            GU09,   8, 
            GU0A,   8, 
            GU0B,   8, 
            GIO8,   8, 
            GIO9,   8, 
            GIOA,   8, 
            GIOB,   8, 
            GL08,   8, 
            GL09,   8, 
            GL0A,   8, 
            GL0B,   8
        }

        OperationRegion (RCRB, SystemMemory, SRCB, 0x4000)
        Field (RCRB, DWordAcc, Lock, Preserve)
        {
            Offset (0x1000), 
            Offset (0x3000), 
            Offset (0x3404), 
            HPAS,   2, 
                ,   5, 
            HPAE,   1, 
            Offset (0x3418), 
                ,   1, 
                ,   1, 
            SATD,   1, 
            SMBD,   1, 
            HDAD,   1, 
            Offset (0x341A), 
            RP1D,   1, 
            RP2D,   1, 
            RP3D,   1, 
            RP4D,   1, 
            RP5D,   1, 
            RP6D,   1, 
            RP7D,   1, 
            RP8D,   1, 
            Offset (0x359C), 
            UP0D,   1, 
            UP1D,   1, 
            UP2D,   1, 
            UP3D,   1, 
            UP4D,   1, 
            UP5D,   1, 
            UP6D,   1, 
            UP7D,   1, 
            UP8D,   1, 
            UP9D,   1, 
            UPAD,   1, 
            UPBD,   1, 
            UPCD,   1, 
            UPDD,   1, 
                ,   1, 
            Offset (0x359E)
        }
    }

    Scope (_SB.PCI0)
    {
        Device (GLAN)
        {
            Name (_ADR, 0x00190000)  // _ADR: Address
        }

        Device (EH01)
        {
            Name (_ADR, 0x001D0000)  // _ADR: Address
            OperationRegion (PWKE, PCI_Config, 0x62, 0x04)
            Field (PWKE, DWordAcc, NoLock, Preserve)
            {
                    ,   1, 
                PWUC,   8
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (Arg0)
                {
                    Store (Ones, PWUC)
                }
                Else
                {
                    Store (Zero, PWUC)
                }
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x02)
            }

            Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
            {
                Return (0x02)
            }

            Device (HUBN)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (PR01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        Zero, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        Buffer (0x14)
                        {
                            /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */  0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0010 */  0x00, 0x00, 0x00, 0x00                         
                        }
                    })
                    Device (PR11)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x21, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0010 */  0x00, 0x00, 0x00, 0x00                         
                            }
                        })
                    }

                    Device (PR12)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x21, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0010 */  0x00, 0x00, 0x00, 0x00                         
                            }
                        })
                    }

                    Device (PR13)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x21, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0010 */  0x00, 0x00, 0x00, 0x00                         
                            }
                        })
                    }

                    Device (PR14)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x21, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0010 */  0x00, 0x00, 0x00, 0x00                         
                            }
                        })
                        Alias (SBV1, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If (LEqual (Arg0, ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                Name (T_0, Zero)
                                Store (ToInteger (Arg2), T_0)
                                If (LEqual (T_0, Zero))
                                {
                                    If (LEqual (Arg1, One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                           
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                           
                                        })
                                    }
                                }
                                ElseIf (LEqual (T_0, One))
                                {
                                    If (LEqual (SDGV, 0xFF))
                                    {
                                        Return (Zero)
                                    }
                                    Else
                                    {
                                        Return (One)
                                    }
                                }
                                ElseIf (LEqual (T_0, 0x02))
                                {
                                    Return (SDGV)
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR15)
                    {
                        Name (_ADR, 0x05)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0010 */  0x00, 0x00, 0x00, 0x00                         
                            }
                        })
                        Alias (SBV2, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If (LEqual (Arg0, ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                Name (T_0, Zero)
                                Store (ToInteger (Arg2), T_0)
                                If (LEqual (T_0, Zero))
                                {
                                    If (LEqual (Arg1, One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                           
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                           
                                        })
                                    }
                                }
                                ElseIf (LEqual (T_0, One))
                                {
                                    If (LEqual (SDGV, 0xFF))
                                    {
                                        Return (Zero)
                                    }
                                    Else
                                    {
                                        Return (One)
                                    }
                                }
                                ElseIf (LEqual (T_0, 0x02))
                                {
                                    Return (SDGV)
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR16)
                    {
                        Name (_ADR, 0x06)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0010 */  0x00, 0x00, 0x00, 0x00                         
                            }
                        })
                        Alias (SBV1, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If (LEqual (Arg0, ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                Name (T_0, Zero)
                                Store (ToInteger (Arg2), T_0)
                                If (LEqual (T_0, Zero))
                                {
                                    If (LEqual (Arg1, One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                           
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                           
                                        })
                                    }
                                }
                                ElseIf (LEqual (T_0, One))
                                {
                                    If (LEqual (SDGV, 0xFF))
                                    {
                                        Return (Zero)
                                    }
                                    Else
                                    {
                                        Return (One)
                                    }
                                }
                                ElseIf (LEqual (T_0, 0x02))
                                {
                                    Return (SDGV)
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR17)
                    {
                        Name (_ADR, 0x07)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0010 */  0x00, 0x00, 0x00, 0x00                         
                            }
                        })
                        Alias (SBV2, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If (LEqual (Arg0, ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                Name (T_0, Zero)
                                Store (ToInteger (Arg2), T_0)
                                If (LEqual (T_0, Zero))
                                {
                                    If (LEqual (Arg1, One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                           
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                           
                                        })
                                    }
                                }
                                ElseIf (LEqual (T_0, One))
                                {
                                    If (LEqual (SDGV, 0xFF))
                                    {
                                        Return (Zero)
                                    }
                                    Else
                                    {
                                        Return (One)
                                    }
                                }
                                ElseIf (LEqual (T_0, 0x02))
                                {
                                    Return (SDGV)
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR18)
                    {
                        Name (_ADR, 0x08)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0010 */  0x00, 0x00, 0x00, 0x00                         
                            }
                        })
                    }
                }
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg2, Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x12)
                {
                    "device-id", 
                    Buffer (0x04)
                    {
                         0x26, 0x1C, 0x00, 0x00                         
                    }, 

                    "AAPL,clock-id", 
                    Buffer (One)
                    {
                         0x01                                           
                    }, 

                    "built-in", 
                    Buffer (One)
                    {
                         0x00                                           
                    }, 

                    "device_type", 
                    Buffer (0x05)
                    {
                        "EHCI"
                    }, 

                    "AAPL,current-available", 
                    0x0834, 
                    "AAPL,current-extra", 
                    0x0898, 
                    "AAPL,current-extra-in-sleep", 
                    0x0640, 
                    "AAPL,device-internal", 
                    0x02, 
                    "AAPL,max-port-current-in-sleep", 
                    0x0834
                })
            }
        }

        Device (EH02)
        {
            Name (_ADR, 0x001A0000)  // _ADR: Address
            OperationRegion (PWKE, PCI_Config, 0x62, 0x04)
            Field (PWKE, DWordAcc, NoLock, Preserve)
            {
                    ,   1, 
                PWUC,   6
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (Arg0)
                {
                    Store (Ones, PWUC)
                }
                Else
                {
                    Store (Zero, PWUC)
                }
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x02)
            }

            Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
            {
                Return (0x02)
            }

            Device (HUBN)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (PR01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        Zero, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        Buffer (0x14)
                        {
                            /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */  0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0010 */  0x00, 0x00, 0x00, 0x00                         
                        }
                    })
                    Device (PR11)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x21, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0010 */  0x00, 0x00, 0x00, 0x00                         
                            }
                        })
                    }

                    Device (PR12)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x21, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0010 */  0x00, 0x00, 0x00, 0x00                         
                            }
                        })
                        Alias (SBV1, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If (LEqual (Arg0, ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                Name (T_0, Zero)
                                Store (ToInteger (Arg2), T_0)
                                If (LEqual (T_0, Zero))
                                {
                                    If (LEqual (Arg1, One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                           
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                           
                                        })
                                    }
                                }
                                ElseIf (LEqual (T_0, One))
                                {
                                    If (LEqual (SDGV, 0xFF))
                                    {
                                        Return (Zero)
                                    }
                                    Else
                                    {
                                        Return (One)
                                    }
                                }
                                ElseIf (LEqual (T_0, 0x02))
                                {
                                    Return (SDGV)
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR13)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x21, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0010 */  0x00, 0x00, 0x00, 0x00                         
                            }
                        })
                        Alias (SBV2, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If (LEqual (Arg0, ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                Name (T_0, Zero)
                                Store (ToInteger (Arg2), T_0)
                                If (LEqual (T_0, Zero))
                                {
                                    If (LEqual (Arg1, One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                           
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                           
                                        })
                                    }
                                }
                                ElseIf (LEqual (T_0, One))
                                {
                                    If (LEqual (SDGV, 0xFF))
                                    {
                                        Return (Zero)
                                    }
                                    Else
                                    {
                                        Return (One)
                                    }
                                }
                                ElseIf (LEqual (T_0, 0x02))
                                {
                                    Return (SDGV)
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR14)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x21, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0010 */  0x00, 0x00, 0x00, 0x00                         
                            }
                        })
                    }

                    Device (PR15)
                    {
                        Name (_ADR, 0x05)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0010 */  0x00, 0x00, 0x00, 0x00                         
                            }
                        })
                    }

                    Device (PR16)
                    {
                        Name (_ADR, 0x06)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0010 */  0x00, 0x00, 0x00, 0x00                         
                            }
                        })
                    }
                }
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg2, Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x12)
                {
                    "device-id", 
                    Buffer (0x04)
                    {
                         0x2D, 0x1C, 0x00, 0x00                         
                    }, 

                    "AAPL,clock-id", 
                    Buffer (One)
                    {
                         0x01                                           
                    }, 

                    "built-in", 
                    Buffer (One)
                    {
                         0x00                                           
                    }, 

                    "device_type", 
                    Buffer (0x05)
                    {
                        "EHCI"
                    }, 

                    "AAPL,current-available", 
                    0x0834, 
                    "AAPL,current-extra", 
                    0x0898, 
                    "AAPL,current-extra-in-sleep", 
                    0x0640, 
                    "AAPL,device-internal", 
                    0x02, 
                    "AAPL,max-port-current-in-sleep", 
                    0x0834
                })
            }
        }

        Device (HDEF)
        {
            Name (_ADR, 0x001B0000)  // _ADR: Address
            OperationRegion (HDAR, PCI_Config, 0x4C, 0x10)
            Field (HDAR, WordAcc, NoLock, Preserve)
            {
                DCKA,   1, 
                Offset (0x01), 
                DCKM,   1, 
                    ,   6, 
                DCKS,   1, 
                Offset (0x08), 
                    ,   15, 
                PMES,   1
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg2, Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x0A)
                {
                    "codec-id", 
                    Buffer (0x04)
                    {
                         0x62, 0x06, 0xEC, 0x10                         
                    }, 

                    "layout-id", 
                    Buffer (0x04)
                    {
                         0x03, 0x00, 0x00, 0x00                         
                    }, 

                    "model", 
                    Buffer (0x0B)
                    {
                        "Realtek HD"
                    }, 

                    "name", 
                    "Realtek ALC662", 
                    "PinConfigurations", 
                    Buffer (One)
                    {
                         0x00                                           
                    }
                })
            }
        }

        Device (SAT0)
        {
            Name (_ADR, 0x001F0002)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Store (Package (0x02)
                    {
                        "device-id", 
                        Buffer (0x04)
                        {
                             0x81, 0x26, 0x00, 0x00                         
                        }
                    }, Local0)
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }

        Device (SAT1)
        {
            Name (_ADR, 0x001F0005)  // _ADR: Address
        }

        Device (SBUS)
        {
            Name (_ADR, 0x001F0003)  // _ADR: Address
            OperationRegion (SMBP, PCI_Config, 0x40, 0xC0)
            Field (SMBP, DWordAcc, NoLock, Preserve)
            {
                    ,   2, 
                I2CE,   1
            }

            OperationRegion (SMPB, PCI_Config, 0x20, 0x04)
            Field (SMPB, DWordAcc, NoLock, Preserve)
            {
                    ,   5, 
                SBAR,   11
            }

            OperationRegion (SMBI, SystemIO, ShiftLeft (SBAR, 0x05), 0x10)
            Field (SMBI, ByteAcc, NoLock, Preserve)
            {
                HSTS,   8, 
                Offset (0x02), 
                HCON,   8, 
                HCOM,   8, 
                TXSA,   8, 
                DAT0,   8, 
                DAT1,   8, 
                HBDR,   8, 
                PECR,   8, 
                RXSA,   8, 
                SDAT,   16
            }

            Method (SSXB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRXB, 1, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Or (Arg0, One, TXSA)
                Store (0x44, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (DAT0)
                }

                Return (0xFFFF)
            }

            Method (SWRB, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (Arg2, DAT0)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Or (Arg0, One, TXSA)
                Store (Arg1, HCOM)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (DAT0)
                }

                Return (0xFFFF)
            }

            Method (SWRW, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                And (Arg2, 0xFF, DAT1)
                And (ShiftRight (Arg2, 0x08), 0xFF, DAT0)
                Store (0x4C, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDW, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Or (Arg0, One, TXSA)
                Store (Arg1, HCOM)
                Store (0x4C, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (Or (ShiftLeft (DAT0, 0x08), DAT1))
                }

                Return (Ones)
            }

            Method (SBLW, 4, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Arg3, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (SizeOf (Arg2), DAT0)
                Store (Zero, Local1)
                Store (DerefOf (Index (Arg2, Zero)), HBDR)
                Store (0x54, HCON)
                While (LGreater (SizeOf (Arg2), Local1))
                {
                    Store (0x0FA0, Local0)
                    While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                    }

                    If (LNot (Local0))
                    {
                        KILL ()
                        Return (Zero)
                    }

                    Store (0x80, HSTS)
                    Increment (Local1)
                    If (LGreater (SizeOf (Arg2), Local1))
                    {
                        Store (DerefOf (Index (Arg2, Local1)), HBDR)
                    }
                }

                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SBLR, 3, Serialized)
            {
                Name (TBUF, Buffer (0x0100) {})
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Arg2, I2CE)
                Store (0xBF, HSTS)
                Or (Arg0, One, TXSA)
                Store (Arg1, HCOM)
                Store (0x54, HCON)
                Store (0x0FA0, Local0)
                While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                {
                    Decrement (Local0)
                    Stall (0x32)
                }

                If (LNot (Local0))
                {
                    KILL ()
                    Return (Zero)
                }

                Store (DAT0, Index (TBUF, Zero))
                Store (0x80, HSTS)
                Store (One, Local1)
                While (LLess (Local1, DerefOf (Index (TBUF, Zero))))
                {
                    Store (0x0FA0, Local0)
                    While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                    }

                    If (LNot (Local0))
                    {
                        KILL ()
                        Return (Zero)
                    }

                    Store (HBDR, Index (TBUF, Local1))
                    Store (0x80, HSTS)
                    Increment (Local1)
                }

                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (TBUF)
                }

                Return (Zero)
            }

            Method (STRT, 0, Serialized)
            {
                Store (0xC8, Local0)
                While (Local0)
                {
                    If (And (HSTS, 0x40))
                    {
                        Decrement (Local0)
                        Sleep (One)
                        If (LEqual (Local0, Zero))
                        {
                            Return (One)
                        }
                    }
                    Else
                    {
                        Store (Zero, Local0)
                    }
                }

                Store (0x0FA0, Local0)
                While (Local0)
                {
                    If (And (HSTS, One))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                        If (LEqual (Local0, Zero))
                        {
                            KILL ()
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (COMP, 0, Serialized)
            {
                Store (0x0FA0, Local0)
                While (Local0)
                {
                    If (And (HSTS, 0x02))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Decrement (Local0)
                        Stall (0x32)
                        If (LEqual (Local0, Zero))
                        {
                            KILL ()
                        }
                    }
                }

                Return (Zero)
            }

            Method (KILL, 0, Serialized)
            {
                Or (HCON, 0x02, HCON)
                Or (HSTS, 0xFF, HSTS)
            }

            Device (BUS0)
            {
                Name (_CID, "smbus")  // _CID: Compatible ID
                Name (_ADR, Zero)  // _ADR: Address
                Device (DVL0)
                {
                    Name (_ADR, 0x57)  // _ADR: Address
                    Name (_CID, "diagsvault")  // _CID: Compatible ID
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Store (Package (0x02)
                            {
                                "address", 
                                0x57
                            }, Local0)
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }
            }
        }
    }

    Scope (_SB.PCI0.SAT0)
    {
        Name (^NATA, Package (0x01)
        {
            0x001F0002
        })
        Name (REGF, One)
        Method (REG, 2, NotSerialized)
        {
            If (LEqual (Arg0, 0x02))
            {
                Store (Arg1, REGF)
            }
        }

        Name (TMD0, Buffer (0x14) {})
        CreateDWordField (TMD0, Zero, PIO0)
        CreateDWordField (TMD0, 0x04, DMA0)
        CreateDWordField (TMD0, 0x08, PIO1)
        CreateDWordField (TMD0, 0x0C, DMA1)
        CreateDWordField (TMD0, 0x10, CHNF)
        Device (PRT0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
            {
                Store (0x78, PIO0)
                Store (0x14, DMA0)
                Store (0x78, PIO1)
                Store (0x14, DMA1)
                Or (CHNF, 0x05, CHNF)
                Return (TMD0)
            }

            Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
            {
            }

            Device (DRV0)
            {
                Name (_ADR, Zero)  // _ADR: Address
            }

            Device (DRV1)
            {
                Name (_ADR, One)  // _ADR: Address
            }
        }

        Device (PRT1)
        {
            Name (_ADR, One)  // _ADR: Address
            Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
            {
                Store (0x78, PIO0)
                Store (0x14, DMA0)
                Store (0x78, PIO1)
                Store (0x14, DMA1)
                Store (Zero, CHNF)
                Or (CHNF, 0x05, CHNF)
                Return (TMD0)
            }

            Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
            {
            }

            Device (DRV0)
            {
                Name (_ADR, Zero)  // _ADR: Address
            }

            Device (DRV1)
            {
                Name (_ADR, One)  // _ADR: Address
            }
        }
    }

    Scope (_SB.PCI0.SAT1)
    {
        Name (REGF, One)
        Method (REG, 2, NotSerialized)
        {
            If (LEqual (Arg0, 0x02))
            {
                Store (Arg1, REGF)
            }
        }

        Name (TMD0, Buffer (0x14) {})
        CreateDWordField (TMD0, Zero, PIO0)
        CreateDWordField (TMD0, 0x04, DMA0)
        CreateDWordField (TMD0, 0x08, PIO1)
        CreateDWordField (TMD0, 0x0C, DMA1)
        CreateDWordField (TMD0, 0x10, CHNF)
        Device (PRT0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
            {
                Store (0x78, PIO0)
                Store (0x14, DMA0)
                Store (0x78, PIO1)
                Store (0x14, DMA1)
                Store (One, CHNF)
                Return (TMD0)
            }

            Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
            {
            }

            Device (DRV0)
            {
                Name (_ADR, Zero)  // _ADR: Address
            }

            Device (DRV1)
            {
                Name (_ADR, One)  // _ADR: Address
            }
        }

        Device (PRT1)
        {
            Name (_ADR, One)  // _ADR: Address
            Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
            {
                Store (0x78, PIO0)
                Store (0x14, DMA0)
                Store (0x78, PIO1)
                Store (0x14, DMA1)
                Store (One, CHNF)
                Return (TMD0)
            }

            Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
            {
            }

            Device (DRV0)
            {
                Name (_ADR, Zero)  // _ADR: Address
            }

            Device (DRV1)
            {
                Name (_ADR, One)  // _ADR: Address
            }
        }
    }

    Scope (_SB.PCI0.LPCB)
    {
        OperationRegion (CPSB, SystemMemory, 0xDAFFFF98, 0x10)
        Field (CPSB, AnyAcc, NoLock, Preserve)
        {
            RTCX,   1, 
            SBB0,   7, 
            SBB1,   8, 
            SBB2,   8, 
            SBB3,   8, 
            SBB4,   8, 
            SBB5,   8, 
            SBB6,   8, 
            SBB7,   8, 
            SBB8,   8, 
            SBB9,   8, 
            SBBA,   8, 
            SBBB,   8, 
            SBBC,   8, 
            SBBD,   8, 
            SBBE,   8, 
            SBBF,   8
        }

        Method (SPTS, 1, NotSerialized)
        {
            Store (One, SLPX)
            Store (One, SLPE)
        }

        Method (SWAK, 1, NotSerialized)
        {
            Store (Zero, SLPE)
            If (RTCS) {}
            Else
            {
                Notify (PWRB, 0x02)
            }
        }

        OperationRegion (SMIE, SystemIO, PMBS, 0x04)
        Field (SMIE, ByteAcc, NoLock, Preserve)
        {
                ,   10, 
            RTCS,   1, 
                ,   3, 
            PEXS,   1, 
            WAKS,   1, 
            Offset (0x03), 
            PWBT,   1, 
            Offset (0x04)
        }

        OperationRegion (SLPR, SystemIO, SMCR, 0x08)
        Field (SLPR, ByteAcc, NoLock, Preserve)
        {
                ,   4, 
            SLPE,   1, 
                ,   31, 
            SLPX,   1, 
            Offset (0x08)
        }
    }

    Scope (_SB.PCI0.RP01)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP02)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP03)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP04)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP05)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP06)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP07)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP08)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    OperationRegion (_SB.PCI0.LPCB.LPCR, PCI_Config, 0x80, 0x04)
    Field (\_SB.PCI0.LPCB.LPCR, ByteAcc, NoLock, Preserve)
    {
        CADR,   3, 
            ,   1, 
        CBDR,   3, 
        Offset (0x01), 
        LTDR,   2, 
            ,   2, 
        FDDR,   1, 
            ,   2, 
        CALE,   1, 
        CBLE,   1, 
        LTLE,   1, 
        FDLE,   1, 
            ,   4, 
        GLLE,   1, 
        GHLE,   1, 
        KCLE,   1, 
        MCLE,   1, 
        C1LE,   1, 
        C2LE,   1, 
            ,   2
    }

    Method (UXDV, 1, Serialized)
    {
        Store (0xFF, Local0)
        Name (T_0, Zero)
        Add (Arg0, Zero, T_0)
        If (LEqual (T_0, 0x03F8))
        {
            Store (Zero, Local0)
        }
        ElseIf (LEqual (T_0, 0x02F8))
        {
            Store (One, Local0)
        }
        ElseIf (LEqual (T_0, 0x0220))
        {
            Store (0x02, Local0)
        }
        ElseIf (LEqual (T_0, 0x0228))
        {
            Store (0x03, Local0)
        }
        ElseIf (LEqual (T_0, 0x0238))
        {
            Store (0x04, Local0)
        }
        ElseIf (LEqual (T_0, 0x02E8))
        {
            Store (0x05, Local0)
        }
        ElseIf (LEqual (T_0, 0x0338))
        {
            Store (0x06, Local0)
        }
        ElseIf (LEqual (T_0, 0x03E8))
        {
            Store (0x07, Local0)
        }

        Return (Local0)
    }

    Method (RRIO, 4, Serialized)
    {
        Name (T_0, Zero)
        Add (Arg0, Zero, T_0)
        If (LEqual (T_0, Zero))
        {
            Store (Zero, CALE)
            Store (UXDV (Arg2), Local0)
            If (LNotEqual (Local0, 0xFF))
            {
                Store (Local0, CADR)
            }

            If (Arg1)
            {
                Store (One, CALE)
            }
        }
        ElseIf (LEqual (T_0, One))
        {
            Store (Zero, CBLE)
            Store (UXDV (Arg2), Local0)
            If (LNotEqual (Local0, 0xFF))
            {
                Store (Local0, CBDR)
            }

            If (Arg1)
            {
                Store (One, CBLE)
            }
        }
        ElseIf (LEqual (T_0, 0x02))
        {
            Store (Zero, LTLE)
            If (LEqual (Arg2, 0x0378))
            {
                Store (Zero, LTDR)
            }

            If (LEqual (Arg2, 0x0278))
            {
                Store (One, LTDR)
            }

            If (LEqual (Arg2, 0x03BC))
            {
                Store (0x02, LTDR)
            }

            If (Arg1)
            {
                Store (One, LTLE)
            }
        }
        ElseIf (LEqual (T_0, 0x03))
        {
            Store (Zero, FDLE)
            If (LEqual (Arg2, 0x03F0))
            {
                Store (Zero, FDDR)
            }

            If (LEqual (Arg2, 0x0370))
            {
                Store (One, FDDR)
            }

            If (Arg1)
            {
                Store (One, FDLE)
            }
        }
        ElseIf (LEqual (T_0, 0x08))
        {
            If (LEqual (Arg2, 0x0200))
            {
                If (Arg1)
                {
                    Store (One, GLLE)
                }
                Else
                {
                    Store (Zero, GLLE)
                }
            }

            If (LEqual (Arg2, 0x0208))
            {
                If (Arg1)
                {
                    Store (One, GHLE)
                }
                Else
                {
                    Store (Zero, GHLE)
                }
            }
        }
        ElseIf (LEqual (T_0, 0x09))
        {
            If (LEqual (Arg2, 0x0200))
            {
                If (Arg1)
                {
                    Store (One, GLLE)
                }
                Else
                {
                    Store (Zero, GLLE)
                }
            }

            If (LEqual (Arg2, 0x0208))
            {
                If (Arg1)
                {
                    Store (One, GHLE)
                }
                Else
                {
                    Store (Zero, GHLE)
                }
            }
        }
        ElseIf (LEqual (T_0, 0x0A))
        {
            If (LOr (LEqual (Arg2, 0x60), LEqual (Arg2, 0x64)))
            {
                If (Arg1)
                {
                    Store (One, KCLE)
                }
                Else
                {
                    Store (Zero, KCLE)
                }
            }
        }
        ElseIf (LEqual (T_0, 0x0B))
        {
            If (LOr (LEqual (Arg2, 0x62), LEqual (Arg2, 0x66)))
            {
                If (Arg1)
                {
                    Store (One, MCLE)
                }
                Else
                {
                    Store (Zero, MCLE)
                }
            }
        }
        ElseIf (LEqual (T_0, 0x0C))
        {
            If (LEqual (Arg2, 0x2E))
            {
                If (Arg1)
                {
                    Store (One, C1LE)
                }
                Else
                {
                    Store (Zero, C1LE)
                }
            }

            If (LEqual (Arg2, 0x4E))
            {
                If (Arg1)
                {
                    Store (One, C2LE)
                }
                Else
                {
                    Store (Zero, C2LE)
                }
            }
        }
        ElseIf (LEqual (T_0, 0x0D))
        {
            If (LEqual (Arg2, 0x2E))
            {
                If (Arg1)
                {
                    Store (One, C1LE)
                }
                Else
                {
                    Store (Zero, C1LE)
                }
            }

            If (LEqual (Arg2, 0x4E))
            {
                If (Arg1)
                {
                    Store (One, C2LE)
                }
                Else
                {
                    Store (Zero, C2LE)
                }
            }
        }
    }

    Method (RDMA, 3, NotSerialized)
    {
    }

    Scope (_SB.PCI0)
    {
        Method (NPTS, 1, NotSerialized)
        {
        }

        Method (NWAK, 1, NotSerialized)
        {
        }
    }

    Scope (_SB.PCI0.P0P2)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.P0P2.PEGP)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.PEG1)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.PEG2)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.PEG3)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0)
    {
        Device (IGPU)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address
            Method (PCPC, 0, NotSerialized)
            {
                If (ECON)
                {
                    Store (0x02, ^^LPCB.H_EC.SLPC)
                }

                ECST (0x6F)
            }

            Method (PAPR, 0, NotSerialized)
            {
                If (ECON)
                {
                    Return (Divide (^^LPCB.H_EC.MCAP, 0x64, ))
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
            {
                And (Arg0, 0x07, DSEN)
                If (LEqual (And (Arg0, 0x03), Zero))
                {
                    If (CondRefOf (HDOS))
                    {
                        HDOS ()
                    }
                }
            }

            Method (_DOD, 0, Serialized)  // _DOD: Display Output Devices
            {
                If (CondRefOf (IDAB))
                {
                    IDAB ()
                }
                Else
                {
                    Store (Zero, NDID)
                    If (LNotEqual (DIDL, Zero))
                    {
                        Store (SDDL (DIDL), DID1)
                    }

                    If (LNotEqual (DDL2, Zero))
                    {
                        Store (SDDL (DDL2), DID2)
                    }

                    If (LNotEqual (DDL3, Zero))
                    {
                        Store (SDDL (DDL3), DID3)
                    }

                    If (LNotEqual (DDL4, Zero))
                    {
                        Store (SDDL (DDL4), DID4)
                    }

                    If (LNotEqual (DDL5, Zero))
                    {
                        Store (SDDL (DDL5), DID5)
                    }

                    If (LNotEqual (DDL6, Zero))
                    {
                        Store (SDDL (DDL6), DID6)
                    }

                    If (LNotEqual (DDL7, Zero))
                    {
                        Store (SDDL (DDL7), DID7)
                    }

                    If (LNotEqual (DDL8, Zero))
                    {
                        Store (SDDL (DDL8), DID8)
                    }
                }

                If (LEqual (NDID, One))
                {
                    Name (TMP1, Package (0x01)
                    {
                        Ones
                    })
                    Or (0x00010000, DID1, Index (TMP1, Zero))
                    Return (TMP1)
                }

                If (LEqual (NDID, 0x02))
                {
                    Name (TMP2, Package (0x02)
                    {
                        Ones, 
                        Ones
                    })
                    Or (0x00010000, DID1, Index (TMP2, Zero))
                    Or (0x00010000, DID2, Index (TMP2, One))
                    Return (TMP2)
                }

                If (LEqual (NDID, 0x03))
                {
                    Name (TMP3, Package (0x03)
                    {
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Or (0x00010000, DID1, Index (TMP3, Zero))
                    Or (0x00010000, DID2, Index (TMP3, One))
                    Or (0x00010000, DID3, Index (TMP3, 0x02))
                    Return (TMP3)
                }

                If (LEqual (NDID, 0x04))
                {
                    Name (TMP4, Package (0x04)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Or (0x00010000, DID1, Index (TMP4, Zero))
                    Or (0x00010000, DID2, Index (TMP4, One))
                    Or (0x00010000, DID3, Index (TMP4, 0x02))
                    Or (0x00010000, DID4, Index (TMP4, 0x03))
                    Return (TMP4)
                }

                If (LEqual (NDID, 0x05))
                {
                    Name (TMP5, Package (0x05)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Or (0x00010000, DID1, Index (TMP5, Zero))
                    Or (0x00010000, DID2, Index (TMP5, One))
                    Or (0x00010000, DID3, Index (TMP5, 0x02))
                    Or (0x00010000, DID4, Index (TMP5, 0x03))
                    Or (0x00010000, DID5, Index (TMP5, 0x04))
                    Return (TMP5)
                }

                If (LEqual (NDID, 0x06))
                {
                    Name (TMP6, Package (0x06)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Or (0x00010000, DID1, Index (TMP6, Zero))
                    Or (0x00010000, DID2, Index (TMP6, One))
                    Or (0x00010000, DID3, Index (TMP6, 0x02))
                    Or (0x00010000, DID4, Index (TMP6, 0x03))
                    Or (0x00010000, DID5, Index (TMP6, 0x04))
                    Or (0x00010000, DID6, Index (TMP6, 0x05))
                    Return (TMP6)
                }

                If (LEqual (NDID, 0x07))
                {
                    Name (TMP7, Package (0x07)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Or (0x00010000, DID1, Index (TMP7, Zero))
                    Or (0x00010000, DID2, Index (TMP7, One))
                    Or (0x00010000, DID3, Index (TMP7, 0x02))
                    Or (0x00010000, DID4, Index (TMP7, 0x03))
                    Or (0x00010000, DID5, Index (TMP7, 0x04))
                    Or (0x00010000, DID6, Index (TMP7, 0x05))
                    Or (0x00010000, DID7, Index (TMP7, 0x06))
                    Return (TMP7)
                }

                If (LEqual (NDID, 0x08))
                {
                    Name (TMP8, Package (0x08)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Or (0x00010000, DID1, Index (TMP8, Zero))
                    Or (0x00010000, DID2, Index (TMP8, One))
                    Or (0x00010000, DID3, Index (TMP8, 0x02))
                    Or (0x00010000, DID4, Index (TMP8, 0x03))
                    Or (0x00010000, DID5, Index (TMP8, 0x04))
                    Or (0x00010000, DID6, Index (TMP8, 0x05))
                    Or (0x00010000, DID7, Index (TMP8, 0x06))
                    Or (0x00010000, DID8, Index (TMP8, 0x07))
                    Return (TMP8)
                }

                If (LEqual (NDID, 0x09))
                {
                    If (CondRefOf (HWID))
                    {
                        Return (HWID)
                    }
                }

                Return (Package (0x01)
                {
                    0x0400
                })
            }

            Device (DD01)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID1, Zero))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID1))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    Return (CDDS (DID1))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, One), One), CondRefOf (SNXD)))
                    {
                        Return (NXD1)
                    }

                    Return (NDDS (DID1))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD02)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID2, Zero))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID2))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (LIDS, Zero))
                    {
                        Return (Zero)
                    }

                    Return (CDDS (DID2))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, One), One), CondRefOf (SNXD)))
                    {
                        Return (NXD2)
                    }

                    Return (NDDS (DID2))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }

                Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                {
                    Return (Package (0x12)
                    {
                        0x50, 
                        0x32, 
                        Zero, 
                        0x07, 
                        0x0D, 
                        0x14, 
                        0x1B, 
                        0x21, 
                        0x28, 
                        0x2F, 
                        0x35, 
                        0x3C, 
                        0x43, 
                        0x49, 
                        0x50, 
                        0x57, 
                        0x5D, 
                        0x64
                    })
                }

                Method (XBCM, 1, NotSerialized)
                {
                    If (LAnd (LGreaterEqual (Arg0, Zero), LLessEqual (Arg0, 0x64)))
                    {
                        AINT (One, Arg0)
                        Store (Arg0, BRTL)
                    }
                }

                Method (XBQC, 0, NotSerialized)
                {
                    Return (BRTL)
                }
            }

            Device (DD03)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID3, Zero))
                    {
                        Return (0x03)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID3))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID3, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID3))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, One), One), CondRefOf (SNXD)))
                    {
                        Return (NXD3)
                    }

                    Return (NDDS (DID3))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD04)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID4, Zero))
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID4))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID4, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID4))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, One), One), CondRefOf (SNXD)))
                    {
                        Return (NXD4)
                    }

                    Return (NDDS (DID4))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD05)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID5, Zero))
                    {
                        Return (0x05)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID5))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID5, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID5))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, One), One), CondRefOf (SNXD)))
                    {
                        Return (NXD5)
                    }

                    Return (NDDS (DID5))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD06)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID6, Zero))
                    {
                        Return (0x06)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID6))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID6, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID6))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, One), One), CondRefOf (SNXD)))
                    {
                        Return (NXD6)
                    }

                    Return (NDDS (DID6))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD07)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID7, Zero))
                    {
                        Return (0x07)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID7))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID7, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID7))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, One), One), CondRefOf (SNXD)))
                    {
                        Return (NXD7)
                    }

                    Return (NDDS (DID7))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD08)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID8, Zero))
                    {
                        Return (0x08)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID8))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID8, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID8))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, One), One), CondRefOf (SNXD)))
                    {
                        Return (NXD8)
                    }

                    Return (NDDS (DID8))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Method (SDDL, 1, NotSerialized)
            {
                Increment (NDID)
                And (Arg0, 0x0F0F, Local0)
                Or (0x80000000, Local0, Local1)
                If (LEqual (DIDL, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL2, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL3, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL4, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL5, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL6, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL7, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL8, Local0))
                {
                    Return (Local1)
                }

                Return (Zero)
            }

            Method (CDDS, 1, NotSerialized)
            {
                And (Arg0, 0x0F0F, Local0)
                If (LEqual (Zero, Local0))
                {
                    Return (0x1D)
                }

                If (LEqual (CADL, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL2, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL3, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL4, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL5, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL6, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL7, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL8, Local0))
                {
                    Return (0x1F)
                }

                Return (0x1D)
            }

            Method (NDDS, 1, NotSerialized)
            {
                And (Arg0, 0x0F0F, Local0)
                If (LEqual (Zero, Local0))
                {
                    Return (Zero)
                }

                If (LEqual (NADL, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL2, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL3, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL4, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL5, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL6, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL7, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL8, Local0))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Scope (^^PCI0)
            {
                OperationRegion (MCHP, PCI_Config, 0x40, 0xC0)
                Field (MCHP, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    TASM,   10, 
                    Offset (0x62)
                }
            }

            OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)
            Field (IGDP, AnyAcc, NoLock, Preserve)
            {
                Offset (0x12), 
                    ,   1, 
                GIVD,   1, 
                    ,   2, 
                GUMA,   3, 
                Offset (0x14), 
                    ,   4, 
                GMFN,   1, 
                Offset (0x18), 
                Offset (0xA4), 
                ASLE,   8, 
                Offset (0xA8), 
                GSSE,   1, 
                GSSB,   14, 
                GSES,   1, 
                Offset (0xB0), 
                    ,   12, 
                CDVL,   1, 
                Offset (0xB2), 
                Offset (0xB5), 
                LBPC,   8, 
                Offset (0xBC), 
                ASLS,   32
            }

            OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
            Field (IGDM, AnyAcc, NoLock, Preserve)
            {
                SIGN,   128, 
                SIZE,   32, 
                OVER,   32, 
                SVER,   256, 
                VVER,   128, 
                GVER,   128, 
                MBOX,   32, 
                DMOD,   32, 
                Offset (0x100), 
                DRDY,   32, 
                CSTS,   32, 
                CEVT,   32, 
                Offset (0x120), 
                DIDL,   32, 
                DDL2,   32, 
                DDL3,   32, 
                DDL4,   32, 
                DDL5,   32, 
                DDL6,   32, 
                DDL7,   32, 
                DDL8,   32, 
                CPDL,   32, 
                CPL2,   32, 
                CPL3,   32, 
                CPL4,   32, 
                CPL5,   32, 
                CPL6,   32, 
                CPL7,   32, 
                CPL8,   32, 
                CADL,   32, 
                CAL2,   32, 
                CAL3,   32, 
                CAL4,   32, 
                CAL5,   32, 
                CAL6,   32, 
                CAL7,   32, 
                CAL8,   32, 
                NADL,   32, 
                NDL2,   32, 
                NDL3,   32, 
                NDL4,   32, 
                NDL5,   32, 
                NDL6,   32, 
                NDL7,   32, 
                NDL8,   32, 
                ASLP,   32, 
                TIDX,   32, 
                CHPD,   32, 
                CLID,   32, 
                CDCK,   32, 
                SXSW,   32, 
                EVTS,   32, 
                CNOT,   32, 
                NRDY,   32, 
                Offset (0x200), 
                SCIE,   1, 
                GEFC,   4, 
                GXFC,   3, 
                GESF,   8, 
                Offset (0x204), 
                PARM,   32, 
                DSLP,   32, 
                Offset (0x300), 
                ARDY,   32, 
                ASLC,   32, 
                TCHE,   32, 
                ALSI,   32, 
                BCLP,   32, 
                PFIT,   32, 
                CBLV,   32, 
                BCLM,   320, 
                CPFM,   32, 
                EPFM,   32, 
                PLUT,   592, 
                PFMB,   32, 
                CCDV,   32, 
                PCFT,   32, 
                Offset (0x400), 
                GVD1,   49152, 
                PHED,   32, 
                BDDC,   2048
            }

            Name (DBTB, Package (0x15)
            {
                Zero, 
                0x07, 
                0x38, 
                0x01C0, 
                0x0E00, 
                0x3F, 
                0x01C7, 
                0x0E07, 
                0x01F8, 
                0x0E38, 
                0x0FC0, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x7000, 
                0x7007, 
                0x7038, 
                0x71C0, 
                0x7E00
            })
            Name (CDCT, Package (0x05)
            {
                Package (0x02)
                {
                    0xE4, 
                    0x0140
                }, 

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }, 

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }, 

                Package (0x02)
                {
                    Zero, 
                    Zero
                }, 

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }
            })
            Name (SUCC, One)
            Name (NVLD, 0x02)
            Name (CRIT, 0x04)
            Name (NCRT, 0x06)
            Method (GSCI, 0, Serialized)
            {
                Method (GBDA, 0, Serialized)
                {
                    If (LEqual (GESF, Zero))
                    {
                        Store (0x0679, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, One))
                    {
                        Store (0x0240, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x04))
                    {
                        And (PARM, 0xEFFF0000, PARM)
                        And (PARM, ShiftLeft (DerefOf (Index (DBTB, IBTT)), 0x10), PARM)
                        Or (PARM, IBTT, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x05))
                    {
                        Store (IPSC, PARM)
                        Or (PARM, ShiftLeft (IPAT, 0x08), PARM)
                        Add (PARM, 0x0100, PARM)
                        Or (PARM, ShiftLeft (LIDS, 0x10), PARM)
                        Add (PARM, 0x00010000, PARM)
                        Or (PARM, ShiftLeft (IBIA, 0x14), PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x06))
                    {
                        Store (ITVF, PARM)
                        Or (PARM, ShiftLeft (ITVM, 0x04), PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x07))
                    {
                        Store (GIVD, PARM)
                        XOr (PARM, One, PARM)
                        Or (PARM, ShiftLeft (GMFN, One), PARM)
                        Or (PARM, 0x1800, PARM)
                        Or (PARM, ShiftLeft (IDMS, 0x11), PARM)
                        Or (PARM, ShiftLeft (DerefOf (Index (DerefOf (Index (CDCT, HVCO)), CDVL)), 0x15), PARM)
                        Store (One, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0A))
                    {
                        Store (Zero, PARM)
                        If (ISSC)
                        {
                            Or (PARM, 0x03, PARM)
                        }

                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0B))
                    {
                        Store (KSV0, PARM)
                        Store (KSV1, GESF)
                        Return (SUCC)
                    }

                    Store (Zero, GESF)
                    Return (CRIT)
                }

                Method (SBCB, 0, Serialized)
                {
                    If (LEqual (GESF, Zero))
                    {
                        Store (Zero, PARM)
                        Store (0x000F87FD, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, One))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x03))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x04))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x05))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x06))
                    {
                        And (PARM, 0x0F, ITVF)
                        ShiftRight (And (PARM, 0xF0), 0x04, ITVM)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x07))
                    {
                        If (LEqual (PARM, Zero))
                        {
                            Store (CLID, Local0)
                            If (And (0x80000000, Local0))
                            {
                                And (CLID, 0x0F, CLID)
                                GLID (CLID)
                            }
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x08))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x09))
                    {
                        And (PARM, 0xFF, IBTT)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0A))
                    {
                        And (PARM, 0xFF, IPSC)
                        If (And (ShiftRight (PARM, 0x08), 0xFF))
                        {
                            And (ShiftRight (PARM, 0x08), 0xFF, IPAT)
                            Decrement (IPAT)
                        }

                        And (ShiftRight (PARM, 0x14), 0x07, IBIA)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0B))
                    {
                        And (ShiftRight (PARM, One), One, IF1E)
                        If (And (PARM, 0x0001E000))
                        {
                            And (ShiftRight (PARM, 0x0D), 0x0F, IDMS)
                        }
                        Else
                        {
                            And (ShiftRight (PARM, 0x11), 0x0F, IDMS)
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x10))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x11))
                    {
                        ShiftLeft (LIDS, 0x08, PARM)
                        Add (PARM, 0x0100, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x12))
                    {
                        If (And (PARM, One))
                        {
                            If (LEqual (ShiftRight (PARM, One), One))
                            {
                                Store (One, ISSC)
                            }
                            Else
                            {
                                Store (Zero, GESF)
                                Return (CRIT)
                            }
                        }
                        Else
                        {
                            Store (Zero, ISSC)
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x13))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x14))
                    {
                        And (PARM, 0x0F, PAVP)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GEFC, 0x04))
                {
                    Store (GBDA (), GXFC)
                }

                If (LEqual (GEFC, 0x06))
                {
                    Store (SBCB (), GXFC)
                }

                Store (Zero, GEFC)
                Store (One, SCIS)
                Store (Zero, GSSE)
                Store (Zero, SCIE)
                Return (Zero)
            }

            Method (PDRD, 0, NotSerialized)
            {
                If (LNot (DRDY))
                {
                    Sleep (ASLP)
                }

                Return (LNot (DRDY))
            }

            Method (PSTS, 0, NotSerialized)
            {
                If (LGreater (CSTS, 0x02))
                {
                    Sleep (ASLP)
                }

                Return (LEqual (CSTS, 0x03))
            }

            Method (GNOT, 2, NotSerialized)
            {
                If (PDRD ())
                {
                    Return (One)
                }

                Store (Arg0, CEVT)
                Store (0x03, CSTS)
                If (LAnd (LEqual (CHPD, Zero), LEqual (Arg1, Zero)))
                {
                    If (LOr (LGreater (OSYS, 0x07D0), LLess (OSYS, 0x07D6)))
                    {
                        Notify (PCI0, Arg1)
                    }
                    Else
                    {
                        Notify (IGPU, Arg1)
                    }
                }

                If (CondRefOf (HNOT))
                {
                    HNOT (Arg0)
                }
                Else
                {
                    Notify (IGPU, 0x80)
                }

                Return (Zero)
            }

            Method (GHDS, 1, NotSerialized)
            {
                Store (Arg0, TIDX)
                Return (GNOT (One, Zero))
            }

            Method (GLID, 1, NotSerialized)
            {
                If (LEqual (Arg0, One))
                {
                    Store (0x03, CLID)
                }
                Else
                {
                    Store (Arg0, CLID)
                }

                Return (GNOT (0x02, Zero))
            }

            Method (GDCK, 1, NotSerialized)
            {
                Store (Arg0, CDCK)
                Return (GNOT (0x04, Zero))
            }

            Method (PARD, 0, NotSerialized)
            {
                If (LNot (ARDY))
                {
                    Sleep (ASLP)
                }

                Return (LNot (ARDY))
            }

            Method (AINT, 2, NotSerialized)
            {
                If (PARD ())
                {
                    Return (One)
                }

                If (LEqual (Arg0, 0x02))
                {
                    If (CPFM)
                    {
                        And (CPFM, 0x0F, Local0)
                        And (EPFM, 0x0F, Local1)
                        If (LEqual (Local0, One))
                        {
                            If (And (Local1, 0x06))
                            {
                                Store (0x06, PFIT)
                            }
                            ElseIf (And (Local1, 0x08))
                            {
                                Store (0x08, PFIT)
                            }
                            Else
                            {
                                Store (One, PFIT)
                            }
                        }

                        If (LEqual (Local0, 0x06))
                        {
                            If (And (Local1, 0x08))
                            {
                                Store (0x08, PFIT)
                            }
                            ElseIf (And (Local1, One))
                            {
                                Store (One, PFIT)
                            }
                            Else
                            {
                                Store (0x06, PFIT)
                            }
                        }

                        If (LEqual (Local0, 0x08))
                        {
                            If (And (Local1, One))
                            {
                                Store (One, PFIT)
                            }
                            ElseIf (And (Local1, 0x06))
                            {
                                Store (0x06, PFIT)
                            }
                            Else
                            {
                                Store (0x08, PFIT)
                            }
                        }
                    }
                    Else
                    {
                        XOr (PFIT, 0x07, PFIT)
                    }

                    Or (PFIT, 0x80000000, PFIT)
                    Store (0x04, ASLC)
                }
                ElseIf (LEqual (Arg0, One))
                {
                    Divide (Multiply (Arg1, 0xFF), 0x64, , BCLP)
                    Or (BCLP, 0x80000000, BCLP)
                    P8XH (Zero, BCLP)
                    Store (BCLP, ^^LPCB.H_EC.BRRP)
                    Store (0x02, ASLC)
                }
                ElseIf (LEqual (Arg0, Zero))
                {
                    Store (Arg1, ALSI)
                    Store (One, ASLC)
                }
                Else
                {
                    Return (One)
                }

                Store (One, ASLE)
                Return (Zero)
            }

            Method (SCIP, 0, NotSerialized)
            {
                If (LNotEqual (OVER, Zero))
                {
                    Return (LNot (GSMI))
                }

                Return (Zero)
            }

            Device (^^MEM2)
            {
                Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
                Name (_UID, 0x02)  // _UID: Unique ID
                Name (CRS, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x20000000,         // Address Base
                        0x00200000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x40000000,         // Address Base
                        0x00200000,         // Address Length
                        )
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    If (IGDS)
                    {
                        Return (CRS)
                    }

                    Return (Buffer (One)
                    {
                         0x00                                           
                    })
                }
            }

            

            

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Store (Package (0x0E)
                    {
                        "AAPL,slot-name", 
                        "Built In", 
                        "name", 
                        "Intel Graphics Controller", 
                        "model", 
                        Buffer (0x17)
                        {
                            "Intel HD Graphics 3000"
                        }, 

                        "device_type", 
                        Buffer (0x14)
                        {
                            "Graphics Controller"
                        }, 

                        "device-id", 
                        Buffer (0x04)
                        {
                             0x26, 0x01, 0x00, 0x00                         
                        }, 

                        "AAPL,snb-platform-id", 
                        Buffer (0x04)
                        {
                             0x10, 0x00, 0x03, 0x00                         
                        }, 

                        "hda-gfx", 
                        Buffer (0x0A)
                        {
                            "onboard-1"
                        }
                    }, Local0)
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
            OperationRegion (RMPC, PCI_Config, 0x10, 4)
            Field (RMPC, AnyAcc, NoLock, Preserve)
            {
                BAR1,32,
            }
            Device (PNLF)
            {
                // normal PNLF declares (note some of this probably not necessary)
                Name (_ADR, Zero)
                Name (_HID, EisaId ("APP0002"))
                Name (_CID, "backlight")
                Name (_UID, 10)
                Name (_STA, 0x0B)
                //define hardware register access for brightness
                // lower nibble of BAR1 is status bits and not part of the address
                OperationRegion (BRIT, SystemMemory, And(^BAR1, Not(0xF)), 0xe1184)
                Field (BRIT, AnyAcc, Lock, Preserve)
                {
                    Offset(0x48250),
                    LEV2, 32,
                    LEVL, 32,
                    Offset(0x70040),
                    P0BL, 32,
                    Offset(0xc8250),
                    LEVW, 32,
                    LEVX, 32,
                    Offset(0xe1180),
                    PCHL, 32,
                }
                // DEB1 special for setting KLVX at runtime...
                //Method (DEB1, 1, NotSerialized)
                //{
                //    Store(Arg0, KLVX)
                //}
                // LMAX: use 0x710 to force OS X value
                //       or use any arbitrary value
                //       or use 0 to capture BIOS setting
                //Name (LMAX, 0x710)
                Name (LMAX, 0x0)
                // KMAX: defines the unscaled range in the _BCL table below
                Name (KMAX, 0x710)
                // KPCH: saved value for PCHL
                //   use Ones if PCHL does not need to be set (normal)
                //   use Zero if your laptop nees PCHL set on every brightness set
                //   you can also use a custom value (not Ones, not Zero)
                Name(KPCH, Ones)
                // _INI deals with differences between native setting and desired
                Method (_INI, 0, NotSerialized)
                {
                    // save value of PCHL for later
                    If (LNot(KPCH)) { Store(PCHL, KPCH) }
                    // determine LMAX to use
                    If (LNot(LMAX)) { Store(ShiftRight(LEVX,16), LMAX) }
                    If (LNot(LMAX)) { Store(KMAX, LMAX) }
                    Store(ShiftLeft(LMAX,16), KLVX)
                    If (LNotEqual(LMAX, KMAX))
                    {
                        // Scale all the values in _BCL to the PWM max in use
                        Store(0, Local0)
                        While (LLess(Local0, SizeOf(_BCL)))
                        {
                            Store(DerefOf(Index(_BCL,Local0)), Local1)
                            Divide(Multiply(Local1,LMAX), KMAX,, Local1)
                            Store(Local1, Index(_BCL,Local0))
                            Increment(Local0)
                        }
                        // Also scale XRGL and XRGH values
                        Divide(Multiply(XRGL,LMAX), KMAX,, XRGL)
                        Divide(Multiply(XRGH,LMAX), KMAX,, XRGH)
                    }
                    // adjust values to desired LMAX
                    Store(ShiftRight(LEVX,16), Local1)
                    If (LNotEqual(Local1, LMAX))
                    {
                        Store(LEVL, Local0)
                        If (LOr(LNot(Local0),LNot(Local1))) { Store(LMAX, Local0) Store(LMAX, Local1) }
                        Divide(Multiply(Local0,LMAX), Local1,, Local0)
                        //REVIEW: wait for vblank before setting new PWM config
                        //Store(P0BL, Local7)
                        //While (LEqual (P0BL, Local7)) {}
                        If (LGreater(LEVL, LMAX))
                        { Store(KLVX, LEVX) Store(Local0, LEVL) }
                        Else
                        { Store(Local0, LEVL) Store(KLVX, LEVX) }
                    }
                }
                // _BCM/_BQC: set/get for brightness level
                Method (_BCM, 1, NotSerialized)
                {
                    // initialize for consistent backlight level before/after sleep
                    If (LAnd(LNotEqual(KPCH, Ones),LNotEqual(PCHL, KPCH))) { Store(KPCH, PCHL) }
                    If (LNotEqual(LEVW, 0x80000000)) { Store (0x80000000, LEVW) }
                    If (LNotEqual(LEVX, KLVX)) { Store (KLVX, LEVX) }
                    // store new backlight level
                    Store(Match(_BCL, MGE, Arg0, MTR, 0, 2), Local0)
                    If (LEqual(Local0, Ones)) { Subtract(SizeOf(_BCL), 1, Local0) }
                    If (LNotEqual(LEV2, 0x80000000)) { Store(0x80000000, LEV2) }
                    Store(DerefOf(Index(_BCL, Local0)), LEVL)
                }
                Method (_BQC, 0, NotSerialized)
                {
                    Store(Match(_BCL, MGE, LEVL, MTR, 0, 2), Local0)
                    If (LEqual(Local0, Ones)) { Subtract(SizeOf(_BCL), 1, Local0) }
                    Return(DerefOf(Index(_BCL, Local0)))
                }
                Method (_DOS, 1, NotSerialized)
                {
                    // Note: Some systems have this defined in DSDT, so uncomment
                    // the next line if that is the case.
                    //External(^^_DOS, MethodObj)
                    ^^_DOS(Arg0)
                }
                // extended _BCM/_BQC for setting "in between" levels
                Method (XBCM, 1, NotSerialized)
                {
                    // initialize for consistent backlight level before/after sleep
                    If (LAnd(LNotEqual(KPCH, Ones),LNotEqual(PCHL, KPCH))) { Store(KPCH, PCHL) }
                    If (LNotEqual(LEVW, 0x80000000)) { Store (0x80000000, LEVW) }
                    If (LNotEqual(LEVX, KLVX)) { Store (KLVX, LEVX) }
                    // store new backlight level
                    If (LGreater(Arg0, XRGH)) { Store(XRGH, Arg0) }
                    If (LAnd(Arg0, LLess(Arg0, XRGL))) { Store(XRGL, Arg0) }
                    If (LNotEqual(LEV2, 0x80000000)) { Store(0x80000000, LEV2) }
                    Store(Arg0, LEVL)
                }
                Method (XBQC, 0, NotSerialized)
                {
                    Store(LEVL, Local0)
                    If (LGreater(Local0, XRGH)) { Store(XRGH, Local0) }
                    If (LAnd(Local0, LLess(Local0, XRGL))) { Store(XRGL, Local0) }
                    Return(Local0)
                }
                // Set XOPT bit 0 to disable smooth transitions
                // Set XOPT bit 1 to wait for native BacklightHandler
                // Set XOPT bit 2 to force use of native BacklightHandler
                Name (XOPT, 0x02)
                // XRGL/XRGH: defines the valid range
                Name (XRGL, 40)
                Name (XRGH, 1808)
                // KLVX is initialization value for LEVX
                Name (KLVX, 0x7100000)
                // _BCL: returns list of valid brightness levels
                // first two entries describe ac/battery power levels
                Name (_BCL, Package()
                {
                    1808,
                    479,
                    0,
                    53, 55, 57, 59,
                    62, 66, 71, 77,
                    83, 91, 99, 108,
                    119, 130, 142, 154,
                    168, 183, 198, 214,
                    232, 250, 269, 289,
                    309, 331, 354, 377,
                    401, 426, 453, 479,
                    507, 536, 566, 596,
                    627, 660, 693, 727,
                    762, 797, 834, 872,
                    910, 949, 990, 1031,
                    1073, 1115, 1159, 1204,
                    1249, 1296, 1343, 1391,
                    1440, 1490, 1541, 1592,
                    1645, 1698, 1753, 1808,
                })
            }
        }
    }

    Scope (_PR)
    {
        Processor (CPU0, 0x01, 0x00000410, 0x06) {}
        Processor (CPU1, 0x02, 0x00000410, 0x06) {}
        Processor (CPU2, 0x03, 0x00000410, 0x06) {}
        Processor (CPU3, 0x04, 0x00000410, 0x06) {}
    }

    Mutex (MUTX, 0x00)
    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }

    OperationRegion (PLMT, SystemIO, 0x0310, 0x0A)
    Field (PLMT, WordAcc, Lock, Preserve)
    {
        CPLT,   8, 
        GPLT,   4, 
        Offset (0x02), 
        MPLT,   8, 
        CFIL,   8
    }

    Method (P8XH, 2, Serialized)
    {
        If (LEqual (Arg0, Zero))
        {
            Or (And (P80D, 0xFFFFFF00), Arg1, P80D)
        }

        If (LEqual (Arg0, One))
        {
            Or (And (P80D, 0xFFFF00FF), ShiftLeft (Arg1, 0x08), P80D)
        }

        If (LEqual (Arg0, 0x02))
        {
            Or (And (P80D, 0xFF00FFFF), ShiftLeft (Arg1, 0x10), P80D)
        }

        If (LEqual (Arg0, 0x03))
        {
            Or (And (P80D, 0x00FFFFFF), ShiftLeft (Arg1, 0x18), P80D)
        }

        Store (P80D, P80H)
    }

    OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP,   8, 
        SSMY,   8
    }

    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        Store (Arg0, GPIC)
        Store (Arg0, PICM)
    }

    Method (GETB, 3, Serialized)
    {
        Multiply (Arg0, 0x08, Local0)
        Multiply (Arg1, 0x08, Local1)
        CreateField (Arg2, Local0, Local1, TBF3)
        Return (TBF3)
    }

    Method (PNOT, 0, Serialized)
    {
        If (LGreater (TCNT, One))
        {
            If (And (PDC0, 0x08))
            {
                Notify (\_PR.CPU0, 0x80)
                If (And (PDC0, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU0, 0x81)
                }
            }

            If (And (PDC1, 0x08))
            {
                Notify (\_PR.CPU1, 0x80)
                If (And (PDC1, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU1, 0x81)
                }
            }

            If (And (PDC2, 0x08))
            {
                Notify (\_PR.CPU2, 0x80)
                If (And (PDC2, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU2, 0x81)
                }
            }

            If (And (PDC3, 0x08))
            {
                Notify (\_PR.CPU3, 0x80)
                If (And (PDC3, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU3, 0x81)
                }
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x80)
            Sleep (0x64)
            Notify (\_PR.CPU0, 0x81)
        }

        If (LEqual (ECON, One))
        {
            Store (B1B2 (\_SB.PCI0.LPCB.H_EC.SCC0, \_SB.PCI0.LPCB.H_EC.SCC1), B1SC)
            Store (\_SB.PCI0.LPCB.H_EC.B1ST, B1SS)
            If (LGreaterEqual (OSYS, 0x07D6))
            {
                Notify (\_SB.PCI0.LPCB.H_EC.BAT1, 0x81)
            }
            Else
            {
                Notify (\_SB.PCI0.LPCB.H_EC.BAT1, 0x80)
            }
        }
    }

    Method (TRAP, 2, Serialized)
    {
        Store (Arg1, SMIF)
        If (LEqual (Arg0, TRTP))
        {
            Store (Zero, TRP0)
        }

        If (LEqual (Arg0, TRTD))
        {
            Store (Arg1, DTSF)
            Store (Zero, TRPD)
            Return (DTSF)
        }

        If (LEqual (Arg0, TRTI))
        {
            Store (Zero, TRPH)
        }

        Return (SMIF)
    }

    Scope (_SB.PCI0)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (0x07D0, OSYS)
            If (CondRefOf (OOSI, Local0))
            {
                If (OOSI ("Linux"))
                {
                    Store (0x03E8, OSYS)
                }

                If (OOSI ("Windows 2001"))
                {
                    Store (0x07D1, OSYS)
                }

                If (OOSI ("Windows 2001 SP1"))
                {
                    Store (0x07D1, OSYS)
                }

                If (OOSI ("Windows 2001 SP2"))
                {
                    Store (0x07D2, OSYS)
                }

                If (OOSI ("Windows 2001.1"))
                {
                    Store (0x07D3, OSYS)
                }

                If (OOSI ("Windows 2006"))
                {
                    Store (0x07D6, OSYS)
                }

                If (OOSI ("Windows 2009"))
                {
                    Store (0x07D9, OSYS)
                }
            }
        }

        Method (NHPG, 0, Serialized)
        {
            Store (Zero, ^RP01.HPEX)
            Store (Zero, ^RP02.HPEX)
            Store (Zero, ^RP03.HPEX)
            Store (Zero, ^RP04.HPEX)
            Store (One, ^RP01.HPSX)
            Store (One, ^RP02.HPSX)
            Store (One, ^RP03.HPSX)
            Store (One, ^RP04.HPSX)
        }

        Method (NPME, 0, Serialized)
        {
            Store (Zero, ^RP01.PMEX)
            Store (Zero, ^RP02.PMEX)
            Store (Zero, ^RP03.PMEX)
            Store (Zero, ^RP04.PMEX)
            Store (Zero, ^RP05.PMEX)
            Store (Zero, ^RP07.PMEX)
            Store (Zero, ^RP08.PMEX)
            Store (One, ^RP01.PMSX)
            Store (One, ^RP02.PMSX)
            Store (One, ^RP03.PMSX)
            Store (One, ^RP04.PMSX)
            Store (One, ^RP05.PMSX)
            Store (One, ^RP07.PMSX)
            Store (One, ^RP08.PMSX)
        }
    }

    Scope (\)
    {
        Name (PICM, Zero)
        Name (PRWP, Package (0x02)
        {
            Zero, 
            Zero
        })
        Method (GPRW, 2, NotSerialized)
        {
            Store (Arg0, Index (PRWP, Zero))
            ShiftLeft (SS1, One, Local0)
            Or (Local0, ShiftLeft (SS2, 0x02), Local0)
            Or (Local0, ShiftLeft (SS3, 0x03), Local0)
            Or (Local0, ShiftLeft (SS4, 0x04), Local0)
            If (And (ShiftLeft (One, Arg1), Local0))
            {
                Store (Arg1, Index (PRWP, One))
            }
            Else
            {
                ShiftRight (Local0, One, Local0)
                FindSetLeftBit (Local0, Index (PRWP, One))
            }

            Return (PRWP)
        }
    }

    Scope (_SB.PCI0)
    {
        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y2A)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00008000,         // Address Length
                    _Y2C)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y2D)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y2E)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y2F)
                Memory32Fixed (ReadWrite,
                    0xFED20000,         // Address Base
                    0x00020000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFED90000,         // Address Base
                    0x00004000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED45000,         // Address Base
                    0x0004B000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFF000000,         // Address Base
                    0x01000000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFEE00000,         // Address Base
                    0x00100000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y2B)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y2A._BAS, RBR0)  // _BAS: Base Address
                ShiftLeft (^^LPCB.RCBA, 0x0E, RBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y2B._BAS, TBR0)  // _BAS: Base Address
                Store (TBAB, TBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y2B._LEN, TBLN)  // _LEN: Length
                If (LEqual (TBAB, Zero))
                {
                    Store (Zero, TBLN)
                }

                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y2C._BAS, MBR0)  // _BAS: Base Address
                ShiftLeft (MHBR, 0x0F, MBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y2D._BAS, DBR0)  // _BAS: Base Address
                ShiftLeft (DIBR, 0x0C, DBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y2E._BAS, EBR0)  // _BAS: Base Address
                ShiftLeft (EPBR, 0x0C, EBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y2F._BAS, XBR0)  // _BAS: Base Address
                ShiftLeft (PXBR, 0x1A, XBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y2F._LEN, XSZ0)  // _LEN: Length
                ShiftRight (0x10000000, PXSZ, XSZ0)
                Return (BUF0)
            }
        }
    }

    Method (BRTN, 1, Serialized)
    {
        If (LEqual (And (DID1, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.IGPU.DD01, Arg0)
        }

        If (LEqual (And (DID2, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.IGPU.DD02, Arg0)
        }

        If (LEqual (And (DID3, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.IGPU.DD03, Arg0)
        }

        If (LEqual (And (DID4, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.IGPU.DD04, Arg0)
        }

        If (LEqual (And (DID5, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.IGPU.DD05, Arg0)
        }

        If (LEqual (And (DID6, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.IGPU.DD06, Arg0)
        }

        If (LEqual (And (DID7, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.IGPU.DD07, Arg0)
        }

        If (LEqual (And (DID8, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.IGPU.DD08, Arg0)
        }
    }

    Scope (_GPE)
    {
        Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (LEqual (RP1D, Zero))
            {
                \_SB.PCI0.RP01.HPME ()
                Notify (\_SB.PCI0.RP01, 0x02)
            }

            If (LEqual (RP2D, Zero))
            {
                \_SB.PCI0.RP02.HPME ()
                Notify (\_SB.PCI0.RP02, 0x02)
            }

            If (LEqual (RP3D, Zero))
            {
                \_SB.PCI0.RP03.HPME ()
                Notify (\_SB.PCI0.RP03, 0x02)
            }

            If (LEqual (RP4D, Zero))
            {
                \_SB.PCI0.RP04.HPME ()
                Notify (\_SB.PCI0.RP04, 0x02)
            }

            If (LEqual (RP5D, Zero))
            {
                \_SB.PCI0.RP05.HPME ()
                Notify (\_SB.PCI0.RP05, 0x02)
            }

            If (LEqual (RP7D, Zero))
            {
                \_SB.PCI0.RP07.HPME ()
                Notify (\_SB.PCI0.RP07, 0x02)
            }

            If (LEqual (RP8D, Zero))
            {
                \_SB.PCI0.RP08.HPME ()
                Notify (\_SB.PCI0.RP08, 0x02)
            }

            Notify (\_SB.PCI0.P0P2, 0x02)
            Notify (\_SB.PCI0.P0P2.PEGP, 0x02)
            Notify (\_SB.PCI0.PEG1, 0x02)
            Notify (\_SB.PCI0.PEG2, 0x02)
            Notify (\_SB.PCI0.PEG3, 0x02)
        }

        Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.EH01, 0x02)
            Notify (\_SB.PCI0.EH02, 0x02)
            Notify (\_SB.PCI0.HDEF, 0x02)
            Notify (\_SB.PCI0.GLAN, 0x02)
        }

        Method (_L01, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Add (L01C, One, L01C)
            P8XH (Zero, One)
            P8XH (One, L01C)
            If (LAnd (LEqual (RP1D, Zero), \_SB.PCI0.RP01.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP01.PDCX)
                {
                    Store (One, \_SB.PCI0.RP01.PDCX)
                    Store (One, \_SB.PCI0.RP01.HPSX)
                    If (LNot (\_SB.PCI0.RP01.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP01.L0SE)
                    }

                    Notify (\_SB.PCI0.RP01, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP01.HPSX)
                }
            }

            If (LAnd (LEqual (RP2D, Zero), \_SB.PCI0.RP02.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP02.PDCX)
                {
                    Store (One, \_SB.PCI0.RP02.PDCX)
                    Store (One, \_SB.PCI0.RP02.HPSX)
                    If (LNot (\_SB.PCI0.RP02.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP02.L0SE)
                    }

                    Notify (\_SB.PCI0.RP02, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP02.HPSX)
                }
            }

            If (LAnd (LEqual (RP3D, Zero), \_SB.PCI0.RP03.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP03.PDCX)
                {
                    Store (One, \_SB.PCI0.RP03.PDCX)
                    Store (One, \_SB.PCI0.RP03.HPSX)
                    If (LNot (\_SB.PCI0.RP03.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP03.L0SE)
                    }

                    Notify (\_SB.PCI0.RP03, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP03.HPSX)
                }
            }

            If (LAnd (LEqual (RP4D, Zero), \_SB.PCI0.RP04.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP04.PDCX)
                {
                    Store (One, \_SB.PCI0.RP04.PDCX)
                    Store (One, \_SB.PCI0.RP04.HPSX)
                    If (LNot (\_SB.PCI0.RP04.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP04.L0SE)
                    }

                    Notify (\_SB.PCI0.RP04, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP04.HPSX)
                }
            }

            If (LAnd (LEqual (RP5D, Zero), \_SB.PCI0.RP05.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP05.PDCX)
                {
                    Store (One, \_SB.PCI0.RP05.PDCX)
                    Store (One, \_SB.PCI0.RP05.HPSX)
                    If (LNot (\_SB.PCI0.RP05.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP05.L0SE)
                    }

                    Notify (\_SB.PCI0.RP05, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP05.HPSX)
                }
            }

            If (LAnd (LEqual (RP7D, Zero), \_SB.PCI0.RP07.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP07.PDCX)
                {
                    Store (One, \_SB.PCI0.RP07.PDCX)
                    Store (One, \_SB.PCI0.RP07.HPSX)
                    If (LNot (\_SB.PCI0.RP07.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP07.L0SE)
                    }

                    If (ECON)
                    {
                        If (LEqual (\_SB.PCI0.LPCB.H_EC.DOCK, Zero))
                        {
                            Notify (\_SB.PCI0.RP07, Zero)
                        }
                    }
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP07.HPSX)
                }
            }

            If (LAnd (LEqual (RP8D, Zero), \_SB.PCI0.RP08.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP08.PDCX)
                {
                    Store (One, \_SB.PCI0.RP08.PDCX)
                    Store (One, \_SB.PCI0.RP08.HPSX)
                    If (LNot (\_SB.PCI0.RP08.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP08.L0SE)
                    }

                    If (ECON)
                    {
                        If (LEqual (\_SB.PCI0.LPCB.H_EC.DOCK, Zero))
                        {
                            Notify (\_SB.PCI0.RP08, Zero)
                        }
                    }
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP08.HPSX)
                }
            }
        }

        Method (_L02, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Store (Zero, GPEC)
            If (CondRefOf (\_SB.PCI0.IEIT.EITV))
            {
                \_SB.PCI0.IEIT.EITV ()
            }

            Notify (\_TZ.TZ00, 0x80)
            Notify (\_TZ.TZ01, 0x80)
            If (CondRefOf (TNOT))
            {
                TNOT ()
            }
        }

        Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (LAnd (\_SB.PCI0.IGPU.GSSE, LNot (GSMI)))
            {
                \_SB.PCI0.IGPU.GSCI ()
            }
        }

        Method (_L07, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Store (0x20, \_SB.PCI0.SBUS.HSTS)
        }

        Method (_L1E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (LEqual (ECON, Zero))
            {
                Return (Zero)
            }

            If (LNotEqual (LIDS, \_SB.PCI0.LPCB.H_EC.LSTE))
            {
                Store (\_SB.PCI0.LPCB.H_EC.LSTE, LIDS)
                If (IGDS)
                {
                    If (\_SB.PCI0.IGPU.GLID (LIDS))
                    {
                        Or (\_SB.PCI0.IGPU.CLID, 0x80000000, \_SB.PCI0.IGPU.CLID)
                    }
                }

                Notify (\_SB.LID0, 0x80)
            }
            Else
            {
                If (LEqual (BNUM, Zero))
                {
                    If (LNotEqual (PWRS, \_SB.PCI0.LPCB.H_EC.VPWR))
                    {
                        Store (\_SB.PCI0.LPCB.H_EC.VPWR, PWRS)
                        PNOT ()
                    }
                }

                Notify (\_SB.PWRB, 0x02)
            }

            Return (Zero)
        }
    }

    Device (_SB.PCI0.DOCK)
    {
        Name (_HID, "ABCDEF00")  // _HID: Hardware ID
        Name (_CID, EisaId ("PNP0C15"))  // _CID: Compatible ID
        Name (_UID, "SADDLESTRING")  // _UID: Unique ID
        Method (_EJ0, 1, NotSerialized)  // _EJx: Eject Device
        {
            P8XH (Zero, 0xED)
            If (LEqual (ECON, One))
            {
                Store (One, ^^LPCB.H_EC.EJET)
            }
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (LEqual (ECON, Zero))
            {
                Return (Zero)
            }

            If (DSTS)
            {
                P8XH (One, 0x13)
                P8XH (Zero, 0x13)
                Return (0x0F)
            }
            Else
            {
                P8XH (One, 0x14)
                P8XH (Zero, 0x14)
                Return (Zero)
            }
        }

        Method (_DCK, 1, NotSerialized)  // _DCK: Dock Present
        {
            P8XH (Zero, 0xD3)
            If (Arg0)
            {
                Return (One)
            }
            Else
            {
                Store (Zero, DSTS)
                If (LEqual (ECON, One))
                {
                    Store (Zero, ^^LPCB.H_EC.EJET)
                }

                Return (One)
            }
        }

        Name (_EDL, Package (0x05)  // _EDL: Eject Device List
        {
            ^RP07.PXSX, 
            ^RP08.PXSX, 
            EH01, 
            SAT0, 
            HDEF
        })
    }

    Scope (_TZ)
    {
        Name (ETMD, One)
        Name (THLD, 0x78)
        Name (YBT4, 0x37)
        Name (YBT3, 0x40)
        Name (YBT2, 0x49)
        Name (YBT1, 0x50)
        Name (YBT0, 0x5B)
        PowerResource (FN00, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (VFN0)
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                Store (One, VFN0)
                If (LAnd (ECON, ETMD))
                {
                    Store (One, \_SB.PCI0.LPCB.H_EC.PPSL)
                    Store (Zero, \_SB.PCI0.LPCB.H_EC.PPSH)
                    If (LEqual (BID, BYB))
                    {
                        Store (0x64, \_SB.PCI0.LPCB.H_EC.PENV)
                    }
                    Else
                    {
                        Store (AC0F, \_SB.PCI0.LPCB.H_EC.PENV)
                    }

                    Store (0x64, \_SB.PCI0.LPCB.H_EC.PSTP)
                    Store (0x1A, \_SB.PCI0.LPCB.H_EC.CMDR)
                }
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                Store (Zero, VFN0)
                If (LAnd (ECON, ETMD))
                {
                    Store (One, \_SB.PCI0.LPCB.H_EC.PPSL)
                    Store (Zero, \_SB.PCI0.LPCB.H_EC.PPSH)
                    If (LEqual (BID, BYB))
                    {
                        Store (0x5A, \_SB.PCI0.LPCB.H_EC.PENV)
                    }
                    Else
                    {
                        Store (AC1F, \_SB.PCI0.LPCB.H_EC.PENV)
                    }

                    Store (0x64, \_SB.PCI0.LPCB.H_EC.PSTP)
                    Store (0x1A, \_SB.PCI0.LPCB.H_EC.CMDR)
                }
            }
        }

        Device (FAN0)
        {
            Name (_HID, EisaId ("PNP0C0B"))  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN00
            })
        }

        PowerResource (FN01, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (VFN1)
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                Store (One, VFN1)
                If (LAnd (ECON, ETMD))
                {
                    Store (One, \_SB.PCI0.LPCB.H_EC.PPSL)
                    Store (Zero, \_SB.PCI0.LPCB.H_EC.PPSH)
                    If (LEqual (BID, BYB))
                    {
                        Store (0x5A, \_SB.PCI0.LPCB.H_EC.PENV)
                    }
                    Else
                    {
                        Store (AC1F, \_SB.PCI0.LPCB.H_EC.PENV)
                    }

                    Store (0x64, \_SB.PCI0.LPCB.H_EC.PSTP)
                    Store (0x1A, \_SB.PCI0.LPCB.H_EC.CMDR)
                }
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                Store (Zero, VFN1)
                If (LAnd (ECON, ETMD))
                {
                    Store (One, \_SB.PCI0.LPCB.H_EC.PPSL)
                    Store (Zero, \_SB.PCI0.LPCB.H_EC.PPSH)
                    If (LEqual (BID, BYB))
                    {
                        Store (0x4B, \_SB.PCI0.LPCB.H_EC.PENV)
                    }
                    Else
                    {
                        Store (Zero, \_SB.PCI0.LPCB.H_EC.PENV)
                    }

                    Store (0x64, \_SB.PCI0.LPCB.H_EC.PSTP)
                    Store (0x1A, \_SB.PCI0.LPCB.H_EC.CMDR)
                }
            }
        }

        Device (FAN1)
        {
            Name (_HID, EisaId ("PNP0C0B"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN01
            })
        }

        PowerResource (FN02, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (VFN2)
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                Store (One, VFN2)
                If (LAnd (ECON, ETMD))
                {
                    Store (One, \_SB.PCI0.LPCB.H_EC.PPSL)
                    Store (Zero, \_SB.PCI0.LPCB.H_EC.PPSH)
                    If (LEqual (BID, BYB))
                    {
                        Store (0x4B, \_SB.PCI0.LPCB.H_EC.PENV)
                    }
                    Else
                    {
                        Store (Zero, \_SB.PCI0.LPCB.H_EC.PENV)
                    }

                    Store (0x64, \_SB.PCI0.LPCB.H_EC.PSTP)
                    Store (0x1A, \_SB.PCI0.LPCB.H_EC.CMDR)
                }
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                Store (Zero, VFN2)
                If (LAnd (ECON, ETMD))
                {
                    Store (One, \_SB.PCI0.LPCB.H_EC.PPSL)
                    Store (Zero, \_SB.PCI0.LPCB.H_EC.PPSH)
                    If (LEqual (BID, BYB))
                    {
                        Store (0x37, \_SB.PCI0.LPCB.H_EC.PENV)
                    }
                    Else
                    {
                        Store (Zero, \_SB.PCI0.LPCB.H_EC.PENV)
                    }

                    Store (0x64, \_SB.PCI0.LPCB.H_EC.PSTP)
                    Store (0x1A, \_SB.PCI0.LPCB.H_EC.CMDR)
                }
            }
        }

        Device (FAN2)
        {
            Name (_HID, EisaId ("PNP0C0B"))  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN02
            })
        }

        PowerResource (FN03, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (VFN3)
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                Store (One, VFN3)
                If (LAnd (ECON, ETMD))
                {
                    Store (One, \_SB.PCI0.LPCB.H_EC.PPSL)
                    Store (Zero, \_SB.PCI0.LPCB.H_EC.PPSH)
                    If (LEqual (BID, BYB))
                    {
                        Store (0x37, \_SB.PCI0.LPCB.H_EC.PENV)
                    }
                    Else
                    {
                        Store (Zero, \_SB.PCI0.LPCB.H_EC.PENV)
                    }

                    Store (0x64, \_SB.PCI0.LPCB.H_EC.PSTP)
                    Store (0x1A, \_SB.PCI0.LPCB.H_EC.CMDR)
                }
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                Store (Zero, VFN3)
                If (LAnd (ECON, ETMD))
                {
                    Store (One, \_SB.PCI0.LPCB.H_EC.PPSL)
                    Store (Zero, \_SB.PCI0.LPCB.H_EC.PPSH)
                    If (LEqual (BID, BYB))
                    {
                        Store (0x23, \_SB.PCI0.LPCB.H_EC.PENV)
                    }
                    Else
                    {
                        Store (Zero, \_SB.PCI0.LPCB.H_EC.PENV)
                    }

                    Store (0x64, \_SB.PCI0.LPCB.H_EC.PSTP)
                    Store (0x1A, \_SB.PCI0.LPCB.H_EC.CMDR)
                }
            }
        }

        Device (FAN3)
        {
            Name (_HID, EisaId ("PNP0C0B"))  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN03
            })
        }

        PowerResource (FN04, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (VFN4)
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                Store (One, VFN4)
                If (LAnd (ECON, ETMD))
                {
                    Store (One, \_SB.PCI0.LPCB.H_EC.PPSL)
                    Store (Zero, \_SB.PCI0.LPCB.H_EC.PPSH)
                    If (LEqual (BID, BYB))
                    {
                        Store (0x23, \_SB.PCI0.LPCB.H_EC.PENV)
                    }
                    Else
                    {
                        Store (Zero, \_SB.PCI0.LPCB.H_EC.PENV)
                    }

                    Store (0x64, \_SB.PCI0.LPCB.H_EC.PSTP)
                    Store (0x1A, \_SB.PCI0.LPCB.H_EC.CMDR)
                }
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                Store (Zero, VFN4)
                If (LAnd (ECON, ETMD))
                {
                    Store (One, \_SB.PCI0.LPCB.H_EC.PPSL)
                    Store (Zero, \_SB.PCI0.LPCB.H_EC.PPSH)
                    Store (Zero, \_SB.PCI0.LPCB.H_EC.PENV)
                    Store (0x64, \_SB.PCI0.LPCB.H_EC.PSTP)
                    Store (0x1A, \_SB.PCI0.LPCB.H_EC.CMDR)
                }
            }
        }

        Device (FAN4)
        {
            Name (_HID, EisaId ("PNP0C0B"))  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN04
            })
        }

        ThermalZone (TZ00)
        {
            Name (PTMP, 0x0BB8)
            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
            {
                Store (Arg0, CTYP)
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (0x10EC)
            }

            Method (_AC0, 0, Serialized)  // _ACx: Active Cooling
            {
                If (LEqual (BID, BYB))
                {
                    Return (Add (0x0AAC, Multiply (YBT0, 0x0A)))
                }
                Else
                {
                    Return (Add (0x0AAC, Multiply (ACTT, 0x0A)))
                }
            }

            Method (_AC1, 0, Serialized)  // _ACx: Active Cooling
            {
                If (LEqual (BID, BYB))
                {
                    Return (Add (0x0AAC, Multiply (YBT1, 0x0A)))
                }
                Else
                {
                    Return (Add (0x0AAC, Multiply (ACT1, 0x0A)))
                }
            }

            Method (_AC2, 0, Serialized)  // _ACx: Active Cooling
            {
                If (LEqual (BID, BYB))
                {
                    Return (Add (0x0AAC, Multiply (YBT2, 0x0A)))
                }
                Else
                {
                    Return (0x0AAC)
                }
            }

            Method (_AC3, 0, Serialized)  // _ACx: Active Cooling
            {
                If (LEqual (BID, BYB))
                {
                    Return (Add (0x0AAC, Multiply (YBT3, 0x0A)))
                }
                Else
                {
                    Return (0x0AAC)
                }
            }

            Method (_AC4, 0, Serialized)  // _ACx: Active Cooling
            {
                If (LEqual (BID, BYB))
                {
                    Return (Add (0x0AAC, Multiply (YBT4, 0x0A)))
                }
                Else
                {
                    Return (0x0AAC)
                }
            }

            Name (_AL0, Package (0x01)  // _ALx: Active List
            {
                FAN0
            })
            Name (_AL1, Package (0x01)  // _ALx: Active List
            {
                FAN1
            })
            Name (_AL2, Package (0x01)  // _ALx: Active List
            {
                FAN2
            })
            Name (_AL3, Package (0x01)  // _ALx: Active List
            {
                FAN3
            })
            Name (_AL4, Package (0x01)  // _ALx: Active List
            {
                FAN4
            })
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (LNot (ETMD))
                {
                    Return (0x0BB8)
                }

                If (LEqual (DTSE, 0x02))
                {
                    Return (Add (0x0B10, Multiply (CRTT, 0x0A)))
                }

                If (LEqual (DTSE, One))
                {
                    If (LEqual (PKGA, One))
                    {
                        Store (PDTS, Local0)
                        Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
                    }

                    Store (DTS1, Local0)
                    If (LGreater (DTS2, Local0))
                    {
                        Store (DTS2, Local0)
                    }

                    If (LGreater (DTS3, Local0))
                    {
                        Store (DTS3, Local0)
                    }

                    If (LGreater (DTS4, Local0))
                    {
                        Store (DTS4, Local0)
                    }

                    Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
                }

                If (ECON)
                {
                    Store (\_SB.PCI0.LPCB.H_EC.PLMX, Local0)
                    Add (0x0AAC, Multiply (Local0, 0x0A), Local0)
                    Store (Local0, PTMP)
                    Return (Local0)
                }

                Return (0x0BC2)
            }
        }

        ThermalZone (TZ01)
        {
            Name (PTMP, 0x0BB8)
            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
            {
                Store (Arg0, CTYP)
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (0x10EC)
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (LNot (ETMD))
                {
                    Return (0x0BCC)
                }

                If (LEqual (DTSE, 0x02))
                {
                    Return (Add (0x0B10, Multiply (CRTT, 0x0A)))
                }

                If (LEqual (DTSE, One))
                {
                    If (LEqual (PKGA, One))
                    {
                        Store (PDTS, Local0)
                        Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
                    }

                    Store (DTS1, Local0)
                    If (LGreater (DTS2, Local0))
                    {
                        Store (DTS2, Local0)
                    }

                    If (LGreater (DTS3, Local0))
                    {
                        Store (DTS3, Local0)
                    }

                    If (LGreater (DTS4, Local0))
                    {
                        Store (DTS4, Local0)
                    }

                    Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
                }

                If (ECON)
                {
                    Store (\_SB.PCI0.LPCB.H_EC.PECH, Local0)
                    Multiply (Local0, 0x0A, Local0)
                    Store (\_SB.PCI0.LPCB.H_EC.PECL, Local1)
                    ShiftRight (Local1, 0x02, Local1)
                    Divide (Multiply (Local1, 0x0A), 0x40, , Local1)
                    Add (Local0, Local1, Local0)
                    Add (Local0, 0x0AAC, Local0)
                    Store (Local0, PTMP)
                    Return (Local0)
                }

                Return (0x0BD6)
            }

            Method (_PSL, 0, Serialized)  // _PSL: Passive List
            {
                If (LEqual (TCNT, 0x08))
                {
                    Return (Package (0x04)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1, 
                        \_PR.CPU2, 
                        \_PR.CPU3
                    })
                }

                If (LEqual (TCNT, 0x04))
                {
                    Return (Package (0x04)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1, 
                        \_PR.CPU2, 
                        \_PR.CPU3
                    })
                }

                If (LEqual (TCNT, 0x02))
                {
                    Return (Package (0x02)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1
                    })
                }

                Return (Package (0x01)
                {
                    \_PR.CPU0
                })
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (Add (0x0AAC, Multiply (PSVT, 0x0A)))
            }

            Method (_TC1, 0, Serialized)  // _TC1: Thermal Constant 1
            {
                Return (TC1V)
            }

            Method (_TC2, 0, Serialized)  // _TC2: Thermal Constant 2
            {
                Return (TC2V)
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (TSPV)
            }
        }
    }

    Scope (_SB.PCI0.SAT0)
    {
        Device (PRT2)
        {
            Name (_ADR, 0x0002FFFF)  // _ADR: Address
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, ToUUID ("bdfaef30-aebb-11de-8a39-0800200c9a66")))
                {
                    Name (T_0, Zero)
                    Store (ToInteger (Arg2), T_0)
                    If (LEqual (T_0, Zero))
                    {
                        Name (T_1, Zero)
                        Store (ToInteger (Arg1), T_1)
                        If (LEqual (T_1, One))
                        {
                            If (LEqual (PFLV, FDTP))
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                           
                                })
                            }

                            Return (Buffer (One)
                            {
                                 0x0F                                           
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                           
                            })
                        }
                    }
                    ElseIf (LEqual (T_0, One))
                    {
                        Return (One)
                    }
                    ElseIf (LEqual (T_0, 0x02))
                    {
                        Store (Zero, GPE3)
                        If (LEqual (And (GL00, 0x08), 0x08))
                        {
                            Or (GIV0, 0x08, GIV0)
                        }
                        Else
                        {
                            And (GIV0, 0xF7, GIV0)
                        }

                        And (GL08, 0xEF, GL08)
                        Sleep (0xC8)
                        Store (One, GPS3)
                        Store (One, GPE3)
                        Return (One)
                    }
                    ElseIf (LEqual (T_0, 0x03))
                    {
                        Store (Zero, GPE3)
                        Store (One, GPS3)
                        Or (GL08, 0x10, GL08)
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (_GPE)
    {
        Method (_L13, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (LEqual (PFLV, FDTP))
            {
                Return (Zero)
            }

            Store (Zero, GPE3)
            Or (GL08, 0x10, GL08)
            Notify (\_SB.PCI0.SAT0, 0x82)
            Return (Zero)
        }
    }

    Scope (_SB.PCI0.LPCB)
    {
        Device (H_EC)
        {
            Name (_HID, EisaId ("PNP0C09"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BFFR, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x0062,             // Range Minimum
                        0x0062,             // Range Maximum
                        0x00,               // Alignment
                        0x01,               // Length
                        )
                    IO (Decode16,
                        0x0066,             // Range Minimum
                        0x0066,             // Range Maximum
                        0x00,               // Alignment
                        0x01,               // Length
                        )
                })
                Return (BFFR)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (ECON, One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            OperationRegion (ECF2, EmbeddedControl, Zero, 0xFF)
            Field (ECF2, ByteAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                PLMX,   8, 
                LTMP,   8, 
                RPWR,   1, 
                    ,   2, 
                CFAN,   1, 
                    ,   2, 
                LSTE,   1, 
                Offset (0x04), 
                SPTR,   8, 
                SSTS,   8, 
                SADR,   8, 
                SCMD,   8, 
                SBFR,   256, 
                SCNT,   8, 
                Offset (0x2F), 
                CTMP,   8, 
                DOCK,   1, 
                EJET,   1, 
                    ,   1, 
                PBNS,   1, 
                VPWR,   1, 
                Offset (0x31), 
                SCAN,   8, 
                B1ST,   8, 
                SCC0,   8, 
                SCC1,   8, 
                B1VT,   8, 
                B2ST,   8, 
                SFC0,   8, 
                SFC1,   8, 
                B2VT,   8, 
                CMDR,   8, 
                LUXL,   8, 
                LUXH,   8, 
                ACH0,   8, 
                ACH1,   8, 
                Offset (0x41), 
                PPSL,   8, 
                PPSH,   8, 
                PINV,   8, 
                PENV,   8, 
                PSTP,   8, 
                Offset (0x47), 
                CPUP,   16, 
                MCHP,   16, 
                SYSP,   16, 
                CVRT,   8, 
                FANT,   8, 
                SKNT,   8, 
                AMBT,   8, 
                Offset (0x56), 
                B1CM,   8, 
                B1DC,   16, 
                B1RC,   16, 
                B1FD,   16, 
                B1FV,   16, 
                B1DI,   16, 
                B1CI,   16, 
                B2RC,   16, 
                B2FC,   16, 
                B2FV,   16, 
                B2DI,   16, 
                B2CI,   16, 
                CPAP,   16, 
                MCAP,   16, 
                SYAP,   16, 
                CFSP,   16, 
                BRTV,   8, 
                Offset (0x77), 
                SLPC,   8, 
                BRRP,   32, 
                PTIM,   8, 
                DHPD,   8, 
                DIM0,   8, 
                DIM1,   8, 
                PMAX,   8, 
                PPDT,   8, 
                PECL,   8, 
                PECH,   8, 
                PMDT,   8, 
                TSD0,   8, 
                TSD1,   8, 
                TSD2,   8, 
                TSD3,   8, 
                PAKN,   8, 
                CPUE,   32, 
                Offset (0x9B), 
                PRCL,   8, 
                PRC0,   8, 
                PRC1,   8, 
                PRCM,   8, 
                PRIN,   8, 
                PSTE,   8, 
                PCAD,   8, 
                PEWL,   8, 
                PWRL,   8, 
                PECD,   8, 
                PEHI,   8, 
                PECI,   8, 
                PEPL,   8, 
                PEPM,   8, 
                PWFC,   8, 
                PECC,   8, 
                PDT0,   8, 
                PDT1,   8, 
                PDT2,   8, 
                PDT3,   8, 
                PRFC,   8, 
                PRS0,   8, 
                PRS1,   8, 
                PRS2,   8, 
                PRS3,   8, 
                PRS4,   8, 
                Offset (0xBB), 
                PRCS,   8, 
                PEC,    8, 
                PEC1,   8, 
                PEC2,   8, 
                PEC3,   8, 
                GTVR,   8, 
                MCRT,   8
            }

            Method (ECMD, 1, Serialized)
            {
                If (ECON)
                {
                    While (CMDR)
                    {
                        Stall (0x14)
                    }

                    Store (Arg0, CMDR)
                }
            }

            Device (ALSD)
            {
                Name (_HID, "ACPI0008")  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (ALSE, 0x02))
                    {
                        Return (0x0B)
                    }

                    Return (Zero)
                }

                Method (_ALI, 0, NotSerialized)  // _ALI: Ambient Light Illuminance
                {
                    Return (Or (ShiftLeft (LHIH, 0x08), LLOW))
                }

                Name (_ALR, Package (0x05)  // _ALR: Ambient Light Response
                {
                    Package (0x02)
                    {
                        0x46, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0x49, 
                        0x0A
                    }, 

                    Package (0x02)
                    {
                        0x55, 
                        0x50
                    }, 

                    Package (0x02)
                    {
                        0x64, 
                        0x012C
                    }, 

                    Package (0x02)
                    {
                        0x96, 
                        0x03E8
                    }
                })
            }

            Scope (\)
            {
                Field (GNVS, AnyAcc, Lock, Preserve)
                {
                    Offset (0x1E), 
                    BNUM,   8, 
                    B1SC,   16, 
                    B1SF,   16, 
                    B1SS,   8
                }
            }

            Device (BAT1)
            {
                Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (And (BNUM, One))
                    {
                        Return (0x1F)
                    }

                    Return (0x0B)
                }

                Device (ADP1)
                {
                    Name (_HID, "ACPI0003")  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LEqual (ECON, One))
                        {
                            Return (0x0F)
                        }

                        Return (Zero)
                    }

                    Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
                    {
                        And (RPWR, One, PWRS)
                        Return (PWRS)
                    }

                    Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
                    {
                        Return (_SB)
                    }

                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x18, 
                        0x03
                    })
                }

                Method (_BIF, 0, Serialized)  // _BIF: Battery Information
                {
                    Name (PKG0, Package (0x0D)
                    {
                        Zero, 
                        0x1130, 
                        0x1130, 
                        One, 
                        Ones, 
                        0x0190, 
                        0xC8, 
                        0x28, 
                        0x28, 
                        "CRB Battery 1", 
                        "Battery 1", 
                        "Real", 
                        "-Real Battery 1-"
                    })
                    Store (B1B2 (SFC0, SFC1), Index (PKG0, 0x02))
                    Return (PKG0)
                }

                Method (_BST, 0, Serialized)  // _BST: Battery Status
                {
                    Name (PKG1, Package (0x04)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        0x4B00
                    })
                    And (B1ST, 0x07, Index (PKG1, Zero))
                    Store (B1B2 (SCC0, SCC1), Index (PKG1, 0x02))
                    Return (PKG1)
                }

                Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
                {
                    Return (_SB)
                }
            }

            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (LAnd (LEqual (Arg0, 0x03), LEqual (Arg1, One)))
                {
                    If (LEqual (Zero, ACTT))
                    {
                        Store (Zero, CFAN)
                    }

                    If (LEqual (One, THOF))
                    {
                        \_TZ.FN00._OFF ()
                    }

                    Store (LUXH, LHIH)
                    Store (LUXL, LLOW)
                    If (LAnd (LEqual (ALSE, 0x02), IGDS))
                    {
                        Store (LUXH, Local0)
                        Or (ShiftLeft (Local0, 0x08), LUXL, ^^^IGPU.ALSI)
                    }

                    If (LEqual (LSTE, Zero))
                    {
                        Store (Zero, ^^^IGPU.CLID)
                    }

                    If (LEqual (LSTE, One))
                    {
                        Store (0x03, ^^^IGPU.CLID)
                    }

                    Store (LSTE, LIDS)
                    Store (DSTS, ^^^IGPU.CDCK)
                    Store (Zero, BNUM)
                    Or (BNUM, ShiftRight (And (B1ST, 0x08), 0x03), BNUM)
                    Or (BNUM, ShiftRight (And (B2ST, 0x08), 0x02), BNUM)
                    Store (PWRS, Local0)
                    If (LEqual (BNUM, Zero))
                    {
                        Store (VPWR, PWRS)
                    }
                    Else
                    {
                        Store (RPWR, PWRS)
                    }

                    PNOT ()
                }
            }

            Name (_GPE, 0x17)  // _GPE: General Purpose Events
            Method (_Q0D, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x0D)
                ^^^IGPU.GHDS (One)
            }

            Method (_Q0A, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x0A)
                Notify (SLPB, 0x80)
            }

            Method (_Q30, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x30)
                Store (One, PWRS)
                PNOT ()
            }

            Method (_Q31, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x31)
                Store (Zero, PWRS)
                PNOT ()
            }

            Method (_Q32, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x32)
                PNOT ()
            }

            Method (_Q33, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x33)
                Store (Zero, BNUM)
                Or (BNUM, ShiftRight (And (B1ST, 0x08), 0x03), BNUM)
                Or (BNUM, ShiftRight (And (B2ST, 0x08), 0x02), BNUM)
                PNOT ()
            }

            Method (_Q34, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (LLess (OSYS, 0x07D6))
                {
                    Store (BRRP, GDGC)
                    Stall (0x0A)
                    If (LLessEqual (GDGC, 0x20))
                    {
                        Store (0x05, BRRP)
                        Stall (0x0A)
                        P8XH (Zero, 0x05)
                    }

                    If (LAnd (LGreater (GDGC, 0x20), LLess (GDGC, 0xFF)))
                    {
                        Subtract (GDGC, 0x20, GDGC)
                        Store (GDGC, BRRP)
                        Stall (0x0A)
                        P8XH (Zero, GDGC)
                    }

                    If (LEqual (GDGC, 0xFF))
                    {
                        Store (0xE0, BRRP)
                        Stall (0x0A)
                        P8XH (Zero, 0xE0)
                    }
                }
                ElseIf (IGDS)
                {
                    BRTN (0x87)
                }
            }

            Method (_Q35, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (LLess (OSYS, 0x07D6))
                {
                    Store (BRRP, GDGC)
                    Stall (0x0A)
                    If (LEqual (GDGC, 0xE0))
                    {
                        Store (0xFF, BRRP)
                        Stall (0x0A)
                        P8XH (Zero, 0xFF)
                    }

                    If (LAnd (LGreater (GDGC, 0x05), LLess (GDGC, 0xE0)))
                    {
                        Add (GDGC, 0x20, GDGC)
                        Store (GDGC, BRRP)
                        Stall (0x0A)
                        P8XH (Zero, GDGC)
                    }

                    If (LEqual (GDGC, 0x05))
                    {
                        Store (0x20, BRRP)
                        Stall (0x0A)
                        P8XH (Zero, 0x20)
                    }
                }
                ElseIf (IGDS)
                {
                    BRTN (0x86)
                }
            }

            Method (_Q51, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x51)
                Store (LSTE, LIDS)
                ^^^IGPU.GLID (LIDS)
                Notify (LID0, 0x80)
            }

            Method (_QF0, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (LEqual (DBGS, Zero))
                {
                    Notify (\_TZ.TZ00, 0x80)
                    Notify (\_TZ.TZ01, 0x80)
                }
            }

            Device (WDT0)
            {
                Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                Name (_UID, 0x03)  // _UID: Unique ID
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    IO (Decode16,
                        0x06A4,             // Range Minimum
                        0x06A4,             // Range Maximum
                        0x01,               // Alignment
                        0x01,               // Length
                        )
                    IO (Decode16,
                        0x06A0,             // Range Minimum
                        0x06A0,             // Range Maximum
                        0x01,               // Alignment
                        0x01,               // Length
                        )
                })
            }

            Method (CHDK, 1, NotSerialized)
            {
                If (LEqual (ECON, One))
                {
                    If (LEqual (DOCK, Arg0))
                    {
                        Return (One)
                    }
                }

                Return (Zero)
            }
        }

        Scope (\_SB)
        {
            Device (LID0)
            {
                Name (_HID, EisaId ("PNP0C0D"))  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (ECON, One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_LID, 0, NotSerialized)  // _LID: Lid Status
                {
                    Return (^^PCI0.LPCB.H_EC.LSTE)
                }
            }

            Device (PWRB)
            {
                Name (_HID, EisaId ("PNP0C0C"))  // _HID: Hardware ID
            }

            Device (SLPB)
            {
                Name (_HID, EisaId ("PNP0C0E"))  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0B)
                }
            }
        }

        Device (GMUX)
        {
            Name (_HID, EisaId ("APP000B"))  // _HID: Hardware ID
            Name (_CID, "gmux")  // _CID: Compatible ID
            Name (_STA, 0x0B)  // _STA: Status
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0700,             // Range Minimum
                    0x07FF,             // Range Maximum
                    0x01,               // Alignment
                    0xFF,               // Length
                    )
            })
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x16, 
                0x03
            })
            Scope (\_GPE)
            {
                Method (_L16, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
                {
                    Notify (\_SB.PCI0.LPCB.GMUX, 0x80)
                }
            }

            Name (GMGP, 0x16)
            Method (GMSP, 1, NotSerialized)
            {
                If (LLessEqual (Arg0, Zero))
                {
                    Or (GP06, Arg0, GP06)
                }
            }

            Method (GMLV, 0, NotSerialized)
            {
                Return (GP06)
            }
        }
    }

    Device (_SB.PCI0.LPCB.TPM)
    {
        Name (_HID, EisaId ("PNP0C31"))  // _HID: Hardware ID
        Name (_STR, Unicode ("TPM 1.2 Device"))  // _STR: Description String
        Name (_UID, One)  // _UID: Unique ID
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            Memory32Fixed (ReadOnly,
                0xFED40000,         // Address Base
                0x00005000,         // Address Length
                )
        })
        OperationRegion (TMMB, SystemMemory, 0xFED40000, 0x5000)
        Field (TMMB, ByteAcc, Lock, Preserve)
        {
            ACCS,   8, 
            Offset (0x18), 
            TSTA,   8, 
            TBCA,   8, 
            Offset (0xF00), 
            TVID,   16, 
            TDID,   16
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (LEqual (VIDT, 0x8086))
            {
                Return (Zero)
            }
            Else
            {
                If (TPMF)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.LPCB.TPM)
    {
        OperationRegion (TSMI, SystemIO, SMIT, 0x02)
        Field (TSMI, ByteAcc, NoLock, Preserve)
        {
            INQ,    8, 
            DAT,    8
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg0, ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
            {
                Name (T_0, Zero)
                Store (ToInteger (Arg2), T_0)
                If (LEqual (T_0, Zero))
                {
                    Return (Buffer (One)
                    {
                         0x7F                                           
                    })
                }
                ElseIf (LEqual (T_0, One))
                {
                    Return ("1.0")
                }
                ElseIf (LEqual (T_0, 0x02))
                {
                    ToInteger (DerefOf (Index (Arg3, Zero)), TMF2)
                    Store (TMF2, DAT)
                    Store (OFST, INQ)
                    Return (Zero)
                }
                ElseIf (LEqual (T_0, 0x03))
                {
                    Name (PPI1, Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                    Store (One, TMF1)
                    Add (TMF1, OFST, TMF2)
                    Store (0xFA, DAT)
                    Store (TMF2, INQ)
                    Store (DAT, Index (PPI1, One))
                    Return (PPI1)
                }
                ElseIf (LEqual (T_0, 0x04))
                {
                    Return (One)
                }
                ElseIf (LEqual (T_0, 0x05))
                {
                    Name (PPI2, Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Zero
                    })
                    Store (One, TMF1)
                    Add (TMF1, OFST, TMF2)
                    Store (0xFB, DAT)
                    Store (TMF2, INQ)
                    Store (DAT, Index (PPI2, One))
                    Store (One, TMF1)
                    Add (TMF1, OFST, TMF2)
                    Store (0xFC, DAT)
                    Store (TMF2, INQ)
                    If (LEqual (DAT, 0xFFF0))
                    {
                        Store (0xFFFFFFF0, Index (PPI2, 0x02))
                    }
                    ElseIf (LEqual (DAT, 0xFFF1))
                    {
                        Store (0xFFFFFFF1, Index (PPI2, 0x02))
                    }
                    Else
                    {
                        Store (DAT, Index (PPI2, 0x02))
                    }

                    Return (PPI2)
                }
                ElseIf (LEqual (T_0, 0x06))
                {
                    Return (Zero)
                }
                Else
                {
                }
            }
            ElseIf (LEqual (Arg0, ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d")))
            {
                Name (T_1, Zero)
                Store (ToInteger (Arg2), T_1)
                If (LEqual (T_1, Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }
                ElseIf (LEqual (T_1, One))
                {
                    ToInteger (DerefOf (Index (Arg3, Zero)), TMF1)
                    Store (TMF1, DAT)
                    Store (0x02, TMF1)
                    Add (TMF1, OFST, TMF2)
                    Store (TMF2, INQ)
                    Return (Zero)
                }
                Else
                {
                }
            }

            Return (Buffer (One)
            {
                 0x00                                           
            })
        }
    }

    Scope (_SB.PCI0)
    {
        OperationRegion (ITPD, PCI_Config, 0xE8, 0x04)
        Field (ITPD, DWordAcc, NoLock, Preserve)
        {
                ,   15, 
            TPDI,   1
        }

        OperationRegion (TVID, SystemMemory, 0xFED40F00, 0x02)
        Field (TVID, WordAcc, NoLock, Preserve)
        {
            VIDT,   16
        }
    }

    Device (_SB.PCI0.ITPM)
    {
        Name (_HID, "INTC0102")  // _HID: Hardware ID
        Name (_CID, EisaId ("PNP0C31"))  // _CID: Compatible ID
        Name (_STR, Unicode ("TPM 1.2 Device"))  // _STR: Description String
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            Memory32Fixed (ReadOnly,
                0xFED40000,         // Address Base
                0x00005000,         // Address Length
                )
        })
        OperationRegion (TSMI, SystemIO, SMIT, 0x02)
        Field (TSMI, ByteAcc, NoLock, Preserve)
        {
            INQ,    8, 
            DAT,    8
        }

        OperationRegion (TPMR, SystemMemory, 0xFED40000, 0x5000)
        Field (TPMR, AnyAcc, NoLock, Preserve)
        {
            ACC0,   8
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (LNotEqual (ACC0, 0xFF))
            {
                If (LEqual (VIDT, 0x8086))
                {
                    If (TPMF)
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
            }

            Return (Zero)
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg0, ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
            {
                Name (T_0, Zero)
                Store (ToInteger (Arg2), T_0)
                If (LEqual (T_0, Zero))
                {
                    Return (Buffer (One)
                    {
                         0x7F                                           
                    })
                }
                ElseIf (LEqual (T_0, One))
                {
                    Return ("1.0")
                }
                ElseIf (LEqual (T_0, 0x02))
                {
                    ToInteger (DerefOf (Index (Arg3, Zero)), TMF2)
                    Store (TMF2, DAT)
                    Store (OFST, INQ)
                    Return (Zero)
                }
                ElseIf (LEqual (T_0, 0x03))
                {
                    Name (PPI1, Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                    Store (One, TMF1)
                    Add (TMF1, OFST, TMF2)
                    Store (0xFA, DAT)
                    Store (TMF2, INQ)
                    Store (DAT, Index (PPI1, One))
                    Return (PPI1)
                }
                ElseIf (LEqual (T_0, 0x04))
                {
                    Return (One)
                }
                ElseIf (LEqual (T_0, 0x05))
                {
                    Name (PPI2, Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Zero
                    })
                    Store (One, TMF1)
                    Add (TMF1, OFST, TMF2)
                    Store (0xFB, DAT)
                    Store (TMF2, INQ)
                    Store (DAT, Index (PPI2, One))
                    Store (One, TMF1)
                    Add (TMF1, OFST, TMF2)
                    Store (0xFC, DAT)
                    Store (TMF2, INQ)
                    If (LEqual (DAT, 0xFFF0))
                    {
                        Store (0xFFFFFFF0, Index (PPI2, 0x02))
                    }
                    ElseIf (LEqual (DAT, 0xFFF1))
                    {
                        Store (0xFFFFFFF1, Index (PPI2, 0x02))
                    }
                    Else
                    {
                        Store (DAT, Index (PPI2, 0x02))
                    }

                    Return (PPI2)
                }
                ElseIf (LEqual (T_0, 0x06))
                {
                    Return (Zero)
                }
                Else
                {
                }
            }
            ElseIf (LEqual (Arg0, ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d")))
            {
                Name (T_1, Zero)
                Store (ToInteger (Arg2), T_1)
                If (LEqual (T_1, Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }
                ElseIf (LEqual (T_1, One))
                {
                    ToInteger (DerefOf (Index (Arg3, Zero)), TMF1)
                    Store (TMF1, DAT)
                    Store (0x02, TMF1)
                    Add (TMF1, OFST, TMF2)
                    Store (TMF2, INQ)
                    Return (Zero)
                }
                Else
                {
                }
            }

            Return (Buffer (One)
            {
                 0x00                                           
            })
        }
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    If (SS3)
    {
        Name (_S3, Package (0x04)  // _S3_: S3 System State
        {
            0x05, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS4)
    {
        Name (_S4, Package (0x04)  // _S4_: S4 System State
        {
            0x06, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
    Method (PTS, 1, NotSerialized)
    {
        If (Arg0)
        {
            \_SB.PCI0.LPCB.SPTS (Arg0)
            \_SB.PCI0.NPTS (Arg0)
            \_SB.PCI0.LPCB.SIOS (Arg0)
        }
    }

    Method (WAK, 1, NotSerialized)
    {
        \_SB.PCI0.LPCB.SWAK (Arg0)
        \_SB.PCI0.NWAK (Arg0)
        \_SB.PCI0.LPCB.SIOW (Arg0)
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        Store (Zero, P80D)
        P8XH (Zero, Arg0)
        PTS (Arg0)
        If (LEqual (Arg0, 0x03))
        {
            If (LAnd (DTSE, LGreater (TCNT, One)))
            {
                TRAP (TRTD, 0x1E)
            }
        }

        If (LOr (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)), LEqual (Arg0, 0x05)))
        {
            If (LEqual (PFLV, FDTP))
            {
                Store (One, GP27)
            }
        }
    }

    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        If (LOr (LLess (Arg0, One), LGreater (Arg0, 0x05)))
        {
            Store (0x03, Arg0)
        }

        P8XH (One, 0xAB)
        WAK (Arg0)
        If (NEXP)
        {
            If (And (OSCC, 0x02))
            {
                \_SB.PCI0.NHPG ()
            }

            If (And (OSCC, 0x04))
            {
                \_SB.PCI0.NPME ()
            }
        }

        If (LEqual (Arg0, 0x03))
        {
            If (LEqual (Zero, ACTT))
            {
                If (LEqual (ECON, One))
                {
                    Store (Zero, \_SB.PCI0.LPCB.H_EC.CFAN)
                }
            }
        }

        If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
        {
            If (LAnd (DTSE, LGreater (TCNT, One)))
            {
                TRAP (TRTD, 0x14)
            }

            If (LEqual (OSYS, 0x07D2))
            {
                If (And (CFGD, One))
                {
                    If (LGreater (\_PR.CPU0._PPC, Zero))
                    {
                        Subtract (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                        Add (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                    }
                    Else
                    {
                        Add (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                        Subtract (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                    }
                }
            }

            If (LEqual (ECON, One))
            {
                If (LNotEqual (LIDS, \_SB.PCI0.LPCB.H_EC.LSTE))
                {
                    Store (\_SB.PCI0.LPCB.H_EC.LSTE, LIDS)
                    If (IGDS)
                    {
                        If (\_SB.PCI0.IGPU.GLID (LIDS))
                        {
                            Or (\_SB.PCI0.IGPU.CLID, 0x80000000, \_SB.PCI0.IGPU.CLID)
                        }
                    }

                    Notify (\_SB.LID0, 0x80)
                }

                If (LEqual (BNUM, Zero))
                {
                    If (LNotEqual (\_SB.PCI0.LPCB.H_EC.VPWR, PWRS))
                    {
                        Store (\_SB.PCI0.LPCB.H_EC.VPWR, PWRS)
                        PNOT ()
                    }
                }
                ElseIf (LNotEqual (\_SB.PCI0.LPCB.H_EC.RPWR, PWRS))
                {
                    Store (\_SB.PCI0.LPCB.H_EC.RPWR, PWRS)
                    PNOT ()
                }
            }

            If (LEqual (RP1D, Zero))
            {
                Notify (\_SB.PCI0.RP01, Zero)
            }

            If (LEqual (RP2D, Zero))
            {
                Notify (\_SB.PCI0.RP02, Zero)
            }

            If (LEqual (RP3D, Zero))
            {
                Notify (\_SB.PCI0.RP03, Zero)
            }

            If (LEqual (RP4D, Zero))
            {
                Notify (\_SB.PCI0.RP04, Zero)
            }

            If (LEqual (RP5D, Zero))
            {
                Notify (\_SB.PCI0.RP05, Zero)
            }

            If (LEqual (RP7D, Zero))
            {
                If (LEqual (DSTS, Zero))
                {
                    Notify (\_SB.PCI0.RP07, Zero)
                }
            }

            If (LEqual (RP8D, Zero))
            {
                If (LEqual (DSTS, Zero))
                {
                    Notify (\_SB.PCI0.RP08, Zero)
                }
            }
        }

        Return (Package (0x02)
        {
            Zero, 
            Zero
        })
    }

    Method (B1B2, 2, NotSerialized)
    {
        Return (Or (Arg0, ShiftLeft (Arg1, 0x08)))
    }

    Method (DTGP, 5, NotSerialized)
    {
        If (LEqual (Arg0, ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b")))
        {
            If (LEqual (Arg1, One))
            {
                If (LEqual (Arg2, Zero))
                {
                    Store (Buffer (One)
                        {
                             0x03                                           
                        }, Arg4)
                    Return (One)
                }

                If (LEqual (Arg2, One))
                {
                    Return (One)
                }
            }
        }

        Store (Buffer (One)
            {
                 0x00                                           
            }, Arg4)
        Return (Zero)
    }
    Scope (_SB)
    {
        
    }
}

