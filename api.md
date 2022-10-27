# **哔哩哔哩相关接口**
## **获取哔哩哔哩音频** 

说明：调用此接口可以根据 bv 号获取到哔哩哔哩视频的音频数据，并保存至路径对应位置

**接口地址：** <font style="background: #f8f8f8; color: #e96900;">/bili/audio</font>

**调用方式：** GET

**必选参数：** <font style="background: #f8f8f8; color: #e96900;">bv</font>

**成功返回：** 音频数据流

**失败返回：**
```
{
    code: number(0)
    message: string
    error: Error
}
```

<br>

## **获取哔哩哔哩音频信息** 
说明：根据哔哩哔哩 bv 号获取音频信息，格式类似本地音频信息格式

**接口地址：** <font style="background: #f8f8f8; color: #e96900;">/bili/info</font>

**调用方式：** GET

**必选参数：** <font style="background: #f8f8f8; color: #e96900;">bv</font>

**成功返回：**
```
{
    code: number(1)
    data: {
        bvid: number
        cid: number
        cover: string
        duration: number
        album: string
        singers: [
            {
                id: number
                name: string
            }
        ]
        title: string
        src: string
    }
}
```
**失败返回：**
```
{
    code: number(0)
    message: string
    error: Error
}
```

<br>
<br>


# **音乐相关接口**
## **获取本地音频** 
说明：根据本地数据库的 id 获取音频

**接口地址：** <font style="background: #f8f8f8; color: #e96900;">/music/:id</font>

**调用方式：** GET

**必选参数：** <font style="background: #f8f8f8; color: #e96900;">id</font>

**成功返回：** 音频数据流

**失败返回：**
```
{
    code: number(0)
    message: string
    error: Error
}
```

<br>


## **获取本地音频信息**

说明：根据本地数据库的 id 获取音频相关信息

**接口地址：** <font style="background: #f8f8f8; color: #e96900;">/music/info</font>

**调用方式：** GET

**必选参数：** <font style="background: #f8f8f8; color: #e96900;">id</font>

**成功返回：**
```
{
    code: number(1)
    data: {
        music_id: number
        music_name: string
        music_url: string
        music_cover: string
        album: string
        duration: number
        singers: [
            {
                singer_id: number
                singer_name: string
            }
        ]
    }
}
```
**失败返回：**
```
{
    code: number(0)
    message: string
    error?: Error
}
```

<br>

## **搜索本地数据库**
说明：根据关键字搜索本地数据库

**接口地址：** <font style="background: #f8f8f8; color: #e96900;">/music/search/local</font>

**调用方式：** GET

**必选参数：** <font style="background: #f8f8f8; color: #e96900;">kw</font>

**可选参数：** 

<font style="background: #f8f8f8; color: #e96900;">type</font>：搜索类型，默认 1，歌曲搜索

<font style="background: #f8f8f8; color: #e96900;">limit</font>：页数，默认1

<font style="background: #f8f8f8; color: #e96900;">offset</font>：一页的数据量，默认10

**成功返回：**
```
{
    code: number(1)
    data: [
        {
            music_id: number
            music_name: string
            music_url: string
            music_cover: string
            album: string
            duration: number
            singers: [
                {
                    singer_id: number
                    singer_name: string
                }
            ]
        }
    ]
}
```

**失败返回：**
```
{
    code: number(0)
    message: string
    error?: Error
}
```

<br>

## **搜索网易云音乐**
说明：根据关键字搜索网易云音乐

**接口地址：** <font style="background: #f8f8f8; color: #e96900;">/music/search/cloud</font>

**调用方式：** GET

**必选参数：** <font style="background: #f8f8f8; color: #e96900;">kw</font>

**可选参数：** 

<font style="background: #f8f8f8; color: #e96900;">t</font>：搜索类型，默认 1，歌曲搜索

<font style="background: #f8f8f8; color: #e96900;">limit</font>：页数，默认 1

**成功返回(主要使用参数)：**
```
{
    code: number(1)
    data: [
        {
            name: string, 歌曲名称
            id: number, 歌曲id
            ar: [
                {
                    id: number, 歌手id
                    name: string, 歌手名称
                }
            ], 歌手信息
            al: {
                id: number
                name: string
                picUrl: string, 专辑封面图片路径
            }, 专辑信息
            dt: number, 歌曲时长
        }
    ]
    count: number
}
```
**失败返回：**
```
{
    code: number(0)
    message: string
    error?: Error
}
```

