puts "🌱 Seeding spices..."


rex = Dog.create(
    name: "Rex",
    breed: "German Shepherd",
    personality: "shy",
    img_url: "http://dogwalkinghtx.com/wp-content/uploads/2021/09/Rex-Sitting-768x960.jpg"
)


bubbles = Dog.create(
    name: "Bubbles",
    breed: "Mix breed",
    personality: "adventurous",
    img_url: "https://www.hartz.com/wp-content/uploads/2022/06/purebred-dogs-vs-mixed-breed-2.jpg"
)
Adventure.create(
    image_url: "http://vimandvintage.files.wordpress.com/2013/01/tree-at-red-bud-trail.jpg",
    date: "2022-12-16",
    city: "Austin",
    location: "Red Bud Isle",
    rating: 1,
    notes: "Saw a note dogs can't swim here anymore",
    dog_id: rex.id
)

Adventure.create(
    image_url: "https://www.theboneadventure.com/images/bone-backyard/george-tree.jpg",
    date: "2022-12-11",
    city: "Houston",
    location: "Grandma's House",
    rating: 5,
    notes: "Wants to play but don't know how to start",
    dog_id: rex.id
)

Adventure.create(
    image_url: "https://images.ctfassets.net/rt5zmd3ipxai/MI06ml0gJhLkSBvdWZ1Fy/39efe54039c02312ff9d0af0b099ec9c/austin_vet_hospital_front_building.jpg",
    date: "2022-06-24",
    city: "Austin",
    location: "Austin Vet Hospital",
    rating: 5,
    notes: "Very efficient",
    dog_id: bubbles.id
)

Adventure.create(
    image_url: "http://vimandvintage.files.wordpress.com/2013/01/tree-at-red-bud-trail.jpg",
    date: "2022-12-16",
    city: "Austin",
    location: "Red Bud Isle",
    rating: 1,
    notes: "Saw a note dogs can't swim here anymore",
    dog_id: bubbles.id
)

Adventure.create(
    image_url: "https://www.theboneadventure.com/images/bone-backyard/george-tree.jpg",
    date: "2022-12-11",
    city: "Houston",
    location: "Grandma's House",
    rating: 5,
    notes: "Loves playing with other dogs",
    dog_id: bubbles.id
)



puts "✅ Done seeding!"
