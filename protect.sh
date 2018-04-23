#!/bin/bash
echo "Starting protection script"
echo "Press Ctrl+C to cancel"

# RUN FUNCTIONS:

$(makeBootDirectoryReadOnly)
########################################################
# DOCUMENTATION                           SHELL SCRIPT #
########################################################
# To prevent functions from running, comment it out!   #
# BEFORE:                                              #
# > $(functionNameInCamelCaseFormat)                   #
#                                                      #
# AFTER:                                               #
# > # $(functionNameInCamelCaseFormat)                 #
#                                                      #
# To make changes any file, submit a pull request!     #
########################################################

# FUNCTIONS
makeBootDirectoryReadOnly() {
  echo "Making /boot read only!"
}

disableIPv6() {
  echo "Disabling IPv6!"
}

########################################################
# DOCUMENTATION                           SHELL SCRIPT #
########################################################
# To add more functions, follow the syntax:            #
#                                                      #
# > functionNameInCamelCaseFormat() {                  #
# >   #function code goes here                         #
# > }                                                  #
#                                                      #
# The functions within the README.md will be added.    #
# To make changes any file, submit a pull request!     #
########################################################
