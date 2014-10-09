# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   hubot ping - Reply with pong
#   hubot echo <text> - Reply back with <text>
#   hubot time - Reply with current time
#   hubot die - End hubot process

module.exports = (robot) ->
  robot.hear /(?:OHNISHI|おおにし|オオニシ|大西)/i, (msg) ->
    msg.send "大西は神。"

  robot.hear /(?:かみ|カミ|髪)/, (msg) ->
    msg.send "(´･ω･`)また髪の話してる"

  robot.hear /デグ/, (msg) -> 
    msg.send "┗(^o^)┛ｗｗｗｗｗ┏(^o^)┓ﾃﾞｸﾞﾃﾞｸﾞﾃﾞｸﾞﾃﾞｸﾞｗｗｗｗｗ"
 
  robot.hear /sudden (.*)/i, (msg) ->
    str = msg.match[1]
    len = Math.floor(@byteLength(str) / 2);
    msg.send "＿#{new Array(len + 1).join('人')}＿\n" +
            " ＞　#{str}　＜\n" +
             "￣#{new Array(len).join('Y^')}￣"

  robot.respond /omikuji/, (msg) ->
    n = Math.random() * 10

    msg.toString()

    switch n
      when 0
        msg.send "大吉"
      when 1
        msg.send "中吉"
      when 2, 3, 4
        msg.send "小吉"
      when 5, 6, 7
        msg.send "末吉"
      when 8
        msg.send "凶"
      when 9
        msg.send "大凶"

  robot.respond /liquidate ([^ ]+) ([^ ]+) ([^ ]+) ([^ ]+)/, (msg) ->
    str = "( ^o^)#{msg.match[1]}\n" +
      "( ˘⊖˘) 。o(#{msg.match[2]})\n" +
      "|#{msg.match[3]}|┗(☋｀ )┓三\n" +
      "( ◠‿◠ )☛#{msg.match[4]}\n" +
      "▂▅▇█▓▒░(’ω’)░▒▓█▇▅▂うわああああああ"
    msg.send str

  robot.hear /javaapi\s+(.*)$/i, (msg) ->
    url = "http://www.google.co.jp/search?q=#{msg.match[1]}&" +
      "sitesearch=http%3A%2F%2Fdocs.oracle.com%2Fjavase%2Fjp%2F6%2Fapi%2F"
    msg.send url


  robot.hear /columbia/, (msg) ->
    msg.send ".　　　　　　　　　　　　　　　　　　　　　　　　　　　　　,.へ \n" +
          "　　___ 　　　　　　　 　 　 　 　 　　　　　　　　　　　　ﾑ　　i \n" +
          "　「 ﾋ_i〉　　　 　 　　　　　　 　 　　　　　　　　　　　　 ゝ　〈 \n" +
          "　ﾄ　ノ 　　　　　　　　　　　　　　　　　　　　　　　　　　iニ(() \n" +
          "　i 　{ 　 　　　　　　　 　　　＿＿＿_ 　 　　　　　　　　| 　ヽ \n" +
          "　i　　i　　　 　　　　　　　／__,　 , ‐-＼ 　 　 　 　 　　i 　　} \n" +
          "　|　　 i　　　　　　 　　／（●) 　 ( ● )＼　　　　　　 {､　 λ \n" +
          "　ト－┤.　　　　　　／ 　 　（__人__） 　　　＼　　　 ,ノ　￣ ,! \n" +
          "　i　　　ゝ､_ 　　　　|　　　　　´￣` 　 　　　　|　,. '´ﾊ　　　,! \n" +
          ".　ヽ、 　　　｀`　､,__＼ 　　 　 　　　　　 　 ／\"　＼ 　ヽ／ \n" +
          "　　　＼ノ　ﾉ　　　ﾊ￣r/:::r―--―/::７　　 ﾉ　　　　／ \n" +
          "　 　　 　 ヽ.　　　　　　ヽ::〈； . '::. :' |::/　　 /　　　,. \" \n" +
          "　　　　　　　 `ｰ ､　　　　＼ヽ::.  +::：|/　　　　　ｒ'\" \n" +
          "　　　　　／￣二二二二二二二二二二二二二二二二ヽ \n" +
          "　　　　　| 答 |　　　　　コ　ロ　ン　ビ　ア　　　　　　　│| \n" +
          "　　　　　＼＿二二二二二二二二二二二二二二二二ノ"


  byteLength: (str) ->
    len = 0
    for s in str
      c = s.charCodeAt(0)
      # console.log(" c = " + c)
      if (c >= 0x0 and c < 0x81) or (c == 0xf8f0) or (c >= 0xff61 && c < 0xffa0) or (c >= 0xf8f1 && c < 0xf8f4)
        len += 1
      else
        len += 2
    return len