### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ b40d0a2a-3de6-11ee-0eaa-198e726aa2bc
md"""
## Tuples
1. A Tuple is a sequence of values. 
2. The values can be of any type, and they are indexed by integers, so in that respect tuples are a lot like arrays.
3. The important difference is that tuples are immutable and that each element can have its own type.
4. Tuples are of fixed length.
"""

# ╔═╡ 80c0e89e-29a2-4a65-91f1-db81f4c59c05
md"""
##### Initializing Tuples
"""

# ╔═╡ e3a37fc6-7d06-4470-802d-65f808d0a406
tup = (3.14, 2.72)

# ╔═╡ ca3e8612-b441-460c-8f10-8a01bcb0fcee
tupp = 3.14, 2.72

# ╔═╡ eff186d0-ccf9-4b34-837f-da2dd7c68e40
err_tup = (3.14)

# ╔═╡ ccc52ef2-c4a0-43a0-9403-0458873a501e
typeof(tupp), typeof(err_tup)

# ╔═╡ 8416f552-78d8-4727-9266-e0010fbf047f
correct_tuple = (3.14, )

# ╔═╡ f9da8c89-8639-44e2-80bb-aad2149764d7
typeof(correct_tuple)

# ╔═╡ 40240449-07d8-40c3-8851-696b81f774d0
another_tuple = 1, 3,84,"hello", 4.23, :b

# ╔═╡ 2a133429-4620-40e2-8e8f-72cde571bb39
# another way to create tuple is using tuple function
fn_tuple = tuple("hello", "world", "1", 2, 3, 4)

# ╔═╡ 33afaae2-c2de-42a4-afdd-2175f3a2ac4d
typeof(tuple)

# ╔═╡ a3edd172-9ee2-4001-8954-7ce6353ee8a2
empty_tuple = ()

# ╔═╡ cbf52957-28e5-474b-b09b-a4217bff93c9
typeof(empty_tuple)

# ╔═╡ 675d9215-73f7-4b43-acd0-9d95264e46bd
t3 = tuple(1, 'a', pi)

# ╔═╡ 3164fcc7-5083-4e7c-8fdf-ba2fb33e4046
println(t3)

# ╔═╡ a9f5ead5-208e-4f7c-ae59-00987713f576
md"""
### Accessing Tuples
"""

# ╔═╡ 1b4e92a1-515e-42f6-a6dd-82eb4b6d3983
another_tuple[1]

# ╔═╡ 6e0ae398-7591-424a-9728-78ceaad82245
another_tuple[2:4]

# ╔═╡ d9fe54cd-1869-4693-a5c0-65d77c41f29e
# Error while modifying the tuple
another_tuple[1] = 'Z'

# ╔═╡ bb2c0ebf-57e1-4475-ad50-4c12fc1aeeac


# ╔═╡ b75c8458-836d-4813-b868-3cf8ccfa4c1e
another_tuple[begin], another_tuple[end]

# ╔═╡ 9a085327-7f6a-4cba-afe8-7a503f951a56
md"""
#### Relational Operators with Tuples
"""

# ╔═╡ 7ea46692-19c2-4311-8adc-6f51a1324489
# Julia starts comparison one by one element starting from left
(0,1,2) < (0,3,4)

# ╔═╡ a3300184-cefa-44c0-afbe-49221abed3bc
(0, 1, 20000) < (0, 3, 4)

# ╔═╡ 9e732c32-f13b-470f-8abd-8828ca7ae257
# swapping of variables using Tuples
begin
(a,b ) = (1,2,3)
b,a = a, b
end

# ╔═╡ 7a782773-a7c6-4058-868f-a3c9a9928f66
# number of variables on the left has to be smaller than the number of variables on the right
x, y, z = 1, 2

# ╔═╡ 858e83f6-3008-4966-b8d3-014e093e038d
md"""
#### Tuples as Return values
"""

# ╔═╡ ab1af9d5-ba32-4b3d-ac5f-1fed74e4f674
tm = divrem(7,3)

# ╔═╡ cb29def2-950f-4dcd-afa8-bb7776199995
q, r = tm

# ╔═╡ a1da2acd-7aa1-4050-8956-6069bfb97646
@show q, r

# ╔═╡ 51ba7e8b-9e03-4c10-ab2e-342acf650b20
tft = (8, 7, 9, 10, 11)

# ╔═╡ bafecbd2-d7af-470e-9a89-b54e78a3013e
minimum(tft)

# ╔═╡ 2e54c64d-d2d7-457b-92db-aba45f7861dd
maximum(tft)

# ╔═╡ d3a3b4f9-e449-4938-925e-7dffa92bffba
# variable length argument tuples
function printall(args...)
	println(args)
end

# ╔═╡ 5ebe06cb-880c-4735-b283-5c7204d9b9e6
printall(1, 2.0, '3')

# ╔═╡ c27243c0-2833-44b0-80c6-25a062f75d08
md"""
### Arrays and Tuples
"""

# ╔═╡ e9e0d0ed-c03e-44c0-9cd7-0d4902b46794
s = "abc"

# ╔═╡ 276f3b30-8ed9-408e-beff-694d5648486d
collect(zip("Anne", "ELK"))

