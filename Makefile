
all:	diceware8k-mac diceware8k-win.exe diceware8k-arm

clean:
	rm diceware8k-*

diceware8k-mac: diceware8k.go
	GOOS=darwin GOARCH=amd64 go build -o $@ diceware8k.go

diceware8k-win.exe: diceware8k.go
	GOOS=windows GOARCH=386 go build -o $@ diceware8k.go

diceware8k-arm: diceware8k.go
	GOOS=linux GOARCH=arm go build -o $@ diceware8k.go
