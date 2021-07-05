*** Settings ***
Documentation    arquivo responsavel pelas variaveis, KW e variaveis do proveto mobile testing
Library          AppiumLibrary
 
*** Variables ***
# Setup do device
${REMOTE_URL}              http://localhost:4723/wd/hub
${PLATFORM_NAME}           Android
${PLATFORM_VERSION}        9.0
${DEVICE_NAME}             pixel_4_API_30
${APP_PACKAGE}             com.google.android.youtube
${APP_ACTIVITY}            com.google.android.apps.youtube.app.WatchWhileActivity
${AUTOMATION_NAME}         UiAutomator2
 
## variaveis do aplicativo
${APP_PACKAGE}                 com.google.android.youtube
${APP_ACTIVITY}                com.google.android.apps.youtube.app.WatchWhileActivity
${AUTOMATION_NAME}             contaX
${BTN_SEARCH}                  accessibility_id=Search
${INPUT_SEARCH}                search_edit_text

*** Keywords ***
Abrir o aplicativo no celular
Open Application                    ${REMOTE_URL}  
platformName=${PLATFORM_NAME} platformVersion=${PLATFORM_VERSION}    
    ...                                 deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}  appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}
 
Buscar o canal “${nome_do_canal}"
Wait Until Element Is Visible        ${BTN_SEARCH}
Click Element                        ${BTN_SEARCH}
Wait Until Element Is Visible        ${INPUT_SEARCH}
Input Text                           ${INPUT_SEARCH}    ${nome_do_canal}
Press Keycode 66
 
Navegar por todos os botões da barra de Menus(Home, Explorar...) do YouTube
    Click Element    ${HOME_BTN}
    Click Element    ${TRENDING_BTN}
