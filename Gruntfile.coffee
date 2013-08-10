module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    bower: grunt.file.readJSON 'bower.json'

    less:
      bootstrap:
        src: ['swatchmaker.less']
        dest: 'output/bootstrap.css'
      'bootstrap-responsive':
        src: ['swatchmaker-responsive.less']
        dest: 'output/bootstrap-responsive.css'

    cssmin:
      bootstrap:
        src: ['output/bootstrap.css']
        dest: 'output/bootstrap.min.css'
      'bootstrap-responsive':
        src: ['output/bootstrap-responsive.css']
        dest: 'output/bootstrap-responsive.min.css'

    concat:
      bootstrapjs:
        src: [
          'bower_components/bootstrap/docs/assets/js/transition.js'
          'bower_components/bootstrap/docs/assets/js/alert.js'
          'bower_components/bootstrap/docs/assets/js/modal.js'
          'bower_components/bootstrap/docs/assets/js/dropdown.js'
          'bower_components/bootstrap/docs/assets/js/scrollspy.js'
          'bower_components/bootstrap/docs/assets/js/tab.js'
          'bower_components/bootstrap/docs/assets/js/tooltip.js'
          'bower_components/bootstrap/docs/assets/js/popover.js'
          'bower_components/bootstrap/docs/assets/js/button.js'
          'bower_components/bootstrap/docs/assets/js/collapse.js'
          'bower_components/bootstrap/docs/assets/js/carousel.js'
          'bower_components/bootstrap/docs/assets/js/affix.js'
        ]
        dest: 'output/bootstrap.js'

    uglify:
      bootstrapjs:
        src: ['output/bootstrap.js']
        dest: 'output/bootstrap.min.js'

    watch:
      swatch:
        files: [
          'swatchmaker-responsive.less'
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
    'less:bootstrap-responsive'
    'cssmin:bootstrap'
    'cssmin:bootstrap-responsive'
    'concat:bootstrapjs'
    'uglify:bootstrapjs'
  ]