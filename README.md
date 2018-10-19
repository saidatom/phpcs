# PHP Code beautifier for docker

###How to use this with `Sublime Text 3` on `Ubuntu` or `OSX`?

**To use this you need docker installed.**


1. Install this sublime text plugin
https://packagecontrol.io/packages/Phpcs
https://packagecontrol.io/packages/PHP%20Codebeautifier

2. clone this repo
```bash
git clone https://github.com/saidatom/phpcs.git
cd phpcs
sudo cp phpcs.sh /usr/local/bin/phpcs
sudo cp phpcbf.sh /usr/local/bin/phpcbf
sudo cp phpmd.sh /usr/local/bin/phpmd
sudo cp php-cs-fixer.sh /usr/local/bin/php-cs-fixer
```
3. Open `Preferences > Package Settings > PHP Code Sniffer > Settings - User`
4. Copy these settings

```json
{
	"phpcs_executable_path": "/usr/local/bin/phpcs",
	"phpcbf_executable_path": "/usr/local/bin/phpcbf",
  "phpmd_executable_path": "/usr/local/bin/phpmd",
  "php_cs_fixer_executable_path": "/usr/local/bin/php-cs-fixer",
	"phpcbf_additional_args": {
        "--standard": "Drupal,DrupalPractice,PSR2",
        "-n": "",
        "--no-patch":""
    }
}
```
5. On every save it will show errors in code
6. Fix errors automatically `Ctrl + Shift + P` and select option `PHP Code Beautifier`
