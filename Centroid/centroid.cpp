// reference from http://docs.opencv.org/doc/tutorials/imgproc/shapedescriptors/moments/moments.html?highlight=moment#code

#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <iostream>
#include <stdio.h>

using namespace cv;
using namespace std;

Mat frameCopy, image, imgHSV;
int thresh = 100;
int max_thresh = 255;
RNG rng(12345);

void thresh_callback(int, void*);

int main( int argc, char** argv )
{
    CvCapture* capture = 0;
    int hLow = 0;
    int hHigh = 179;
    int sLow = 0;
    int sHigh = 255;
    int vLow = 0;
    int vHigh = 255;

    capture = cvCaptureFromCAM(CV_CAP_ANY); 
    if (!capture)
        cout << "No Camera Detected" << endl;

    namedWindow("control", WINDOW_AUTOSIZE);
    // Hue
    cvCreateTrackbar("Hue Low", "Control", &hLow, 179);
    cvCreateTrackbar("Hue Low", "Control", &hHigh, 179);
    // Saturation
    cvCreateTrackbar("Hue Low", "Control", &sLow, 255);
    cvCreateTrackbar("Hue Low", "Control", &sHigh, 255);
    // Value
    cvCreateTrackbar("Hue Low", "Control", &vLow, 255);
    cvCreateTrackbar("Hue Low", "Control", &vHigh, 255);

    if (capture)
    {
        cout << "In capture ..." << endl;
        for (;;)
        {
            IplImage* iplImg = cvQueryFrame(capture);
            image = cvarrToMat(iplImg);
            if (!image.data)
            {
                cout << "Could not open the frame" << endl;
                return -1;
            }
            // HSV filter
            cvtColor(image, imgHSV, COLOR_BGR2HSV);
            Mat imgFiltered;

            imshow("result", imgHSV);
            if (waitKey(10) >= 0)
                break;

            waitKey(20); // wait 30 milli-secs in total
        }

    }

    cvReleaseCapture(&capture);
    cvDestroyWindow("result");

    return 0;
}

// void thresh_callback(int, void*)
// {
//     Mat canny_output;
//     vector<vector<Point> > contours;
//     vector<Vec4i> hierarchy;

//     /// Detect edges using canny
//     Canny( src_gray, canny_output, thresh, thresh*2, 3 );
//     /// Find contours
//     findContours( canny_output, contours, hierarchy, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE, Point(0, 0) );

//     /// Get the moments
//     vector<Moments> mu(contours.size() );
//     for( int i = 0; i < contours.size(); i++ )
//      { mu[i] = moments( contours[i], false ); }

//     ///  Get the mass centers:
//     vector<Point2f> mc( contours.size() );
//     for( int i = 0; i < contours.size(); i++ )
//      { mc[i] = Point2f( mu[i].m10/mu[i].m00 , mu[i].m01/mu[i].m00 ); }

//     /// Draw contours
//     Mat drawing = Mat::zeros( canny_output.size(), CV_8UC3 );
//     for( int i = 0; i< contours.size(); i++ )
//      {
//        Scalar color = Scalar( rng.uniform(0, 255), rng.uniform(0,255), rng.uniform(0,255) );
//        drawContours( drawing, contours, i, color, 2, 8, hierarchy, 0, Point() );
//        circle( drawing, mc[i], 4, color, -1, 8, 0 );
//      }

//     /// Show in a window
//     namedWindow( "Contours", CV_WINDOW_AUTOSIZE );
//     imshow( "Contours", drawing );
// }




















