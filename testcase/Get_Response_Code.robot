*** Settings ***
Library     SeleniumLibrary
Library     robotframework-requests


*** Test Cases ***

Quick Get Request Test
    ${response}=    GET Request    https://www.google.com
    Log    ${response.text}
    Should Be Equal As Numbers    200    ${response.status_code}

Quick Get Request With Parameters Test
    ${response}=    GET Request    https://www.google.com/search    params=query=ciao
    Log    ${response.text}
    Should Be Equal As Numbers    200    ${response.status_code}

Quick Get A JSON Body Test
    ${response}=    GET Request    https://jsonplaceholder.typicode.com/posts/1
    Log    ${response.text}
    Should Be Equal As Strings    1    ${response.json()}[id]

*** Keywords ***
GET Request
    [Arguments]    ${url}    ${params}=${None}    ${headers}=${None}    ${expected_status}=200
    ${response}=    Get Request    ${url}    params=${params}    headers=${headers}
    Should Be Equal As Numbers    ${expected_status}    ${response.status_code}
    [Return]    ${response}
