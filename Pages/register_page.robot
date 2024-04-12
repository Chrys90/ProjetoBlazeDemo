*** Settings ***
Library      SeleniumLibrary
Library      FakerLibrary
Resource     register_locator.robot


*** Variables ***

*** Keywords ***
Preencher campo name 
    ${nome_aleatorio}                          FakerLibrary.Name
    Input Text    ${Input_Name}                ${nome_aleatorio}      

Preencher campo company 
    ${company_aleatorio}                       FakerLibrary.Company
    Input Text    ${Input_Company}             ${company_aleatorio}

Preencher campo email 
    ${email_aleatorio}                         FakerLibrary.Email
    Input Text    ${Input_Email}               ${email_aleatorio}  

Cadastrar password 
    ${senha_aleatorio}                         FakerLibrary.Password  
    Input Text    ${Input_Password}            ${senha_aleatorio}
    Input Text    ${Input_Confirm_Password}    ${senha_aleatorio}

Clicar botao register 
    Click Element    ${Button_Register}

Validar Cadastro usuario 
    ${texto_atual}  Get Text     ${Confirmacao_Cadastro}
    Should Be Equal As Strings   ${texto_atual}     Page Expired   

Validar pagina inicial de cadastro
     ${texto_atual}  Get Text    ${Titulo_Pagina}
    Should Be Equal As Strings   ${texto_atual}     Register   