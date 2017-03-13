ss: ssserver sslocal

ssserver:
	cd ansible-shadowsocks; \
	ansible-playbook do_shadowsocks.yml --vault-password-file ~/.ansible/vault_pass.txt

sslocal:
	sslocal -c ansible-shadowsocks/shadowsocks.json
