*** Settings ***
Documentation                Aqui estarão todos os elementos mapeados da tela home


*** Variables ***
${URL}               http://automationpractice.com/index.php
&{HOME_PAGE}    
...            title=My Store
...            input_busca=id=search_query_top
...            btn_buscar= xpath=//*[@class= "btn btn-default button-search"]

