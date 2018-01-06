//
// Created by Dreamer on 27/12/2017.
//

#include "sepia.h"
#include <stdlib.h>
#include <malloc.h>
#define CHECK(x) (x>255 ? 255 : x)
// #define CHECK(x) if(x>255) {return x;} else {return 255;}


static uint8_t check_pixel(double x)
{
    if (x < 256)
    {
        return (uint8_t) x;
    }
    return 255;
}

image_t sepia(image_t source)
{
    image_t *rotated = malloc(sizeof(image_t));
    rotated->width = source.width;
    rotated->height = source.height;
    pixel_t *rotate = malloc(abs(rotated->width) * rotated->height * sizeof(pixel_t));
    // for (int i = 0; i < abs(source.height); ++i)
    // {
    //     for (int j = 0; j < source.width; ++j)
    //     {
    //         pixel_t temp = source.data[source.width * i + j];
    //         uint8_t b = temp.b, g = temp.g, r = temp.r;
    //         temp.b = check_pixel((b * 0.131f + g * 0.534f + r * 0.272f));
    //         temp.g = check_pixel((b * 0.168f + g * 0.686f + r * 0.349f));
    //         temp.r = check_pixel((b * 0.189f + g * 0.769f + r * 0.393f));
    //         rotate[abs(rotated->width)*(i) + j] = temp;
    //     }
    // }
    //this variation works faster
    for (int i = 0; i < abs(source.height)*source.width; ++i)
    {

            pixel_t temp = source.data[i];
            uint8_t b = temp.b, g = temp.g, r = temp.r;
            temp.b = CHECK((b * 0.131f + g * 0.534f + r * 0.272f));
            temp.g = CHECK((b * 0.168f + g * 0.686f + r * 0.349f));
            temp.r = CHECK((b * 0.189f + g * 0.769f + r * 0.393f));
            rotate[i] = temp;

    }
    rotated->data = rotate;
    return *rotated;
}
