PROMPT='%F{cyan}$ '
alias bsh="open ~/.zshrc"
alias zsh="open ~/.zshrc"
alias c="clear"

#git
alias gba="git branch -a"

function ginit(){
	git init &&
	git add --all  &&
	git commit -m "Initial Commit" &&
	git remote add origin "$1" &&
	git push -u origin HEAD:master
}

function gchb(){
	git checkout -b "$1"
}

function gch(){
	git checkout "$1"
}

function gm(){
	git merge "$1"
}

#To delete (already merged) local branch
function gd(){
	git branch -d "$1"
}

#To delete a remote branch
function gdr(){
	git push --delete origin "$1"
}

#To delete local branch even if not merged
function gD(){
	git branch -D "$1"
}

#To prune on my machine after branch deletion from other machines
function gp(){
	git fetch --all --prune
}

function gz() { 
	git add . && git commit -m ""$1" "$2" "$3" "$4" "$5" "$6" "$7" "$8" "$9" "${10}" "${11}" "${12}" "${13}" "${14}" "${15}" "${16}" "${17}" "${18}" 
"${19}" "${20}" "${21}" "${22}" "${23}" "${24}" "${25}" "${26}" "${27}" "${28}" "${29}" "${30}"" && git push 
}
