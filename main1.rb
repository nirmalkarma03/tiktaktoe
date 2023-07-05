$LOAD_PATH << '.'
require 'Print_m'
require 'win'
require 'nomove.rb'

$b=[['_','_','_'],['_','_','_'],['_','_','_']]
PLAYER1='X'
PLAYER2='O'
class Main1

	include Print_m
	include Win
	include No_move
end

  $player=PLAYER1
  puts "player #{$plyer} enter value of ROW and COL between 0 to 2"
  run=No_move.is_move($b)
   while run==true  do
    puts  
   	Print_m.print_array($b)
   	puts
   	puts "player : #{$player} turn "
  	print 'enter row value :'
  	row=Integer(gets)
  	print  'enter col value :'
  	col=Integer(gets)
  	# puts $row + $col
  	if $b[row][col]=='_'
  			 $b[row][col]=$player
  		   run=No_move.is_move($b)
  		     if run==false 
            	puts '.........match is draw.....'
           end

  	  	 t=Win.check_win($b,$player)
  	   	 if t==1 
  			   puts "--------> player #{PLAYER1} win game <----"
  			   run=false
  	   	 elsif t==-1
  			    puts "--------> player #{PLAYER2} win game <------"
  			    run=false
  		   end
   			 $player=$player=='X'?PLAYER2 : PLAYER1
  		  
  	else
  		puts 'Invalid row or collum try again'
  	end
  	# Print_m.print_array($b)
  end
  # if No_move.is_move($b)==false 
  # 	puts '.........match is draw.....'
  # end


# $b.display
