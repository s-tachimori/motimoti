# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   fortune - Reply with any message
fs = require "fs"
text = './fortune.txt'
str = -> fs.readFileSync text, 'utf8'

module.exports = (robot) ->
  robot.hear /^fortune$/, (msg) ->
    array = str().split "%"
    i = Math.floor Math.random() * array.length
    msg.send array[i]