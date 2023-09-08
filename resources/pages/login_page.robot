*** Settings ***
Resource    ../main.robot

*** Variables ***
#Elementos da pagina de login
${input_nome}    name:username
${input_senha}   name:password
${input_botão}   //button[contains(.,'Login')] 
${input_nomefuncionario}    //input[@name="firstName"]     
${input_segundonome}    //input[@name="middleName"]   
${input_sobrenome}    //input[@name="lastName"]
${submit_save}    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/button[2]

*** Keywords ***
Dado que acesse o RangerRH
    Open Browser   ${URL}    ${browser}

E Realize o Login
    Sleep    2s
    Input Text      ${input_nome}      Admin           
    Input Text      ${input_senha}     admin123
    Wait Until Element Is Visible       //button[contains(.,'Login')] 
    Click Element                       ${input_botão}
    Sleep    2s

Então, a pagina inicial de Dashboard sera exibida
    Maximize Browser Window
