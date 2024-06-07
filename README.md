# Useful scripts and configs for my setup at the AIS group at the University of Bonn

A collection of useful scripts and configs.

## Usage

1. Download this repository. For example:

    ```bash
    cd ~
    sudo apt install wget
    wget https://github.com/bertan-karacora/useful-scripts-and-configs-ais/archive/refs/heads/main.zip
    unzip main.zip
    rm main.zip
    mv useful-scripts-and-configs-ais-main useful-scripts-and-configs-ais
    ```

2. Make sure to give execution permission for setup script using

    ```bash
    cd useful-scripts-and-configs-ais
    chmod +x setup.sh
    ```

3. Run it with sudo.

    ```bash
    sudo ./setup.sh
    ```


## TODO

- autmate stuff from resources
- Add ros2 install
- Add rviz stuff (apptainer singularity)