class Type < ApplicationRecord

    def self.get_type_data
        types_list = RestClient.get 'https://pokeapi.co/api/v2/type'
        types_array = JSON.parse(types_list)["results"]
        types_array.each do |type|
        #Name and URL
            type = Type.create(name: type["name"], url: type["url"])
        end
        self.all.each do |type|
            type_page = RestClient.get(type.url)
            type_info = JSON.parse(type_page)
    
            #WEAK TO
            #2x damage from
            double_damage_from = ""
            type_info["damage_relations"]["double_damage_from"].each do |type|
                double_damage_from = double_damage_from + type["name"] + " "
            end
            type.update(double_damage_from: double_damage_from)

            #half_damage_to
            half_damage_to = ""
            type_info["damage_relations"]["half_damage_to"].each do |type|
                half_damage_to = half_damage_to + type["name"] + " "
            end
            type.update(half_damage_to: half_damage_to)

            #STRONG AGAINST
            #2x damage to
            double_damage_to = ""
            type_info["damage_relations"]["double_damage_to"].each do |type|
                double_damage_to = double_damage_to + type["name"] + " "
            end
            type.update(double_damage_to: double_damage_to)

            #half_damage_from
            half_damage_from = ""
            type_info["damage_relations"]["half_damage_from"].each do |type|
                half_damage_from = half_damage_from + type["name"] + " "
            end
            type.update(half_damage_from: half_damage_from)

            #INEFFECTIVE
            #no_damage_from
            no_damage_from = ""
            type_info["damage_relations"]["no_damage_from"].each do |type|
                no_damage_from = no_damage_from + type["name"] + " "
            end
            type.update(no_damage_from: no_damage_from)

            #no_damage_to
            no_damage_to = ""
            type_info["damage_relations"]["no_damage_to"].each do |type|
                no_damage_to = no_damage_to + type["name"] + " "
            end
            type.update(no_damage_to: no_damage_to)
        end    
    end
end
