*** Settings ***
Resource    ../main.robot


*** Variables ***
#Elementos da pagina de login
${logar}
${input_nome}    name:username
${input_senha}   name:password
${input_botão}   //button[contains(.,'Login')] 
${input_nomefuncionario}    //input[@name="firstName"]     
${input_segundonome}    //input[@name="middleName"]   
${input_sobrenome}    //input[@name="lastName"]
${submit_save}    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/button[2]


