# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="bira"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
 DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(vi-mode)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
 export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias ths='find ~/scratchOld/ -path ~/scratchOld/RecyleBin -prune -o  -type f | xargs touch ; find ~/scratchOld/ -path ~/scratchOld/RecyleBin -prune -o  -type d | xargs touch'
alias LS='ls'
cdl()
{
    chdir $1;
    ls;
}
alias CD='cd'
alias cdo='chdir'
rm()
{
    mv $1 ~/scratchOld/RecyleBin;
}
alias rmo='/bin/rm'
alias tree='tree -C'
alias treet='tree -CDt'
alias lt='ls -lthr'
#alias root 'root -l'
alias sn='source ~/.laf_opt.sh'
alias sr='source ~/.root.v6.sh'
#alias sr 'source ~/.thisroot.csh'
alias lf='lfs quota -u lidj /publicfs'
alias st='source ~/.tcshrc'
alias qs='qstat | grep lidj'
alias qs6='qstat | grep dyb64q'
alias qss='qstat | grep dybshortq'
alias qsj='qstat | grep junoq'
alias qs6l='qstat | grep dyb64q | grep lidj'
alias qssl='qstat | grep dybshortq | grep lidj'
alias qsjl='qstat | grep junoq | grep lidj'
alias cdd='cd /afs/ihep.ac.cn/users/l/lidj/largedata/flukaWork/dayabay'
alias cdla='cd /afs/ihep.ac.cn/users/l/lidj/largedata/flukaWork/LA'
alias cdf='cd /afs/ihep.ac.cn/users/l/lidj/largedata/flukaWork/FAR'
alias cdj='cd /afs/ihep.ac.cn/users/l/lidj/largedata/flukaWork/JUNO'
alias cdn='cd /afs/ihep.ac.cn/users/l/lidj/file/NeutronYield/job'
alias cdi='cd /afs/ihep.ac.cn/users/l/lidj/file/IsotopesAna/job'
alias cd1='cdo ../EH1'
alias cd2='cdo ../EH2'
alias cd3='cdo ../EH3'
alias mka='mkdir -p P12A/EH1 P12A/EH2 P12A/EH3 P12A/log/EH1 P12A/log/EH2 P12A/log/EH3 P12E/EH1 P12E/EH2 P12E/EH3 P12E/log/EH1 P12E/log/EH2 P12E/log/EH3 P13A/EH1 P13A/EH2 P13A/EH3 P13A/log/EH1 P13A/log/EH2 P13A/log/EH3'
alias mk3='mkdir -p EH1 EH2 EH3 log/EH1 log/EH2 log/EH3'
alias sb1='(cdo P12A/EH1;sbs;cd2;sbs;cdo ../../P12E/EH1;sbs;cd2;sbs;cd3;sbs;cdo ../../P13A/EH1;sbs;cd2;sbs)'
alias sb2='(cdo P13A/EH3;sbs)'
alias ck='pwd;grep "Successfully finalized" ./log.run* -c | grep ":0"'
alias ck3='(cdo log/EH1;ck;cd2;ck;cd3;ck)'
alias rml='rmo *.e*;rmo *.o*'
alias rm3='cdo EH1;rml;cd2;rml;cd3;rml;cdo ..'
set autolist
#设置cscope生成数据库快捷命令
#alias cs='find . -path "InstallArea" -prune -iname "*.h" -o -iname "*.c" -o -iname "*.cc" > cscope.files;cscope -bkq -i cscope.files;'
#alias cs='find .  -iname "*.h" -o -iname "*.c" -o -iname "*.cc" > cscope.files;cscope -bkq -i cscope.files;'

#git
alias gs='git status'
alias gd='git diff'
alias gl='git lg'
alias gb='git branch'
alias gpl='git pull origin $(current_branch)'
alias ga='git add .'
gc()
{
    git commit -m "$@";
}
alias gp='git push origin $(current_branch)'
go()
{
    git checkout $1;
}
alias gub='ga;gc m;gp $(current_branch)'

#nlpir
export LD_LIBRARY_PATH=/afs/ihep.ac.cn/users/l/lidj/largedata/TopicDetecter/job/nlpir/lib:$LD_LIBRARY_PATH
#valgrind
export PATH=/afs/ihep.ac.cn/users/l/lidj/user/software/valgrind/bin:$PATH
#alias valgrind='valgrind --tool=memcheck --leak-check=full --show-reachable=yes '
alias valgrind='valgrind --tool=memcheck --leak-check=full '
#vim74
export PATH=/afs/ihep.ac.cn/users/l/lidj/user/software/vim74/bin:$PATH

#fluka
export FLUPRO=/afs/ihep.ac.cn/users/l/lidj/user/software/fluka
export FLUFOR=gfortran
#flair
#tcl
export LD_LIBRARY_PATH=/afs/ihep.ac.cn/users/l/lidj/user/software/tcl/lib:$LD_LIBRARY_PATH
export PATH=/afs/ihep.ac.cn/users/l/lidj/user/software/tcl/bin:$PATH
#tk
export LD_LIBRARY_PATH=/afs/ihep.ac.cn/users/l/lidj/user/software/tk/lib:$LD_LIBRARY_PATH
export PATH=/afs/ihep.ac.cn/users/l/lidj/user/software/tk/bin:$PATH
#run flair
export TK_LIBRARY=/afs/ihep.ac.cn/users/l/lidj/user/software/tk/lib/tk8.4
export PATH=${FLUPRO}:${FLUPRO}/flutil:/afs/ihep.ac.cn/users/l/lidj/user/software/flair/bin:$PATH
export PYTHONPATH=/afs/ihep.ac.cn/users/l/lidj/user/software/flair/flair/lib:$PYTHONPATH
#dayabay muon simulation for using cfortran.h temporarily
export FLUWORK=/afs/ihep.ac.cn/users/l/lidj/largedata/flukaWork/dayabay
export LD_LIBRARY_PATH=${FLUWORK}:$LD_LIBRARY_PATH

#tmux : avoid [lose vim colorscheme in tmux mode]
alias tmux='tmux -2'

#tmux
export PATH=/afs/ihep.ac.cn/users/l/lidj/user/software/bin:$PATH
if [ "$HOSTNAME" = "lxslc503.ihep.ac.cn" ]; then
    source ~/.tmux.init.sh #will print some error information ,bad for scp!!!
fi
