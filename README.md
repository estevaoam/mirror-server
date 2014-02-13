# mirror-server

**WORK IN PROGRESS :D**

The server application for Mirror.
It creates/destroys apps and manages allocation of resources
from providers, like AWS, DigitalOcean and so on.

It comes with a binary called `mirror-server`.

You can start it by running:

    mirror-server start

It will start the server using the config file `config.yml` on the root.

Wants to see whats going on?

    mirror-server watch

It will attach the output to everything it's doing, contacting masters,
deploying apps, receiving git hooks and so on.

TODO:
=====

* Bootstraping the server (create folders, users, etc)
* Creating app (create app folder, repository, add users, etc)
* Deploying app (build docker images, storing, yell deploy message for masters)
* Transform to gem (remove `require_relative` statements)
