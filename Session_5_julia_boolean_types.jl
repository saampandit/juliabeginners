### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 8f4f4b0a-3088-11ee-2ee6-d76f5625269c
md"""
# Booleans
##### Bool types are designed to build logical expressions and only carry two possible values **true(1)** and **false(0)**
##### A boolean expression is an expression that is either true or false. The following examplese use the operator ==, which compares two operands and produces `true` if they are `false`
"""

# ╔═╡ a12dd59c-f33c-4026-9fa9-46503cb98b2f
typeof(true)

# ╔═╡ 208cdfc4-7cee-4282-a8bb-25f4dd96fe52
typeof(false)

# ╔═╡ f45e1fe9-468f-4da8-a08b-a146a9f9a408
md"""
Following boolen operators are supported for the boolean types.

	- !x(negation)
	- x && y (logical AND)
	- x || y (logical OR)
"""

# ╔═╡ 05c0fe0b-98cd-4038-91bb-79c14a404a18
x = true

# ╔═╡ 46491a85-3953-455a-a16c-c3610581770a
!x

# ╔═╡ c801b22d-cb35-4346-8f1d-6189088dd83f
y = false

# ╔═╡ cf7ebcc1-4c99-4e6e-abb1-b330c6bf980c
x && y

# ╔═╡ 09e1a76b-6867-4cbb-a3d3-2f58feda5e6b
x || y

# ╔═╡ 8a4c1c65-cc5e-4ad6-b5f3-92e33e5338bb
true && false

# ╔═╡ 3677384c-9a25-4429-bd0b-1b1f7d12c018
true && true

# ╔═╡ 1c3e09a5-969f-4e35-ba78-bf95b0bebefa
false * 532

# ╔═╡ a8d43a4b-c785-40e3-8328-ff9d859afad6
println(false)

# ╔═╡ cac6184a-eb34-4a37-9012-ca0fcf247726
false == 0

# ╔═╡ d9cec87a-9174-4dca-b03f-bc2acc40265e
true == 1

# ╔═╡ f8cda0a4-0819-457e-9165-a4a26441e39e
0 * NaN

# ╔═╡ b7bb6487-0bc2-4ab3-b0d2-882311e53f2b
false * NaN

# ╔═╡ 8b8f0e5b-0c8b-4afb-ad5e-36544e5b5bde
true * 532

# ╔═╡ 2e825f5c-6ec6-4235-8a90-78cbbd5e131b
(true && false) || true

# ╔═╡ 1f9e4377-c50b-40da-92a0-d0588c4a45e4
(1 && 0) || 1

# ╔═╡ e451a42a-f1a2-47ff-b7aa-7d3dbdf09591


# ╔═╡ Cell order:
# ╟─8f4f4b0a-3088-11ee-2ee6-d76f5625269c
# ╠═a12dd59c-f33c-4026-9fa9-46503cb98b2f
# ╠═208cdfc4-7cee-4282-a8bb-25f4dd96fe52
# ╟─f45e1fe9-468f-4da8-a08b-a146a9f9a408
# ╠═05c0fe0b-98cd-4038-91bb-79c14a404a18
# ╠═46491a85-3953-455a-a16c-c3610581770a
# ╠═c801b22d-cb35-4346-8f1d-6189088dd83f
# ╠═cf7ebcc1-4c99-4e6e-abb1-b330c6bf980c
# ╠═09e1a76b-6867-4cbb-a3d3-2f58feda5e6b
# ╠═8a4c1c65-cc5e-4ad6-b5f3-92e33e5338bb
# ╠═3677384c-9a25-4429-bd0b-1b1f7d12c018
# ╠═1c3e09a5-969f-4e35-ba78-bf95b0bebefa
# ╠═a8d43a4b-c785-40e3-8328-ff9d859afad6
# ╠═cac6184a-eb34-4a37-9012-ca0fcf247726
# ╠═d9cec87a-9174-4dca-b03f-bc2acc40265e
# ╠═f8cda0a4-0819-457e-9165-a4a26441e39e
# ╠═b7bb6487-0bc2-4ab3-b0d2-882311e53f2b
# ╠═8b8f0e5b-0c8b-4afb-ad5e-36544e5b5bde
# ╠═2e825f5c-6ec6-4235-8a90-78cbbd5e131b
# ╠═1f9e4377-c50b-40da-92a0-d0588c4a45e4
# ╠═e451a42a-f1a2-47ff-b7aa-7d3dbdf09591
