module Print_m
	def self.print_array(arr)
		i,j=0,0
		for i in (0..2)
			for j in (0..2)
				unless j>1
				   print arr[i][j]," | "
         else
			    	print arr[i][j]
			    end

			end
			puts
		end
	end
end