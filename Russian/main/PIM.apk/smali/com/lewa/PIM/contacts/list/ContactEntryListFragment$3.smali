.class Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;
.super Ljava/lang/Object;
.source "ContactEntryListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;


# direct methods
.method constructor <init>(Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 438
    .local p0, this:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;,"Lcom/lewa/PIM/contacts/list/ContactEntryListFragment.3;"
    iput-object p1, p0, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .local p0, this:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;,"Lcom/lewa/PIM/contacts/list/ContactEntryListFragment.3;"
    const/16 v12, 0x80

    const/16 v11, 0x42f

    const/16 v10, 0x410

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 442
    iget-object v6, p0, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;

    #getter for: Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->marrFirstCharacters:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->access$000(Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 443
    iget-object v6, p0, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;

    #getter for: Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->marrFirstLetters:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->access$100(Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 444
    iget-object v6, p0, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;

    #getter for: Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/lewa/PIM/contacts/list/ContactEntryListAdapter;
    invoke-static {v6}, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->access$200(Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;)Lcom/lewa/PIM/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/lewa/PIM/contacts/list/ContactEntryListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v1

    .line 445
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 446
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 449
    const/4 v5, 0x0

    .line 450
    .local v5, starredCnt:I
    const/4 v0, 0x0

    .line 451
    .local v0, count:I
    iget-object v6, p0, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;

    #getter for: Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/lewa/PIM/contacts/list/ContactEntryListAdapter;
    invoke-static {v6}, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->access$200(Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;)Lcom/lewa/PIM/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    instance-of v6, v6, Lcom/lewa/PIM/contacts/list/ContactEntryListAdapter;

    if-eqz v6, :cond_0

    .line 452
    iget-object v6, p0, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;

    #getter for: Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/lewa/PIM/contacts/list/ContactEntryListAdapter;
    invoke-static {v6}, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->access$200(Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;)Lcom/lewa/PIM/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lewa/PIM/contacts/list/ContactEntryListAdapter;->getStarredCount()I

    move-result v5

    .line 456
    :cond_0
    new-instance v3, Landroid/database/CharArrayBuffer;

    invoke-direct {v3, v12}, Landroid/database/CharArrayBuffer;-><init>(I)V

    .line 457
    .local v3, nameBuffer:Landroid/database/CharArrayBuffer;
    new-instance v4, Landroid/database/CharArrayBuffer;

    invoke-direct {v4, v12}, Landroid/database/CharArrayBuffer;-><init>(I)V

    .line 459
    .local v4, sortKeyBuffer:Landroid/database/CharArrayBuffer;
    if-ge v0, v5, :cond_3

    const/16 v6, 0xc

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v9, :cond_3

    .line 460
    iget-object v6, v3, Landroid/database/CharArrayBuffer;->data:[C

    const/16 v7, 0x2605

    aput-char v7, v6, v8

    .line 461
    const/16 v2, 0x2605

    .line 462
    .local v2, letter:C
    add-int/lit8 v0, v0, 0x1

    .line 488
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;

    #getter for: Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->marrFirstLetters:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->access$100(Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v6, p0, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;

    #getter for: Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->marrFirstCharacters:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->access$000(Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, v3, Landroid/database/CharArrayBuffer;->data:[C

    invoke-static {v7, v8, v9}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 491
    const/4 v1, 0x0

    .line 492
    iget-object v6, p0, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;

    #getter for: Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/lewa/PIM/contacts/list/ContactEntryListAdapter;
    invoke-static {v6}, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->access$200(Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;)Lcom/lewa/PIM/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 493
    iget-object v6, p0, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;

    #getter for: Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/lewa/PIM/contacts/list/ContactEntryListAdapter;
    invoke-static {v6}, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->access$200(Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;)Lcom/lewa/PIM/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lewa/PIM/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 496
    .end local v0           #count:I
    .end local v2           #letter:C
    .end local v3           #nameBuffer:Landroid/database/CharArrayBuffer;
    .end local v4           #sortKeyBuffer:Landroid/database/CharArrayBuffer;
    .end local v5           #starredCnt:I
    :cond_2
    iget-object v6, p0, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;

    #setter for: Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->misFirstCharactersChanged:Z
    invoke-static {v6, v9}, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->access$302(Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;Z)Z

    .line 497
    return-void

    .line 465
    .restart local v0       #count:I
    .restart local v3       #nameBuffer:Landroid/database/CharArrayBuffer;
    .restart local v4       #sortKeyBuffer:Landroid/database/CharArrayBuffer;
    .restart local v5       #starredCnt:I
    :cond_3
    invoke-interface {v1, v9, v3}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 466
    iget-object v6, v3, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v6, v6, v8

    const/16 v7, 0x430

    if-lt v6, v7, :cond_6

    iget-object v6, v3, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v6, v6, v8

    const/16 v7, 0x44f

    if-gt v6, v7, :cond_6

    .line 467
    iget-object v6, v3, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v7, v6, v8

    add-int/lit8 v7, v7, -0x20

    int-to-char v7, v7

    aput-char v7, v6, v8

    .line 482
    :cond_4
    :goto_1
    const/16 v6, 0xa

    invoke-interface {v1, v6, v4}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 483
    iget-object v6, v4, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v6, v6, v8

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 484
    .restart local v2       #letter:C
    if-lt v2, v10, :cond_5

    if-le v2, v11, :cond_1

    .line 485
    :cond_5
    const/16 v2, 0x23

    goto :goto_0

    .line 468
    .end local v2           #letter:C
    :cond_6
    iget-object v6, v3, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v6, v6, v8

    if-lt v6, v10, :cond_7

    iget-object v6, v3, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v6, v6, v8

    if-le v6, v11, :cond_4

    :cond_7
    const-string v6, "[\u4e00-\u9fa5]"

    iget-object v7, v3, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v7, v7, v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 470
    iget-object v6, v3, Landroid/database/CharArrayBuffer;->data:[C

    const/16 v7, 0x23

    aput-char v7, v6, v8

    goto :goto_1
.end method
