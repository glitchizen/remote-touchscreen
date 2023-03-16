.class public final enum Lorg/nanohttpd/protocols/http/response/Status;
.super Ljava/lang/Enum;
.source "Status.java"

# interfaces
.implements Lorg/nanohttpd/protocols/http/response/IStatus;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/nanohttpd/protocols/http/response/Status;",
        ">;",
        "Lorg/nanohttpd/protocols/http/response/IStatus;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum ACCEPTED:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum BAD_REQUEST:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum CONFLICT:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum CREATED:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum EXPECTATION_FAILED:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum FORBIDDEN:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum FOUND:Lorg/nanohttpd/protocols/http/response/Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum GONE:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum INTERNAL_ERROR:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum LENGTH_REQUIRED:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum METHOD_NOT_ALLOWED:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum MULTI_STATUS:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum NOT_ACCEPTABLE:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum NOT_FOUND:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum NOT_IMPLEMENTED:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum NOT_MODIFIED:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum NO_CONTENT:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum OK:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum PARTIAL_CONTENT:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum PAYLOAD_TOO_LARGE:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum PRECONDITION_FAILED:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum RANGE_NOT_SATISFIABLE:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum REDIRECT:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum REDIRECT_SEE_OTHER:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum REQUEST_TIMEOUT:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum SERVICE_UNAVAILABLE:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum SWITCH_PROTOCOL:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum TEMPORARY_REDIRECT:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum TOO_MANY_REQUESTS:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum UNAUTHORIZED:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum UNSUPPORTED_HTTP_VERSION:Lorg/nanohttpd/protocols/http/response/Status;

.field public static final enum UNSUPPORTED_MEDIA_TYPE:Lorg/nanohttpd/protocols/http/response/Status;


# instance fields
.field public final description:Ljava/lang/String;

.field public final requestStatus:I


