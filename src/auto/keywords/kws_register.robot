*** Settings ***

Documentation        Aqui estarão presentes todas as keywords dos testes de pesquisa

Resource             ../../config/package.robot

*** Keywords ***
Clicar em Sign in
    Wait Until Element Is Visible       xpath=//a[@class='login']
    Click Element                       xpath=//a[@class='login']
                     
Informar um e-mail válido
    ${FAKE_EMAIL}                         FakerLibrary.Free Email
     Wait Until Element Is Visible        email_create
     Input Text                           email_create       ${FAKE_EMAIL}
Clicar em Create an account
     Wait Until Element Is Visible       id=SubmitCreate
     Click Element                       id=SubmitCreate 
Preencher dados obrigatórios
     [Arguments]    ${mr}  
    ${FAKE_POSTCODE}                        FakerLibrary.Postalcode
    ${FAKE_PHONE}                           FakerLibrary.Phone Number
       
    Wait Until Element Is Visible         ${REGISTER.form_register}
    Click Element                         ${REGISTER.title_${mr}}

    Input Text                            ${REGISTER.first_name}         Capitu
    Input Text                            ${REGISTER.last_name}          Silva
    Input Text                            ${REGISTER.password}           12345678

    Select From List By Value             ${REGISTER.select_days}        23
    Select From List By Value             ${REGISTER.select_months}      3
    Select From List By Value             ${REGISTER.select_years}       2000

    
    Input Text                            ${REGISTER.company}            Robot
    Input Text                            ${REGISTER.address1}           Fool's Street 123
    Input Text                            ${REGISTER.city}               text
    Select From List By Value             ${REGISTER.state}              3
    Input Text                            ${REGISTER.postcode}           ${FAKE_POSTCODE}
    
    
    Input Text                            ${REGISTER.other}              This is a test
    Input Text                            ${REGISTER.mobilephone}        ${FAKE_PHONE}   
    Input Text                            ${REGISTER.address_alias}      Fake Address
    
 
Submeter cadastro
    Click Element                         ${REGISTER.btn_register}
Conferir se o cadastro foi efetuado com sucesso
    Wait Until Element Is Visible        xpath=//p[@class='info-account']