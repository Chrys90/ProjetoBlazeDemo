*** Settings ***
Library         SeleniumLibrary
Resource        ../Pages/flights_steps.robot
Resource        ../Pages/flight_purchase_steps.robot
Resource        ../Uteis/setup.robot
Resource        ../Pages/register_steps.robot
Suite Setup      Abrir Navegador
Suite Teardown   Fechar Navegador 

*** Variables ***

*** Keywords ***


*** Test Cases ***

Cenario 1: Realizar escolha destino da passagem aerea
    [Tags]  Cenario1       
    Given que estou na pagina de agencia de viagens
    When escolher a cidade partida
    And escolher cidade destino
    And clicar em Find Flights
    Then a pagina e direcionado para escolha da passagem aerea

Cenario 2: Realizar reserva de passagem aerea
    [Tags]  Cenario2
    Given que estou na tela de reserva de passagem aerea
    When escolher o voo da empresa United Airlines
    Then a pagina e direcionada para tela de pagamento da passagem

Cenario 3: Realizar compra da passagem aerea 
    [Tags]  Cenario3
    Given que estou na pagina de confirmacao de compra
    When preencher os campos
    And clicar em Remember
    And Clicar em purchase Flight
    Then a compra e realizada com sucesso