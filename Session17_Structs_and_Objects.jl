### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ f885b07e-418a-11ee-18ac-27037285ca99
md"""
# Structs and Objects
"""

# ╔═╡ a0275d63-8fe2-45a5-952f-b925b26df7a8
md"""
### Composite Types, what do we mean by Composite Types?
We can create our own new type in Julia for programmatic use. Up until now, we have had used many inbuilt types like named tuples, dictionary, arrays etc.
Now we will create a new type which Julia Language can understand.
"""

# ╔═╡ 4c0f2abf-538a-4025-838e-31b4c4c553a5
struct Person
	name
	age
	gender
	email
end

# ╔═╡ bee01620-5253-412c-9729-4f1267a93b4e
alex = Person("Alex", 52, "Female", "alex.kwang@gmail.com")

# ╔═╡ 7292ebbf-b2e1-4bb3-8351-15c16956b54c
typeof(alex)

# ╔═╡ cfa3cebe-e82b-4945-9b0f-fdb89fb7c970
md"""
### Accessing Structs
"""

# ╔═╡ 0672e211-2293-4cb4-866e-d8baec3696ec
alex.name, alex.age

# ╔═╡ c7680d9a-2d47-4c29-9397-4cccb637cbbd
md"""
#### Structs are immutable by default
"""

# ╔═╡ 776e6079-3eef-4efb-a162-1b146453dc70
alex.name = "John"

# ╔═╡ cee84229-8220-436d-b2a8-16afcf1bd989
md"""
## Mutable Structs
Imagine you are creating a game which players from all over the world join and play.
Now there are some characteristics which are inherited by the player as soon as he joins the game. For example health, strength, ammunitions, name, avatar
"""

# ╔═╡ 8fd4e97f-d3ea-4c73-80a4-0d36b6a0512b
mutable struct Player
	name
	health
	strength
	ammunitions
	avatar
end

# ╔═╡ a205e79b-f54e-42f2-87e9-074bdecc6951
player1 = Player(
	"greengrass", 100, 1000, ("AK47", "Pistol", "Knife"), "Turtle"
)

# ╔═╡ 92f722fd-74dd-43da-a12c-20c0a0b1210b
player2 = Player(
	"redraddish", 100, 1000, ("AK47", "Pistol", "Knife"), "Rabbit"
)

# ╔═╡ 7ef0ec0e-8285-408b-a6d1-b049edae0c9c
begin
println("$(player1.name) & $(player2.name) enter into a warzone")
println("$(player1.name) uses $(player1.ammunitions[2]) and $(player2.name) uses $(player2.ammunitions[1]) to fight.")
println("$(player1.name) is heavily injured")
end

# ╔═╡ 56fcc586-956a-4869-a446-3ee61d9ef915
player1.health = 50

# ╔═╡ 06581f12-5dcd-45be-8487-476d0cae6751
player2.health = player2.health - 5

# ╔═╡ a1d47ffa-5606-46cd-ab2f-c6b8860fd03a
player1, player2

# ╔═╡ a99bc9ae-a399-4827-bd7a-828ba31e94f5
md"""
#### We can use one struct inside another struct
"""

# ╔═╡ 1e80fd92-e4ba-42d1-a1ae-c614c834eac6
struct Profile
	Person
	Player
end

# ╔═╡ 61607e50-164d-4e69-826d-63af816016fa
Profile

# ╔═╡ 2a94dbd5-d48d-43c7-8346-31dff68cfd78
new_person = Person("xyz", 34, "male", "gndkn@yahoo.com")

# ╔═╡ 3da364d3-fed2-482a-b61e-b617eafe3f1b
new_player = Player("xyz", 100, 1000, ("pistol", "knife"), "rugby")

# ╔═╡ e1d905dd-a4fd-4c18-8fcb-19feb0c391f7
new_profile = Profile(new_person, new_player)

# ╔═╡ 4b8f6199-404d-4f6b-a8aa-28e82e8b1c69
# copying
new_player_backup = deepcopy(new_player)

# ╔═╡ ca3b624a-a5d4-4c2a-84b4-478eda066b35
new_player_backup ≡ new_player

# ╔═╡ c255e5c5-426f-4560-95ee-44d881970929
new_player_backup == new_player

# ╔═╡ 6eeae8f2-c363-4b9e-8c96-5433ac72222c
md"""
### Using Struct and Functions
"""

# ╔═╡ 142fe54a-662b-4129-8961-7a5b839bb983
struct Point
	x::Float64
	y::Float64
end

# ╔═╡ 5a3c4287-c4d1-4f0e-a55a-7a7b822e909d
p = Point(3.0, 4.0)

# ╔═╡ e899a4ea-35e3-475d-b937-af79cbad9c8b
begin
println("X coordinate: $(p.x)")
println("Y coordinate: $(p.y)")
end

# ╔═╡ 09f83b45-6b68-48e3-834a-898cc9e4c5ab
function distance(p1::Point, p2::Point)
	dx = p2.x - p1.x
	dy = p2.y - p2.y
	return sqrt(dx^2 + dy^2)
end

# ╔═╡ e5f43c2c-dbc7-4256-8be9-98ec480fe058
begin
p1 = Point(1.0, 2.0)
p2 = Point(4.0, 6.0)
end

# ╔═╡ 2b9b8b5d-0a0e-4633-b63c-a6526a4af78f
dist = distance(p1, p2)

