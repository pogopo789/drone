#include <xbox_controller/Map.h>

double map(double x, double in_min, double in_max, double out_min, double out_max)
{
	if (x <= in_min)
    	return out_min;
	else if (x >= in_max)
    	return out_max;

	if ((in_max - in_min) > (out_max - out_min)) {
		return (x - in_min) * (out_max - out_min+1) / (in_max - in_min+1) + out_min;
	}
	else{
		return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
	}
}

