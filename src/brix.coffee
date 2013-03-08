module.exports = brix =

    configure: (stacker, config) -> 

        brix.server = new (require './server') config

        brix.server.start()

    edge: (placeholder, nodes) -> 


