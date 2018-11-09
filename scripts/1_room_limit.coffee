
_ = require 'lodash'

module.exports = (robot) ->
  permitted_user = ['cherry_kun', 'niwatori']
  permitted_room = ['general', 'growing_slavechan', 'takahiro_niwatori', 'random', 'slave_chan', '@slave_chan']
  robot.hear /.*/, (msg) ->
    if _.contains permitted_user, msg.envelope.user.name
      return

    unless _.contains permitted_room, msg.envelope.room
      msg.finish()

    if /slave_chan/.test msg.envelope.user.name
      msg.finish()
