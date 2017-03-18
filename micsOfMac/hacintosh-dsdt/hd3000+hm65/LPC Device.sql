# Fix the LPC Device
into method label _DSM parent_label LPCB remove_entry;
into device label LPCB insert begin
Method (_DSM, 4, NotSerialized)\n
{\n
	Store (Package (0x02) {\n
		"compatible", Buffer () {"pci8086,1c46"}\n
	}, Local0)\n
	DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))\n
	Return (Local0)\n
}
end;
