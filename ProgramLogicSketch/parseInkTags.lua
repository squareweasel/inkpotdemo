Grab tagArray from ink

default Command=0
default CommandKey=0

for each item in tagArray in reverse order
	tagArray(n):
		loop through commDict
			if match
				CommandKey = commDict(ind)
				exec Func based on CommandKey, pass nameArray as param
				clear nameArray
				break
			else print no command found
				loop through nameDict
				if match
					name = tagArray(n)
					add name to nameArray
					break
				else
					print no name found