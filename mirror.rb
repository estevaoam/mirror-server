require 'yaml'
require_relative 'mirror/utils'
require_relative 'mirror/provider' # interface for aws/digitalocean/whatever
require_relative 'mirror/manager' # manages creation of mirror-masters
require_relative 'mirror/api' # the rest server to accept commands from the client
require_relative 'mirror/server' # the server itself
