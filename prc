 Practical – 4(A) 
Aim: Develop the program for DDA Line drawing algorithm. 
Source Code:  
#include<graphics.h> 
#include<stdio.h> 
#include<conio.h> 
#include<math.h> #include<dos.h> void main() 
{ 
float x,y,x1,y1,x2,y2,dx,dy,step; int i,gd=DETECT,gm; initgraph(&gd,&gm,"C:\\TC\\BGI"); printf("enter the value of x1 and y1"); scanf("%f%f",&x1,&y1); 
printf("enter the value of x2 and y2"); scanf("%f%f",&x2,&y2); dx=abs(x2-x1); dy=abs(y2-y1); if(dx>=dy) step=dx; else step=dy; dx=dx/step; dy=dy/step; x=x1; 
y=y1; i=1; while(i<=step) 
{ 
putpixel(x,y,5); x=x+dx; y=y+dy; i=i+1; delay(100); 
} 
closegraph(); getch(); 
} 
 
Output: 
                      
                               
 
 
Practical – 4(B) 
Aim: Develop the program for Bresenham’s Line drawing algorithm. 
Source Code:  
#include<stdio.h> 
#include<conio.h> 
#include<graphics.h> 
void drawline(int x0,int y0,int x1,int y1) 
{ 
int dx,dy,p,x,y; dx=x1-x0; dy=y1-y0; x=x0; y=y0; p=2*dy-dx; while(x<x1) 
{ 
if(p>=0) 
{ 
putpixel(x,y,7); y=y+1; p=p+2*dy-2*dx; 
} 
else 
{ 
putpixel(x,y,7); p=p+2*dy; 
} 
x=x+1; 
} 
} 
void main() 
{ 
int gd=DETECT,gm,error,x0,y0,x1,y1; initgraph(&gd,&gm,"C:\\TC\\BGI"); printf("enter cordinate of first point"); scanf("%d%d",&x0,&y0); printf("enter cordinate of second point"); scanf("%d%d",&x1,&y1); drawline(x0,y0,x1,y1); getch(); closegraph(); 
} 
 
Output: 
                    
 
Practical – 5 (A) 
Aim: Develop the program for the mid-point circle drawing algorithm. 
Source Code: 
#include<stdio.h> 
#include<conio.h> 
#include<graphics.h> #include<dos.h> 
void drawcircle(int x0,int y0,int radius) 
{ 
int x=radius; int y=0; int err=0; while(x>=y) 
{ 
putpixel(x0+x,y0+y,7); putpixel(x0+y,y0+x,7); putpixel(x0-y,y0+x,7); putpixel(x0-x,y0+y,7); putpixel(x0-x,y0-y,7); putpixel(x0-y,y0-x,7); putpixel(x0+y,y0-x,7); putpixel(x0+x,y0-y,7); if(err<=0) 
{ 
y+=1; err+=2*y+1; } 
if(err>=0) 
{ 
x-=1; err-=2*x+1; 
} 
} 
} 
void main() 
{ 
int gd=DETECT,gm,error,x,y,r; initgraph(&gd,&gm,"C:\\TC\\BGI"); printf("ENTER THE RADIUS OF CIRCLE:"); printf("enter coordinate x and y"); scanf("%d",&r); scanf("%d%d",&x,&y); drawcircle(x,y,r); closegraph(); getch(); 
} 
 
 
 
 
 
 
Output: 

Output: 
 
