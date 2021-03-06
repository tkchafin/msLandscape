% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/msLandscape_layerPNGImages.R
\name{msLandscape_layerPNGImages}
\alias{msLandscape_layerPNGImages}
\title{Layer .png images in the current directory on top of each other using transparency to retain features of each.}
\arguments{
\item{inputDirectory}{string The path to the directory that contains the .png files to use for the composite layered image.}

\item{outputFileStem}{string The desired name of the output layered composite image, but without the file extension. The string 
'_layered.png' will be automatically appended to the outputFileStem before saving the layered composite, giving it a .png file extension.}

\item{alpha}{numeric Controls the transparency of the final layered composite image. Setting to 0 makes it fully transparent (output will dissappear). 
Setting it to 1 makes it fully opaque (note - because the images are layered using the average color, which can make all of the colors 
much lighter in the layered composite than in the source images, when alpha is 1 the layered composite will still have the appearance of transparency)}
}
\value{
None
}
\description{
This takes as input the path to a directory that contains the .png files to layer, the desired output name stem
for the layered composite image, and the desired alpha (transparency) value for the final layered composite image.
}
\details{
The layered composite image is created by averaging each of the three color channels (r,g,b) separately for each pixel
across all of the images to be layered. This has the effect of making each image to be layered equally transparent in the final
layered composite image. The amount of transparency in each image is therefore proportional to the number of images to be layered.

For the layering to work correctly, the .png files to layer must all have the same dimensions, otherwise the function will exit with an error message
and not create the layered composite image.

Although this can layer any number of .png images, the output is clearer when fewer images are used.

This function has a basic screen based on file name endings that attempts to prevent any previously layered composite images in the user-entered 
input directory from being used when creating any future layered composite images in the same directory. If desired, this screen can be circumvented
my manually removing the 'layered' suffix to the layered composite image's file name.
}
