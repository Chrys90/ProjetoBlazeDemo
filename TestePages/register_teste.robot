*** Settings ***
Library         SeleniumLibrary
Resource        ../Pages/register_steps.robot 
Resource        ../Uteis/setup.robot
Test Setup       Abrir Navegador 
Test Teardown    Fechar Navegador   

*** Variables ***


*** Keywords *** 


*** Test Cases ***
Cenario 1: Realizar cadastro de cliente 
    Given que estou na pagina de cadastro
    When preencher os campos na tela de cadastro
    And clicar em register
    Then cliente e cadastrado com sucesso  


