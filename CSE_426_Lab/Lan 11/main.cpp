#include <stdio.h>
#include <windows.h>
#include <GL/glut.h>
#include<math.h>
#include <gl/GL.h>
#include <stdio.h>
float xmin, xmax, ymin, ymax;
float x_1,y_1, x_2, y_2;
#define pi 3.14159265
float r=.015;

float x3, y3, x4, y4;
void display(){
        float x,y;

        glBegin(GL_LINE_LOOP); ///window
        glColor3f(0.7, 0.3, 0.6);
            glVertex2f(xmin,ymin);
            glVertex2f(xmax,ymin);
            glVertex2f(xmax,ymax);
            glVertex2f(xmin,ymax);
        glEnd();

        glBegin(GL_LINES); ///line
        glColor3f(1, 0.22, 0.2);

        glVertex2f(x_1,y_1);
        glVertex2f(x_2,y_2);

        glEnd();



        glBegin(GL_POLYGON);
        glColor3f(.7, 0, 0);

        for(float theta=0; theta<360; theta+=.1){
            float x=(r*cos((theta*2*pi)/360))+x_1;
            float y=-(r*sin((theta*2*pi)/360))+y_1;
            glVertex2f(x,y);
        }


        glEnd();



        glBegin(GL_POLYGON);
        glColor3f(.7, 0, 0);

        for(float theta=0; theta<360; theta+=.1){
            float x=(r*cos((theta*2*pi)/360))+x_2;
            float y=-(r*sin((theta*2*pi)/360))+y_2;
            glVertex2f(x,y);
        }


        glEnd();



        glBegin(GL_LINES);///clipped line
        glColor3f(0, 0, 1);

        glVertex2f(x3,y3);
        glVertex2f(x4,y4);
        printf("(%f,%f)(%f,%f)",x3,y3,x4,y4);

        glEnd();




       glBegin(GL_POLYGON);///clipped line point 1
        glColor3f(1, 1, 1);

        for(float theta=0; theta<360; theta+=.1){
            float x=(r*cos((theta*2*pi)/360))+x3;
            float y=-(r*sin((theta*2*pi)/360))+y3;
            glVertex2f(x,y);
        }
        glEnd();


        glBegin(GL_POLYGON);///clipped line point 2
        glColor3f(1, 1, 1);

        for(float theta=0; theta<360; theta+=.1){
            float x=(r*cos((theta*2*pi)/360))+x4;
            float y=-(r*sin((theta*2*pi)/360))+y4;
            glVertex2f(x,y);
        }
        glEnd();


        glFlush();
}





