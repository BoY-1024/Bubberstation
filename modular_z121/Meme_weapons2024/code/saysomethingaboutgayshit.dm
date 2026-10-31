/obj/item/storage/box/gunset/hipoint
	name = "高点C-9补给箱"

/obj/item/gun/ballistic/pistol/receiver/hipoint/nomag
	spawnwithmagazine = FALSE


/obj/item/storage/box/gunset/hipoint/PopulateContents()
	. = ..()
	new /obj/item/gun/ballistic/pistol/receiver/hipoint/nomag(src)
	new /obj/item/ammo_box/magazine/HPC9(src)
	new /obj/item/ammo_box/magazine/HPC9(src)
	new /obj/item/ammo_box/magazine/HPC9(src)
	new /obj/item/ammo_box/magazine/HPC9(src)

/obj/item/storage/box/gunset/SigP320
	name = "西格P320补给箱"

/obj/item/gun/ballistic/pistol/receiver/SigP320/nomag
	spawnwithmagazine = FALSE


/obj/item/storage/box/gunset/SigP320/PopulateContents()
	. = ..()
	new /obj/item/gun/ballistic/pistol/receiver/SigP320/nomag(src)
	new /obj/item/ammo_box/magazine/sig(src)
	new /obj/item/ammo_box/magazine/sig(src)
	new /obj/item/ammo_box/magazine/sig(src)
	new /obj/item/ammo_box/magazine/sig(src)

/obj/item/storage/box/gunset/AMT
	name = "自动马格南补给箱"

/obj/item/gun/ballistic/pistol/receiver/AMT/nomag
	spawnwithmagazine = FALSE


/obj/item/storage/box/gunset/AMT/PopulateContents()
	. = ..()
	new /obj/item/gun/ballistic/pistol/receiver/AMT/nomag(src)
	new /obj/item/ammo_box/magazine/AMT(src)
	new /obj/item/ammo_box/magazine/AMT(src)
	new /obj/item/ammo_box/magazine/AMT(src)
	new /obj/item/ammo_box/magazine/AMT(src)

/obj/item/storage/box/gunset/b92
	name = "伯莱塔92定制手枪补给箱"

/obj/item/gun/ballistic/pistol/receiver/b92/nomag
	spawnwithmagazine = FALSE


/obj/item/storage/box/gunset/b92/PopulateContents()
	. = ..()
	new /obj/item/gun/ballistic/pistol/receiver/b92/nomag(src)
	new /obj/item/ammo_box/magazine/b92(src)
	new /obj/item/ammo_box/magazine/b92(src)
	new /obj/item/ammo_box/magazine/b92(src)
	new /obj/item/ammo_box/magazine/b92(src)

/obj/item/storage/box/gunset/M1911C
	name = "M1911定制手枪补给箱"

/obj/item/gun/ballistic/pistol/receiver/M1911C/nomag
	spawnwithmagazine = FALSE


/obj/item/storage/box/gunset/M1911C/PopulateContents()
	. = ..()
	new /obj/item/gun/ballistic/pistol/receiver/M1911C/nomag(src)
	new /obj/item/ammo_box/magazine/M1911C(src)
	new /obj/item/ammo_box/magazine/M1911C(src)
	new /obj/item/ammo_box/magazine/M1911C(src)
	new /obj/item/ammo_box/magazine/M1911C(src)

/obj/item/storage/box/gunset/M29
	name = "M29补给箱"

/obj/item/storage/box/gunset/M29/PopulateContents()
	. = ..()
	new /obj/item/gun/ballistic/revolver/M29(src)
	new /obj/item/ammo_box/M44(src)
	new /obj/item/storage/bag/amoo(src)

/obj/item/storage/box/gunset/M24
	name = "M24补给箱"

/obj/item/storage/box/gunset/M24/PopulateContents()
	. = ..()
	new /obj/item/gun/ballistic/rifle/boltaction/M24(src)
	new /obj/item/ammo_box/a308(src)
	new /obj/item/storage/bag/amoo(src)

/obj/item/storage/box/gunset/MP5A
	name = "MP5A补给箱"

/obj/item/gun/ballistic/automatic/MP5A/nomag
	spawnwithmagazine = FALSE

/obj/item/storage/box/gunset/MP5A/PopulateContents()
	. = ..()
	new /obj/item/gun/ballistic/automatic/MP5A/nomag(src)
	new /obj/item/ammo_box/magazine/MP5A(src)
	new /obj/item/ammo_box/magazine/MP5A(src)
	new /obj/item/ammo_box/magazine/MP5A(src)
	new /obj/item/ammo_box/magazine/MP5A(src)

/obj/item/storage/box/gunset/AR15
	name = "AR15补给箱"

/obj/item/gun/ballistic/automatic/AR15/nomag
	spawnwithmagazine = FALSE

/obj/item/storage/box/gunset/AR15/PopulateContents()
	. = ..()
	new /obj/item/gun/ballistic/automatic/AR15/nomag(src)
	new /obj/item/ammo_box/magazine/AR15(src)
	new /obj/item/ammo_box/magazine/AR15(src)
	new /obj/item/ammo_box/magazine/AR15(src)
	new /obj/item/ammo_box/magazine/AR15(src)

/obj/item/storage/box/gunset/BAR
	name = "BAR补给箱"

/obj/item/gun/ballistic/automatic/BAR/nomag
	spawnwithmagazine = FALSE

/obj/item/storage/box/gunset/BAR/PopulateContents()
	. = ..()
	new /obj/item/gun/ballistic/automatic/BAR/nomag(src)
	new /obj/item/ammo_box/magazine/BAR(src)
	new /obj/item/ammo_box/magazine/BAR(src)
	new /obj/item/ammo_box/magazine/BAR(src)
	new /obj/item/ammo_box/magazine/BAR(src)

/obj/item/storage/box/gunset/heavypolice
	name = "重型警用护甲补给箱"

/obj/item/storage/box/gunset/heavypolice/PopulateContents()
	. = ..()
	new /obj/item/clothing/suit/armor/heavypolice(src)
	new /obj/item/clothing/head/helmet/police/swat(src)

/obj/item/storage/box/gunset/longpolice
	name = "长腿警用护甲补给箱"

/obj/item/storage/box/gunset/longpolice/PopulateContents()
	. = ..()
	new /obj/item/clothing/suit/armor/longpolice(src)
	new /obj/item/clothing/head/helmet/police/lwh(src)
