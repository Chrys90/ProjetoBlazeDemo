*** Settings ***
Library    SeleniumLibrary
Resource   register_page.robot 



*** Variables ***

*** Keywords ***
que estou na pagina de cadastro 
    Go To    https://blazedemo.com/register
    Validar pagina inicial de cadastro
    Capture Page Screenshot

preencher os campos na tela de cadastro
     Log To Console    vai preencher campos    
     Preencher campo name 
     Log To Console    preencheu campo Name 
     Preencher campo company
     Log To Console    preencheu campo Company
     Preencher campo email
     Log To Console    preencheu campo Email
     Cadastrar password
     Log To Console    cadastrou password
     Capture Page Screenshot

clicar em register 
    Log To Console    vai clicar em register
    Clicar botao register
    Log To Console    clicou em register

cliente e cadastrado com sucesso 
     Log To Console    vai validar confirmacao de cadastro
     Validar Cadastro usuario         
     Log To Console    cadastro validado 
     Capture Page Screenshot