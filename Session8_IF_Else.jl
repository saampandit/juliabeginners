### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 763a6a9a-3818-11ee-3a62-5920c035f5b8
md"""
### Julia has the conditional statements which describes the conditions
```
  if condition_evaluates
	execute below statements
  elif this_condition_evaluates
	execute below_statements
  else
	exceute this statements
```
"""

# ╔═╡ cbb11a83-bfb7-481a-b4df-2fa759acf2ec
"truths" > "sausages"

# ╔═╡ 9c2e2829-812b-4cd3-875e-20096c8fdfb2
"Truths" < "truths"

# ╔═╡ edd18fb8-5bcd-4621-ab64-d151634e4afd
begin
	x = 10
	y = 11
	if x < y
		println("x is less than y")
	elseif x > y
		println("x is greater than y")
	else
		println("x and y are equal")
	end
end

# ╔═╡ 629ac78e-1989-45a5-9007-c2c3e3ba8188
begin
	weather = "rainy"
	if weather == "rainy"
		println("Bring your umbrella")
	elseif weather == "windy"
		println("Dress up warm!!")
	elseif weather == "sunny"
		println("Don't forget sunscreen")
	else
		println("Check the darn weather yourself, I have no Idea.")
	end
end

# ╔═╡ f07e46d8-ba80-412f-93af-8ab7c1434c85
begin
	a = 150
	a % 2 == 0 ? println("even") : prinln("odd")
end

# ╔═╡ 6e26542f-eda0-4602-ab73-8d5407999e22

	begin
		xx, yy = 2, 1;
		println(xx<yy ? "x is less than y" : "x is greater than or equal to y")
	end


# ╔═╡ 60161c94-eacb-4038-8f49-76e6ec0e4621
md"""
## Compound Expressions
"""

# ╔═╡ 7ff5740d-68b5-40f2-8b7a-e8b4bdf9730a
z = begin
	x1 = 1
	y1 = 2
	x1 + y1
end


# ╔═╡ b7b7b941-7416-4027-91db-8336b8fbc6a1
z2 = (x2 = 1; y2 = 2; x2+y2)

# ╔═╡ fd19c022-8448-4657-bad9-a78637f28a42
begin x3 = 1; y3 = 3; x3 + y3 end

# ╔═╡ f850063c-036b-48cc-8ec2-3f8f95d47b80
(x4 = 1;
 y4 = 2;
 x4 + y4)

# ╔═╡ d0f4f0ed-b941-498c-bc2a-5279eb71bc71


# ╔═╡ Cell order:
# ╟─763a6a9a-3818-11ee-3a62-5920c035f5b8
# ╠═cbb11a83-bfb7-481a-b4df-2fa759acf2ec
# ╠═9c2e2829-812b-4cd3-875e-20096c8fdfb2
# ╠═edd18fb8-5bcd-4621-ab64-d151634e4afd
# ╠═629ac78e-1989-45a5-9007-c2c3e3ba8188
# ╠═f07e46d8-ba80-412f-93af-8ab7c1434c85
# ╠═6e26542f-eda0-4602-ab73-8d5407999e22
# ╟─60161c94-eacb-4038-8f49-76e6ec0e4621
# ╠═7ff5740d-68b5-40f2-8b7a-e8b4bdf9730a
# ╠═b7b7b941-7416-4027-91db-8336b8fbc6a1
# ╠═fd19c022-8448-4657-bad9-a78637f28a42
# ╠═f850063c-036b-48cc-8ec2-3f8f95d47b80
# ╠═d0f4f0ed-b941-498c-bc2a-5279eb71bc71
