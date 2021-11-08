#include<windows.h>
#include<bits/stdc++.h>
#include <GL/glut.h>
#include <cmath>
#include <iostream>
#include <sstream>
#include <vector>

static int slices = 16;
static int stacks = 16;
int rotation_lock=0,smotoh_color_transition_lock=0,mouse_rotation_zoom_lock=0,i;
GLuint colorCounter = 0, angle=0;
GLfloat lightXPos = 0.0f;
GLfloat lightYPos = 0.f;


static void resize(int width, int height)
{
    const float ar = (float) width / (float) height;

    glViewport(0, 0, width, height);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glFrustum(-ar, ar, -1.0, 1.0, 2.0, 100.0);

    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity() ;
}

static void display(void)
{
    const double t = glutGet(GLUT_ELAPSED_TIME) / 1000.0;
    const double a = t*90.0;
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    glPushMatrix();
        glTranslated(0,0,-6);
        glRotated(60,1,0,0);
        if (rotation_lock==1) //If auto rotate enabled
        {

            glRotated(a,0,0,1);
        }

    glutSolidCone(1,1,slices,stacks);

    glPopMatrix();

    //Color for the object
    GLfloat diffColors[5][4] = {{0.9, 0.5, 0.5, 1.0},
                                {0.9, 0.7, 0.2, 1.0},
                                {0.5, 0.5, 0.9, 1.0},
                                 {0.5, 0.9, 0.3, 1.0},
                                 {0.3, 0.8, 0.9, 1.0}};

     GLfloat diffColors2[35][4] = {{0.1, 0, 0, 1.0},
                                 {0.2, 0, 0, 1.0},
                                 {0.3, 0, 0, 1.0},
                                 {0.4, 0, 0, 1.0},
                                 {0.5, 0, 0, 1.0},
                                 {0.6, 0, 0, 1.0},
                                 {0.7, 0, 0, 1.0},
                                 {0.8, 0, 0, 1.0},
                                 {0.9, 0, 0, 1.0},
                                 {0.8, 0.1, 0, 1.0},
                                 {0.6, 0.1, 0, 1.0},
                                 {0.4, 0.1, 0, 1.0},
                                 {0.2, 0.2, 0, 1.0},
                                 {0, 0.3, 0, 1.0},
                                 {0, 0.4, 0, 1.0},
                                 {0, 0.5, 0, 1.0},
                                 {0, 0.6, 0, 1.0},
                                 {0, 0.7, 0, 1.0},
                                 {0, 0.8, 0, 1.0},
                                 {0, 0.9, 0, 1.0},
                                 {0, 0.8, 0, 1.0},
                                 {0, 0.6, 0.1, 1.0},
                                 {0, 0.4, 0.1, 1.0},
                                 {0, 0.3, 0.1, 1.0},
                                 {0, 0.2, 0.1, 1.0},
                                 {0, 0, 0.2, 1.0},
                                 {0, 0, 0.3, 1.0},
                                 {0, 0, 0.4, 1.0},
                                 {0, 0, 0.5, 1.0},
                                 {0, 0, 0.6, 1.0},
                                 {0, 0, 0.7, 1.0},
                                 {0, 0, 0.8, 1.0},
                                 {0, 0, 0.9, 1.0},
                                 {0, 0, 1, 1.0}};

    if(smotoh_color_transition_lock==1) //If auto color transition enabled
    {
        glMaterialfv(GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE, diffColors2[colorCounter]);
    }

    else
        glMaterialfv(GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE, diffColors[colorCounter]);

	// Define specular color and shininess
    GLfloat specColor[] = {1.0, 1.0, 1.0, 1.0};
    GLfloat shininess[] = {100.0};
	// Note that the specular color and shininess can stay constant
    glMaterialfv(GL_FRONT_AND_BACK, GL_SPECULAR, specColor);
    glMaterialfv(GL_FRONT_AND_BACK, GL_SHININESS, shininess);
    // Set light properties
    // Light color (RGBA)
    GLfloat Lt0diff[] = {1.0,1.0,1.0,1.0};
    // Light position
	GLfloat Lt0pos[] = {1.0f + lightXPos, 1.0f + lightYPos, 5.0f, 1.0f};
    glLightfv(GL_LIGHT0, GL_DIFFUSE, Lt0diff);
    glLightfv(GL_LIGHT0, GL_POSITION, Lt0pos);
    glutSwapBuffers();
}


