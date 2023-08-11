### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ b1a413aa-3774-11ee-35ef-a9730e2f7eb2
md"""
# Julia String Functions
"""

# ╔═╡ 70a76c26-4082-4c3f-99ea-5bd384e7ffd5
fruit = "Pineapple"

# ╔═╡ 1aadd7df-af52-4d8c-b5d3-5f3432a04c69
length(fruit)

# ╔═╡ 1aa27694-701e-4a52-9283-4a7d553beb48


# ╔═╡ 0c9e3c9c-3ad7-4310-b1ab-56e705101259
# Join Function
join(["banana", "apple", "guave"], ", ")

# ╔═╡ ca9118d5-9a41-4811-9252-73e6fa7271e4
join(["banana", "apple", "guava"], ", " , " and ") 

# ╔═╡ dc6549af-23b7-447b-83dd-1242b682757f
# Split functions
begin
	str = "Pluto is a excellent editor for Julia"
	split(str)
end

# ╔═╡ b2545855-b4d2-4572-a88d-47e393733b2e
begin
	anst = "abracadabra"
	split(anst, "a")
end

# ╔═╡ 69d0426f-49a2-4182-bb56-d2c7f4ac5873
# Contains function
contains("Be yourself; everyone else is already taken. - By Oscar Wilde", "already")

# ╔═╡ 8f34f709-bf00-47b4-9770-5d7de342d5c5
# OccursIn function
occursin("Oscar", "Be yourself; everyone else is already taken. - By Oscar Wilde")

# ╔═╡ b1ab0448-e002-469b-b3aa-e402460e45fd
# endswith function
endswith("figure.png", "png")

# ╔═╡ e354887e-bf5e-407e-8773-62b137482980
endswith("atlas.jpeg", "jpeg")

# ╔═╡ 3ca493d8-8302-4205-aae4-fcf45c89ee84
startswith("atlas.jpeg", "atlas")

# ╔═╡ f87121df-587b-496f-a194-77591d9c1c80
julia_lang = "JuliaLang is a very pretty language"

# ╔═╡ f841201f-7dfd-4798-8a92-94549bca265a
findall(isequal('a'), julia_lang)

# ╔═╡ dba252a9-e4e9-4331-8b2e-cf95d5ef9279
findfirst(isequal('a'), julia_lang)

# ╔═╡ 2f1d9580-3b3a-4a5e-a666-3697ef960114
findlast(isequal('a'), julia_lang)

# ╔═╡ 82c1b440-c53f-4fe3-848a-95018cda7489
# Strings are immutable but we can create new strings
replace("Sherlock Holmes", "e" => "ee")

# ╔═╡ 0789e19b-13a0-48b6-a0f8-b40c3dcb890e
# replace function also accepts the functions
replace("Sherlock Holmes", "e" => uppercase)

# ╔═╡ 0961f386-8fcb-4eea-96f9-3666dc85f0c1
# using replace function it is even possible to replace substring
replace("John CENA", "CENA" => "Maddock")

# ╔═╡ f72e16a3-597a-4bb0-a68f-c44759e4ab12
split("Julia", "")

# ╔═╡ 7a68eea9-f1a1-424d-9155-2eff6e9c095a
lowercase("DOG")

# ╔═╡ bafc2526-b1eb-466e-88fd-722e29dcca14
uppercase("dog")

# ╔═╡ 0a93357e-5581-43ec-bfca-8f4def589250
# Common Operations
"abracadabra" < "xylophone"

# ╔═╡ a758232b-d7fd-4a46-91fb-30a65dadb4b3
"abracadabra" == "xylophone"

# ╔═╡ cef6cba1-37c7-417e-8cf9-4df6ec25ac62
"Hello World!" != "GoodBye, World"

# ╔═╡ 7ea4e664-e0b1-4302-bd84-36fb11af6169
findnext("o", "xylophone", 1)

# ╔═╡ d803a458-7e1e-4031-baeb-376cf96726aa
findnext("o", "xylophone", 5)

# ╔═╡ 90ca5169-ae39-4e53-a046-65803224f6a7
findprev("o", "xylophone", 5)

# ╔═╡ 0e3f9870-a20d-40ee-94f5-1e9e1724462e
repeat(".:Z:.", 10)

# ╔═╡ 284e76fc-0e64-4175-b7fe-d5797de881fc
reverse("HelloWorld")

# ╔═╡ Cell order:
# ╟─b1a413aa-3774-11ee-35ef-a9730e2f7eb2
# ╠═70a76c26-4082-4c3f-99ea-5bd384e7ffd5
# ╠═1aadd7df-af52-4d8c-b5d3-5f3432a04c69
# ╠═1aa27694-701e-4a52-9283-4a7d553beb48
# ╠═0c9e3c9c-3ad7-4310-b1ab-56e705101259
# ╠═ca9118d5-9a41-4811-9252-73e6fa7271e4
# ╠═dc6549af-23b7-447b-83dd-1242b682757f
# ╠═b2545855-b4d2-4572-a88d-47e393733b2e
# ╠═69d0426f-49a2-4182-bb56-d2c7f4ac5873
# ╠═8f34f709-bf00-47b4-9770-5d7de342d5c5
# ╠═b1ab0448-e002-469b-b3aa-e402460e45fd
# ╠═e354887e-bf5e-407e-8773-62b137482980
# ╠═3ca493d8-8302-4205-aae4-fcf45c89ee84
# ╠═f87121df-587b-496f-a194-77591d9c1c80
# ╠═f841201f-7dfd-4798-8a92-94549bca265a
# ╠═dba252a9-e4e9-4331-8b2e-cf95d5ef9279
# ╠═2f1d9580-3b3a-4a5e-a666-3697ef960114
# ╠═82c1b440-c53f-4fe3-848a-95018cda7489
# ╠═0789e19b-13a0-48b6-a0f8-b40c3dcb890e
# ╠═0961f386-8fcb-4eea-96f9-3666dc85f0c1
# ╠═f72e16a3-597a-4bb0-a68f-c44759e4ab12
# ╠═7a68eea9-f1a1-424d-9155-2eff6e9c095a
# ╠═bafc2526-b1eb-466e-88fd-722e29dcca14
# ╠═0a93357e-5581-43ec-bfca-8f4def589250
# ╠═a758232b-d7fd-4a46-91fb-30a65dadb4b3
# ╠═cef6cba1-37c7-417e-8cf9-4df6ec25ac62
# ╠═7ea4e664-e0b1-4302-bd84-36fb11af6169
# ╠═d803a458-7e1e-4031-baeb-376cf96726aa
# ╠═90ca5169-ae39-4e53-a046-65803224f6a7
# ╠═0e3f9870-a20d-40ee-94f5-1e9e1724462e
# ╠═284e76fc-0e64-4175-b7fe-d5797de881fc
