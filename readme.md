# Docker WPCS

A WordPress Coding Standards Dockerfile

## Usage

If you already have a phpcs.xml ruleset, you can just run the following command in your project directory:

`docker run --rm -v /local/path:/project andymardell/wpcs ./wp-content/themes/my-theme`

Or to specify a standard, you can run

`docker run --rm -v /local/path:/project andymardell/wpcs --standard=WordPress-Core ./wp-content/themes/my-theme`

## Relative paths

On OSX, at least, you can use `pwd` to mount your working directory as a volume:

```docker run --rm -v `pwd`/:/project andymardell/wpcs ./wp-content/themes/my-theme```
