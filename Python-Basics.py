# Syntax

print("Hello, World!")

if 5 > 2:
  print("Five is greater than two!")

#This is a comment

# Variables

x = 5
y = "John"
print(x)
print(y)

# Data types

x = "Hello World"	str	
x = 20	int	
x = 20.5	float

# String

a = "Hello"
print(a)

# Boolean
a = 200
b = 33

if b > a:
  print("b is greater than a")
else:
  print("b is not greater than a")


# Operator
print(10 + 5)

# List
mylist = ["apple", "banana", "cherry"]

# For loops

fruits = ["apple", "banana", "cherry"]
for x in fruits:
  print(x)


#If else

a = 33
b = 200
if b > a:
  print("b is greater than a")


# While

i = 1
while i < 6:
  print(i)
  i += 1

# Given some string dna containing the letters A, C, G, or T, representing the bases that make up DNA, we ask the question: how many times does a certain base occur in the DNA string? For example, if dna is ATGGCATTA and we ask how many times the base A occur in this string, the answer is 3.

def count_v1(dna, base):
    dna = list(dna)  # convert string to list of letters
    i = 0            # counter
    for c in dna:
        if c == base:
            i += 1
    return i


import math
import matplotlib
pip install matplotlib

val = [['Dave',101,90,95], ['Alex',102,85,100],['Ray',103,90,95]]




  
