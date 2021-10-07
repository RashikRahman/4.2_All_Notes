#include <windows.h>
#include <GL/glut.h>
#include <math.h>
#define pi 3.14159265

int quad(float xmin,float ymin,float xmax,float ymax)
{
    glBegin(GL_LINE_LOOP);
    glColor3f(0,1,.5);         // Draw in full-intensity red.
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
    glColor3f(1,1,0);
    glVertex2f(x1, y1);
    glVertex2f(x2, y2);
    glEnd();
    glFlush();
}

void display(void)
{
    quad(-.6,-.3,.6,.3);
    line(-.8,-.3,.7,.7);
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
