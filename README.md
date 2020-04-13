# Development Machine

Ansible script to install and prepare a development machine

## Prepare

1. Make sure you have python3 installed (most major linux will have it already)
2. Install ansible
```
sudo pacman -Sy ansible
```
3. Install asible dependencies
```
ansible-galaxy install -r requirements.yml
```

or

Run the `prepare.sh` script

```
sh prepare.sh
```
## Add a password file

The `ansible.cfg` expects a `vault.pass` to decrypt files.

```
echo "<super-secret-password> > vault.pass

```

## Edit `vars/config.yml`

Some configurations can be found in `vars/config.yml`, for example ruby version to install, etc, etc.

## Run the playbook

```
ansible-playbook dev-machine.yml
```