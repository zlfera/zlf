class Zlf<Sinatra::Base
    get '/' do
        @title='曾令发'
        slim :index 
    end
end