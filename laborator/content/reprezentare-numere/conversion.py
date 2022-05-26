subpunct = input("Introduceti subpunctul (a, b, c sau d): ")
if subpunct == 'a':
	# decimal to binary and hexa
	n = int(input("Introduceti un numar in baza 10: "))
	print("Numarul in baza 2 este: ", bin(n))
	print("Numarul in baza 16 este: ", hex(n))
elif subpunct == 'b':
	# binary/hexa to decimal
	n = input("Introduceti un numar in baza 2 sau 16: ")
	if n[1] == 'b':
		baza = 2
	elif n[1] == 'x':
		baza = 16
	print("Numarul in baza 10 este", int(n, baza))
elif subpunct == 'c':
	# hexa to binary
	n = input("Introduceti un numar in baza 16: ")
	n = int(n, 16)
	print("Numarul in baza 2 este: ", bin(n))
elif subpunct == 'd':
	# binary to hexa
	n = input("Introduceti un numar in baza 2: ")
	n = int(n, 2)
	print("Numarul in baza 16 este: ", hex(n))
else:
	print("Introduceti un subpunct valid!")
