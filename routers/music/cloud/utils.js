import NeteaseCloudMusicApi from 'NeteaseCloudMusicApi';
const { song_detail } = NeteaseCloudMusicApi;

/** 根据 id 获取网易云音乐信息 */
export async function getCloudMusicInfoWithId(ids) {
	let result = await song_detail({ ids }).catch((e) => {
		console.log(e, 'getCloudMusicInfoWithId 8');
	});
	if (!result) {
		return Promise.reject('数据获取错误');
	}
	// console.dir(result)
	if (!result.body.songs) {
		return Promise.reject('参数错误');
	}
	return { ...result.body.songs[0], st: result.body.privileges[0].st };
}
