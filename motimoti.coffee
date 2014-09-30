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
    msg.send "IS GOD."

  robot.hear /デグ/, (msg) -> 
    msg.send "┗(^o^)┛ｗｗｗｗｗ┏(^o^)┓ﾃﾞｸﾞﾃﾞｸﾞﾃﾞｸﾞﾃﾞｸﾞｗｗｗｗｗ"
 
#  robot.respond /sudden (.*)/i, (msg) ->
#    str = msg.match[1]
#    len = str.length
#    msg.send "＿人人人人人人＿ ＞　" + m + "　＜ ￣Y^Y^Y^Y^Y￣"

  robot.respond /liquidate ([^ ]+) ([^ ]+) ([^ ]+) ([^ ]+)/, (msg) ->
    str = "( ^o^)#{msg.match[1]}" +
      "( ˘⊖˘) 。o(#{msg.match[2]})" +
      "|#{msg.match[3]}|┗(☋｀ )┓三" +
      "( ◠‿◠ )☛#{msg.match[4]}" +
      "▂▅▇█▓▒░(’ω’)░▒▓█▇▅▂うわああああああ"

    msg.send str
