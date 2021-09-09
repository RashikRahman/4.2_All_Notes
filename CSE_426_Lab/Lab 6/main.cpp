#include<windows.h>
#include<GL/glut.h>
#include<math.h>
#include<stdio.h>
#define pi 3.14159265

//draw cube
float angle= 45;


void spin(void){
    angle = angle+0.1;//increasing the addition value will speedup rotation.
    glutPostRedisplay();
}
void display(void){

    glClear(GL_COLOR_BUFFER_BIT);
    glLoadIdentity();
    gluLookAt(0,0,7,0,0,0,0,1,0);
    glRotatef(angle,1,0,0);//rotate with x axis
    glRotatef(angle,0,1,0);//rotate with y axis
    glRotatef(angle,0,0,1);//rotate with z axis
    glutWireCube(2);//There are many shapes of glutWire here we use cube and its size is 2.
    glutSwapBuffers(); //works like glflush but its used for 3d objects.

 }

void reshape(int w, int h){
    glViewport(0,0,w,h);
    glMatrixMode(GL_PROJECTION);
    gluPerspective(70,w/h,1,100);
    glMatrixMode(GL_MODELVIEW);

 }


int main(int argc, char **argv){

    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_DOUBLE);//In 2D we used glut_single but for 3D we need to be dynamic thus using glut_double
    glutInitWindowSize(800,800);
    glutInitWindowPosition(100,100);
    glutCreateWindow("rashik");
    glutDisplayFunc(display);
    glutReshapeFunc(reshape);
    glutIdleFunc(spin);//this alwys calls passed func.


    glutMainLoop();
    return 0;

 }
