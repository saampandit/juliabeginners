### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 0b9f86e4-3c0e-11ee-2a4f-d773ccdfa638
md"""
## Functions with Return values
Functions examples we have seen in previous chapters were not returning anything.
Now, we are going to look for examples which return something in the function.
"""

# ╔═╡ 678177aa-e32a-4e6c-b997-f9181ed3cbac
function plus(x, y)
	return x + y
end

# ╔═╡ 919b9e2d-e212-4364-a911-febf86f97384
plus(2,3)

# ╔═╡ 9f2db855-a873-40a6-8ad8-63cb911a57e6
function add(x, y)
	x + y
end

# ╔═╡ fbf27ef5-7853-431d-9fc9-b6019442807b
add(5, 4)

# ╔═╡ e6ee1789-4629-465d-a06f-1c00aaf92dee
function subract(x, y)
	output = x - y
	return output
end

# ╔═╡ 4864a603-5ae6-4d48-bcfa-5e3b773b6b82
md"""
### Function with multiple returns
"""

# ╔═╡ 05fdbbef-6e32-45af-a1a6-eade122641b5
function powers(num)
	return num, num^2, num^3, num^4
end

# ╔═╡ 4cce7bc6-faf5-4062-b449-197e8dda916e
powers(3)

# ╔═╡ c206d1f6-94a2-4a90-b4d9-459b3a9def48
function circle(r)
	area = π * r^2
	perimeter = π * 2 * r
	return area, perimeter
end

# ╔═╡ b533827e-6963-4ab0-b28d-1cbce14f9eb4
circle(5)

# ╔═╡ 1df7e33f-5be8-4d4d-8c90-d9a489b58612
md"""
## Variable number of arguments and its types
It may be convinient to define a function with variable number of arguments. Which means that it accepts as many arguments passed in the function.
Such functions are traditionally known as **varargs** functions. 
Julia defines varargs functions with triple dot syntax.
Example to follow below
"""

# ╔═╡ 670f7b8a-f6b2-4a94-9d66-ef1cba6c39bc
nargs(x...) = println("Number of arguments: ", length(x))

# ╔═╡ 7c234cb8-67a0-4c59-849c-cdedc4a2455f
nargs()

# ╔═╡ fe5a66be-9302-4e28-8711-cc009e14d554
nargs(1, 2, "a", :b, [1,2,3])

# ╔═╡ 07ab703d-f1e0-42f5-9506-5cf54b90cc59
begin
args = (1,2,3)
nargs(args)
end

# ╔═╡ a877c3a4-6b29-4b1c-8269-1329e1c25827
nargs(args...)

# ╔═╡ fa751b8e-614b-4184-a839-8712ba16a72c
nargs(args[1], args[2], args[3])

# ╔═╡ 5850e276-46a7-44f5-8f17-12e4986b8988
md"""
### Julia Functions Keyword arguments
In Julia it's possible to define the keyword arguments. Why Keyword arguments are useful ? It's useful when we there are multiple arguments we want to exactly map the functions according to the value.
In summary, keyword arguments in Julia improve code readability, provide flexibility, and enhance the user experience when working with functions that have optional parameters. They contribute to creating clean and maintainable code, making them an essential feature of the language.
"""


# ╔═╡ 54a72db5-a7a0-4ce2-bf08-771ab63e8473
function calculate_rectangle_area(;width:: Float64, height:: Float64)
	return width * height
end

# ╔═╡ 1c4266f9-beca-406b-a698-16749753df8c
calculate_rectangle_area(10, 30)

# ╔═╡ 6913ae26-2b13-4247-9101-bde62c7aea1e
calculate_rectangle_area(width=10.0, height=30.0)

# ╔═╡ e1496ca6-c938-4c44-9bf7-d6b619df664a
function add_numbers(x::Int64, y::Int64)
	return x + y
end

# ╔═╡ cae5e94b-3775-4412-a742-986fb541528b
add_numbers(3, 5)

# ╔═╡ 9d9285ca-73f2-44bc-9fe1-dd37d90f3139
md"""
> In the above code, we can see that semicolon acts as a partition between positional arguments and keyword arguments, if there is semicolon then the keyword arguments is required, else a positional arguments are required
"""

# ╔═╡ 9387420f-d6d8-4e4c-b2a0-8b4233634337
function greet_person(name::String; title::String = "Mr.")
	println("Hello, $title, $name")
end

# ╔═╡ 72ceabe7-a867-47fc-98a2-b8dc4ab7e73a
greet_person("John Hopkins")

# ╔═╡ b39c11a1-412e-40b5-8a96-9077849abc0b
greet_person("Mary WonderLand")

# ╔═╡ 3c462a3b-5847-4047-ad40-14acd593cca1
greet_person("Mary WonderLand", title="Mrs")

# ╔═╡ eefe26c0-8a5f-4e0b-beb0-e18d6f919df1
greet_person(title="Mrs", "Mary WonderLand")

# ╔═╡ ed697988-ec5f-4644-a117-b1586e065520
md"""
### Julia KWARGS 
Here we will learn about Julia Keyword Arguments, this is needed because sometimes we aren't sure of how many arguments will a function need.
For example you are designing a an app to record Users Social Media data, now except name other information like address, country are sometimes provided and sometimes not.
Then how to acheive the function to record the data, lets' see
"""

