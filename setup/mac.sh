# First step: Install brew

# Default bash is very old
brew install bash

# Add brew bash to allowed shells: echo /usr/local/bin/bash >> /etc/shells (<-- seems to not be needed?)
# Set current user shell: chsh -s /usr/local/bin/bash

brew install bash-completion

# Reminder: Completion does not work with default git
brew install git

# Other packages
brew install atool
