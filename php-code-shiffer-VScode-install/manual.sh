# Install composer globally 
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer

# Install PHP_CodeSniffer
composer global config allow-plugins.dealerdirect/phpcodesniffer-composer-installer true
composer global require "squizlabs/php_codesniffer=*"
composer global require phpcsstandards/phpcsutils:"^1.0"

# Path to PHP_CodeSniffer
# /home/<user>/.config/composer/vendor/bin/phpcs
# /home/<user>/.config/composer/vendor/bin/phpcbf


# Install WordPress Coding Standards
composer global config allow-plugins.dealerdirect/phpcodesniffer-composer-installer true
composer global require --dev wp-coding-standards/wpcs:"^3.0"

# Set the installed path to the PHP_CodeSniffer - for WordPress Coding Standards
/home/<user>/.config/composer/vendor/bin/phpcs --config-set installed_paths /home/<user>/.config/composer/vendor/wp-coding-standards/wpcs

# Check the installed paths - Must be in output
/home/<user>/.config/composer/vendor/bin/phpcs -i


# Install extension for Visual Studio Code from link
#https://marketplace.visualstudio.com/items?itemName=ValeryanM.vscode-phpsab

# Add to settings.json config
# "[php]": {
#     "editor.defaultFormatter": "valeryanm.vscode-phpsab",
#     "editor.formatOnSave": true
# },
# "phpsab.fixerEnable": true,
# "phpsab.snifferEnable": true,
# "phpsab.executablePathCS": "/home/tarik762/.config/composer/vendor/bin/phpsc",
# "phpsab.executablePathCBF": "/home/tarik762/.config/composer/vendor/bin/phpcbf",
# "phpsab.standard": "PSR2",
# "phpsab.snifferMode": "onType"

# For local project settings add to .vscode/settings.json
# {
#     "phpsab.standard": "WordPress",
# }
