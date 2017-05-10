# Python Markdown via Docker

This is a simple Docker implementation of the [Python Markdown](https://pypi.python.org/pypi/Markdown) library/utility.  It's purpose is to make it easy to generate HTML from [Markdown](https://daringfireball.net/projects/markdown/) files via Docker.

There are probably better utilities already available out there (Go?), but this served a quick need and works for me.


## Getting It

Available From [Docker Hub](https://hub.docker.com/r/datafolklabs/markdown/).


```bash
$ docker pull datafolklabs/markdown:latest
```


## Usage

```bash
$ docker run -it -v /path/to/data:/data datafolklabs/markdown the_file_name.md
```


## Example

*From this repo...*

```
$ docker-compose run -it -v `pwd`:/data datafolklabs/markdown example/test.md
<h1>Header 1</h1>
<h2>Header 2</h2>
<p>Testing: </p>
<ol>
<li><em>One</em></li>
<li><strong>Two</strong></li>
<li><code>Three</code> </li>
</ol>
```


## Extensions

Includes the [pymdown-extensions](http://facelessuser.github.io/pymdown-extensions/):

```
$ docker-compose run -it -v `pwd`:/data \
    datafolklabs/markdown -x pymdownx.github example/test.md
```


## Shell Shortcut Wrapper

Download/copy the included `bin/markdown` shell wrapper to your `/usr/local/bin/markdown` on your system (or elsewhere) for easier use:

```
$ markdown example/test.md
```


## Future?

If this thing gets any interest, I'll be happy to take it to the next level of development and implement any feature request that come in.
