### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 61a973a8-3bfb-11ee-1463-2d91da7d81c0
md"""
## Julia Function Introductions
**What is a function ?**
Ans-> Of course! Let's say you're playing a game on your computer, and you want to make a character jump whenever you press a button. You can use a function for that too!

Imagine you create a function called "jump." Inside this function, you tell the computer how high the character should jump and what animations to show. Whenever you press the jump button, you call this function, and the computer follows the instructions inside it to make the character jump.

It's like having a special button on your game controller that says "Jump," and every time you press it, the character in the game jumps just like you told the computer to do.

Functions are like little helpers that you can create to make your code more organized and to perform specific tasks whenever you need them. Just like having a special move in a video game that you can use whenever you want!
We encode sequence of statements and then the function executes the code.

### We have already seen some examples of fuctions in Julia
```Julia
	println("Hello World")
	parse(Int64, "32")
	parse(Float64, "3.14596")
	parse(Int64, "Hello")
	trunc(Int64, 3.9999)
	trunc(Int64, -2.3)
	float64(32)
	string(33)
	string(3.141569)
```
### Some existing math functions
```Julia
sqrt(16)
cbrt(81)
sin(45)
cos(45)
```
"""

# ╔═╡ 93411490-796b-4a68-8794-711d1d9ac30f
md"""
### Creating New Functions in Julia
In Julia, a function is an object that maps a tuple of argument values to a return value. There are multiple ways to create a function. Each of them is useful in different situations. 
##### The first way is the function ... end syntax
```Julia
function sayHi()
	println("Hi Barbie")
	println("Hello Oppenheimer")
end

function plus(x,y)
    x + y
end
```
1. function is a keyword which indicates that this is a function definition
2. **plus** is the name of the function
3. Empty parenthesis indicates that there is no argument supplied

### Call function within function
```Julia

function requestDrink()
	println("What you would prefer Tea/Coffee?")
end

function welcomeGuest()
	sayHi()
	requestDrink()
end
```
"""

# ╔═╡ 1d0fb01d-6b13-4935-93fb-dec0d6b546e0
md"""
### Parameters and Arguments
Parameters and Arguments, Inside a function arguments are assgined to a parameter, here argument is assigned to a parameter named "guest_name"

**Variables and Parameters are local to the function**
"""

# ╔═╡ 2f5c32f5-204e-4e55-9b0a-b359e408e83f
begin
function learningMessage(language_name)
	println("What would you like to learn $language_name?")
end

function welcomeGuest(guest_name)
	welcome_message = "Hello $guest_name, Welcome to GeekGuru"
	println(welcome_message)
	learningMessage("Python")
	println("or")
	learningMessage("Julia")
end
welcomeGuest("Thor")
end

# ╔═╡ a44cc26e-6ba2-46f4-ae7a-ebe642b33e51
println(welcome_message)

# ╔═╡ 484821a2-f9e0-4703-9a16-f7ef11eca708
md"""
### One liner functions in julia
In julia another way to define a function is one liner functions
"""

# ╔═╡ 28e46c1f-8fff-4b2d-b402-dd89230e1d8a
add(a,b) = a + b

# ╔═╡ b86f28ee-8701-4cf4-ab90-25e419c00237
add(2,3)

# ╔═╡ fbf2fce1-da4b-4b49-9d92-2a4714a7665a
hello(n) = print("Hello, World! "^ n)

# ╔═╡ b2bd0f3b-d55f-495f-832f-b289f844d9d9
hello(2)

# ╔═╡ 6f769bfb-889b-4c2e-895b-a95251fb9454
palindrome(str) = str == reverse(str)

# ╔═╡ bd70cfea-4087-412a-9f70-4d24b1cd90d6
palindrome("abbad")

# ╔═╡ 0c0f2683-8145-448e-8bb8-894d3a902c0b
md"""
# Anonymous Functions in Julia
Anonymous functions in Julia are created using '->' syntax, here the arguments are listed before the arrow and expression/statements are listed after the arrow.
"""

# ╔═╡ 74d97f44-eaa2-40f5-b56a-b4e47afaa000
h1 = x -> x^2 + 2x + 1

# ╔═╡ 807505e4-66dc-4de2-b48a-d25a549ed5c8
h1(2)

# ╔═╡ 5b88ffb9-d518-4dba-8295-9dc4b52a0118
function sqr(x)
	x^2 + 2x + 1
end

# ╔═╡ 7e148ece-3397-413b-8469-eabe9174b3cc
sqr(3)

# ╔═╡ be4e7e06-6cb7-49aa-b4fa-34629065de87
md"""
Void Functions explain
"""

# ╔═╡ Cell order:
# ╟─61a973a8-3bfb-11ee-1463-2d91da7d81c0
# ╟─93411490-796b-4a68-8794-711d1d9ac30f
# ╟─1d0fb01d-6b13-4935-93fb-dec0d6b546e0
# ╠═2f5c32f5-204e-4e55-9b0a-b359e408e83f
# ╠═a44cc26e-6ba2-46f4-ae7a-ebe642b33e51
# ╟─484821a2-f9e0-4703-9a16-f7ef11eca708
# ╠═28e46c1f-8fff-4b2d-b402-dd89230e1d8a
# ╠═b86f28ee-8701-4cf4-ab90-25e419c00237
# ╠═fbf2fce1-da4b-4b49-9d92-2a4714a7665a
# ╠═b2bd0f3b-d55f-495f-832f-b289f844d9d9
# ╠═6f769bfb-889b-4c2e-895b-a95251fb9454
# ╠═bd70cfea-4087-412a-9f70-4d24b1cd90d6
# ╠═0c0f2683-8145-448e-8bb8-894d3a902c0b
# ╠═74d97f44-eaa2-40f5-b56a-b4e47afaa000
# ╠═807505e4-66dc-4de2-b48a-d25a549ed5c8
# ╠═5b88ffb9-d518-4dba-8295-9dc4b52a0118
# ╠═7e148ece-3397-413b-8469-eabe9174b3cc
# ╠═be4e7e06-6cb7-49aa-b4fa-34629065de87
