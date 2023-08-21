### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 5d43df47-8da5-466a-a979-43bd67977339
using LinearAlgebra

# ╔═╡ e29226b6-3cd1-11ee-2a56-77fcbbd8e618
md"""
## Data Structures Arrays

### What is an Array ?
Array is an sequence of values. In Arrays values can be of any type. The values in array are called elements or sometimes items.

#### Initializaing Arrays
```Julia
[10,20,30,40]
["crunchy frog", "ram bladder", "lark vomit"]
# Nested arrays
["spam", 2.0, 5, [10, 20]]

# empty Arrays
none = []
# other examples
nations = ["India", "Brazil", "China", "Russia", "USA"]
populations = [22, 33, 34, 87, 1]
```
"""


# ╔═╡ ff56e283-bb4e-44d5-9e8f-c38e2b19e77f
md"""
### Other ways to define array
```Julia
# Matrix creation
A = [1 2 3; 1 2 4; 2 2 2]
x = ["Hello", 1 , "random", 3.145]

# If you absolutely want to create an Array
z = ["Hello" ;;; 1]
```
"""

# ╔═╡ ad44fa37-c30a-4771-879f-2d76911432f2
md"""
#### Arrays are mutable
"""

# ╔═╡ 9275d872-dfd4-4f38-9e95-569dbe99fe25
animals = ["Tiger", "Lion", "Cheetah", "Bear"]

# ╔═╡ 8f706882-0786-4486-b7e2-c9e1a94c82e5
animals[1]

# ╔═╡ c62c2474-8d90-4ca8-bcbe-3466088bba01
animals[1] = "Fox"

# ╔═╡ 8e6c1fa7-b5a7-4ea9-bbda-44e6f21aba5e
animals

# ╔═╡ ee3f9311-989e-46b8-8ac6-f4b76d5bf479
md"""
#### Checks in Array
"""

# ╔═╡ d5f2dcc3-5638-47c9-aa1e-1ef414a962ec
flowers = ["Rose", "Jasmine", "Tulip", "Lotus", "Mogra"]

# ╔═╡ 65a94a84-89c8-407b-a20e-f87530b4594c
"Rose" in flowers

# ╔═╡ 5db7942b-a34a-4250-9026-7b7d85171fea
"Rose" ∈ flowers

# ╔═╡ 0798c680-b523-46b4-a03c-4e25ab5c5e44
md"""
#### Traversing in Array
"""

# ╔═╡ 386d37e1-4888-4c9c-9499-32bea432127d
for flower in flowers
	print(flower, " ")
end

# ╔═╡ ec7ca82d-a2db-4061-985f-5b10708c7758
begin
marks = [85, 90, 78, 89, 100]

for i in eachindex(marks)
	marks[i] = round(Float64((marks[i] * 100) / 120))
end
marks
end

# ╔═╡ 43b53dbb-97ef-4bfe-8b73-5245aa3287a8
for x in []
	println("I will not be printed")
end

# ╔═╡ 96fe651a-667c-4289-b919-40abf6190a41
md"""
#### Array Slices
"""

# ╔═╡ 84f589cb-527b-4916-bb3d-96d235f52474
md"""
#### Array Functions
"""

# ╔═╡ 1fe7fb32-9685-4eaf-b8e7-3790e40b910c
names = ["sam", "james", "roman", "brock", "undertaker", "rock", "austin"]

# ╔═╡ d31d77ee-648c-4bd8-8ddb-43466170e9a1
push!(names, "john cena")

# ╔═╡ b1fea302-61ac-448e-b1c2-db7417a9d528
 append!(names, ["HHH", "Seth"])

# ╔═╡ dfd6aacc-1c45-4896-8003-4eb9818b8192
sort(names)

# ╔═╡ 54d39eed-7344-47c2-ab02-6f835d503f75
t2 = sort(names)

