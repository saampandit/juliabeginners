### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ d3fa546c-0868-460d-8fe8-b2bbc5f49888
using .A:b # make variable b accessible from module A

# ╔═╡ 4398fbef-954d-4e8a-8d45-82f8096d13ef
using BenchmarkTools

# ╔═╡ 2516caa6-3cc2-11ee-2692-715592ff68bf
md"""
## Scopes of Variables
Scopes of variables is the region of the code where variable is visible.
There two main main scopes in Julia
  1. Global
  2. Local
Global Scopes can contain multiple scope blocks
Local scope blocks can be nested
There is also a distinction between Julia Constructs which introduces **hard scope** and **soft scope**. 
This affects whether a shadowing a global variable is allowed or not.
The concept is intuitive: two functions can both have arguments called x without the two x's referring to the same thing. Similarly, there are many other cases where different blocks of code can use the same name without referring to the same thing. The rules for when the same variable name does or doesn't refer to the same thing are called scope rules; this section spells them out in detail.

[Scope Documentation](https://docs.julialang.org/en/v1/manual/variables-and-scoping/#scope-of-variables)
"""


# ╔═╡ f901bdfb-03c2-42da-a278-ddb0e56e2c97
md"""
### Local Scope
The function declaration introduces a new(hard) local scope. It means that all variables defined inside a function body can be accessed and modified inside a function body.
The variable declared inside a function body is impossible to access outside.
Let's see with a example
"""

# ╔═╡ faab40f7-42fe-4152-9346-72bdca7be687
function f()
	z = 42
	return
end

# ╔═╡ c462fc09-b3b3-43af-9e62-63455362a42b
f()

# ╔═╡ a9515568-b2ce-4025-a238-41afa2dd6ed2
md"""
> Above method of accessing variable is not recommended approach in Julia. It is recommended to return the variable and then output the variable. As shown below
"""

# ╔═╡ c4e0c57b-801c-4fa6-b748-1d3124071126
function func()
	z = 42
	return z
end

# ╔═╡ 89708313-0e17-4b7b-94ae-b288c1c0133b
begin
	z = func()
	print(z)
end

# ╔═╡ c42fd469-f028-4e92-a741-e66e98bb3bff
z

# ╔═╡ d8be1ad3-af60-4273-8c12-ae0c6babacef
md"""
**In the above example variable z inside the function is local and variable z outside the function is global.**
"""

# ╔═╡ 7517e034-4ba2-43ac-92de-40a9b462ac57
md"""
## Global Scope
Global Scope are the ones in which variables are accessible throughout the module.
Every module introduces a new global scope, which is separate from the global scope of all other modules. The Interactive prompt (aka REPL) is in the global scope of the module Main.
"""

# ╔═╡ 3ab6269c-edbc-485d-afca-5372f1f7d793
module A
	a = 1 # a global in A's scope
	b = 2 # b global in A's scope
end

# ╔═╡ 378812a2-b417-4cc2-a53b-d5bf9a4b206b
a

# ╔═╡ 5eb6a8c6-7c96-41a1-acfe-2dc0cae25881
A.a

# ╔═╡ abb72709-b6b8-4b1e-99d9-59eeb7b71843
b

# ╔═╡ 3c3225d9-ea17-48b6-9b11-9d34a002c9da
md"""
#### while variables can be accessed and read externally but they can only be changed within the module they belong to.
**below command will throw error in the REPL**
"""

# ╔═╡ 756433c8-bdaf-4e7a-8231-a8078e190de3
# ╠═╡ disabled = true
#=╠═╡
b = 4
  ╠═╡ =#

# ╔═╡ 0b1da19c-3815-4b23-8f71-70b708673ec3
md"""
Global scope variables can accessed anywhere inside the Global scope, even inside the local scope. In this function we define the variable c inside the Global scope and then see how we access the variable c inside the local scope.
"""

# ╔═╡ ddbe2ef9-c52c-4043-98c0-7f202cb488fe
c = 10

# ╔═╡ e4735c0a-feab-4e5c-9b7d-f629476b6c71
foo(x) = x + c


# ╔═╡ 5c928ca4-31a3-45d6-bdf5-35dc227b9169
foo(4)

# ╔═╡ d81c2ff4-4a7f-4711-a9b7-9700b7dce6dc
HTML("""<p style="color: red;"><b>It is not recommended to use the global variables in this manner, this will lead to buggy code. Another reason is that global variables can change their type and value at any time, and therefore they cannot be properly optimized by the compiler. Let's perform a simple test for performance</b></p>""")

# ╔═╡ 773df3dc-64f5-4ca4-b5a7-43ca96d7cda9
x = rand(10)

# ╔═╡ 4c2448c7-1b61-4374-8700-533e61ced22a
y = rand(10)

# ╔═╡ fb2c18f7-123f-4016-be0a-f52bdf6b22e5
f_global() = x .+ y

# ╔═╡ 0b289be8-ebe6-4d8c-981d-43b507bfc937
f_local(x, y) = x .+ y

# ╔═╡ 99e8490d-ea71-4199-911d-a925d1193994
hcat(f_global(), f_local(x, y))

# ╔═╡ 5f6ace47-767b-4213-9e32-7189b4aa60f7
@btime f_global();

# ╔═╡ b92eb544-6e82-4cea-9986-1049b76a8198
@btime f_local(x, y);

# ╔═╡ 78374f50-2f29-4abd-abb0-504c65583d95
md"""
The second function is faster and needs fewer allocations. An allocation occurs whenever a new memory is requested from the system. Each allocation consumes some amount of time and resources. First call will be slower due to compilation.
"""

# ╔═╡ 22393e27-774d-4db7-8ccc-9358c569b21d
m, n = 1:10, 11:20;

