function plot_transform_frame(transforms::Array, vecmesh::Array, frame::Int64)
       
    transforms = transform_steps([0 -1; 1 0]; n_steps=240)
    vecsₜ = [transforms[frame] * i for i in vecs]
    
    x = vec(first.(vecsₜ))
    y = vec(last.(vecsₜ))
    
    fig = Figure()
    ax = Axis(fig[1,1])
    
    hlines!(ax, 0, linewidth=3)
    vlines!(ax, 0, linewidth=3)
        
    scatter!(x, y, color = cols)
    
    xlims!(-10, 10)
    ylims!(-10, 10)
    
    fig
end
        