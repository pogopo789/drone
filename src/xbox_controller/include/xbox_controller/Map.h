#pragma once
#ifndef MAP_H
#define MAP_H
//by default if you feed only 1 value to function it will transform analogreading from uno analog pin to 0 - 5V reading 
// extension of arduino map function 
double map(double x, double in_min, double in_max, double out_min, double out_max);

#endif
