# Fix the SMBUS to allow for loading of the AppleSMBusController.kext
into device label BUS0 parent_label SBUS remove_entry;
into device label SBUS insert begin
Device (BUS0)\n
{\n
	Name (_CID, "smbus")\n
	Name (_ADR, Zero)\n
	Device (DVL0)\n
	{\n
		Name (_ADR, 0x57)\n
		Name (_CID, "diagsvault")\n
		Method (_DSM, 4, NotSerialized)\n
		{\n
			Store (Package (0x02) {\n
				"address", 0x57
			}, Local0)\n
			DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))\n
			Return (Local0)\n
		}\n
	}\n
}
end;
