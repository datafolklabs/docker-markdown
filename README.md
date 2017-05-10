# Python Markdown via Docker

This is a simple Docker implementation of the [Python Markdown](https://pypi.python.org/pypi/Markdown) library/utility.  It's purpose is to make it easy to generate HTML from [Markdown](https://daringfireball.net/projects/markdown/) files via Docker.

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

Includes the [pymdown-extensions](http://facelessuser.github.io/pymdown-extensions/) extensions:

```
$ docker-compose run -it -v `pwd`:/data \
    datafolklabs/markdown -x pymdownx.github example/test.md
```
