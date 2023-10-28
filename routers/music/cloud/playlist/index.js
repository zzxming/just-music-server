const router = require('express').Router();
const {
	personalized,
	top_playlist_highquality,
	createRequest,
	playlist_track_all,
	playlist_detail,
} = require('NeteaseCloudMusicApi');
const axios = require('axios');

/** 每日随机推荐, limit 为歌单数 */
router.get('/personalized', (req, res) => {
	const { limit } = req.query;

	personalized({ limit })
		.then((response) => {
			// console.log(response)
			res.send({ code: 1, data: response.body.result });
		})
		.catch((e) => {
			console.log(e);
			res.send({
				code: 0,
				error: {
					errno: e.body.msg.errno,
					code: e.body.msg.code,
				},
				message: e.message || e.code || e.body.message || e.body.msg.code,
			});
		});
});
/** 精选歌单 */
router.get('/highquality', (req, res) => {
	const { cat, limit, before } = req.query;
	top_playlist_highquality(
		{
			cat, // 全部,华语,欧美,韩语,日语,粤语,小语种,运动,ACG,影视原声,流行,摇滚,后摇,古风,民谣,轻音乐,电子,器乐,说唱,古典,爵士
			limit: limit || 10,
			before, // 上一首精选歌单的updatetime
		},
		createRequest
	)
		.then((response) => {
			// console.log(response)
			res.send({
				code: 1,
				data: {
					more: response.body.more,
					msg: response.body.msg,
					lasttime: response.body.lasttime,
					playlist: response.body.playlists,
				},
			});
		})
		.catch((e) => {
			console.log(e);
			res.send({
				code: 0,
				error: {
					errno: e.body.msg.errno,
					code: e.body.msg.code,
				},
				message: e.message || e.code || e.body.message || e.body.msg.code,
			});
		});
});
/** 获取歌单内所有歌曲 */
router.get('/track', (req, res) => {
	let { id, cookie, limit, pageSize = 500 } = req.query;
	if (limit !== undefined && isNaN(limit)) {
		res.status(400).send({ code: 0, message: '参数错误' });
		return;
	}
	if (isNaN(pageSize)) pageSize = 500;
	if (Object.prototype.toString.call(id) === '[object Array]') {
		id = id[id.length - 1];
	}
	let headerCookie = undefined;
	if (req.headers.cookie) {
		headerCookie = req.headers.cookie.split('; ').join(';');
	}

	// 等几天之后再用这个 cookie 去请求喜欢的音乐歌单, 看看是不是能够一直用, 这个写的保存日期到 11月8号7:29:40
	// 登录才能查看的歌单需要 cookie 字段 MUSIC_U=8f069545eb4a429a5db0f274c047d1a85f78183878bee4c4f5f14f96832a9919993166e004087dd38514f7b65bd84edccbe961c68eef45197b4755491d668b41484a2707848abb74a89fe7c55eac81f3;

	// 需要limit和offset限制一下返回, 如果歌单内的歌曲超出1000的话会导致响应400
	playlist_track_all({ id, cookie: headerCookie ?? cookie, limit: pageSize, offset: (Number(limit) - 1) * pageSize })
		.then((response) => {
			// console.log(response)
			const { code, songs, message, privileges } = response.body;
			if (code === 200) {
				let data = songs.map((song, index) => ({ ...song, st: privileges[index].st }));
				res.send({ code: 1, data });
				return;
			}
			res.send({ code: 0, message: '意外错误' });
		})
		.catch((e) => {
			console.log(e);
			res.send({
				code: 0,
				error: {
					errno: e.body?.msg?.errno,
					code: e.body?.msg?.code,
					message: e.body?.message,
				},
				message: e.message || e.code || e.body.message || e.body.msg.code,
			});
		});
});
/** 获取歌单信息 */
router.get('/detail', (req, res) => {
	const { id } = req.query;
	// https://music.163.com/playlist?id=373955762
	playlist_detail({ id })
		.then((response) => {
			// console.log(response)
			const { code, playlist, message } = response.body;
			if (code === 200) {
				res.send({
					code: 1,
					data: {
						...playlist,
					},
				});
				return;
			}
			res.send({ code, error: response.body, message });
		})
		.catch((e) => {
			console.log(e);
			res.send({
				code: 0,
				error: {
					errno: e.body.msg.errno,
					code: e.body.msg.code,
				},
				message: e.message || e.code || e.body.message || e.body.msg.code,
			});
		});
});
/** 根据分享链接获取歌单id */
router.get('/import', async (req, res) => {
	const { url } = req.query;
	axios
		.get(url)
		.then((data) => {
			console.log(data.request);
			console.log(data.request.path);
			const query = data.request.path.split('?').slice(1)?.join('')?.split('&');
			let id = '';
			for (let i = 0; i < query.length; i++) {
				const cur = query[i].split('=');
				if (cur[0] === 'id') {
					id = cur[1];
					break;
				}
			}
			res.send({ code: 1, data: { id } });
		})
		.catch((err) => {
			console.log(err);
			res.send({ code: 0, data: { id: '' } });
		});
});

module.exports = {
	router,
};

/** playlist_track_all.js 改写
module.exports = (query, request) => {
  const data = {
    id: query.id,
    n: 100000,
    s: query.s || 8,
  }
  //不放在data里面避免请求带上无用的数据
  let limit = parseInt(query.limit) || Infinity
  let offset = parseInt(query.offset) || 0

  return request('POST', `https://music.163.com/api/v6/playlist/detail`, data, {
    crypto: 'api',
    cookie: query.cookie,
    proxy: query.proxy,
    realIP: query.realIP,
  }).then((res) => {
    let trackIds = res.body.playlist.trackIds
    // 当歌单内歌曲信息超出1000时会使post数据过多, 导致后端无法接收到参数而返回400
    if (trackIds.length > 800 && !limit) {
      let idsDatas = [];
      for (let i = 0; i < trackIds.length; i += 800) {
        idsDatas.push({
          c:
            '[' +
            trackIds
              .slice(i, i + 800)
              .map((item) => '{"id":' + item.id + '}')
              .join(',') +
            ']',
        })
      }
      return Promise.all(idsDatas.map((c => {
        return request(
          'POST',
          `https://music.163.com/api/v3/song/detail`,
          c,
          {
            crypto: 'weapi',
            cookie: query.cookie,
            proxy: query.proxy,
            realIP: query.realIP,
          },
        )
      })))
      .then(res => {
        let songs = [];
        let privileges = [];
        res.map(item => {
          songs.push(...item.body.songs)
          privileges.push(...item.body.privileges)
        })
        return {
          status: res.status,
          body: {
            songs,
            privileges,
            code: 200
          },
          cookie: res.cookie
        }
      })
    }
    // 不超过的数据正常返回

    let idsData = {
      c:
        '[' +
        trackIds
          .slice(offset, offset + limit)
          .map((item) => '{"id":' + item.id + '}')
          .join(',') +
        ']',
    }

    return request(
      'POST',
      `https://music.163.com/api/v3/song/detail`,
      idsData,
      {
        crypto: 'weapi',
        cookie: query.cookie,
        proxy: query.proxy,
        realIP: query.realIP,
      },
    )
  })
}
 */
