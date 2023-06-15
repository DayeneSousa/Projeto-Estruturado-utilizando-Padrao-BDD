*** Settings ***
Resource    ../main.robot


*** Keywords ***

Acessar o site e Logar
   
    Dado que acesse o RangerRH
    E Realize o Login
    Então, a pagina inicial de Dashboard sera exibida