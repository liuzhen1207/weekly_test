#!/bin/bash
remote_str=$1
server_shell_dir=$2
benchmark_shell_dir=$3
#停止iotdb服务
${benchmark_shell_dir}/clear_cache.sh
eval ${remote_str}"${server_shell_dir}/stop_iotdb.sh"

#iotdb 数据库所在机器 清操作系统缓存
eval ${remote_str}"${server_shell_dir}/clear_cache.sh"

#iotdb 数据库启动
eval ${remote_str}"${server_shell_dir}/start_iotdb.sh"
#检查iotdb进程启动是否成功
eval ${remote_str}"${server_shell_dir}/show_version.sh"
sleep 1s
