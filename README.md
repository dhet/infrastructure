# Infrastructure

Initial setup
```
ansible-playbook --ask-vault-pass -i hosts 001_setup.yml
```

Run reverse proxy
```
ansible-playbook -i hosts 002_run_proxy.yml
```

Run website
```
ansible-playbook -i hosts 003_run_website.yml
```

Run Nextcloud
```
ansible-playbook --ask-vault-pass -i hosts 004_run_nextcloud.yml
```


*Password in Keepass "Ansible Vault PW"*
