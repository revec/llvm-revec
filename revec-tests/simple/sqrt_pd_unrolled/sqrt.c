#include <x86intrin.h>

#define N 1600

void add_i8(char * restrict a, char * restrict b) {
    __m128i *av, *bv;
    av = (__m128i*) a; // assume 16-byte aligned
    bv = (__m128i*) b; // assume 16-byte aligned

    for (int i = 0; i < N/32; i++) {
        av[i] = _mm_sqrt_pd(bv[i]);
        av[i+1] = _mm_sqrt_pd(bv[i+1]);
    }
}
