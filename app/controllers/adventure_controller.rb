class AdventureController < ApplicationController
    get '/adventures' do
        adventures = Adventure.all
        adventures.to_json
    end

    post '/adventures' do
        adventure = Adventure.create(
            image_url: params[:image_url],
            date: params[:date],
            name_of_place: params[:name_of_place],
            location: params[:location],
            rating: params[:rating],
            dog_id: params[:dog_id]
        )
    end
end