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
//main function will remain same for all code.

int main(int argc, char **argv){ // command line argument

    glutInit(&argc, argv); //initialize glut with command line argument
    glutInitDisplayMode(GLUT_SINGLE); //when a object is static then we use single mode otherwise when the object is moving we can use double or single mode.
    glutInitWindowSize(700,700);
    glutInitWindowPosition(300,300);//x,y
    glutCreateWindow("rashik");//window title
    glutDisplayFunc(display); //what function will be displayed.
    glutMainLoop(); //to keep the window open \ otherwise the window will dissapear, its just like cv2.waitkey(0)
    return 0;

 }
