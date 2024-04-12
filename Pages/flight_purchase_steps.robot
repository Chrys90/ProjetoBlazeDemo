*** Settings ***
Library    SeleniumLibrary
Resource   flight_purchase_page.robot

*** Variables ***

*** Keywords ***

que estou na pagina de confirmacao de compra
    Go To    https://blazedemo.com/purchase.php
    Capture Page Screenshot

preencher os campos 
    Log To Console    vai preencher campos
    Preencher campo nome
    Log To Console    preencheu o campo nome
    Preencher campo endereco
    Log To Console    preencheu o campo endereco
    Preencher campo cidade  
    Log To Console    preencheu o campo cidade
    Preencher campo estado
    Log To Console    preencheu o campo estado
    Preencher campo cep
    Capture Page Screenshot
    Log To Console    preencheu o campo cep
    Selecionar cartao de credito
    Log To Console    seleciou o cartao de credito
    Preencher numero do cartao de credito
    Log To Console    preencheu o numero do cartao de credito
    Preencher mes do cartao de credito
    Log To Console    preencheu o mes do cartao de credito
    Preencher ano do cartao de credito
    Log To Console    preencheu o ano do cartao de credito
    Preencher nome do cartao de credito
    Log to Console    preencheu o nome do cartao de credito
    Capture Page Screenshot

clicar em Remember 
    Log To Console    vai clicar em remember me
    Clicar remember me
    Log To Console    clicou em remember me
    Capture Page Screenshot

clicar em Purchase Flight 
    Log To Console    vai clicar em  purchase flight
    Clicar em purchase
    Log To Console    clicou em purchase flight

a compra e realizada com sucesso
    Log To Console    vai realizar a confirmacao da compra
    Validar confirmacao da compra
    Log To Console    validou a compra
    Capture Page Screenshot