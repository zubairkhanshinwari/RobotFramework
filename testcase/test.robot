*** settings ***
Library  SeleniumLibrary



*** variables ***
${url}  https://dev.falaya.com/login
${browser}   chrome


*** test cases ***
VisitLink
   insidegoogle
LoginUser
    LoginUser


*** keywords ***
insidegoogle
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
   Title Should Be    be Login - Falaya - Real Estate Redined
    Sleep    3s

LoginUser
    input text    xpath://*[@id="email"]    zubairknlkl83387@il.com
    input text    xpath://*[@id="password"]    127876
    click button    xpath://*[@id="login"]
    sleep    4s
