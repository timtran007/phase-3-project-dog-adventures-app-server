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
            notes: params[:notes],
            dog_id: params[:dog_id]
        )
        adventure.to_json
    end

    patch 'adventures/:id' do
        adventure = Adventure.find(:id)
        adventure.update(
            date: params[:date],
            rating: params[:rating],
            notes: params[:notes]
        )
        adventure.to_json
    end

    delete 'adventures/:id' do
        adventure

end