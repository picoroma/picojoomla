# saltyjoomla

This module was created as the "final project" for [ICT4TN022 "Configuration Management Systems"](http://terokarvinen.com/2018/aikataulu--palvelinten-hallinta-ict4tn022-3004-ti-ja-3002-to--loppukevat-2018-5p) 

This module is also under GPL Version 3 or later.

Creator: Tuomas Olkinuora (2018)

# What is Joomla you ask.

Joomla is a free and open-source content management system (CMS) for publishing web content. 
[More about Joomla here](https://en.wikipedia.org/wiki/Joomla)

# What does this module do?

Simply put, it creates a joomla testing environment. 

**I would suggest caution, since this is by no means a secure module and I would suggest to not use it outside of a lab environment**

It was created for the sole purpose of quickly creating a testing environment for Joomla themes, templates and whatnot. This module is setup so that you can acces Joomla through localhost/joomla and the login details are listed below.

I made it so that you can manage the website settings yourself, since it only takes a few seconds.

# How do I install the module?

Glad you asked. You start by grabbing the bash "setup script" from my repo and running it in /home/xubuntu/

```bash
§ wget https://raw.githubusercontent.com/AlfieLinux/saltyjoomla/master/saltyjoomla.sh
§ bash saltyjoomla.sh
```

You can use whatever email, username, description and password you want for the superuser.

Database Configuration credentials are as follows and they are preset:

```
Host name: localhost
user: joomla
password: jui;laeng3tah?yaeFai
Database Name: joomla
Table Prefix: can be anything
```

Congratulations, now you have joomla readily installed on your server.

As a friendly reminder, this is not server safe installation at all. You should be cautious when using this.

# Additional information

So far this module only works on Xubuntu 18.04 (might work on other Xubuntus, but it somehow had a few errors when I tried it on 16.04 using vagrant). I tried in on the lab computer at my school and it worked like a charm (12.12.2018).
