### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ cc383554-3c27-11ee-17a4-8538a6168125
md"""
## Recursion
> What is Recursion?
Recursion is a programming technique where a function calls itself to solve certain types of problem. We certainly know that we can call function inside function. So a can call itself too.
"""

# ╔═╡ d0301406-11c7-48e9-823e-052a27864557
md"""
## Factorial using Recursion
fact(n) = n * fact(n-1).

4! = 4 * 3 * 2 * 1
"""

# ╔═╡ 6e089e76-9287-4484-a8a5-6b7bf4539947
function fact(n)
	if n == 0 || n == 1
		return 1
	else
		return n * fact(n-1)
	end
end

# ╔═╡ ca5b7028-edf4-4e93-89be-92056eabd6c4
function fact(n::Int)
	@show n
	if n == 0 || n == 1
		return 1
	else
		result = n * fact(n-1)
		@show result
		return result
		
	end
end

# ╔═╡ 994c8af5-2d66-4470-8338-e0b55b7f9387
fact(4)

# ╔═╡ 943e1925-beee-4169-8608-63103e604f31
md"""
									  factorial(4)
                                         |
                                         v
                                      factorial(3)
                                         |
                                         v
                                      factorial(2)
                                         |
                                         v
                                      1
                                         |
                                         v
                                      factorial(3)
                                         |
                                         v
                                      factorial(4)
                                         |
                                         v
                                      12
"""

# ╔═╡ 73a03fd7-41b6-4a30-81cc-7247d264c7b1
fact(3)

# ╔═╡ 5aa9edfd-6cfd-4d91-bdc2-43a612f50186
md"""
## Fibonacci Example
"""

# ╔═╡ f13b398d-20ed-4646-a048-0ce39039965b
function fib(n::Int)
	if n == 0
		return 0
	elseif n == 1
		return 1
	else
		return fib(n-1) + fib(n-2)
	end
end

# ╔═╡ 3293306f-4933-4bf7-bcbd-7997c4baa35f
fib(6)

# ╔═╡ 6cf54c4c-af78-4ec1-821f-17fc20192ce6
fib(0)

# ╔═╡ bd79ebbd-0c4c-47f7-b356-e7b0d3b361dd
fib(9)

# ╔═╡ Cell order:
# ╟─cc383554-3c27-11ee-17a4-8538a6168125
# ╠═d0301406-11c7-48e9-823e-052a27864557
# ╠═6e089e76-9287-4484-a8a5-6b7bf4539947
# ╠═994c8af5-2d66-4470-8338-e0b55b7f9387
# ╠═ca5b7028-edf4-4e93-89be-92056eabd6c4
# ╟─943e1925-beee-4169-8608-63103e604f31
# ╠═73a03fd7-41b6-4a30-81cc-7247d264c7b1
# ╠═5aa9edfd-6cfd-4d91-bdc2-43a612f50186
# ╠═f13b398d-20ed-4646-a048-0ce39039965b
# ╠═3293306f-4933-4bf7-bcbd-7997c4baa35f
# ╠═6cf54c4c-af78-4ec1-821f-17fc20192ce6
# ╠═bd79ebbd-0c4c-47f7-b356-e7b0d3b361dd
