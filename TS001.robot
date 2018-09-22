*** Settings ***
Library           ExcelRobot
Library           Password.py

*** Test Cases ***
TC001
    Open Excel    Data.xls
    ${x} =    Get Row Count    Login
    ${usr} =    Read Cell Data    Login    0    0
    ${pwd} =    Read Cell Data    Login    1    0
    @{row} =    Get Row Values    Login    0
    @{data1} =    Set Variable    @{row}[0]
    ${user} =    Set Variable    @{data1}[1]
    : FOR    ${k}    IN RANGE    ${x}
    \    Run Keyword    Log    ${k}

TC002
    @{x} =    Encrypt    Welcome@123!#
    ${pwd} =    Evaluate    Password.decrypt("gAAAAABbpddKrGPF8sGKb6CjKzQY2ZgyqLDM1oBOgmZKU_UJNXwUIF9968w8OiR1VoU9kKIbYuCR4wcwbsiPaPdStJmTlXCXaA==","5tXtyWKnKHD5Q_0nVtqB21BpKReftPi9IPNfKIHr1B8=")     Password
