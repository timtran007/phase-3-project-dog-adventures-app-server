class AdventureController < ApplicationController
    get '/adventures' do
        adventures = Adventure.all
        adventures.to_json
    end
end