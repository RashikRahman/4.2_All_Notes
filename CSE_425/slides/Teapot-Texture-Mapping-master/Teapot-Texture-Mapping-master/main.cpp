//
//  main.cpp
//  Teapot
//
//  Created by Erik Muro on 4/5/14.
//  Copyright1 (c) 2014 Erik Muro. All right1s reserved.
//

#include<GL/glut.h>
#include <stdlib.h>
#include <math.h>
#include <sstream>
#include <vector>
#include "Simple OpenGL Image Library/src/SOIL.h"
using namespace std;

/**
 ===============================VARIABLES==========================================
 */

//struct for vertex positions.qq
struct Vec3d{
    double x, y, z, s, t;

};

//struct for face indices.
struct triples{
    int id1;
    int id2;
    int id3;
};

//array of vertices.
vector<Vec3d> vertices;

//array of faces, face normals, and unit face normals.
vector<triples> faceIndexes;
vector<Vec3d> faceNormals;
vector<Vec3d> unitNormals;
vector<Vec3d> unitVectors;

//keyboard variables
float vertical = 0.0, horizontal = 0.0;
float up =0.0,right1= 0.0;
bool fillMesh = true, lightOn = false, steelTextureTrue = false,
furTextureTrue= false, reflectionTrue= false;

//texture variables
GLuint steel_texture, reflection_texture;
GLuint fur_texture, fur_back;


/**
 ===============================DATA COMPUTATION==========================================
 */

/**
 *
 *  Reads in the Utah teapot from a triangle mesh file.
 *  Assigns the "vertices", and "faces" arrays.
 *
 */
void readData()
{
    FILE * stream;
    char buffer[200];

    stream = fopen("/Users/ErikMuro/Documents/U_of_I/CS418_Graphics/1.CS418_MP3/Teapot/Teapot/teapotmesh.txt", "r");
    if (stream == NULL)
        printf("Error opening file");
    else
    {
        while ( !feof(stream) )
        {
            if ( fgets (buffer , 200 , stream) == NULL )
                break;

            char* element = strtok(buffer, " ");
            char* xarg = strtok(NULL, " ");
            char* yarg = strtok(NULL, " ");
            char* zarg = strtok(NULL, " ");

            if ( strcmp(element, "v") ==0 ) {
                Vec3d vec;
                vec.x =atof(xarg);
                vec.y =atof(yarg);
                vec.z =atof(zarg);

                double theta = atan2(vec.z, vec.x);
                double pi = 3.14159265;
                vec.s = (theta+pi)/(2*pi);
                vec.t = vec.y/3.15;

                vertices.push_back(vec);

            }
            else if ( strcmp(element, "f") == 0 ) {
                triples face;
                face.id1 =atoi(xarg);
                face.id2 =atoi(yarg);
                face.id3 =atoi(zarg);
                faceIndexes.push_back(face);

            }
        }

    }
    fclose(stream);
}





/**
 *
 *  Computes the cross product of two sides of the triangle equals the surface normal.
 *  So, if V = P2 - P1 and W = P3 - P1, and N is the surface normal, then:
 *      Nx=(Vy∗Wz)−(Vz∗Wy)
 *      Ny=(Vz∗Wx)−(Vx∗Wz)
 *      Nz=(Vx∗Wy)−(Vy∗Wx)
 *
 *  source: http://math.stackexchange.com/questions/305642/how-to-find-surface-normal-of-a-triangle
 */
void computeFaceNormals()
{
    double index1, index2, index3;

    //the three vertices
    Vec3d vec1, vec2, vec3;

    for (int findex= 0; findex<faceIndexes.size(); findex++) {
        triples face = faceIndexes[findex];

        //index of each vertex
        index1= face.id1;
        index2 = face.id2;
        index3 = face.id3;

        vec1 = vertices[index1-1];
        vec2 = vertices[index2-1];
        vec3 = vertices[index3-1];

        Vec3d V,W,N;
        V.x = vec2.x - vec1.x;
        V.y = vec2.y - vec1.y;
        V.z = vec2.z - vec1.z;

        W.x = vec3.x - vec1.x;
        W.y = vec3.y - vec1.y;
        W.z = vec3.z - vec1.z;

        //normals
        N.x = (V.y * W.z)-(V.z * W.y);
        N.y = (V.z * W.x)-(V.x * W.z);
        N.z = (V.x * W.y)-(V.y * W.x);

        faceNormals.push_back(N);
    }
}




