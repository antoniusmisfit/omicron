# Omicron

A tiny HTML5 blog engine suitable for text-based browsers, inspired by Vee.

# Installation

You can simply drop the main "omicron" shell script anywhere in your system's $PATH, preferably in /usr/local/bin. Alternatively, you can use "omicron-tiny" if you prefer a single-page style blog.

Note: If there is no Bash shell installed on your system, you must use [shoeblog](https://github.com/antoniusmisfit/shoeblog) instead.

Basic usage
-----------

To automatically generate an empty blog within the current directory, invoke `omicron -c` and edit the config file that will appear in vim. Change the "webroot" setting to either "."(for a local blog) or the web address where the blog will be hosted.

To create your first blog post, invoke `omicron -e postname` and edit the entry in vim. See `omicron -h` for details on blog post format.

To delete a blog post, invoke `omicron -d postname`, and omicron will delete the corresponding .raw and .html files.

# HTMLwrap

A standalone utility that takes a plain text file and dumps an HTML5 wrapped version of it to standard output.

## Installation

HTMLwrap can be dropped anywhere in your system's $PATH, preferably in /usr/local/bin.

## Basic usage
-----------

You can instantly generate a web page by redirecting HTMLwrap output to a file:

`htmlwrap -t "My Awesome Web Page" input.txt > output.html`

or you can pipe the output to your favorite text editor for quick editing:

`htmlwrap -t "My Awesome Web Page" input.txt | vim -`

See `htmlwrap -h` for more usage details.
