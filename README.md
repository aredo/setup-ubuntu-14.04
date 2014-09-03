Setup Ubuntu Server 14.04
---

A set of bash scripts to install and configure a Node.js server on Ubuntu.

They install Node v0.10.26 using [nvm](https://github.com/creationix/nvm).

They also configures iptables to redirect port 80 to 3000 and port 443 to 3001 so you can run your node applications without root permission.

Usage
---

First become root with `sudo su`

Next run `install-su.sh` with either `./install-su.sh` or `bash install-su.sh`.

Then exit root user mode `exit` to become a normal user.

Notes
---

The two scripts install and configure a lot of useful software some specific to Node some not.


The Node related software installed is.

- [Grunt.JS](http://gruntjs.com/getting-started)
- [nodemon](https://github.com/remy/nodemon)
- [pm2](https://github.com/Unitech/pm2-deploy)

The Ruby related software installed is.

- [RVM](http://rvm.io/)
- [Scout Realtime](https://github.com/scoutapp/scout_realtime)
- [Genghisapp](http://genghisapp.com/)
- [BSON EXT] (https://rubygems.org/gems/bson_ext)

Author
---

Hengki Sihombing: [hengki.sihombing@gmail.com](mailto:hengki.sihombing@gmail.com)
Twitter : [@hengkiardo](http://hengkiardo.com)

License
---
Licensed under [MIT](https://github.com/alanjames1987/ubuntu-install-node/blob/master/LICENSE).