# ╔═╡ 8d4c8f15-e5cf-4eb5-8ca1-50336bee2965
sort!(names)

# ╔═╡ 4d7ffdc5-db88-4b69-a098-e42758647e15
names

# ╔═╡ d2ef6a22-d6f1-4308-9d51-062645f70552
t = ['a', 'a', 'b', 'c', 'd', 'e', 'b', 'a', 'f']

# ╔═╡ b0c4de30-9a79-43da-a143-47b5f605a9b0
unique(t)

# ╔═╡ ada32c41-bf66-4370-adb8-0e2347d08019
length(names)

# ╔═╡ 9911572f-60c5-47e4-bf9a-6ff3f66f0210
size(names)

# ╔═╡ 65971895-2d8a-4f6d-8d55-a20ede96d5c0
first(names)

# ╔═╡ 096253b5-f096-4ed3-a97a-9e115fa185e7
last(names)

# ╔═╡ d5b93712-7f0e-4fcc-a5c3-7d8ada5a9aa4
reverse(t)

# ╔═╡ 0cf205af-0430-4bdd-a39c-46460887df3c
z = copy(t)

# ╔═╡ 919f32d8-a9d1-4cc3-a22f-9a905004bc02
z == t

# ╔═╡ 1d2a833e-0909-47db-bbc6-9146122a71a4
z[1] = 10

# ╔═╡ 58d14c94-203e-40d3-918f-aeb1921d52c5
z

# ╔═╡ 23ac0a7d-137a-4372-8531-a387ab1e1a46
t

# ╔═╡ f470391b-e14c-4773-8635-65d5cdfc5f5b
y = z

# ╔═╡ 38362046-268c-49aa-81f1-3b51cdef3c15
y[1] = 'y'

# ╔═╡ 8a7e4528-7f57-4eac-bb4d-bd8d7ebfb095
y, z

# ╔═╡ b2d155ff-6c42-4546-8fc4-405d563d460f
arr = [1,2,3 , ["Hello", "World"], 3.214, (1,3)]

# ╔═╡ 3feb8501-0b4c-4c2a-b5c5-7f78abc6bb19
flatten(arr)

# ╔═╡ 17b6c50f-699f-4d46-965e-5d7fdcad0e55
empty(names)

# ╔═╡ 786702a9-4a51-4b9a-ae64-2af33a54999f
issorted(names)

# ╔═╡ 73dbbd65-d300-413f-bc37-5c1152d97cb8
num = [20, 10, 30, 50, 40]

# ╔═╡ 0e4ebc94-98d4-48bf-abb5-a6525a220bad
append!(num, [30, 40])

# ╔═╡ c33397c2-cd1d-485d-b936-4595172a8c71
empty!(num)

# ╔═╡ 09edd0b8-470b-400f-ab1e-109f962f3409
num

# ╔═╡ fb0c37cc-26f3-4543-8f3c-74b6133d41dd
isempty(num)

# ╔═╡ 62f744a3-fb90-4279-9cd3-524672183312
findmin(num)

# ╔═╡ a5d7dc03-0e42-4c9b-ba9a-2d78bda5d168
issorted(num)

# ╔═╡ 9c1c438e-5504-465f-8391-ef48210c4cbb
findall(isequal("HHH"), names)

# ╔═╡ 46eade57-6947-4e86-8f78-996240f5f468
nums = [10, 20, 30, 40]

# ╔═╡ 9f26a478-19be-4b4c-87e9-a94864b8ff0b
findmin(nums)

# ╔═╡ 5d9132b3-12d6-4d33-b8ac-1ef974ec1bbf
findmax(nums)

# ╔═╡ a6f81b58-e6ec-44b9-a56a-bbfaadcce7af
issorted(nums)

# ╔═╡ f38a8b93-6326-4f91-bd79-a44cceac0013
minimum(nums)

# ╔═╡ bf35ec44-1726-4c61-b017-f45d5d38c1b0
pop!(nums)

