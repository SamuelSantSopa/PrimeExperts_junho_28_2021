*** Settings ***
Documentation     Meu teste de variaveis

***variables***
${MENSSAGEM}    Hello World!

*** Test Cases ***
Meu teste de impressao de mensagem no terminal
    Logar no terminal uma mensagem

*** Keywords ***
Logar no terminal uma mensagem 
    Log To Console    ${MENSSAGEM} 