# Infrastructure

Deploy proxy + website
```
ansible-playbook -i hosts setup.yml
```

Deploy Nextcloud
```
ansible-playbook -i hosts --ask-vault-pass setup_nextcloud.yml
```
*Passwort in Keepass "Ansible Vault PW"*