# ╔═╡ 4239beb3-f7f7-4c61-bd97-950507848b93
popfirst!(nums)

# ╔═╡ 62744532-a10b-4215-9203-73e1a9c8f710
md"""
### Map Filter and Reduce
"""

# ╔═╡ 4a1453df-169d-4930-ae05-2d77f1c524e8
md"""
##### Reduce Function
"""

# ╔═╡ e398bc62-1b55-4a31-b512-5274a0cc820b
# example to add all the elements in the array example of reduce
function addUp(t)
	total = 0
	for x in t
		total += x
	end
	total
end

# ╔═╡ 96d77662-2198-4f11-aa41-8e2dbc560b5f
# Collect function
collect([i^2 for i in 1:10])

# ╔═╡ 18b358ba-c768-4396-84de-732a0b950aa3
begin
	numbers = collect(1:100)
	addUp(numbers)
end

# ╔═╡ 18946ad9-1b2d-4727-bf8d-7f3d130f2efd
sum(numbers)

# ╔═╡ c63d0b79-ddbc-4144-a2b7-aa1d9064b5bc
summ = reduce(+, numbers)

# ╔═╡ 983620c4-eb4b-4be4-93c3-377015df3977
# Example 2:- Concatenation of the String
begin
msg = ["Hello", " ", "world", "!"]
sentence = reduce(*, msg)
println(sentence)
end

# ╔═╡ b85ba055-7b4e-43cc-88d0-2d66ed91dbad
md"""
##### Map function
"""

# ╔═╡ 40fd21c2-f311-4abb-8fdf-6c8383bceccf
# Example of Map
function capitalizeall(t)
	res = []
	for s in t
		push!(res, uppercase(s))
	end
	res
end

# ╔═╡ 33168759-66a6-453c-b85b-84a2f5bd911e
begin
	x = "Hello World"
	output = capitalizeall(x)
	join(output)
end

# ╔═╡ f84c27f4-1ccd-4b08-b967-a9e86457cf53
begin
yy = "Hello World"
capitalized = map(_y->uppercase(_y), yy)
println(capitalized)
end

# ╔═╡ 9cc19ec2-280c-43ad-8666-74e017d67bf4
# Example 1 - Squaring the numbers
begin
	original_numbers = [1,2,3,4,5]
	squared_numbers = map(num -> num^2, original_numbers)
	println(squared_numbers)
end

# ╔═╡ 36d3bff9-e940-44a5-b15e-feece48ed5af
# Example 2 - Converting Int to String
begin
	numbrs = [10, 20, 30, 40]
	number_strings = map(string, numbrs)
	print(number_strings)
end

# ╔═╡ 5fdb8026-f6eb-4c33-88c4-f94ba313f1e6
md"""
##### Filter Function
"""

# ╔═╡ 7ed9435a-1abc-4eaf-ae05-63905617d02e
# Example of Filter
function onlyUpper(t)
	res = []
	for s in t
		if (s == uppercase(s)) && (s != ' ')
			push!(res, s)
		end
	end
	res
end

# ╔═╡ f4109f90-d4cd-4b33-adc7-50fb2db34498
println(onlyUpper("Hello World"))

# ╔═╡ 9705e6aa-ee53-473f-a367-38268e8c6c43
begin
hello_string = "Hello World"
upper_output = filter(x -> x == uppercase(x), hello_string)
println(upper_output)
end

# ╔═╡ 13357de6-4378-4f3c-b941-0d0857cba2b8
# Example 2 - Filtering Even numbers
begin
lnumbers = collect(1:10)
even_numbers = filter(x -> x % 2 == 0, lnumbers)
println(even_numbers)
end

# ╔═╡ 796c35ef-dc47-40b0-8de9-cd3484c57153
# Example 3 - Filtering Strings by Length
begin
words = ["apple", "banana", "grape", "cherry", "kiwi"]
short_words = filter(word -> length(word) <= 5, words)
println(short_words)
end

