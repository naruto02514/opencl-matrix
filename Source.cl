__kernel
void matrixMultiplication(__global float* A, __global float* B, __global float* C)
{
    int i = get_global_id(0);
    int j = get_global_id(1);
    float value=0;
    for ( int k = 0; k < 1024; k++)
    {
        value = value + A[k + j * 1024] * B[k*1024 + i];
    }
    C[i + 1024 * j] = value;
}