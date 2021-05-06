# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Pokemon.get_data

#Trainer.create(name: "Ash", age: 10)

#types_list = RestClient.get 'https://pokeapi.co/api/v2/type'
#types_array = JSON.parse(types_list)["results"]
#types_array.each do |type|
    #Name and URL
#    type = Type.create(name: type["name"], url: type["url"])
#end
Type.all.each do |type|
    type_page = RestClient.get(type.url)
    type_info = JSON.parse(type_page)
    double_damage_from = ""
    type_info["damage_relations"]["double_damage_from"].each do |type|
        double_damage_from = double_damage_from + type["name"] + " "
    end
    type.update(double_damage_from: double_damage_from)
end
