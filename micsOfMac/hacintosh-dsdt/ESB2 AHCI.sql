# Change ID of SATA device to fake ESB2 AHCI
into method label _DSM parent_adr 0x001F0002 remove_entry;
into device name_adr 0x001F0002 insert begin
Method (_DSM, 4, NotSerialized)\n
{\n
	Store (Package (0x02) {\n
		"device-id", Buffer (0x04) {0x81,0x26,0x00,0x00}\n
	}, Local0)\n
	DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))\n
	Return (Local0)\n
}
end;
