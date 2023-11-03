PROMPT='%F{cyan}$ '
alias bsh="open ~/.bash_profile"
alias bsh="open ~/.bashrc"
alias zsh="open ~/.zshrc"
alias zsh2="open ~/.zshenv"
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

#Git remove remote file (and commit and push)
function  grmr(){
	git rm -r --cached "$1" && git commit -m "Removing "$1" directory from remote repository" && git push
}

# Create and activate new python environment
function env(){
	python3 -m venv "$1" && source "$1"/bin/activate
}

# Activate an environment when being on the main script's directory.
function find_bin_parent() {
    find . -type d -name 'bin'
}
function activate(){
    local -a dir_names
    dir_names=( ${(f)"$(find_bin_parent)"} )

    if [[ ${#dir_names} -gt 1 ]]; then
        echo "Found ${#dir_names} 'bin' directories:"
        for ((i=1; i<=${#dir_names}; i++)); do
            echo "$i: ${dir_names[i]}"
        done

        read "?Enter the number of the environment you want to activate: " env_no
        local selected_dir="${dir_names[$env_no]}"
    elif [[ ${#dir_names} -eq 1 ]]; then
        local selected_dir="${dir_names[1]}"
    else
        echo "No directory containing 'bin' found!"
        return 1
    fi  

    source "${selected_dir}/activate"
