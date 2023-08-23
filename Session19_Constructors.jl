### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 8058cc2c-41ac-11ee-0c18-e1eaef5b549c
md"""
# Constructors
"""

# ╔═╡ ae0cbf4f-a215-4345-957c-f3297710ef18
md"""
Sure thing! Imagine you're building a robot friend from a kit. The kit comes with different parts like a head, arms, legs, and a body. But to put all these parts together and make your robot friend work, you need to follow a special set of instructions. These instructions are like constructors in Julia!

In Julia, when you create a new "thing" (we call it an object) using a special "recipe" (we call it a constructor), you're following a set of instructions to make that thing just the way you want it.

Let's say you're making a toy car:

```julia
struct ToyCar
    color::String
    wheels::Int
end

# This is like the constructor for a ToyCar
function make_toy_car(color::String, wheels::Int)
    car = ToyCar(color, wheels)  # Put the parts together
    return car  # Here's your finished toy car!
end

# Making a red toy car with 4 wheels
my_toy_car = make_toy_car("red", 4)
```

In this example, you're making a `ToyCar` object. The `struct` part defines what a ToyCar is made of: its color and the number of wheels it has.

The `make_toy_car` function is like your special set of instructions. When you call it and give it a color and the number of wheels, it takes those parts and puts them together to create a toy car object just for you!

So, constructors in Julia are like following special instructions to build the objects you want, just like you follow instructions to build your robot friend or a toy car kit. 🚗🤖
"""

# ╔═╡ 8c211969-fed8-4fb6-acba-8e0479808ef4
struct ToyCar
	color::String
	wheels::Int
	Nitro::Bool
end

# ╔═╡ ba52eccc-ace8-4268-adac-c16f2c81d3c2
## This is like a constructor for a ToyCar
function make_toy_car(color::String, wheels::Int64, Nitro=true)
	car = ToyCar(color, wheels, Nitro) # Put the parts together
	return car
end

# ╔═╡ 60e01562-5c83-45ce-99d2-69aa821454e4
# Making a red toy car with 4 wheels
my_toy_car = make_toy_car("red", 4)

# ╔═╡ a8e2d7e8-5c28-4307-af64-1c7f862ca546
md"""
### Types of Constructor in Julia
##### 1. Default Constructor
This is the constructor which Julia automatically generates for us if we don't define any constructor
"""

# ╔═╡ fb671f80-ed2b-47b8-8ae3-c2ef336e3804
struct Point
	x::Int
	y::Int
end

# ╔═╡ 03081485-6cdc-48ce-9898-18dd1f651bb1
p = Point(3,4)

# ╔═╡ d38743f3-7c0c-4678-97ad-9b0ef1785e5c
md"""
##### 2. Outer Constructor
An outer constructor is defined outside the type definition and can provide more flexibility and validation when creating instances.
"""

# ╔═╡ dd9027fd-b812-4b61-bfa6-8db57b34bd3b
begin
struct Rectangle
	width::Float64
	height::Float64
end

function Rectangle(w::Float64, h::Float64)
	if w <= 0 || h <= 0
		throw(ArgumentError("Width and Height must be Positive"))
	end
	new(w, h)
end
end

# ╔═╡ 33b9c3ee-d8cc-41e1-9bea-67f756d19416
r = Rectangle(20, 30)

# ╔═╡ b7dca925-6ce0-4f5f-8233-0399d9dc6b76
begin
	struct Recipe
    name::String
    ingredients::Vector{String}
    servings::Int
end

# Outer constructor
function Recipe(name::String, ingredients::Vector{String})
    servings = length(ingredients) <= 3 ? 2 : 4
    Recipe(name, ingredients, servings)
end

# Creating a Recipe using the outer constructor
recipe1 = Recipe("Pasta Carbonara", ["pasta", "eggs", "bacon", "cheese"])
recipe2 = Recipe("Salad", ["lettuce", "tomato", "cucumber"])

println("Recipe 1 servings: $(recipe1.servings)")
println("Recipe 2 servings: $(recipe2.servings)")

end

# ╔═╡ 61e873ad-51b1-4b1a-9fc7-616bc97cc92d
md"""
#### 3. Inner Constructor
An inner constructor is defined inside the type and allows more complex logic during construction.
"""

# ╔═╡ b54238ce-0434-4c47-837d-39337a53a1e3
struct Student
	name::String
	age::Int64

	# Inner Constructor
	function Student(name, age)
		if age <= 0
			throw(ArgumentError("Age must be non-negative"))
		end
		new(name, age)
	end
end

# ╔═╡ 9a431bf8-6b61-4c27-a4f4-5cf1bae31731
student1 = Student("Drew", 19)

# ╔═╡ 06723568-ae1f-456c-9d70-5edacb0b6a89
student2 = Student("Alice", 0)

# ╔═╡ 1ae230fe-1d7d-44be-baf0-0e06fce076fd
begin
struct Movie
    title::String
    year::Int
    
    # Inner constructor
    function Movie(title, year)
        if year < 1900 || year > 2023
            throw(ArgumentError("Invalid year"))
        end
        new(title, year)
    end
end

# Creating a Movie using the inner constructor
movie = Movie("Inception", 2010)  # This works fine

# Trying to create a Movie with an invalid year (will throw an error)
try
    invalid_movie = Movie("Invalid Movie", 1800)
catch e
    println("Error: $e")
end
end

# ╔═╡ Cell order:
# ╟─8058cc2c-41ac-11ee-0c18-e1eaef5b549c
# ╟─ae0cbf4f-a215-4345-957c-f3297710ef18
# ╠═8c211969-fed8-4fb6-acba-8e0479808ef4
# ╠═ba52eccc-ace8-4268-adac-c16f2c81d3c2
# ╠═60e01562-5c83-45ce-99d2-69aa821454e4
# ╟─a8e2d7e8-5c28-4307-af64-1c7f862ca546
# ╠═fb671f80-ed2b-47b8-8ae3-c2ef336e3804
# ╠═03081485-6cdc-48ce-9898-18dd1f651bb1
# ╟─d38743f3-7c0c-4678-97ad-9b0ef1785e5c
# ╠═dd9027fd-b812-4b61-bfa6-8db57b34bd3b
# ╠═33b9c3ee-d8cc-41e1-9bea-67f756d19416
# ╠═b7dca925-6ce0-4f5f-8233-0399d9dc6b76
# ╠═61e873ad-51b1-4b1a-9fc7-616bc97cc92d
# ╠═b54238ce-0434-4c47-837d-39337a53a1e3
# ╠═9a431bf8-6b61-4c27-a4f4-5cf1bae31731
# ╠═06723568-ae1f-456c-9d70-5edacb0b6a89
# ╠═1ae230fe-1d7d-44be-baf0-0e06fce076fd
