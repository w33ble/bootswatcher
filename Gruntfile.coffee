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

    watch:
      swatch:
        files: [
          'swatchmaker-responsive.less'
          'swatchmaker.less'
          'swatch/**/*.less'
        ]
        tasks: ['default']

  grunt.loadNpmTasks 'grunt-contrib-less'
  grunt.loadNpmTasks 'grunt-contrib-cssmin'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', [
    'build'
  ]

  grunt.registerTask 'build', [
    'less:bootstrap'
    'less:bootstrap-responsive'
    'cssmin:bootstrap'
    'cssmin:bootstrap-responsive'
  ]