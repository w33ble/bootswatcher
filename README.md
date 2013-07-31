# Create your own swatch

This is a tool used to geenrate a custom build of Twitter Bootstrap. It is basically a fork of [thomaspark/bootswatch](https://github.com/thomaspark/bootswatch), but ditches the Makefile and junk in favor of using bower and grunt. It also uses grunt for the watch process, instead of relying on ruby.

## 1. Download Bootswatcher

[Download](https://github.com/w33ble/bootswatcher/archive/master.zip) or clone Bootswatcher


## 2. Install Dependencies

You'll need to have node, npm, grunt and bower installed. If you already have node and npm installed, simply run `npm install -g grunt-cli bower`

## 3. Install Bootswatcher Dependencies

From the project root, run `npm install`. This will also run `bower install` for you, which will install a copy of Twitter Bootstrap that Bootswatcher will be working with.

## 4. Customize Bootstrap

Make your customizations to the two files found in `swatch`: `variables.less` and `swatch.less`. You can also copy over the less files from an existing theme and modify them, but they will need to be named the same.

If you're like to break your theme down further, or include other less files (mixins, for example), edit the `swatchmaker.less` and `swatchmaker-responsive.less` files in the project's root path. These are the files used to define custom swatches you are loading.

## 5. Build Customized Bootstrap

From the project's root, run `grunt build` or simply just `grunt`.

Your custom Bootstrap build can be found in the `output` path.

## 6. Bonus Watch Build

If you are working on your theme and would like it to be rebuilt as you make changes, simply run `grunt watch` and leave the process open. Now, as you save your changes, a fresh copy of you custom Bootstrap will be save in `output`