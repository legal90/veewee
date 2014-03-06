Veewee::Session.declare({
  # Minimum RAM requirement for installation is 512MB.
  :cpu_count => '1',
  :memory_size=> '512',
  :disk_size => '10140',
  :disk_format => 'VDI',
  :hostiocache => 'off',
  :hwvirtex => 'on',
  :os_type_id => 'Fedora_64',
  :iso_file => "Fedora-19-x86_64-DVD.iso",
  :iso_src => "http://download.fedoraproject.org/pub/fedora/linux/releases/19/Fedora/x86_64/iso/Fedora-19-x86_64-DVD.iso",
  :iso_sha1 => "73e45acf91d73146c7a71f7e8ca72762833aeadd",
  :iso_download_timeout => 1000,
  :boot_wait => "10",
  :boot_cmd_sequence => [ '<Tab> linux text net.ifnames=0 biosdevname=0 ks=http://%IP%:%PORT%/ks.cfg<Enter><Enter>' ],
  :kickstart_port => "7122",
  :kickstart_timeout => 10000,
  :kickstart_file => "ks.cfg",
  :ssh_login_timeout => "10000",
  :ssh_user => "vagrant",
  :ssh_password => "vagrant",
  :ssh_key => "",
  :ssh_host_port => "7222",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "/sbin/halt -h -p",
  :postinstall_files => [
    "base.sh",
    "ruby.sh",
    "chef.sh",
    "puppet.sh",
    "vagrant.sh",
    "virtualbox.sh",
    #"vmfusion.sh",
    # "parallels.sh",
    "cleanup.sh",
    "zerodisk.sh"
  ],
  :postinstall_timeout => 10000
})
