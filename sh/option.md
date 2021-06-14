$ hw(){ echo "Hi there kiddo"; }
$ hw
Hi there kiddo

declare all functions:
$ declare -f | less

remove hw function:
$ unset -f hw ; hw
bash: hw: command not found

