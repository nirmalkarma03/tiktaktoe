module Win
	def self.check_win(arr,player)
		#checking same row
		i,j=0,0
		for i in (0..2)
			if arr[i][0]==player&&arr[i][1]==player&&arr[i][2]==player
			   return 	player=='X'? 1 : -1
			end
		end

		#chek same collumn
		for j in (0..2)
			if arr[0][j]==player&&arr[1][j]==player&&arr[2][j]==player
				
				return 	player=='X'? 1 : -1
			end
		end

		#chek diagonal
		if arr[0][0]==player&&arr[1][1]==player&&arr[2][2]==player
				return 	player=='X'? 1 : -1
		end

		if arr[0][2]==player&&arr[1][1]==player&&arr[2][0]==player
				return 	player=='X'? 1 : -1
		end

   end
end








