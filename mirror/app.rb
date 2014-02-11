module Mirror
  class App
    attr_reader :name, :repo, :last_commit

    def initialize(name)
      @name = name
    end

    def create
      # Creates repository
      Repository.new(self).create_if_needed!
    end
  end
end
