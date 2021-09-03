#include<windows.h>
#include<GL/glut.h>
#include<math.h>
#include<stdio.h>
#define pi 3.14159265

//draw cube
float angle= 45;


void spin(void){
    angle = angle+0.1;//increasing the additional value will speedup rotation.
    glutPostRedisplay();
}
void display(void){

    glClear(GL_COLOR_BUFFER_BIT);
    glLoadIdentity();
    gluLookAt(0,0,7,0,0,0,0,1,0);
    glRotatef(angle,1,0,0);
    glRotatef(angle,0,1,0);
    glRotatef(angle,0,0,1);
    glutWireCube(2);
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
    glutInitDisplayMode(GLUT_DOUBLE);
    glutInitWindowSize(800,800);
    glutInitWindowPosition(100,100);
    glutCreateWindow("rashik");
    glutDisplayFunc(display);
    glutReshapeFunc(reshape);
    glutIdleFunc(spin);//this alwys calls passed func.


    glutMainLoop();
    return 0;

 }
