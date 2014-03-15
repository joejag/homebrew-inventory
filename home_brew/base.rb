module HomeBrew
  class Base < Sinatra::Base

    configure do
      # Setting the root for AssetPack
      set :root, File.dirname(__FILE__)
      register Sinatra::AssetPack

      # Log to console all REST communication
      RestClient.log = Object.new.tap do |proxy| def proxy.<<(message) puts message end; end
    end

  end
end
