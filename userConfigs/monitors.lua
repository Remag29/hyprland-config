-- Monitor configuration
-- https://wiki.hypr.land/Configuring/Basics/Monitors/

hl.monitor({ -- Main screen laptop
  output = "eDP-1",
	mode = "preferred",
	position = "auto-right",
	scale = 1
})

hl.monitor({
  output = "DP-2",
	mode = "preferred",
	position = "auto",
	scale = 1
})

hl.monitor({ -- AOC bureau 240Hz
  output = "desc:AOC 27G2G8 PWPM9JA007156",
	mode = "1920x1080@239.96",
	position = "auto-right",
	scale = 1
})

hl.monitor({ -- AOC bureau 144Hz
  output = "desc:AOC 27G1G4 0x00025833",
	mode = "1920x1080@144",
	position = "auto-up",
	scale = 1
}) 

hl.monitor({ -- iiyama DZ
  output = "desc:Iiyama North America PL2474H 1166805111569",
  mode = "1920x1080@74.97",
  position = "auto-up",
  scale = 1
})
