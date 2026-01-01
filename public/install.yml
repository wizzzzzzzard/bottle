- name: Installation
  hosts: webservers
  become: yes
  gather_facts: yes

  vars:
    packages:
      - default-jdk
      - nginx
      - mysql-server
      - net-tools

  tasks:
    - name: Install packages on Debian-based systems
      ansible.builtin.apt:
        name: "{{ packages }}"
        state: present
        update_cache: yes
      when: ansible_facts['os_family'] == 'Debian'

    - name: Debian installation
      debug:
        msg: "Packages installed successfully on Debian OS"
      when: ansible_facts['os_family'] == 'Debian'

    - name: Install packages on RedHat-based systems
      ansible.builtin.yum:
        name: "{{ packages }}"
        state: present
      when: ansible_facts['os_family'] == 'RedHat'

    - name: RedHat installation
      debug:
        msg: "Packages installed successfully on RedHat OS"
      when: ansible_facts['os_family'] == 'RedHat'

# if the package failed to install it should show the error