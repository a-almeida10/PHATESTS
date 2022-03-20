*** Settings ***
Documentation        Aqui estarão presentes todos os exrcícios da aula de automação.
...                  Posso continuar escrevendo aqui.


*** Variables ***
&{PESSOA}    nome=Ághata
...          sobrenome=Almeida
...          endereço=Rua dos Bobos, nº 0
...          carro=Fusca Azul    
...          data_nascimento=22/05/1993

@{FRUTAS}    graviola
...          pitaya
...          caju
...          carambola
...          jaca

*** Test Cases ***
Caso 01- Imprimindo no console as informações da pessoa
    Log To Console       \n${PESSOA.nome}
    Log To Console       ${PESSOA.sobrenome}
    Log To Console       ${PESSOA.endereço}
    Log To Console       ${PESSOA.carro}
    Log To Console       ${PESSOA.data_nascimento}

Caso 02 Imprimindo no console as frutas
    [Tags]               LISTA
    Log To Console       \n${FRUTAS[0]}
    Log To Console       ${FRUTAS[1]}
    Log To Console       ${FRUTAS[2]}
    Log To Console       ${FRUTAS[3]}
    Log To Console       ${FRUTAS[4]}

Caso 03 - Soma de dois números
    [Tags]                SOMA
    ${RESULTADO}    Somar dois números    1000    993
    Log To Console    ${RESULTADO}

Caso 04 - Subtrair dois números
    [Tags]                       SUBTRAIR
    Subtrair dois números        993   1000

Caso 05 - Multipicar dois números
    [Tags]                        MULTIPLICAR
    Multipicar os números "5" e "10" 

Caso 06 - Criar email
    [Tags]            EMAIL 
    Novo email    aghata    almeida    28
Caso 07 - Contador
    [Tags]        CONTAR
    Contar de 0 a 9

Caso 08 - Imprimir frutas
    [Tags]        FRUTAS
    Imprimir lista de frutas

Caso 09 -Imprimir frase e números
    [Tags]      POSICAO      
    Imprimir posicao de 0 a 10
    

Caso 10 - Imprimir o nome de 5 países
    [Tags]       PAISES
    Imprimir paises 

Caso 11 - Decisões
    [Tags]        IF
    Tomar Decisões
    





*** Keywords ***
Somar dois números
    [Arguments]    ${NUM_A}    ${NUM_B}
    ${SOMA}        Evaluate    ${NUM_A}+${NUM_B}
    [Return]       ${SOMA} 
    

Subtrair dois números
    [Arguments]    ${NUM_A}    ${NUM_B}
    ${SUBTRAIR}        Evaluate    ${NUM_A}-${NUM_B}
    [Return]       ${SUBTRAIR} 
    Log To Console   ${SUBTRAIR}

Multipicar os números "${NUM_A}" e "${NUM_B}" 
        ${RESULTADO}    Evaluate    ${NUM_A}*${NUM_B}
        [Return]                    ${RESULTADO}
        Log To Console              ${RESULTADO}

Novo email
    [Arguments]        ${NAME}    ${LAST_NAME}    ${AGE}
    Log to console     \n${NAME}_${LAST_NAME}_${AGE}@robot.com
    
Novo email com CONVERT TO STRING
     [Arguments]        ${NAME}    ${LAST_NAME}    ${AGE}
     ${EMAIL}    Convert To String    "${NAME}_${LAST_NAME}_${AGE}@robot.com"
     Log To Console    ${EMAIL}  

Contar de 0 a 9
    FOR    ${counter}    IN RANGE    0    9   
        Log To Console      ${counter}
        
    END

Imprimir lista de frutas
    @{FRUTAS}    Create List    graviola    coco     goiaba    pêssego
    FOR    ${frutas}    IN    @{FRUTAS}
        Log To Console      ${frutas}
    END

Imprimir posicao de 0 a 10
    FOR    ${counter}    IN RANGE    0    11   
    Log To Console    Estou no número:${counter}
    
    END    

Imprimir paises
    @{PAISES}    Create List    Italy    Russia    France    England    Portugal        
    FOR    ${pais}    IN    @{PAISES}
        Log To Console    I've been to: ${pais}
        
    END

Tomar Decisões
      FOR    ${counter}    IN RANGE    0    11 
          IF    ${counter} == 5 or ${counter} == 8 
     Log To Console    Estou no número:${counter}
        END
    
    END  

     