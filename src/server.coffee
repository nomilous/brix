class Server

    constructor: (@config) -> 

    start: ->  

        console.log 'start with', @config

        require('plex').start 

            mode: 'leaf'

            connect:

                adaptor: 'socket.io'
                uri: "https://#{@config.uplink.host}:#{@config.uplink.port}"


module.exports = Server
