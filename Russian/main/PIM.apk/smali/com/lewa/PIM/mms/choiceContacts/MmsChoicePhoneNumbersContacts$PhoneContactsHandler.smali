.class Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$PhoneContactsHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MmsChoicePhoneNumbersContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneContactsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;


# direct methods
.method public constructor <init>(Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "resolver"

    .prologue
    .line 340
    iput-object p1, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;

    .line 341
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 343
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/16 v9, 0x80

    const/16 v8, 0x42f

    const/16 v7, 0x410

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 347
    packed-switch p1, :pswitch_data_0

    .line 406
    :goto_0
    return-void

    .line 349
    :pswitch_0
    iget-object v3, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;

    #getter for: Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->mAdapter:Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$ChoicePhoneNumbersContactsAdapter;
    invoke-static {v3}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->access$300(Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;)Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$ChoicePhoneNumbersContactsAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$ChoicePhoneNumbersContactsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 350
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_6

    .line 351
    iget-object v3, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;

    #getter for: Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->marrFirstCharacters:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->access$400(Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 352
    iget-object v3, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;

    #getter for: Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->marrFirstLetters:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->access$500(Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 353
    const/4 v3, -0x1

    invoke-interface {p3, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 355
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 357
    new-instance v1, Landroid/database/CharArrayBuffer;

    invoke-direct {v1, v9}, Landroid/database/CharArrayBuffer;-><init>(I)V

    .line 358
    .local v1, nameBuffer:Landroid/database/CharArrayBuffer;
    const/4 v3, 0x4

    invoke-interface {p3, v3, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 359
    iget-object v3, v1, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v3, v3, v5

    const/16 v4, 0x430

    if-lt v3, v4, :cond_3

    iget-object v3, v1, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v3, v3, v5

    const/16 v4, 0x44f

    if-gt v3, v4, :cond_3

    .line 360
    iget-object v3, v1, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v4, v3, v5

    add-int/lit8 v4, v4, -0x20

    int-to-char v4, v4

    aput-char v4, v3, v5

    .line 375
    :cond_0
    :goto_2
    new-instance v2, Landroid/database/CharArrayBuffer;

    invoke-direct {v2, v9}, Landroid/database/CharArrayBuffer;-><init>(I)V

    .line 376
    .local v2, sortKeyBuffer:Landroid/database/CharArrayBuffer;
    const/16 v3, 0xb

    invoke-interface {p3, v3, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 377
    iget-object v3, v2, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v3, v3, v5

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 378
    .local v0, letter:C
    if-lt v0, v7, :cond_1

    if-le v0, v8, :cond_2

    .line 379
    :cond_1
    const/16 v0, 0x23

    .line 381
    :cond_2
    iget-object v3, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;

    #getter for: Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->marrFirstLetters:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->access$500(Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v3, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;

    #getter for: Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->marrFirstCharacters:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->access$400(Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v1, Landroid/database/CharArrayBuffer;->data:[C

    invoke-static {v4, v5, v6}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 361
    .end local v0           #letter:C
    .end local v2           #sortKeyBuffer:Landroid/database/CharArrayBuffer;
    :cond_3
    iget-object v3, v1, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v3, v3, v5

    if-lt v3, v7, :cond_4

    iget-object v3, v1, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v3, v3, v5

    if-le v3, v8, :cond_0

    :cond_4
    const-string v3, "[\u4e00-\u9fa5]"

    iget-object v4, v1, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 363
    iget-object v3, v1, Landroid/database/CharArrayBuffer;->data:[C

    const/16 v4, 0x23

    aput-char v4, v3, v5

    goto :goto_2

    .line 384
    .end local v1           #nameBuffer:Landroid/database/CharArrayBuffer;
    :cond_5
    iget-object v3, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;

    #setter for: Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->misFirstCharactersChanged:Z
    invoke-static {v3, v6}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->access$602(Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;Z)Z

    .line 385
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 387
    iget-object v3, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;

    #getter for: Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->mEmptyTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->access$700(Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 399
    :cond_6
    iget-object v3, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;

    #getter for: Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->mEmptyTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->access$700(Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
