# omicron
A tiny HTML5 blog engine suitable for text-based browsers, inspired by Vee.

Installation:

You can simply drop the main "omicron" shell script anywhere in your system's $PATH, preferably in /usr/local/bin. Alternatively, you can use "omicron-tiny" if you prefer a single-page style blog.

Basic usage:

To automatically generate an empty blog within the current directory, invoke "omicron -c" and edit the config file that will appear in vim. Change the "webroot" setting to either "."(for a local blog) or the web address where the blog will be hosted.

To create your first blog post, invoke "omicron -e postname" and edit the entry in vim. See "omicron -h" for details on blog post format.

To delete a blog post, invoke "omicron -d postname", and omicron will delete the corresponding .raw and .html files.
