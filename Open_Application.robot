ls*** Settings ***
Library    AppiumLibrary

*** Variables ***
${Create_Wallet}    //android.widget.Button[@text='Create Wallet']
${Import_Wallet}    //android.widget.Button[@text='Import Wallet']
${Copy_Wallet_Address}    //android.widget.Button[@text='Copy']
${Import_Down}    //android.widget.TextView[@text='Import']
${Input_Seed_Phrase}    //android.widget.EditText[@text='SEED phrase']
${Button_Import}    //android.widget.Button[@text='Import']
#deviceName=emulator-5554 - Эмулятор
#deviceName=R9YT80EJM5E    - Мобилка
${Set_Pin}

*** Test Cases ***
Open Application
    Open Application    http://localhost:4723/wd/hub     platformName=Android    deviceName=R9YT80EJM5E    appPackage=com.bit7.defiwallet    appActivity=com.dexoo.MainActivity
    Wait Until Element Is Visible    ${Create_Wallet}
    Click Element    ${Create_Wallet}
    Wait Until Element Is Visible    ${Copy_Wallet_Address}
    Click Element    ${Copy_Wallet_Address}
    Wait Until Element Is Visible    ${Import_Down}
    Click Element    ${Import_Down}
    sleep    2
    Input Text    //android.widget.EditText[@text='SEED phrase']    aspect aerobic else excess fine expand announce dizzy shoe gym fan bench
    Sleep    2
    Click Element    ${Button_Import}
    Sleep    5
    Close All Applications

