# ssh

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with ssh](#setup)
    * [What ssh affects](#what-ssh-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with ssh](#beginning-with-ssh)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

This module is very simple to understand. I mean if you are using puppet for the first time then it would be 
better for you to start with it.
It aslo contains the use of templates as well. 
Go and get your hands dirty with this module. 
## Setup

### What ssh affects **OPTIONAL**

Best thing with this module is that it doesn't come with any dependencies you simply have to include class ssh
and rest of the things will be automatically done for you. 
You can edit variables names in params.pp by yourself if you wants to.

### Beginning with ssh

I hope you have some basic understanding of ssh before you are using this module.
If not then follow this link : https://searchsecurity.techtarget.com/definition/Secure-Shell

## Usage

Use of this module is very easy you simply need to include the class ssh.
You can check if your service is running or not by :
			systemctl status sshd (CENTos)
	For other OS service name you can find in params.pp .

## Limitations

Since , this module is very small so it's not coming with all the feature one should expect
from the ssh to have. But good news you can add yourself anything you wants to.
Else can also wait for my next updated version. :)

## Development

For any modification you want me to add in this module you can simply let me know.
Email-ID: shobhitgoel95@gmail.com 
Please make sure that subject for the email should start from this: Query on your 
puppet forge module:<module_name>

Link for GitHub account is : https://github.com/ShobhitGoel95/PuppetForgeModules
You can comment there as well.
