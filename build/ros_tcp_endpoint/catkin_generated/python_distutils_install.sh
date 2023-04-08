#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/thanhdat/drone/src/ROS-TCP-Endpoint-main"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/thanhdat/drone/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/thanhdat/drone/install/lib/python3/dist-packages:/home/thanhdat/drone/build/ros_tcp_endpoint/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/thanhdat/drone/build/ros_tcp_endpoint" \
    "/usr/bin/python3" \
    "/home/thanhdat/drone/src/ROS-TCP-Endpoint-main/setup.py" \
    egg_info --egg-base /home/thanhdat/drone/build/ros_tcp_endpoint \
    build --build-base "/home/thanhdat/drone/build/ros_tcp_endpoint" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/thanhdat/drone/install" --install-scripts="/home/thanhdat/drone/install/bin"
