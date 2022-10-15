# /bili
## /audio 
get, 根据哔哩哔哩 bv 号获取音频

```
参数：
{
    query: {
        bv: string
    }
}
```
```
成功返回：音频数据流
```
```
失败返回：
{
    code: number(0)
    message: string
    error: Error
}
```


# /music
## /:id
get, 根据本地数据库 music_id 获取音频

```
参数：
{
    params: {
        id: string
    }
}
```
```
成功返回：音频数据流
```
```
失败返回：
{
    code: number(0)
    message: string
    error?: Error
}
```
## /info/:id
get, 根据本地数据库 music_id 获取音频相关信息

```
参数：
{
    params: {
        id: string
    }
}
```
```
成功返回：
{
    code: number(1)
    data: {
        music_id: number
        music_name: string
        singer_name: string
        music_url: string
    }
}
```
```
失败返回：
{
    code: number(0)
    message: string
    error?: Error
}
```
## /search/local
get, 根据关键字搜索本地数据库

```
参数：
{
    query: {
        kw: string, 关键字
        t: number, 同网易云音乐搜索 api 的 type
        limit: number, 页数
    }
}
```
```
成功返回：
{
    code: number(1)
    data: [
        {
            music_id: number
            music_name: string
            music_url: string
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
```
失败返回：
{
    code: number(0)
    message: string
    error?: Error
}
```
## /search/cloud
get, 根据关键字搜索网易云音乐

```
参数：
{
    query: {
        kw: string, 关键字
        t: number, 同网易云音乐搜索 api 的 type
        limit: number, 页数
    }
}
```
```
成功返回(主要使用参数)：
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
            ]
        }
    ]
}
```
```
失败返回：
{
    code: number(0)
    message: string
    error?: Error
}
```
## /cloud/info
get, 通过网易云歌曲id获取歌曲信息

```
参数：
{
    query: {
        ids: string, 歌曲id字符串, 可通过逗号连接一次查询多个
    }
}
```
```
成功返回：
{
    code: number(1)
    songs: [
        {
            id: number,
            name: string,
            at: [   // 歌手信息
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
    ]
}
```
```
失败返回：
{
    code: number(0)
    message: string
    error?: Error
}
```
## /cloud/:id
get, 通过网易云歌曲id获取歌曲播放路径

```
参数：
{
    params: {
        id: number
    }
}
```
```
成功返回：
{
    code: number(1)
    src: string, 歌曲播放路径
}
```
```
失败返回：
{
    code: number(0)
    message: string
    error?: Error
}
```
## /cloud/playlist/highquality
get, 网易云精选歌单

```
参数：
{
    query: {
        cat: string(全部 | 华语 | 欧美 | 韩语 | 日语 | 粤语 | 小语种 | 运动 | ACG | 影视原声 | 流行 | 摇滚 | 后摇 | 古风 | 民谣 | 轻音乐 | 电子 | 器乐 | 说唱 | 古典 | 爵士)
        limit: number, 返回歌单数
        before: number, 用于翻页, 上次获取结果中的lasttime, 即最后一个歌单的 updatetime
    }
}
```
```
成功返回(主要使用参数)：
{
    code: number(1)
    more: boolean, 是否还有数据
    msg?: 文字提示信息
    lasttime: number, 返回数据中最后一个歌单的 updatetime
    playlist: [
        {
            name: string, 歌单名称
            id: number, 歌单id
            updatetime: number
            coverImgUrl: string, 歌单封面
            description: string, 歌单简介
            playCount: number, 播放量
            creator: {
                userId: 用户id
                nickname: 用户名称
                avatarUrl: 用户头像
            }, 歌单创建者
            tags: string[], tag名称数组
            tag: string, tag名称通过逗号链接
        }
    ]
}
```
```
失败返回：
{
    code: number(0)
    message: string
    error?: Error
}
```
## /cloud/playlist/track
get, 获取网易云歌单中的所有歌曲

```
参数：
{
    query: {
        id: number, 歌单id
        offset: number, 页数
        limit: number, 返回的个数
    }
}
```
```
成功返回(主要使用参数)：
{
    code: number(1)
    songs: [
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
        }
    ]
}
```
```
失败返回：
{
    code: number(0)
    message: string
    error?: Error
}
```
## /cloud/playlist/detail
get, 根据id获取网易云歌单的信息

```
参数：
{
    query: {
        id: number, 歌单id
    }
}
```
```
成功返回(主要使用参数)：
{
    code: number(1)
    playlist: {
        id: number
        name: string
        coverImgUrl: string, 歌单封面图片路径
        createTime: number, 创建时间
        description: string, 歌单简介
        playCount: number, 播放
        trackCount: number, 歌单内歌曲数量
        creator: {
            userId: number
            nickname: string
            avatarUrl: string, 用户头像图片路径
        }, 创建者用户信息
    }
}
```
```
失败返回：
{
    code: number(0)
    message: string
    error?: Error
}
```
