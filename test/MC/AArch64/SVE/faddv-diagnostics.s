// RUN: not llvm-mc -triple=aarch64 -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s

faddv b0, p7, z31.b
// CHECK: [[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction
// CHECK-NEXT: faddv b0, p7, z31.b
// CHECK-NOT: [[@LINE-1]]:{{[0-9]+}}:

faddv h0, p8, z31.h
// CHECK: [[@LINE-1]]:{{[0-9]+}}: error: restricted predicate has range [0, 7].
// CHECK-NEXT: faddv h0, p8, z31.h
// CHECK-NOT: [[@LINE-1]]:{{[0-9]+}}:


// ------------------------------------------------------------------------- //
// Result must be a valid FP register.

faddv v0, p7, z31.h
// CHECK: [[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction
// CHECK-NEXT: faddv v0, p7, z31.h
// CHECK-NOT: [[@LINE-1]]:{{[0-9]+}}: