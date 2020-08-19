if [ $# -lt 1 ];
then
    echo "usage ./tools.sh build"
    echo "                 init"
    echo "                 clean"
    echo "                 run"
else
    if [ $1 = "build" ];
    then
        if [ -d "build" ];
        then
            if [ ! -z "ls -A build" ];
            then
                rm -rf build/*
            fi
        else
            mkdir build
        fi
        cd build && cmake .. && make
        cd ..
    fi

    if [ $1 = "init" ];
    then
        rm -rf build/*
    fi

    if [ $1 = "clean" ];
    then
        if [ -d "build/bin" -a ! -z "ls -A build/bin" ];
        then
            mkdir temp
            cp -r build/bin temp
            rm -rf build/*
            cp -r temp/bin build
            rm -rf temp
        else
            rm -rf build/*
        fi
    fi

    if [ $1 = "run" ];
    then
        ./build/bin/*
    fi
fi
