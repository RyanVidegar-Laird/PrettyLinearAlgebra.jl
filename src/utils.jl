"""
vectormesh(x::AbstractRange, y::AbstractRange)
Returns a square/rectangular grid of points generated from a x and y ranges. 
"""
function vectormesh(x::AbstractRange, y::AbstractRange)
	
	[collect(i) for i in collect(Iterators.product(x, y))]
	
end

"""
transform_steps(transform_matrix::Matrix; n_steps::Int64 = 240)
Breaks a 2x2 transformation matrix into incremental n_steps. Useful for interactive/animated transforms.
"""
function transform_steps(transform_matrix::Matrix; n_steps::Int64 = 240)
	
	basis = [1 0; 0 1]
	transforms = []
	
	for j in 1:n_steps+1
		push!(transforms, basis .+ (j/n_steps).*(transform_matrix .- basis))
	end
	
	transforms
end