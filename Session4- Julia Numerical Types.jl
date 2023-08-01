### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ b9823772-2a4b-11ee-2713-eddc5a59b939
md"""
# Julia Numerical Types
Julia Numerical Types Hierarchy is available at [Julia Numerical Types](https://docs.julialang.org/en/v1/base/numbers/).  Whereas Julia Numerical and Floating Point numbers can be found at [Integer And Floating Point Numbers](https://docs.julialang.org/en/v1/manual/integers-and-floating-point-numbers/)

# What is Abstract Type in Julia for 15 year old kid
Hey there! Sure, I'd be happy to explain abstract types and why numbers are considered abstract types in Julia in a way that's easy to understand.

Imagine you have a big box of different kinds of toys. Now, instead of talking about specific toys like "Teddy Bear" or "Toy Car," let's talk about categories of toys like "Stuffed Animals" and "Vehicles." These categories are like abstract types in Julia.

In Julia, an abstract type is a general category or idea of something without specifying its exact details. It's like saying "I want a toy car," but you haven't decided on a specific brand or model yet.

Now, let's talk about numbers. Numbers, like 1, 2, 3, and so on, are also abstract types in Julia. This is because we're talking about the general idea of numbers, not specific numbers themselves. It's like saying "Give me any number," without saying "Give me the number 5."

Julia is a language that can work with different types of numbers, such as whole numbers (integers like 1, 2, 3), fractional numbers (like 1.5, 3.25), and even very big or very small numbers. By treating numbers as abstract types, Julia can handle all these different types of numbers in a flexible and efficient way.

So, abstract types are like general categories, and numbers are considered abstract types in Julia because they represent the idea of numbers in general, allowing the language to work with various kinds of numbers without having to be tied to specific values.

# What is Abstract type in Julia for software engineer
Sure! To explain abstract types in Julia to a software engineer, let's dive a bit deeper into the technical aspect:

In Julia, an abstract type is a type that doesn't have a concrete representation or a specific set of values. Instead, it represents a general concept or category that other types can belong to. It's like a blueprint or a contract that specifies certain characteristics that any concrete type inheriting from it must have.

For example, consider the concept of a "Shape." A shape is an abstract type because it doesn't describe any specific shape like a circle or a square, but rather, it defines common properties that any concrete shape must have, such as calculating area or perimeter.

In Julia, you can create an abstract type using the `abstract` keyword:

```julia
abstract type Shape end
```

Now, any concrete shape type, like `Circle` or `Rectangle`, can be defined to inherit from the abstract type `Shape`. This is done using the `<:` symbol, which means "is a subtype of":

```julia
struct Circle <: Shape
    radius::Float64
end

struct Rectangle <: Shape
    length::Float64
    width::Float64
end
```

By doing this, we're saying that both `Circle` and `Rectangle` are specific types of shapes, and they must implement the functions or behavior defined by the abstract type `Shape`. For example, both `Circle` and `Rectangle` must have a method to calculate their area and perimeter.

Now, let's talk about why numbers are considered abstract types in Julia. In Julia, the concept of numbers is abstract because there isn't just one specific type that represents all numbers. Instead, Julia has different types for different kinds of numbers, such as integers (`Int`), floating-point numbers (`Float64`), rational numbers (`Rational`), and more.

By treating numbers as abstract types, Julia can provide a unified interface for working with numbers in general. This means you can write code that operates on any kind of number without being restricted to a specific type. For example, you can write a function that takes two numbers as input, and it will work with both integers and floating-point numbers seamlessly.

In summary, abstract types in Julia allow you to define general concepts or categories that other types can inherit from, ensuring that those concrete types adhere to certain behaviors. Numbers are considered abstract types in Julia because the language provides multiple concrete number types, and treating them as abstract types allows for more flexible and generic code that can work with different kinds of numbers.
"""

# ╔═╡ 5d2debbf-2f41-469a-8836-19b9cd65d8c7
md"""
# Integers
"""


# ╔═╡ 763632f9-8850-4203-a7c6-770ad65a07f7
1

# ╔═╡ 599b0e1e-243b-48b7-b452-bf34b88c4c76
1234

# ╔═╡ f54dfc63-c978-4eb0-aee0-e06399d5bce6
md"""
## How to get the type of system type either 32 or 64, 4 ways below
	typeof(1)
	println(Sys.WORD_SIZE)
	Int
	UInt
"""


