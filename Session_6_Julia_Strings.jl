### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 05aae73f-3706-4656-97d1-dd13bc6d1f75
using Printf

# ╔═╡ a471b08c-3744-11ee-027b-5951e0df65d6
md"""
# Julia Strings and Characters

**Strings** are finite sequence of characters. Then what is character ?
Characters are normally English letters "A","B", "C" or numbers or punctuations symbols. Non English Language in other language symbols are also considered as characters.

1. Builtin Type 'String' is used for representing strings. 'String' type also supports full range of Unicode characters. **Transcode** function is used to convert to/from unicode encodings
2. Strings are immutable

## Characters
A Char value represents a single character.
In Julia Characters are enclosed within single quotes ''.
Characters always has a length of One.
"""


# ╔═╡ 78b20f33-10bc-4b5c-a6df-5ad3ed3d815f
c = 'x'

# ╔═╡ 5889161d-8486-4ab7-846d-6282caaaea14
typeof(c)

# ╔═╡ 726b4457-65dc-47fc-ab8b-686fe468db0c
i = Int('x')

# ╔═╡ eecd74dd-5569-49c5-ab61-cf7460dac69d
typeof(i)

# ╔═╡ 05aa0e97-f82d-4300-acc8-9587af748b48
Char(120)

# ╔═╡ 76da4140-a162-46d7-a5b9-8d41add3d1fb
Char(0x110000)

# ╔═╡ 32bfc2f3-1ebd-4f8b-aac5-81f0ccf4aef9
isvalid(Char, 0x110000)

# ╔═╡ 8c9a6cef-5acb-4492-98f0-45691767e862
md"""
> As of this writing valid unicode values are from U+0000 through U+D7FF and U+E000 through U+10FFFF
"""

# ╔═╡ fe119ea0-e346-4781-9cbb-fe752f525dfd
begin
	println('\u0')
	println('\u78')
	println('\u2200')
	println('\U10ffff')
end

# ╔═╡ 30e9c20e-2318-4fae-b508-29a5fdddb455
md"""
> Even Emojis are part of the Unicode standard hence they can also be written as character. In Unicode standard every character is assgined an number. For example we can write banana as \:banana: TAB
"""

# ╔═╡ 9efc9b97-f4ec-46bf-973c-fa4e383902ce
banana = '🍌'

# ╔═╡ 9bb42e4d-fac1-4df2-a830-20680e8e7dc5
typeof(banana)

# ╔═╡ 9c0d0b39-d214-4310-bbce-3498bc54ca87

md"""
## Comparison and limited amount of Arthimetic with Char
"""

# ╔═╡ dc1bbcce-9a75-4f38-8463-f26daf5e5b47
'A' < 'a'

# ╔═╡ 964c4d7f-a976-449f-97e1-c767c3676469
'A' <= 'a' <= 'Z' 

# ╔═╡ fa00309d-c2f5-4a7f-88d0-631cd41a145f
'b' == 'b'

# ╔═╡ 735f5d1e-20ea-4236-9195-7506e987fd18
'x' - 'a'

# ╔═╡ d684b533-f8e9-4a0e-9cd2-c916f124c901
'A' + 1

# ╔═╡ 1fd233ef-d81e-4b5f-b16e-12013b680e94
'A' <= 'X' <= 'Z'

# ╔═╡ f8c60eef-f04e-4c09-98b8-3de0650470ce
md"""
# Strings 
### String Literals are delimited by double or triple quotes
"""

# ╔═╡ 6126882e-df9c-4a2e-8368-abc24c6c9866
str = "Hello, World\n"

# ╔═╡ acb94e8d-8478-4074-96bb-b0b007d4c565
println(str)

# ╔═╡ 408e4b78-fb81-4e54-97a2-be5f3a326c83
"""Contains "quotes" Characters"""

# ╔═╡ 10057143-3edd-4cdf-9302-af7b8a2a6604
"This is a long line \
 how do I continue this line
"

# ╔═╡ 2804b9b4-4d55-4956-9eef-5e2e7def895a
product = "Apple Iphone Pro Max"

# ╔═╡ 4801f952-9d41-4f19-9120-95bf88c8e0f9
product[1]

# ╔═╡ 8cbd865e-6c81-4d51-a6bc-2f53cd1ef693
product[2]

# ╔═╡ 87444848-976d-4790-8143-540722b24001
product[end]

# ╔═╡ b2de860e-b875-4bdb-a884-36edfdf6c662
product[begin]

# ╔═╡ 3f2bfdf6-7d1b-4ca6-9b6d-68963aa078d4
# Get the unicode character for character
chr = Int(product[begin])