# ╔═╡ a7656c8b-c545-40ca-863b-3891e4993a4d
md"""
### Dot Syntax
"""

# ╔═╡ 19a44fd7-3aad-40a4-9cd5-7e0a61269ffe
print([1,2,3] .^ 3)

# ╔═╡ 48f33fcf-82b8-4d0b-a098-249b89865a40
uppercase.(["abc", "def", "ghi"])

# ╔═╡ 8d0adcbe-0bf0-4567-adbf-b8ce6c1bd1a3
begin
ll = [1, 2, 3, 4]
lm = ll .+ 2
end

# ╔═╡ 6d1207ca-50c2-47f5-8b3c-c9b6f33b1d0f
# Dot syntax with functions
begin
	xx = [1,2,3,4]
	sqrtx = sqrt.(xx)
end

# ╔═╡ 754d9ec7-fa65-4704-8118-bc81eb8c05c4
md"""
### Array Comprehension in Julia
"""

# ╔═╡ d7def9c9-65c8-40ea-83cb-642337dc9075
# result_array = [expression for variable in iterable if condition]
# creating an array of squares for even numbers using array comprehension
begin
	#even_numbers = [2,4,6,8,10]
	squared_evens = [x^2 for x in even_numbers]
	println(even_numbers)
end

# ╔═╡ 4cf49d82-750b-4690-8a5a-7a308fb4afe7
# squared numbers greater than 50
begin
	list_numbers = collect(1:20)
	println(list_numbers)
	squared_nums_gt_50 = [x^2 for x in list_numbers if x > 5]
	println(squared_nums_gt_50)
end

# ╔═╡ 7793cf14-f20c-430e-ae30-2a3a65ccfbad
multiples_of_3 = [3*i for i in 1:5]

# ╔═╡ 84bab0cf-7e68-403d-ae17-e54e180df61b
uppercase_words = [uppercase(word) for word in words]

# ╔═╡ 13725b50-dfcf-4eb3-b4f1-4ae5145bdfde
md"""
##### Nested Comprehension
"""

# ╔═╡ 85cc8751-8599-43ce-949d-7244b00eea0b
multiplication_table = [i * j for i in 1:5 for j in 1:10]

# ╔═╡ 4a886248-4e11-4016-9679-1813fd2aad6a
begin
fib = [1, 1]
fibonnaci = [fib[i-1] + fib[i-2] for i in 3:10]
end

# ╔═╡ 51fde0b3-e58e-48d1-88ad-f90bfb9d543d
md"""
### Deleting and Inserting Elements
"""

# ╔═╡ 1abf61b8-d802-4f90-9ebd-8d436bc5bf3d
# If Index of the elements from array is known then use splice!
begin
	zz = [1,2,3,4]
	splice!(zz, 2)
	zz
end

# ╔═╡ 5ab148e1-00d9-44fd-9c47-88ca60393b17
# pop! deletes and returns the last element
begin
	zzz = [1,2,3,4]
	pop!(zzz)
	zzz
end

# ╔═╡ 81793a4d-a784-401d-8032-09cb41a8fe4d
# popfirst! deletes and returns the first element
begin
	yyy = ['a', 'b', 'c', 'd', 'e']
	popfirst!(yyy)
	yyy
end

# ╔═╡ 808ec1a4-17b2-4646-b4e7-2e96a6968d4b
# If removed value is not needed then use deleteat!
begin
tt = ['a', 'b', 'c']
deleteat!(tt, 2)
tt
end

# ╔═╡ 5c50cc10-2285-458b-94d2-bd4886237cf3
# insert! inserts the given element at a given index
begin
	insert!(tt, 2, 'x')
end

# ╔═╡ fc900407-a4fd-439b-8230-11b7ba6c765e
md"""
### Arrays and Strings!!!
"""