/**
 *  Computes the unit vector of the normals:
 *      dist = SQRT( cross[x]2 + cross[y]2 + cross[z]2)
 *
 *  The components of the normal would then become:
 *      norm[x] = cross[x] / dist
 *      norm[y] = cross[y] / dist
 *      norm[z] = cross[z] / dist
 *
 *  source: http://www.tjhsst.edu/~dhyatt/supercomp/n310.html
 */
void computeUnitVectors()
{
    //face normals
    double xSquared, ySquared, zSquared, dist;
    for(int index = 0; index< faceNormals.size(); index++)
    {
        Vec3d face, unitVec;

        face = faceNormals[index];

        xSquared = pow(face.x, 2);
        ySquared = pow(face.y, 2);
        zSquared = pow(face.z, 2);

        dist = pow( xSquared+ySquared+zSquared, .5);

        unitVec.x = face.x /dist;
        unitVec.y = face.y /dist;
        unitVec.z = face.z /dist;

        unitNormals.push_back(unitVec);
    }


    //vector normals
    for(int index = 0; index< vertices.size(); index++)
    {
        Vec3d vec, normalized;
        vec = vertices[index];

        xSquared = pow(vec.x, 2);
        ySquared = pow(vec.y, 2);
        zSquared = pow(vec.z, 2);
        dist = pow( xSquared+ySquared+zSquared, .5);

        normalized.x = vec.x/dist;
        normalized.y = vec.y/dist;
        normalized.z = vec.z/dist;
        normalized.s = vec.s;
        normalized.t = vec.t;

        unitVectors.push_back(normalized);

    }
}




/**
 =================================OPENGL IMPLEMENTATION===========================================
 */


/**
 *
 *  Initialization function that calls readData and compute the normals.
 *  Enable the Depth Test!!!
 */
void init()
{


    glClearColor(0.8,0.8,0.8,1.0);
	glEnable(GL_DEPTH_TEST);

    //read data from triangle mesh for Teapot
    readData();
    computeFaceNormals();
    computeUnitVectors();

}




/**
 *
 *  Set up the lighting and be able to to call this function
 *  to make the illusion of a light turning on and off.
 */
void setupLighting()
{
    GLfloat position[] ={1.0, 1.0, 1.0, 1.0};
    GLfloat light_ambient[] = { -1.0, -1.0, 0.0, 1.0 };



    glLightfv(GL_LIGHT0, GL_AMBIENT, light_ambient);
    glLightfv(GL_LIGHT0, GL_POSITION, position);
    glShadeModel(GL_SMOOTH);
    glEnable(GL_LIGHTING);
    glEnable(GL_LIGHT0);

}

/**
 *  Set up the texture on the teapot to make it look like steel.
 *  Also set a similiar background but not exactly the same to make the distinction.
 *  source: http://open.gl/textures
 */
void setupSteelTexture()
{

    glDisable(GL_TEXTURE_2D);
    glPushMatrix();
    glLoadIdentity();
    glEnable(GL_TEXTURE_2D);
    glGenTextures(1, &fur_texture);
    glBindTexture(GL_TEXTURE_2D, fur_texture);

    fur_texture = SOIL_load_OGL_texture("/Users/ErikMuro/Documents/U_of_I/CS418_Graphics/1.CS418_MP3/Teapot/Teapot/steel_background1.jpg",SOIL_LOAD_AUTO,SOIL_CREATE_NEW_ID,SOIL_FLAG_INVERT_Y);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexEnvf( GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );

    static int length = 10;
    static int zValue = 10;



    glBegin(GL_QUADS);
    //glNormal3f(1,0,-1);
    glMultiTexCoord2fARB(GL_TEXTURE2_ARB,-length,-length);
    glTexCoord2f(0,0);
    glVertex3f(-length,-length,-zValue);

    glNormal3f(1,0,-1);
    glMultiTexCoord2fARB(GL_TEXTURE2_ARB,-length,length);
    glTexCoord2f(0,1);
    glVertex3f(-length,length,-zValue);

    glNormal3f(1,0,-1);
    glMultiTexCoord2fARB(GL_TEXTURE2_ARB,length,length);
    glTexCoord2f(1,1);
    glVertex3f(length,length,-zValue);

    glNormal3f(1,0,-1);
    glMultiTexCoord2fARB(GL_TEXTURE2_ARB,length,-length);
    glTexCoord2f(1,0);
    glVertex3f(length,-length,-zValue);
    glEnd();
    glPopMatrix();

    glDisable(GL_TEXTURE_2D);

    glEnable(GL_TEXTURE_2D);
    glGenTextures(1, &fur_back);
    glBindTexture(GL_TEXTURE_2D, fur_back);

    fur_back = SOIL_load_OGL_texture("/Users/ErikMuro/Documents/U_of_I/CS418_Graphics/1.CS418_MP3/Teapot/Teapot/steel_texture1.bmp",SOIL_LOAD_AUTO,SOIL_CREATE_NEW_ID,SOIL_FLAG_INVERT_Y);

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexEnvf( GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );


}