# ╔═╡ 824b8839-165b-4be7-9349-377141f125ef
function print_person_info(name::String; kwargs...)
	println("Name: $name")

	if haskey(kwargs, :age)
		println("Age: $(kwargs[:age])")
	end

	if haskey(kwargs, :country)
		println("Country: $(kwargs[:country])")
	end
end

# ╔═╡ 185530a1-9804-48de-9943-6454c05a12a6
print_person_info("Jacob", age = 21, country = "France")

# ╔═╡ 0455875a-24c7-4d54-8e68-5bd31ce2abb4
print_person_info("Jacob", age = 21, country = "France", phone_number="+91234879")

# ╔═╡ c4b4c3ff-8ba6-41bc-8710-3181ff51df68
md"""
### Calculator using Julia Functions with keyword arguments
"""

# ╔═╡ a023ec4a-aa49-4a81-8d02-0421ae4aba50
function perform_operation(x::Number, y::Number; operation::Symbol = :add, verbose::Bool=false)
	if operation == :add
		result = x + y
	elseif operation == :subract
		result = x - y
	elseif operation == :multiply
		result = x * y
	elseif operation == :division
		result = x / y
	else
		result = "Unknown Operations"
	end

	if verbose
		println("$x $operation $y = $result")
	end

	return result
end

# ╔═╡ 7b0fa236-7868-4a21-9857-df58245a5bb2
subract_result = perform_operation(10, 15, operation=:subract, verbose=true)

# ╔═╡ 0d0baefb-4302-449a-a5b6-24c5eff3b3e5
multiply_result = perform_operation(17, 3, operation=:multiply, verbose=true)

# ╔═╡ e7f5cccb-0516-42a4-a164-cfd236c83f23
unknown_operation = perform_operation(10, 220, operation=:square_root, verbose=true)

# ╔═╡ Cell order:
# ╠═0b9f86e4-3c0e-11ee-2a4f-d773ccdfa638
# ╠═678177aa-e32a-4e6c-b997-f9181ed3cbac
# ╠═919b9e2d-e212-4364-a911-febf86f97384
# ╠═9f2db855-a873-40a6-8ad8-63cb911a57e6
# ╠═fbf27ef5-7853-431d-9fc9-b6019442807b
# ╠═e6ee1789-4629-465d-a06f-1c00aaf92dee
# ╠═4864a603-5ae6-4d48-bcfa-5e3b773b6b82
# ╠═05fdbbef-6e32-45af-a1a6-eade122641b5
# ╠═4cce7bc6-faf5-4062-b449-197e8dda916e
# ╠═c206d1f6-94a2-4a90-b4d9-459b3a9def48
# ╠═b533827e-6963-4ab0-b28d-1cbce14f9eb4
# ╠═1df7e33f-5be8-4d4d-8c90-d9a489b58612
# ╠═670f7b8a-f6b2-4a94-9d66-ef1cba6c39bc
# ╠═7c234cb8-67a0-4c59-849c-cdedc4a2455f
# ╠═fe5a66be-9302-4e28-8711-cc009e14d554
# ╠═07ab703d-f1e0-42f5-9506-5cf54b90cc59
# ╠═a877c3a4-6b29-4b1c-8269-1329e1c25827
# ╠═fa751b8e-614b-4184-a839-8712ba16a72c
# ╟─5850e276-46a7-44f5-8f17-12e4986b8988
# ╠═54a72db5-a7a0-4ce2-bf08-771ab63e8473
# ╠═1c4266f9-beca-406b-a698-16749753df8c
# ╠═6913ae26-2b13-4247-9101-bde62c7aea1e
# ╠═e1496ca6-c938-4c44-9bf7-d6b619df664a
# ╠═cae5e94b-3775-4412-a742-986fb541528b
# ╟─9d9285ca-73f2-44bc-9fe1-dd37d90f3139
# ╠═9387420f-d6d8-4e4c-b2a0-8b4233634337
# ╠═72ceabe7-a867-47fc-98a2-b8dc4ab7e73a
# ╠═b39c11a1-412e-40b5-8a96-9077849abc0b
# ╠═3c462a3b-5847-4047-ad40-14acd593cca1
# ╠═eefe26c0-8a5f-4e0b-beb0-e18d6f919df1
# ╟─ed697988-ec5f-4644-a117-b1586e065520
# ╠═824b8839-165b-4be7-9349-377141f125ef
# ╠═185530a1-9804-48de-9943-6454c05a12a6
# ╠═0455875a-24c7-4d54-8e68-5bd31ce2abb4
# ╟─c4b4c3ff-8ba6-41bc-8710-3181ff51df68
# ╠═a023ec4a-aa49-4a81-8d02-0421ae4aba50
# ╠═7b0fa236-7868-4a21-9857-df58245a5bb2
# ╠═0d0baefb-4302-449a-a5b6-24c5eff3b3e5
# ╠═e7f5cccb-0516-42a4-a164-cfd236c83f23
