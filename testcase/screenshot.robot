*** settings ***
Library  SeleniumLibrary






*** test cases ***
Screenshot
    open browser  https://dev.falaya.com/       chrome
    maximize browser window
    capture element screenshot    xpath://img[@alt='home_illustration']    image1.png
    Capture Page Screenshot    image2.png
    