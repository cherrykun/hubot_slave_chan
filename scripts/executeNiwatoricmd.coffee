
module.exports = (robot) ->
  # ローカルバッチ実行
	robot.respond /ぼくはにわとり/i, (msg) ->
		msg.send "#{msg.message.user.name}だねw"
		@exec = require('child_process').exec
		command = "C:\\Users\\works\\niwatoripunchbat\\PunchIn.bat"
		msg.send "Command: #{command}"
		@exec command, (error, stdout, stderr) ->
      msg.reply "ダメやんw" if error?
      msg.reply "出社させといたw" if stdout?
      msg.reply "えwwもうしてんじゃんw" if stderr?

	robot.respond /にわとりになりたい/i, (msg) ->
		msg.send "おまえは #{msg.message.user.name} www"
		@exec = require('child_process').exec
		command = "C:\\Users\\works\\niwatoripunchbat\\PunchOut.bat"
		msg.send "Command: #{command}"
		@exec command, (error, stdout, stderr) ->
	    msg.reply "ダメやんw" if error?
	    msg.reply "退社させといたw" if stdout?
	    msg.reply "えwwダメやんw" if stderr?

	robot.respond /(コマンドなんだっけ|たかひろのコマンド)/i, (msg) ->
		msg.send "出社 `ぼくはにわとり` 退社 `にわとりになりたい`"
