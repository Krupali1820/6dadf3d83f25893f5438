class Api::SudokuController < ApplicationController
	def calculate
		two_d_array = params["data"]

		#making complete 9x9 grid with element 0
		(0...9).each do |i|
		  (0...9).each do |j|
		    two_d_array[i][j] = 0 unless two_d_array[i][j].present?
		  end
		end
		#converting array to 3x3 grid chunks
		chunks = two_d_array.each_slice(3).map{|stripe| stripe.transpose.each_slice(3).map{|chunk| chunk.transpose}}.flatten(1)

		#iterate 3x3 chunk and add number from 1-9 
		(0...9).each do |x|
			(0...3).each do |i|
				(0...3).each do |j|
					if chunks[x][i][j] == 0 && chunks[x].all?{|row| has_nine_unique_elements?(row) } && chunks[x].all?{|column| has_nine_unique_elements?(column) }
						chunks[x][i][j] = rand(1..9)

					end 				
				end
			end
		end
		result = valid_sudoku?(two_d_array)
		if result
			render :json => {solution: two_d_array}
		else
			render :json => {message: "invalid sudoku"}
		end
	end

	def has_nine_unique_elements?(sudoku_game)
    sudoku_game.flatten(1).uniq.size == 9
  end

  def valid_sudoku?(sudoku_game)
	  has_nine_unique_elements?(sudoku_game) &&
	  sudoku_game.all?{|row| has_nine_unique_elements?(row) } &&
	  sudoku_game.all?{|column| has_nine_unique_elements?(column) } &&
	  extract_chunks(sudoku_game).all?{|chunk| has_nine_unique_elements?(chunk) }
	end

	def extract_chunks(sudoku_game)
	  sudoku_game.each_slice(3).map{|stripe| stripe.transpose.each_slice(3).map{|chunk| chunk.transpose}}.flatten(1)
	end
end