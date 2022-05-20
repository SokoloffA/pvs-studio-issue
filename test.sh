set -e
set -x

cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=On . && make

pvs-studio-analyzer analyze -R rules.pvsconfig -o PVS.log

plog-converter -t tasklist -o PVS.tasks PVS.log