static void key(unsigned char key, int x, int y)
{
    switch (key)
    {
        case 'w': //Move up
            glTranslatef(0,0.1,0);
            glutPostRedisplay();
            break;

        case 's': //Move down
            glTranslatef(0,-0.1,0);
            glutPostRedisplay();
            break;

        case 'd'://Move right
            glTranslatef(0.1,0,0);
            glutPostRedisplay();
            break;

        case 'a': //Move left
            glTranslatef(-0.1,0,0);
            glutPostRedisplay();
            break;

        case 'c': //Color toggle
            smotoh_color_transition_lock=0;
            colorCounter += 1;
            if(colorCounter>5)
                colorCounter=0;
            break;

        case 't': //Enable/Disable smooth color transition

            smotoh_color_transition_lock=1;
            colorCounter += 1;
            if(colorCounter>35)
                colorCounter=0;
            break;

        case 'r': //Enable/Disable auto rotation
            if(rotation_lock==0)
                rotation_lock=1;
            else
                rotation_lock=0;
            break;

        case 'e': //Switch between rotation or zoom using mouse action
            if(mouse_rotation_zoom_lock==0)
                mouse_rotation_zoom_lock=1;
            else
                mouse_rotation_zoom_lock=0;
            break;

        case 27 : //exit when ESC is pressed

        case 'q': //exit when q is pressed
            exit(0);
            break;

        case '+': //smooth the curves and spins faster
            slices++;
            stacks++;
            break;

        case '-': //Roughs the curves and spins slower
            if (slices>3 && stacks>3)
            {
                slices--;
                stacks--;
            }
            break;
        default:
            printf("Unsigned key press %c\n",key);

    }

    glutPostRedisplay();
}

void specialFunc( int key, int x, int y )
{
    switch ( key )
    {
    case GLUT_KEY_UP:  //UP key to move the light source UP
		lightYPos += 0.5f;
		break;

    case GLUT_KEY_DOWN:  //DOWN key to move the light source DOWN
		lightYPos += -0.5f;
		break;

    case GLUT_KEY_LEFT:  //LEFT key to move the light source LEFT
		lightXPos += -0.5f;
		break;

    case GLUT_KEY_RIGHT:  //RIGHT key to move the light source RIGHT
		lightXPos += 0.5f;
		break;
    }
	// this will refresh the screen so that the user sees the light position
    glutPostRedisplay();
}

void mouse(int button, int state, int mousex, int mousey)
{
    if (mouse_rotation_zoom_lock==1) // If zoom enabled
    {
        if(button==GLUT_LEFT_BUTTON && state==GLUT_UP)
        {
            glScalef(1.2,1.2,1);

        }

        else if(button==GLUT_RIGHT_BUTTON && state==GLUT_DOWN)
        {
            glScalef(0.7,0.7,1);
        }
    }

    else // If rotation enabled
    {
        if(button==GLUT_LEFT_BUTTON && state==GLUT_UP)
        {

            glRotatef(25,0,0,1);
        }

        else if(button==GLUT_RIGHT_BUTTON && state==GLUT_DOWN)
        {
            glRotatef(-25,0,0,1);
        }
    }

    glutPostRedisplay();
}

static void idle(void)
{
    glutPostRedisplay();
}




int main(int argc, char *argv[])
{
    glutInit(&argc, argv);
    glutInitWindowSize(1280,720);
    glutInitWindowPosition(200,200);
    glutInitDisplayMode(GLUT_RGB | GLUT_DOUBLE | GLUT_DEPTH);
    glutCreateWindow("17201046");
    glutReshapeFunc(resize);
    glutDisplayFunc(display);
    glutKeyboardFunc(key);
    glutSpecialFunc(specialFunc);
    glutMouseFunc(mouse);
    glutIdleFunc(idle);

    //glClearColor(1,1,1,1);
    glEnable(GL_CULL_FACE);
    glCullFace(GL_BACK);

    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);

    glEnable(GL_LIGHT0);
    glEnable(GL_NORMALIZE);
    glEnable(GL_LIGHTING);



    glutMainLoop();

    return EXIT_SUCCESS;
}
