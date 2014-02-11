module Mirror
  class Provider
    attr_reader :service, :credentials, :client

    def initialize(config)
      @service = config[:service]
      @credentials = config[:credentials]
    end
  end
end
