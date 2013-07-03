.class public Lcom/android/providers/contacts/t9/r;
.super Ljava/lang/Object;
.source "T9Builder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;IZ)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 472
    const/4 v1, 0x0

    .line 473
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 474
    if-nez p3, :cond_1

    .line 475
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/HanziToPinyin$Token;

    invoke-static {p0, v0, p2}, Lcom/android/providers/contacts/t9/r;->a(Ljava/util/ArrayList;Lmiui/util/HanziToPinyin$Token;I)I

    move-result v0

    .line 476
    if-nez v0, :cond_0

    .line 477
    sub-int v0, v2, p2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/HanziToPinyin$Token;

    sub-int v1, v2, p2

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/providers/contacts/t9/r;->a(Ljava/util/ArrayList;Lmiui/util/HanziToPinyin$Token;I)I

    move-result v0

    .line 485
    :goto_0
    return v0

    .line 479
    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 483
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/HanziToPinyin$Token;

    invoke-static {p0, v0, p2}, Lcom/android/providers/contacts/t9/r;->a(Ljava/util/ArrayList;Lmiui/util/HanziToPinyin$Token;I)I

    move v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/util/ArrayList;Lmiui/util/HanziToPinyin$Token;I)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 432
    .line 434
    iget v0, p1, Lmiui/util/HanziToPinyin$Token;->type:I

    packed-switch v0, :pswitch_data_0

    .line 459
    :cond_0
    :goto_0
    return v3

    .line 436
    :pswitch_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 437
    iget-object v0, p1, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    array-length v0, v0

    invoke-static {p0, v0}, Lcom/android/providers/contacts/t9/r;->b(Ljava/util/ArrayList;I)I

    move-result v5

    move v4, v3

    .line 438
    :goto_1
    iget-object v0, p1, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    array-length v0, v0

    if-ge v4, v0, :cond_3

    .line 439
    iget-object v0, p1, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    aget-object v0, v0, v4

    .line 440
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v8, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2
    move v2, v3

    .line 447
    :goto_3
    mul-int v0, v4, v6

    add-int/2addr v0, v2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    if-ge v2, v6, :cond_2

    .line 448
    mul-int v0, v4, v6

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aput-object v1, v0, p2

    .line 449
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 440
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 438
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_3
    move v3, v5

    .line 452
    goto :goto_0

    :pswitch_1
    move v1, v3

    .line 454
    :goto_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 455
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v2, p1, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    aput-object v2, v0, p2

    .line 454
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/android/providers/contacts/t9/p;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/android/providers/contacts/t9/p;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, p1, p2, v0}, Lcom/android/providers/contacts/t9/r;->a(Lcom/android/providers/contacts/t9/p;Ljava/lang/String;Ljava/util/ArrayList;Z)Lcom/android/providers/contacts/t9/p;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to build name \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" due to OutOfMemoryError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/providers/contacts/t9/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, p2, v0}, Lcom/android/providers/contacts/t9/r;->a(Lcom/android/providers/contacts/t9/p;Ljava/lang/String;Ljava/util/ArrayList;Z)Lcom/android/providers/contacts/t9/p;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 166
    :catch_1
    move-exception v0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to build name \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" due to OutOfMemoryError when polyphones disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/providers/contacts/t9/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/android/providers/contacts/t9/p;Ljava/lang/String;Ljava/util/ArrayList;Z)Lcom/android/providers/contacts/t9/p;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    if-nez p2, :cond_0

    .line 176
    invoke-static {}, Lmiui/util/HanziToPinyin;->getInstance()Lmiui/util/HanziToPinyin;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lmiui/util/HanziToPinyin;->get(Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object p2

    .line 179
    :cond_0
    if-nez p3, :cond_2

    .line 180
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/HanziToPinyin$Token;

    .line 181
    iget v2, v0, Lmiui/util/HanziToPinyin$Token;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 182
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v0, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    iput-object v2, v0, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    goto :goto_0

    .line 187
    :cond_2
    sget-object v0, Lcom/android/providers/contacts/t9/f;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "t9_indexing_key"

    sget v2, Lmiui/provider/ExtraSettings$System;->T9_INDEXING_KEY_DEFAULT:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    move v1, v0

    .line 192
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 195
    const/4 v0, 0x2

    .line 197
    invoke-static {}, Lcom/android/providers/contacts/t9/f;->ad()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 200
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/HanziToPinyin$Token;

    .line 201
    iget v3, v0, Lmiui/util/HanziToPinyin$Token;->type:I

    packed-switch v3, :pswitch_data_0

    :cond_3
    :goto_3
    move v0, v2

    :goto_4
    move v2, v0

    .line 221
    goto :goto_2

    .line 187
    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 203
    :pswitch_0
    const/4 v3, 0x1

    .line 204
    iget-object v2, v0, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    if-nez v2, :cond_5

    .line 205
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, v0, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    aput-object v8, v2, v7

    iput-object v2, v0, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    .line 207
    :cond_5
    if-eqz v1, :cond_6

    .line 208
    const/4 v2, 0x0

    :goto_5
    iget-object v7, v0, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    array-length v7, v7

    if-ge v2, v7, :cond_6

    .line 209
    iget-object v7, v0, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    iget-object v8, v0, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-static {v8, v5}, Lmiui/util/HanziToPinyin;->convertPinyin2Zhuyin(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 212
    :cond_6
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v3

    .line 213
    goto :goto_4

    .line 217
    :pswitch_1
    iget-object v3, v0, Lmiui/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/providers/contacts/t9/r;->as(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 218
    iget-object v3, v0, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 219
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 225
    :cond_7
    int-to-long v0, v2

    iput-wide v0, p0, Lcom/android/providers/contacts/t9/p;->hy:J

    .line 228
    const/4 v0, 0x1

    if-ne v2, v0, :cond_14

    .line 230
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 231
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 234
    const v1, 0x3ecccccc

    .line 236
    const/4 v0, 0x0

    :goto_6
    add-int/lit8 v2, v6, 0x1

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_8

    .line 237
    const/4 v2, 0x3

    if-ge v0, v2, :cond_a

    .line 240
    sub-int v2, v6, v0

    add-int/lit8 v2, v2, -0x1

    if-ne v2, v0, :cond_9

    const/4 v2, 0x1

    :goto_7
    invoke-static {v5, v4, v0, v2}, Lcom/android/providers/contacts/t9/r;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;IZ)I

    move-result v2

    move v9, v0

    move v0, v2

    move v2, v9

    .line 268
    :goto_8
    if-eqz v0, :cond_f

    .line 269
    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v5, v4, v2, v0}, Lcom/android/providers/contacts/t9/r;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/lang/Boolean;)V

    .line 273
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 274
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/android/providers/contacts/t9/r;->m([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/t9/p;->ew:Ljava/lang/String;

    .line 275
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/android/providers/contacts/t9/r;->l([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/t9/p;->hx:Ljava/lang/String;

    .line 301
    :goto_a
    return-object p0

    .line 240
    :cond_9
    const/4 v2, 0x0

    goto :goto_7

    .line 248
    :cond_a
    sub-int v2, v6, v0

    add-int/lit8 v2, v2, -0x2

    add-int/lit8 v3, v0, 0x1

    if-le v2, v3, :cond_b

    .line 249
    const v2, 0x3f19999a

    mul-float/2addr v2, v1

    move v3, v2

    .line 254
    :goto_b
    const v2, 0x3ca3d70a

    cmpg-float v2, v3, v2

    if-gez v2, :cond_c

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v7, 0x16d

    if-lt v2, v7, :cond_c

    .line 258
    const/4 v2, 0x2

    .line 259
    add-int/lit8 v0, v0, -0x1

    .line 265
    :goto_c
    sub-float/2addr v1, v3

    move v9, v0

    move v0, v2

    move v2, v9

    goto :goto_8

    :cond_b
    move v3, v1

    .line 251
    goto :goto_b

    .line 262
    :cond_c
    sub-int v2, v6, v0

    add-int/lit8 v2, v2, -0x1

    if-ne v2, v0, :cond_d

    const/4 v2, 0x1

    :goto_d
    invoke-static {v5, v4, v0, v2}, Lcom/android/providers/contacts/t9/r;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;IZ)I

    move-result v2

    goto :goto_c

    :cond_d
    const/4 v2, 0x0

    goto :goto_d

    .line 269
    :cond_e
    const/4 v0, 0x0

    goto :goto_9

    .line 236
    :cond_f
    add-int/lit8 v0, v2, 0x1

    goto :goto_6

    .line 277
    :cond_10
    invoke-static {}, Lcom/android/providers/contacts/t9/f;->ad()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 278
    invoke-static {}, Lcom/android/providers/contacts/t9/f;->ad()Ljava/lang/StringBuilder;

    move-result-object v3

    .line 279
    const/4 v0, 0x0

    move v1, v0

    :goto_e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_13

    .line 280
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/android/providers/contacts/t9/r;->m([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 281
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/android/providers/contacts/t9/r;->l([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_12

    .line 283
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_11

    .line 284
    const/16 v6, 0x3b

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    const/16 v6, 0x3b

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 287
    :cond_11
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_12
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 291
    :cond_13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/t9/p;->ew:Ljava/lang/String;

    .line 292
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/t9/p;->hx:Ljava/lang/String;

    .line 293
    invoke-static {v2}, Lcom/android/providers/contacts/t9/f;->a(Ljava/lang/StringBuilder;)V

    .line 294
    invoke-static {v3}, Lcom/android/providers/contacts/t9/f;->a(Ljava/lang/StringBuilder;)V

    goto/16 :goto_a

    .line 298
    :cond_14
    iput-object p1, p0, Lcom/android/providers/contacts/t9/p;->ew:Ljava/lang/String;

    .line 299
    invoke-static {p1}, Lcom/android/providers/contacts/t9/r;->ar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/t9/p;->hx:Ljava/lang/String;

    goto/16 :goto_a

    .line 201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/android/providers/contacts/t9/p;Ljava/util/ArrayList;)Lcom/android/providers/contacts/t9/p;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/providers/contacts/t9/p;->hv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/t9/p;->hv:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/android/providers/contacts/t9/r;->a(Lcom/android/providers/contacts/t9/p;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/android/providers/contacts/t9/p;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;IJ)Ljava/util/ArrayList;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 80
    .line 81
    invoke-static {}, Lcom/android/providers/contacts/t9/f;->ae()Ljava/util/ArrayList;

    move-result-object v3

    .line 83
    if-nez p1, :cond_2

    .line 84
    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/t9/f;->bM:[Ljava/lang/String;

    aget-object v0, v0, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 89
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    new-instance v4, Lcom/android/providers/contacts/t9/p;

    invoke-direct {v4}, Lcom/android/providers/contacts/t9/p;-><init>()V

    .line 91
    const/4 v0, 0x4

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 92
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/providers/contacts/t9/p;->cy:J

    .line 93
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/providers/contacts/t9/p;->af:J

    .line 94
    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/providers/contacts/t9/p;->mRawContactId:J

    .line 95
    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/providers/contacts/t9/p;->mData:Ljava/lang/String;

    .line 96
    iget-object v0, v4, Lcom/android/providers/contacts/t9/p;->mData:Ljava/lang/String;

    invoke-static {v0, v5, v6}, Lcom/android/providers/contacts/t9/r;->d(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/providers/contacts/t9/p;->hu:Ljava/lang/String;

    .line 97
    const/4 v0, 0x5

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/providers/contacts/t9/p;->hv:Ljava/lang/String;

    .line 98
    const/4 v0, 0x7

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/providers/contacts/t9/p;->mPhotoId:J

    .line 99
    const/16 v0, 0x8

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/providers/contacts/t9/p;->hw:J

    .line 100
    const-string v0, ""

    iput-object v0, v4, Lcom/android/providers/contacts/t9/p;->hz:Ljava/lang/String;

    .line 102
    iget-object v0, v4, Lcom/android/providers/contacts/t9/p;->mData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x6

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_1
    invoke-static {v4, v0}, Lcom/android/providers/contacts/t9/r;->a(Lcom/android/providers/contacts/t9/p;Ljava/util/ArrayList;)Lcom/android/providers/contacts/t9/p;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 112
    :goto_2
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to query database - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/android/providers/contacts/t9/f;->bM:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/providers/contacts/t9/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 114
    if-eqz v1, :cond_1

    .line 115
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 118
    :cond_1
    :goto_3
    return-object v3

    .line 86
    :cond_2
    :try_start_3
    sget-object v0, Lcom/android/providers/contacts/t9/f;->bM:[Ljava/lang/String;

    aget-object v0, v0, p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {p0, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    goto/16 :goto_0

    .line 103
    :cond_3
    :try_start_4
    iget-object v0, v4, Lcom/android/providers/contacts/t9/p;->hv:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/providers/contacts/t9/r;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    goto :goto_1

    .line 114
    :cond_4
    if-eqz v2, :cond_1

    .line 115
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 114
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_5

    .line 115
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 114
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 111
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/lang/Boolean;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 498
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p2

    move v2, v0

    .line 503
    :goto_0
    add-int/lit8 v0, p2, 0x1

    move v5, v0

    :goto_1
    if-ge v5, v2, :cond_3

    .line 504
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/HanziToPinyin$Token;

    .line 505
    iget v1, v0, Lmiui/util/HanziToPinyin$Token;->type:I

    packed-switch v1, :pswitch_data_0

    .line 503
    :cond_0
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 501
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    goto :goto_0

    .line 507
    :pswitch_0
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/HanziToPinyin$Token;

    iget-object v0, v0, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    aget-object v0, v0, v4

    .line 508
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2
    move v3, v4

    .line 512
    :goto_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 513
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aput-object v1, v0, v5

    .line 512
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 508
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :pswitch_1
    move v3, v4

    .line 517
    :goto_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 518
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v6, v0, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    aput-object v6, v1, v5

    .line 517
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    .line 523
    :cond_3
    return-void

    .line 505
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static ar(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x3b

    const/16 v2, 0x20

    .line 306
    invoke-static {}, Lcom/android/providers/contacts/t9/f;->ad()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 308
    const/4 v0, 0x0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 309
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 310
    if-ne v4, v7, :cond_0

    .line 311
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_0
    invoke-static {v4}, Lcom/android/providers/contacts/t9/T9miuisu;->formatCharToT9(C)C

    move-result v3

    .line 315
    if-nez v3, :cond_1

    move v1, v2

    .line 326
    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v4

    .line 327
    goto :goto_1

    .line 318
    :cond_1
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v0, :cond_2

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-nez v6, :cond_3

    .line 320
    :cond_2
    invoke-static {v3}, Lcom/android/providers/contacts/t9/f;->c(C)C

    move-result v1

    goto :goto_2

    .line 321
    :cond_3
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_4

    .line 322
    invoke-static {v3}, Lcom/android/providers/contacts/t9/f;->c(C)C

    move-result v1

    goto :goto_2

    .line 323
    :cond_4
    invoke-static {v4}, Lcom/android/providers/contacts/t9/f;->a(C)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 324
    invoke-static {v3}, Lcom/android/providers/contacts/t9/f;->c(C)C

    move-result v1

    goto :goto_2

    .line 329
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-static {v5}, Lcom/android/providers/contacts/t9/f;->a(Ljava/lang/StringBuilder;)V

    .line 331
    return-object v0

    :cond_6
    move v1, v3

    goto :goto_2
.end method

.method private static as(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 378
    invoke-static {}, Lcom/android/providers/contacts/t9/f;->ad()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 379
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move v0, v1

    move v2, v3

    .line 381
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 382
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 383
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 384
    if-eqz v2, :cond_0

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v1

    .line 381
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    .line 384
    goto :goto_1

    .line 386
    :cond_1
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 387
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .line 388
    goto :goto_2

    .line 389
    :cond_2
    invoke-static {v4}, Lcom/android/providers/contacts/t9/f;->a(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 390
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .line 391
    goto :goto_2

    .line 393
    :cond_3
    const/16 v2, 0x20

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .line 394
    goto :goto_2

    .line 397
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-static {v5}, Lcom/android/providers/contacts/t9/f;->a(Ljava/lang/StringBuilder;)V

    .line 399
    return-object v0
.end method

.method private static b(Ljava/util/ArrayList;I)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 410
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 411
    const/4 v0, 0x1

    move v3, v0

    :goto_0
    if-ge v3, p1, :cond_2

    move v2, v1

    .line 412
    :goto_1
    if-ge v2, v4, :cond_1

    .line 413
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v5, 0x2da

    if-lt v0, v5, :cond_0

    .line 416
    const/4 v0, 0x2

    .line 420
    :goto_2
    return v0

    .line 412
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 411
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 420
    goto :goto_2
.end method

.method public static c(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/t9/p;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    const-wide/16 v0, -0x64

    sub-long/2addr v0, p0

    .line 65
    invoke-static {p2}, Lmiui/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    neg-int v2, v2

    int-to-long v2, v2

    .line 68
    new-instance v4, Lcom/android/providers/contacts/t9/p;

    invoke-direct {v4}, Lcom/android/providers/contacts/t9/p;-><init>()V

    .line 69
    iput-wide v2, v4, Lcom/android/providers/contacts/t9/p;->cy:J

    .line 70
    iput-wide v0, v4, Lcom/android/providers/contacts/t9/p;->af:J

    .line 71
    iput-wide v2, v4, Lcom/android/providers/contacts/t9/p;->mRawContactId:J

    .line 72
    iput-object p2, v4, Lcom/android/providers/contacts/t9/p;->mData:Ljava/lang/String;

    .line 73
    iget-object v0, v4, Lcom/android/providers/contacts/t9/p;->mData:Ljava/lang/String;

    iput-object v0, v4, Lcom/android/providers/contacts/t9/p;->hu:Ljava/lang/String;

    .line 74
    iput-object p3, v4, Lcom/android/providers/contacts/t9/p;->hv:Ljava/lang/String;

    .line 75
    iput-object p4, v4, Lcom/android/providers/contacts/t9/p;->hz:Ljava/lang/String;

    .line 76
    iget-object v0, v4, Lcom/android/providers/contacts/t9/p;->hv:Ljava/lang/String;

    invoke-static {v0, p5}, Lcom/android/providers/contacts/t9/r;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/providers/contacts/t9/r;->a(Lcom/android/providers/contacts/t9/p;Ljava/util/ArrayList;)Lcom/android/providers/contacts/t9/p;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-static {}, Lcom/android/providers/contacts/al;->bL()Lcom/android/providers/contacts/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/al;->bN()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 366
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 364
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dC()Ljava/util/ArrayList;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 37
    invoke-static {}, Lcom/android/providers/contacts/t9/f;->ae()Ljava/util/ArrayList;

    move-result-object v7

    .line 39
    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/t9/f;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/yellowpage/YellowPageContract$T9Lookup;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/contacts/aZ;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 41
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 43
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 44
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 45
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 46
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 47
    invoke-static/range {v0 .. v5}, Lcom/android/providers/contacts/t9/r;->c(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/t9/p;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 53
    :goto_1
    :try_start_2
    const-string v2, "failed to query SP database"

    invoke-static {v2, v0}, Lcom/android/providers/contacts/t9/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 59
    :cond_1
    :goto_2
    return-object v7

    .line 55
    :cond_2
    if-eqz v6, :cond_1

    .line 56
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 55
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_3

    .line 56
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 55
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_3

    .line 52
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method private static j(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 149
    :goto_0
    return-object v0

    .line 135
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 137
    const/4 v0, 0x0

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 138
    aget-object v4, v3, v0

    invoke-static {v4}, Lcom/android/providers/contacts/t9/r;->as(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 140
    new-instance v5, Lmiui/util/HanziToPinyin$Token;

    invoke-direct {v5}, Lmiui/util/HanziToPinyin$Token;-><init>()V

    .line 141
    iput-object v1, v5, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    .line 142
    iput-object v1, v5, Lmiui/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 143
    iput-object v4, v5, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 144
    const/4 v4, 0x2

    iput v4, v5, Lmiui/util/HanziToPinyin$Token;->type:I

    .line 145
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 149
    goto :goto_0
.end method

.method private static l([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 336
    invoke-static {}, Lcom/android/providers/contacts/t9/f;->ad()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 337
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 338
    invoke-static {v3}, Lcom/android/providers/contacts/t9/r;->ar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-static {v1}, Lcom/android/providers/contacts/t9/f;->a(Ljava/lang/StringBuilder;)V

    .line 342
    return-object v0
.end method

.method private static m([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 346
    invoke-static {}, Lcom/android/providers/contacts/t9/f;->ad()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 347
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 348
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {v1}, Lcom/android/providers/contacts/t9/f;->a(Ljava/lang/StringBuilder;)V

    .line 352
    return-object v0
.end method
