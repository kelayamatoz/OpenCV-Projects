// References: http://docs.opencv.org/doc/tutorials/imgproc/shapedescriptors/moments/moments.html?highlight=moment#code

#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <iostream>
#include <stdio.h>
#include <stdlib.h>

using namespace cv;
using namespace std;

RNG rng(12345);

int main() {
    VideoCapture stream1(0);
    namedWindow("contours", CV_WINDOW_AUTOSIZE);
    if (!stream1.isOpened())
    {
        cout << "cannot open camera";
        return -1;
    }

    Mat rgbFrame, hsvFrame, grayFrame, cannyOutput;
    cout << "Please enter threshold for finding edge. 0 <= thresh <= 255" << endl;
    int thresh = 0;
    cin >> thresh;

    while (true) {
        stream1.read(rgbFrame);
        cvtColor(rgbFrame, hsvFrame, CV_RGB2HSV);

        // Track a red-orange-ish object
        inRange(hsvFrame, Scalar(110, 50, 50), Scalar(130, 255, 255), grayFrame);

        // morphological opening (removes small objects from the foreground)
        erode(grayFrame, grayFrame, getStructuringElement(MORPH_ELLIPSE, Size(5,5)));
        dilate(grayFrame, grayFrame, getStructuringElement(MORPH_ELLIPSE, Size(5,5)));

        // morphological closing (removes small holes from the foreground)
        dilate(grayFrame, grayFrame, getStructuringElement(MORPH_ELLIPSE, Size(5,5)));
        erode(grayFrame, grayFrame, getStructuringElement(MORPH_ELLIPSE, Size(5,5)));
        grayFrame = grayFrame;

        // getting countour from the grayFrame and keep the largest countour
        vector<vector<Point> > contours;
        vector<Vec4i> hierarchy;
        Canny(grayFrame, cannyOutput, thresh, thresh*2, 3);
        findContours(cannyOutput, contours, hierarchy, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE, Point(0, 0) );
        int largestContourArea, largestContourIndex = 0;
        int defaultContourArea = 1000; // This is a magic number that seems to work fine...
        vector<vector<Point> > newContours;
        for (int i = 0; i < contours.size(); i++)
        {
            double area = contourArea(contours[i], false);
            if (area > defaultContourArea)
                newContours.push_back(contours[i]);
        }

        // getting moments of the images
        vector<Moments> mu(newContours.size());
        for (int i = 0; i < newContours.size(); i ++)
            mu[i] = moments(newContours[i], false);

        // getting mass center
        vector<Point2f> mc(newContours.size());
        for (int i = 0; i < newContours.size(); i ++)
            mc[i] = Point2f(mu[i].m10/mu[i].m00, mu[i].m01/mu[i].m00);

        // Draw the largest contour: 
        Mat drawing = Mat::zeros(cannyOutput.size(), CV_8UC3);
        for (int i = 0; i < newContours.size(); i++)
        {
            Scalar color = Scalar(rng.uniform(0, 255), rng.uniform(0, 255), rng.uniform(0, 255));
            drawContours(drawing, newContours, i, color, 2, 8, hierarchy, 0, Point());
            circle(drawing, mc[i], 4, color, -1, 8, 0);
        }

        imshow("contours", drawing + rgbFrame);
        waitKey(30);
    }

    return 0;
}
