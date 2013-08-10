# Create your own swatch

This is a tool used to geenrate a custom build of Twitter Bootstrap. It is basically a fork of [thomaspark/bootswatch](https://github.com/thomaspark/bootswatch). However, instead of using a Makefile, this pulls down bootstrap with [Bower](http://bower.io) and build the package with [Grunt](http://gruntjs.com). This makes things cleaner I think, and also makes it cross-platform (yes, this is working in Windows).

# How to use this

Follow these steps to build your own custom Bootstrap build.

## Requirements

You'll need to have node, npm, grunt and bower installed. Install [Node](http://nodejs.org), then run `npm install -g grunt-cli bower`

## Download Bootswatcher

[Download](https://github.com/w33ble/bootswatcher/archive/master.zip) or clone Bootswatcher

## Install Bootswatcher Dependencies

From the project root, run `npm install` and `bower install`.

## Customize Bootstrap

### CSS

Make your customizations to `swatch/variables.less` and `swatch/theme.less`. You can also copy over the less files from an existing [bootswatch theme](http://bootswatch.com/) and modify them, but the files will need to be named the same.

If you're like to break your theme down further, or include other less files (mixins, for example), edit the `swatchmaker.less` file in the project's root path. This is the file used to define custom swatches you are loading.

### JS

The Javascript build happens via Grunt. Open `Gruntfile.coffee` and comment out or remove the scripts you don't need, or add any new ones you want to include. You only need to change the files under the `concat` rule.

## Build Customized Bootstrap

From the project's root, run `grunt` or `grunt build`. Your custom Bootstrap files can be found in the `output` path.

To preview your changes, open `test/test.html` in your browser.

## Watch Process

If you are working on your theme and would like it to be rebuilt as you make changes, simply run `grunt watch` and leave the process open. Now, as you save your changes, a fresh copy of you custom Bootstrap will be save in `output`