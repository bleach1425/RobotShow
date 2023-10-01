*** Settings ***
Documentation   練習專案，開啟指定網站驗證所有功能
Library   SeleniumLibrary
Resource   testcase.robot


*** Test Cases ***
Init
    [Documentation]   開啟網頁進行初始化
    Open the website

Step 1
    [Documentation]   關閉彈窗後進行註冊
    Close AD

Step 2
    [Documentation]   輸入註冊資訊並完成註冊
    Register Function

