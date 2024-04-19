#!/usr/bin/env bash

set -euo pipefail

username=""

read_username() {
    echo "Username: "
    read -r username
}

generate_sshkey() {
    local email=""
    local path_key="/home/$username/.ssh/id_ed25519"

    echo "Generating SSH keys ..."

    if [[ -f $path_key ]]; then
        echo "Key already exists at: $path_key"
        return
    fi

    echo "Your email: "
    read -r email
    ssh-keygen -t ed25519 -C "$email" -f "$path_key"

    echo "Generating SSH keys finished"
}

setup_ssh() {
    echo "Configuring SSH ..."

    generate_sshkey

    echo "Configuring SSH finished"
}

main() {
    read_username
    setup_ssh
}

main "$@"
