bike_categories = "CX Mountain Road City"

puts <<EOF
Here are some bike categories:

Notice how ling returns and spacing are 
#{bike_categories} preserved.
EOF

##puts "Amelia" 'Sch' "aa" 'fs' "ma"

##first_name = "Amelia "
##last_name = "Towle"
##full_name = first_name << last_name

full_name = 'Amelia ' 'Towle'


def full_name (first, last)
	first + " " + last
end

puts full_name "Amelia", "Towle"