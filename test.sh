set -e
set -x

mkdir -p build && cd build

cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=On .. && make

pvs-studio-analyzer analyze -R rules.pvsconfig -o PVS.log

plog-converter -t tasklist -o PVS.tasks PVS.log
