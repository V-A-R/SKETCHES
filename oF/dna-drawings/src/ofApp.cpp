#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    nPts = 0;
}

//--------------------------------------------------------------
void ofApp::update(){

}

//--------------------------------------------------------------
void ofApp::draw(){
    //ofSetColor(10,10,10);
    
    if (nPts > 1) {
       
       for(int i = 0; i < nPts - 1; i++)
       {
           ofLine(pts[i].x, pts[i].y, pts[i+30].x, pts[i+25].y);

           ofCircle(pts[i+1].x, pts[i+1].y, 10);
       }
       
    }
    
}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){

}

//--------------------------------------------------------------
void ofApp::keyReleased(int key){

}

//--------------------------------------------------------------
void ofApp::mouseMoved(int x, int y ){

}

//--------------------------------------------------------------
void ofApp::mouseDragged(int x, int y, int button){

     ofSetColor(x,y,10);
    
    if (nPts < MAX_PTS) {
        pts[nPts].x = x;
        pts[nPts].y = y;
        nPts++;
    }
    
}

//--------------------------------------------------------------
void ofApp::mousePressed(int x, int y, int button){
    nPts = 0;
}

//--------------------------------------------------------------
void ofApp::mouseReleased(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mouseEntered(int x, int y){

}

//--------------------------------------------------------------
void ofApp::mouseExited(int x, int y){

}

//--------------------------------------------------------------
void ofApp::windowResized(int w, int h){

}

//--------------------------------------------------------------
void ofApp::gotMessage(ofMessage msg){

}

//--------------------------------------------------------------
void ofApp::dragEvent(ofDragInfo dragInfo){ 

}
