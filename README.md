# Face Detection Using Viola-Jones Algorithm 

Paul Viola Jones & Michael Jones in year 2001 presented a method. Which was the first approach to give better rates in object detection. It is also used in object detection in real time system but largely applied to face detection area due to its high detection rate and determining face and non face as compared other algorithm. Now a days Viola Jones is a very popular and effective technique. Which require very less computation time with very high accuracy. It is fast and robust algorithm used in face detection. In MATLAB Computer Vision Toolbox contains several object detector functions Viola Jones algorithm is one of them.

## How will we use it?

For face detection, first of all, related objects are defined.

```matlab
faceDetection = vision.CascadeObjectDetector;
faceDetection.MergeThreshold = 10;
```
To detect faces, the corresponding image file is read. Detected faces are drawn and displayed on the screen.

```matlab
currentImage = imread('./images/Test1.jpg');
boundingBoxObject = step(faceDetection,currentImage);

resultImage = insertObjectAnnotation(currentImage,'rectangle',boundingBoxObject,'Face');
figure, imshow(resultImage);
```

## Sample Screenshots

![App Screenshot](https://github.com/akinbicer/face-detection-using-viola-jones-algorithm/raw/main/images/Test1-Output.jpg)

## Issues, Feature Requests or Support
Please use the [New Issue](https://github.com/akinbicer/face-detection-using-viola-jones-algorithm/issues/new) button to submit issues, feature requests or support issues directly to me. You can also send an e-mail to akin.bicer@outlook.com.tr.
