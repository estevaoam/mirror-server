module Mirror
  class Server
    attr_reader :provider, :masters, :apps

    def initialize(config_file)
      @config_file = config_file
    end

    # Starts the server
    def start
      check_if_running!

      config = YAML.load_file(config_file).symbolize_keys
      @provider = Provider.new(config_file[:provider])
    end

    # Stops the server
    def stop
    end

    def config
      YAML.load_file(@config_file).symbolize_keys
    end

    private
    def check_if_running!
      # Checks if already has a pid for the
      # proccess.
    end
  end
end
