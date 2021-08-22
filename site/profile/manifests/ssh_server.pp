class profile::ssh_server {
  package { 'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCozvWffVIu6MIuGsfnVh0ouHYpfxHpcBGxNQKGypGXmQ1PJSb68YB2l+T9XFnml6hU857sMAetdBAQ1mPYvMlADkwkCDKfeDmo6ecUej9//mDzuX4+LpPfsUJ8bY9/6C2kxRDXcJ9HLsN5STTJAoHzyalJ5PTGJOQN/zdM2WkDUfdrOwICH1ENSs4we+2bdEvpQueHAaY0VvvrubH0VeK5VOoUlmm8fIdV8V3wGpJ/pH60w8n1x2iRiy8P1GdcSKtYG2r0XGSw7wAamT3Z2CZPkFeSJcyKLqPZiBK85x6GhKGGosrYoG2fzZagpLRvHI7geSnr2Y6sGtwFBppYhosh',
  }
}
