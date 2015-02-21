Vagrant + DSpace = vagrant-dspace
=================================

[Vagrant](http://vagrantup.com) can be used to spin up a temporary Virtual Machine (VM) in a variety of providers ([VirtualBox](http://www.virtualbox.org), [VMWare](http://www.vmware.com/), [Amazon AWS](http://aws.amazon.com/), etc).

Simply put, 'vagrant-dspace' uses Vagrant to auto-install latest DSpace on the VM provider of your choice (though so far we've mostly tested with VirtualBox).

Requirements
------------

* [Vagrant](http://vagrantup.com/) version 1.3.2 or higher
* [VirtualBox](https://www.virtualbox.org/)
  sudo apt get install nfs-kernel-server rpcbind

Getting Started
---------------

1. Install all required software (see above). Linux users take note: the versions of Vagrant and Virtualbox in your distribution's package manager are probably not current enough. Download and manually install the most recent version from [Vagrant](http://vagrantup.com) and [VirtualBox](https://www.virtualbox.org/). It will be OK. Both of these projects move quickly, and the distro managers have a hard time keeping up.

2. Clone a copy of 'vagrant-dspace' to your local computer
   * `git clone git@github.com:DSpace/vagrant-dspace.git`

3. `cd [vagrant-dspace]/`

4. `vagrant up`
   * Wait for ~15 minutes while Vagrant & Puppet do all the heavy lifting of cloning GitHub & building & installing DSpace.
   * There may be times that vagrant will appear to "stall" for several minutes (especially during the Maven build of DSpace). But, don't worry.

5. Once complete, visit `http://localhost:8080/xmlui/` or `http://localhost:8080/jspui/` in your local web browser to see if it worked! _More info below on what to expect._
   * If you already have something running locally on port 8080, vagrant-dspace will attempt to use the next available port between 8081 and 8100.

The `vagrant up` command will initialize a new VM based on the settings in the `Vagrantfile` in that directory.

Once complete, you'll have a fresh Ubuntu VM that you can SSH into by simply typing `vagrant ssh`. Since SSH Forwarding is enabled,
that Ubuntu VM should have access to your local SSH keys, which allows you to immediately use Git/GitHub.

What will you get?
------------------

* A running instance of [DSpace 'master'](https://github.com/DSpace/DSpace), on top of latest PostgreSQL and Tomcat 7 (and using Java OpenJDK 7 by default)

   * You can visit this instance at `http://localhost:8080/xmlui/` or `http://localhost:8080/jspui/` from your local web browser

   * An initial Administrator account is also auto-created:
       * Login: `dspace` , Pwd: 'dspace'

* A fresh Ubuntu virtual server with DSpace GitHub cloned (at `~/dspace-src/`) and Java/Maven/Ant/Git installed.

* All "out of the box" DSpace webapps running out of `/dspace/webapps/`. The full DSpace installation is at `/dspace/`.

Your first step should  be to change the default password(s), and/or optionally create a new administrator:

    vagrant ssh
    /dspace/bin/dspace create-administrator

Usage Tips
------------

Here's some common activities which you may wish to perform in `vagrant-dspace`:

* **Restarting Tomcat**
   * `sudo service tomcat7 restart`

* **Restarting PostgreSQL**
   * `sudo service postgresql restart`

* **Connecting to DSpace PostgreSQL database**
   * `psql -h localhost -U dspace dspace`  (Password is "dspace")

* **Rebuilding / Redeploying DSpace**
   * `cd ~/dspace-src/`  (Move into source directory)
   * `mvn clean package` (Rebuild/Recompile DSpace)
   * `cd dspace/target/dspace-installer` (Move into the newly built installer directory)
   * `ant update`   (Redeploy changes to ~/dspace/)
   * `sudo service tomcat7 restart` (Reboot Tomcat)


Vagrant Plugin Recommendations
-------------------------------

The following Vagrant plugins are not required, but they do make using Vagrant and vagrant-dspace more enjoyable.

* vagrant-vbguest: https://github.com/dotless-de/vagrant-vbguest

```
    vagrant plugin install vagrant-vbguest
```