# direct methods
.method public static constructor <clinit>()V
    .registers 36

    .line 1
    new-instance v0, Lorg/nanohttpd/protocols/http/response/Status;

    .line 2
    .line 3
    const-string v1, "SWITCH_PROTOCOL"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x65

    .line 7
    .line 8
    const-string v4, "Switching Protocols"

    .line 9
    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lorg/nanohttpd/protocols/http/response/Status;->SWITCH_PROTOCOL:Lorg/nanohttpd/protocols/http/response/Status;

    .line 14
    .line 15
    new-instance v1, Lorg/nanohttpd/protocols/http/response/Status;

    .line 16
    .line 17
    const-string v3, "OK"

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    const/16 v5, 0xc8

    .line 21
    .line 22
    invoke-direct {v1, v3, v4, v5, v3}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lorg/nanohttpd/protocols/http/response/Status;->OK:Lorg/nanohttpd/protocols/http/response/Status;

    .line 26
    .line 27
    new-instance v3, Lorg/nanohttpd/protocols/http/response/Status;

    .line 28
    .line 29
    const-string v5, "CREATED"

    .line 30
    .line 31
    const/4 v6, 0x2

    .line 32
    const/16 v7, 0xc9

    .line 33
    .line 34
    const-string v8, "Created"

    .line 35
    .line 36
    invoke-direct {v3, v5, v6, v7, v8}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lorg/nanohttpd/protocols/http/response/Status;->CREATED:Lorg/nanohttpd/protocols/http/response/Status;

    .line 40
    .line 41
    new-instance v5, Lorg/nanohttpd/protocols/http/response/Status;

    .line 42
    .line 43
    const-string v7, "ACCEPTED"

    .line 44
    .line 45
    const/4 v8, 0x3

    .line 46
    const/16 v9, 0xca

    .line 47
    .line 48
    const-string v10, "Accepted"

    .line 49
    .line 50
    invoke-direct {v5, v7, v8, v9, v10}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sput-object v5, Lorg/nanohttpd/protocols/http/response/Status;->ACCEPTED:Lorg/nanohttpd/protocols/http/response/Status;

    .line 54
    .line 55
    new-instance v7, Lorg/nanohttpd/protocols/http/response/Status;

    .line 56
    .line 57
    const-string v9, "NO_CONTENT"

    .line 58
    .line 59
    const/4 v10, 0x4

    .line 60
    const/16 v11, 0xcc

    .line 61
    .line 62
    const-string v12, "No Content"

    .line 63
    .line 64
    invoke-direct {v7, v9, v10, v11, v12}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sput-object v7, Lorg/nanohttpd/protocols/http/response/Status;->NO_CONTENT:Lorg/nanohttpd/protocols/http/response/Status;

    .line 68
    .line 69
    new-instance v9, Lorg/nanohttpd/protocols/http/response/Status;

    .line 70
    .line 71
    const-string v11, "PARTIAL_CONTENT"

    .line 72
    .line 73
    const/4 v12, 0x5

    .line 74
    const/16 v13, 0xce

    .line 75
    .line 76
    const-string v14, "Partial Content"

    .line 77
    .line 78
    invoke-direct {v9, v11, v12, v13, v14}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sput-object v9, Lorg/nanohttpd/protocols/http/response/Status;->PARTIAL_CONTENT:Lorg/nanohttpd/protocols/http/response/Status;

    .line 82
    .line 83
    new-instance v11, Lorg/nanohttpd/protocols/http/response/Status;

    .line 84
    .line 85
    const-string v13, "MULTI_STATUS"

    .line 86
    .line 87
    const/4 v14, 0x6

    .line 88
    const/16 v15, 0xcf

    .line 89
    .line 90
    const-string v12, "Multi-Status"

    .line 91
    .line 92
    invoke-direct {v11, v13, v14, v15, v12}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v11, Lorg/nanohttpd/protocols/http/response/Status;->MULTI_STATUS:Lorg/nanohttpd/protocols/http/response/Status;

    .line 96
    .line 97
    new-instance v12, Lorg/nanohttpd/protocols/http/response/Status;

    .line 98
    .line 99
    const-string v13, "REDIRECT"

    .line 100
    .line 101
    const/4 v15, 0x7

    .line 102
    const/16 v14, 0x12d

    .line 103
    .line 104
    const-string v10, "Moved Permanently"

    .line 105
    .line 106
    invoke-direct {v12, v13, v15, v14, v10}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    sput-object v12, Lorg/nanohttpd/protocols/http/response/Status;->REDIRECT:Lorg/nanohttpd/protocols/http/response/Status;

    .line 110
    .line 111
    new-instance v10, Lorg/nanohttpd/protocols/http/response/Status;

    .line 112
    .line 113
    const-string v13, "FOUND"

    .line 114
    .line 115
    const/16 v14, 0x8

    .line 116
    .line 117
    const/16 v15, 0x12e

    .line 118
    .line 119
    const-string v8, "Found"

    .line 120
    .line 121
    invoke-direct {v10, v13, v14, v15, v8}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    sput-object v10, Lorg/nanohttpd/protocols/http/response/Status;->FOUND:Lorg/nanohttpd/protocols/http/response/Status;

    .line 125
    .line 126
    new-instance v8, Lorg/nanohttpd/protocols/http/response/Status;

    .line 127
    .line 128
    const-string v13, "REDIRECT_SEE_OTHER"

    .line 129
    .line 130
    const/16 v15, 0x9

    .line 131
    .line 132
    const/16 v14, 0x12f

    .line 133
    .line 134
    const-string v6, "See Other"

    .line 135
    .line 136
    invoke-direct {v8, v13, v15, v14, v6}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    sput-object v8, Lorg/nanohttpd/protocols/http/response/Status;->REDIRECT_SEE_OTHER:Lorg/nanohttpd/protocols/http/response/Status;

    .line 140
    .line 141
    new-instance v6, Lorg/nanohttpd/protocols/http/response/Status;

    .line 142
    .line 143
    const-string v13, "NOT_MODIFIED"

    .line 144
    .line 145
    const/16 v14, 0xa

    .line 146
    .line 147
    const/16 v15, 0x130

    .line 148
    .line 149
    const-string v4, "Not Modified"

    .line 150
    .line 151
    invoke-direct {v6, v13, v14, v15, v4}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    sput-object v6, Lorg/nanohttpd/protocols/http/response/Status;->NOT_MODIFIED:Lorg/nanohttpd/protocols/http/response/Status;

    .line 155
    .line 156
    new-instance v4, Lorg/nanohttpd/protocols/http/response/Status;

    .line 157
    .line 158
    const-string v13, "TEMPORARY_REDIRECT"

    .line 159
    .line 160
    const/16 v15, 0xb

    .line 161
    .line 162
    const/16 v14, 0x133

    .line 163
    .line 164
    const-string v2, "Temporary Redirect"

    .line 165
    .line 166
    invoke-direct {v4, v13, v15, v14, v2}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 167
    .line 168
    .line 169
    sput-object v4, Lorg/nanohttpd/protocols/http/response/Status;->TEMPORARY_REDIRECT:Lorg/nanohttpd/protocols/http/response/Status;

    .line 170
    .line 171
    new-instance v2, Lorg/nanohttpd/protocols/http/response/Status;

    .line 172
    .line 173
    const-string v13, "BAD_REQUEST"

    .line 174
    .line 175
    const/16 v14, 0xc

    .line 176
    .line 177
    const/16 v15, 0x190

    .line 178
    .line 179
    move-object/from16 v16, v4

    .line 180
    .line 181
    const-string v4, "Bad Request"

    .line 182
    .line 183
    invoke-direct {v2, v13, v14, v15, v4}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    sput-object v2, Lorg/nanohttpd/protocols/http/response/Status;->BAD_REQUEST:Lorg/nanohttpd/protocols/http/response/Status;

    .line 187
    .line 188
    new-instance v4, Lorg/nanohttpd/protocols/http/response/Status;

    .line 189
    .line 190
    const-string v13, "UNAUTHORIZED"

    .line 191
    .line 192
    const/16 v15, 0xd

    .line 193
    .line 194
    const/16 v14, 0x191

    .line 195
    .line 196
    move-object/from16 v17, v2

    .line 197
    .line 198
    const-string v2, "Unauthorized"

    .line 199
    .line 200
    invoke-direct {v4, v13, v15, v14, v2}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 201
    .line 202
    .line 203
    sput-object v4, Lorg/nanohttpd/protocols/http/response/Status;->UNAUTHORIZED:Lorg/nanohttpd/protocols/http/response/Status;

    .line 204
    .line 205
    new-instance v2, Lorg/nanohttpd/protocols/http/response/Status;

    .line 206
    .line 207
    const-string v13, "FORBIDDEN"

    .line 208
    .line 209
    const/16 v14, 0xe

    .line 210
    .line 211
    const/16 v15, 0x193

    .line 212
    .line 213
    move-object/from16 v18, v4

    .line 214
    .line 215
    const-string v4, "Forbidden"

    .line 216
    .line 217
    invoke-direct {v2, v13, v14, v15, v4}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    sput-object v2, Lorg/nanohttpd/protocols/http/response/Status;->FORBIDDEN:Lorg/nanohttpd/protocols/http/response/Status;

    .line 221
    .line 222
    new-instance v4, Lorg/nanohttpd/protocols/http/response/Status;

    .line 223
    .line 224
    const-string v13, "NOT_FOUND"

    .line 225
    .line 226
    const/16 v15, 0xf

    .line 227
    .line 228
    const/16 v14, 0x194

    .line 229
    .line 230
    move-object/from16 v19, v2

    .line 231
    .line 232
    const-string v2, "Not Found"

    .line 233
    .line 234
    invoke-direct {v4, v13, v15, v14, v2}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 235
    .line 236
    .line 237
    sput-object v4, Lorg/nanohttpd/protocols/http/response/Status;->NOT_FOUND:Lorg/nanohttpd/protocols/http/response/Status;

    .line 238
    .line 239
    new-instance v2, Lorg/nanohttpd/protocols/http/response/Status;

    .line 240
    .line 241
    const-string v13, "METHOD_NOT_ALLOWED"

    .line 242
    .line 243
    const/16 v14, 0x10

    .line 244
    .line 245
    const/16 v15, 0x195

    .line 246
    .line 247
    move-object/from16 v20, v4

    .line 248
    .line 249
    const-string v4, "Method Not Allowed"

    .line 250
    .line 251
    invoke-direct {v2, v13, v14, v15, v4}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 252
    .line 253
    .line 254
    sput-object v2, Lorg/nanohttpd/protocols/http/response/Status;->METHOD_NOT_ALLOWED:Lorg/nanohttpd/protocols/http/response/Status;

    .line 255
    .line 256
    new-instance v4, Lorg/nanohttpd/protocols/http/response/Status;

    .line 257
    .line 258
    const-string v13, "NOT_ACCEPTABLE"

    .line 259
    .line 260
    const/16 v15, 0x11

    .line 261
    .line 262
    const/16 v14, 0x196

    .line 263
    .line 264
    move-object/from16 v21, v2

    .line 265
    .line 266
    const-string v2, "Not Acceptable"

    .line 267
    .line 268
    invoke-direct {v4, v13, v15, v14, v2}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 269
    .line 270
    .line 271
    sput-object v4, Lorg/nanohttpd/protocols/http/response/Status;->NOT_ACCEPTABLE:Lorg/nanohttpd/protocols/http/response/Status;

    .line 272
    .line 273
    new-instance v2, Lorg/nanohttpd/protocols/http/response/Status;

    .line 274
    .line 275
    const-string v13, "REQUEST_TIMEOUT"

    .line 276
    .line 277
    const/16 v14, 0x12

    .line 278
    .line 279
    const/16 v15, 0x198

    .line 280
    .line 281
    move-object/from16 v22, v4

    .line 282
    .line 283
    const-string v4, "Request Timeout"

    .line 284
    .line 285
    invoke-direct {v2, v13, v14, v15, v4}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 286
    .line 287
    .line 288
    sput-object v2, Lorg/nanohttpd/protocols/http/response/Status;->REQUEST_TIMEOUT:Lorg/nanohttpd/protocols/http/response/Status;

    .line 289
    .line 290
    new-instance v4, Lorg/nanohttpd/protocols/http/response/Status;

    .line 291
    .line 292
    const-string v13, "CONFLICT"

    .line 293
    .line 294
    const/16 v15, 0x13

    .line 295
    .line 296
    const/16 v14, 0x199

    .line 297
    .line 298
    move-object/from16 v23, v2

    .line 299
    .line 300
    const-string v2, "Conflict"

    .line 301
    .line 302
    invoke-direct {v4, v13, v15, v14, v2}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 303
    .line 304
    .line 305
    sput-object v4, Lorg/nanohttpd/protocols/http/response/Status;->CONFLICT:Lorg/nanohttpd/protocols/http/response/Status;

    .line 306
    .line 307
    new-instance v2, Lorg/nanohttpd/protocols/http/response/Status;

    .line 308
    .line 309
    const-string v13, "GONE"

    .line 310
    .line 311
    const/16 v14, 0x14

    .line 312
    .line 313
    const/16 v15, 0x19a

    .line 314
    .line 315
    move-object/from16 v24, v4

    .line 316
    .line 317
    const-string v4, "Gone"

    .line 318
    .line 319
    invoke-direct {v2, v13, v14, v15, v4}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 320
    .line 321
    .line 322
    sput-object v2, Lorg/nanohttpd/protocols/http/response/Status;->GONE:Lorg/nanohttpd/protocols/http/response/Status;

    .line 323
    .line 324
    new-instance v4, Lorg/nanohttpd/protocols/http/response/Status;

    .line 325
    .line 326
    const-string v13, "LENGTH_REQUIRED"

    .line 327
    .line 328
    const/16 v15, 0x15

    .line 329
    .line 330
    const/16 v14, 0x19b

    .line 331
    .line 332
    move-object/from16 v25, v2

    .line 333
    .line 334
    const-string v2, "Length Required"

    .line 335
    .line 336
    invoke-direct {v4, v13, v15, v14, v2}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 337
    .line 338
    .line 339
    sput-object v4, Lorg/nanohttpd/protocols/http/response/Status;->LENGTH_REQUIRED:Lorg/nanohttpd/protocols/http/response/Status;

    .line 340
    .line 341
    new-instance v2, Lorg/nanohttpd/protocols/http/response/Status;

    .line 342
    .line 343
    const-string v13, "PRECONDITION_FAILED"

    .line 344
    .line 345
    const/16 v14, 0x16

    .line 346
    .line 347
    const/16 v15, 0x19c

    .line 348
    .line 349
    move-object/from16 v26, v4

    .line 350
    .line 351
    const-string v4, "Precondition Failed"

    .line 352
    .line 353
    invoke-direct {v2, v13, v14, v15, v4}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 354
    .line 355
    .line 356
    sput-object v2, Lorg/nanohttpd/protocols/http/response/Status;->PRECONDITION_FAILED:Lorg/nanohttpd/protocols/http/response/Status;

    .line 357
    .line 358
    new-instance v4, Lorg/nanohttpd/protocols/http/response/Status;

    .line 359
    .line 360
    const-string v13, "PAYLOAD_TOO_LARGE"

    .line 361
    .line 362
    const/16 v14, 0x17

    .line 363
    .line 364
    const/16 v15, 0x19d

    .line 365
    .line 366
    move-object/from16 v27, v2

    .line 367
    .line 368
    const-string v2, "Payload Too Large"

    .line 369
    .line 370
    invoke-direct {v4, v13, v14, v15, v2}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 371
    .line 372
    .line 373
    sput-object v4, Lorg/nanohttpd/protocols/http/response/Status;->PAYLOAD_TOO_LARGE:Lorg/nanohttpd/protocols/http/response/Status;

    .line 374
    .line 375
    new-instance v2, Lorg/nanohttpd/protocols/http/response/Status;

    .line 376
    .line 377
    const-string v13, "UNSUPPORTED_MEDIA_TYPE"

    .line 378
    .line 379
    const/16 v14, 0x18

    .line 380
    .line 381
    const/16 v15, 0x19f

    .line 382
    .line 383
    move-object/from16 v28, v4

    .line 384
    .line 385
    const-string v4, "Unsupported Media Type"

    .line 386
    .line 387
    invoke-direct {v2, v13, v14, v15, v4}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 388
    .line 389
    .line 390
    sput-object v2, Lorg/nanohttpd/protocols/http/response/Status;->UNSUPPORTED_MEDIA_TYPE:Lorg/nanohttpd/protocols/http/response/Status;

    .line 391
    .line 392
    new-instance v4, Lorg/nanohttpd/protocols/http/response/Status;

    .line 393
    .line 394
    const-string v13, "RANGE_NOT_SATISFIABLE"

    .line 395
    .line 396
    const/16 v14, 0x19

    .line 397
    .line 398
    const/16 v15, 0x1a0

    .line 399
    .line 400
    move-object/from16 v29, v2

    .line 401
    .line 402
    const-string v2, "Requested Range Not Satisfiable"

    .line 403
    .line 404
    invoke-direct {v4, v13, v14, v15, v2}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 405
    .line 406
    .line 407
    sput-object v4, Lorg/nanohttpd/protocols/http/response/Status;->RANGE_NOT_SATISFIABLE:Lorg/nanohttpd/protocols/http/response/Status;

    .line 408
    .line 409
    new-instance v2, Lorg/nanohttpd/protocols/http/response/Status;

    .line 410
    .line 411
    const-string v13, "EXPECTATION_FAILED"

    .line 412
    .line 413
    const/16 v14, 0x1a

    .line 414
    .line 415
    const/16 v15, 0x1a1

    .line 416
    .line 417
    move-object/from16 v30, v4

    .line 418
    .line 419
    const-string v4, "Expectation Failed"

    .line 420
    .line 421
    invoke-direct {v2, v13, v14, v15, v4}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 422
    .line 423
    .line 424
    sput-object v2, Lorg/nanohttpd/protocols/http/response/Status;->EXPECTATION_FAILED:Lorg/nanohttpd/protocols/http/response/Status;

    .line 425
    .line 426
    new-instance v4, Lorg/nanohttpd/protocols/http/response/Status;

    .line 427
    .line 428
    const-string v13, "TOO_MANY_REQUESTS"

    .line 429
    .line 430
    const/16 v14, 0x1b

    .line 431
    .line 432
    const/16 v15, 0x1ad

    .line 433
    .line 434
    move-object/from16 v31, v2

    .line 435
    .line 436
    const-string v2, "Too Many Requests"

    .line 437
    .line 438
    invoke-direct {v4, v13, v14, v15, v2}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 439
    .line 440
    .line 441
    sput-object v4, Lorg/nanohttpd/protocols/http/response/Status;->TOO_MANY_REQUESTS:Lorg/nanohttpd/protocols/http/response/Status;

    .line 442
    .line 443
    new-instance v2, Lorg/nanohttpd/protocols/http/response/Status;

    .line 444
    .line 445
    const-string v13, "INTERNAL_ERROR"

    .line 446
    .line 447
    const/16 v14, 0x1c

    .line 448
    .line 449
    const/16 v15, 0x1f4

    .line 450
    .line 451
    move-object/from16 v32, v4

    .line 452
    .line 453
    const-string v4, "Internal Server Error"

    .line 454
    .line 455
    invoke-direct {v2, v13, v14, v15, v4}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 456
    .line 457
    .line 458
    sput-object v2, Lorg/nanohttpd/protocols/http/response/Status;->INTERNAL_ERROR:Lorg/nanohttpd/protocols/http/response/Status;

    .line 459
    .line 460
    new-instance v4, Lorg/nanohttpd/protocols/http/response/Status;

    .line 461
    .line 462
    const-string v13, "NOT_IMPLEMENTED"

    .line 463
    .line 464
    const/16 v14, 0x1d

    .line 465
    .line 466
    const/16 v15, 0x1f5

    .line 467
    .line 468
    move-object/from16 v33, v2

    .line 469
    .line 470
    const-string v2, "Not Implemented"

    .line 471
    .line 472
    invoke-direct {v4, v13, v14, v15, v2}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 473
    .line 474
    .line 475
    sput-object v4, Lorg/nanohttpd/protocols/http/response/Status;->NOT_IMPLEMENTED:Lorg/nanohttpd/protocols/http/response/Status;

    .line 476
    .line 477
    new-instance v2, Lorg/nanohttpd/protocols/http/response/Status;

    .line 478
    .line 479
    const-string v13, "SERVICE_UNAVAILABLE"

    .line 480
    .line 481
    const/16 v14, 0x1e

    .line 482
    .line 483
    const/16 v15, 0x1f7

    .line 484
    .line 485
    move-object/from16 v34, v4

    .line 486
    .line 487
    const-string v4, "Service Unavailable"

    .line 488
    .line 489
    invoke-direct {v2, v13, v14, v15, v4}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 490
    .line 491
    .line 492
    sput-object v2, Lorg/nanohttpd/protocols/http/response/Status;->SERVICE_UNAVAILABLE:Lorg/nanohttpd/protocols/http/response/Status;

    .line 493
    .line 494
    new-instance v4, Lorg/nanohttpd/protocols/http/response/Status;

    .line 495
    .line 496
    const-string v13, "UNSUPPORTED_HTTP_VERSION"

    .line 497
    .line 498
    const/16 v14, 0x1f

    .line 499
    .line 500
    const/16 v15, 0x1f9

    .line 501
    .line 502
    move-object/from16 v35, v2

    .line 503
    .line 504
    const-string v2, "HTTP Version Not Supported"

    .line 505
    .line 506
    invoke-direct {v4, v13, v14, v15, v2}, Lorg/nanohttpd/protocols/http/response/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 507
    .line 508
    .line 509
    sput-object v4, Lorg/nanohttpd/protocols/http/response/Status;->UNSUPPORTED_HTTP_VERSION:Lorg/nanohttpd/protocols/http/response/Status;

    .line 510
    .line 511
    const/16 v2, 0x20

    .line 512
    .line 513
    new-array v2, v2, [Lorg/nanohttpd/protocols/http/response/Status;

    .line 514
    .line 515
    const/4 v13, 0x0

    .line 516
    aput-object v0, v2, v13

    .line 517
    .line 518
    const/4 v0, 0x1

    .line 519
    aput-object v1, v2, v0

    .line 520
    .line 521
    const/4 v0, 0x2

    .line 522
    aput-object v3, v2, v0

    .line 523
    .line 524
    const/4 v0, 0x3

    .line 525
    aput-object v5, v2, v0

    .line 526
    .line 527
    const/4 v0, 0x4

    .line 528
    aput-object v7, v2, v0

    .line 529
    .line 530
    const/4 v0, 0x5

    .line 531
    aput-object v9, v2, v0

    .line 532
    .line 533
    const/4 v0, 0x6

    .line 534
    aput-object v11, v2, v0

    .line 535
    .line 536
    const/4 v0, 0x7

    .line 537
    aput-object v12, v2, v0

    .line 538
    .line 539
    const/16 v0, 0x8

    .line 540
    .line 541
    aput-object v10, v2, v0

    .line 542
    .line 543
    const/16 v0, 0x9

    .line 544
    .line 545
    aput-object v8, v2, v0

    .line 546
    .line 547
    const/16 v0, 0xa

    .line 548
    .line 549
    aput-object v6, v2, v0

    .line 550
    .line 551
    const/16 v0, 0xb

    .line 552
    .line 553
    aput-object v16, v2, v0

    .line 554
    .line 555
    const/16 v0, 0xc

    .line 556
    .line 557
    aput-object v17, v2, v0

    .line 558
    .line 559
    const/16 v0, 0xd

    .line 560
    .line 561
    aput-object v18, v2, v0

    .line 562
    .line 563
    const/16 v0, 0xe

    .line 564
    .line 565
    aput-object v19, v2, v0

    .line 566
    .line 567
    const/16 v0, 0xf

    .line 568
    .line 569
    aput-object v20, v2, v0

    .line 570
    .line 571
    const/16 v0, 0x10

    .line 572
    .line 573
    aput-object v21, v2, v0

    .line 574
    .line 575
    const/16 v0, 0x11

    .line 576
    .line 577
    aput-object v22, v2, v0

    .line 578
    .line 579
    const/16 v0, 0x12

    .line 580
    .line 581
    aput-object v23, v2, v0

    .line 582
    .line 583
    const/16 v0, 0x13

    .line 584
    .line 585
    aput-object v24, v2, v0

    .line 586
    .line 587
    const/16 v0, 0x14

    .line 588
    .line 589
    aput-object v25, v2, v0

    .line 590
    .line 591
    const/16 v0, 0x15

    .line 592
    .line 593
    aput-object v26, v2, v0

    .line 594
    .line 595
    const/16 v0, 0x16

    .line 596
    .line 597
    aput-object v27, v2, v0

    .line 598
    .line 599
    const/16 v0, 0x17

    .line 600
    .line 601
    aput-object v28, v2, v0

    .line 602
    .line 603
    const/16 v0, 0x18

    .line 604
    .line 605
    aput-object v29, v2, v0

    .line 606
    .line 607
    const/16 v0, 0x19

    .line 608
    .line 609
    aput-object v30, v2, v0

    .line 610
    .line 611
    const/16 v0, 0x1a

    .line 612
    .line 613
    aput-object v31, v2, v0

    .line 614
    .line 615
    const/16 v0, 0x1b

    .line 616
    .line 617
    aput-object v32, v2, v0

    .line 618
    .line 619
    const/16 v0, 0x1c

    .line 620
    .line 621
    aput-object v33, v2, v0

    .line 622
    .line 623
    const/16 v0, 0x1d

    .line 624
    .line 625
    aput-object v34, v2, v0

    .line 626
    .line 627
    const/16 v0, 0x1e

    .line 628
    .line 629
    aput-object v35, v2, v0

    .line 630
    .line 631
    const/16 v0, 0x1f

    .line 632
    .line 633
    aput-object v4, v2, v0

    .line 634
    .line 635
    sput-object v2, Lorg/nanohttpd/protocols/http/response/Status;->$VALUES:[Lorg/nanohttpd/protocols/http/response/Status;

    .line 636
    .line 637
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lorg/nanohttpd/protocols/http/response/Status;->requestStatus:I

    .line 5
    .line 6
    iput-object p4, p0, Lorg/nanohttpd/protocols/http/response/Status;->description:Ljava/lang/String;

    .line 7
    .line 8
    return-void
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
.end method

.method public static lookup(I)Lorg/nanohttpd/protocols/http/response/Status;
    .registers 6

    .line 1
    invoke-static {}, Lorg/nanohttpd/protocols/http/response/Status;->values()[Lorg/nanohttpd/protocols/http/response/Status;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_6
    if-ge v2, v1, :cond_12

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    iget v4, v3, Lorg/nanohttpd/protocols/http/response/Status;->requestStatus:I

    .line 12
    .line 13
    if-ne v4, p0, :cond_f

    .line 14
    .line 15
    return-object v3

    .line 16
    :cond_f
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_6

    .line 19
    :cond_12
    const/4 p0, 0x0

    .line 20
    return-object p0
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/nanohttpd/protocols/http/response/Status;
    .registers 2

    .line 1
    const-class v0, Lorg/nanohttpd/protocols/http/response/Status;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/nanohttpd/protocols/http/response/Status;

    .line 8
    .line 9
    return-object p0
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
.end method

.method public static values()[Lorg/nanohttpd/protocols/http/response/Status;
    .registers 1

    .line 1
    sget-object v0, Lorg/nanohttpd/protocols/http/response/Status;->$VALUES:[Lorg/nanohttpd/protocols/http/response/Status;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/nanohttpd/protocols/http/response/Status;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/nanohttpd/protocols/http/response/Status;

    .line 8
    .line 9
    return-object v0
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lorg/nanohttpd/protocols/http/response/Status;->requestStatus:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lorg/nanohttpd/protocols/http/response/Status;->description:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
.end method

.method public getRequestStatus()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/nanohttpd/protocols/http/response/Status;->requestStatus:I

    .line 2
    .line 3
    return v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
.end method
