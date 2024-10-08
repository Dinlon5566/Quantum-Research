OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[3];
ry(1.91063324) q[0];
ch q[0], q[1];
cx q[1], q[2];
cx q[0], q[1];
x q[0];
barrier q[0], q[1], q[2];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
