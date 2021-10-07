#include <windows.h>
#include <GL/glut.h>
#include <math.h>
#define pi 3.14159265

void quad(float xmin,float ymin,float xmax,float ymax)
{
    glBegin(GL_LINE_LOOP);
    glColor3f(0.5,0.5,1);         // Draw in full-intensity red.
    glVertex2f(xmin,ymin);
    glVertex2f(xmin,ymax);
    glVertex2f(xmax,ymax);
    glVertex2f(xmax,ymin);
    glEnd();
    glFlush();
}

void line(float x1, float y1, float x2, float y2)
{
    glBegin(GL_LINES);
    glColor3f(0.3,1,1);
    glVertex2f(x1, y1);
    glVertex2f(x2, y2);
    glEnd();
    glFlush();
}

void display(void)
{
    quad(-.6,-.5,.6,.5);
    line(-.8,-.4,.7,.7);
}

int main (int argc, char **argv)
{
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_SINGLE);
    glutInitWindowSize(300,300);
    glutInitWindowPosition(100,100);
    glutCreateWindow("Rashik");
    glutDisplayFunc(display);
    glutMainLoop();
    return 0;

}
