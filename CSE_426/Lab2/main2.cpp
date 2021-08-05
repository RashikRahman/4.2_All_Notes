#include<windows.h>
#include<GL/glut.h>

void display(){

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
