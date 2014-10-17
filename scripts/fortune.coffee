# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   fortune - Reply with any message
fs = require "fs"
text = './fortune.txt'
buront = './buront.txt'
str = (filename) -> fs.readFileSync filename, 'utf8'

module.exports = (robot) ->
  robot.hear /^fortune$/, (msg) ->
    array = str(text).split "%"
    i = Math.floor Math.random() * array.length
    msg.send array[i]

module.exports = (robot) ->
  robot.hear /^buront$/, (msg) ->
    array = str(buront).split "%"
    i = Math.floor Math.random() * array.length
    msg.send array[i]