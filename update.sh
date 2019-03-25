echo updateBuildMachine
host=user@machine.ip
port=22
keypath=~/.ssh/id_rsa
project=suanpan_sample
rsync -delete -avhe "ssh -i ${keypath} -p ${port}" ./ ${host}:~/${project}
ssh -i ${keypath} -p ${port} ${host} "cd ~/${project}/ && bash ./docker/buildonly.sh"
