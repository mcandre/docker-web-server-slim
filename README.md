# docker-web-server-slim - a slim Docker container running a continuous Apache server

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-web-server-slim/

# ABOUT

docker-web-server-slim is a container for serving Web pages, made smaller with a few techniques:

* Switch base image from [ubuntu](https://registry.hub.docker.com/_/ubuntu/) to [debian](https://registry.hub.docker.com/_/debian/).

# EXAMPLE

```
$ make
docker run -d -p 80:80 mcandre/docker-web-server-slim
bee6f25b0210ab2c5ebd1200996597197cbeba75a510adbaded5a88821c6b24f
curl http://$(boot2docker ip) | head
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 11104  100 11104    0     0  4409k      0 --:--:-- --:--:-- --:--:-- 5421k

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Apache2 Debian Default Page: It works</title>
    <style type="text/css" media="screen">
  * {
    margin: 0px 0px 0px 0px;
    padding: 0px 0px 0px 0px;
docker images | grep mcandre/docker-web-server-slim | awk '{ print $(NF-1), $NF }'
193.2 MB
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [curl](http://curl.haxx.se/)
* [make](http://www.gnu.org/software/make/)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io curl build-essential
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io curl
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/)
* [boot2docker](http://boot2docker.io/)

### Mac OS X

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install virtualbox vagrant
$ brew install boot2docker curl
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install docker curl make
```
