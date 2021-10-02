#include <stdio.h>


int main(void)
{
    float xmin, xmax, ymin, ymax;
    float x1, y1, x2, y2;
    scanf("%f %f %f %f", &xmin, &xmax, &ymin, &ymax);
    scanf("%f %f %f %f", &x1, &y1, &x2, &y2);
    int flag1, flag2;


    //inside
    if(x1>=xmin && x1<=xmax && y1>=ymin && y1<=ymax)
    {
        flag1 = 0;
    }
    //up-left
    else if(x1<xmin && y1>ymax)
    {
        flag1 = 1;
    }
    //up-right
    else if(x1>xmax && y1>ymax)
    {
        flag1 = 2;
    }
    //down-left
    else if(x1<xmin && y1<ymin)
    {
        flag1 = 3;
    }
    //down-right
    else if(x1>xmax && y1<ymin)
    {
        flag1 = 4;
    }
    //up
    else if(y1>=ymax)
    {
        flag1 = 5;
    }
    //left
    else if(x1<=xmin)
    {
        flag1 = 6;
    }
    //right
    else if(y1>=ymax)
    {
        flag1 = 7;
    }
    //down
    else if(y1<=ymin)
    {
        flag1 = 8;
    }


    printf("Region of first point, %d\n",flag1);




    //inside
    if(x2>=xmin && x2<=xmax && y2>=ymin && y2<=ymax)
    {
        flag2 = 0;
    }
    //up-left
    else if(x2<xmin && y2>ymax)
    {
        flag2 = 1;
    }
    //up-right
    else if(x2>xmax && y2>ymax)
    {
        flag2 = 2;
    }
    //down-left
    else if(x2<xmin && y2<ymin)
    {
        flag2 = 3;
    }
    //down-right
    else if(x2>xmax && y2<ymin)
    {
        flag2 = 4;
    }
    //up
    else if(y2>=ymax)
    {
        flag2 = 5;
    }
    //left
    else if(x2<=xmin)
    {
        flag2 = 6;
    }
    //right
    else if(y2>=ymax)
    {
        flag2 = 7;
    }
    //down
    else if(y2<=ymin)
    {
        flag2 = 8;
    }


    printf("Region of second point, %d\n",flag2);
    return 0;
}

