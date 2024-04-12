*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        
${Browser}                chrome

*** Keywords ***
Abrir Navegador
    Open Browser  ${URL}   ${Browser}     
    Maximize Browser Window
    Set Browser Implicit Wait    5
        
Fechar Navegador    
    Close Browser


