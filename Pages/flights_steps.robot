*** Settings ***
Library   SeleniumLibrary
Resource  flights_page.robot

*** Variables *** 

*** Keywords *** 

que estou na pagina de agencia de viagens 
     Go to  https://blazedemo.com/index.php   
     Validar pagina inicial
     Capture Page Screenshot

escolher a cidade partida 
     Escolher cidade de partida

escolher cidade destino
     Escolher cidade de destino
     Capture Page Screenshot

clicar em Find Flights 
    Clicar botao Find Flights

a pagina e direcionado para escolha da passagem aerea 
    Validar pagina de reserva passagem aerea
    Capture Page Screenshot

que estou na tela de reserva de passagem aerea    
    Validar pagina de reserva passagem aerea
escolher o voo da empresa United Airlines
     Escolher passagem aerea para reserva

a pagina e direcionada para tela de pagamento da passagem 
     Validar pagina de pagamento 
     Capture Page Screenshot    