# ╔═╡ 4747013e-6e49-45e2-a8a9-3b54c353f2de
@btime f_local(m, n);

# ╔═╡ 3f5a89c1-41c9-4126-8c73-d60b368adb63
@btime f_local(m, n);

# ╔═╡ b2ce1096-9f43-404a-b151-8c01534a7e4e
p, q = 1:1000, 1001:2000;

# ╔═╡ f32f7d90-c4a7-4329-bf42-974ef599ec54
@btime f_local(p,q)

# ╔═╡ babac9e0-521a-45a7-90d6-ec16314e6c81
@btime f_local(p,q)

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
BenchmarkTools = "6e4b80f9-dd63-53aa-95a3-0cdb28fa8baf"

[compat]
BenchmarkTools = "~1.3.2"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.9.2"
manifest_format = "2.0"
project_hash = "8c72e043718b5b2b781afa164b5e4ec6fa6c9bde"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.BenchmarkTools]]
deps = ["JSON", "Logging", "Printf", "Profile", "Statistics", "UUIDs"]
git-tree-sha1 = "d9a9701b899b30332bbcb3e1679c41cce81fb0e8"
uuid = "6e4b80f9-dd63-53aa-95a3-0cdb28fa8baf"
version = "1.3.2"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.0.5+0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "31e996f0a15c7b280ba9f76636b3ff9e2ae58c9a"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.4"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.3"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "7.84.0+0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.10.2+0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.2+0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2022.10.11"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.21+4"

[[deps.Parsers]]
deps = ["Dates", "PrecompileTools", "UUIDs"]
git-tree-sha1 = "716e24b21538abc91f6205fd1d8363f39b442851"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.7.2"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "FileWatching", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.9.2"

[[deps.PrecompileTools]]
deps = ["Preferences"]
git-tree-sha1 = "9673d39decc5feece56ef3940e5dafba15ba0f81"
uuid = "aea7be01-6a6a-4083-8856-8a6e6704d82a"
version = "1.1.2"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "7eb1686b4f04b82f96ed7a4ea5890a4f0c7a09f1"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.4.0"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.Profile]]
deps = ["Printf"]
uuid = "9abbd945-dff8-562f-b5e8-e1ebf5ef1b79"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["Libdl", "LinearAlgebra", "Random", "Serialization", "SuiteSparse_jll"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.9.0"

[[deps.SuiteSparse_jll]]
deps = ["Artifacts", "Libdl", "Pkg", "libblastrampoline_jll"]
uuid = "bea87d4a-7f5b-5778-9afe-8cc45184846c"
version = "5.10.1+6"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.3"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.13+0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.8.0+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.48.0+0"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+0"
"""

# ╔═╡ Cell order:
# ╟─2516caa6-3cc2-11ee-2692-715592ff68bf
# ╟─f901bdfb-03c2-42da-a278-ddb0e56e2c97
# ╠═faab40f7-42fe-4152-9346-72bdca7be687
# ╠═c462fc09-b3b3-43af-9e62-63455362a42b
# ╠═c42fd469-f028-4e92-a741-e66e98bb3bff
# ╟─a9515568-b2ce-4025-a238-41afa2dd6ed2
# ╠═c4e0c57b-801c-4fa6-b748-1d3124071126
# ╠═89708313-0e17-4b7b-94ae-b288c1c0133b
# ╟─d8be1ad3-af60-4273-8c12-ae0c6babacef
# ╟─7517e034-4ba2-43ac-92de-40a9b462ac57
# ╠═3ab6269c-edbc-485d-afca-5372f1f7d793
# ╠═378812a2-b417-4cc2-a53b-d5bf9a4b206b
# ╠═d3fa546c-0868-460d-8fe8-b2bbc5f49888
# ╠═5eb6a8c6-7c96-41a1-acfe-2dc0cae25881
# ╠═abb72709-b6b8-4b1e-99d9-59eeb7b71843
# ╟─3c3225d9-ea17-48b6-9b11-9d34a002c9da
# ╠═756433c8-bdaf-4e7a-8231-a8078e190de3
# ╠═0b1da19c-3815-4b23-8f71-70b708673ec3
# ╠═ddbe2ef9-c52c-4043-98c0-7f202cb488fe
# ╠═e4735c0a-feab-4e5c-9b7d-f629476b6c71
# ╠═5c928ca4-31a3-45d6-bdf5-35dc227b9169
# ╟─d81c2ff4-4a7f-4711-a9b7-9700b7dce6dc
# ╠═773df3dc-64f5-4ca4-b5a7-43ca96d7cda9
# ╠═4c2448c7-1b61-4374-8700-533e61ced22a
# ╠═fb2c18f7-123f-4016-be0a-f52bdf6b22e5
# ╠═0b289be8-ebe6-4d8c-981d-43b507bfc937
# ╠═99e8490d-ea71-4199-911d-a925d1193994
# ╠═5f6ace47-767b-4213-9e32-7189b4aa60f7
# ╠═b92eb544-6e82-4cea-9986-1049b76a8198
# ╠═78374f50-2f29-4abd-abb0-504c65583d95
# ╠═22393e27-774d-4db7-8ccc-9358c569b21d
# ╠═4398fbef-954d-4e8a-8d45-82f8096d13ef
# ╠═4747013e-6e49-45e2-a8a9-3b54c353f2de
# ╠═3f5a89c1-41c9-4126-8c73-d60b368adb63
# ╠═b2ce1096-9f43-404a-b151-8c01534a7e4e
# ╠═f32f7d90-c4a7-4329-bf42-974ef599ec54
# ╠═babac9e0-521a-45a7-90d6-ec16314e6c81
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
