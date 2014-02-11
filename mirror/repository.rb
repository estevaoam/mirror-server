module Mirror
  class Repository
    attr_accessor :app, :path

    def initialize(app)
      @app = app
      @path = "#{Mirror::GITPATH}/#{app.name}"
    end

    def create_if_needed!
      %x(
        mkdir #{self.path} /dev/null
        git init > /dev/null
      )

      unless system("test -d #{self.path}")
        raise "Something happened and I couldn't create your app repo, chegk permissions."
      end
    end
  end
end
