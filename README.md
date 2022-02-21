# picture-formatter

### Table of Contents

1. [Introduction](#introduction)
2. [Setup](#setup)
3. [Running the Application](#running-the-application)


----


# Introduction
This repository is a ruby script that helps format a string of photo names.

## Problem Statement
Mike is an avid traveller. He has visited a lot of cities over many years. Whenever he visits a city, he takes a few photos and saves them on his computer. Each photo has a name with an extension ("jpg", "png' or "jpeg") and there is a record of the name of the city where the photo was taken and the time and date the photo; for example: "photo.jpg, Krakow, 2013-09-05 14:08:15". Note that, in some rare cases, photos from different locations may share the time and date, due to timezone differences. Mike notices that his way of filing photos on his computer has become a mess. He wants to reorganize the photos.

First he decides to group the photos by city, then, within each such group, sort the photos by the time they were taken and finally assign consecutive natural numbers to the photos, starting from 1. Afterwards he intends to rename all the photos. The new name of each photo should begin with the name of the city followed by the number already assigned to that photo. The number of every photo in each group should have the same length (equal to the length of the largest number in this group); thus, Mike needs to add some leading zeros to the numbers. The new name of the photo should end with the extension, which should remain the same. Your task is to help Mike by finding the new name of each photo. Each of Mike's photos has the format: '<<photoname>>.<<extension>>, <<city_name>>, yyyy-mm-dd, hh:mm:ss", where '<<photo_name>>', '<<extension>>' and, '<<city_name>>' consist only of letters of the English alphabet.

## Input

```
"photo.jpg, Krakow, 2013-09-05 14:08:15
Mike.png, London, 2015-06-20 15:13:22
myFriends.png, Krakow, 2013-09-05 14:07:13
Eiffel.jpg, Florianopolis, 2015-07-23 08:03:02
pisatower.jpg, Florianopolis, 2015-07-22 23:59:59
BOB.jpg, London, 2015-08-05 00:02:03
notredame.png, Florianopolis, 2015-09-01 12:00:00
me.jpg, Krakow, 2013-09-06 15:40:22
a.png, Krakow, 2016-02-13 13:33:50
b.jpg, Krakow, 2016-01-02 15:12:22
c.jpg, Krakow, 2016-01-02 14:34:30
d.jpg, Krakow, 2016-01-02 15:15:01
e.png, Krakow, 2016-01-02 09:49:09
f.png, Krakow, 2016-01-02 10:55:32
g.jpg, Krakow, 2016-02-29 22:13:11"
```
## Output
```
Krakow02.jpg
London1.png
Krakow01.png
Florianopolis2.jpg
Florianopolis1.jpg
London2.jpg
Florianopolis3.png
Krakow03.jpg
Krakow09.png
Krakow07.jpg
Krakow06.jpg
Krakow08.jpg
Krakow04.png
Krakow05.png
Krakow10.jpg
```

----


# Setup
Here's how to test the application on your local computer for development:


### Installation
Follow these instructions to setup your local development environment:

1. Clone the project and `cd` into the project directory

2. Run `bundle install` to install RSpec dependencies.



----


# Running the Application
There are three input files in the `lib/assests` folder that serves as the shopping baskets for testing the application

1. Run `rspec spec` to run all the tests for the application.
