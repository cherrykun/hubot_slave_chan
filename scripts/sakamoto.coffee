

module.exports = (robot) ->
  robot.hear /(さかもと|坂本|sakamoto)/i, (res) ->
    	res.send "ちんのすけw"
  robot.hear /(しんのすけ|シンノスケ|慎乃介|慎.介|.乃介|慎乃.)/i, (res) ->
    	res.send "ちんのすけのこと？"
  robot.hear /(ちんのすけ|陳乃介|チンノスケ|ﾁﾝﾉｽｹ)/i, (res) ->
    	res.send "正解だよw"
