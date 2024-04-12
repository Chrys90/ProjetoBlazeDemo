*** Settings ***
Library      SeleniumLibrary
Resource     flights_locator.robot 

*** Variables ***
${texto_pagina_inicial}         Welcome to the Simple Travel Agency!
${texto_confirmacao_reserva}    Your flight from TLV to SFO has been reserved.
${texto_passagem_aerea}         Flights from São Paolo to New York:

*** Keywords ***

Validar pagina inicial 
     ${texto_atual}  Get Text    ${Page_Title}
    Should Be Equal As Strings   ${texto_atual}         ${texto_pagina_inicial} 
    
Escolher cidade de partida
    Select From List By Value    ${Select_Departure_City}    São Paolo

Escolher cidade de destino 
    Select From List By Value    ${Select_Destination_City}    New York

Clicar botao Find Flights   
    Click Element                ${Find_Flights_Button}

Escolher passagem aerea para reserva
    Click Element                ${Airline_Choose_Button}

Validar pagina de pagamento 
     ${texto_atual}  Get Text    ${Reservation_Tittle}
    Should Be Equal As Strings   ${texto_atual}        ${texto_confirmacao_reserva}

Validar pagina de reserva passagem aerea 
    ${texto_atual}  Get Text    ${Reservation_Passage_Title}
    Should Be Equal As Strings   ${texto_atual}        ${texto_passagem_aerea}  