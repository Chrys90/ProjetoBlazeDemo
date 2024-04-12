*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Resource   flight_purchase_locator.robot

*** Variables ***
${texto_confirmacao_compra}    Thank you for your purchase today!

*** Keywords ***

Preencher campo nome 
    ${nome_aleatorio}                          FakerLibrary.Name
    Input Text    ${Input_Name}                ${nome_aleatorio}

Preencher campo endereco 
    Input Text    ${Input_Address}    teste

Preencher campo cidade 
    Click Element    ${Input_City}
    ${cidade_aleatorio}                        FakerLibrary.City
    Input Text    ${Input_City}                ${cidade_aleatorio}

Preencher campo estado 
    ${estado_aleatorio}                        FakerLibrary.State
    Input Text    ${Input_State}               ${estado_aleatorio}

Preencher campo cep
    ${cep_aleatorio}                          FakerLibrary.Zipcode
    Input Text    ${Input_Zipcode}             ${cep_aleatorio}

Selecionar cartao de credito 
    Select From List By Value    ${Select_CardType}    amex

Preencher numero do cartao de credito 
    ${cartao_aleatorio}                        FakerLibrary.Credit Card Number
    Input Text    ${Input_CreditCard_Number}   ${cartao_aleatorio} 

Preencher mes do cartao de credito 
    ${mes_aleatorio}                           FakerLibrary.Month
    Input Text    ${Input_CreditCard_Month}    ${mes_aleatorio}

Preencher ano do cartao de credito 
    ${ano_aleatorio}                           FakerLibrary.Year
    Input Text    ${Input_CreditCard_Year}     ${ano_aleatorio}    

Preencher nome do cartao de credito 
    ${nome_cartao_aleatorio}                   FakerLibrary.Name Male
    Input Text    ${Input_Name_Card}           ${nome_cartao_aleatorio}

Clicar remember me 
    Click Element    ${Click_Remember}

Clicar em purchase  
    Click Element    ${Click_Purchase_Flight}

Validar confirmacao da compra 
     ${texto_atual}  Get Text    ${Purchase_Title}
     Should Be Equal As Strings   ${texto_atual}     ${texto_confirmacao_compra}   