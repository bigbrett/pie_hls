#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/brett/workspace/Vivado_WS/pie_hls/solution1/.autopilot/db/a.g.bc ${1+"$@"}
