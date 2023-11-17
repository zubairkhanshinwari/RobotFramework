*** settings ***
Library  SeleniumLibrary
Library  OperatingSystem
Library  String




*** variables ***
${url}  https://dev.falaya.com/login
${browser}   chrome


*** test cases ***
VisitLink
   Openlink

LoginUser
    LoginUser


*** keywords ***
Openlink
    Open Browser    ${url}  ${browser}
    Maximize Browser Window


LoginUser
    ${input_text1}  set variable    xpath://*[@id="email"]
    Element Should Be Enabled    ${input_text1}
    input text    ${input_text1}    zubairkhanlkl8338@gmail.com
    ${input_text2}  set variable    xpath://*[@id="password"]
    Element Should Be Enabled    ${input_text2}
    input text    ${input_text2}    123abc
    click button    xpath://*[@id="login"]
    Set Selenium Timeout    10s