/**
 *  Set up the texture on the teapot to make it look like fur.
 *  Also set a similiar background but not exactly the same to make the distinction.
 *  source: http://open.gl/textures
 */
void setupFurTexture()
{

    glDisable(GL_TEXTURE_2D);

    glPushMatrix();
    glLoadIdentity();
    glEnable(GL_TEXTURE_2D);
    glGenTextures(1, &fur_texture);
    glBindTexture(GL_TEXTURE_2D, fur_texture);

    fur_texture = SOIL_load_OGL_texture("/Users/ErikMuro/Documents/U_of_I/CS418_Graphics/1.CS418_MP3/Teapot/Teapot/fur_texture.jpg",SOIL_LOAD_AUTO,SOIL_CREATE_NEW_ID,SOIL_FLAG_INVERT_Y);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexEnvf( GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );

    static int length = 10;
    static int zValue = 10;



    glBegin(GL_QUADS);
    //glNormal3f(1,0,-1);
    glMultiTexCoord2fARB(GL_TEXTURE2_ARB,-length,-length);
    glTexCoord2f(0,0);
    glVertex3f(-length,-length,-zValue);

    glNormal3f(1,0,-1);
    glMultiTexCoord2fARB(GL_TEXTURE2_ARB,-length,length);
    glTexCoord2f(0,1);
    glVertex3f(-length,length,-zValue);

    glNormal3f(1,0,-1);
    glMultiTexCoord2fARB(GL_TEXTURE2_ARB,length,length);
    glTexCoord2f(1,1);
    glVertex3f(length,length,-zValue);

    glNormal3f(1,0,-1);
    glMultiTexCoord2fARB(GL_TEXTURE2_ARB,length,-length);
    glTexCoord2f(1,0);
    glVertex3f(length,-length,-zValue);
    glEnd();
    glPopMatrix();

    glDisable(GL_TEXTURE_2D);

    glEnable(GL_TEXTURE_2D);
    glGenTextures(1, &fur_back);
    glBindTexture(GL_TEXTURE_2D, fur_back);

    fur_back = SOIL_load_OGL_texture("/Users/ErikMuro/Documents/U_of_I/CS418_Graphics/1.CS418_MP3/Teapot/Teapot/fur_background.jpg",SOIL_LOAD_AUTO,SOIL_CREATE_NEW_ID,SOIL_FLAG_INVERT_Y);

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexEnvf( GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );


}



/**
 *  Set up the texture on the teapot to make it reflect its environment.
 *  Also set a similiar background but not exactly the same to make the distinction.
 *  source: http://open.gl/textures
 */
