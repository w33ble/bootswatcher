module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    bower: grunt.file.readJSON 'bower.json'

    less:
      bootstrap:
        src: ['swatchmaker.less']
        dest: 'output/bootstrap.css'

    cssmin:
      bootstrap:
        src: ['output/bootstrap.css']
        dest: 'output/bootstrap.min.css'

    concat:
      bootstrapjs:
        src: [
          'bower_components/bootstrap/js/transition.js'
          'bower_components/bootstrap/js/alert.js'
          'bower_components/bootstrap/js/modal.js'
          'bower_components/bootstrap/js/dropdown.js'
          'bower_components/bootstrap/js/scrollspy.js'
          'bower_components/bootstrap/js/tab.js'
          'bower_components/bootstrap/js/tooltip.js'
          'bower_components/bootstrap/js/popover.js'
          'bower_components/bootstrap/js/button.js'
          'bower_components/bootstrap/js/collapse.js'
          'bower_components/bootstrap/js/carousel.js'
          'bower_components/bootstrap/js/affix.js'
        ]
        dest: 'output/bootstrap.js'

    uglify:
      bootstrapjs:
        src: ['output/bootstrap.js']
        dest: 'output/bootstrap.min.js'

    watch:
      swatch:
        files: [
          'swatchmaker.less'
          'swatch/**/*.less'
          'Gruntfile'
        ]
        tasks: ['default']

  grunt.loadNpmTasks 'grunt-contrib-less'
  grunt.loadNpmTasks 'grunt-contrib-cssmin'
  grunt.loadNpmTasks 'grunt-contrib-concat'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', [
    'build'
  ]

  grunt.registerTask 'build', [
    'less:bootstrap'
    'cssmin:bootstrap'
    'concat:bootstrapjs'
    'uglify:bootstrapjs'
  ]