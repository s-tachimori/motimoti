cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '1 * * * * *', (msg) ->
    msg.send "Cron test", null, true, "Asia/Tokyo"
