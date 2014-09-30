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
    str = "( ^o^)#{msg.match[1]}\n" +
      "( ˘⊖˘) 。o(#{msg.match[2]})\n" +
      "|#{msg.match[3]}|┗(☋｀ )┓三\n" +
      "( ◠‿◠ )☛#{msg.match[4]}\n" +
      "▂▅▇█▓▒░(’ω’)░▒▓█▇▅▂うわああああああ"

    msg.send str

  robot.hear /javadoc7\s+(.*)$/i
    url = "http://www.google.co.jp/search?q=#{msg.match[1]}&" +
      "sitesearch=http%3A%2F%2Fdocs.oracle.com%2Fjavase%2Fjp%2F6%2Fapi%2F"
    msg.send url
