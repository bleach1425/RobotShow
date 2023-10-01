*** Settings ***
Variables   var.py
Library   pyFunction.py

*** Keywords ***
Open the website
    [Documentation]   開啟網頁以及初始化設定
    Open Browser   ${URL}   chrome
    maximize browser window
    Set Selenium Implicit Wait   10 seconds 

Close AD
    [Documentation]   關閉彈窗
    # 18+
    Wait Until Element Is Enabled   ${FIND18}
    Click Element   ${FIND18}
    # AD1
    Wait Until Element Is Enabled   ${AD}
    Click Element   ${AD}

Register Function
    [Documentation]   進行註冊全流程
    # Step 1: Click Register
    Wait Until Element Is Enabled   ${REGISTER_B}
    Click Element  ${REGISTER_B}
    # Step 2: Choice Register Method
    Wait Until Element Is Enabled   ${REGISTER_ACCOUNT}
    Click Element   ${REGISTER_ACCOUNT}
    # Step 3: Accept user terms
    Wait Until Element Is Enabled   ${USER_TERMS}
    Click Element   ${USER_TERMS}
    # Step 4: Click Next Step
    Wait Until Element Is Enabled   ${NEXT_STEP}
    Click Element   ${NEXT_STEP}

    # Step 5: Input Register Information
    ${FIELD}=  Get WebElements   ${ALLFIELD}
    ## Account ##
    Input Text   ${FIELD[0]}   ${AC}
    ## PassWord & Check PassWord ##
    Input Text   ${FIELD[1]}   ${PS}
    Input Text   ${FIELD[2]}   ${PS_CHECK}
    ## Email ##
    Input Text   ${FIELD[3]}   ${EMAIL}
    ## Send Email ##
    Wait Until Element Is Enabled   ${SENDMAIL}
    Click Element   ${SENDMAIL}

    # Final: Verify CapCha & Finish Register

    ## Input CaptCha ##
    ${CaptCha}=   Get CaptCha
    Input Text   ${FIELD[4]}   ${CaptCha}

    ## Sure ##
    ${FIND_SURE}=   Get WebElements   ${SURE}
    Click Element   ${FIND_SURE[-1]}

    ## Close Wellcome Message##
    Click Element   ${WELLCOME}



    



