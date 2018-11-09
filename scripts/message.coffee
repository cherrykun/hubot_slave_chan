

module.exports = (robot) ->
	nyusankin = ["ヤクルト","ピルクル","マミー","ジョア","ぐんぐんグルト","ヨーグルッペ","ビックル","Yoo"]
	robot.hear /乳酸菌/i, (res) ->
    	res.send res.random nyusankin
	robot.hear /(つかれた|疲れた|ツカレタ)/i, (res) ->
    	res.send res.random ["おつかれw","ザコじゃんw","(´._.｀)","壁|ω•`๑)"]
  robot.hear /おはよ(|う)/i, (res) ->
    	res.send res.random ["おはよー (*ˊᵕˋ*)੭ ੈ","ʕ๑•ω•ฅʔ＊おはよっ❤","おは"]
	robot.hear /おやすみ/i, (res) ->
    	res.send res.random ["おやすみ (*ˊᵕˋ*)੭ ੈ","おやすみなさい (❁ᴗ͈ˬᴗ͈)◞"]

	robot.hear /(出社する(|よ)|会社いく(|か))/i, (res) ->
			res.send res.random ["えらいねw","がんばれw","すごいw"]
	robot.hear /(退社する(|よ)|かえる(|よ|か))/i, (res) ->
			res.send res.random ["おつかれさまw","はやくかえってきてね","がんばったねw","残業しなよw"]

	ikemenImage = ["https://isyokuju.com/wp-content/uploads/2018/08/%E3%82%AA%E3%83%AA%E3%83%B4%E3%82%A3%E3%82%A2%E5%85%84_1.jpg","https://isyokuju.com/wp-content/uploads/2018/08/%E3%82%AA%E3%83%AA%E3%83%B4%E3%82%A3%E3%82%A2%E5%85%84_2.jpg","https://pbs.twimg.com/media/DmQpyBgV4AAfx3o.jpg","http://evgathr.xsrv.jp/wp-content/uploads/imgs/3/9/39d51901-s.png","http://evgathr.xsrv.jp/wp-content/uploads/imgs/9/3/93c704d3-s.jpg"]
	robot.hear /(イケメン|いけめん|o(|O)liviaani|オリヴィア兄|ヲタク)/i, (res) ->
		res.send res.random ikemenImage

	jankenGif = ["https://cherrykun.slack.com/files/UDNBR8MDF/FDVG51UT0/image_from_ios__1_.gif","https://cherrykun.slack.com/files/UDNBR8MDF/FDVG53ZP0/image_from_ios.gif"]
	robot.hear /(jannkenn|じゃんけん|あっちむいて|ジャンケン)/i,(res) ->
		res.send res.random jankenGif
