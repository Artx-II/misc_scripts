function vminfo() {
  # Tell an user when he logs in if theres a
  # "make" process in progress
  getProcess=$(ps aux | grep -o make | head -1)
  getPid=$(ps axf | grep "[m]ake" | cut -f1 -d " ")
  getPath=$(ps axf | grep "[m]ake" | awk '{print $7}')

  if [ "$getProcess" = "make" ]; then
    echo " "
    echo "*****************************************"
    echo " This VM is currently working on a build "
    echo " "
    echo " Path = $getPath"
    echo " PID  = $getPid"
    echo "*****************************************"
    echo " "
  else
    echo " "
    echo "*****************************************"
    echo " There is no build(s) running"
    echo "*****************************************"
    echo " "
  fi
};
