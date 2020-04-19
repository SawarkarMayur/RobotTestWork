# RobotTestWork
Sample tests works for Robot and Selenium tests

Similar structure can be utilize for Mobile Automation using Appium

Requirements
Python 2.7 or 3
chromedriver.exe
geckodriver.exe

Install Robot Framework either using pip or settings in Pycharm
pip install robotframework==3.1.2
pip install robotframework-selenium2library==3.0.0
pip install robotframework-pabot==1.2.1

Execution Commands:
To run in Sequence 
robot -v "browser:firefox" -i home -d Results  Scripts/

To run in parallel
pabot --processes 3 --variable "browser:firefox"  --outputDir zParallelresult  Scripts/

variable browser is optional.

For more command line options follow
https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#all-command-line-options 
