#include <stdint.h>

#include "spi.h"
#include "i2c.h"

int main(void)
{
    uint8_t size = 1;
    uint8_t data = 0;

    spi_init();
    spi_read(size, &data);
    spi_write(size, &data);
    
    i2c_init();
    
    return 1;
}