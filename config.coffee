exports.config =
  # See docs at http://brunch.readthedocs.org/en/latest/config.html.
  conventions:
    ignored: /(^bower_components\\.*\.less)|(^bower_components\/.*\.less)|(^|\/)node_modules\/|(^|\/)_/
    assets: /^app\/assets\//
  modules:
    definition: false
    wrapper: false
  paths:
    public: 'public'
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^bower_components/
        'test/scenarios.js': /^test(\/|\\)e2e/

    stylesheets:
      joinTo:
        'css/app.css': /^(app)/
      order:
        before: [
          'app/styles/app.less'
        ]

    templates:
      joinTo: 
        'js/dontUseMe' : /^app/ # dirty hack for Jade compiling.

  plugins:
    jade:
      pretty: yes # Adds pretty-indentation whitespaces to output (false by default)
    jade_angular:
      modules_folder: 'partials'
      locals: {}

  server: 
    path: 'server.coffee'
    port: 3333
    base: '/'
    app: 'express'
    debug: 'brunch:server'
    persistent: true
    interval: 100
    watched: ['express']
    ignore: /(^[.#]|(?:~)$)/
    source: /.*\.coffee$/

