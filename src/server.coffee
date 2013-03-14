class Server

    constructor: (@config) -> 

    start: ->  

        console.log 'start with', @config

        require('plex').start 

            mode: 'leaf'

            secret: @config.secret

            connect:

                adaptor: 'socket.io'
                uri: "https://#{@config.uplink.host}:#{@config.uplink.port}"


module.exports = Server
