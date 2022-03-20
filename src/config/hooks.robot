*** Settings ***
Documentation    Aqui estarão presentes todas as configurações
...              de Setup e Teardown. Elas podem ser usadas tanto
...              para teste e suíte
Resource         package.robot

*** Keywords ***
Abrir navegador
     Open Browser                      about:blank       ${CONFIG.BROWSER_NAME}
     Set Browser Implicit Wait         ${CONFIG.IMPLICT_WAIT}
     Go To                            ${CONFIG.URL}                                                 
     Maximize Browser Window
Fechar navegador
    Capture Page Screenshot
    Close Browser