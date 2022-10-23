% Author: Akin BICER
% Subject: Face Detection using Viola Jones Algorithm 

%For face detection, first of all, related objects are defined.
faceDetection = vision.CascadeObjectDetector;
faceDetection.MergeThreshold = 10;

% To detect faces, the corresponding image file is read.
currentImage = imread('./images/Test1.jpg');

% Returns "Bounding Box" values based on number of objects
boundingBoxObject = step(faceDetection,currentImage);

% Detected faces are drawn and displayed on the screen.
resultImage = insertObjectAnnotation(currentImage,'rectangle',boundingBoxObject,'Face');
figure, imshow(resultImage);