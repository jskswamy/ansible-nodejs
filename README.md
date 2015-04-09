ansible-nodejs
========
An ansible role to install nodejs on Linux.

Role Variables
--------------

- **ansible_nodejs_download_dir**:

    Download path on the control machine that will be used. Defaults to `~/.ansible/download`.

- **ansible_nodejs_version**:

    Nodejs version to be installed. Defaults to `v0.12.2`.

- **ansible_nodejs_install_base_dir**:

    Installation prefix that will be used at the hosts. Defaults to `/opt/nodejs`.

- **ansible_nodejs_sha256sum**:

   Nodejs package sha256sum, v0.12.2's sha256sum is : `4e1578efc2a2cc67651413a05ccc4c5d43f6b4329c599901c556f24d93cd0508`.

- **ansible_nodejs_global_pkgs**:

   Nodejs global packages to install, defaults to: `[]`

- **ansible_nodejs_npm_mirror**:

   Nodejs npm mirror, defaults to empty.


Example Playbook
-------------------------
```
- hosts: all
  roles:
    - role: ansible-nodejs
      ansible_nodejs_version: 'v0.12.2'
      ansible_nodejs_sha256sum: '4e1578efc2a2cc67651413a05ccc4c5d43f6b4329c599901c556f24d93cd0508'
      ansible_nodejs_global_pkgs: [forever, pm2]

```
License
-------

BSD
