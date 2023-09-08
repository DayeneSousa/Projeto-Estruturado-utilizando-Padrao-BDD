*** Settings ***
Resource    ../../resources/main.robot
Test Setup    Acessar o site e Logar



*** Variables ***

${input_nomefuncionario}       //input[@name="firstName"]     
${input_segundonome}            //input[@name="middleName"]   
${input_sobrenome}              //input[@name="lastName"]
${submit_save}                  //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/button[2]
${lista_link}                    //a[contains(.,'Employee List')]
               

*** Keywords ***

Dado que eu acesse a opção PIM, no menu
    Wait Until Element Is Visible      //span[contains(.,'PIM')]
    Click Element                     //span[contains(.,'PIM')]


E clico Add Employee 
    Wait Until Element Is Visible    //a[contains(.,'Add Employee')]
    Click Element    //a[contains(.,'Add Employee')]
    Sleep     5s
    
E adiciono 2 novos usuários
    FOR    ${i}   IN RANGE   2  
        Wait Until Element Is Visible                         //input[@name="firstName"] 
        Input Text       ${input_nomefuncionario}             Dayene
        Sleep            5s
        Input Text       ${input_segundonome}                 Vanessa
        Input Text       ${input_sobrenome}                   Sousa
        Sleep            5s
        Click Element    ${submit_save}
    
        E clico Add Employee 
    END

Então, confirmo os novos usuarios na lista 
    Click Element       ${lista_link} 
    Capture Element Screenshot      

Fechar Sistema
    Close Browser


*** Test Cases ***

TC01- Cenario de teste: Cadastro de Funcionário

    Dado que eu acesse a opção PIM, no menu
    E clico Add Employee
    E adiciono 2 novos usuários
    Então, confirmo os novos usuarios na lista
    Fechar Sistema

 
 