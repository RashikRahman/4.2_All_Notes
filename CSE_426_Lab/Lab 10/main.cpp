#include <stdio.h>


int main(void)
{
    float xmin, xmax, ymin, ymax;
    float x1, y1, x2, y2;
    float x3, y3, x4, y4;
    scanf("%f %f %f %f", &xmin, &xmax, &ymin, &ymax);
    scanf("%f %f %f %f", &x1, &y1, &x2, &y2);
    int flag1, flag2;


    //inside
    if(x1>=xmin && x1<=xmax && y1>=ymin && y1<=ymax)
    {
        printf("%f %f\n",x1, y1);
        flag1 = 0;
    }
    //up-left
    else if(x1<xmin && y1>ymax)
    {

        x4 = x1+(x2-x1)*((ymax-y1)/(y2-y1));
        y4 = ymax;
        if(x4>=xmin && x4<=xmax && y4>=ymin && y4<=ymax)
        {
            printf("%f %f\n",x4, y4);
        }
        flag1 = 1;
    }
    //up-right
    else if(x1>xmax && y1>ymax)
    {

        x4 = x1+(x2-x1)*((ymax-y1)/(y2-y1));
        y4 = ymax;
        if(x4>=xmin && x4<=xmax && y4>=ymin && y4<=ymax)
        {
            printf("%f %f\n",x4, y4);
        }
        flag1 = 2;
    }
    //down-left
    else if(x1<xmin && y1<ymin)
    {

        x4 = x1+(x2-x1)*((ymin-y1)/(y2-y1));
        y4 = ymin;
        if(x4>=xmin && x4<=xmax && y4>=ymin && y4<=ymax)
        {
            printf("%f %f\n",x4, y4);
        }
        flag1 = 3;
    }
    //down-right
    else if(x1>xmax && y1<ymin)
    {

        x4 = x1+(x2-x1)*((ymin-y1)/(y2-y1));
        y4 = ymin;
        if(x4>=xmin && x4<=xmax && y4>=ymin && y4<=ymax)
        {
            printf("%f %f\n",x4, y4);
        }
        flag1 = 4;
    }
    //up
    else if(y1>=ymax)
    {
        x4 = x1+(x2-x1)*((ymax-y1)/(y2-y1));
        y4 = ymax;
        if(x4>=xmin && x4<=xmax && y4>=ymin && y4<=ymax)
        {
            printf("%f %f\n",x4, y4);
        }
        flag1 = 5;
    }
    //left
    else if(x1<=xmin)
    {
        x4 = xmin;
        y4 = y1+(y2-y1)*((xmin-x1)/(x2-x1));
        if(x4>=xmin && x4<=xmax && y4>=ymin && y4<=ymax)
        {
            printf("%f %f\n",x4, y4);
        }
        flag1 = 6;
    }
    //right
    else if(x1>=xmax)
    {
        x4 = xmax;
        y4 = y1+(y2-y1)*((xmax-x1)/(x2-x1));
        if(x4>=xmin && x4<=xmax && y4>=ymin && y4<=ymax)
        {
            printf("%f %f\n",x4, y4);
        }
        flag1 = 7;
    }
    //down
    else if(y1<=ymin)
    {
        x4 = x1+(x2-x1)*((ymin-y1)/(y2-y1));
        y4 = ymin;
        if(x4>=xmin && x4<=xmax && y4>=ymin && y4<=ymax)
        {
            printf("%f %f\n",x4, y4);
        }
        flag1 = 8;
    }


    printf("Region of first point, %d\n",flag1);




    //inside
    if(x2>=xmin && x2<=xmax && y2>=ymin && y2<=ymax)
    {
        printf("%f %f\n", x2, y2);
        flag2 = 0;
    }
    //up-left
    else if(x2<xmin && y2>ymax)
    {
        x3 = xmin;
        y3 = y1+(y2-y1)*((xmin-x1)/(x2-x1));
        if(x3>=xmin && x3<=xmax && y3>=ymin && y3<=ymax)
        {
            printf("%f %f\n",x3, y3);
        }

        flag2 = 1;
    }
    //up-right
    else if(x2>xmax && y2>ymax)
    {
        x3 = xmax;
        y3 = y1+(y2-y1)*((xmax-x1)/(x2-x1));
        if(x3>=xmin && x3<=xmax && y3>=ymin && y3<=ymax)
        {
            printf("%f %f\n",x3, y3);
        }

        flag2 = 2;
    }
    //down-left
    else if(x2<xmin && y2<ymin)
    {
        x3 = xmin;
        y3 = y1+(y2-y1)*((xmin-x1)/(x2-x1));
        if(x3>=xmin && x3<=xmax && y3>=ymin && y3<=ymax)
        {
            printf("%f %f\n",x3, y3);
        }

        flag2 = 3;
    }
    //down-right
    else if(x2>xmax && y2<ymin)
    {
        x3 = xmax;
        y3 = y1+(y2-y1)*((xmax-x1)/(x2-x1));
        if(x3>=xmin && x3<=xmax && y3>=ymin && y3<=ymax)
        {
            printf("%f %f\n",x3, y3);
        }

        flag2 = 4;
    }
    //up
    else if(y2>=ymax)
    {
        x3 = x1+(x2-x1)*((ymax-y1)/(y2-y1));
        y3 = ymax;
        if(x3>=xmin && x3<=xmax && y3>=ymin && y3<=ymax)
        {
            printf("%f %f\n",x3, y3);
        }
        flag2 = 5;
    }
    //left
    else if(x2<=xmin)
    {
        x3 = xmin;
        y3 = y1+(y2-y1)*((xmin-x1)/(x2-x1));
        if(x3>=xmin && x3<=xmax && y3>=ymin && y3<=ymax)
        {
            printf("%f %f\n",x3, y3);
        }
        flag2 = 6;
    }
    //right
    else if(x2>=xmax)
    {
        x3 = xmax;
        y3 = y1+(y2-y1)*((xmax-x1)/(x2-x1));
        if(x3>=xmin && x3<=xmax && y3>=ymin && y3<=ymax)
        {
            printf("%f %f\n",x3, y3);
        }
        flag2 = 7;
    }
    //down
    else if(y2<=ymin)
    {
        x3 = x1+(x2-x1)*((ymin-y1)/(y2-y1));
        y3 = ymin;
        if(x3>=xmin && x3<=xmax && y3>=ymin && y3<=ymax)
        {
            printf("%f %f\n",x3, y3);
        }
        flag2 = 8;
    }


    printf("Region of second point, %d\n",flag2);
    return 0;
}
