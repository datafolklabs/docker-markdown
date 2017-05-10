# Python Markdown via Docker

This is a simple Docker implementation of the [Python Markdown](https://pypi.python.org/pypi/Markdown) library/utility.  It's purpose is to make it easy to generate HTML from [Markdown](https://daringfireball.net/projects/markdown/) files via Docker.


## Getting It

Available From [Docker Hub](https://hub.docker.com/r/datafolklabs/markdown/).


```bash
$ docker pull datafolklabs/markdown:latest
```


## Usage

```bash
### via stdin

$ echo /path/to/file.md | docker run -i datafolklabs/markdown


### mount volume as /data and render file(s)

$ docker run -it -v /path/to/data:/data datafolklabs/markdown file.md


```


## Example

*From this repo...*

```
$ cat example/test.md | docker run -i datafolklabs/markdown
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

Includes all standard/builtin extension as well as [pymdown-extensions](http://facelessuser.github.io/pymdown-extensions/):

```
$ echo /path/to/file.md | datafolklabs/markdown -x pymdownx.github -x extra
```


## Shell Wrapper

Download/copy/modify the included `bin/markdown` shell wrapper to `/usr/local/bin/markdown` on your system (or elsewhere) for easier use:

```
$ cat /path/to/file | markdown
```


## Future?

If this thing gets any interest, I'll be happy to take it to the next level of development and implement any feature request that come in.
