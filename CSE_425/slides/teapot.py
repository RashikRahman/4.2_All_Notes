
from OpenGL.GLUT import *
from OpenGL.GL import *
 
 
 
def draw():
    glClear(GL_COLOR_BUFFER_BIT)
    glutSetColor(255,255,1,0)
    glutSolidTeapot(0.5)
    glFlush()
 
 
glutInit(sys.argv)
glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB)
glutInitWindowSize(500, 500)
glutInitWindowPosition(100, 100)
glutCreateWindow("My Second OpenGL Program")
glutDisplayFunc(draw)
glutMainLoop()