int main(int argc, char **argv) // always same
{

    float x1, y1, x2, y2;

    scanf("%f %f %f %f", &xmin, &xmax, &ymin, &ymax);
    scanf("%f %f %f %f", &x1, &y1, &x2, &y2);
    int flag1, flag2;

    printf("\n\nwindow:(%f,%f),(%f,%f),(%f,%f),(%f,%f)\n",xmin,ymin,xmax,ymin,xmax,ymax,xmin,ymax);

    //inside
    if(x1>=xmin && x1<=xmax && y1>=ymin && y1<=ymax)
    {
        printf("%f %f\n",x1, y1);
        x3=x1;y3=y1;
        flag1 = 0;
    }
    //up-left
    else if(x1<xmin && y1>ymax)
    {
        x3 = xmin;
        y3 = y1+(y2-y1)*((xmin-x1)/(x2-x1));
        if(x3>=xmin && x3<=xmax && y3>=ymin && y3<=ymax)
        {
            printf("%f %f\n",x3, y3);
        }

        flag1 = 1;
    }
    //up-right
    else if(x1>xmax && y1>ymax)
    {
        x3 = xmax;
        y3 = y1+(y2-y1)*((xmax-x1)/(x2-x1));
        if(x3>=xmin && x3<=xmax && y3>=ymin && y3<=ymax)
        {
            printf("%f %f\n",x3, y3);
        }

        flag1 = 2;
    }

    //down-left
    else if(x1<xmin && y1<ymin)
    {
        x3 = xmin;
        y3 = y1+(y2-y1)*((xmin-x1)/(x2-x1));
        if(x3>=xmin && x3<=xmax && y3>=ymin && y3<=ymax)
        {
            printf("%f %f\n",x3, y3);
        }

        flag1 = 3;
    }
    //down-right
    else if(x1>xmax && y1<ymin)
    {
        x3 = xmax;
        y3 = y1+(y2-y1)*((xmax-x1)/(x2-x1));
        if(x3>=xmin && x3<=xmax && y3>=ymin && y3<=ymax)
        {
            printf("%f %f\n",x3, y3);
        }

        flag1 = 4;
    }
    //up
    else if(y1>=ymax)
    {
        x3 = x1+(x2-x1)*((ymax-y1)/(y2-y1));
        y3 = ymax;
        if(x3>=xmin && x3<=xmax && y3>=ymin && y3<=ymax)
        {
            printf("%f %f\n",x3, y3);
        }
        flag1 = 5;
    }
    //left
    else if(x1<=xmin)
    {
        x3 = xmin;
        y3 = y1+(y2-y1)*((xmin-x1)/(x2-x1));
        if(x3>=xmin && x3<=xmax && y3>=ymin && y3<=ymax)
        {
            printf("%f %f\n",x3, y3);
        }
        flag1 = 6;
    }
    //right
    else if(x1>=xmax)
    {
        x3 = xmax;
        y3 = y1+(y2-y1)*((xmax-x1)/(x2-x1));
        if(x3>=xmin && x3<=xmax && y3>=ymin && y3<=ymax)
        {
            printf("%f %f\n",x3, y3);
        }
        flag1 = 7;
    }
    //down
    else if(y1<=ymin)
    {
        x3 = x1+(x2-x1)*((ymin-y1)/(y2-y1));
        y3 = ymin;
        if(x3>=xmin && x3<=xmax && y3>=ymin && y3<=ymax)
        {
            printf("%f %f\n",x3, y3);
        }
        flag1 = 8;
    }


    printf("Region of first point, %d\n",flag1);




    //inside
    if(x2>=xmin && x2<=xmax && y2>=ymin && y2<=ymax)
    {
        x4=x2;y4=y2;
        printf("%f %f\n", x2, y2);
        flag2 = 0;
    }
    //up-left
    else if(x2<xmin && y2>ymax)
    {

        x4 = x1+(x2-x1)*((ymax-y1)/(y2-y1));
        y4 = ymax;
        if(x4>=xmin && x4<=xmax && y4>=ymin && y4<=ymax)
        {
            printf("%f %f\n",x4, y4);
        }
        flag2 = 1;
    }
    //up-right
    else if(x2>xmax && y2>ymax)
    {

        x4 = x1+(x2-x1)*((ymax-y1)/(y2-y1));
        y4 = ymax;
        if(x4>=xmin && x4<=xmax && y4>=ymin && y4<=ymax)
        {
            printf("%f %f\n",x4, y4);
        }
        flag2 = 2;
    }
    //down-left
    else if(x2<xmin && y2<ymin)
    {

        x4 = x1+(x2-x1)*((ymin-y1)/(y2-y1));
        y4 = ymin;
        if(x4>=xmin && x4<=xmax && y4>=ymin && y4<=ymax)
        {
            printf("%f %f\n",x4, y4);
        }
        flag2 = 3;
    }
    //down-right
    else if(x2>xmax && y2<ymin)
    {

        x4 = x1+(x2-x1)*((ymin-y1)/(y2-y1));
        y4 = ymin;
        if(x4>=xmin && x4<=xmax && y4>=ymin && y4<=ymax)
        {
            printf("%f %f\n",x4, y4);
        }
        flag2 = 4;
    }
    //up
    else if(y2>=ymax)
    {
        x4 = x1+(x2-x1)*((ymax-y1)/(y2-y1));
        y4 = ymax;
        if(x4>=xmin && x4<=xmax && y4>=ymin && y4<=ymax)
        {
            printf("%f %f\n",x4, y4);
        }
        flag2 = 5;
    }
    //left
    else if(x2<=xmin)
    {
        x4 = xmin;
        y4 = y1+(y2-y1)*((xmin-x1)/(x2-x1));
        if(x4>=xmin && x4<=xmax && y4>=ymin && y4<=ymax)
        {
            printf("%f %f\n",x4, y4);
        }
        flag2 = 6;
    }
    //right
    else if(x2>=xmax)
    {
        x4 = xmax;
        y4 = y1+(y2-y1)*((xmax-x1)/(x2-x1));
        if(x4>=xmin && x4<=xmax && y4>=ymin && y4<=ymax)
        {
            printf("%f %f\n",x4, y4);
        }
        flag2 = 7;
    }
    //down
    else if(y2<=ymin)
    {
        x4 = x1+(x2-x1)*((ymin-y1)/(y2-y1));
        y4 = ymin;

        if(x4>=xmin && x4<=xmax && y4>=ymin && y4<=ymax)
        {
            printf("%f %f\n",x4, y4);
        }
        flag2 = 8;
    }


    printf("Region of second point, %d\n",flag2);

    x_1=x1;x_2=x2;
    y_1=y1;y_2=y2;

    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_SINGLE);
    glutInitWindowSize(720,720); //screen
    glutInitWindowPosition(1,1);
    glutCreateWindow("Rashik");
    glutDisplayFunc(display);
    glutMainLoop();


    return 0;
}

