# Installing Joomla

getjoomla:
  cmd.run:
    - name: sudo wget https://downloads.joomla.org/cms/joomla3/3-9-16/Joomla_3-9-16-Stable-Full_Package.zip -P /tmp/

# Unzipping joomla, this took forever to create and various interwebs browsings.

unzipjoomla:
  archive.extracted:
    - name: /var/www/html/joomla
    - source: /tmp/Joomla_3-9-16-Stable-Full_Package.zip 
    - archive_format: zip
    - enforce_toplevel: False

# Giving joomla the proper rights to run

/var/www/html/joomla:
  file.directory:
    - user: www-data
    - group: www-data
    - mode: 755
    - recurse:
      - user
      - group
      - mode

# Idempotent, removing the zip file after installation is complete

zipremoval:
  cmd.run:
    - name: sudo rm -r /tmp/Joomla_3-9-16-Stable-Full_Package.zip
