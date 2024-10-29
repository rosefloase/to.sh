# [to.sh](https://github.com/rosefloase/tosh) 

`to.sh` is a simple script that fixes a simple problem: Jade Harley has no idea how to set up subdomains on apache servers!!! :(

this script was made just so that the original author could easily switch what website was currently loaded into htdocs with just a few characters... 
if you have two sites, SITE1 and SITE2, you can just run `to.sh SITE2` 
to move `htdocs` to `htdocs_SITE1`, and to then move `htdocs_SITE2` to `htdocs`
site1 site2 and site3 are the default 3 sites in this repo, but you should probably rename your sites with ``--name``, once you've figured out the names of your sites :p

to set up `to.sh`, copy the main script, template.toInf, and tosh.conf into whatever directory needs it! then, optionally, run `alias to.sh="bash to.sh"` to be able to run `to.sh` without having to first write `bash`

`tosh.conf` stores what editor ``--name`` will use, and the name of the folder that will be switched around (default is ``htdocs``) 

run ``to.sh --help`` if you need _slightly_ more info

wtfpl <3
