# Intel 6 Series Fixes
into_all all code_regex _T_([0-6]) replaceall_matched begin T_%1 end;
into device label EC0 set_label begin EC end;
into_all all code_regex EC0 replaceall_matched begin EC end;
into method label _REG parent_label EC remove_entry;
into device label MCH set_label begin MCEH end;
into_all all code_regex _SB.PCI0.MCH._ replaceall_matched begin _SB.PCI0.MCEH._ end;
into_all all code_regex 0x000EC00 replaceall_matched begin 0x000EC000 end;
into_all all code_regex 0xFEC0000 replaceall_matched begin 0xFEC00000 end;
into_all all code_regex (Name\s\(_HID,\s"ABCDEFGH") replace_matched begin Name (_HID, EisaId ("PNP0C15") end;
into device label SIO1 code_regex 0x00(,\s+//\s+L) replaceall_matched begin 0x01%1 end;
into_all all code_regex (Acquire\s\(....,\s0x)....\) replace_matched begin %1FFFF) end;
into_all all code_regex pnp0c14 replaceall_matched begin PNP0C14 end;
into method label _CRS parent_label PCI0 code_regex CreateDWordField\s\(BUF0,\s\\_SB.PCI0._Y0F._LEN,\sMSLN\) replace_matched begin CreateQWordField (BUF0, \\_SB.PCI0._Y0F._LEN, MSLN) end;
into method label _CRS parent_label PCI0 code_regex CreateDWordField\s\(BUF0,\s\\_SB.PCI0._Y0F._LEN,\sM4LN\) replace_matched begin CreateQWordField (BUF0, \\_SB.PCI0._Y0F._LEN, M4LN) end;
into_all all code_regex (Acquire\s\(MUT0,\s0x)....\) replace_matched begin %1FFFF) end;
into_all all code_regex Name\s\(RPMV,\sPackage\s\(0x00\) replaceall_matched begin Name (RPMV, Package (zero) end;
into_all all code_regex 0x00,(\s+)//\sLength replaceall_matched begin 0x01,%1// Length end;
into device name_hid PNP0B00 code_regex (IO\s\((?:\s*[^,]+,\s*(?:\/\/\s.*)?\s*\n)+\s*)(\dx\d+)(,\s*(?:\/\/\s.*)?\s*\n\s*\)) replace_matched begin %10x02%3 end;
into method label _CRS parent_label TPMX code_regex (Return\s\()(Zero)\) replace_matched begin %1Buffer (%2){}) end;
into_all all code_regex If\s\(TCMF\)\s\{\} replace_matched begin
If (TCMF) {\n
	Return (Zero)\n
}\n
end;
into_all all code_regex Or\s\(0x03,\sPARM\) replaceall_matched begin Or (PARM, 0x03, PARM) end;
into_all all code_regex (Name\s*\(_PLD,\s*)Buffer(\s\(0x10\)[^\)]*) replaceall_matched begin %1Package() { Buffer%2} end;
into device label PWRB code_regex (Name\s\()_HID(\,\sEisaId\s\(\"PNP0C0C\"\)\)) replace_matched begin %1_CID%2 end;
into method label SIOS code_regex Return\s\(Zero\) remove_matched;
into method label SIOS insert begin Return (Zero) end;
into method label STM code_regex Return\s\(Zero\) remove_matched;
into method label STM insert begin Return (Zero) end;
into_all scope label _PR code_regex Alias\s\([^\n]+\n removeall_matched;
into_all scope label \_PR code_regex Alias\s\([^\n]+\n removeall_matched;
