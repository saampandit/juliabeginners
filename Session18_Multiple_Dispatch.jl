### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 8878710c-41a5-11ee-1e34-e7efa29845f9
md"""
# Multiple Dispatch
Sure thing! Imagine you have a magical machine that can understand what you want it to do based on the colors of the things you show it. 🌈

Now, in Julia, there's something kind of similar called "multiple dispatch." It's like the machine looking at the colors of different things to figure out what to do with them.

Let's say you have some toys: a red ball, a blue car, and a green dinosaur. You want to play with them, but each one needs to be played with differently. So, you show these toys to the machine:

- When the machine sees the red ball, it knows you want to bounce it.
- When it sees the blue car, it knows you want to race it.
- And when it sees the green dinosaur, it knows you want to roar and stomp around.

This is a bit like how Julia works with functions! When you call a function in Julia, it looks at the types of the things you're giving it (like your toys' colors) to figure out which version of the function to use.

**Example in Julia:**

In Julia, we can create our own magic using multiple dispatch. Let's create a fun example with shapes and colors:

```julia
abstract type Shape end

struct Circle <: Shape
    radius::Float64
end

struct Square <: Shape
    side_length::Float64
end

function draw(shape::Circle)
    println("Drawing a circle with radius $(shape.radius)")
end

function draw(shape::Square)
    println("Drawing a square with side length $(shape.side_length)")
end

# Let's play with shapes!
circle = Circle(5.0)
square = Square(4.0)

draw(circle)
draw(square)
```

In this example, we have two shapes: circles and squares. We use the `draw` function, and based on the type of shape we give it, Julia knows which version of the function to use.

Just like the magical machine that reacts differently to different colors, Julia's multiple dispatch lets functions react differently to different types. It's like the computer is understanding what you want to do with your colorful shapes! 🎨🖍️

So, multiple dispatch is like having a smart machine that can figure out what to do based on the "colors" or types of the things you show it. It's a powerful way for Julia to work with different data in a super flexible and intuitive way! 🚀
"""

# ╔═╡ 9331758f-a118-4928-beb0-870ab987a7a1
begin
abstract type Shape end

struct Circle <: Shape
	radius::Float64
end

struct Square <: Shape
	side_length::Float64
end

function draw(shape::Circle)
	println("Drawing a circle with radius $(shape.radius)")
end

function draw(shape::Square)
	println("Drawing a square with side length $(shape.side_length)")
end

# Let's play with shapes
circle = Circle(5.0)
square = Square(4.0)

draw(circle)
draw(square)
end

# ╔═╡ 3bea1bcd-3370-4c07-9a89-297ccba998a0
md"""
### super simple example
"""

# ╔═╡ 55242433-fd2f-4003-9e6f-ee0bcf4e82ed
begin
	# Define an abstract type for animals
	abstract type Animal end
	# Define concrete animal types
	struct Dog <: Animal end
	struct Cat <: Animal end

	# Define functions for different animals
	function make_sound(animal::Dog)
		println("Woof woof!")
	end

	function make_sound(animal::Cat)
		println("Meow meow!")
	end

	# Create animal objects
	dog = Dog()
	cat = Cat()

	# Make animals make their sound
	make_sound(dog)
	make_sound(cat)
end

# ╔═╡ ea3a026d-aad6-4c5b-935c-e7d8da175519
function addUp(x::Int64, y::Int64)
	return x + y
end
	

# ╔═╡ c68bb0c8-ce63-43c9-a914-732acc661a75
function addUp(x::Float64, y::Float64)
	return x + y
end

# ╔═╡ 7e183ae0-bb8b-4426-9b83-3042f20babbd
addUp(3, 4)

# ╔═╡ 3a0e9612-3327-4a7f-a8fa-e9d1a913a8f2
addUp(3.0, 4.0)

# ╔═╡ a05836a9-6644-494b-80fc-f9e6d0d2f3cf
addUp(99, 88)

# ╔═╡ e934533e-f532-48dc-8c17-53f7991732fa
addUp(99.0, 88.0)

# ╔═╡ 90c6a055-e4d8-4f3c-92cf-0ae4949eeef4
md"""
> One of the goals of multiple dispatch is to make Softwares more maintainable, when other parts of the program change, it's easy to make up.
"""

# ╔═╡ 47f64c34-eaff-4ca1-afde-13861e05b318


# ╔═╡ 597d50e0-a780-47c6-af7e-f7a39bdfd80f


# ╔═╡ Cell order:
# ╟─8878710c-41a5-11ee-1e34-e7efa29845f9
# ╠═9331758f-a118-4928-beb0-870ab987a7a1
# ╠═3bea1bcd-3370-4c07-9a89-297ccba998a0
# ╠═55242433-fd2f-4003-9e6f-ee0bcf4e82ed
# ╠═ea3a026d-aad6-4c5b-935c-e7d8da175519
# ╠═7e183ae0-bb8b-4426-9b83-3042f20babbd
# ╠═3a0e9612-3327-4a7f-a8fa-e9d1a913a8f2
# ╠═c68bb0c8-ce63-43c9-a914-732acc661a75
# ╠═a05836a9-6644-494b-80fc-f9e6d0d2f3cf
# ╠═e934533e-f532-48dc-8c17-53f7991732fa
# ╟─90c6a055-e4d8-4f3c-92cf-0ae4949eeef4
# ╠═47f64c34-eaff-4ca1-afde-13861e05b318
# ╠═597d50e0-a780-47c6-af7e-f7a39bdfd80f
