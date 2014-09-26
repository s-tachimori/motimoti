# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   hubot ping - Reply with pong
#   hubot echo <text> - Reply back with <text>
#   hubot time - Reply with current time
#   hubot die - End hubot process

module.exports = (robot) ->
  robot.hear /OHNISHI$/i, (msg) ->
    msg.send "PONG"

  robot.hear /デグ/, (msg) -> 
    msg.send "┗(^o^)┛ｗｗｗｗｗ┏(^o^)┓ﾃﾞｸﾞﾃﾞｸﾞﾃﾞｸﾞﾃﾞｸﾞｗｗｗｗｗ"
 