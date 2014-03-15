module HomeBrew
  class Inventory < Base

    configure do
      assets {
        js :app, '/js/app.js',                    [ '/js/vendor/*.js',  '/js/lib/sleep*.js' ]
        css :application, '/css/application.css', [ '/css/vendor/*.css','/css/lib/*.css' ]
      }
    end

    get '/' do
      erb :inventory
    end

  end
end
