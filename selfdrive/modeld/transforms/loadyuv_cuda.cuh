#include <stdio.h>        // C programming header file
#include <unistd.h>       // C programming header file
#include <stdint.h>
#include "/usr/local/cuda/include/cuda_runtime.h"

#define checkMsg(msg) __checkMsg(msg, __FILE__, __LINE__)
#define checkMsgNoFail(msg) __checkMsgNoFail(msg, __FILE__, __LINE__)


void start_loadys(uint8_t *y_cuda_d, float_t *out_cuda, 
    size_t *global_out_off, const int loadys_work_size,
    int widht, int height);
/*void start_loadys(uint16_t *y_cuda_d, uint16_t *out_cuda, 
    size_t *global_out_off, size_t *loadys_work_size);*/

void start_loaduv(uint8_t *u_cuda_d, float_t *out_cuda, 
    size_t *global_out_off, const int loaduv_work_size);

void start_copy(float_t *inout, 
    size_t *in_offset, const int copy_work_size);