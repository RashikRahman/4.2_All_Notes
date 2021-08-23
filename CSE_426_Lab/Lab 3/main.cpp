#include<windows.h>
#include<GL/glut.h>
#include<math.h>
#define pi 3.14159265

float r = 0.5;
void display2(){
    //Triangle

    //Upper right
    glBegin(GL_POLYGON);
    glColor3f(0,1,0);
    glVertex2f(0.15,0.25);
    glVertex2f(0.5,0.25);
    glVertex2f(0.25,0);
    glEnd();


    //Upper top
    glBegin(GL_POLYGON);
    glColor3f(0,0,1);
    glVertex2f(0,0.6);
    glVertex2f(0.15,0.25);
    glVertex2f(-0.15,0.25);
    glEnd();

    //Upper left
    glBegin(GL_POLYGON);
    glColor3f(1,0,0); //RGB
    glVertex2f(-0.15,0.25);
    glVertex2f(-0.5,0.25);
    glVertex2f(-0.25,0);
    glEnd();

    //Lower right
    glBegin(GL_POLYGON);
    glColor3f(0,0.7,0.5);
    glVertex2f(0.25,0);
    glVertex2f(0.5,-0.5);
    glVertex2f(0,-0.15);
    glEnd();

    //Lower left
    glBegin(GL_POLYGON);
    glColor3f(1,0.5,0);
    glVertex2f(-0.25,-0);
    glVertex2f(-0.5,-0.5);
    glVertex2f(-0,-0.15);
    glEnd();

    //Middle Area
    glBegin(GL_POLYGON);
    glColor3f(1,1,0);
    glVertex2f(-0.15,0.25);
    glVertex2f(0.15,0.25);
    glVertex2f(0.25,0);
    glVertex2f(0,-0.15);
    glVertex2f(-0.25,0);
    glEnd();
    glFlush();

}
void display(){

    //National Flag

    glBegin(GL_POLYGON); //Using polygon fills the circle. //GL_POINTS
    glColor3f(0,1,0);
    glVertex2f(1,0.6);//W:H=5:3=1:0.6
    glVertex2f(1,-0.6);
    glVertex2f(-1,-0.6);
    glVertex2f(-1,0.6);
    glEnd();


    glBegin(GL_POLYGON); //Using polygon fills the circle. //GL_POINTS
    for (float theta=0; theta<360; theta+=0.001){
        float x = r * cos((theta*2*pi)/360);
        float y = r * sin((theta*2*pi)/360);
        glColor3f(1,0,0);
        glVertex2f(x,y);
    }
    glEnd();


    glFlush();


 }

int main(int argc, char **argv){

    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_SINGLE);
    glutInitWindowSize(720,720);
    glutInitWindowPosition(500,500);
    glutCreateWindow("rashik");
    glutDisplayFunc(display);
    //glutDisplayFunc(display2);
    glutMainLoop();
    return 0;

 }
