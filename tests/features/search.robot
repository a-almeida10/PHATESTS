
*** Settings ***
Documentation                 Aqui neste arquivo estão presentes todos
...                           os testes automatizados com suas keywords referentes a pesquisa.

Resource                      ../../src/config/package.robot
Resource                     ../../src/auto/keywords/kws_search.robot

Test Setup                    Abrir navegador 
Test Teardown                 Fechar navegador



*** Test Cases ***
    
Caso de teste 01: Pesquisar produto existente
    [Tags]                Pesquisa
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "Blouse" no campo de pesquisa 
    Clicar no botão Pesquisar
    Conferir se o produto foi listado no site

Caso de teste 02: Pesquisar produto não existente
    [Tags]                  Pesquisa2
     Acessar a página home do site Automation Practice
     Digitar o nome do produto "itemNãoExistente" no campo de pesquisa
     Clicar no botão Pesquisar
     Conferir mensagem "No results were found for your search"

Caso de teste 03: Listar produtos
    [Tags]                   LISTAR 
    Acessar a página home do site Automation Practice
    Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
    Clicar na categoria "Summer Dresses"
    Conferir se os produtos da sub-categoria "Summer Dresses" foram mostradas na página

