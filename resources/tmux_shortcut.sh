function tmux_bertan() {
    session_name=bertan

    tmux has -t $session_name 2>/dev/null
    if [ $? != 0 ]; then
        tmux new -d -s $session_name

        tmux rename-window -t $session_name:0 Jupyter
        tmux send-keys -t $session_name:0 'rc_init' C-m
        tmux send-keys -t $session_name:0 'cd /home/nimbro_home/nimbro_ros2_ws/src/nimbro_notebooks' C-m
        tmux send-keys -t $session_name:0 'jupyter notebook --no-browser --port 8999' C-m

        tmux new-window -n $session_name:1
        tmux send-keys -t $session_name:1 'rc_init' C-m

        tmux new-window -n $session_name:2
        tmux send-keys -t $session_name:2 'rc_init' C-m

        tmux new-window -n $session_name:3
        tmux send-keys -t $session_name:3 'rc_init' C-m
    else
        echo "Session $session_name already exists."
    fi

    tmux at -t $session_name

    unset session_name
}
