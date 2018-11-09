cronJob = require('cron').CronJob

module.exports = (robot) ->
  # send = (room, msg) ->
  #   response = new robot.Response(robot, {user : {id : -1, name : room}, text : "none", done : false}, [])
  #   response.send msg
  #
  # # *(sec) *(min) *(hour) *(day) *(month) *(day of the week)
  # new cronJob('0 8 17 * * *', () ->
  #   currentTime = new Date
  #   send '#takahiro_niwatori', "定期実行テスト"
  # ).start()

  # 特定のチャンネルへ送信するメソッド(定期実行時に呼ばれる)　
  send = (channel, msg) ->
    robot.send {room: channel}, msg

  # Crontabの設定方法と基本一緒 *(sec) *(min) *(hour) *(day) *(month) *(day of the week)
  # #generalと言う部屋に、平日の17:30時に実行
  new cronJob('0 30 17 * * 1-5', () ->
    # ↑のほうで宣言しているsendメソッドを実行する
    send '#general', "@here そろそろ帰る準備をしよう"
  ).start()

  # #your_channelと言う部屋に、平日の13:00時に実行
  new cronJob('0 00 13 * * 1-5', () ->
    send '#your_channel', "@here ランチの時間だよ！！"
  ).start()
