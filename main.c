#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <stdlib.h>
#include "sepia.h"
#include <time.h>

int main(int argc, char *argv[])
{

    clock_t start_asm, end_asm, start_c, end_c;
    clock_t all_start, all_end, first_end, second_start;
    float dur_c, dur_asm;

    if(argc!=2)
    {
        fprintf(stderr, "%s\n ", "Usage: source.bmp");
        return 1;
    }

    FILE *input = fopen(argv[1], "rb");

    if (!input)
    {
        strerror(errno);
        return 2;
    }



    image_t *image = malloc(sizeof(image_t));
    read_status error_code = from_bmp(input,image);
    fclose(input);

    switch(error_code)
    {

        case READ_OK :
        {
            puts("File was successfully read!");
        } break;

        case READ_INVALID_BITS :
        {
            fprintf(stderr, "%s\n", "Invalid bits!");
            return 4;
        }

        case READ_INVALID_HEADER :
        {
            fprintf(stderr, "%s\n", "Invalid file header!");
            return 5;
        }

        case READ_INVALID_SIGNATURE :
        {
            fprintf(stderr, "%s\n", "Invalid signature!");
            return 6;
        }
    }
    FILE *outptr = fopen(argv[1], "wb+");
    if (!outptr)
    {
        strerror(errno);
        return 3;
    }

    start_c = clock();
    image_t modified = sepia(*image);
    end_c = clock();
    dur_c = (float)(end_c - start_c) / (CLOCKS_PER_SEC);
    printf("Duration c: %.66f\n", dur_c);
    write_status write_status = to_bmp(outptr,&modified);
    fclose(outptr);
    start_asm = clock();
    // sepia_asm(image->data, (long) image->width * image->height);
    sepia_asm(modified.data, (long) modified.width * modified.height);
    end_asm = clock();
    dur_asm = (float)(end_asm - start_asm) / (CLOCKS_PER_SEC);
    printf("Duration asm: %.66f\n", dur_asm);
    //write_status write_status = to_bmp(outptr,image);

    switch (write_status)
    {

        case WRITE_OK :
        {
            puts("File was successfully written!");
            return 0;
        }

        case WRITE_ERROR :
        {
            fprintf(stderr, "%s\n", "Error occurred while writing!");
            return 7;
        }

    }
    return 0;
}
