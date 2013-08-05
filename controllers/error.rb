class Zlf<Sinatra::Base
    get '/error' do
        @title='sorry'
        slim :error
    end
end