# ╔═╡ d35f0a0e-3114-4e2b-bbf5-2659fe86114a
md"""
# How to input the Unsigned Integer ?
### Unsigned Integer is denoted with prefix 0x prefix and hexadecimal (base 16) digits 0-9a-f (A-F)


x = 0x1
typeof(x)

x = 0x123
typeof(x)

"""

# ╔═╡ 4c22e5be-b310-42a3-a39f-58b3053364f9
md"""
# Binary and Octal literal types are supported within Julia
"""


# ╔═╡ 2164d3b2-f51b-4e86-8250-37c09aa22c60
begin
	println(typeof(0b10))
	println(typeof(0o10))
	println(0b10)
	println(0o10)
end

# ╔═╡ 6dbc21db-9812-4418-b791-919f8e1dd294
md"""
# Finding minimum and maximum value of types
"""

# ╔═╡ 5a7ccbbf-11a6-4c46-b752-97617ee2fdac
(typemin(Int32), typemax(Int32))

# ╔═╡ ac1b52f5-e6d8-49b8-a22e-22baed2645b5
(typemin(Int64), typemax(Int64))

# ╔═╡ ad173ec1-2073-486a-9a43-4f857f971722


# ╔═╡ 3684cbdd-eb8e-428a-b58c-5d644ee4b7b2
2 ^ 64 -1

# ╔═╡ 00790f58-95ad-4978-b576-d9ef676ffa5c
BigInt(2)^64 -1

# ╔═╡ dc7b87ce-63b5-4a05-b58e-7b29e79ba93c
md"""
# Floating point numbers
"""

# ╔═╡ 7de3b9f7-fbec-4d52-90d2-6877e9caed9c
begin
println(1.0)
println(1.)
println(0.5)
println(.5)
println(-1.23)
println(1e10)
println(2.5e-4)
end

# ╔═╡ 110601cb-947c-4d1e-955d-0f736b39ec63
md"""
## Floating point zero
Floating point zero have equal values when compared but have different representation
"""

# ╔═╡ 25549c64-7481-40b5-b2aa-939cd9733431
0.0 == -0.0

# ╔═╡ 828929c0-b86c-4fbc-b05f-8064fb22a5ba
bitstring(0.0)

# ╔═╡ e7e47840-3fa2-445f-bcf7-3cf613014e9b
bitstring(-0.0)

# ╔═╡ 481a5394-79af-4b66-b77c-1e110c1e7936
md"""
# Machine Epsilon
Most real numbers cannot be represented exactly with floating-point numbers, and so for many purposes it is important to know the distance between two adjacent representable floating-point numbers, which is often known as machine epsilon.

Julia provides eps, which gives the distance between 1.0 and the next larger representable floating-point value:
"""

# ╔═╡ 3c764240-b97b-4cf1-a140-c3764c849c66
eps(Float32)

# ╔═╡ 9d76e6dc-7bce-49de-83a8-1df261feed82
eps(Float64)

# ╔═╡ ccef183d-2ff7-466c-bdc7-4ac98dacc26b
eps()

# ╔═╡ 9ff6e995-a3c8-4596-9026-e346040693f7
md"""
# Numeric Literal Coefficients
Julia uses common numeric formulae and expressions clearer, Julia allows variables to immediately preceded by a numeric literal, implying multiplication. 
This makes writing polynomial expressions much cleaner
"""

# ╔═╡ 0f7d9b88-7a92-4b83-b26c-c32d3fa712de
x + 1

# ╔═╡ b33f3f4e-9649-4cf1-bb67-c783f3b7a3cd
2x^2 - 3x + 1

# ╔═╡ 93d0ed17-e78f-4b35-bf5a-cfcd7a8d03c9
1.5x^2 - .5x + 2

# ╔═╡ 518c9bc9-bd11-4ee8-833f-f1399f784053
md"""
# Complex Numbers
The global constant **im** is bound to the complex number i, representing representing the principal square root of -1.
"""

# ╔═╡ 9f75d73c-0dde-44e4-9524-d77a65e65928
(1 + 2im)*(2 - 3im)

# ╔═╡ f937dcad-92e6-4bfe-aefb-de8fd48a17ae
(1 + 2im)/(1 - 2im)

# ╔═╡ 6249c137-7210-4b92-aa2f-3aa5221f8c8f


