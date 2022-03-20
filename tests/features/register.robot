*** Settings ***
Documentation                 Aqui neste arquivo estão presentes todos
...                           os testes automatizados com suas keywords referentes ao cadastro.

Resource                      ../../src/config/package.robot
Resource                      ../../src/auto/keywords/kws_register.robot
Resource    ../../src/auto/keywords/kws_register.robot

Test Setup                    Abrir navegador 
Test Teardown                 Fechar navegador

*** Test Cases ***
Caso de teste 04: Adicionar cliente
    [Tags]            REGISTRO    CADASTRO
    Acessar a página home do site Automation Practice
    Clicar em Sign in
    Informar um e-mail válido
    Clicar em Create an account
    Preencher dados obrigatórios    mrs
    Submeter cadastro
    Conferir se o cadastro foi efetuado com sucesso


Caso de teste 05: Adicionar cliente
    [Tags]            REGISTRO    CADASTRO