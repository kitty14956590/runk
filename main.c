#include <stdint.h>
#include <stdio.h>
#include <integer.h>
#include <float.h>

int main() {
	int16_t x = 10;
	int16_t y = 5;

	int16_t result = runk_int16_add(x, y);

	float64_t fx = 21.81;
	float64_t fy = 16.3;

	float64_t fresult = runk_float64_sub(fx, fy);
	printf("%d\n\n", result);
	printf("%lf\n", fresult);
}
