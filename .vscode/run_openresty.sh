#!/bin/zsh
echo "重新启动本地 openresty 服务...";

if [ -e "$@/logs/nginx.pid" ]; then
  echo "openresty 正在运行 --> 重启openresty";
  sudo /usr/local/openresty/bin/openresty -p "$@" -c "$@/conf/nginx.test.conf" -s reload
  # ps -ef | grep opnresty
  echo "--> 重启完毕";
else 
  echo "opnresty 未运行 --> 启动openresty";
  sudo /usr/local/openresty/bin/openresty -p "$@" -c "$@/conf/nginx.test.conf"
  # ps -ef | grep opnresty
  echo "--> 启动完毕";
fi;