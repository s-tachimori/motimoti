cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '* 1 * * * *', () =>
    robot.send {room: '#test'}, "Cron test", null, true, "Asia/Tokyo"
