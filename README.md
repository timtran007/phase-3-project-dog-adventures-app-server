# Dog Adventure App Server MVP

Dog Adventure App Server is a JSON API back end application that is built using Sinatra and Active Record. Within the application we have two models: Dog and Adventure. Their relationship consists of every dog having many adventures and an adventure belongs to a dog. 

Within this application you will be able to perform CRUD actions on adventures table as well as create and read on dogs table.

## Dog Adventure Project Description
Do you have a hard time remembering places where you have created an adventure with your dog? Well with the the Dog Adventure App, you will be able to save your adventures into the app. 

Got a new dog you would like to take on adventures? You can add them to the app as well.

The Dog Adventure project is broken into two repositories, this one is the back end API application.

You can find the front end repo [here](https://github.com/timtran007/phase-3-project-dog-adventures-client).

## Installation

First, you will need to run the following:

```terminal
bundle install
```

The code above will allow you to download all the gems that are required to run this Ruby application built with Sinatra and Active Record.

Next, you will need to run the following
```terminal
bundle exec rake db:migrate db:seed
```
The code above will migrate the tables necessary for the back end of the application to work with the models that are built out in app/models, while seeding the database with sample data into the respective tables through the seeds.rb file.

## Usage

### Try out this Active Record Code in the 

```terminal
# enter into terminal:
rake console

# returns 'Rex'
Dog.find(1).name

# returns 'Austin'
Adventure.all.first.city

```

###

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.


## License

[MIT](https://choosealicense.com/licenses/mit/)