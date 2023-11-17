*** settings ***
Library  SeleniumLibrary




*** test cases ***
Testgettext
    open browser  https://dev.falaya.com/       chrome
    maximize browser window
    ${data}    get text    xpath://p[contains(text(),'Superior Support | Revolutionary Technology | Unbe')]
    log to console      ${data}
