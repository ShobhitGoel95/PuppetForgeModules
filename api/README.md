# api

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with api](#setup)
    * [What api affects](#what-api-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with api](#beginning-with-api)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

This module is for automatiic installation and configuration of API package. One have to simply change some parameters and everything will be done in background for you.

## Setup

The setup is very easy:
	1) For installing for non-HAproxy: simply change the parameters "front" & "back" in params.pp to false .
	Also you have to specifically mention the ip of your admin node in "file_front" & "file_back" pp files.

	2) For installing with HA-Proxy: Change parameters "front" & "back" i params.pp to true.
	Same as for non-HAproxy case put the ip of admin node in both the files. 
 
### Setup Requirements **OPTIONAL**

You'll be requiring 4 vm's one for your puppet master node and 3 for agent nodes.
As on one agent you'll install ADMIN node and on other Back & Front nodes.

Make sure all the agents are properly connected with master node. 
For checking purpose type the command: "puppet agent -t --noop "

### Beginning with api

After using and successful execution of this module you will be able to see front and back nodes on ADmin url.
Url for admin node: https://<ip_admin>:8090  UN:admin pwd: changeme (You can change them in file_admin.pp as well).

URL for front node: https://<ip_front>:8075  UN:apiadmin pwd:changeme (can change in file_front.pp file).

## Usage
 	1) For installing for non-HAproxy: simply change the parameters "front" & "back" in params.pp to false .
        Also you have to specifically mention the ip of your admin node in "file_front" & "file_back" pp files.

        2) For installing with HA-Proxy: Change parameters "front" & "back" i params.pp to true.
        Same as for non-HAproxy case put the ip of admin node in both the files.
After using and successful execution of this module you will be able to see front and back nodes on ADmin url.
Url for admin node: https://<ip_admin>:8090  UN:admin pwd: changeme (You can change them in file_admin.pp as well).

## Reference

In case you find any issue you can reach out to me on Git I will try to help you as much as i can.

## Limitations

No limitations as of you.But try to remove that manual setting for ip of admin node as well in my next update.

## Development

You can reach out to me on Git in case you have some doubts or some idea for making module more usable.
We can work on it together.

## Release Notes/Contributors/Etc. **Optional**

If you aren't using changelog, put your release notes here (though you should
consider using changelog). You can also add any additional sections you feel
are necessary or important to include here. Please use the `## ` header.
