# Installing packages required for mariadb

mariadb:
  pkg.installed:
   - pkgs:
     - mariadb-client
     - mariadb-server

# Creating an .sql file to create a database for Joomla. 
# these parts are edited, but they are originally from Tero Karvinen (terokarvinen.com) 

/tmp/joomladb.sql:
  file.managed:
    - mode: 600
    - source: salt://mariadb/joomladb.sql

# Avoiding errors with this state

'cat /tmp/joomladb.sql|mariadb -u root':
  cmd.run:
    - unless: "echo 'show databases'|sudo mariadb -u root|grep '^joomla$'"