# ╔═╡ 4623fd5d-2534-4023-b26f-6edbd3d72cba
ll,bb,cc = t

# ╔═╡ b676d822-403e-4007-8810-a2b674170162
ll,bb,cc

# ╔═╡ 73373d12-4e12-4533-aa97-df7f0a93396e
zip(s, t)

# ╔═╡ b263f3de-aaaa-44dd-a628-597a72cf657f
for pair in zip(s, t)
	println(pair)
end

# ╔═╡ 8a99165c-3c63-4da6-b735-400e64dbcef8
collect(zip(s,t))

# ╔═╡ dc6e6450-da60-4f9b-9217-ee8726c020ae
for (letter, number) in t
	println(number, " ", letter)
end

# ╔═╡ ee9c9113-b48b-4fca-83ee-4f35f5c6f688
for (index, element) in enumerate("abc")
	println(index, " ", element)
end

# ╔═╡ db0377bc-a4f9-4cff-b626-8d0a2d746318
zz = [1,2,3,4]

# ╔═╡ 099d42d9-723b-4724-8cd1-92b217805184
for (index, element) in enumerate(zz)
	println(index, " ", element)
end

# ╔═╡ ba88096f-2e72-4ede-9df7-fb41fe6dcc93
# converting tuples to array
begin
aat = (1, 2, 3)
t1 = collect(aat)
end

# ╔═╡ fe721521-e067-43b7-b1bf-1c39d57899c2
md"""
### Tuples and Dictionaries
"""

# ╔═╡ 3f678070-51a0-4af4-9549-355f56a211a4
# converting tuple to dictionary
begin
tup_dict = [('a', 1), ('c', 3), ('b', 2)]
dt = Dict(tup_dict)
end

# ╔═╡ 722dd359-cb11-4e29-8be3-79b7d3b02a2a
md"""
### Named Tuples
"""

# ╔═╡ 2fac9de0-5fdd-47c4-80bc-fa108f37c827
nt = (a = 1, b = 2.0, c = "3")

# ╔═╡ 1c5b5bfd-8f46-42a4-b2a4-3f6ff4ca4456
nt.a

# ╔═╡ d7c26b8c-af91-4d43-99ba-04a16ece441d
nt.b

# ╔═╡ f458a8df-5ef3-45f3-83d5-c90e955997b2
keys(nt)

# ╔═╡ dbab95b5-1f81-432f-be4b-8114f1678821
values(nt)

# ╔═╡ b7f3a07d-ee05-414d-8ce7-f4690c007595
nt[begin], nt[end]

# ╔═╡ e63077a2-eb05-4cbf-9db1-d03a1b34b311
pp, qq, rr = nt

# ╔═╡ 03f85420-34b8-46a1-aa30-933ed1c73fe3
pp, qq, rr

# ╔═╡ 1e6e04ec-71ec-49c0-b5c0-23e3481cdf78
# creating named tuples directly from variables
begin
	gg = 10
	hh = 11
	ii = 12
	ntt = (; gg, hh, ii)
end

# ╔═╡ 0e413146-9297-4401-b94b-90b8c0b6a05f
# merging named tuples
total_nt = merge(nt, ntt)

# ╔═╡ 8101bc14-a26c-4307-866a-83857e3bfa76
begin
	p1 = [1,2,3,4]
	p2 = [5,6,7,8]
	merge(p1, p2)
end

# ╔═╡ 79ea55df-1eaf-4cd8-ae8f-d9c71671550a


# ╔═╡ f4ce465b-ae1d-435b-bc0a-4b5600cd015e


# ╔═╡ 68ff695e-cd8e-4bd0-8467-7b4625ff7fc1
# ╠═╡ disabled = true
#=╠═╡
# printing key, value pairs as tuples
begin
d = Dict('a'=> 1, 'b' => 2, 'c' => 3)
for (key, value) in d
	println(key, " ", value)
end
end
  ╠═╡ =#

# ╔═╡ 1ebb035a-881c-4a51-b195-4287f3649011
d = Dict(zip("abc", 1:3))

# ╔═╡ 94cf6e67-52eb-44e3-b4ac-99528486d650
t = [('a', 1), ('b', 2), ('c', 3)]

# ╔═╡ b8cf1c57-a8ab-43ed-814b-51b8dfa68062
# ╠═╡ disabled = true
#=╠═╡
t = [1,2,3]
  ╠═╡ =#

# ╔═╡ dcf2e994-5b93-4d51-97e5-c4d3c878b898
# ╠═╡ disabled = true
#=╠═╡
# overwriting of tuple works but this isn't a right way
begin
t = (1, 2, 3)
t = t .* 2
end
  ╠═╡ =#

