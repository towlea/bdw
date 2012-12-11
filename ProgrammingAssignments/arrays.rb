# def ass_hat (material)
# 	materials = ['nylon' 'cotton' 'wool']

# 	if materials.include?(material.downcase)
# 	"Built ass hat with #{material}"
# else
# 	"Sorry can't do that"
# end
# end

# puts ass_hat ("leather")


# def ass_hat (level, warm, material)
# 	"You're an ass hat of level #{level}!! You R rating is #{ass_hat_warm_rating (warm)} and material is #{material}."
# end

# def ass_hat_warm_rating(warm_rating)
# 	warm_rating * 2
# end

# ass_hat_level = 5

# puts ass_hat(ass_hat_level, 25) #same as puts ass_hat(5)

# puts ass_hat(ass_hat_level, 45, "nylon")

# puts ass_hat(ass_hat_level, 12)

# puts ass_hat(ass_hat_level, 8)



def sunday
	"Time to go food shopping!"
end

def shopping_list(list, time, money)
	"Today you have to purchase #{list} at #{places_to_shop}. You have #{time} minutes and #{money} dollars."
end

def places_to_shop
	"whole_foods, king_supers, or safeway"	
end






def shop_list(thing)
	
	list = ['milk' 'eggs' 'fruit' 'veggies']

	if list.include?(thing)
		"You can buy these #{list} items"
	else
		"Sorry you can't afford that"
	end

end




puts shopping_list('milk eggs', "60", "50")
puts "Can I afford salmon?"
puts shop_list("salmon")



# time = "60"

# money = "50"

# # puts shopping_list(list, time, money)


# # puts places_to_shop('whole_foods', 'king_supers', 'safeway')

# store1 = "whole_foods"

# store2 = "king_supers"

# store3 = "safeway"

# # puts places_to_shop(store1, store2, store3)

