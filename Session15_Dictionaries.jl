### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ cff03960-3db9-11ee-039a-795d372e4653
md"""
## Dictionaries
Dictionaries are mutable, unordered (random order) collection of pairs of key and values. The syntax for creating a dictionary is
```Julia

# Create a dictionary for the Menu Items
menu_dictionary = dict()
menu_dictionary["Pizza"] = 20
menu_dictionary["Burger"] = 10
menu_dictionary["Coffee"] = 3

d = Dict()
d["one"] = 1
d["two"] = 2
println(d)

d = Dict("a" => 1, "b" => 2, "c" => 3)

D = Dict([("a", 1), ("b", 2), ("c", 3)])

# Another possibility is to use symbols instead of keys
d = Dict(:a => [1,2,3], :b => 1)
d[:a]
```
"""

# ╔═╡ 90d5ed71-d6ad-4072-94b1-323cdbafe33a
# length of the dictionary
begin
d = Dict("a" => 1, "b" => 2, "c" => 3)
length(d)
end

# ╔═╡ 30d21c3a-e4ef-40cc-98be-7abb30679e73
md"""
### Accessing Elements of a Dictionary
"""

# ╔═╡ 31c05c40-146f-45d4-93d8-6732276d2706
for e in d
	println(e)
end

# ╔═╡ 9879ceeb-4898-4179-9f20-9b492a73f6fb
for (k,v) in d
	println(k, " => ", v)
end

# ╔═╡ 97561aea-05ca-4eb5-9dcb-2be14f2a78a9
ks = keys(d)

# ╔═╡ a675f952-c4fa-411d-95e2-c2f9f8fc66ca
"a" ∈ ks

# ╔═╡ 44368561-e1dd-484f-ab32-89a10c5e95ae
"z" ∈ ks

# ╔═╡ 3c43fc0e-b789-4d4d-b07b-cb92894cabad
vs = values(d)

# ╔═╡ 50cdee0e-9f51-40ed-ae5e-b578387ad242
9 ∈ vs

# ╔═╡ 9b4e463f-c7bb-425a-94ac-4bc60ce75e75
dd = Dict(:a => [1,2,3], :b => 1)

# ╔═╡ 0a60d956-c407-47ce-b7f4-0bf876e87897
haskey(d, :c)

# ╔═╡ 64e8041f-c8d1-4dd0-9064-b26a6ec2b52b
get(d, :c, 42)

# ╔═╡ f407fc87-8b65-42d8-8e77-d149604c7baa
# get the element from the dictionary and if the element doesn't exists then add the element
get!(dd, :d, ["hello", "world"])

# ╔═╡ af36c02f-4aae-424b-bb85-725a63d1b5ad
delete!(d, :d)

# ╔═╡ f8759c3b-d176-4d0a-b125-93ef456b4d04
dd[:c] = 99

# ╔═╡ ffe5c490-098d-434b-a832-78fc91267c0a
# pop function removes the key and returns the respective value of that key
pop!(dd, :c)

# ╔═╡ 9e6c8714-83a3-4d47-a693-131cfb606e84
dd

# ╔═╡ b0043c31-4945-4536-8078-11baaa1fd60d
md"""
### Modifying a Dictionary
"""

# ╔═╡ e0e5f4f5-9e80-4ee3-b0a7-19ad6115d221
d["c"] = 4

# ╔═╡ c5f475c7-baa3-43e3-bf89-068a47625ac2
d

# ╔═╡ 687ffcf3-21bc-460f-ab89-5ccfbeea5edf
d["c"] = "Hello"

# ╔═╡ 8d71a010-e8a9-4956-86d9-a8cc2c4d642c
delete!(d, "c")

# ╔═╡ 2ec17caf-f628-49c0-a2ea-349e6d2a51da
d

# ╔═╡ 92f4f8ef-7bb5-4f30-80e0-0f0d7578c839
md"""
#### Creating counter of strings using Dictionary
"""

