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
				positions[name] = voter_preference(position)
				#p positions
				
			else 
				positions[name] += voter_preference(position)
				#p positions 
				
			end 
		end 

	end 
return positions
end 

def count_ballots 

end


def voter_preference(position)
	
	
	if position == 1 
		return 3 
	elsif position == 2
		return 2
	else 
		return 1
	end

	
end 

puts tally_votes(ballots)


