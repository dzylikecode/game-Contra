function repos-install(){
    sudo apt-get install libsdl2-dev # SDL2
}

function repos-uninstall(){
    sudo apt-get remove libsdl2-dev # sdcc 编译器
    sudo apt-get autoremove # remove unused packages
}