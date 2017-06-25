# mount disk 
# /bin/bash
  mounts=$(mount -v | grep /dev/sdc)

  if [[ -z $mounts ]]
  then
    mount /dev/sdc /mnt/workspace
  fi

  cd /mnt/workspace

# start container
  alias elixir='docker run --name elixir -it --rm -p 80:4000 -v /mnt/workspace/elixir:/root sundernarayanaswamy/elixir-dev-docker'
