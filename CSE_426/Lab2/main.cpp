#include<windows.h>
#include<GL/glut.h>

void display(){

    glBegin(GL_POLYGON);
    glColor3f(0.5,0.6,0.6);

    glVertex2f(0,1);
    glVertex2f(-0.75,0.5);
    glVertex2f(-0.75,-0.5);
    glVertex2f(0,-1);
    glVertex2f(0.75,-0.5);
    glVertex2f(0.75,0.5);

    glEnd();


    glBegin(GL_LINES);
    glColor3f(1,0,0);
    glVertex2f(0.5,0.5);
    glColor3f(0,1,0);
    glVertex2f(-0.5,-0.5);

    glColor3f(1,0,0);
    glVertex2f(-0.5,0.5);
    glColor3f(0,1,0);
    glVertex2f(0.5,-0.5);
    glEnd();

    glBegin(GL_TRIANGLES);
    glColor3f(1,0,0);
    glVertex2f(0,0.5);
    glColor3f(0,1,0);
    glVertex2f(-0.5,0);
    glColor3f(0,0,1);
    glVertex2f(0.5,0);

    glColor3f(1,0,0);
    glVertex2f(0,-0.5);
    glColor3f(0,1,0);
    glVertex2f(-0.5,0);
    glColor3f(0,0,1);
    glVertex2f(0.5,0);

    glEnd();

    glBegin(GL_QUADS);
    glColor3f(0,0,1);
    glVertex2f(-0.25,0.25);
    glColor3f(0,1,0);
    glVertex2f(0.25,0.25);
    glColor3f(1,0,0);
    glVertex2f(0.25,-0.25);
    glColor3f(0,0.5,0.5);
    glVertex2f(-0.25,-0.25);
    glEnd();

    glFlush();


 }

int main(int argc, char **argv){

    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_SINGLE);
    glutInitWindowSize(700,700);
    glutInitWindowPosition(300,300);
    glutCreateWindow("rashik");
    glutDisplayFunc(display);
    glutMainLoop();
    return 0;

 }
