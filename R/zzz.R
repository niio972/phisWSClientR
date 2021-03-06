#-------------------------------------------------------------------------------
# Program: zzz.R
# Objective:
# Author: I. Sanchez
# Creation: 19/03/2018
# Update: 03/09/2019 A. Charleroy
#-------------------------------------------------------------------------------

## title defines a public configuration for the web service access
##
## description defines a public configuration for the web service access
## param libname character
## param pkgname character
## examples
## # not run
## keywords internal
#   configWS <- list(BASE_PATH = "http://147.100.179.156:8080/phenomeapi/resources/",
#                    TOKEN = "token",
#                    USERNAME = "",
#                    PASSWORD = "",
#                    TOKEN_VALID = FALSE,
#                    USER_VALID = FALSE,
#                    WS_VERSION = 0,
#                    BRAPITOKEN = "brapi/v1/token",
#                    DEFAULT_PAGE = 0,
#                    DEFAULT_PAGESIZE = 100)

# Define an environment for the phenomeapi configuration
configWS<-new.env(emptyenv())

.onLoad <- function(libname, pkgname){
  # internal variables
  assign("BASE_PATH","", configWS)
  assign("USERNAME","", configWS)
  assign("PASSWORD","", configWS)
  assign("TOKEN_VALID", FALSE,configWS)
  assign("USER_VALID", FALSE,configWS)
  assign("WS_VERSION", 0,configWS)
  assign("TOKEN_VALUE", NULL, configWS)
  assign("TOKEN_CREATED_AT", "", configWS)
  assign("TOKEN_VALID_TIME",0 ,configWS)
  assign("RECONNECT_ON_DISCONNECTION", TRUE)
  
  assign("BRAPITOKEN", "brapi/v1/token", configWS)
  assign("TOKEN", "token", configWS)
  
  assign("DEFAULT_PAGE", 0, configWS)
  assign("DEFAULT_PAGESIZE", 100, configWS)
  
  debugLevel <-list(CRITICAL = 50, ERROR = 40,
                    WARNING = 30, INFO = 20,
                    DEBUG = 10, NOTSET = 0)
  assign("DEBUG_LEVEL", debugLevel, configWS)
}
