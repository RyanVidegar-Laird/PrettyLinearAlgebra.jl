"""
    matex(input::Vector)
Takes a one-dimensional vector as input and formats it for LaTeX display.
"""
function matex(input::Vector)
	S = ""
	for i in input[1:end-1]
		S = string(S, " ", i, " \\\\")
	end
	S = string(
		"\\begin{bmatrix}", 
		S, " ", input[end],
		"\\end{bmatrix}")
	S
end

"""
    matex(input::Matrix)
Takes a two-dimensional matrix as input and formats it for LaTeX display.
"""
function matex(input::Matrix)
	S = ""
	rows = collect(eachrow(input))
	for row in rows
		for i in row[1:end-1]
			S = string(S, i, " & ")
		end
		S = string(S, last(row))
		if row != last(rows)
			S = string(S, " \\\\ ")
		end
	end	
	S = string("\\begin{bmatrix}", S, "\\end{bmatrix}")
	S
end