# ╔═╡ Cell order:
# ╟─b40d0a2a-3de6-11ee-0eaa-198e726aa2bc
# ╟─80c0e89e-29a2-4a65-91f1-db81f4c59c05
# ╠═e3a37fc6-7d06-4470-802d-65f808d0a406
# ╠═ca3e8612-b441-460c-8f10-8a01bcb0fcee
# ╠═eff186d0-ccf9-4b34-837f-da2dd7c68e40
# ╠═ccc52ef2-c4a0-43a0-9403-0458873a501e
# ╠═8416f552-78d8-4727-9266-e0010fbf047f
# ╠═f9da8c89-8639-44e2-80bb-aad2149764d7
# ╠═40240449-07d8-40c3-8851-696b81f774d0
# ╠═2a133429-4620-40e2-8e8f-72cde571bb39
# ╠═33afaae2-c2de-42a4-afdd-2175f3a2ac4d
# ╠═a3edd172-9ee2-4001-8954-7ce6353ee8a2
# ╠═cbf52957-28e5-474b-b09b-a4217bff93c9
# ╠═675d9215-73f7-4b43-acd0-9d95264e46bd
# ╠═3164fcc7-5083-4e7c-8fdf-ba2fb33e4046
# ╠═a9f5ead5-208e-4f7c-ae59-00987713f576
# ╠═1b4e92a1-515e-42f6-a6dd-82eb4b6d3983
# ╠═6e0ae398-7591-424a-9728-78ceaad82245
# ╠═d9fe54cd-1869-4693-a5c0-65d77c41f29e
# ╠═4623fd5d-2534-4023-b26f-6edbd3d72cba
# ╠═b676d822-403e-4007-8810-a2b674170162
# ╠═bb2c0ebf-57e1-4475-ad50-4c12fc1aeeac
# ╠═b75c8458-836d-4813-b868-3cf8ccfa4c1e
# ╠═9a085327-7f6a-4cba-afe8-7a503f951a56
# ╠═7ea46692-19c2-4311-8adc-6f51a1324489
# ╠═a3300184-cefa-44c0-afbe-49221abed3bc
# ╠═dcf2e994-5b93-4d51-97e5-c4d3c878b898
# ╠═9e732c32-f13b-470f-8abd-8828ca7ae257
# ╠═7a782773-a7c6-4058-868f-a3c9a9928f66
# ╠═858e83f6-3008-4966-b8d3-014e093e038d
# ╠═ab1af9d5-ba32-4b3d-ac5f-1fed74e4f674
# ╠═cb29def2-950f-4dcd-afa8-bb7776199995
# ╠═a1da2acd-7aa1-4050-8956-6069bfb97646
# ╠═51ba7e8b-9e03-4c10-ab2e-342acf650b20
# ╠═bafecbd2-d7af-470e-9a89-b54e78a3013e
# ╠═2e54c64d-d2d7-457b-92db-aba45f7861dd
# ╠═d3a3b4f9-e449-4938-925e-7dffa92bffba
# ╠═5ebe06cb-880c-4735-b283-5c7204d9b9e6
# ╟─c27243c0-2833-44b0-80c6-25a062f75d08
# ╠═e9e0d0ed-c03e-44c0-9cd7-0d4902b46794
# ╠═b8cf1c57-a8ab-43ed-814b-51b8dfa68062
# ╠═73373d12-4e12-4533-aa97-df7f0a93396e
# ╠═b263f3de-aaaa-44dd-a628-597a72cf657f
# ╠═8a99165c-3c63-4da6-b735-400e64dbcef8
# ╠═276f3b30-8ed9-408e-beff-694d5648486d
# ╠═94cf6e67-52eb-44e3-b4ac-99528486d650
# ╠═dc6e6450-da60-4f9b-9217-ee8726c020ae
# ╠═ee9c9113-b48b-4fca-83ee-4f35f5c6f688
# ╠═db0377bc-a4f9-4cff-b626-8d0a2d746318
# ╠═099d42d9-723b-4724-8cd1-92b217805184
# ╠═ba88096f-2e72-4ede-9df7-fb41fe6dcc93
# ╠═fe721521-e067-43b7-b1bf-1c39d57899c2
# ╠═68ff695e-cd8e-4bd0-8467-7b4625ff7fc1
# ╠═3f678070-51a0-4af4-9549-355f56a211a4
# ╠═1ebb035a-881c-4a51-b195-4287f3649011
# ╠═722dd359-cb11-4e29-8be3-79b7d3b02a2a
# ╠═2fac9de0-5fdd-47c4-80bc-fa108f37c827
# ╠═1c5b5bfd-8f46-42a4-b2a4-3f6ff4ca4456
# ╠═d7c26b8c-af91-4d43-99ba-04a16ece441d
# ╠═f458a8df-5ef3-45f3-83d5-c90e955997b2
# ╠═dbab95b5-1f81-432f-be4b-8114f1678821
# ╠═b7f3a07d-ee05-414d-8ce7-f4690c007595
# ╠═e63077a2-eb05-4cbf-9db1-d03a1b34b311
# ╠═03f85420-34b8-46a1-aa30-933ed1c73fe3
# ╠═1e6e04ec-71ec-49c0-b5c0-23e3481cdf78
# ╠═0e413146-9297-4401-b94b-90b8c0b6a05f
# ╠═8101bc14-a26c-4307-866a-83857e3bfa76
# ╠═79ea55df-1eaf-4cd8-ae8f-d9c71671550a
# ╠═f4ce465b-ae1d-435b-bc0a-4b5600cd015e