void setupReflection()
{
    glDisable(GL_TEXTURE_2D);
    glPushMatrix();
    glLoadIdentity();
    glEnable(GL_TEXTURE_2D);
    glGenTextures(1, &fur_texture);
    glBindTexture(GL_TEXTURE_2D, fur_texture);

    fur_texture = SOIL_load_OGL_texture("/Users/ErikMuro/Documents/U_of_I/CS418_Graphics/1.CS418_MP3/Teapot/Teapot/probe_background.jpg",SOIL_LOAD_AUTO,SOIL_CREATE_NEW_ID,SOIL_FLAG_INVERT_Y);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    //glTexEnvf( GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );

    static int length = 10;
    static int zValue = 10;



    glBegin(GL_QUADS);
    //glNormal3f(1,0,-1);
    glMultiTexCoord2fARB(GL_TEXTURE2_ARB,-length,-length);
    glTexCoord2f(0,0);
    glVertex3f(-length,-length,-zValue);

    glNormal3f(1,0,-1);
    glMultiTexCoord2fARB(GL_TEXTURE2_ARB,-length,length);
    glTexCoord2f(0,1);
    glVertex3f(-length,length,-zValue);

    glNormal3f(1,0,-1);
    glMultiTexCoord2fARB(GL_TEXTURE2_ARB,length,length);
    glTexCoord2f(1,1);
    glVertex3f(length,length,-zValue);

    glNormal3f(1,0,-1);
    glMultiTexCoord2fARB(GL_TEXTURE2_ARB,length,-length);
    glTexCoord2f(1,0);
    glVertex3f(length,-length,-zValue);
    glEnd();
    glPopMatrix();

    glDisable(GL_TEXTURE_2D);
    glEnable(GL_TEXTURE_2D);
    glGenTextures(1, &reflection_texture);
    glBindTexture(GL_TEXTURE_2D, reflection_texture);

    reflection_texture = SOIL_load_OGL_texture("/Users/ErikMuro/Documents/U_of_I/CS418_Graphics/1.CS418_MP3/Teapot/Teapot/probe1.jpg",SOIL_LOAD_AUTO,SOIL_CREATE_NEW_ID,SOIL_FLAG_INVERT_Y);

    glTexGeni(GL_S, GL_TEXTURE_GEN_MODE, GL_REFLECTION_MAP);
    glTexGeni(GL_T, GL_TEXTURE_GEN_MODE, GL_REFLECTION_MAP);
    glTexGeni(GL_R, GL_TEXTURE_GEN_MODE,GL_REFLECTION_MAP);
    glEnable(GL_TEXTURE_GEN_S);
    glEnable(GL_TEXTURE_GEN_T);
    glEnable(GL_TEXTURE_GEN_R);

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexGeni(GL_S, GL_TEXTURE_GEN_MODE, GL_SPHERE_MAP);
    glTexGeni(GL_T, GL_TEXTURE_GEN_MODE, GL_SPHERE_MAP);
    glEnable(GL_TEXTURE_GEN_S);
    glEnable(GL_TEXTURE_GEN_T);
    //qglTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_DECAL);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
}



//Displays Teapot.
/**
 *  Display function that sets up the teapot and all of its texturing,
 *  and environment mapping. Also enable lighting as well.
 */
void display(void)
{


    glMatrixMode (GL_PROJECTION);
	glLoadIdentity ();

	glFrustum (-1.0, 1.0, -1.0, 1.0, 1.5, 20.0);

    glMatrixMode( GL_MODELVIEW);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glLoadIdentity();

    if(fillMesh)
        glPolygonMode( GL_FRONT_AND_BACK, GL_FILL);
    else
        glPolygonMode( GL_FRONT_AND_BACK, GL_LINE);

    gluLookAt(0.0, 0.0, 3.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0);


    if(lightOn)
    {
        //Lighting setup
        setupLighting();
    }


    if (steelTextureTrue) {
        setupSteelTexture();
    }
    else if(furTextureTrue)
    {
        setupFurTexture();
    }
    else if(reflectionTrue)
    {
        setupReflection();
    }
    else
    {
        glDisable(GL_TEXTURE_2D);
    }


    glPushMatrix();

    //scroll translate and scale
    GLfloat transform[16];
    glGetFloatv(GL_MODELVIEW_MATRIX, transform);
    glLoadIdentity();
    glScalef(.5, .5, .5);
    glTranslatef(0.0, -2.0, 3.0);
    glMultMatrixf(transform);

    //up rotations
    glGetFloatv(GL_MODELVIEW_MATRIX, transform);
    glLoadIdentity();
    glRotatef(up,1.0, 0.0, 0.0);
    glMultMatrixf(transform);

    //right rotations
    glGetFloatv(GL_MODELVIEW_MATRIX, transform);
    glLoadIdentity();
    glRotatef(right1, 0.0, 1.0, 0.0);
    glMultMatrixf(transform);

    //scroll down or up, and left or right
    glGetFloatv(GL_MODELVIEW_MATRIX, transform);
    glLoadIdentity();
    glTranslatef(horizontal, -vertical, -3.0);
    glMultMatrixf(transform);


    //draw teapot
    //glColor3f(1.0,0.0,0.0);
	glBegin(GL_TRIANGLES);
        for(int i = 0; i < faceIndexes.size(); i++)
        {
            triples face = faceIndexes[i];

            Vec3d v1 = vertices[face.id1-1];
            Vec3d v2 = vertices[face.id2-1];
            Vec3d v3 = vertices[face.id3-1];

            Vec3d n1 = unitNormals[face.id1-1];
            Vec3d n2 = unitNormals[face.id2-1];
            Vec3d n3 = unitNormals[face.id3-1];

            glNormal3f(v1.x, v1.y, v1.z);
            glTexCoord2f(v1.s, v1.t);
            glVertex3f(v1.x, v1.y, v1.z);

            glNormal3f(v2.x, v2.y, v2.z);
            glTexCoord2f(v2.s, v2.t);
            glVertex3f(v2.x, v2.y, v2.z);

            glNormal3f(v3.x, v3.y, v3.z);
            glTexCoord2f(v3.s, v3.t);
            glVertex3f(v3.x, v3.y, v3.z);
        }

    glEnd();


    //table for teapot!!!
    glBegin(GL_QUADS);
        glVertex3f(-2.0f, 0.0f, 2.0f);              // Top Left
        glVertex3f( 2.0f, 0.0f, 2.0f);              // Top Right
        glVertex3f( 2.0f,0.0f, -2.0f);              // Bottom Right
        glVertex3f(-2.0f,0.0f, -2.0f);
    glEnd();

    //glLoadIdentity();
    glTranslatef(0.0, 0.1, 0.0);
    glMultMatrixf(transform);

    glBegin(GL_QUADS);
        glVertex3f(-2.0f, 2.0f, 0.0f);
        glVertex3f( 2.0f, 2.0f, 0.0f);
        glVertex3f( 2.0f,-2.0f, 0.0f);
        glVertex3f(-2.0f,-2.0f, 0.0f);

        glVertex3f(0.0f, 2.0f, -2.0f);
        glVertex3f(0.0f, 2.0f, 2.0f);
        glVertex3f(0.0f,-2.0f, 2.0f);
        glVertex3f(0.0f,-2.0f, -2.0f);

    glEnd();

    glPopMatrix();


	glutSwapBuffers();
	glFlush ();

	glutPostRedisplay();
}


