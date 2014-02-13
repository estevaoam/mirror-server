module Mirror
  ROOT_PATH = "/home/mirror"

  class Server
    attr_reader :provider, :masters, :apps, :config

    def initialize(config_file = nil)
      @config_file = config_file || 'config.yml'
    end

    # Starts the REST server
    def start
      check_if_running!

      @provider = Provider.new(config[:provider])
      API.start!
    end

    # Stops the server
    def stop
    end

    def config
      @config ||= YAML.load_file(@config_file).symbolize_keys
    end

    private
    def check_if_running!
      # Checks if already has a pid for the
      # proccess.
    end
  end
end
