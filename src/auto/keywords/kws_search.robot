*** Settings ***

Documentation        Aqui estarão presentes todas as keywords dos testes de pesquisa

Resource             ../../config/package.robot

*** Keywords ***
Acessar a página home do site Automation Practice
    Go To                             ${URL} 
    Maximize Browser Window
    Title Should Be                   ${HOME_PAGE.title}    
    Wait Until Element Is Visible     ${HOME_PAGE.input_busca}      10
Digitar o nome do produto "${PRODUTO}" no campo de pesquisa 
      Input Text                        ${HOME_PAGE.input_busca}    ${PRODUTO}
      Wait Until Element Is Visible    ${HOME_PAGE.btn_buscar}
Clicar no botão Pesquisar
     Wait Until Element Is Visible     ${HOME_PAGE.btn_buscar}  
     Click Element                     ${HOME_PAGE.btn_buscar}
     Wait Until Element Is Visible     id=center_column   
     Title Should Be                   ${PROUCT_PAGE.title_search}
Conferir se o produto foi listado no site
    Wait Until Element Is Visible     ${PROUCT_PAGE.img_blouse}
    Page Should Contain Image         ${PROUCT_PAGE.img_blouse}
    Capture Page Screenshot

Conferir mensagem "${MENSAGEM}"
    Wait Until Page Contains    ${MENSAGEM}

Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
    Wait Until Element Is Visible    xpath=//a[contains(@title, 'Women')] 
    Mouse Over                       xpath=//a[contains(@title, 'Women')] 
Clicar na categoria "Summer Dresses"
    Mouse Down On Link                   xpath=//a[contains(@title, 'Summer Dresses')]
    Click Element                        xpath=//a[contains(@title, 'Summer Dresses')]
Conferir se os produtos da sub-categoria "Summer Dresses" foram mostradas na página
    Page Should Contain Image            xpath=//img[contains(@title, 'Printed Summer Dress')]    