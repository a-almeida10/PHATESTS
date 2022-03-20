*** Settings ***
Documentation        Este aqui é o nosso gerenciador de dependências.

################################################
#                 Libraries                    #
################################################
Library              SeleniumLibrary
Library              FakerLibrary
Library              DebugLibrary


###############################################
#                  Keywords                   #
###############################################
Resource            ../../src/auto/keywords/kws_search.robot
Resource           ../../src/auto/keywords/kws_register.robot

#                  Pages                      #
###############################################
Resource            ../auto/pages/page_home.robot
Resource            ../auto/pages/page_search.robot
Resource            ../auto/pages/page_register.robot

###############################################
#                  Hooks                     #
###############################################
Resource              hooks.robot