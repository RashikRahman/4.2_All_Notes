#include<windows.h>
#include<GL/glut.h>
#include<math.h>
#include<stdio.h>
#define pi 3.14159265

float xa=0.2,ya=0.2, xb=-0.2,yb=0.2, xc=-0.2,yc=-0.2, xd=0.2,yd=-0.2;
float ty=0.1, tx=0.1;

void display(){
    glClear(GL_COLOR_BUFFER_BIT);//This clears out the previous buffer so that we can see a single object moving rather than object overlays.

    glBegin(GL_QUADS);
    glColor3f(1,0,0);
    glVertex2f(0.5,0.5);
    glColor3f(0,1,0);
    glVertex2f(0.5,-0.5);
    glColor3f(0,0,1);
    glVertex2f(-0.5,-0.5);
    glColor3f(0,1,1);
    glVertex2f(-0.5,0.5);
    glEnd();


    glBegin(GL_QUADS);
    glColor3f(1,1,0.5);
    glVertex2f(xa,ya);
    glColor3f(1,1,0);
    glVertex2f(xb,yb);
    glColor3f(0,1,1);
    glVertex2f(xc,yc);
    glColor3f(1,0,1);
    glVertex2f(xd,yd);
    glEnd();

    glFlush();
 }

 void keyboard(unsigned char key, int x, int y){

     switch(key){
        case 'w':
            ya = ya+ty;
            yb = yb+ty;
            yc = yc+ty;
            yd = yd+ty;
            if (xa<=0.5&&ya<=0.5&&xc>=-0.5&&yc>=-0.5)
                printf("Inside");
            if(ya>0.5||yb>0.5)
                printf("Up");
            if(yd<-0.5||yc<-0.5)
                printf("Down");
            if(xa>0.5||xd>0.5)
                printf("Right");
            if(xc<-0.5||xb<-0.5)
                printf("Left");
            printf("\n");

            //glTranslatef(0,0.1,0);
            glutPostRedisplay();
            break;

        case 's':
            if (xa<=0.5&&ya<=0.5&&xc>=-0.5&&yc>=-0.5)
                printf("Inside");
            if(ya>0.5||yb>0.5)
                printf("Up");
            if(yd<-0.5||yc<-0.5)
                printf("Down");
            if(xa>0.5||xd>0.5)
                printf("Right");
            if(xc<-0.5||xb<-0.5)
                printf("Left");
            printf("\n");
            ya = ya-ty;
            yb = yb-ty;
            yc = yc-ty;
            yd = yd-ty;
            //glTranslatef(0,-0.1,0);
            glutPostRedisplay();
            break;

        case 'd':
           if (xa<=0.5&&ya<=0.5&&xc>=-0.5&&yc>=-0.5)
                printf("Inside");
            if(ya>0.5||yb>0.5)
                printf("Up");
            if(yd<-0.5||yc<-0.5)
                printf("Down");
            if(xa>0.5||xd>0.5)
                printf("Right");
            if(xc<-0.5||xb<-0.5)
                printf("Left");
            printf("\n");
            xa = xa+tx;
            xb = xb+tx;
            xc = xc+tx;
            xd = xd+tx;
            //glTranslatef(0.1,0,0);
            glutPostRedisplay();
            break;

        case 'a':
            if (xa<=0.5&&ya<=0.5&&xc>=-0.5&&yc>=-0.5)
                printf("Inside");
            if(ya>0.5||yb>0.5)
                printf("Up");
            if(yd<-0.5||yc<-0.5)
                printf("Down");
            if(xa>0.5||xd>0.5)
                printf("Right");
            if(xc<-0.5||xb<-0.5)
                printf("Left");

            printf("\n");
            xa = xa-tx;
            xb = xb-tx;
            xc = xc-tx;
            xd = xd-tx;
            //glTranslatef(-0.1,0,0);
            glutPostRedisplay();
            break;
        case 'q':
            xa = xa * cos(45/360) - ya * sin(45/360);
            ya = xa * sin(45/360) + ya * cos(45/360);

            xb = xb * cos(45/360) - yb * sin(45/360);
            yb = xb * sin(45/360) + yb * cos(45/360);

            xc = xc * cos(45/360) - yc * sin(45/360);
            yc = xc * sin(45/360) + yc * cos(45/360);

            xd = xd * cos(45/360) - yd * sin(45/360);
            yd = xd * sin(45/360) + yd * cos(45/360);
            //glRotatef(45,0,0,1);// anticlock wise thus 45
            glutPostRedisplay();
            break;
        case 'e':

            glRotatef(-45,0,0,1);// clock wise thus -45
            glutPostRedisplay();
            break;
        case 'c':
            xa = xa * 2;
            ya = xa * 2;

            xb = xb * 2;
            yb = xb * 2;

            xc = xc * 2;
            yc = xc * 2;

            xd = xd * 2;
            yd = xd * 2;
            //glScalef(2,2,1);// upscale
            glutPostRedisplay();
            break;
        case 'z':
            xa = xa /2;
            ya = xa / 2;

            xb = xb /2;
            yb = xb / 2;

            xc = xc / 2;
            yc = xc /2;

            xd = xd / 2;
            yd = xd / 2;
            //glScalef(.5,.5,1);// downscale
            glutPostRedisplay();
            break;

     }
 }


int main(int argc, char **argv){

    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_SINGLE);
    glutInitWindowSize(800,800);
    glutInitWindowPosition(100,100);
    glutCreateWindow("rashik");
    glutDisplayFunc(display);
    glutKeyboardFunc(keyboard);

    glutMainLoop();
    return 0;

 }