# ╔═╡ b43ab3b7-1cb9-414d-9f25-fd3347e8caa0
md"""
# Rational Numbers
Rational Numbers are Used to Represent exact ratio of the Integers. Rationals are constructed using //
"""

# ╔═╡ 6d747f73-af8d-4cba-b9de-82dc22f2fd23
2 // 3

# ╔═╡ 621a75a3-1522-4a7f-b370-b7006cfe7c63
3 // 9

# ╔═╡ 2ed4781e-3681-4520-8921-45679d45cd5a
4 // 8

# ╔═╡ e996a689-0f4e-43ed-823f-e38d16efc842
7 // 3

# ╔═╡ b24d6290-94ce-40cb-b9e1-55ef94ebd767
9 // 3

# ╔═╡ 3c247632-1115-4bc5-9849-66496d27c1b7
md"""
# Some common operations for numbers
"""

# ╔═╡ 9bbb6792-afd0-4518-bd60-9cebbf41ccf0
md"""
## Conversion of Integer to Float
"""

# ╔═╡ 19c5b2ae-14e1-46a5-9671-65e19441fdc2
Float64(2) # double precision

# ╔═╡ f8f98a96-54e3-4e59-8f00-eec5489a5f3c
Float32(2)

# ╔═╡ ac9b1bef-ea89-4116-addc-f64ccf06b66a
Float16(2) # half precision

# ╔═╡ 3b9be40a-f60a-4409-8ccd-bb733600ecbb
md"""
## Conversion of Float to Integer
"""

# ╔═╡ 346a2820-936b-477c-93e0-1c5df0d257d7
Int64(2.0)

# ╔═╡ ad72db60-e72c-42a4-ac82-1b02c8a56dc9
Int64(2.4)

# ╔═╡ e8d582e3-7be9-4332-b926-0ce2b62c49b3
floor(Int64, 2.4) # round x towards -Inf

# ╔═╡ 33a1a7e3-35be-4012-b706-0bca6b413d4e
ceil(Int64, 2.4) # round x towards +Inf

# ╔═╡ 5765c152-3bfa-49dd-a562-de90a0b8a88b
round(Int64, 2.4) # round x to nearest Integer

# ╔═╡ 9bea1f70-991b-432f-90ce-16ccf87f61f4
md"""
## Integer Division
"""

# ╔═╡ e2a43717-fc85-4112-a87b-69f793777bea
div(10,3)

# ╔═╡ e641b3f6-e06c-42af-b6b5-27682d22c750
(a+b)^2

# ╔═╡ 82d9c770-1552-4c48-881c-f99912685efe
div(10,3)

# ╔═╡ a0967215-0332-4db3-bbdc-af5c9d9afc92
rem(10,3)

# ╔═╡ b9f21978-a640-4bd9-9a3a-0998b9cf37a1
divrem(10,3)

# ╔═╡ adf9d5ec-a277-492c-9ef9-446c1ceacd49
sqrt(16)

# ╔═╡ f279fb10-a229-4d0d-a3f1-c04beffd84df
cbrt(27)

# ╔═╡ 0a1a8624-c6b6-46f8-8dc3-a8a1336fe093


# ╔═╡ ff6de9b8-8364-4f68-b787-a05ae086f79b
a, b = 3, 4

# ╔═╡ da1d18e2-33b3-4917-9100-fc226d761f07
x = 3

# ╔═╡ 694becfe-0666-40bc-b0bf-8cced304c210
# ╠═╡ disabled = true
#=╠═╡
x = typemax(Int64)
  ╠═╡ =#

# ╔═╡ b35413fa-1898-4a5f-8670-1963827cd82f
begin
	a = 1/2
end

