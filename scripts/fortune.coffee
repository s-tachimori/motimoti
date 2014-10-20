fs = require "fs"
text = './resources/fortune.txt'
buront = './resources/buront.txt'
str = (filename) -> fs.readFileSync filename, 'utf8'

module.exports = (robot) ->
  robot.hear /^fortune$/, (msg) ->
    array = str(text).split "%"
    i = Math.floor Math.random() * array.length
    msg.send array[i]

  robot.hear /^buront$/, (msg) ->
    array = str(buront).split "%"
    i = Math.floor Math.random() * array.length
    msg.send array[i]