# ╔═╡ 3d6a087a-edf8-456f-b135-75635cd5ab6f
Char(chr)

# ╔═╡ 91b414a5-e486-464c-ac46-db1333d682ff
# Steps to get the all characters from 1.5
product[1:5]

# ╔═╡ 93363ef6-c708-4d8d-a2f8-25902e34bd71
product[[1,3,5,9]]

# ╔═╡ cec7a870-38bb-4ec7-b17f-764f1ae77bdd
str1 = "This is how a \"string\" is created"

# ╔═╡ 2b4d747b-f5c2-4ac2-8e44-d9e2fb3a0637
println(str1)

# ╔═╡ 4a03bad3-da5b-4044-afb3-38c9c678f448
md"""
## String Concatenation examples
"""

# ╔═╡ 1b6c1af6-a67a-4949-bf89-e89b9636b42f
"spam" * "spam" * "spam"

# ╔═╡ 48a7fade-0cd0-463c-b44f-5727f5c17b86
"dog" * "cat"

# ╔═╡ 70a04ce7-8623-45da-9b8d-4a641734e926
repeat("HaHa", 3)

# ╔═╡ 3a08ba6a-1d5e-4764-ab74-4025d6237fc2
"Haha" ^ 3

# ╔═╡ 7f317cc4-96ed-4961-9b7f-78938278f110
"I" * " <3" * " Julia"

# ╔═╡ c739139c-9c3e-4be4-99ee-2b6b1eee8a93
md"""
## String Interpolation Examples
"""

# ╔═╡ 4ef5e533-f9e0-4a1a-8a05-646e5fc31fa6
md"""
### Using String Function
"""

# ╔═╡ a10da8a1-867f-4955-b9ad-62c7fc542f86
string("The total population of Lions in the world are ", 20000, " to " , 30000)

# ╔═╡ 75295bee-87f3-4f73-8cc0-febf3058fd85
string("Total percentage of Voter turn out ", " is ", ((400/500)*100))

# ╔═╡ 83d9bbee-2cfb-460c-b883-c466fbc983b2
md"""
### Using String Interpolation
"""

# ╔═╡ f55ace71-4299-4762-b07c-0ac304be8c0c
begin
	num1 = 20000
	num2 = 30000
end

# ╔═╡ 3ab3f2ef-42eb-4d46-96f9-badf17d45eb0
"The total population of Lions in the world are $num1 to $num2"

# ╔═╡ 20241e7b-1ce1-47ea-8cb5-f1ac3f50c9da
a = 1.1234

# ╔═╡ e48c94f3-5af9-48f3-a31b-9f6d0d19b1b6
"$typeof(a)"

# ╔═╡ 92e4aacd-889c-4a19-ad70-95da5811e1f1
"$(typeof(a))"

# ╔═╡ f619ffcd-7d98-4b2f-9813-5df382f8a9b6
"Total percentage of Voter turn out is $((400/500)*100)"

# ╔═╡ 7b0fde07-7775-4f39-809d-36094ddef731
"The variable a is of type $(typeof(a)) and it's value is $(a)"

# ╔═╡ cf02d192-1007-43f7-9fe6-3c914c35ea55
md"""
### Using Printf
"""

# ╔═╡ 24ea714e-3587-46e5-a84c-a177d4737cb4
@printf "Hello %s" "World"

# ╔═╡ daeb1ae4-6906-49cc-a2ee-8926310492f9
@printf "Scientific number %e" 1.2334

# ╔═╡ 37d649a5-0700-47c8-b569-e4f40e7457a0
@printf "Decimal two digits %.2f" 12.3456

# ╔═╡ 69b4826a-ca49-4ff3-8042-a48271659809
@printf "Padded with zeros to length 6 %06i" 123