# ╔═╡ 0fe4bfcb-0ca9-42ec-bff6-a001ce5a90ed
md"""
#### Another example for BankAccount
"""

# ╔═╡ e809fa1f-5b31-4da7-9cd9-d7a599e6714e
mutable struct BankAccount
	account_number::Int
	account_holder::String
	balance::Float64
end

# ╔═╡ 7c7546bb-7231-43d5-84eb-5c18fef524a3
function deposit(account::BankAccount, amount::Float64)
	if amount > 0
		account.balance += amount
		println("Deposited $amount to account #(account.account_number). New balance: $(account.balance)")
	else
		println("Invalid deposit amount.")
	end
end

# ╔═╡ 53eb495d-0a02-4dfe-8425-f55aefa164e5
function withdraw(account::BankAccount, amount::Union{Int64, Float64})
	if amount > 0 && amount <= account.balance
		account.balance -= amount
		println("Withdrawn $amount from account $(account.account_number). New Balance: $(account.balance)")
	else
		println("Invalid withdrawl amount or insufficient balance")
	end
end

# ╔═╡ 1e159f12-7cdb-4af2-a9bd-aa68e82c6931
account1 = BankAccount(12345, "Alice", 1000.0)

# ╔═╡ 03e941e3-b99b-45b6-89b4-0a5415de7f81
deposit(account1, 500.0)

# ╔═╡ 451e399d-a573-4320-a48d-b9182673e307
deposit(account1, 1000.0)

# ╔═╡ e2284054-fdd1-40ae-b2f4-784a9d49012b
withdraw(account1, 1200.0)

# ╔═╡ a42974ed-27a1-4108-baad-9a09668739b1
withdraw(account1, 100)

# ╔═╡ 99a839d3-2632-4e36-ab80-ac673b1380e2
deposit(account1, 400.0)

# ╔═╡ 892df3f9-679a-42b8-ac7f-822b91aeac37
withdraw(account1, 300)

# ╔═╡ Cell order:
# ╟─f885b07e-418a-11ee-18ac-27037285ca99
# ╟─a0275d63-8fe2-45a5-952f-b925b26df7a8
# ╠═4c0f2abf-538a-4025-838e-31b4c4c553a5
# ╠═bee01620-5253-412c-9729-4f1267a93b4e
# ╠═7292ebbf-b2e1-4bb3-8351-15c16956b54c
# ╠═cfa3cebe-e82b-4945-9b0f-fdb89fb7c970
# ╠═0672e211-2293-4cb4-866e-d8baec3696ec
# ╠═c7680d9a-2d47-4c29-9397-4cccb637cbbd
# ╠═776e6079-3eef-4efb-a162-1b146453dc70
# ╠═cee84229-8220-436d-b2a8-16afcf1bd989
# ╠═8fd4e97f-d3ea-4c73-80a4-0d36b6a0512b
# ╠═a205e79b-f54e-42f2-87e9-074bdecc6951
# ╠═92f722fd-74dd-43da-a12c-20c0a0b1210b
# ╠═7ef0ec0e-8285-408b-a6d1-b049edae0c9c
# ╠═56fcc586-956a-4869-a446-3ee61d9ef915
# ╠═06581f12-5dcd-45be-8487-476d0cae6751
# ╠═a1d47ffa-5606-46cd-ab2f-c6b8860fd03a
# ╠═a99bc9ae-a399-4827-bd7a-828ba31e94f5
# ╠═1e80fd92-e4ba-42d1-a1ae-c614c834eac6
# ╠═61607e50-164d-4e69-826d-63af816016fa
# ╠═2a94dbd5-d48d-43c7-8346-31dff68cfd78
# ╠═3da364d3-fed2-482a-b61e-b617eafe3f1b
# ╠═e1d905dd-a4fd-4c18-8fcb-19feb0c391f7
# ╠═4b8f6199-404d-4f6b-a8aa-28e82e8b1c69
# ╠═ca3b624a-a5d4-4c2a-84b4-478eda066b35
# ╠═c255e5c5-426f-4560-95ee-44d881970929
# ╠═6eeae8f2-c363-4b9e-8c96-5433ac72222c
# ╠═142fe54a-662b-4129-8961-7a5b839bb983
# ╠═5a3c4287-c4d1-4f0e-a55a-7a7b822e909d
# ╠═e899a4ea-35e3-475d-b937-af79cbad9c8b
# ╠═09f83b45-6b68-48e3-834a-898cc9e4c5ab
# ╠═e5f43c2c-dbc7-4256-8be9-98ec480fe058
# ╠═2b9b8b5d-0a0e-4633-b63c-a6526a4af78f
# ╠═0fe4bfcb-0ca9-42ec-bff6-a001ce5a90ed
# ╠═e809fa1f-5b31-4da7-9cd9-d7a599e6714e
# ╠═7c7546bb-7231-43d5-84eb-5c18fef524a3
# ╠═53eb495d-0a02-4dfe-8425-f55aefa164e5
# ╠═1e159f12-7cdb-4af2-a9bd-aa68e82c6931
# ╠═03e941e3-b99b-45b6-89b4-0a5415de7f81
# ╠═451e399d-a573-4320-a48d-b9182673e307
# ╠═e2284054-fdd1-40ae-b2f4-784a9d49012b
# ╠═a42974ed-27a1-4108-baad-9a09668739b1
# ╠═99a839d3-2632-4e36-ab80-ac673b1380e2
# ╠═892df3f9-679a-42b8-ac7f-822b91aeac37
