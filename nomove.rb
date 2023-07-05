module No_move
	def self.is_move(arr)
		i,j=0,0
		for i in (0..2)
			for j in (0..2)
				if arr[i][j]=='_'
					return true
				end
			end
		end
		return false
	end
end