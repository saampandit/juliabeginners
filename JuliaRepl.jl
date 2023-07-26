### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ ac177af6-26fa-11ee-153b-ad450cb7a166
1+2

# ╔═╡ 01a0482f-e5f1-4a4a-b1de-22afd9b0ed8e
ans

# ╔═╡ 3f19416b-e7d5-4d87-ad8e-4fee394f5a72
md"""
# Julia REPL
## Introduction to Julia REPL
### First Program Hello World

    println("Hello World")

arithmetic operators

    40 + 2
    43 - 1
    6 * 7
    6^2 + 6
    
### Introduction to typeof

    typeof(2)
    typeof(42.0)
    typeof("Hello, World")
"""

# ╔═╡ da8b7312-dc41-4d61-a50d-2853508dd444
#Unicode characters
begin
π = 3.1431
println(π)
end

# ╔═╡ 770eff82-9059-49c2-b651-dabf33c235cc
a = (b = 2+3) * 2

# ╔═╡ Cell order:
# ╠═ac177af6-26fa-11ee-153b-ad450cb7a166
# ╠═01a0482f-e5f1-4a4a-b1de-22afd9b0ed8e
# ╠═3f19416b-e7d5-4d87-ad8e-4fee394f5a72
# ╠═da8b7312-dc41-4d61-a50d-2853508dd444
# ╠═770eff82-9059-49c2-b651-dabf33c235cc
