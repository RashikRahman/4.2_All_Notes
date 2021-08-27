#include<windows.h>
#include<GL/glut.h>
#include<math.h>
#define pi 3.14159265

float xa=0.2,ya=0.2, xb=-0.2,yb=0.2, xc=-0.2,yc=-0.2, xd=0.2,yd=-0.2;


void display(){
    glClear(GL_COLOR_BUFFER_BIT);//This clears out the previous buffer so that we can see a single object moving rather than object overlays.

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
            glTranslatef(0,0.1,0);
            glutPostRedisplay();
            break;
        case 's':
            glTranslatef(0,-0.1,0);
            glutPostRedisplay();
            break;
        case 'd':
            glTranslatef(0.1,0,0);
            glutPostRedisplay();
            break;

        case 'a':
            glTranslatef(-0.1,0,0);
            glutPostRedisplay();
            break;
        case 'q':
            glRotatef(45,0,0,1);// anticlock wise thus 45
            glutPostRedisplay();
            break;
        case 'e':
            glRotatef(-45,0,0,1);// clock wise thus -45
            glutPostRedisplay();
            break;
        case 'u':
            glScalef(2,2,1);// upscale
            glutPostRedisplay();
            break;
        case 'i':
            glScalef(.5,.5,1);// downscale
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
