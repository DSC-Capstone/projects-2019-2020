.class final Lorg/jaxen/saxpath/base/Verifier;
.super Ljava/lang/Object;
.source "Verifier.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isXMLCombiningChar(C)Z
    .locals 3
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 322
    const/16 v2, 0x300

    if-ge p0, v2, :cond_1

    .line 442
    :cond_0
    :goto_0
    return v0

    .line 322
    :cond_1
    const/16 v2, 0x345

    if-gt p0, v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 323
    :cond_2
    const/16 v2, 0x360

    if-lt p0, v2, :cond_0

    const/16 v2, 0x361

    if-gt p0, v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 324
    :cond_3
    const/16 v2, 0x483

    if-lt p0, v2, :cond_0

    const/16 v2, 0x486

    if-gt p0, v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 325
    :cond_4
    const/16 v2, 0x591

    if-lt p0, v2, :cond_0

    const/16 v2, 0x5a1

    if-gt p0, v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 327
    :cond_5
    const/16 v2, 0x5a3

    if-lt p0, v2, :cond_0

    const/16 v2, 0x5b9

    if-gt p0, v2, :cond_6

    move v0, v1

    goto :goto_0

    .line 328
    :cond_6
    const/16 v2, 0x5bb

    if-lt p0, v2, :cond_0

    const/16 v2, 0x5bd

    if-gt p0, v2, :cond_7

    move v0, v1

    goto :goto_0

    .line 329
    :cond_7
    const/16 v2, 0x5bf

    if-ne p0, v2, :cond_8

    move v0, v1

    goto :goto_0

    .line 330
    :cond_8
    const/16 v2, 0x5c1

    if-lt p0, v2, :cond_0

    const/16 v2, 0x5c2

    if-gt p0, v2, :cond_9

    move v0, v1

    goto :goto_0

    .line 332
    :cond_9
    const/16 v2, 0x5c4

    if-ne p0, v2, :cond_a

    move v0, v1

    goto :goto_0

    .line 333
    :cond_a
    const/16 v2, 0x64b

    if-lt p0, v2, :cond_0

    const/16 v2, 0x652

    if-gt p0, v2, :cond_b

    move v0, v1

    goto :goto_0

    .line 334
    :cond_b
    const/16 v2, 0x670

    if-ne p0, v2, :cond_c

    move v0, v1

    goto :goto_0

    .line 335
    :cond_c
    const/16 v2, 0x6d6

    if-lt p0, v2, :cond_0

    const/16 v2, 0x6dc

    if-gt p0, v2, :cond_d

    move v0, v1

    goto :goto_0

    .line 337
    :cond_d
    const/16 v2, 0x6dd

    if-lt p0, v2, :cond_0

    const/16 v2, 0x6df

    if-gt p0, v2, :cond_e

    move v0, v1

    goto :goto_0

    .line 338
    :cond_e
    const/16 v2, 0x6e0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x6e4

    if-gt p0, v2, :cond_f

    move v0, v1

    goto :goto_0

    .line 339
    :cond_f
    const/16 v2, 0x6e7

    if-lt p0, v2, :cond_0

    const/16 v2, 0x6e8

    if-gt p0, v2, :cond_10

    move v0, v1

    goto/16 :goto_0

    .line 341
    :cond_10
    const/16 v2, 0x6ea

    if-lt p0, v2, :cond_0

    const/16 v2, 0x6ed

    if-gt p0, v2, :cond_11

    move v0, v1

    goto/16 :goto_0

    .line 342
    :cond_11
    const/16 v2, 0x901

    if-lt p0, v2, :cond_0

    const/16 v2, 0x903

    if-gt p0, v2, :cond_12

    move v0, v1

    goto/16 :goto_0

    .line 343
    :cond_12
    const/16 v2, 0x93c

    if-ne p0, v2, :cond_13

    move v0, v1

    goto/16 :goto_0

    .line 344
    :cond_13
    const/16 v2, 0x93e

    if-lt p0, v2, :cond_0

    const/16 v2, 0x94c

    if-gt p0, v2, :cond_14

    move v0, v1

    goto/16 :goto_0

    .line 346
    :cond_14
    const/16 v2, 0x94d

    if-ne p0, v2, :cond_15

    move v0, v1

    goto/16 :goto_0

    .line 347
    :cond_15
    const/16 v2, 0x951

    if-lt p0, v2, :cond_0

    const/16 v2, 0x954

    if-gt p0, v2, :cond_16

    move v0, v1

    goto/16 :goto_0

    .line 348
    :cond_16
    const/16 v2, 0x962

    if-lt p0, v2, :cond_0

    const/16 v2, 0x963

    if-gt p0, v2, :cond_17

    move v0, v1

    goto/16 :goto_0

    .line 349
    :cond_17
    const/16 v2, 0x981

    if-lt p0, v2, :cond_0

    const/16 v2, 0x983

    if-gt p0, v2, :cond_18

    move v0, v1

    goto/16 :goto_0

    .line 351
    :cond_18
    const/16 v2, 0x9bc

    if-ne p0, v2, :cond_19

    move v0, v1

    goto/16 :goto_0

    .line 352
    :cond_19
    const/16 v2, 0x9be

    if-ne p0, v2, :cond_1a

    move v0, v1

    goto/16 :goto_0

    .line 353
    :cond_1a
    const/16 v2, 0x9bf

    if-ne p0, v2, :cond_1b

    move v0, v1

    goto/16 :goto_0

    .line 354
    :cond_1b
    const/16 v2, 0x9c0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x9c4

    if-gt p0, v2, :cond_1c

    move v0, v1

    goto/16 :goto_0

    .line 355
    :cond_1c
    const/16 v2, 0x9c7

    if-lt p0, v2, :cond_0

    const/16 v2, 0x9c8

    if-gt p0, v2, :cond_1d

    move v0, v1

    goto/16 :goto_0

    .line 357
    :cond_1d
    const/16 v2, 0x9cb

    if-lt p0, v2, :cond_0

    const/16 v2, 0x9cd

    if-gt p0, v2, :cond_1e

    move v0, v1

    goto/16 :goto_0

    .line 358
    :cond_1e
    const/16 v2, 0x9d7

    if-ne p0, v2, :cond_1f

    move v0, v1

    goto/16 :goto_0

    .line 359
    :cond_1f
    const/16 v2, 0x9e2

    if-lt p0, v2, :cond_0

    const/16 v2, 0x9e3

    if-gt p0, v2, :cond_20

    move v0, v1

    goto/16 :goto_0

    .line 360
    :cond_20
    const/16 v2, 0xa02

    if-ne p0, v2, :cond_21

    move v0, v1

    goto/16 :goto_0

    .line 361
    :cond_21
    const/16 v2, 0xa3c

    if-ne p0, v2, :cond_22

    move v0, v1

    goto/16 :goto_0

    .line 363
    :cond_22
    const/16 v2, 0xa3e

    if-ne p0, v2, :cond_23

    move v0, v1

    goto/16 :goto_0

    .line 364
    :cond_23
    const/16 v2, 0xa3f

    if-ne p0, v2, :cond_24

    move v0, v1

    goto/16 :goto_0

    .line 365
    :cond_24
    const/16 v2, 0xa40

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa42

    if-gt p0, v2, :cond_25

    move v0, v1

    goto/16 :goto_0

    .line 366
    :cond_25
    const/16 v2, 0xa47

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa48

    if-gt p0, v2, :cond_26

    move v0, v1

    goto/16 :goto_0

    .line 368
    :cond_26
    const/16 v2, 0xa4b

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa4d

    if-gt p0, v2, :cond_27

    move v0, v1

    goto/16 :goto_0

    .line 369
    :cond_27
    const/16 v2, 0xa70

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa71

    if-gt p0, v2, :cond_28

    move v0, v1

    goto/16 :goto_0

    .line 370
    :cond_28
    const/16 v2, 0xa81

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa83

    if-gt p0, v2, :cond_29

    move v0, v1

    goto/16 :goto_0

    .line 371
    :cond_29
    const/16 v2, 0xabc

    if-ne p0, v2, :cond_2a

    move v0, v1

    goto/16 :goto_0

    .line 373
    :cond_2a
    const/16 v2, 0xabe

    if-lt p0, v2, :cond_0

    const/16 v2, 0xac5

    if-gt p0, v2, :cond_2b

    move v0, v1

    goto/16 :goto_0

    .line 374
    :cond_2b
    const/16 v2, 0xac7

    if-lt p0, v2, :cond_0

    const/16 v2, 0xac9

    if-gt p0, v2, :cond_2c

    move v0, v1

    goto/16 :goto_0

    .line 375
    :cond_2c
    const/16 v2, 0xacb

    if-lt p0, v2, :cond_0

    const/16 v2, 0xacd

    if-gt p0, v2, :cond_2d

    move v0, v1

    goto/16 :goto_0

    .line 377
    :cond_2d
    const/16 v2, 0xb01

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb03

    if-gt p0, v2, :cond_2e

    move v0, v1

    goto/16 :goto_0

    .line 378
    :cond_2e
    const/16 v2, 0xb3c

    if-ne p0, v2, :cond_2f

    move v0, v1

    goto/16 :goto_0

    .line 379
    :cond_2f
    const/16 v2, 0xb3e

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb43

    if-gt p0, v2, :cond_30

    move v0, v1

    goto/16 :goto_0

    .line 380
    :cond_30
    const/16 v2, 0xb47

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb48

    if-gt p0, v2, :cond_31

    move v0, v1

    goto/16 :goto_0

    .line 382
    :cond_31
    const/16 v2, 0xb4b

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb4d

    if-gt p0, v2, :cond_32

    move v0, v1

    goto/16 :goto_0

    .line 383
    :cond_32
    const/16 v2, 0xb56

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb57

    if-gt p0, v2, :cond_33

    move v0, v1

    goto/16 :goto_0

    .line 384
    :cond_33
    const/16 v2, 0xb82

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb83

    if-gt p0, v2, :cond_34

    move v0, v1

    goto/16 :goto_0

    .line 386
    :cond_34
    const/16 v2, 0xbbe

    if-lt p0, v2, :cond_0

    const/16 v2, 0xbc2

    if-gt p0, v2, :cond_35

    move v0, v1

    goto/16 :goto_0

    .line 387
    :cond_35
    const/16 v2, 0xbc6

    if-lt p0, v2, :cond_0

    const/16 v2, 0xbc8

    if-gt p0, v2, :cond_36

    move v0, v1

    goto/16 :goto_0

    .line 388
    :cond_36
    const/16 v2, 0xbca

    if-lt p0, v2, :cond_0

    const/16 v2, 0xbcd

    if-gt p0, v2, :cond_37

    move v0, v1

    goto/16 :goto_0

    .line 389
    :cond_37
    const/16 v2, 0xbd7

    if-ne p0, v2, :cond_38

    move v0, v1

    goto/16 :goto_0

    .line 391
    :cond_38
    const/16 v2, 0xc01

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc03

    if-gt p0, v2, :cond_39

    move v0, v1

    goto/16 :goto_0

    .line 392
    :cond_39
    const/16 v2, 0xc3e

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc44

    if-gt p0, v2, :cond_3a

    move v0, v1

    goto/16 :goto_0

    .line 393
    :cond_3a
    const/16 v2, 0xc46

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc48

    if-gt p0, v2, :cond_3b

    move v0, v1

    goto/16 :goto_0

    .line 395
    :cond_3b
    const/16 v2, 0xc4a

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc4d

    if-gt p0, v2, :cond_3c

    move v0, v1

    goto/16 :goto_0

    .line 396
    :cond_3c
    const/16 v2, 0xc55

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc56

    if-gt p0, v2, :cond_3d

    move v0, v1

    goto/16 :goto_0

    .line 397
    :cond_3d
    const/16 v2, 0xc82

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc83

    if-gt p0, v2, :cond_3e

    move v0, v1

    goto/16 :goto_0

    .line 399
    :cond_3e
    const/16 v2, 0xcbe

    if-lt p0, v2, :cond_0

    const/16 v2, 0xcc4

    if-gt p0, v2, :cond_3f

    move v0, v1

    goto/16 :goto_0

    .line 400
    :cond_3f
    const/16 v2, 0xcc6

    if-lt p0, v2, :cond_0

    const/16 v2, 0xcc8

    if-gt p0, v2, :cond_40

    move v0, v1

    goto/16 :goto_0

    .line 401
    :cond_40
    const/16 v2, 0xcca

    if-lt p0, v2, :cond_0

    const/16 v2, 0xccd

    if-gt p0, v2, :cond_41

    move v0, v1

    goto/16 :goto_0

    .line 403
    :cond_41
    const/16 v2, 0xcd5

    if-lt p0, v2, :cond_0

    const/16 v2, 0xcd6

    if-gt p0, v2, :cond_42

    move v0, v1

    goto/16 :goto_0

    .line 404
    :cond_42
    const/16 v2, 0xd02

    if-lt p0, v2, :cond_0

    const/16 v2, 0xd03

    if-gt p0, v2, :cond_43

    move v0, v1

    goto/16 :goto_0

    .line 405
    :cond_43
    const/16 v2, 0xd3e

    if-lt p0, v2, :cond_0

    const/16 v2, 0xd43

    if-gt p0, v2, :cond_44

    move v0, v1

    goto/16 :goto_0

    .line 407
    :cond_44
    const/16 v2, 0xd46

    if-lt p0, v2, :cond_0

    const/16 v2, 0xd48

    if-gt p0, v2, :cond_45

    move v0, v1

    goto/16 :goto_0

    .line 408
    :cond_45
    const/16 v2, 0xd4a

    if-lt p0, v2, :cond_0

    const/16 v2, 0xd4d

    if-gt p0, v2, :cond_46

    move v0, v1

    goto/16 :goto_0

    .line 409
    :cond_46
    const/16 v2, 0xd57

    if-ne p0, v2, :cond_47

    move v0, v1

    goto/16 :goto_0

    .line 410
    :cond_47
    const/16 v2, 0xe31

    if-ne p0, v2, :cond_48

    move v0, v1

    goto/16 :goto_0

    .line 412
    :cond_48
    const/16 v2, 0xe34

    if-lt p0, v2, :cond_0

    const/16 v2, 0xe3a

    if-gt p0, v2, :cond_49

    move v0, v1

    goto/16 :goto_0

    .line 413
    :cond_49
    const/16 v2, 0xe47

    if-lt p0, v2, :cond_0

    const/16 v2, 0xe4e

    if-gt p0, v2, :cond_4a

    move v0, v1

    goto/16 :goto_0

    .line 414
    :cond_4a
    const/16 v2, 0xeb1

    if-ne p0, v2, :cond_4b

    move v0, v1

    goto/16 :goto_0

    .line 415
    :cond_4b
    const/16 v2, 0xeb4

    if-lt p0, v2, :cond_0

    const/16 v2, 0xeb9

    if-gt p0, v2, :cond_4c

    move v0, v1

    goto/16 :goto_0

    .line 417
    :cond_4c
    const/16 v2, 0xebb

    if-lt p0, v2, :cond_0

    const/16 v2, 0xebc

    if-gt p0, v2, :cond_4d

    move v0, v1

    goto/16 :goto_0

    .line 418
    :cond_4d
    const/16 v2, 0xec8

    if-lt p0, v2, :cond_0

    const/16 v2, 0xecd

    if-gt p0, v2, :cond_4e

    move v0, v1

    goto/16 :goto_0

    .line 419
    :cond_4e
    const/16 v2, 0xf18

    if-lt p0, v2, :cond_0

    const/16 v2, 0xf19

    if-gt p0, v2, :cond_4f

    move v0, v1

    goto/16 :goto_0

    .line 420
    :cond_4f
    const/16 v2, 0xf35

    if-ne p0, v2, :cond_50

    move v0, v1

    goto/16 :goto_0

    .line 422
    :cond_50
    const/16 v2, 0xf37

    if-ne p0, v2, :cond_51

    move v0, v1

    goto/16 :goto_0

    .line 423
    :cond_51
    const/16 v2, 0xf39

    if-ne p0, v2, :cond_52

    move v0, v1

    goto/16 :goto_0

    .line 424
    :cond_52
    const/16 v2, 0xf3e

    if-ne p0, v2, :cond_53

    move v0, v1

    goto/16 :goto_0

    .line 425
    :cond_53
    const/16 v2, 0xf3f

    if-ne p0, v2, :cond_54

    move v0, v1

    goto/16 :goto_0

    .line 426
    :cond_54
    const/16 v2, 0xf71

    if-lt p0, v2, :cond_0

    const/16 v2, 0xf84

    if-gt p0, v2, :cond_55

    move v0, v1

    goto/16 :goto_0

    .line 428
    :cond_55
    const/16 v2, 0xf86

    if-lt p0, v2, :cond_0

    const/16 v2, 0xf8b

    if-gt p0, v2, :cond_56

    move v0, v1

    goto/16 :goto_0

    .line 429
    :cond_56
    const/16 v2, 0xf90

    if-lt p0, v2, :cond_0

    const/16 v2, 0xf95

    if-gt p0, v2, :cond_57

    move v0, v1

    goto/16 :goto_0

    .line 430
    :cond_57
    const/16 v2, 0xf97

    if-ne p0, v2, :cond_58

    move v0, v1

    goto/16 :goto_0

    .line 431
    :cond_58
    const/16 v2, 0xf99

    if-lt p0, v2, :cond_0

    const/16 v2, 0xfad

    if-gt p0, v2, :cond_59

    move v0, v1

    goto/16 :goto_0

    .line 433
    :cond_59
    const/16 v2, 0xfb1

    if-lt p0, v2, :cond_0

    const/16 v2, 0xfb7

    if-gt p0, v2, :cond_5a

    move v0, v1

    goto/16 :goto_0

    .line 434
    :cond_5a
    const/16 v2, 0xfb9

    if-ne p0, v2, :cond_5b

    move v0, v1

    goto/16 :goto_0

    .line 435
    :cond_5b
    const/16 v2, 0x20d0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x20dc

    if-gt p0, v2, :cond_5c

    move v0, v1

    goto/16 :goto_0

    .line 436
    :cond_5c
    const/16 v2, 0x20e1

    if-ne p0, v2, :cond_5d

    move v0, v1

    goto/16 :goto_0

    .line 438
    :cond_5d
    const/16 v2, 0x302a

    if-lt p0, v2, :cond_0

    const/16 v2, 0x302f

    if-gt p0, v2, :cond_5e

    move v0, v1

    goto/16 :goto_0

    .line 439
    :cond_5e
    const/16 v2, 0x3099

    if-ne p0, v2, :cond_5f

    move v0, v1

    goto/16 :goto_0

    .line 440
    :cond_5f
    const/16 v2, 0x309a

    if-ne p0, v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method static isXMLDigit(C)Z
    .locals 3
    .param p0, "c"    # C

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 485
    const/16 v2, 0x30

    if-ge p0, v2, :cond_1

    .line 505
    :cond_0
    :goto_0
    return v0

    .line 485
    :cond_1
    const/16 v2, 0x39

    if-gt p0, v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 486
    :cond_2
    const/16 v2, 0x660

    if-lt p0, v2, :cond_0

    const/16 v2, 0x669

    if-gt p0, v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 487
    :cond_3
    const/16 v2, 0x6f0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x6f9

    if-gt p0, v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 488
    :cond_4
    const/16 v2, 0x966

    if-lt p0, v2, :cond_0

    const/16 v2, 0x96f

    if-gt p0, v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 490
    :cond_5
    const/16 v2, 0x9e6

    if-lt p0, v2, :cond_0

    const/16 v2, 0x9ef

    if-gt p0, v2, :cond_6

    move v0, v1

    goto :goto_0

    .line 491
    :cond_6
    const/16 v2, 0xa66

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa6f

    if-gt p0, v2, :cond_7

    move v0, v1

    goto :goto_0

    .line 492
    :cond_7
    const/16 v2, 0xae6

    if-lt p0, v2, :cond_0

    const/16 v2, 0xaef

    if-gt p0, v2, :cond_8

    move v0, v1

    goto :goto_0

    .line 494
    :cond_8
    const/16 v2, 0xb66

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb6f

    if-gt p0, v2, :cond_9

    move v0, v1

    goto :goto_0

    .line 495
    :cond_9
    const/16 v2, 0xbe7

    if-lt p0, v2, :cond_0

    const/16 v2, 0xbef

    if-gt p0, v2, :cond_a

    move v0, v1

    goto :goto_0

    .line 496
    :cond_a
    const/16 v2, 0xc66

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc6f

    if-gt p0, v2, :cond_b

    move v0, v1

    goto :goto_0

    .line 498
    :cond_b
    const/16 v2, 0xce6

    if-lt p0, v2, :cond_0

    const/16 v2, 0xcef

    if-gt p0, v2, :cond_c

    move v0, v1

    goto :goto_0

    .line 499
    :cond_c
    const/16 v2, 0xd66

    if-lt p0, v2, :cond_0

    const/16 v2, 0xd6f

    if-gt p0, v2, :cond_d

    move v0, v1

    goto :goto_0

    .line 500
    :cond_d
    const/16 v2, 0xe50

    if-lt p0, v2, :cond_0

    const/16 v2, 0xe59

    if-gt p0, v2, :cond_e

    move v0, v1

    goto :goto_0

    .line 502
    :cond_e
    const/16 v2, 0xed0

    if-lt p0, v2, :cond_0

    const/16 v2, 0xed9

    if-gt p0, v2, :cond_f

    move v0, v1

    goto/16 :goto_0

    .line 503
    :cond_f
    const/16 v2, 0xf20

    if-lt p0, v2, :cond_0

    const/16 v2, 0xf29

    if-gt p0, v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method static isXMLExtender(C)Z
    .locals 3
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 456
    const/16 v2, 0xb6

    if-ge p0, v2, :cond_1

    .line 472
    :cond_0
    :goto_0
    return v0

    .line 459
    :cond_1
    const/16 v2, 0xb7

    if-ne p0, v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 460
    :cond_2
    const/16 v2, 0x2d0

    if-ne p0, v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 461
    :cond_3
    const/16 v2, 0x2d1

    if-ne p0, v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 462
    :cond_4
    const/16 v2, 0x387

    if-ne p0, v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 463
    :cond_5
    const/16 v2, 0x640

    if-ne p0, v2, :cond_6

    move v0, v1

    goto :goto_0

    .line 464
    :cond_6
    const/16 v2, 0xe46

    if-ne p0, v2, :cond_7

    move v0, v1

    goto :goto_0

    .line 465
    :cond_7
    const/16 v2, 0xec6

    if-ne p0, v2, :cond_8

    move v0, v1

    goto :goto_0

    .line 466
    :cond_8
    const/16 v2, 0x3005

    if-ne p0, v2, :cond_9

    move v0, v1

    goto :goto_0

    .line 468
    :cond_9
    const/16 v2, 0x3031

    if-lt p0, v2, :cond_0

    const/16 v2, 0x3035

    if-gt p0, v2, :cond_a

    move v0, v1

    goto :goto_0

    .line 469
    :cond_a
    const/16 v2, 0x309d

    if-lt p0, v2, :cond_0

    const/16 v2, 0x309e

    if-gt p0, v2, :cond_b

    move v0, v1

    goto :goto_0

    .line 470
    :cond_b
    const/16 v2, 0x30fc

    if-lt p0, v2, :cond_0

    const/16 v2, 0x30fe

    if-gt p0, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static isXMLLetter(C)Z
    .locals 3
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 101
    const/16 v2, 0x41

    if-ge p0, v2, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    const/16 v2, 0x5a

    if-gt p0, v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 102
    :cond_2
    const/16 v2, 0x61

    if-lt p0, v2, :cond_0

    const/16 v2, 0x7a

    if-gt p0, v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 103
    :cond_3
    const/16 v2, 0xc0

    if-lt p0, v2, :cond_0

    const/16 v2, 0xd6

    if-gt p0, v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 104
    :cond_4
    const/16 v2, 0xd8

    if-lt p0, v2, :cond_0

    const/16 v2, 0xf6

    if-gt p0, v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 105
    :cond_5
    const/16 v2, 0xf8

    if-lt p0, v2, :cond_0

    const/16 v2, 0xff

    if-gt p0, v2, :cond_6

    move v0, v1

    goto :goto_0

    .line 106
    :cond_6
    const/16 v2, 0x100

    if-lt p0, v2, :cond_0

    const/16 v2, 0x131

    if-gt p0, v2, :cond_7

    move v0, v1

    goto :goto_0

    .line 107
    :cond_7
    const/16 v2, 0x134

    if-lt p0, v2, :cond_0

    const/16 v2, 0x13e

    if-gt p0, v2, :cond_8

    move v0, v1

    goto :goto_0

    .line 108
    :cond_8
    const/16 v2, 0x141

    if-lt p0, v2, :cond_0

    const/16 v2, 0x148

    if-gt p0, v2, :cond_9

    move v0, v1

    goto :goto_0

    .line 109
    :cond_9
    const/16 v2, 0x14a

    if-lt p0, v2, :cond_0

    const/16 v2, 0x17e

    if-gt p0, v2, :cond_a

    move v0, v1

    goto :goto_0

    .line 110
    :cond_a
    const/16 v2, 0x180

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1c3

    if-gt p0, v2, :cond_b

    move v0, v1

    goto :goto_0

    .line 111
    :cond_b
    const/16 v2, 0x1cd

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1f0

    if-gt p0, v2, :cond_c

    move v0, v1

    goto :goto_0

    .line 112
    :cond_c
    const/16 v2, 0x1f4

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1f5

    if-gt p0, v2, :cond_d

    move v0, v1

    goto :goto_0

    .line 113
    :cond_d
    const/16 v2, 0x1fa

    if-lt p0, v2, :cond_0

    const/16 v2, 0x217

    if-gt p0, v2, :cond_e

    move v0, v1

    goto :goto_0

    .line 114
    :cond_e
    const/16 v2, 0x250

    if-lt p0, v2, :cond_0

    const/16 v2, 0x2a8

    if-gt p0, v2, :cond_f

    move v0, v1

    goto/16 :goto_0

    .line 115
    :cond_f
    const/16 v2, 0x2bb

    if-lt p0, v2, :cond_0

    const/16 v2, 0x2c1

    if-gt p0, v2, :cond_10

    move v0, v1

    goto/16 :goto_0

    .line 116
    :cond_10
    const/16 v2, 0x386

    if-ne p0, v2, :cond_11

    move v0, v1

    goto/16 :goto_0

    .line 117
    :cond_11
    const/16 v2, 0x388

    if-lt p0, v2, :cond_0

    const/16 v2, 0x38a

    if-gt p0, v2, :cond_12

    move v0, v1

    goto/16 :goto_0

    .line 118
    :cond_12
    const/16 v2, 0x38c

    if-ne p0, v2, :cond_13

    move v0, v1

    goto/16 :goto_0

    .line 119
    :cond_13
    const/16 v2, 0x38e

    if-lt p0, v2, :cond_0

    const/16 v2, 0x3a1

    if-gt p0, v2, :cond_14

    move v0, v1

    goto/16 :goto_0

    .line 120
    :cond_14
    const/16 v2, 0x3a3

    if-lt p0, v2, :cond_0

    const/16 v2, 0x3ce

    if-gt p0, v2, :cond_15

    move v0, v1

    goto/16 :goto_0

    .line 121
    :cond_15
    const/16 v2, 0x3d0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x3d6

    if-gt p0, v2, :cond_16

    move v0, v1

    goto/16 :goto_0

    .line 122
    :cond_16
    const/16 v2, 0x3da

    if-ne p0, v2, :cond_17

    move v0, v1

    goto/16 :goto_0

    .line 123
    :cond_17
    const/16 v2, 0x3dc

    if-ne p0, v2, :cond_18

    move v0, v1

    goto/16 :goto_0

    .line 124
    :cond_18
    const/16 v2, 0x3de

    if-ne p0, v2, :cond_19

    move v0, v1

    goto/16 :goto_0

    .line 125
    :cond_19
    const/16 v2, 0x3e0

    if-ne p0, v2, :cond_1a

    move v0, v1

    goto/16 :goto_0

    .line 126
    :cond_1a
    const/16 v2, 0x3e2

    if-lt p0, v2, :cond_0

    const/16 v2, 0x3f3

    if-gt p0, v2, :cond_1b

    move v0, v1

    goto/16 :goto_0

    .line 127
    :cond_1b
    const/16 v2, 0x401

    if-lt p0, v2, :cond_0

    const/16 v2, 0x40c

    if-gt p0, v2, :cond_1c

    move v0, v1

    goto/16 :goto_0

    .line 128
    :cond_1c
    const/16 v2, 0x40e

    if-lt p0, v2, :cond_0

    const/16 v2, 0x44f

    if-gt p0, v2, :cond_1d

    move v0, v1

    goto/16 :goto_0

    .line 129
    :cond_1d
    const/16 v2, 0x451

    if-lt p0, v2, :cond_0

    const/16 v2, 0x45c

    if-gt p0, v2, :cond_1e

    move v0, v1

    goto/16 :goto_0

    .line 130
    :cond_1e
    const/16 v2, 0x45e

    if-lt p0, v2, :cond_0

    const/16 v2, 0x481

    if-gt p0, v2, :cond_1f

    move v0, v1

    goto/16 :goto_0

    .line 131
    :cond_1f
    const/16 v2, 0x490

    if-lt p0, v2, :cond_0

    const/16 v2, 0x4c4

    if-gt p0, v2, :cond_20

    move v0, v1

    goto/16 :goto_0

    .line 132
    :cond_20
    const/16 v2, 0x4c7

    if-lt p0, v2, :cond_0

    const/16 v2, 0x4c8

    if-gt p0, v2, :cond_21

    move v0, v1

    goto/16 :goto_0

    .line 133
    :cond_21
    const/16 v2, 0x4cb

    if-lt p0, v2, :cond_0

    const/16 v2, 0x4cc

    if-gt p0, v2, :cond_22

    move v0, v1

    goto/16 :goto_0

    .line 134
    :cond_22
    const/16 v2, 0x4d0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x4eb

    if-gt p0, v2, :cond_23

    move v0, v1

    goto/16 :goto_0

    .line 135
    :cond_23
    const/16 v2, 0x4ee

    if-lt p0, v2, :cond_0

    const/16 v2, 0x4f5

    if-gt p0, v2, :cond_24

    move v0, v1

    goto/16 :goto_0

    .line 136
    :cond_24
    const/16 v2, 0x4f8

    if-lt p0, v2, :cond_0

    const/16 v2, 0x4f9

    if-gt p0, v2, :cond_25

    move v0, v1

    goto/16 :goto_0

    .line 137
    :cond_25
    const/16 v2, 0x531

    if-lt p0, v2, :cond_0

    const/16 v2, 0x556

    if-gt p0, v2, :cond_26

    move v0, v1

    goto/16 :goto_0

    .line 138
    :cond_26
    const/16 v2, 0x559

    if-ne p0, v2, :cond_27

    move v0, v1

    goto/16 :goto_0

    .line 139
    :cond_27
    const/16 v2, 0x561

    if-lt p0, v2, :cond_0

    const/16 v2, 0x586

    if-gt p0, v2, :cond_28

    move v0, v1

    goto/16 :goto_0

    .line 140
    :cond_28
    const/16 v2, 0x5d0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x5ea

    if-gt p0, v2, :cond_29

    move v0, v1

    goto/16 :goto_0

    .line 141
    :cond_29
    const/16 v2, 0x5f0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x5f2

    if-gt p0, v2, :cond_2a

    move v0, v1

    goto/16 :goto_0

    .line 142
    :cond_2a
    const/16 v2, 0x621

    if-lt p0, v2, :cond_0

    const/16 v2, 0x63a

    if-gt p0, v2, :cond_2b

    move v0, v1

    goto/16 :goto_0

    .line 143
    :cond_2b
    const/16 v2, 0x641

    if-lt p0, v2, :cond_0

    const/16 v2, 0x64a

    if-gt p0, v2, :cond_2c

    move v0, v1

    goto/16 :goto_0

    .line 144
    :cond_2c
    const/16 v2, 0x671

    if-lt p0, v2, :cond_0

    const/16 v2, 0x6b7

    if-gt p0, v2, :cond_2d

    move v0, v1

    goto/16 :goto_0

    .line 145
    :cond_2d
    const/16 v2, 0x6ba

    if-lt p0, v2, :cond_0

    const/16 v2, 0x6be

    if-gt p0, v2, :cond_2e

    move v0, v1

    goto/16 :goto_0

    .line 146
    :cond_2e
    const/16 v2, 0x6c0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x6ce

    if-gt p0, v2, :cond_2f

    move v0, v1

    goto/16 :goto_0

    .line 147
    :cond_2f
    const/16 v2, 0x6d0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x6d3

    if-gt p0, v2, :cond_30

    move v0, v1

    goto/16 :goto_0

    .line 148
    :cond_30
    const/16 v2, 0x6d5

    if-ne p0, v2, :cond_31

    move v0, v1

    goto/16 :goto_0

    .line 149
    :cond_31
    const/16 v2, 0x6e5

    if-lt p0, v2, :cond_0

    const/16 v2, 0x6e6

    if-gt p0, v2, :cond_32

    move v0, v1

    goto/16 :goto_0

    .line 150
    :cond_32
    const/16 v2, 0x905

    if-lt p0, v2, :cond_0

    const/16 v2, 0x939

    if-gt p0, v2, :cond_33

    move v0, v1

    goto/16 :goto_0

    .line 151
    :cond_33
    const/16 v2, 0x93d

    if-ne p0, v2, :cond_34

    move v0, v1

    goto/16 :goto_0

    .line 152
    :cond_34
    const/16 v2, 0x958

    if-lt p0, v2, :cond_0

    const/16 v2, 0x961

    if-gt p0, v2, :cond_35

    move v0, v1

    goto/16 :goto_0

    .line 153
    :cond_35
    const/16 v2, 0x985

    if-lt p0, v2, :cond_0

    const/16 v2, 0x98c

    if-gt p0, v2, :cond_36

    move v0, v1

    goto/16 :goto_0

    .line 154
    :cond_36
    const/16 v2, 0x98f

    if-lt p0, v2, :cond_0

    const/16 v2, 0x990

    if-gt p0, v2, :cond_37

    move v0, v1

    goto/16 :goto_0

    .line 155
    :cond_37
    const/16 v2, 0x993

    if-lt p0, v2, :cond_0

    const/16 v2, 0x9a8

    if-gt p0, v2, :cond_38

    move v0, v1

    goto/16 :goto_0

    .line 156
    :cond_38
    const/16 v2, 0x9aa

    if-lt p0, v2, :cond_0

    const/16 v2, 0x9b0

    if-gt p0, v2, :cond_39

    move v0, v1

    goto/16 :goto_0

    .line 157
    :cond_39
    const/16 v2, 0x9b2

    if-ne p0, v2, :cond_3a

    move v0, v1

    goto/16 :goto_0

    .line 158
    :cond_3a
    const/16 v2, 0x9b6

    if-lt p0, v2, :cond_0

    const/16 v2, 0x9b9

    if-gt p0, v2, :cond_3b

    move v0, v1

    goto/16 :goto_0

    .line 159
    :cond_3b
    const/16 v2, 0x9dc

    if-lt p0, v2, :cond_0

    const/16 v2, 0x9dd

    if-gt p0, v2, :cond_3c

    move v0, v1

    goto/16 :goto_0

    .line 160
    :cond_3c
    const/16 v2, 0x9df

    if-lt p0, v2, :cond_0

    const/16 v2, 0x9e1

    if-gt p0, v2, :cond_3d

    move v0, v1

    goto/16 :goto_0

    .line 161
    :cond_3d
    const/16 v2, 0x9f0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x9f1

    if-gt p0, v2, :cond_3e

    move v0, v1

    goto/16 :goto_0

    .line 162
    :cond_3e
    const/16 v2, 0xa05

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa0a

    if-gt p0, v2, :cond_3f

    move v0, v1

    goto/16 :goto_0

    .line 163
    :cond_3f
    const/16 v2, 0xa0f

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa10

    if-gt p0, v2, :cond_40

    move v0, v1

    goto/16 :goto_0

    .line 164
    :cond_40
    const/16 v2, 0xa13

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa28

    if-gt p0, v2, :cond_41

    move v0, v1

    goto/16 :goto_0

    .line 165
    :cond_41
    const/16 v2, 0xa2a

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa30

    if-gt p0, v2, :cond_42

    move v0, v1

    goto/16 :goto_0

    .line 166
    :cond_42
    const/16 v2, 0xa32

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa33

    if-gt p0, v2, :cond_43

    move v0, v1

    goto/16 :goto_0

    .line 167
    :cond_43
    const/16 v2, 0xa35

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa36

    if-gt p0, v2, :cond_44

    move v0, v1

    goto/16 :goto_0

    .line 168
    :cond_44
    const/16 v2, 0xa38

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa39

    if-gt p0, v2, :cond_45

    move v0, v1

    goto/16 :goto_0

    .line 169
    :cond_45
    const/16 v2, 0xa59

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa5c

    if-gt p0, v2, :cond_46

    move v0, v1

    goto/16 :goto_0

    .line 170
    :cond_46
    const/16 v2, 0xa5e

    if-ne p0, v2, :cond_47

    move v0, v1

    goto/16 :goto_0

    .line 171
    :cond_47
    const/16 v2, 0xa72

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa74

    if-gt p0, v2, :cond_48

    move v0, v1

    goto/16 :goto_0

    .line 172
    :cond_48
    const/16 v2, 0xa85

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa8b

    if-gt p0, v2, :cond_49

    move v0, v1

    goto/16 :goto_0

    .line 173
    :cond_49
    const/16 v2, 0xa8d

    if-ne p0, v2, :cond_4a

    move v0, v1

    goto/16 :goto_0

    .line 174
    :cond_4a
    const/16 v2, 0xa8f

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa91

    if-gt p0, v2, :cond_4b

    move v0, v1

    goto/16 :goto_0

    .line 175
    :cond_4b
    const/16 v2, 0xa93

    if-lt p0, v2, :cond_0

    const/16 v2, 0xaa8

    if-gt p0, v2, :cond_4c

    move v0, v1

    goto/16 :goto_0

    .line 176
    :cond_4c
    const/16 v2, 0xaaa

    if-lt p0, v2, :cond_0

    const/16 v2, 0xab0

    if-gt p0, v2, :cond_4d

    move v0, v1

    goto/16 :goto_0

    .line 177
    :cond_4d
    const/16 v2, 0xab2

    if-lt p0, v2, :cond_0

    const/16 v2, 0xab3

    if-gt p0, v2, :cond_4e

    move v0, v1

    goto/16 :goto_0

    .line 178
    :cond_4e
    const/16 v2, 0xab5

    if-lt p0, v2, :cond_0

    const/16 v2, 0xab9

    if-gt p0, v2, :cond_4f

    move v0, v1

    goto/16 :goto_0

    .line 179
    :cond_4f
    const/16 v2, 0xabd

    if-ne p0, v2, :cond_50

    move v0, v1

    goto/16 :goto_0

    .line 180
    :cond_50
    const/16 v2, 0xae0

    if-ne p0, v2, :cond_51

    move v0, v1

    goto/16 :goto_0

    .line 181
    :cond_51
    const/16 v2, 0xb05

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb0c

    if-gt p0, v2, :cond_52

    move v0, v1

    goto/16 :goto_0

    .line 182
    :cond_52
    const/16 v2, 0xb0f

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb10

    if-gt p0, v2, :cond_53

    move v0, v1

    goto/16 :goto_0

    .line 183
    :cond_53
    const/16 v2, 0xb13

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb28

    if-gt p0, v2, :cond_54

    move v0, v1

    goto/16 :goto_0

    .line 184
    :cond_54
    const/16 v2, 0xb2a

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb30

    if-gt p0, v2, :cond_55

    move v0, v1

    goto/16 :goto_0

    .line 185
    :cond_55
    const/16 v2, 0xb32

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb33

    if-gt p0, v2, :cond_56

    move v0, v1

    goto/16 :goto_0

    .line 186
    :cond_56
    const/16 v2, 0xb36

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb39

    if-gt p0, v2, :cond_57

    move v0, v1

    goto/16 :goto_0

    .line 187
    :cond_57
    const/16 v2, 0xb3d

    if-ne p0, v2, :cond_58

    move v0, v1

    goto/16 :goto_0

    .line 188
    :cond_58
    const/16 v2, 0xb5c

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb5d

    if-gt p0, v2, :cond_59

    move v0, v1

    goto/16 :goto_0

    .line 189
    :cond_59
    const/16 v2, 0xb5f

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb61

    if-gt p0, v2, :cond_5a

    move v0, v1

    goto/16 :goto_0

    .line 190
    :cond_5a
    const/16 v2, 0xb85

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb8a

    if-gt p0, v2, :cond_5b

    move v0, v1

    goto/16 :goto_0

    .line 191
    :cond_5b
    const/16 v2, 0xb8e

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb90

    if-gt p0, v2, :cond_5c

    move v0, v1

    goto/16 :goto_0

    .line 192
    :cond_5c
    const/16 v2, 0xb92

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb95

    if-gt p0, v2, :cond_5d

    move v0, v1

    goto/16 :goto_0

    .line 193
    :cond_5d
    const/16 v2, 0xb99

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb9a

    if-gt p0, v2, :cond_5e

    move v0, v1

    goto/16 :goto_0

    .line 194
    :cond_5e
    const/16 v2, 0xb9c

    if-ne p0, v2, :cond_5f

    move v0, v1

    goto/16 :goto_0

    .line 195
    :cond_5f
    const/16 v2, 0xb9e

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb9f

    if-gt p0, v2, :cond_60

    move v0, v1

    goto/16 :goto_0

    .line 196
    :cond_60
    const/16 v2, 0xba3

    if-lt p0, v2, :cond_0

    const/16 v2, 0xba4

    if-gt p0, v2, :cond_61

    move v0, v1

    goto/16 :goto_0

    .line 197
    :cond_61
    const/16 v2, 0xba8

    if-lt p0, v2, :cond_0

    const/16 v2, 0xbaa

    if-gt p0, v2, :cond_62

    move v0, v1

    goto/16 :goto_0

    .line 198
    :cond_62
    const/16 v2, 0xbae

    if-lt p0, v2, :cond_0

    const/16 v2, 0xbb5

    if-gt p0, v2, :cond_63

    move v0, v1

    goto/16 :goto_0

    .line 199
    :cond_63
    const/16 v2, 0xbb7

    if-lt p0, v2, :cond_0

    const/16 v2, 0xbb9

    if-gt p0, v2, :cond_64

    move v0, v1

    goto/16 :goto_0

    .line 200
    :cond_64
    const/16 v2, 0xc05

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc0c

    if-gt p0, v2, :cond_65

    move v0, v1

    goto/16 :goto_0

    .line 201
    :cond_65
    const/16 v2, 0xc0e

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc10

    if-gt p0, v2, :cond_66

    move v0, v1

    goto/16 :goto_0

    .line 202
    :cond_66
    const/16 v2, 0xc12

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc28

    if-gt p0, v2, :cond_67

    move v0, v1

    goto/16 :goto_0

    .line 203
    :cond_67
    const/16 v2, 0xc2a

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc33

    if-gt p0, v2, :cond_68

    move v0, v1

    goto/16 :goto_0

    .line 204
    :cond_68
    const/16 v2, 0xc35

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc39

    if-gt p0, v2, :cond_69

    move v0, v1

    goto/16 :goto_0

    .line 205
    :cond_69
    const/16 v2, 0xc60

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc61

    if-gt p0, v2, :cond_6a

    move v0, v1

    goto/16 :goto_0

    .line 206
    :cond_6a
    const/16 v2, 0xc85

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc8c

    if-gt p0, v2, :cond_6b

    move v0, v1

    goto/16 :goto_0

    .line 207
    :cond_6b
    const/16 v2, 0xc8e

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc90

    if-gt p0, v2, :cond_6c

    move v0, v1

    goto/16 :goto_0

    .line 208
    :cond_6c
    const/16 v2, 0xc92

    if-lt p0, v2, :cond_0

    const/16 v2, 0xca8

    if-gt p0, v2, :cond_6d

    move v0, v1

    goto/16 :goto_0

    .line 209
    :cond_6d
    const/16 v2, 0xcaa

    if-lt p0, v2, :cond_0

    const/16 v2, 0xcb3

    if-gt p0, v2, :cond_6e

    move v0, v1

    goto/16 :goto_0

    .line 210
    :cond_6e
    const/16 v2, 0xcb5

    if-lt p0, v2, :cond_0

    const/16 v2, 0xcb9

    if-gt p0, v2, :cond_6f

    move v0, v1

    goto/16 :goto_0

    .line 211
    :cond_6f
    const/16 v2, 0xcde

    if-ne p0, v2, :cond_70

    move v0, v1

    goto/16 :goto_0

    .line 212
    :cond_70
    const/16 v2, 0xce0

    if-lt p0, v2, :cond_0

    const/16 v2, 0xce1

    if-gt p0, v2, :cond_71

    move v0, v1

    goto/16 :goto_0

    .line 213
    :cond_71
    const/16 v2, 0xd05

    if-lt p0, v2, :cond_0

    const/16 v2, 0xd0c

    if-gt p0, v2, :cond_72

    move v0, v1

    goto/16 :goto_0

    .line 214
    :cond_72
    const/16 v2, 0xd0e

    if-lt p0, v2, :cond_0

    const/16 v2, 0xd10

    if-gt p0, v2, :cond_73

    move v0, v1

    goto/16 :goto_0

    .line 215
    :cond_73
    const/16 v2, 0xd12

    if-lt p0, v2, :cond_0

    const/16 v2, 0xd28

    if-gt p0, v2, :cond_74

    move v0, v1

    goto/16 :goto_0

    .line 216
    :cond_74
    const/16 v2, 0xd2a

    if-lt p0, v2, :cond_0

    const/16 v2, 0xd39

    if-gt p0, v2, :cond_75

    move v0, v1

    goto/16 :goto_0

    .line 217
    :cond_75
    const/16 v2, 0xd60

    if-lt p0, v2, :cond_0

    const/16 v2, 0xd61

    if-gt p0, v2, :cond_76

    move v0, v1

    goto/16 :goto_0

    .line 218
    :cond_76
    const/16 v2, 0xe01

    if-lt p0, v2, :cond_0

    const/16 v2, 0xe2e

    if-gt p0, v2, :cond_77

    move v0, v1

    goto/16 :goto_0

    .line 219
    :cond_77
    const/16 v2, 0xe30

    if-ne p0, v2, :cond_78

    move v0, v1

    goto/16 :goto_0

    .line 220
    :cond_78
    const/16 v2, 0xe32

    if-lt p0, v2, :cond_0

    const/16 v2, 0xe33

    if-gt p0, v2, :cond_79

    move v0, v1

    goto/16 :goto_0

    .line 221
    :cond_79
    const/16 v2, 0xe40

    if-lt p0, v2, :cond_0

    const/16 v2, 0xe45

    if-gt p0, v2, :cond_7a

    move v0, v1

    goto/16 :goto_0

    .line 222
    :cond_7a
    const/16 v2, 0xe81

    if-lt p0, v2, :cond_0

    const/16 v2, 0xe82

    if-gt p0, v2, :cond_7b

    move v0, v1

    goto/16 :goto_0

    .line 223
    :cond_7b
    const/16 v2, 0xe84

    if-ne p0, v2, :cond_7c

    move v0, v1

    goto/16 :goto_0

    .line 224
    :cond_7c
    const/16 v2, 0xe87

    if-lt p0, v2, :cond_0

    const/16 v2, 0xe88

    if-gt p0, v2, :cond_7d

    move v0, v1

    goto/16 :goto_0

    .line 225
    :cond_7d
    const/16 v2, 0xe8a

    if-ne p0, v2, :cond_7e

    move v0, v1

    goto/16 :goto_0

    .line 226
    :cond_7e
    const/16 v2, 0xe8d

    if-ne p0, v2, :cond_7f

    move v0, v1

    goto/16 :goto_0

    .line 227
    :cond_7f
    const/16 v2, 0xe94

    if-lt p0, v2, :cond_0

    const/16 v2, 0xe97

    if-gt p0, v2, :cond_80

    move v0, v1

    goto/16 :goto_0

    .line 228
    :cond_80
    const/16 v2, 0xe99

    if-lt p0, v2, :cond_0

    const/16 v2, 0xe9f

    if-gt p0, v2, :cond_81

    move v0, v1

    goto/16 :goto_0

    .line 229
    :cond_81
    const/16 v2, 0xea1

    if-lt p0, v2, :cond_0

    const/16 v2, 0xea3

    if-gt p0, v2, :cond_82

    move v0, v1

    goto/16 :goto_0

    .line 230
    :cond_82
    const/16 v2, 0xea5

    if-ne p0, v2, :cond_83

    move v0, v1

    goto/16 :goto_0

    .line 231
    :cond_83
    const/16 v2, 0xea7

    if-ne p0, v2, :cond_84

    move v0, v1

    goto/16 :goto_0

    .line 232
    :cond_84
    const/16 v2, 0xeaa

    if-lt p0, v2, :cond_0

    const/16 v2, 0xeab

    if-gt p0, v2, :cond_85

    move v0, v1

    goto/16 :goto_0

    .line 233
    :cond_85
    const/16 v2, 0xead

    if-lt p0, v2, :cond_0

    const/16 v2, 0xeae

    if-gt p0, v2, :cond_86

    move v0, v1

    goto/16 :goto_0

    .line 234
    :cond_86
    const/16 v2, 0xeb0

    if-ne p0, v2, :cond_87

    move v0, v1

    goto/16 :goto_0

    .line 235
    :cond_87
    const/16 v2, 0xeb2

    if-lt p0, v2, :cond_0

    const/16 v2, 0xeb3

    if-gt p0, v2, :cond_88

    move v0, v1

    goto/16 :goto_0

    .line 236
    :cond_88
    const/16 v2, 0xebd

    if-ne p0, v2, :cond_89

    move v0, v1

    goto/16 :goto_0

    .line 237
    :cond_89
    const/16 v2, 0xec0

    if-lt p0, v2, :cond_0

    const/16 v2, 0xec4

    if-gt p0, v2, :cond_8a

    move v0, v1

    goto/16 :goto_0

    .line 238
    :cond_8a
    const/16 v2, 0xf40

    if-lt p0, v2, :cond_0

    const/16 v2, 0xf47

    if-gt p0, v2, :cond_8b

    move v0, v1

    goto/16 :goto_0

    .line 239
    :cond_8b
    const/16 v2, 0xf49

    if-lt p0, v2, :cond_0

    const/16 v2, 0xf69

    if-gt p0, v2, :cond_8c

    move v0, v1

    goto/16 :goto_0

    .line 240
    :cond_8c
    const/16 v2, 0x10a0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x10c5

    if-gt p0, v2, :cond_8d

    move v0, v1

    goto/16 :goto_0

    .line 241
    :cond_8d
    const/16 v2, 0x10d0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x10f6

    if-gt p0, v2, :cond_8e

    move v0, v1

    goto/16 :goto_0

    .line 242
    :cond_8e
    const/16 v2, 0x1100

    if-ne p0, v2, :cond_8f

    move v0, v1

    goto/16 :goto_0

    .line 243
    :cond_8f
    const/16 v2, 0x1102

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1103

    if-gt p0, v2, :cond_90

    move v0, v1

    goto/16 :goto_0

    .line 244
    :cond_90
    const/16 v2, 0x1105

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1107

    if-gt p0, v2, :cond_91

    move v0, v1

    goto/16 :goto_0

    .line 245
    :cond_91
    const/16 v2, 0x1109

    if-ne p0, v2, :cond_92

    move v0, v1

    goto/16 :goto_0

    .line 246
    :cond_92
    const/16 v2, 0x110b

    if-lt p0, v2, :cond_0

    const/16 v2, 0x110c

    if-gt p0, v2, :cond_93

    move v0, v1

    goto/16 :goto_0

    .line 247
    :cond_93
    const/16 v2, 0x110e

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1112

    if-gt p0, v2, :cond_94

    move v0, v1

    goto/16 :goto_0

    .line 248
    :cond_94
    const/16 v2, 0x113c

    if-ne p0, v2, :cond_95

    move v0, v1

    goto/16 :goto_0

    .line 249
    :cond_95
    const/16 v2, 0x113e

    if-ne p0, v2, :cond_96

    move v0, v1

    goto/16 :goto_0

    .line 250
    :cond_96
    const/16 v2, 0x1140

    if-ne p0, v2, :cond_97

    move v0, v1

    goto/16 :goto_0

    .line 251
    :cond_97
    const/16 v2, 0x114c

    if-ne p0, v2, :cond_98

    move v0, v1

    goto/16 :goto_0

    .line 252
    :cond_98
    const/16 v2, 0x114e

    if-ne p0, v2, :cond_99

    move v0, v1

    goto/16 :goto_0

    .line 253
    :cond_99
    const/16 v2, 0x1150

    if-ne p0, v2, :cond_9a

    move v0, v1

    goto/16 :goto_0

    .line 254
    :cond_9a
    const/16 v2, 0x1154

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1155

    if-gt p0, v2, :cond_9b

    move v0, v1

    goto/16 :goto_0

    .line 255
    :cond_9b
    const/16 v2, 0x1159

    if-ne p0, v2, :cond_9c

    move v0, v1

    goto/16 :goto_0

    .line 256
    :cond_9c
    const/16 v2, 0x115f

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1161

    if-gt p0, v2, :cond_9d

    move v0, v1

    goto/16 :goto_0

    .line 257
    :cond_9d
    const/16 v2, 0x1163

    if-ne p0, v2, :cond_9e

    move v0, v1

    goto/16 :goto_0

    .line 258
    :cond_9e
    const/16 v2, 0x1165

    if-ne p0, v2, :cond_9f

    move v0, v1

    goto/16 :goto_0

    .line 259
    :cond_9f
    const/16 v2, 0x1167

    if-ne p0, v2, :cond_a0

    move v0, v1

    goto/16 :goto_0

    .line 260
    :cond_a0
    const/16 v2, 0x1169

    if-ne p0, v2, :cond_a1

    move v0, v1

    goto/16 :goto_0

    .line 261
    :cond_a1
    const/16 v2, 0x116d

    if-lt p0, v2, :cond_0

    const/16 v2, 0x116e

    if-gt p0, v2, :cond_a2

    move v0, v1

    goto/16 :goto_0

    .line 262
    :cond_a2
    const/16 v2, 0x1172

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1173

    if-gt p0, v2, :cond_a3

    move v0, v1

    goto/16 :goto_0

    .line 263
    :cond_a3
    const/16 v2, 0x1175

    if-ne p0, v2, :cond_a4

    move v0, v1

    goto/16 :goto_0

    .line 264
    :cond_a4
    const/16 v2, 0x119e

    if-ne p0, v2, :cond_a5

    move v0, v1

    goto/16 :goto_0

    .line 265
    :cond_a5
    const/16 v2, 0x11a8

    if-ne p0, v2, :cond_a6

    move v0, v1

    goto/16 :goto_0

    .line 266
    :cond_a6
    const/16 v2, 0x11ab

    if-ne p0, v2, :cond_a7

    move v0, v1

    goto/16 :goto_0

    .line 267
    :cond_a7
    const/16 v2, 0x11ae

    if-lt p0, v2, :cond_0

    const/16 v2, 0x11af

    if-gt p0, v2, :cond_a8

    move v0, v1

    goto/16 :goto_0

    .line 268
    :cond_a8
    const/16 v2, 0x11b7

    if-lt p0, v2, :cond_0

    const/16 v2, 0x11b8

    if-gt p0, v2, :cond_a9

    move v0, v1

    goto/16 :goto_0

    .line 269
    :cond_a9
    const/16 v2, 0x11ba

    if-ne p0, v2, :cond_aa

    move v0, v1

    goto/16 :goto_0

    .line 270
    :cond_aa
    const/16 v2, 0x11bc

    if-lt p0, v2, :cond_0

    const/16 v2, 0x11c2

    if-gt p0, v2, :cond_ab

    move v0, v1

    goto/16 :goto_0

    .line 271
    :cond_ab
    const/16 v2, 0x11eb

    if-ne p0, v2, :cond_ac

    move v0, v1

    goto/16 :goto_0

    .line 272
    :cond_ac
    const/16 v2, 0x11f0

    if-ne p0, v2, :cond_ad

    move v0, v1

    goto/16 :goto_0

    .line 273
    :cond_ad
    const/16 v2, 0x11f9

    if-ne p0, v2, :cond_ae

    move v0, v1

    goto/16 :goto_0

    .line 274
    :cond_ae
    const/16 v2, 0x1e00

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1e9b

    if-gt p0, v2, :cond_af

    move v0, v1

    goto/16 :goto_0

    .line 275
    :cond_af
    const/16 v2, 0x1ea0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1ef9

    if-gt p0, v2, :cond_b0

    move v0, v1

    goto/16 :goto_0

    .line 276
    :cond_b0
    const/16 v2, 0x1f00

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1f15

    if-gt p0, v2, :cond_b1

    move v0, v1

    goto/16 :goto_0

    .line 277
    :cond_b1
    const/16 v2, 0x1f18

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1f1d

    if-gt p0, v2, :cond_b2

    move v0, v1

    goto/16 :goto_0

    .line 278
    :cond_b2
    const/16 v2, 0x1f20

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1f45

    if-gt p0, v2, :cond_b3

    move v0, v1

    goto/16 :goto_0

    .line 279
    :cond_b3
    const/16 v2, 0x1f48

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1f4d

    if-gt p0, v2, :cond_b4

    move v0, v1

    goto/16 :goto_0

    .line 280
    :cond_b4
    const/16 v2, 0x1f50

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1f57

    if-gt p0, v2, :cond_b5

    move v0, v1

    goto/16 :goto_0

    .line 281
    :cond_b5
    const/16 v2, 0x1f59

    if-ne p0, v2, :cond_b6

    move v0, v1

    goto/16 :goto_0

    .line 282
    :cond_b6
    const/16 v2, 0x1f5b

    if-ne p0, v2, :cond_b7

    move v0, v1

    goto/16 :goto_0

    .line 283
    :cond_b7
    const/16 v2, 0x1f5d

    if-ne p0, v2, :cond_b8

    move v0, v1

    goto/16 :goto_0

    .line 284
    :cond_b8
    const/16 v2, 0x1f5f

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1f7d

    if-gt p0, v2, :cond_b9

    move v0, v1

    goto/16 :goto_0

    .line 285
    :cond_b9
    const/16 v2, 0x1f80

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1fb4

    if-gt p0, v2, :cond_ba

    move v0, v1

    goto/16 :goto_0

    .line 286
    :cond_ba
    const/16 v2, 0x1fb6

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1fbc

    if-gt p0, v2, :cond_bb

    move v0, v1

    goto/16 :goto_0

    .line 287
    :cond_bb
    const/16 v2, 0x1fbe

    if-ne p0, v2, :cond_bc

    move v0, v1

    goto/16 :goto_0

    .line 288
    :cond_bc
    const/16 v2, 0x1fc2

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1fc4

    if-gt p0, v2, :cond_bd

    move v0, v1

    goto/16 :goto_0

    .line 289
    :cond_bd
    const/16 v2, 0x1fc6

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1fcc

    if-gt p0, v2, :cond_be

    move v0, v1

    goto/16 :goto_0

    .line 290
    :cond_be
    const/16 v2, 0x1fd0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1fd3

    if-gt p0, v2, :cond_bf

    move v0, v1

    goto/16 :goto_0

    .line 291
    :cond_bf
    const/16 v2, 0x1fd6

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1fdb

    if-gt p0, v2, :cond_c0

    move v0, v1

    goto/16 :goto_0

    .line 292
    :cond_c0
    const/16 v2, 0x1fe0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1fec

    if-gt p0, v2, :cond_c1

    move v0, v1

    goto/16 :goto_0

    .line 293
    :cond_c1
    const/16 v2, 0x1ff2

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1ff4

    if-gt p0, v2, :cond_c2

    move v0, v1

    goto/16 :goto_0

    .line 294
    :cond_c2
    const/16 v2, 0x1ff6

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1ffc

    if-gt p0, v2, :cond_c3

    move v0, v1

    goto/16 :goto_0

    .line 295
    :cond_c3
    const/16 v2, 0x2126

    if-ne p0, v2, :cond_c4

    move v0, v1

    goto/16 :goto_0

    .line 296
    :cond_c4
    const/16 v2, 0x212a

    if-lt p0, v2, :cond_0

    const/16 v2, 0x212b

    if-gt p0, v2, :cond_c5

    move v0, v1

    goto/16 :goto_0

    .line 297
    :cond_c5
    const/16 v2, 0x212e

    if-ne p0, v2, :cond_c6

    move v0, v1

    goto/16 :goto_0

    .line 298
    :cond_c6
    const/16 v2, 0x2180

    if-lt p0, v2, :cond_0

    const/16 v2, 0x2182

    if-gt p0, v2, :cond_c7

    move v0, v1

    goto/16 :goto_0

    .line 299
    :cond_c7
    const/16 v2, 0x3007

    if-ne p0, v2, :cond_c8

    move v0, v1

    goto/16 :goto_0

    .line 300
    :cond_c8
    const/16 v2, 0x3021

    if-lt p0, v2, :cond_0

    const/16 v2, 0x3029

    if-gt p0, v2, :cond_c9

    move v0, v1

    goto/16 :goto_0

    .line 301
    :cond_c9
    const/16 v2, 0x3041

    if-lt p0, v2, :cond_0

    const/16 v2, 0x3094

    if-gt p0, v2, :cond_ca

    move v0, v1

    goto/16 :goto_0

    .line 302
    :cond_ca
    const/16 v2, 0x30a1

    if-lt p0, v2, :cond_0

    const/16 v2, 0x30fa

    if-gt p0, v2, :cond_cb

    move v0, v1

    goto/16 :goto_0

    .line 303
    :cond_cb
    const/16 v2, 0x3105

    if-lt p0, v2, :cond_0

    const/16 v2, 0x312c

    if-gt p0, v2, :cond_cc

    move v0, v1

    goto/16 :goto_0

    .line 304
    :cond_cc
    const/16 v2, 0x4e00

    if-lt p0, v2, :cond_0

    const v2, 0x9fa5

    if-gt p0, v2, :cond_cd

    move v0, v1

    goto/16 :goto_0

    .line 305
    :cond_cd
    const v2, 0xac00

    if-lt p0, v2, :cond_0

    const v2, 0xd7a3

    if-gt p0, v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method static isXMLNCNameCharacter(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 67
    invoke-static {p0}, Lorg/jaxen/saxpath/base/Verifier;->isXMLLetter(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/jaxen/saxpath/base/Verifier;->isXMLDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Lorg/jaxen/saxpath/base/Verifier;->isXMLCombiningChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/jaxen/saxpath/base/Verifier;->isXMLExtender(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isXMLNCNameStartCharacter(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 84
    invoke-static {p0}, Lorg/jaxen/saxpath/base/Verifier;->isXMLLetter(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x5f

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
