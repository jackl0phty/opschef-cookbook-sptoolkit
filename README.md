Travis-ci status: [![Build Status](https://secure.travis-ci.org/jackl0phty/opschef-cookbook-sptoolkit.png?branch=master)](http://travis-ci.org/jackl0phty/opschef-cookbook-sptoolkit)

DESCRIPTION:
============

This cookbook will install Simple Phish Toolkit (SPT).
The project's website is located [here](http://www.sptoolkit.com/).


REQUIREMENTS:
=============

The primary requirements are Apache, PHP, & MySQL.

ATTRIBUTES:
===========

<pre><code>
# Set database options
default[:sptoolkit][:db_user] = "spt"

# Random password is generated in default.rb
default[:sptoolkit][:db_pass] = ""

default[:sptoolkit][:db_name] = "spt"
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