# ╔═╡ 46771bfd-a7e5-4c60-af59-6ef8c79bd345
arr_string = collect("spam")

# ╔═╡ 862149fd-4b7c-4d93-8464-f96d6d260ae6
split_string = split("The quick brown fox jumped over a lazy dog")

# ╔═╡ 572128f4-4783-494d-8275-f3f67c74447d
join(split_string, ' ')

# ╔═╡ 6a0bdc50-5847-4472-9ce2-d0286c28fe4e
md"""
### Object and Values
"""

# ╔═╡ 117f9457-05af-43c1-b4af-13e1e5df0c77
begin
	a = "banana"
	b = "banana"
	a ≡ b
end

# ╔═╡ a572cfdb-e586-4e48-90f3-578462e5e227
begin
	aa = [1,2,3,4]
	bb = [1,2,3,4]
	bb ≡ aa
end

# ╔═╡ 6f01846c-34e5-4cf3-99e7-5cc73e1853f4
bb == aa

# ╔═╡ 0907abaf-5df1-4258-83d5-b39cb00fe39a
md"""
> above two arrays are equivalent because they have same elements but not identical because they don't have same objects
"""

# ╔═╡ 004958c7-4bde-46c6-9ff1-5b5e0f1054a3
begin
	mm = [1,2,3,4]
	nn = mm
	mm ≡ nn
end

# ╔═╡ f57946fd-8dfb-44f5-98f8-b5a067539804
nn[1] = 99

# ╔═╡ 430dc86f-9321-42ad-910d-077a24fcb2a9
nn, mm

# ╔═╡ da58bc14-2a92-4905-b7af-192ee555fba4
begin
	ee = [1,2,3,4]
	ff = copy(ee)
	ee ≡ ff
end

# ╔═╡ 5d593e2b-258a-4a41-b91e-a07ee98f1dca
ff[1] = 99

# ╔═╡ b0ddfcf0-2a43-4830-a3fe-41598a1bcad4
ee, ff

# ╔═╡ 5f603946-ad23-4303-a5b7-c641daaa0f93


# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.9.2"
manifest_format = "2.0"
project_hash = "ac1187e548c6ab173ac57d4e72da1620216bce54"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.0.5+0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.21+4"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.8.0+0"
"""

# ╔═╡ Cell order:
# ╟─e29226b6-3cd1-11ee-2a56-77fcbbd8e618
# ╟─ff56e283-bb4e-44d5-9e8f-c38e2b19e77f
# ╟─ad44fa37-c30a-4771-879f-2d76911432f2
# ╠═9275d872-dfd4-4f38-9e95-569dbe99fe25
# ╠═8f706882-0786-4486-b7e2-c9e1a94c82e5
# ╠═c62c2474-8d90-4ca8-bcbe-3466088bba01
# ╠═8e6c1fa7-b5a7-4ea9-bbda-44e6f21aba5e
# ╠═ee3f9311-989e-46b8-8ac6-f4b76d5bf479
# ╠═d5f2dcc3-5638-47c9-aa1e-1ef414a962ec
# ╠═65a94a84-89c8-407b-a20e-f87530b4594c
# ╠═5db7942b-a34a-4250-9026-7b7d85171fea
# ╟─0798c680-b523-46b4-a03c-4e25ab5c5e44
# ╠═386d37e1-4888-4c9c-9499-32bea432127d
# ╠═ec7ca82d-a2db-4061-985f-5b10708c7758
# ╠═43b53dbb-97ef-4bfe-8b73-5245aa3287a8
# ╠═96fe651a-667c-4289-b919-40abf6190a41
# ╠═41cc8991-907e-4ab4-a343-8a0699a9eda9
# ╠═84f589cb-527b-4916-bb3d-96d235f52474
# ╠═1fe7fb32-9685-4eaf-b8e7-3790e40b910c
# ╠═d31d77ee-648c-4bd8-8ddb-43466170e9a1
# ╠═b1fea302-61ac-448e-b1c2-db7417a9d528
# ╠═dfd6aacc-1c45-4896-8003-4eb9818b8192
# ╠═54d39eed-7344-47c2-ab02-6f835d503f75
# ╠═8d4c8f15-e5cf-4eb5-8ca1-50336bee2965
# ╠═4d7ffdc5-db88-4b69-a098-e42758647e15
# ╠═d2ef6a22-d6f1-4308-9d51-062645f70552
# ╠═b0c4de30-9a79-43da-a143-47b5f605a9b0
# ╠═ada32c41-bf66-4370-adb8-0e2347d08019
# ╠═9911572f-60c5-47e4-bf9a-6ff3f66f0210
# ╠═65971895-2d8a-4f6d-8d55-a20ede96d5c0
# ╠═096253b5-f096-4ed3-a97a-9e115fa185e7
# ╠═d5b93712-7f0e-4fcc-a5c3-7d8ada5a9aa4
# ╠═0cf205af-0430-4bdd-a39c-46460887df3c
# ╠═919f32d8-a9d1-4cc3-a22f-9a905004bc02
# ╠═1d2a833e-0909-47db-bbc6-9146122a71a4
# ╠═58d14c94-203e-40d3-918f-aeb1921d52c5
# ╠═23ac0a7d-137a-4372-8531-a387ab1e1a46
# ╠═f470391b-e14c-4773-8635-65d5cdfc5f5b
# ╠═38362046-268c-49aa-81f1-3b51cdef3c15
# ╠═8a7e4528-7f57-4eac-bb4d-bd8d7ebfb095
# ╠═b2d155ff-6c42-4546-8fc4-405d563d460f
# ╠═3feb8501-0b4c-4c2a-b5c5-7f78abc6bb19
# ╠═5d43df47-8da5-466a-a979-43bd67977339
# ╠═7c25d741-8f1b-4814-bd32-c43ee8acca53
# ╠═0e4ebc94-98d4-48bf-abb5-a6525a220bad
# ╠═17b6c50f-699f-4d46-965e-5d7fdcad0e55
# ╠═c33397c2-cd1d-485d-b936-4595172a8c71
# ╠═09edd0b8-470b-400f-ab1e-109f962f3409
# ╠═fb0c37cc-26f3-4543-8f3c-74b6133d41dd
# ╠═786702a9-4a51-4b9a-ae64-2af33a54999f
# ╠═73dbbd65-d300-413f-bc37-5c1152d97cb8
# ╠═62f744a3-fb90-4279-9cd3-524672183312
# ╠═a5d7dc03-0e42-4c9b-ba9a-2d78bda5d168
# ╠═9c1c438e-5504-465f-8391-ef48210c4cbb
# ╠═46eade57-6947-4e86-8f78-996240f5f468
# ╠═9f26a478-19be-4b4c-87e9-a94864b8ff0b
# ╠═5d9132b3-12d6-4d33-b8ac-1ef974ec1bbf
# ╠═a6f81b58-e6ec-44b9-a56a-bbfaadcce7af
# ╠═f38a8b93-6326-4f91-bd79-a44cceac0013
# ╠═bf35ec44-1726-4c61-b017-f45d5d38c1b0
# ╠═4239beb3-f7f7-4c61-bd97-950507848b93
# ╟─62744532-a10b-4215-9203-73e1a9c8f710
# ╟─4a1453df-169d-4930-ae05-2d77f1c524e8
# ╠═e398bc62-1b55-4a31-b512-5274a0cc820b
# ╠═96d77662-2198-4f11-aa41-8e2dbc560b5f
# ╠═18b358ba-c768-4396-84de-732a0b950aa3
# ╠═18946ad9-1b2d-4727-bf8d-7f3d130f2efd
# ╠═c63d0b79-ddbc-4144-a2b7-aa1d9064b5bc
# ╠═983620c4-eb4b-4be4-93c3-377015df3977
# ╟─b85ba055-7b4e-43cc-88d0-2d66ed91dbad
# ╠═40fd21c2-f311-4abb-8fdf-6c8383bceccf
# ╠═33168759-66a6-453c-b85b-84a2f5bd911e
# ╠═f84c27f4-1ccd-4b08-b967-a9e86457cf53
# ╠═9cc19ec2-280c-43ad-8666-74e017d67bf4
# ╠═36d3bff9-e940-44a5-b15e-feece48ed5af
# ╠═5fdb8026-f6eb-4c33-88c4-f94ba313f1e6
# ╠═7ed9435a-1abc-4eaf-ae05-63905617d02e
# ╠═f4109f90-d4cd-4b33-adc7-50fb2db34498
# ╠═9705e6aa-ee53-473f-a367-38268e8c6c43
# ╠═13357de6-4378-4f3c-b941-0d0857cba2b8
# ╠═796c35ef-dc47-40b0-8de9-cd3484c57153
# ╟─a7656c8b-c545-40ca-863b-3891e4993a4d
# ╠═19a44fd7-3aad-40a4-9cd5-7e0a61269ffe
# ╠═48f33fcf-82b8-4d0b-a098-249b89865a40
# ╠═8d0adcbe-0bf0-4567-adbf-b8ce6c1bd1a3
# ╠═6d1207ca-50c2-47f5-8b3c-c9b6f33b1d0f
# ╟─754d9ec7-fa65-4704-8118-bc81eb8c05c4
# ╠═d7def9c9-65c8-40ea-83cb-642337dc9075
# ╠═4cf49d82-750b-4690-8a5a-7a308fb4afe7
# ╠═7793cf14-f20c-430e-ae30-2a3a65ccfbad
# ╠═84bab0cf-7e68-403d-ae17-e54e180df61b
# ╠═13725b50-dfcf-4eb3-b4f1-4ae5145bdfde
# ╠═85cc8751-8599-43ce-949d-7244b00eea0b
# ╠═4a886248-4e11-4016-9679-1813fd2aad6a
# ╠═51fde0b3-e58e-48d1-88ad-f90bfb9d543d
# ╠═1abf61b8-d802-4f90-9ebd-8d436bc5bf3d
# ╠═5ab148e1-00d9-44fd-9c47-88ca60393b17
# ╠═81793a4d-a784-401d-8032-09cb41a8fe4d
# ╠═808ec1a4-17b2-4646-b4e7-2e96a6968d4b
# ╠═5c50cc10-2285-458b-94d2-bd4886237cf3
# ╟─fc900407-a4fd-439b-8230-11b7ba6c765e
# ╠═46771bfd-a7e5-4c60-af59-6ef8c79bd345
# ╠═862149fd-4b7c-4d93-8464-f96d6d260ae6
# ╠═572128f4-4783-494d-8275-f3f67c74447d
# ╟─6a0bdc50-5847-4472-9ce2-d0286c28fe4e
# ╠═117f9457-05af-43c1-b4af-13e1e5df0c77
# ╠═a572cfdb-e586-4e48-90f3-578462e5e227
# ╠═6f01846c-34e5-4cf3-99e7-5cc73e1853f4
# ╟─0907abaf-5df1-4258-83d5-b39cb00fe39a
# ╠═004958c7-4bde-46c6-9ff1-5b5e0f1054a3
# ╠═f57946fd-8dfb-44f5-98f8-b5a067539804
# ╠═430dc86f-9321-42ad-910d-077a24fcb2a9
# ╠═da58bc14-2a92-4905-b7af-192ee555fba4
# ╠═5d593e2b-258a-4a41-b91e-a07ee98f1dca
# ╠═b0ddfcf0-2a43-4830-a3fe-41598a1bcad4
# ╠═5f603946-ad23-4303-a5b7-c641daaa0f93
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
