module Mirror
  class Repository
    attr_reader :app, :path

    def initialize(app)
      @app = app
      @path = "#{Mirror::ROOT_PATH}/#{app.name}"
    end

    def create!
      unless system("test -d #{self.path}")
        unless system("mkdir #{self.path}")
          raise "I couldn't create your app repo, check folder permissions."
        end

        system("cd #{self.path} && git init")
      else
        raise "Path '#{self.path}' already exists, skipping."
      end
    end
  end
end
