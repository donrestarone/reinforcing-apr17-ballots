ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

def tally_votes(ballot_object)
	positions = {}

	ballot_object.each do |hash|
		
		hash.each do |position, name|
			if positions[name] == nil
				positions[name] = position
			else 
				positions[name] += position 
			end 
		end 

	end 
return positions
end 


# def voter_preference(ballot)
# 	ballot = 0 
	


# end 

puts tally_votes(ballots)



# in positions[:key] if name is already key in positions
# 	increment value 
# else 
# 	start at 0 += position 