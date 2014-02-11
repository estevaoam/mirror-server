require 'yaml'
require 'mirror/provider' # interface for aws/digitalocean/whatever
require 'mirror/manager' # manages creation of mirror-masters
require 'mirror/api' # the rest server to accept commands from the client
require 'mirror/server' # the server itself