# ╔═╡ 0d364e2d-ef23-430d-8794-610b3da8e478
function histogram(s)
	d = Dict()
	for c in s
		if c ∉ keys(d)
			d[c] = 1
		else
			d[c] += 1
		end
	end
	d
end

# ╔═╡ dd0fa2d8-b555-419f-a1a9-20528848ab10
histogram("brontosaurus")

# ╔═╡ 1eeae6fc-c546-4b34-bb36-7a813a9af9df
md"""
### Dictionaries and Arrays
"""

# ╔═╡ 574f53e5-6df2-4082-81b1-56270490a3a4
arr_dict = Dict()

# ╔═╡ 0df51e37-6e62-446d-a36a-ffea3ce39085
arr_dict["a"] = [1,2,3,4]

# ╔═╡ 48020ca7-14a7-448a-b3d6-291c89aca7b3
arr_dict["b"] = (1,3,4)

# ╔═╡ cab997b8-5a3b-42ca-bf8d-c05ccba31e61
arr_dict

# ╔═╡ cd7e9dd7-1f5e-4a47-959e-69e180690e3a


# ╔═╡ Cell order:
# ╟─cff03960-3db9-11ee-039a-795d372e4653
# ╠═90d5ed71-d6ad-4072-94b1-323cdbafe33a
# ╟─30d21c3a-e4ef-40cc-98be-7abb30679e73
# ╠═31c05c40-146f-45d4-93d8-6732276d2706
# ╠═9879ceeb-4898-4179-9f20-9b492a73f6fb
# ╠═97561aea-05ca-4eb5-9dcb-2be14f2a78a9
# ╠═a675f952-c4fa-411d-95e2-c2f9f8fc66ca
# ╠═44368561-e1dd-484f-ab32-89a10c5e95ae
# ╠═3c43fc0e-b789-4d4d-b07b-cb92894cabad
# ╠═50cdee0e-9f51-40ed-ae5e-b578387ad242
# ╠═9b4e463f-c7bb-425a-94ac-4bc60ce75e75
# ╠═0a60d956-c407-47ce-b7f4-0bf876e87897
# ╠═64e8041f-c8d1-4dd0-9064-b26a6ec2b52b
# ╠═f407fc87-8b65-42d8-8e77-d149604c7baa
# ╠═af36c02f-4aae-424b-bb85-725a63d1b5ad
# ╠═f8759c3b-d176-4d0a-b125-93ef456b4d04
# ╠═ffe5c490-098d-434b-a832-78fc91267c0a
# ╠═9e6c8714-83a3-4d47-a693-131cfb606e84
# ╠═b0043c31-4945-4536-8078-11baaa1fd60d
# ╠═e0e5f4f5-9e80-4ee3-b0a7-19ad6115d221
# ╠═c5f475c7-baa3-43e3-bf89-068a47625ac2
# ╠═687ffcf3-21bc-460f-ab89-5ccfbeea5edf
# ╠═8d71a010-e8a9-4956-86d9-a8cc2c4d642c
# ╠═2ec17caf-f628-49c0-a2ea-349e6d2a51da
# ╟─92f4f8ef-7bb5-4f30-80e0-0f0d7578c839
# ╠═0d364e2d-ef23-430d-8794-610b3da8e478
# ╠═dd0fa2d8-b555-419f-a1a9-20528848ab10
# ╟─1eeae6fc-c546-4b34-bb36-7a813a9af9df
# ╠═574f53e5-6df2-4082-81b1-56270490a3a4
# ╠═0df51e37-6e62-446d-a36a-ffea3ce39085
# ╠═48020ca7-14a7-448a-b3d6-291c89aca7b3
# ╠═cab997b8-5a3b-42ca-bf8d-c05ccba31e61
# ╠═cd7e9dd7-1f5e-4a47-959e-69e180690e3a
