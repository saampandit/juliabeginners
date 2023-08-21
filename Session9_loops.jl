### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ c0b71afe-377e-11ee-06ba-fde64f9769d2
md"""
# For Loops
"""

# ╔═╡ 1e96901c-5fdf-42b5-bbc1-40e733b4297e
for i in [1,4,0]
	println(i)
end

# ╔═╡ ffd8a2d7-8e15-4aa8-a034-98b6476da975
for i in 1:5
	println(i)
end

# ╔═╡ 2e35dfe7-caba-4d59-a20d-db61956bc2f4
for i in 10:-2:1
	println(i)
end

# ╔═╡ f1200757-bed0-4562-9947-53a400a50393
for i in 10:-2:-10
	println(i)
end

# ╔═╡ 81bbdbf5-358a-47c8-af60-28c5ec3fe12a
for i in 10:-2:20
	println(i)
end

# ╔═╡ df6b7435-e755-4710-8117-4ef2c298d4e0
for i in 1:10
	println(i)
	if i == 5
		break
	end
end

# ╔═╡ c62a1079-90eb-4476-82e4-7c10391fb920
for i in 1:10
	println(i)
	if i == 5
		continue
	end
end

# ╔═╡ 77e552af-98fa-4ae5-888d-18deb2282ba1
for i in 1:5
	@show i
end

# ╔═╡ 2672e245-5d83-41b1-b4c5-b7f8091b453b


# ╔═╡ f541dd82-429d-4bdd-acaf-ddfb6ba4ecf2
md"""
# Nested FOR loops
"""

# ╔═╡ 37695ee5-ae69-4ca7-b477-8a3a0200acbb
for i in 1:3
	for j in 1:3
		@show (i, j)
	end
end

# ╔═╡ 7db1f184-2ede-408e-bfd4-d4177e45f7e4
for i in 1:3, j in 1:3
	@show (i, j)
end

# ╔═╡ 787075a9-ec44-4e49-8399-29d109918d53
for i in 1:3
	for j in 1:3
		j > 3 && break
		@show (i, j)
	end
end

# ╔═╡ 3dd20eac-8944-4a31-96f4-28e5a02fb0e3
for i ∈ 1:3, j ∈ 1:3
	@show (i, j)
end

# ╔═╡ c3bf4d59-f841-4ead-9341-5d0410e70a42
# Sum of first 100 numbers
begin
	sum = 0
	for i ∈ 1:100
		sum += i
	end
	sum
end

# ╔═╡ 9865af33-3837-4301-9fa2-de637b36161a
for i in "HelloWorld"
	@show i
end

# ╔═╡ ea7ac6e7-aa7e-43aa-8d37-f151851aad9b
md"""
## While Loop in Julia
"""

# ╔═╡ 5288ce21-52e3-4f79-afb1-ef72674fd06b
md"""
while expression
	statement(s)
end
"""

# ╔═╡ c053f34b-e30c-44c4-8e7a-f440f20c9065
n = 10

# ╔═╡ 39c8e0b0-ef35-486f-940e-560220f74433
while n > 0
	print(n, " ")
	n = n - 1
end

# ╔═╡ 4efc9e47-2001-4c2e-97e0-1f0db6800534
# ╠═╡ disabled = true
#=╠═╡
while true
	print("> ")
	line = readline()
	if line == "done"
		break
	end
	println(line)
end
  ╠═╡ =#

# ╔═╡ f0c4f1d2-735f-414d-aa9c-6fad697fc8c6
i = 1

# ╔═╡ 54aad4a3-4df7-449d-b765-64d0a1f1be82
while i <= 5
	@show i
	i += 1
end

# ╔═╡ 7efa1a05-71f8-4eb5-a320-b40f77295f6d
begin
	# Fibonnaci Series example
	#n = 15

	a = 0
	b = 1 
	itr = 0
	while itr < 15
		# Print the fibonnaci value
		print(a, " ")
		c = a + b
		# @show c
	
		global a = b
		# @show a
		global b = c
		# @show b
		
		global itr += 1
	end
end


# ╔═╡ 7946d540-ca9c-48f9-9ee1-afae763753e0
# ╠═╡ disabled = true
#=╠═╡
begin
numm = 6
fac = 1

	if numm == 0
		println(1)
	else
		while numm >= 1
			fac = fac * numm
			numm -= 1
		end
		println(fac)
	end
end
  ╠═╡ =#

# ╔═╡ dff54d95-d32a-499e-a6c2-30e9aaeb21b6
# Print all the square numbers of 1 to 20, but make sure the squared numbers are less than 100
begin
	num = 1
	while num < 20
		sq_num = num * num
		if sq_num > 100
			break
		end
		print(sq_num, " ")
		num += 1
	end
end

# ╔═╡ c0d90d78-d815-4ed1-ab0e-6e7f6ef917b0
# ╠═╡ disabled = true
#=╠═╡
# print all the multiples of 3 using continue
begin
	num = 1
	while num < 10
		num += 1
		if num % 3 !== 0
			continue
		end
		print(num, " ")
	end
end
  ╠═╡ =#

# ╔═╡ Cell order:
# ╟─c0b71afe-377e-11ee-06ba-fde64f9769d2
# ╠═1e96901c-5fdf-42b5-bbc1-40e733b4297e
# ╠═ffd8a2d7-8e15-4aa8-a034-98b6476da975
# ╠═2e35dfe7-caba-4d59-a20d-db61956bc2f4
# ╠═f1200757-bed0-4562-9947-53a400a50393
# ╠═81bbdbf5-358a-47c8-af60-28c5ec3fe12a
# ╠═df6b7435-e755-4710-8117-4ef2c298d4e0
# ╠═c62a1079-90eb-4476-82e4-7c10391fb920
# ╠═77e552af-98fa-4ae5-888d-18deb2282ba1
# ╠═2672e245-5d83-41b1-b4c5-b7f8091b453b
# ╟─f541dd82-429d-4bdd-acaf-ddfb6ba4ecf2
# ╠═37695ee5-ae69-4ca7-b477-8a3a0200acbb
# ╠═7db1f184-2ede-408e-bfd4-d4177e45f7e4
# ╠═787075a9-ec44-4e49-8399-29d109918d53
# ╠═3dd20eac-8944-4a31-96f4-28e5a02fb0e3
# ╠═c3bf4d59-f841-4ead-9341-5d0410e70a42
# ╠═9865af33-3837-4301-9fa2-de637b36161a
# ╟─ea7ac6e7-aa7e-43aa-8d37-f151851aad9b
# ╠═5288ce21-52e3-4f79-afb1-ef72674fd06b
# ╠═c053f34b-e30c-44c4-8e7a-f440f20c9065
# ╠═39c8e0b0-ef35-486f-940e-560220f74433
# ╠═4efc9e47-2001-4c2e-97e0-1f0db6800534
# ╠═f0c4f1d2-735f-414d-aa9c-6fad697fc8c6
# ╠═54aad4a3-4df7-449d-b765-64d0a1f1be82
# ╠═7efa1a05-71f8-4eb5-a320-b40f77295f6d
# ╠═c0d90d78-d815-4ed1-ab0e-6e7f6ef917b0
# ╠═dff54d95-d32a-499e-a6c2-30e9aaeb21b6
# ╠═7946d540-ca9c-48f9-9ee1-afae763753e0
