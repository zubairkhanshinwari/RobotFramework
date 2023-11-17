*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}                                              https://dev.falaya.com/login
${browser}                                          chrome





*** Test Cases ***
Google Index
    open browser                                    ${url}  ${browser}
    Wait Until Page Contains                        ${url}
    sleep     5s
    close browser
  