# ╔═╡ bc3d2dfa-7334-4ade-a3a6-e95d1b43c658
str3 = @sprintf("Archimedes approximated pi to 22/7, which is %.4f...", 22/7)

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
Printf = "de0858da-6303-5e67-8744-51eddeeeb8d7"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.9.2"
manifest_format = "2.0"
project_hash = "f604830d70fa58877def5710c5d1fa32dcb3f998"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"
"""

# ╔═╡ Cell order:
# ╟─a471b08c-3744-11ee-027b-5951e0df65d6
# ╠═78b20f33-10bc-4b5c-a6df-5ad3ed3d815f
# ╠═5889161d-8486-4ab7-846d-6282caaaea14
# ╠═726b4457-65dc-47fc-ab8b-686fe468db0c
# ╠═eecd74dd-5569-49c5-ab61-cf7460dac69d
# ╠═05aa0e97-f82d-4300-acc8-9587af748b48
# ╠═76da4140-a162-46d7-a5b9-8d41add3d1fb
# ╠═32bfc2f3-1ebd-4f8b-aac5-81f0ccf4aef9
# ╟─8c9a6cef-5acb-4492-98f0-45691767e862
# ╠═fe119ea0-e346-4781-9cbb-fe752f525dfd
# ╟─30e9c20e-2318-4fae-b508-29a5fdddb455
# ╠═9efc9b97-f4ec-46bf-973c-fa4e383902ce
# ╠═9bb42e4d-fac1-4df2-a830-20680e8e7dc5
# ╠═9c0d0b39-d214-4310-bbce-3498bc54ca87
# ╠═dc1bbcce-9a75-4f38-8463-f26daf5e5b47
# ╠═964c4d7f-a976-449f-97e1-c767c3676469
# ╠═fa00309d-c2f5-4a7f-88d0-631cd41a145f
# ╠═735f5d1e-20ea-4236-9195-7506e987fd18
# ╠═d684b533-f8e9-4a0e-9cd2-c916f124c901
# ╠═1fd233ef-d81e-4b5f-b16e-12013b680e94
# ╟─f8c60eef-f04e-4c09-98b8-3de0650470ce
# ╠═6126882e-df9c-4a2e-8368-abc24c6c9866
# ╠═acb94e8d-8478-4074-96bb-b0b007d4c565
# ╠═408e4b78-fb81-4e54-97a2-be5f3a326c83
# ╠═10057143-3edd-4cdf-9302-af7b8a2a6604
# ╠═2804b9b4-4d55-4956-9eef-5e2e7def895a
# ╠═4801f952-9d41-4f19-9120-95bf88c8e0f9
# ╠═8cbd865e-6c81-4d51-a6bc-2f53cd1ef693
# ╠═87444848-976d-4790-8143-540722b24001
# ╠═b2de860e-b875-4bdb-a884-36edfdf6c662
# ╠═3f2bfdf6-7d1b-4ca6-9b6d-68963aa078d4
# ╠═3d6a087a-edf8-456f-b135-75635cd5ab6f
# ╠═91b414a5-e486-464c-ac46-db1333d682ff
# ╠═93363ef6-c708-4d8d-a2f8-25902e34bd71
# ╠═cec7a870-38bb-4ec7-b17f-764f1ae77bdd
# ╠═2b4d747b-f5c2-4ac2-8e44-d9e2fb3a0637
# ╟─4a03bad3-da5b-4044-afb3-38c9c678f448
# ╠═1b6c1af6-a67a-4949-bf89-e89b9636b42f
# ╠═48a7fade-0cd0-463c-b44f-5727f5c17b86
# ╠═70a04ce7-8623-45da-9b8d-4a641734e926
# ╠═3a08ba6a-1d5e-4764-ab74-4025d6237fc2
# ╠═7f317cc4-96ed-4961-9b7f-78938278f110
# ╟─c739139c-9c3e-4be4-99ee-2b6b1eee8a93
# ╟─4ef5e533-f9e0-4a1a-8a05-646e5fc31fa6
# ╠═a10da8a1-867f-4955-b9ad-62c7fc542f86
# ╠═75295bee-87f3-4f73-8cc0-febf3058fd85
# ╟─83d9bbee-2cfb-460c-b883-c466fbc983b2
# ╠═f55ace71-4299-4762-b07c-0ac304be8c0c
# ╠═3ab3f2ef-42eb-4d46-96f9-badf17d45eb0
# ╠═20241e7b-1ce1-47ea-8cb5-f1ac3f50c9da
# ╠═e48c94f3-5af9-48f3-a31b-9f6d0d19b1b6
# ╠═92e4aacd-889c-4a19-ad70-95da5811e1f1
# ╠═f619ffcd-7d98-4b2f-9813-5df382f8a9b6
# ╠═7b0fde07-7775-4f39-809d-36094ddef731
# ╟─cf02d192-1007-43f7-9fe6-3c914c35ea55
# ╠═05aae73f-3706-4656-97d1-dd13bc6d1f75
# ╠═24ea714e-3587-46e5-a84c-a177d4737cb4
# ╠═daeb1ae4-6906-49cc-a2ee-8926310492f9
# ╠═37d649a5-0700-47c8-b569-e4f40e7457a0
# ╠═69b4826a-ca49-4ff3-8042-a48271659809
# ╠═bc3d2dfa-7334-4ade-a3a6-e95d1b43c658
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