/**
 *
 *  Control arrow keyboard input
 *
 */
void control(int key, int x, int y)
{
    if(key == GLUT_KEY_UP)
        up -= 2.9;
    else if(key == GLUT_KEY_DOWN)
        up+= 2.9;
    else if(key == GLUT_KEY_LEFT)
        right1 -= 2.9;
    else if(key == GLUT_KEY_RIGHT)
        right1 +=2.9;
}


//Keyboard inputs read from user.
void keyboard(unsigned char key, int x, int y)
{
    switch (key) {
        //move vertically upward, like a helicopter.
        case 'w':
            vertical -= 0.02;
            break;
        //move vertically downward.
        case 's':
            vertical += 0.02;
            break;
        //moves it right
        case 'd':
            horizontal += 0.02;
            break;
        //moves teapot left
        case 'a':
            horizontal -=0.02;
            break;
        //view triangle mesh
        case 'm':
            fillMesh = !fillMesh;
            break;
        //turn light on and off
        case 'l':
            lightOn = !lightOn;
            if (!lightOn) {
                glDisable(GL_LIGHTING);
            }
            break;
        //view reflection environment mapping
        case 'r':
            reflectionTrue = !reflectionTrue;
            steelTextureTrue = false;
            furTextureTrue = false;
            break;
        //view fur texturing
        case 'f':
            furTextureTrue = !furTextureTrue;
            steelTextureTrue = false;
            reflectionTrue = false;
            break;
        //view steel texturing
        case 't':
            steelTextureTrue = !steelTextureTrue;
            furTextureTrue = false;
            reflectionTrue = false;
            break;
        //quit
        case 'q':
		case 27:
			exit(0);
			break;

    }
}

//Called every 10 milliseconds
void timerFunc(int value) {

    //redisplay the new positions of the verticies
	glutPostRedisplay();

    //call this function again
    glutTimerFunc (30, timerFunc, 0);
}



int main(int argc, char * argv[])
{


    glutInit(&argc, argv);
    glutInitDisplayMode (GLUT_DOUBLE | GLUT_RGB | GLUT_DEPTH);
    glutInitWindowSize (550, 550);
    glutInitWindowPosition (100, 100);
    glutCreateWindow ("MP3");
    init();
    glutDisplayFunc(display);

    //keyboard inputs
    glutKeyboardFunc(keyboard);

    //special keyboard inputs like the up, down, left1, right1 arrow keys
    glutSpecialFunc(control);


    //30 frames per second
    glutTimerFunc(30, timerFunc, 0);

    glutMainLoop();
    return 0;
}