<br> 


## **网易云用户登录**
说明：通过手机号和密码登录网易云账号

**接口地址：** <font style="background: #f8f8f8; color: #e96900;">/music/cloud/user/login</font>

**调用方式：** POST

**必选参数：** 

<font style="background: #f8f8f8; color: #e96900;">phone</font>：手机号

<font style="background: #f8f8f8; color: #e96900;">password</font>：密码

**成功返回：**
```
{
    code: number(200)
    data: {
        msg: string
        message: string
    }
}
```
**失败返回：**
```
{
    code: number(0)
    message: string
    error?: Error
}
```

<br>

## **获取网易云用户登录状态**
说明：通过登录后的 cookie 获取网易云用户登录状态

**接口地址：** <font style="background: #f8f8f8; color: #e96900;">/music/cloud/user/status</font>

**调用方式：** POST

**成功返回：**
```
{
    code: number(200)
    data: {
        code: number,
        account: {} | null, 对象中是用户信息, 用不上所以这里不写了
        profile: {} | null, 对象中是用户信息, 用不上所以这里不写了
    }
}
```
**失败返回：**
```
{
    code: number(0)
    message: string
    error?: Error
}
```

<br>

## **退出网易云用户登录**
说明：退出网易云用户登录状态

**接口地址：** <font style="background: #f8f8f8; color: #e96900;">/music/cloud/user/logout</font>

**调用方式：** POST

**成功返回：**
```
{
    code: number(200)
}
```
**失败返回：**
```
{
    code: number(400)
    message?: string
    error?: Error
}
```

<br>

## **刷新网易云用户登录状态**
说明：刷新登录状态

**接口地址：** <font style="background: #f8f8f8; color: #e96900;">/music/cloud/user/refresh</font>

**调用方式：** POST

**成功返回：**
```
{
    code: number(200)
}
```
**失败返回：**
```
{
    code: number(400)
    message?: string
    error?: Error
}
```

<br> 

## **获取网易云歌曲信息**
说明：通过网易云歌曲 id 获取歌曲信息

**接口地址：** <font style="background: #f8f8f8; color: #e96900;">/music/cloud/info</font>

**调用方式：** GET

**必填参数：** <font style="background: #f8f8f8; color: #e96900;">ids</font>：id 的字符串，使用<font style="background: #f8f8f8; color: #e96900;"> , </font>链接可以一次查询多个

**成功返回：**
```
{
    code: number(1)
    data: {
        id: number,
        name: string,
        ar: [   // 歌手信息
            {
                id: number,
                name: string
            }
        ]，
        al: [   // 专辑信息
            {
                id: number
                name: string
            }
        ]，
        dt: number, 歌曲时长
        noCopyrightRcmd: {  // 这首歌在网易云音乐无法播放, 且有其他版本时
            type: number
            typeDesc: string
            songId: number
        }
        st: number, -200 时表示歌曲下架了,没发播放
    }
}
```
**失败返回：**
```
{
    code: number(0)
    message: string
    error?: Error
}
```

<br>


## **获取网易云歌曲播放路径**
说明：通过网易云歌曲 id 获取歌曲播放路径

**接口地址：** <font style="background: #f8f8f8; color: #e96900;">/music/cloud/info/:id</font>

**调用方式：** GET

**必填参数：** <font style="background: #f8f8f8; color: #e96900;">id</font>

**成功返回：**
```
{
    code: number(1)
    src: string, 歌曲播放路径
}
```
**失败返回：**
```
{
    code: number(0)
    message: string
    error?: Error
}
```

<br>

## **获取网易云精选歌单**
说明：通过网易云精选歌单信息

**接口地址：** <font style="background: #f8f8f8; color: #e96900;">/music/cloud/playlist/highquality</font>

**调用方式：** GET

**可选参数：** 

<font style="background: #f8f8f8; color: #e96900;">cat</font>：歌单类型，可选值有（全部， 华语， 欧美， 韩语， 日语， 粤语， 小语种， 运动， ACG， 影视原声， 流行， 摇滚， 后摇， 古风， 民谣， 轻音乐， 电子， 器乐， 说唱， 古典， 爵士）