# ╔═╡ Cell order:
# ╟─b9823772-2a4b-11ee-2713-eddc5a59b939
# ╟─5d2debbf-2f41-469a-8836-19b9cd65d8c7
# ╠═763632f9-8850-4203-a7c6-770ad65a07f7
# ╠═599b0e1e-243b-48b7-b452-bf34b88c4c76
# ╟─f54dfc63-c978-4eb0-aee0-e06399d5bce6
# ╠═d35f0a0e-3114-4e2b-bbf5-2659fe86114a
# ╠═4c22e5be-b310-42a3-a39f-58b3053364f9
# ╠═2164d3b2-f51b-4e86-8250-37c09aa22c60
# ╠═6dbc21db-9812-4418-b791-919f8e1dd294
# ╠═5a7ccbbf-11a6-4c46-b752-97617ee2fdac
# ╠═ac1b52f5-e6d8-49b8-a22e-22baed2645b5
# ╠═ad173ec1-2073-486a-9a43-4f857f971722
# ╠═694becfe-0666-40bc-b0bf-8cced304c210
# ╠═0f7d9b88-7a92-4b83-b26c-c32d3fa712de
# ╠═3684cbdd-eb8e-428a-b58c-5d644ee4b7b2
# ╠═00790f58-95ad-4978-b576-d9ef676ffa5c
# ╟─dc7b87ce-63b5-4a05-b58e-7b29e79ba93c
# ╠═7de3b9f7-fbec-4d52-90d2-6877e9caed9c
# ╟─110601cb-947c-4d1e-955d-0f736b39ec63
# ╠═25549c64-7481-40b5-b2aa-939cd9733431
# ╠═828929c0-b86c-4fbc-b05f-8064fb22a5ba
# ╠═e7e47840-3fa2-445f-bcf7-3cf613014e9b
# ╠═481a5394-79af-4b66-b77c-1e110c1e7936
# ╠═3c764240-b97b-4cf1-a140-c3764c849c66
# ╠═9d76e6dc-7bce-49de-83a8-1df261feed82
# ╠═ccef183d-2ff7-466c-bdc7-4ac98dacc26b
# ╟─9ff6e995-a3c8-4596-9026-e346040693f7
# ╠═da1d18e2-33b3-4917-9100-fc226d761f07
# ╠═b33f3f4e-9649-4cf1-bb67-c783f3b7a3cd
# ╠═93d0ed17-e78f-4b35-bf5a-cfcd7a8d03c9
# ╠═ff6de9b8-8364-4f68-b787-a05ae086f79b
# ╠═e641b3f6-e06c-42af-b6b5-27682d22c750
# ╟─518c9bc9-bd11-4ee8-833f-f1399f784053
# ╠═9f75d73c-0dde-44e4-9524-d77a65e65928
# ╠═f937dcad-92e6-4bfe-aefb-de8fd48a17ae
# ╠═6249c137-7210-4b92-aa2f-3aa5221f8c8f
# ╠═b43ab3b7-1cb9-414d-9f25-fd3347e8caa0
# ╠═6d747f73-af8d-4cba-b9de-82dc22f2fd23
# ╠═621a75a3-1522-4a7f-b370-b7006cfe7c63
# ╠═2ed4781e-3681-4520-8921-45679d45cd5a
# ╠═e996a689-0f4e-43ed-823f-e38d16efc842
# ╠═b24d6290-94ce-40cb-b9e1-55ef94ebd767
# ╟─3c247632-1115-4bc5-9849-66496d27c1b7
# ╟─9bbb6792-afd0-4518-bd60-9cebbf41ccf0
# ╠═19c5b2ae-14e1-46a5-9671-65e19441fdc2
# ╠═f8f98a96-54e3-4e59-8f00-eec5489a5f3c
# ╠═ac9b1bef-ea89-4116-addc-f64ccf06b66a
# ╟─3b9be40a-f60a-4409-8ccd-bb733600ecbb
# ╠═346a2820-936b-477c-93e0-1c5df0d257d7
# ╠═ad72db60-e72c-42a4-ac82-1b02c8a56dc9
# ╠═e8d582e3-7be9-4332-b926-0ce2b62c49b3
# ╠═33a1a7e3-35be-4012-b706-0bca6b413d4e
# ╠═5765c152-3bfa-49dd-a562-de90a0b8a88b
# ╟─9bea1f70-991b-432f-90ce-16ccf87f61f4
# ╠═e2a43717-fc85-4112-a87b-69f793777bea
# ╠═b35413fa-1898-4a5f-8670-1963827cd82f
# ╠═82d9c770-1552-4c48-881c-f99912685efe
# ╠═a0967215-0332-4db3-bbdc-af5c9d9afc92
# ╠═b9f21978-a640-4bd9-9a3a-0998b9cf37a1
# ╠═adf9d5ec-a277-492c-9ef9-446c1ceacd49
# ╠═f279fb10-a229-4d0d-a3f1-c04beffd84df
# ╠═0a1a8624-c6b6-46f8-8dc3-a8a1336fe093
