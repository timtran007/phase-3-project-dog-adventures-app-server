class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

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

patch '/adventures/:id' do
    binding.pry
    adventure = Adventure.find(params[:id])
    adventure.update(
        date: params[:date],
        rating: params[:rating],
        notes: params[:notes]
    )
    adventure.to_json
end

delete '/adventures/:id' do
    adventure = Adventure.find(params[:id])
    adventure.destroy
    adventure.to_json
end

get '/dogs' do
    dogs = Dog.all
    dogs.to_json
end

post '/dogs' do
    dog = Dog.create(
        name: params[:name],
        breed: params[:breed],
        personality: params[:personality],
        dog_img_url: params[:dog_img_url]
    )
    dog.to_json
end

end
