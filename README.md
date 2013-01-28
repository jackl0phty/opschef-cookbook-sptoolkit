
Travis-ci status: [![Build Status](https://secure.travis-ci.org/jackl0phty/opschef-cookbook-sptoolkit.png?branch=master)](http://travis-ci.org/jackl0phty/opschef-cookbook-sptoolkit)

DESCRIPTION:
============

This cookbook will install Simple Phish Toolkit (SPT).
The project's website is located [here](http://www.sptoolkit.com/).

REQUIREMENTS:
=============

The primary requirements are Apache, PHP, & MySQL.

PREVIOUS COOKBOOK USERS: READ THIS!
==================================

The latest version of this cookbook (version 0.0.16) now supports the latest
version of the Simple Phish Toolkit (SPT); version 0.70. However, if you've
used any previous version of this cookbook you will have to **completely
remove your application, drop the spt database, & remove /etc/spt_db_pass.conf**.

Most people should be able to accomplish this by performing the following tasks.
Adjust paths according to your environment.
<pre><code>
rm -rf /var/www/spt
mysql -u root -p --execute="DROP DATABASE spt"
rm -f /etc/spt_db_pass.conf.
</code></pre>

So why do I have to completely remove my application and database? Glad you asked! Basically
all previous versions of this cookbook installed a much older version of spt and it's simply
not upgradeable. You can only upgrade from one previous version.  However, there is good
news.  After the next version of spt is released, and I write an upgrade.rb recipe, upgrading
from that point on should be fairly trivial. This is possible because there's a clear upgrade
path for this application. You can simply only be one version behind. Clear as mud?

ATTRIBUTES:
===========

<pre><code>
# Set database user name.
default[:sptoolkit][:db_user] = "spt"

# Random password is generated in default.rb
# for the database user.
default[:sptoolkit][:db_pass] = ""

# Set name of the spt database.
default[:sptoolkit][:db_name] = "spt"

# Set root directory for your webserver ( / ).
default[:sptoolkit][:www_root_dir] = "/var/www"
</code></pre>

USAGE:
======

Apply the sptoolkit recipe to your node definition.

<pre><code>
"run_list": [
    "recipe[sptoolkit]"
  ],
</code></pre>

If your web root directory is not /var/www then you'll want
to override that in a role.

BASIC COOKBOOK RUN DOWN:
========================

+__ Includes the mysql::server & apache2::mod_php5 recipes.

+__ Deploys spt to [:sptoolkit][:www_root_dir].

+__ Installs php53-mysql/php5-mysql.

+__ Sets permissions on [:sptoolkit][:www_root_dir]}/spt as the apache or www-data user.

+__ Creates spt database, spt db user, and generates random password for spt db user.

+__ Writes database credentials to /etc/spt_db_pass.conf

