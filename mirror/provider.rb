module Mirror
  class Provider
    attr_reader :service, :credentials, :client

    def initialize(config)
      @provider = config[:provider]
      @credentials = config[:credentials]
    end
  end
end
