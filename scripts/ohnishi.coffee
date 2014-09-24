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
    msg.send"PONG"

  robot.hear /ćŒ$/i, (msg) -> 
    msg.send"PONG"

  robot.hear /fO$/i, (msg) -> 
    msg.send"Ż(^o^)źŹ(^o^)­ĂȚžȚĂȚžȚĂȚžȚĂȚžȚ"