<font style="background: #f8f8f8; color: #e96900;">limit</font>：返回歌单数

<font style="background: #f8f8f8; color: #e96900;">before</font>：上次获取结果中的 lasttime，用于翻页时获取数据

**成功返回(主要使用参数)：**
```
{
    code: number(1)
    data: {
        more: boolean, 是否还有数据
        msg?: string, 文字提示信息
        lasttime: number, 返回数据中最后一个歌单的 updatetime
        playlist: [
            {
                id: number, 歌单id
                name: string, 歌单名称
                coverImgUrl: string, 歌单封面
                updateTime: number
                createTime: number, 创建时间
                description: string, 歌单简介
                playCount: number, 播放量
                trackCount: number, 歌单内歌曲数量
                creator: {
                    userId: number, 用户id
                    nickname: string, 用户名称
                    avatarUrl: string, 用户头像
                }, 歌单创建者
                tags: string[], tag名称数组
            }
        ]
    }
}
```
**失败返回：**
```
{
    code: number(0)
    message: string
    error?: Error
}
```

<br>


## **获取网易云音乐歌单中的所有歌曲**
说明：获取网易云音乐的歌单中所有歌曲信息

**接口地址：** <font style="background: #f8f8f8; color: #e96900;">/music/cloud/playlist/track</font>

**调用方式：** GET

**必填参数：** <font style="background: #f8f8f8; color: #e96900;">id</font>

**成功返回(主要使用参数)：**
```
{
    code: number(1)
    data: [
        {
            al: {   // 专辑信息
                id: number
                name: string
                picUrl: string, 专辑封面图片路径
            },
            ar: [   // 歌手信息
                {
                    id: number
                    name: string
                }
            ],
            id: number, 歌曲id
            name: string, 歌曲名称
            dt: number, 歌曲时长, ms单位
            noCopyrightRcmd: {  // 这首歌在网易云音乐无法播放, 且有其他版本时
                type: number
                typeDesc: string
                songId: number
            }
            st: number, -200 时表示歌曲下架了,没发播放
        }
    ]
}
```
**失败返回：**
```
{
    code: number(0)
    message: string
    error?: Error
}
```

<br>


## **获取网易云歌单详细信息**
说明：根据id获取网易云歌单的信息

**接口地址：** <font style="background: #f8f8f8; color: #e96900;">/music/cloud/playlist/detail</font>

**调用方式：** GET

**必填参数：** <font style="background: #f8f8f8; color: #e96900;">id</font>

**成功返回(主要使用参数)：**
```
{
    code: number(1)
    data: {
        id: number
        name: string
        coverImgUrl: string, 歌单封面图片路径
        UpdateTime: number, 更新时间
        createTime: number, 创建时间
        description: string, 歌单简介
        playCount: number, 播放
        trackCount: number, 歌单内歌曲数量
        tracks: [
            {
                id: number,
                name: string,
                ar: [   // 歌手信息
                    {
                        id: number,
                        name: string
                    }
                ]，
                al: [   // 专辑信息
                    {
                        id: number
                        name: string
                    }
                ]，
                dt: number, 歌曲时长
            }
        ], 歌曲信息, 长度为10, 
        creator: {
            userId: number
            nickname: string
            avatarUrl: string, 用户头像图片路径
        }, 创建者用户信息
        tags: string[], tag名称数组
    }
}
```
**失败返回：**
```
{
    code: number
    message: string
    error?: Error
}
```

<br>


## **获取网易云每日随机推荐**
说明：获取网易云每日随机推荐

**接口地址：** <font style="background: #f8f8f8; color: #e96900;">/music/cloud/playlist/personalized</font>

**调用方式：** GET

**可选参数：** <font style="background: #f8f8f8; color: #e96900;">limit</font>：获取的歌单数, 默认30

**成功返回(主要使用参数)：**
```
{
    code: number(1)
    data: [
        {
            id: number,
            name: string,
            picUrl: string,
            playCount: number,
            trackCount: number,
            trackNumberUpdateTime: number
        }
    ]
}
```
**失败返回：**
```
{
    code: number(0)
    message: string
    error?: Error
}
```

