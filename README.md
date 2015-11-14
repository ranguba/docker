# Dockerfile for Rroonga

* Source Dockerfiles for [groonga/rroonga](https://hub.docker.com/r/groonga/rroonga/)

## Try test

```
$ docker run --name rroonga -it groonga/rroonga
irb(main):001:0> require 'groonga'
=> true
irb(main):002:0> Groonga::VERSION
=> [5, 0, 9, nil]
irb(main):003:0> Groonga::Context.default_options = {:encoding => :utf8}
=> {:encoding=>:utf8}
.
.
```

Let's play the [tutorial](http://ranguba.org/rroonga/en/file.tutorial.html)!

## Create Dockerfile of the Rroonga Application

Add your Dockerfile. See [ongaeshi/docker-honyomi](https://github.com/ongaeshi/docker-honyomi).

```
FROM groonga/rroonga:latest

# Add your setting
```

## Build image (if necessary)

```
$ git clone https://github.com/ranguba/docker.git docker-rroonga
$ cd docker-rroonga
$ sudo docker build -t rroonga .
```

OR

```
$ sudo docker pull groonga/rroonga
```

## Contribution

- Patches welcome both test-script and Dockerfile.
