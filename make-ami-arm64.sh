Admin:~/environment/custom-amazon-eks-ami-packer-rhel (main) $ make k8s=1.29 arch=arm64
make k8s kubernetes_version=1.29.6 kubernetes_build_date=2024-07-12
make[1]: Entering directory '/home/ubuntu/environment/custom-amazon-eks-ami-packer-rhel'
PACKER_TEMPLATE_FILE: templates/rhel/template.json
PACKER_ARGS: -var-file templates/rhel/variables-default.json   -var instance_type='m6g.large' -var arch='arm64' -var kubernetes_build_date='2024-07-12' -var ami_name='amazon-eks-rhel-arm64-node-1.29-v20240806' -var kubernetes_version='1.29.6'
packer validate -var-file templates/rhel/variables-default.json   -var instance_type='m6g.large' -var arch='arm64' -var kubernetes_build_date='2024-07-12' -var ami_name='amazon-eks-rhel-arm64-node-1.29-v20240806' -var kubernetes_version='1.29.6' templates/rhel/template.json
The configuration is valid.
Building AMI [os_distro=rhel kubernetes_version=1.29.6 arch=arm64]
packer build -timestamp-ui -color=false -var-file templates/rhel/variables-default.json   -var instance_type='m6g.large' -var arch='arm64' -var kubernetes_build_date='2024-07-12' -var ami_name='amazon-eks-rhel-arm64-node-1.29-v20240806' -var kubernetes_version='1.29.6' templates/rhel/template.json
2024-08-06T22:13:10Z: ==> amazon-ebs: Prevalidating any provided VPC information
2024-08-06T22:13:10Z: ==> amazon-ebs: Prevalidating AMI Name: amazon-eks-rhel-arm64-node-1.29-v20240806
2024-08-06T22:13:11Z:     amazon-ebs: Found Image ID: ami-00656f1bd5c0e6ffc
2024-08-06T22:13:11Z: ==> amazon-ebs: Creating temporary keypair: packer_66b29ff6-2b2d-020b-48e7-74a9e8cf5e18
2024-08-06T22:13:11Z: ==> amazon-ebs: Creating temporary security group for this instance: packer_66b29ff7-0428-0429-65ff-228dd854d7fb
2024-08-06T22:13:11Z: ==> amazon-ebs: Authorizing access to port 22 from [0.0.0.0/0] in the temporary security groups...
2024-08-06T22:13:12Z: ==> amazon-ebs: Launching a source AWS instance...
2024-08-06T22:13:12Z:     amazon-ebs: Adding tag: "creator": "ubuntu"
2024-08-06T22:13:13Z:     amazon-ebs: Instance ID: i-0528108c2f43dbfc0
2024-08-06T22:13:13Z: ==> amazon-ebs: Waiting for instance (i-0528108c2f43dbfc0) to become ready...
2024-08-06T22:13:43Z: ==> amazon-ebs: Using SSH communicator to connect: 54.81.117.211
2024-08-06T22:13:43Z: ==> amazon-ebs: Waiting for SSH to become available...
2024-08-06T22:13:44Z: ==> amazon-ebs: Connected to SSH!
2024-08-06T22:13:44Z: ==> amazon-ebs: Provisioning with shell script: /tmp/packer-shell4195668617
2024-08-06T22:13:45Z: ==> amazon-ebs: Uploading /home/ubuntu/environment/custom-amazon-eks-ami-packer-rhel/templates/rhel/../shared/runtime/ => /tmp/worker/shared
2024-08-06T22:13:45Z: ==> amazon-ebs: Uploading /home/ubuntu/environment/custom-amazon-eks-ami-packer-rhel/templates/rhel/runtime/rootfs/ => /tmp/worker/rootfs
2024-08-06T22:13:45Z: ==> amazon-ebs: Uploading /home/ubuntu/environment/custom-amazon-eks-ami-packer-rhel/templates/rhel/../../log-collector-script/linux/ => /tmp/worker/log-collector-script/
2024-08-06T22:13:45Z: ==> amazon-ebs: Provisioning with shell script: /tmp/packer-shell3791925163
2024-08-06T22:13:46Z:     amazon-ebs: '/tmp/worker/log-collector-script/eks-log-collector.sh' -> '/etc/eks/log-collector-script/eks-log-collector.sh'
2024-08-06T22:13:46Z: ==> amazon-ebs: Uploading /home/ubuntu/environment/custom-amazon-eks-ami-packer-rhel/templates/rhel/../../nodeadm/ => /tmp/worker/nodeadm
2024-08-06T22:14:10Z: ==> amazon-ebs: Provisioning with shell script: /tmp/packer-shell1591257230
2024-08-06T22:14:10Z:     amazon-ebs: '/tmp/worker/rootfs/etc/modules-load.d/containerd.conf' -> '/etc/modules-load.d/containerd.conf'
2024-08-06T22:14:10Z:     amazon-ebs: '/tmp/worker/rootfs/etc/sysctl.d/99-amazon.conf' -> '/etc/sysctl.d/99-amazon.conf'
2024-08-06T22:14:10Z:     amazon-ebs: '/tmp/worker/rootfs/etc/sysctl.d/99-kubernetes-cri.conf' -> '/etc/sysctl.d/99-kubernetes-cri.conf'
2024-08-06T22:14:10Z:     amazon-ebs: '/tmp/worker/rootfs/etc/logrotate.d/kube-proxy' -> '/etc/logrotate.d/kube-proxy'
2024-08-06T22:14:10Z:     amazon-ebs: '/tmp/worker/rootfs/etc/logrotate.conf' -> '/etc/logrotate.conf'
2024-08-06T22:14:10Z:     amazon-ebs: '/tmp/worker/rootfs/etc/sysctl.conf' -> '/etc/sysctl.conf'
2024-08-06T22:14:10Z:     amazon-ebs: '/tmp/worker/rootfs/etc/systemd/system/containerd.service' -> '/etc/systemd/system/containerd.service'
2024-08-06T22:14:10Z:     amazon-ebs: '/tmp/worker/rootfs/etc/systemd/system/runtime.slice' -> '/etc/systemd/system/runtime.slice'
2024-08-06T22:14:10Z:     amazon-ebs: '/tmp/worker/rootfs/etc/systemd/system/nodeadm-run.service' -> '/etc/systemd/system/nodeadm-run.service'
2024-08-06T22:14:10Z:     amazon-ebs: '/tmp/worker/rootfs/etc/systemd/system/kubelet.service' -> '/etc/systemd/system/kubelet.service'
2024-08-06T22:14:10Z:     amazon-ebs: '/tmp/worker/rootfs/etc/systemd/system/nodeadm-config.service' -> '/etc/systemd/system/nodeadm-config.service'
2024-08-06T22:14:10Z:     amazon-ebs: '/tmp/worker/rootfs/etc/systemd/system/containerd.service.d' -> '/etc/systemd/system/containerd.service.d'
2024-08-06T22:14:10Z:     amazon-ebs: '/tmp/worker/rootfs/etc/systemd/system/containerd.service.d/00-runtime-slice.conf' -> '/etc/systemd/system/containerd.service.d/00-runtime-slice.conf'
2024-08-06T22:14:10Z:     amazon-ebs: '/tmp/worker/rootfs/etc/nerdctl' -> '/etc/nerdctl'
2024-08-06T22:14:10Z:     amazon-ebs: '/tmp/worker/rootfs/etc/nerdctl/nerdctl.toml' -> '/etc/nerdctl/nerdctl.toml'
2024-08-06T22:14:10Z: ==> amazon-ebs: Provisioning with shell script: /tmp/packer-shell1136186571
2024-08-06T22:14:10Z:     amazon-ebs: '/tmp/worker/shared/bin/configure-clocksource' -> '/usr/bin/configure-clocksource'
2024-08-06T22:14:10Z:     amazon-ebs: '/tmp/worker/shared/bin/imds' -> '/usr/bin/imds'
2024-08-06T22:14:10Z:     amazon-ebs: '/tmp/worker/shared/bin/setup-local-disks' -> '/usr/bin/setup-local-disks'
2024-08-06T22:14:10Z:     amazon-ebs: '/tmp/worker/shared/bin/vercmp' -> '/usr/bin/vercmp'
2024-08-06T22:14:10Z: ==> amazon-ebs: Provisioning with shell script: /home/ubuntu/environment/custom-amazon-eks-ami-packer-rhel/templates/rhel/provisioners/enable-fips.sh
2024-08-06T22:14:10Z: ==> amazon-ebs: Provisioning with shell script: /home/ubuntu/environment/custom-amazon-eks-ami-packer-rhel/templates/rhel/provisioners/install-worker.sh
2024-08-06T22:14:14Z:     amazon-ebs: Updating Subscription Management repositories.
2024-08-06T22:14:14Z:     amazon-ebs: Unable to read consumer identity
2024-08-06T22:14:14Z:     amazon-ebs:
2024-08-06T22:14:14Z:     amazon-ebs: This system is not registered with an entitlement server. You can use subscription-manager to register.
2024-08-06T22:14:14Z:     amazon-ebs:
2024-08-06T22:14:23Z:     amazon-ebs: Red Hat Enterprise Linux 8 for aarch64 - AppStr  17 MB/s |  56 MB     00:03
2024-08-06T22:14:14Z:     amazon-ebs:
2024-08-06T22:14:23Z:     amazon-ebs: Red Hat Enterprise Linux 8 for aarch64 - AppStr  17 MB/s |  56 MB     00:03
2024-08-06T22:14:39Z:     amazon-ebs: Red Hat Enterprise Linux 8 for aarch64 - BaseOS  20 MB/s |  56 MB     00:02
2024-08-06T22:14:52Z:     amazon-ebs: Red Hat Ansible Engine 2 for RHEL 8 (RPMs) from 3.2 MB/s | 2.5 MB     00:00
2024-08-06T22:14:53Z:     amazon-ebs: RHUI Client Configuration Server 8               24 kB/s | 3.9 kB     00:00
2024-08-06T22:14:58Z:     amazon-ebs: Dependencies resolved.
2024-08-06T22:14:58Z:     amazon-ebs: ================================================================================
2024-08-06T22:14:58Z:     amazon-ebs:  Package            Arch    Version            Repository                  Size
2024-08-06T22:14:58Z:     amazon-ebs: ================================================================================
2024-08-06T22:14:58Z:     amazon-ebs: Installing:
2024-08-06T22:14:58Z:     amazon-ebs:  kernel             aarch64 4.18.0-553.8.1.el8_10
2024-08-06T22:14:58Z:     amazon-ebs:                                                rhel-8-baseos-rhui-rpms     10 M
2024-08-06T22:14:58Z:     amazon-ebs:  kernel-core        aarch64 4.18.0-553.8.1.el8_10
2024-08-06T22:14:58Z:     amazon-ebs:                                                rhel-8-baseos-rhui-rpms     40 M
2024-08-06T22:14:58Z:     amazon-ebs:  kernel-modules     aarch64 4.18.0-553.8.1.el8_10
2024-08-06T22:14:58Z:     amazon-ebs:                                                rhel-8-baseos-rhui-rpms     20 M
2024-08-06T22:14:58Z:     amazon-ebs: Upgrading:
2024-08-06T22:14:58Z:     amazon-ebs:  NetworkManager     aarch64 1:1.40.16-15.el8_9 rhel-8-baseos-rhui-rpms    2.1 M
2024-08-06T22:14:58Z:     amazon-ebs:  NetworkManager-cloud-setup
2024-08-06T22:14:58Z:     amazon-ebs:                     aarch64 1:1.40.16-15.el8_9 rhel-8-appstream-rhui-rpms 193 k
2024-08-06T22:14:58Z:     amazon-ebs:  NetworkManager-libnm
2024-08-06T22:14:58Z:     amazon-ebs:                     aarch64 1:1.40.16-15.el8_9 rhel-8-baseos-rhui-rpms    1.9 M
2024-08-06T22:14:58Z:     amazon-ebs:  NetworkManager-team
2024-08-06T22:14:58Z:     amazon-ebs:                     aarch64 1:1.40.16-15.el8_9 rhel-8-baseos-rhui-rpms    159 k
2024-08-06T22:14:58Z:     amazon-ebs:  NetworkManager-tui aarch64 1:1.40.16-15.el8_9 rhel-8-baseos-rhui-rpms    342 k
2024-08-06T22:14:58Z:     amazon-ebs:  acl                aarch64 2.2.53-3.el8       rhel-8-baseos-rhui-rpms     80 k
2024-08-06T22:14:58Z:     amazon-ebs:  audit              aarch64 3.1.2-1.el8        rhel-8-baseos-rhui-rpms    257 k
2024-08-06T22:14:58Z:     amazon-ebs:  audit-libs         aarch64 3.1.2-1.el8        rhel-8-baseos-rhui-rpms    120 k
2024-08-06T22:14:58Z:     amazon-ebs:  authselect         aarch64 1.2.6-2.el8        rhel-8-baseos-rhui-rpms    147 k
2024-08-06T22:14:58Z:     amazon-ebs:  authselect-compat  aarch64 1.2.6-2.el8        rhel-8-appstream-rhui-rpms  38 k
2024-08-06T22:14:58Z:     amazon-ebs:  authselect-libs    aarch64 1.2.6-2.el8        rhel-8-baseos-rhui-rpms    242 k
2024-08-06T22:14:58Z:     amazon-ebs:  bash               aarch64 4.4.20-5.el8       rhel-8-baseos-rhui-rpms    1.5 M
2024-08-06T22:14:58Z:     amazon-ebs:  bind-export-libs   aarch64 32:9.11.36-14.el8_10
2024-08-06T22:14:58Z:     amazon-ebs:                                                rhel-8-baseos-rhui-rpms    1.1 M
2024-08-06T22:14:58Z:     amazon-ebs:  c-ares             aarch64 1.13.0-11.el8_10   rhel-8-baseos-rhui-rpms     93 k
2024-08-06T22:14:58Z:     amazon-ebs:  ca-certificates    noarch  2023.2.60_v7.0.306-80.0.el8_8
2024-08-06T22:14:58Z:     amazon-ebs:                                                rhel-8-baseos-rhui-rpms    935 k
2024-08-06T22:14:58Z:     amazon-ebs:  chkconfig          aarch64 1.19.2-1.el8       rhel-8-baseos-rhui-rpms    197 k
2024-08-06T22:14:58Z:     amazon-ebs:  chrony             aarch64 4.5-1.el8          rhel-8-baseos-rhui-rpms    339 k
2024-08-06T22:14:58Z:     amazon-ebs:  cloud-init         noarch  23.4-7.el8_10.3    rhel-8-appstream-rhui-rpms 1.3 M
2024-08-06T22:14:58Z:     amazon-ebs:  cloud-utils-growpart
2024-08-06T22:14:58Z:     amazon-ebs:                     noarch  0.33-0.el8         rhel-8-appstream-rhui-rpms  36 k
2024-08-06T22:14:58Z:     amazon-ebs:  coreutils          aarch64 8.30-15.el8        rhel-8-baseos-rhui-rpms    1.2 M
2024-08-06T22:14:58Z:     amazon-ebs:  coreutils-common   aarch64 8.30-15.el8        rhel-8-baseos-rhui-rpms    2.0 M
2024-08-06T22:14:58Z:     amazon-ebs:  cronie             aarch64 1.5.2-10.el8       rhel-8-baseos-rhui-rpms    118 k
2024-08-06T22:14:58Z:     amazon-ebs:  cronie-anacron     aarch64 1.5.2-10.el8       rhel-8-baseos-rhui-rpms     42 k
2024-08-06T22:14:58Z:     amazon-ebs:  crypto-policies    noarch  20230731-1.git3177e06.el8
2024-08-06T22:14:58Z:     amazon-ebs:                                                rhel-8-baseos-rhui-rpms     64 k
2024-08-06T22:14:58Z:     amazon-ebs:  crypto-policies-scripts
2024-08-06T22:14:58Z:     amazon-ebs:                     noarch  20230731-1.git3177e06.el8
2024-08-06T22:14:58Z:     amazon-ebs:                                                rhel-8-baseos-rhui-rpms     84 k
2024-08-06T22:14:58Z:     amazon-ebs:  cryptsetup-libs    aarch64 2.3.7-7.el8        rhel-8-baseos-rhui-rpms    474 k
2024-08-06T22:14:58Z:     amazon-ebs:  curl               aarch64 7.61.1-34.el8      rhel-8-baseos-rhui-rpms    350 k
2024-08-06T22:14:58Z:     amazon-ebs:  dbus               aarch64 1:1.12.8-26.el8    rhel-8-baseos-rhui-rpms     42 k
2024-08-06T22:14:58Z:     amazon-ebs:  dbus-common        noarch  1:1.12.8-26.el8    rhel-8-baseos-rhui-rpms     47 k
2024-08-06T22:14:58Z:     amazon-ebs:  dbus-daemon        aarch64 1:1.12.8-26.el8    rhel-8-baseos-rhui-rpms    234 k
2024-08-06T22:14:58Z:     amazon-ebs:  dbus-libs          aarch64 1:1.12.8-26.el8    rhel-8-baseos-rhui-rpms    177 k
2024-08-06T22:14:58Z:     amazon-ebs:  dbus-tools         aarch64 1:1.12.8-26.el8    rhel-8-baseos-rhui-rpms     85 k
2024-08-06T22:14:58Z:     amazon-ebs:  device-mapper      aarch64 8:1.02.181-14.el8  rhel-8-baseos-rhui-rpms    375 k
2024-08-06T22:14:58Z:     amazon-ebs:  device-mapper-libs aarch64 8:1.02.181-14.el8  rhel-8-baseos-rhui-rpms    399 k
2024-08-06T22:14:58Z:     amazon-ebs:  dhcp-client        aarch64 12:4.3.6-50.el8_10 rhel-8-baseos-rhui-rpms    307 k
2024-08-06T22:14:58Z:     amazon-ebs:  dhcp-common        noarch  12:4.3.6-50.el8_10 rhel-8-baseos-rhui-rpms    208 k
2024-08-06T22:14:58Z:     amazon-ebs:  dhcp-libs          aarch64 12:4.3.6-50.el8_10 rhel-8-baseos-rhui-rpms    146 k
2024-08-06T22:14:58Z:     amazon-ebs:  dmidecode          aarch64 1:3.5-1.el8        rhel-8-baseos-rhui-rpms     80 k
2024-08-06T22:14:58Z:     amazon-ebs:  dnf                noarch  4.7.0-20.el8       rhel-8-baseos-rhui-rpms    543 k
2024-08-06T22:14:58Z:     amazon-ebs:  dnf-data           noarch  4.7.0-20.el8       rhel-8-baseos-rhui-rpms    157 k
2024-08-06T22:14:58Z:     amazon-ebs:  dnf-plugin-subscription-manager
2024-08-06T22:14:58Z:     amazon-ebs:                     aarch64 1.28.42-1.el8      rhel-8-baseos-rhui-rpms    325 k
2024-08-06T22:14:58Z:     amazon-ebs:  dnf-plugins-core   noarch  4.0.21-25.el8      rhel-8-baseos-rhui-rpms     77 k
2024-08-06T22:14:58Z:     amazon-ebs:  dracut             aarch64 049-233.git20240115.el8
2024-08-06T22:14:58Z:     amazon-ebs:                                                rhel-8-baseos-rhui-rpms    377 k
2024-08-06T22:14:58Z:     amazon-ebs:  dracut-config-generic
2024-08-06T22:14:58Z:     amazon-ebs:                     aarch64 049-233.git20240115.el8
2024-08-06T22:14:58Z:     amazon-ebs:                                                rhel-8-baseos-rhui-rpms     62 k
2024-08-06T22:14:58Z:     amazon-ebs:  dracut-config-rescue
2024-08-06T22:14:58Z:     amazon-ebs:                     aarch64 049-233.git20240115.el8
2024-08-06T22:14:58Z:     amazon-ebs:                                                rhel-8-baseos-rhui-rpms     63 k
2024-08-06T22:14:58Z:     amazon-ebs:  dracut-network     aarch64 049-233.git20240115.el8
2024-08-06T22:14:58Z:     amazon-ebs:                                                rhel-8-baseos-rhui-rpms    111 k
2024-08-06T22:14:58Z:     amazon-ebs:  dracut-squash      aarch64 049-233.git20240115.el8
2024-08-06T22:14:58Z:     amazon-ebs:                                                rhel-8-baseos-rhui-rpms     64 k
2024-08-06T22:14:58Z:     amazon-ebs:  elfutils-debuginfod-client
2024-08-06T22:14:58Z:     amazon-ebs:                     aarch64 0.190-2.el8        rhel-8-baseos-rhui-rpms     75 k
2024-08-06T22:14:58Z:     amazon-ebs:  elfutils-default-yama-scope
2024-08-06T22:14:58Z:     amazon-ebs:                     noarch  0.190-2.el8        rhel-8-baseos-rhui-rpms     53 k
2024-08-06T22:14:58Z:     amazon-ebs:  elfutils-libelf    aarch64 0.190-2.el8        rhel-8-baseos-rhui-rpms    231 k
2024-08-06T22:14:58Z:     amazon-ebs:  elfutils-libs      aarch64 0.190-2.el8        rhel-8-baseos-rhui-rpms    294 k
2024-08-06T22:14:58Z:     amazon-ebs:  ethtool            aarch64 2:5.13-2.el8       rhel-8-baseos-rhui-rpms    212 k
2024-08-06T22:14:58Z:     amazon-ebs:  expat              aarch64 2.2.5-13.el8_10    rhel-8-baseos-rhui-rpms    104 k
2024-08-06T22:14:58Z:     amazon-ebs:  file               aarch64 5.33-26.el8        rhel-8-baseos-rhui-rpms     78 k
2024-08-06T22:14:58Z:     amazon-ebs:  file-libs          aarch64 5.33-26.el8        rhel-8-baseos-rhui-rpms    542 k
2024-08-06T22:14:58Z:     amazon-ebs:  findutils          aarch64 1:4.6.0-22.el8     rhel-8-baseos-rhui-rpms    524 k
2024-08-06T22:14:58Z:     amazon-ebs:  freetype           aarch64 2.9.1-9.el8        rhel-8-baseos-rhui-rpms    370 k
2024-08-06T22:14:58Z:     amazon-ebs:  fuse-libs          aarch64 2.9.7-19.el8       rhel-8-baseos-rhui-rpms     98 k
2024-08-06T22:14:58Z:     amazon-ebs:  fwupd              aarch64 1.7.8-2.el8        rhel-8-baseos-rhui-rpms    3.3 M
2024-08-06T22:14:58Z:     amazon-ebs:  gdbm               aarch64 1:1.18-2.el8       rhel-8-baseos-rhui-rpms    128 k
2024-08-06T22:14:58Z:     amazon-ebs:  gdbm-libs          aarch64 1:1.18-2.el8       rhel-8-baseos-rhui-rpms     59 k
2024-08-06T22:14:58Z:     amazon-ebs:  gdisk              aarch64 1.0.3-11.el8       rhel-8-baseos-rhui-rpms    226 k
2024-08-06T22:14:58Z:     amazon-ebs:  glib2              aarch64 2.56.4-162.el8     rhel-8-baseos-rhui-rpms    2.4 M
2024-08-06T22:14:58Z:     amazon-ebs:  glibc              aarch64 2.28-251.el8_10.2  rhel-8-baseos-rhui-rpms    1.8 M
2024-08-06T22:14:58Z:     amazon-ebs:  glibc-common       aarch64 2.28-251.el8_10.2  rhel-8-baseos-rhui-rpms    1.0 M
2024-08-06T22:14:58Z:     amazon-ebs:  glibc-gconv-extra  aarch64 2.28-251.el8_10.2  rhel-8-baseos-rhui-rpms    1.8 M
2024-08-06T22:14:58Z:     amazon-ebs:  glibc-langpack-en  aarch64 2.28-251.el8_10.2  rhel-8-baseos-rhui-rpms    831 k
2024-08-06T22:14:58Z:     amazon-ebs:  gnutls             aarch64 3.6.16-8.el8_9.3   rhel-8-baseos-rhui-rpms    940 k
2024-08-06T22:14:58Z:     amazon-ebs:  gpgme              aarch64 1.13.1-12.el8      rhel-8-baseos-rhui-rpms    323 k
2024-08-06T22:14:58Z:     amazon-ebs:  grub2-common       noarch  1:2.02-156.el8     rhel-8-baseos-rhui-rpms    896 k
2024-08-06T22:14:58Z:     amazon-ebs:  grub2-efi-aa64     aarch64 1:2.02-156.el8     rhel-8-baseos-rhui-rpms    467 k
2024-08-06T22:14:58Z:     amazon-ebs:  grub2-tools        aarch64 1:2.02-156.el8     rhel-8-baseos-rhui-rpms    1.8 M
2024-08-06T22:14:58Z:     amazon-ebs:  grub2-tools-extra  aarch64 1:2.02-156.el8     rhel-8-baseos-rhui-rpms    1.0 M
2024-08-06T22:14:58Z:     amazon-ebs:  grub2-tools-minimal
2024-08-06T22:14:58Z:     amazon-ebs:                     aarch64 1:2.02-156.el8     rhel-8-baseos-rhui-rpms    204 k
2024-08-06T22:14:58Z:     amazon-ebs:  grubby             aarch64 8.40-49.el8        rhel-8-baseos-rhui-rpms     50 k
2024-08-06T22:14:58Z:     amazon-ebs:  hwdata             noarch  0.314-8.22.el8     rhel-8-baseos-rhui-rpms    1.8 M
2024-08-06T22:14:58Z:     amazon-ebs:  initscripts        aarch64 10.00.18-1.el8     rhel-8-baseos-rhui-rpms    340 k
2024-08-06T22:14:58Z:     amazon-ebs:  insights-client    noarch  3.2.2-2.el8        rhel-8-appstream-rhui-rpms 1.3 M
2024-08-06T22:14:58Z:     amazon-ebs:  iproute            aarch64 6.2.0-6.el8_10     rhel-8-baseos-rhui-rpms    850 k
2024-08-06T22:14:58Z:     amazon-ebs:  iputils            aarch64 20180629-11.el8    rhel-8-baseos-rhui-rpms    148 k
2024-08-06T22:14:58Z:     amazon-ebs:  irqbalance         aarch64 2:1.9.2-1.el8      rhel-8-baseos-rhui-rpms     76 k
2024-08-06T22:14:58Z:     amazon-ebs:  kbd                aarch64 2.0.4-11.el8       rhel-8-baseos-rhui-rpms    381 k
2024-08-06T22:14:58Z:     amazon-ebs:  kbd-legacy         noarch  2.0.4-11.el8       rhel-8-baseos-rhui-rpms    481 k
2024-08-06T22:14:58Z:     amazon-ebs:  kbd-misc           noarch  2.0.4-11.el8       rhel-8-baseos-rhui-rpms    1.5 M
2024-08-06T22:14:58Z:     amazon-ebs:  kernel-tools       aarch64 4.18.0-553.8.1.el8_10
2024-08-06T22:14:58Z:     amazon-ebs:                                                rhel-8-baseos-rhui-rpms     10 M
2024-08-06T22:14:58Z:     amazon-ebs:  kernel-tools-libs  aarch64 4.18.0-553.8.1.el8_10
2024-08-06T22:14:58Z:     amazon-ebs:                                                rhel-8-baseos-rhui-rpms     10 M
2024-08-06T22:14:58Z:     amazon-ebs:  kexec-tools        aarch64 2.0.26-14.el8_10.1 rhel-8-baseos-rhui-rpms    490 k
2024-08-06T22:14:58Z:     amazon-ebs:  kmod               aarch64 25-20.el8          rhel-8-baseos-rhui-rpms    123 k
2024-08-06T22:14:58Z:     amazon-ebs:  kmod-libs          aarch64 25-20.el8          rhel-8-baseos-rhui-rpms     66 k
2024-08-06T22:14:58Z:     amazon-ebs:  kpartx             aarch64 0.8.4-41.el8       rhel-8-baseos-rhui-rpms    119 k
2024-08-06T22:14:58Z:     amazon-ebs:  krb5-libs          aarch64 1.18.2-28.el8_10   rhel-8-baseos-rhui-rpms    819 k
2024-08-06T22:14:58Z:     amazon-ebs:  less               aarch64 530-3.el8_10       rhel-8-baseos-rhui-rpms    162 k
2024-08-06T22:14:58Z:     amazon-ebs:  libacl             aarch64 2.2.53-3.el8       rhel-8-baseos-rhui-rpms     34 k
2024-08-06T22:14:58Z:     amazon-ebs:  libarchive         aarch64 3.3.3-5.el8        rhel-8-baseos-rhui-rpms    340 k
2024-08-06T22:14:58Z:     amazon-ebs:  libbasicobjects    aarch64 0.1.1-40.el8       rhel-8-baseos-rhui-rpms     31 k
2024-08-06T22:14:58Z:     amazon-ebs:  libblkid           aarch64 2.32.1-46.el8      rhel-8-baseos-rhui-rpms    215 k
2024-08-06T22:14:58Z:     amazon-ebs:  libblockdev        aarch64 2.28-6.el8         rhel-8-appstream-rhui-rpms 135 k
2024-08-06T22:14:58Z:     amazon-ebs:  libblockdev-crypto aarch64 2.28-6.el8         rhel-8-appstream-rhui-rpms  81 k
2024-08-06T22:14:58Z:     amazon-ebs:  libblockdev-fs     aarch64 2.28-6.el8         rhel-8-appstream-rhui-rpms  86 k
2024-08-06T22:14:58Z:     amazon-ebs:  libblockdev-loop   aarch64 2.28-6.el8         rhel-8-appstream-rhui-rpms  71 k
2024-08-06T22:14:58Z:     amazon-ebs:  libblockdev-mdraid aarch64 2.28-6.el8         rhel-8-appstream-rhui-rpms  78 k
2024-08-06T22:14:58Z:     amazon-ebs:  libblockdev-part   aarch64 2.28-6.el8         rhel-8-appstream-rhui-rpms  80 k
2024-08-06T22:14:58Z:     amazon-ebs:  libblockdev-swap   aarch64 2.28-6.el8         rhel-8-appstream-rhui-rpms  73 k
2024-08-06T22:14:58Z:     amazon-ebs:  libblockdev-utils  aarch64 2.28-6.el8         rhel-8-appstream-rhui-rpms  80 k
2024-08-06T22:14:58Z:     amazon-ebs:  libbpf             aarch64 0.5.0-1.el8        rhel-8-baseos-rhui-rpms    132 k
2024-08-06T22:14:58Z:     amazon-ebs:  libcap             aarch64 2.48-6.el8_9       rhel-8-baseos-rhui-rpms     74 k
2024-08-06T22:14:58Z:     amazon-ebs:  libcollection      aarch64 0.7.0-40.el8       rhel-8-baseos-rhui-rpms     47 k
2024-08-06T22:14:58Z:     amazon-ebs:  libcurl            aarch64 7.61.1-34.el8      rhel-8-baseos-rhui-rpms    285 k
2024-08-06T22:14:58Z:     amazon-ebs:  libdhash           aarch64 0.5.0-40.el8       rhel-8-baseos-rhui-rpms     34 k
2024-08-06T22:14:58Z:     amazon-ebs:  libdnf             aarch64 0.63.0-19.el8      rhel-8-baseos-rhui-rpms    628 k
2024-08-06T22:14:58Z:     amazon-ebs:  libestr            aarch64 0.1.10-3.el8       rhel-8-appstream-rhui-rpms  28 k
2024-08-06T22:14:58Z:     amazon-ebs:  libfastjson        aarch64 0.99.9-2.el8       rhel-8-appstream-rhui-rpms  37 k
2024-08-06T22:14:58Z:     amazon-ebs:  libfdisk           aarch64 2.32.1-46.el8      rhel-8-baseos-rhui-rpms    244 k
2024-08-06T22:14:58Z:     amazon-ebs:  libffi             aarch64 3.1-24.el8         rhel-8-baseos-rhui-rpms     37 k
2024-08-06T22:14:58Z:     amazon-ebs:  libgcc             aarch64 8.5.0-22.el8_10    rhel-8-baseos-rhui-rpms     75 k
2024-08-06T22:14:58Z:     amazon-ebs:  libgomp            aarch64 8.5.0-22.el8_10    rhel-8-baseos-rhui-rpms    200 k
2024-08-06T22:14:58Z:     amazon-ebs:  libini_config      aarch64 1.3.1-40.el8       rhel-8-baseos-rhui-rpms     69 k
2024-08-06T22:14:58Z:     amazon-ebs:  libkcapi           aarch64 1.4.0-2.el8        rhel-8-baseos-rhui-rpms     52 k
2024-08-06T22:14:58Z:     amazon-ebs:  libkcapi-hmaccalc  aarch64 1.4.0-2.el8        rhel-8-baseos-rhui-rpms     32 k
2024-08-06T22:14:58Z:     amazon-ebs:  libksba            aarch64 1.3.5-9.el8_7      rhel-8-baseos-rhui-rpms    130 k
2024-08-06T22:14:58Z:     amazon-ebs:  libldb             aarch64 2.8.0-0.el8        rhel-8-baseos-rhui-rpms    186 k
2024-08-06T22:14:58Z:     amazon-ebs:  libmaxminddb       aarch64 1.2.0-10.el8_9.1   rhel-8-appstream-rhui-rpms  33 k
2024-08-06T22:14:58Z:     amazon-ebs:  libmount           aarch64 2.32.1-46.el8      rhel-8-baseos-rhui-rpms    230 k
2024-08-06T22:14:58Z:     amazon-ebs:  libndp             aarch64 1.7-7.el8_10       rhel-8-baseos-rhui-rpms     40 k
2024-08-06T22:14:58Z:     amazon-ebs:  libnfsidmap        aarch64 1:2.3.3-59.el8     rhel-8-baseos-rhui-rpms    121 k
2024-08-06T22:14:58Z:     amazon-ebs:  libnghttp2         aarch64 1.33.0-6.el8_10.1  rhel-8-baseos-rhui-rpms     75 k
2024-08-06T22:14:58Z:     amazon-ebs:  libnl3             aarch64 3.7.0-1.el8        rhel-8-baseos-rhui-rpms    317 k
2024-08-06T22:14:58Z:     amazon-ebs:  libnl3-cli         aarch64 3.7.0-1.el8        rhel-8-baseos-rhui-rpms    193 k
2024-08-06T22:14:58Z:     amazon-ebs:  libpath_utils      aarch64 0.2.1-40.el8       rhel-8-baseos-rhui-rpms     34 k
2024-08-06T22:14:58Z:     amazon-ebs:  libpwquality       aarch64 1.4.4-6.el8        rhel-8-baseos-rhui-rpms    106 k
2024-08-06T22:14:58Z:     amazon-ebs:  libref_array       aarch64 0.1.5-40.el8       rhel-8-baseos-rhui-rpms     33 k
2024-08-06T22:14:58Z:     amazon-ebs:  librepo            aarch64 1.14.2-5.el8       rhel-8-baseos-rhui-rpms     88 k
2024-08-06T22:14:58Z:     amazon-ebs:  librhsm            aarch64 0.0.3-5.el8        rhel-8-baseos-rhui-rpms     33 k
2024-08-06T22:14:58Z:     amazon-ebs:  libselinux         aarch64 2.9-8.el8          rhel-8-baseos-rhui-rpms    162 k
2024-08-06T22:14:58Z:     amazon-ebs:  libselinux-utils   aarch64 2.9-8.el8          rhel-8-baseos-rhui-rpms    241 k
2024-08-06T22:14:58Z:     amazon-ebs:  libsmartcols       aarch64 2.32.1-46.el8      rhel-8-baseos-rhui-rpms    175 k
2024-08-06T22:14:58Z:     amazon-ebs:  libsolv            aarch64 0.7.20-6.el8       rhel-8-baseos-rhui-rpms    342 k
2024-08-06T22:14:58Z:     amazon-ebs:  libssh             aarch64 0.9.6-14.el8       rhel-8-baseos-rhui-rpms    210 k
2024-08-06T22:14:58Z:     amazon-ebs:  libssh-config      noarch  0.9.6-14.el8       rhel-8-baseos-rhui-rpms     21 k
2024-08-06T22:14:58Z:     amazon-ebs:  libsss_autofs      aarch64 2.9.4-3.el8_10     rhel-8-baseos-rhui-rpms    130 k
2024-08-06T22:14:58Z:     amazon-ebs:  libsss_certmap     aarch64 2.9.4-3.el8_10     rhel-8-baseos-rhui-rpms    184 k
2024-08-06T22:14:58Z:     amazon-ebs:  libsss_idmap       aarch64 2.9.4-3.el8_10     rhel-8-baseos-rhui-rpms    132 k
2024-08-06T22:14:58Z:     amazon-ebs:  libsss_nss_idmap   aarch64 2.9.4-3.el8_10     rhel-8-baseos-rhui-rpms    140 k
2024-08-06T22:14:58Z:     amazon-ebs:  libsss_sudo        aarch64 2.9.4-3.el8_10     rhel-8-baseos-rhui-rpms    128 k
2024-08-06T22:14:58Z:     amazon-ebs:  libstdc++          aarch64 8.5.0-22.el8_10    rhel-8-baseos-rhui-rpms    425 k
2024-08-06T22:14:58Z:     amazon-ebs:  libtalloc          aarch64 2.4.1-0.el8        rhel-8-baseos-rhui-rpms     47 k
2024-08-06T22:14:58Z:     amazon-ebs:  libtasn1           aarch64 4.13-4.el8_7       rhel-8-baseos-rhui-rpms     75 k
2024-08-06T22:14:58Z:     amazon-ebs:  libtdb             aarch64 1.4.9-0.el8        rhel-8-baseos-rhui-rpms     59 k
2024-08-06T22:14:58Z:     amazon-ebs:  libteam            aarch64 1.31-4.el8         rhel-8-baseos-rhui-rpms     63 k
2024-08-06T22:14:58Z:     amazon-ebs:  libtevent          aarch64 0.16.0-0.el8       rhel-8-baseos-rhui-rpms     52 k
2024-08-06T22:14:58Z:     amazon-ebs:  libtirpc           aarch64 1.1.4-12.el8_10    rhel-8-baseos-rhui-rpms    110 k
2024-08-06T22:14:58Z:     amazon-ebs:  libudisks2         aarch64 2.9.0-16.el8       rhel-8-appstream-rhui-rpms 180 k
2024-08-06T22:14:58Z:     amazon-ebs:  libuser            aarch64 0.62-25.el8        rhel-8-baseos-rhui-rpms    409 k
2024-08-06T22:14:58Z:     amazon-ebs:  libuuid            aarch64 2.32.1-46.el8      rhel-8-baseos-rhui-rpms     99 k
2024-08-06T22:14:58Z:     amazon-ebs:  libverto           aarch64 0.3.2-2.el8        rhel-8-baseos-rhui-rpms     24 k
2024-08-06T22:14:58Z:     amazon-ebs:  libxml2            aarch64 2.9.7-18.el8_10.1  rhel-8-baseos-rhui-rpms    654 k
2024-08-06T22:14:58Z:     amazon-ebs:  linux-firmware     noarch  20240610-122.git90df68d2.el8_10
2024-08-06T22:14:58Z:     amazon-ebs:                                                rhel-8-baseos-rhui-rpms    363 M
2024-08-06T22:14:58Z:     amazon-ebs:  lmdb-libs          aarch64 0.9.24-2.el8       rhel-8-baseos-rhui-rpms     57 k
2024-08-06T22:14:58Z:     amazon-ebs:  logrotate          aarch64 3.14.0-6.el8       rhel-8-baseos-rhui-rpms     83 k
2024-08-06T22:14:58Z:     amazon-ebs:  mdadm              aarch64 4.2-14.el8_10      rhel-8-baseos-rhui-rpms    450 k
2024-08-06T22:14:58Z:     amazon-ebs:  memstrack          aarch64 0.2.5-2.el8        rhel-8-baseos-rhui-rpms     51 k
2024-08-06T22:14:58Z:     amazon-ebs:  mokutil            aarch64 1:0.3.0-12.el8     rhel-8-baseos-rhui-rpms     44 k
2024-08-06T22:14:58Z:     amazon-ebs:  ncurses            aarch64 6.1-10.20180224.el8
2024-08-06T22:14:58Z:     amazon-ebs:                                                rhel-8-baseos-rhui-rpms    383 k
2024-08-06T22:14:58Z:     amazon-ebs:  ncurses-base       noarch  6.1-10.20180224.el8
2024-08-06T22:14:58Z:     amazon-ebs:                                                rhel-8-baseos-rhui-rpms     81 k
2024-08-06T22:14:58Z:     amazon-ebs:  ncurses-libs       aarch64 6.1-10.20180224.el8
2024-08-06T22:14:58Z:     amazon-ebs:                                                rhel-8-baseos-rhui-rpms    310 k
2024-08-06T22:14:58Z:     amazon-ebs:  nspr               aarch64 4.35.0-1.el8_8     rhel-8-appstream-rhui-rpms 136 k
2024-08-06T22:14:58Z:     amazon-ebs:  nss                aarch64 3.90.0-7.el8_10    rhel-8-appstream-rhui-rpms 710 k
2024-08-06T22:14:58Z:     amazon-ebs:  nss-softokn        aarch64 3.90.0-7.el8_10    rhel-8-appstream-rhui-rpms 1.2 M
2024-08-06T22:14:58Z:     amazon-ebs:  nss-softokn-freebl aarch64 3.90.0-7.el8_10    rhel-8-appstream-rhui-rpms 340 k
2024-08-06T22:14:58Z:     amazon-ebs:  nss-sysinit        aarch64 3.90.0-7.el8_10    rhel-8-appstream-rhui-rpms  75 k
2024-08-06T22:14:58Z:     amazon-ebs:  nss-util           aarch64 3.90.0-7.el8_10    rhel-8-appstream-rhui-rpms 136 k
2024-08-06T22:14:58Z:     amazon-ebs:  numactl-libs       aarch64 2.0.16-4.el8       rhel-8-baseos-rhui-rpms     37 k
2024-08-06T22:14:58Z:     amazon-ebs:  oddjob             aarch64 0.34.7-3.el8       rhel-8-appstream-rhui-rpms  78 k
2024-08-06T22:14:58Z:     amazon-ebs:  oddjob-mkhomedir   aarch64 0.34.7-3.el8       rhel-8-appstream-rhui-rpms  48 k
2024-08-06T22:14:58Z:     amazon-ebs:  openldap           aarch64 2.4.46-19.el8_10   rhel-8-baseos-rhui-rpms    339 k
2024-08-06T22:14:58Z:     amazon-ebs:  openssh            aarch64 8.0p1-24.el8       rhel-8-baseos-rhui-rpms    491 k
2024-08-06T22:14:58Z:     amazon-ebs:  openssh-clients    aarch64 8.0p1-24.el8       rhel-8-baseos-rhui-rpms    628 k
2024-08-06T22:14:58Z:     amazon-ebs:  openssh-server     aarch64 8.0p1-24.el8       rhel-8-baseos-rhui-rpms    478 k
2024-08-06T22:14:58Z:     amazon-ebs:  openssl            aarch64 1:1.1.1k-12.el8_9  rhel-8-baseos-rhui-rpms    692 k
2024-08-06T22:14:58Z:     amazon-ebs:  openssl-libs       aarch64 1:1.1.1k-12.el8_9  rhel-8-baseos-rhui-rpms    1.3 M
2024-08-06T22:14:58Z:     amazon-ebs:  openssl-pkcs11     aarch64 0.4.10-3.el8       rhel-8-baseos-rhui-rpms     65 k
2024-08-06T22:14:58Z:     amazon-ebs:  p11-kit            aarch64 0.23.22-2.el8      rhel-8-baseos-rhui-rpms    309 k
2024-08-06T22:14:58Z:     amazon-ebs:  p11-kit-trust      aarch64 0.23.22-2.el8      rhel-8-baseos-rhui-rpms    135 k
2024-08-06T22:14:58Z:     amazon-ebs:  pam                aarch64 1.3.1-34.el8_10    rhel-8-baseos-rhui-rpms    741 k
2024-08-06T22:14:58Z:     amazon-ebs:  pciutils           aarch64 3.7.0-3.el8        rhel-8-baseos-rhui-rpms    102 k
2024-08-06T22:14:58Z:     amazon-ebs:  pciutils-libs      aarch64 3.7.0-3.el8        rhel-8-baseos-rhui-rpms     52 k
2024-08-06T22:14:58Z:     amazon-ebs:  platform-python    aarch64 3.6.8-62.el8_10    rhel-8-baseos-rhui-rpms     88 k
2024-08-06T22:14:58Z:     amazon-ebs:  platform-python-pip
2024-08-06T22:14:58Z:     amazon-ebs:                     noarch  9.0.3-24.el8       rhel-8-baseos-rhui-rpms    1.6 M
2024-08-06T22:14:58Z:     amazon-ebs:  policycoreutils    aarch64 2.9-26.el8_10      rhel-8-baseos-rhui-rpms    376 k
2024-08-06T22:14:58Z:     amazon-ebs:  policycoreutils-python-utils
2024-08-06T22:14:58Z:     amazon-ebs:                     noarch  2.9-26.el8_10      rhel-8-baseos-rhui-rpms    254 k
2024-08-06T22:14:58Z:     amazon-ebs:  polkit             aarch64 0.115-15.el8_10.2  rhel-8-baseos-rhui-rpms    151 k
2024-08-06T22:14:58Z:     amazon-ebs:  polkit-libs        aarch64 0.115-15.el8_10.2  rhel-8-baseos-rhui-rpms     75 k
2024-08-06T22:14:58Z:     amazon-ebs:  procps-ng          aarch64 3.3.15-14.el8      rhel-8-baseos-rhui-rpms    329 k
2024-08-06T22:14:58Z:     amazon-ebs:  python3-audit      aarch64 3.1.2-1.el8        rhel-8-baseos-rhui-rpms     86 k
2024-08-06T22:14:58Z:     amazon-ebs:  python3-cffi       aarch64 1.11.5-6.el8       rhel-8-baseos-rhui-rpms    239 k
2024-08-06T22:14:58Z:     amazon-ebs:  python3-cloud-what aarch64 1.28.42-1.el8      rhel-8-baseos-rhui-rpms    325 k
2024-08-06T22:14:58Z:     amazon-ebs:  python3-cryptography
2024-08-06T22:14:58Z:     amazon-ebs:                     aarch64 3.2.1-7.el8_9      rhel-8-baseos-rhui-rpms    543 k
2024-08-06T22:14:58Z:     amazon-ebs:  python3-dnf        noarch  4.7.0-20.el8       rhel-8-baseos-rhui-rpms    550 k
2024-08-06T22:14:58Z:     amazon-ebs:  python3-dnf-plugins-core
2024-08-06T22:14:58Z:     amazon-ebs:                     noarch  4.0.21-25.el8      rhel-8-baseos-rhui-rpms    263 k
2024-08-06T22:14:58Z:     amazon-ebs:  python3-gpg        aarch64 1.13.1-12.el8      rhel-8-baseos-rhui-rpms    236 k
2024-08-06T22:14:58Z:     amazon-ebs:  python3-hawkey     aarch64 0.63.0-19.el8      rhel-8-baseos-rhui-rpms    110 k
2024-08-06T22:14:58Z:     amazon-ebs:  python3-idna       noarch  2.5-7.el8_10       rhel-8-baseos-rhui-rpms    103 k
2024-08-06T22:14:58Z:     amazon-ebs:  python3-jinja2     noarch  2.10.1-5.el8_10    rhel-8-appstream-rhui-rpms 538 k
2024-08-06T22:14:58Z:     amazon-ebs:  python3-libdnf     aarch64 0.63.0-19.el8      rhel-8-baseos-rhui-rpms    707 k
2024-08-06T22:14:58Z:     amazon-ebs:  python3-librepo    aarch64 1.14.2-5.el8       rhel-8-baseos-rhui-rpms     53 k
2024-08-06T22:14:58Z:     amazon-ebs:  python3-libs       aarch64 3.6.8-62.el8_10    rhel-8-baseos-rhui-rpms    7.7 M
2024-08-06T22:14:58Z:     amazon-ebs:  python3-libselinux aarch64 2.9-8.el8          rhel-8-baseos-rhui-rpms    272 k
2024-08-06T22:14:58Z:     amazon-ebs:  python3-linux-procfs
2024-08-06T22:14:58Z:     amazon-ebs:                     noarch  0.7.3-1.el8        rhel-8-baseos-rhui-rpms     37 k
2024-08-06T22:14:58Z:     amazon-ebs:  python3-magic      noarch  5.33-26.el8        rhel-8-baseos-rhui-rpms     47 k
2024-08-06T22:14:58Z:     amazon-ebs:  python3-perf       aarch64 4.18.0-553.8.1.el8_10
2024-08-06T22:14:58Z:     amazon-ebs:                                                rhel-8-baseos-rhui-rpms     11 M
2024-08-06T22:14:58Z:     amazon-ebs:  python3-pip-wheel  noarch  9.0.3-24.el8       rhel-8-baseos-rhui-rpms    866 k
2024-08-06T22:14:58Z:     amazon-ebs:  python3-policycoreutils
2024-08-06T22:14:58Z:     amazon-ebs:                     noarch  2.9-26.el8_10      rhel-8-baseos-rhui-rpms    2.3 M
2024-08-06T22:14:58Z:     amazon-ebs:  python3-pyserial   noarch  3.1.1-9.el8        rhel-8-appstream-rhui-rpms 169 k
2024-08-06T22:14:58Z:     amazon-ebs:  python3-pytz       noarch  2017.2-11.el8      rhel-8-appstream-rhui-rpms  54 k
2024-08-06T22:14:58Z:     amazon-ebs:  python3-requests   noarch  2.20.0-3.el8_8     rhel-8-baseos-rhui-rpms    124 k
2024-08-06T22:14:58Z:     amazon-ebs:  python3-rpm        aarch64 4.14.3-31.el8      rhel-8-baseos-rhui-rpms    156 k
2024-08-06T22:14:58Z:     amazon-ebs:  python3-setools    aarch64 4.3.0-5.el8        rhel-8-baseos-rhui-rpms    529 k
2024-08-06T22:14:58Z:     amazon-ebs:  python3-subscription-manager-rhsm
2024-08-06T22:14:58Z:     amazon-ebs:                     aarch64 1.28.42-1.el8      rhel-8-baseos-rhui-rpms    404 k
2024-08-06T22:14:58Z:     amazon-ebs:  python3-syspurpose aarch64 1.28.42-1.el8      rhel-8-baseos-rhui-rpms    342 k
2024-08-06T22:14:58Z:     amazon-ebs:  python3-unbound    aarch64 1.16.2-5.el8_9.6   rhel-8-appstream-rhui-rpms 129 k
2024-08-06T22:14:58Z:     amazon-ebs:  python3-urllib3    noarch  1.24.2-7.el8       rhel-8-baseos-rhui-rpms    177 k
2024-08-06T22:14:58Z:     amazon-ebs:  redhat-release     aarch64 8.10-0.3.el8       rhel-8-baseos-rhui-rpms     45 k
2024-08-06T22:14:58Z:     amazon-ebs:  redhat-release-eula
2024-08-06T22:14:58Z:     amazon-ebs:                     aarch64 8.10-0.3.el8       rhel-8-baseos-rhui-rpms     21 k
2024-08-06T22:14:58Z:     amazon-ebs:  rh-amazon-rhui-client
2024-08-06T22:14:58Z:     amazon-ebs:                     noarch  4.0.19-1.el8       rhui-client-config-server-8
2024-08-06T22:14:58Z:     amazon-ebs:                                                                            56 k
2024-08-06T22:14:58Z:     amazon-ebs:  rhc                aarch64 1:0.2.4-5.el8      rhel-8-appstream-rhui-rpms 9.0 M
2024-08-06T22:14:58Z:     amazon-ebs:  rpm                aarch64 4.14.3-31.el8      rhel-8-baseos-rhui-rpms    544 k
2024-08-06T22:14:58Z:     amazon-ebs:  rpm-build-libs     aarch64 4.14.3-31.el8      rhel-8-baseos-rhui-rpms    151 k
2024-08-06T22:14:58Z:     amazon-ebs:  rpm-libs           aarch64 4.14.3-31.el8      rhel-8-baseos-rhui-rpms    330 k
2024-08-06T22:14:58Z:     amazon-ebs:  rpm-plugin-selinux aarch64 4.14.3-31.el8      rhel-8-baseos-rhui-rpms     78 k
2024-08-06T22:14:58Z:     amazon-ebs:  rpm-plugin-systemd-inhibit
2024-08-06T22:14:58Z:     amazon-ebs:                     aarch64 4.14.3-31.el8      rhel-8-baseos-rhui-rpms     79 k
2024-08-06T22:14:58Z:     amazon-ebs:  rsync              aarch64 3.1.3-19.el8_7.1   rhel-8-baseos-rhui-rpms    400 k
2024-08-06T22:14:58Z:     amazon-ebs:  rsyslog            aarch64 8.2102.0-15.el8    rhel-8-appstream-rhui-rpms 741 k
2024-08-06T22:14:58Z:     amazon-ebs:  selinux-policy     noarch  3.14.3-139.el8_10  rhel-8-baseos-rhui-rpms    669 k
2024-08-06T22:14:58Z:     amazon-ebs:  selinux-policy-targeted
2024-08-06T22:14:58Z:     amazon-ebs:                     noarch  3.14.3-139.el8_10  rhel-8-baseos-rhui-rpms     15 M
2024-08-06T22:14:58Z:     amazon-ebs:  setup              noarch  2.12.2-9.el8       rhel-8-baseos-rhui-rpms    181 k
2024-08-06T22:14:58Z:     amazon-ebs:  sg3_utils          aarch64 1.44-6.el8         rhel-8-baseos-rhui-rpms    905 k
2024-08-06T22:14:58Z:     amazon-ebs:  sg3_utils-libs     aarch64 1.44-6.el8         rhel-8-baseos-rhui-rpms     93 k
2024-08-06T22:14:58Z:     amazon-ebs:  shadow-utils       aarch64 2:4.6-22.el8       rhel-8-baseos-rhui-rpms    1.2 M
2024-08-06T22:14:58Z:     amazon-ebs:  shared-mime-info   aarch64 1.9-4.el8          rhel-8-baseos-rhui-rpms    328 k
2024-08-06T22:14:58Z:     amazon-ebs:  shim-aa64          aarch64 15.8-4.el8_9       rhel-8-baseos-rhui-rpms    387 k
2024-08-06T22:14:58Z:     amazon-ebs:  sqlite-libs        aarch64 3.26.0-19.el8_9    rhel-8-baseos-rhui-rpms    551 k
2024-08-06T22:14:58Z:     amazon-ebs:  squashfs-tools     aarch64 4.3-21.el8         rhel-8-baseos-rhui-rpms    162 k
2024-08-06T22:14:58Z:     amazon-ebs:  sssd-client        aarch64 2.9.4-3.el8_10     rhel-8-baseos-rhui-rpms    241 k
2024-08-06T22:14:58Z:     amazon-ebs:  sssd-common        aarch64 2.9.4-3.el8_10     rhel-8-baseos-rhui-rpms    1.6 M
2024-08-06T22:14:58Z:     amazon-ebs:  sssd-kcm           aarch64 2.9.4-3.el8_10     rhel-8-baseos-rhui-rpms    256 k
2024-08-06T22:14:58Z:     amazon-ebs:  sssd-nfs-idmap     aarch64 2.9.4-3.el8_10     rhel-8-baseos-rhui-rpms    129 k
2024-08-06T22:14:58Z:     amazon-ebs:  subscription-manager
2024-08-06T22:14:58Z:     amazon-ebs:                     aarch64 1.28.42-1.el8      rhel-8-baseos-rhui-rpms    1.2 M
2024-08-06T22:14:58Z:     amazon-ebs:  subscription-manager-rhsm-certificates
2024-08-06T22:14:58Z:     amazon-ebs:                     noarch  20220623-1.el8     rhel-8-baseos-rhui-rpms     21 k
2024-08-06T22:14:58Z:     amazon-ebs:  sudo               aarch64 1.9.5p2-1.el8_9    rhel-8-baseos-rhui-rpms    1.0 M
2024-08-06T22:14:58Z:     amazon-ebs:  systemd            aarch64 239-82.el8_10.1    rhel-8-baseos-rhui-rpms    3.3 M
2024-08-06T22:14:58Z:     amazon-ebs:  systemd-libs       aarch64 239-82.el8_10.1    rhel-8-baseos-rhui-rpms    1.0 M
2024-08-06T22:14:58Z:     amazon-ebs:  systemd-pam        aarch64 239-82.el8_10.1    rhel-8-baseos-rhui-rpms    474 k
2024-08-06T22:14:58Z:     amazon-ebs:  systemd-udev       aarch64 239-82.el8_10.1    rhel-8-baseos-rhui-rpms    1.5 M
2024-08-06T22:14:58Z:     amazon-ebs:  tar                aarch64 2:1.30-9.el8       rhel-8-baseos-rhui-rpms    830 k
2024-08-06T22:14:58Z:     amazon-ebs:  teamd              aarch64 1.31-4.el8         rhel-8-baseos-rhui-rpms    127 k
2024-08-06T22:14:58Z:     amazon-ebs:  tpm2-tss           aarch64 2.3.2-6.el8        rhel-8-baseos-rhui-rpms    240 k
2024-08-06T22:14:58Z:     amazon-ebs:  trousers           aarch64 0.3.15-2.el8       rhel-8-baseos-rhui-rpms    148 k
2024-08-06T22:14:58Z:     amazon-ebs:  trousers-lib       aarch64 0.3.15-2.el8       rhel-8-baseos-rhui-rpms    158 k
2024-08-06T22:14:58Z:     amazon-ebs:  tuned              noarch  2.22.1-4.el8_10.1  rhel-8-baseos-rhui-rpms    367 k
2024-08-06T22:14:58Z:     amazon-ebs:  udisks2            aarch64 2.9.0-16.el8       rhel-8-appstream-rhui-rpms 461 k
2024-08-06T22:14:58Z:     amazon-ebs:  unbound-libs       aarch64 1.16.2-5.el8_9.6   rhel-8-appstream-rhui-rpms 538 k
2024-08-06T22:14:58Z:     amazon-ebs:  util-linux         aarch64 2.32.1-46.el8      rhel-8-baseos-rhui-rpms    2.5 M
2024-08-06T22:14:58Z:     amazon-ebs:  virt-what          aarch64 1.25-4.el8         rhel-8-baseos-rhui-rpms     38 k
2024-08-06T22:14:58Z:     amazon-ebs:  volume_key-libs    aarch64 0.3.11-6.el8       rhel-8-appstream-rhui-rpms 148 k
2024-08-06T22:14:58Z:     amazon-ebs:  which              aarch64 2.21-20.el8        rhel-8-baseos-rhui-rpms     49 k
2024-08-06T22:14:58Z:     amazon-ebs:  xfsprogs           aarch64 5.0.0-12.el8       rhel-8-baseos-rhui-rpms    1.1 M
2024-08-06T22:14:58Z:     amazon-ebs:  yum                noarch  4.7.0-20.el8       rhel-8-baseos-rhui-rpms    209 k
2024-08-06T22:14:58Z:     amazon-ebs:  yum-utils          noarch  4.0.21-25.el8      rhel-8-baseos-rhui-rpms     76 k
2024-08-06T22:14:58Z:     amazon-ebs:  zlib               aarch64 1.2.11-25.el8      rhel-8-baseos-rhui-rpms    101 k
2024-08-06T22:14:58Z:     amazon-ebs: Installing dependencies:
2024-08-06T22:14:58Z:     amazon-ebs:  python3-systemd    aarch64 234-8.el8          rhel-8-appstream-rhui-rpms  80 k
2024-08-06T22:14:58Z:     amazon-ebs:
2024-08-06T22:14:58Z:     amazon-ebs: Transaction Summary
2024-08-06T22:14:58Z:     amazon-ebs: ================================================================================
2024-08-06T22:14:58Z:     amazon-ebs: Install    4 Packages
2024-08-06T22:14:58Z:     amazon-ebs: Upgrade  269 Packages
2024-08-06T22:14:59Z:     amazon-ebs:
2024-08-06T22:14:59Z:     amazon-ebs: Total download size: 598 M
2024-08-06T22:14:59Z:     amazon-ebs: Downloading Packages:
2024-08-06T22:14:59Z:     amazon-ebs: (1/273): python3-systemd-234-8.el8.aarch64.rpm  646 kB/s |  80 kB     00:00
2024-08-06T22:14:59Z:     amazon-ebs: (2/273): kernel-4.18.0-553.8.1.el8_10.aarch64.r  17 MB/s |  10 MB     00:00
2024-08-06T22:14:59Z:     amazon-ebs: (3/273): libestr-0.1.10-3.el8.aarch64.rpm       2.5 MB/s |  28 kB     00:00
2024-08-06T22:14:59Z:     amazon-ebs: (4/273): cloud-utils-growpart-0.33-0.el8.noarch 2.7 MB/s |  36 kB     00:00
2024-08-06T22:14:59Z:     amazon-ebs: (5/273): oddjob-0.34.7-3.el8.aarch64.rpm        7.9 MB/s |  78 kB     00:00
2024-08-06T22:14:59Z:     amazon-ebs: (6/273): oddjob-mkhomedir-0.34.7-3.el8.aarch64. 5.5 MB/s |  48 kB     00:00
2024-08-06T22:14:59Z:     amazon-ebs: (7/273): nspr-4.35.0-1.el8_8.aarch64.rpm         13 MB/s | 136 kB     00:00
2024-08-06T22:14:59Z:     amazon-ebs: (8/273): libfastjson-0.99.9-2.el8.aarch64.rpm   4.4 MB/s |  37 kB     00:00
2024-08-06T22:14:59Z:     amazon-ebs: (9/273): rsyslog-8.2102.0-15.el8.aarch64.rpm    3.3 MB/s | 741 kB     00:00
2024-08-06T22:15:00Z:     amazon-ebs: (10/273): udisks2-2.9.0-16.el8.aarch64.rpm      3.3 MB/s | 461 kB     00:00
2024-08-06T22:15:00Z:     amazon-ebs: (11/273): volume_key-libs-0.3.11-6.el8.aarch64. 1.7 MB/s | 148 kB     00:00
2024-08-06T22:15:00Z:     amazon-ebs: (12/273): authselect-compat-1.2.6-2.el8.aarch64 402 kB/s |  38 kB     00:00
2024-08-06T22:15:00Z:     amazon-ebs: (13/273): libmaxminddb-1.2.0-10.el8_9.1.aarch64 255 kB/s |  33 kB     00:00
2024-08-06T22:15:00Z:     amazon-ebs: (14/273): libudisks2-2.9.0-16.el8.aarch64.rpm   3.6 MB/s | 180 kB     00:00
2024-08-06T22:15:00Z:     amazon-ebs: (15/273): python3-pytz-2017.2-11.el8.noarch.rpm 238 kB/s |  54 kB     00:00
2024-08-06T22:15:00Z:     amazon-ebs: (16/273): NetworkManager-cloud-setup-1.40.16-15 1.0 MB/s | 193 kB     00:00
2024-08-06T22:15:00Z:     amazon-ebs: (17/273): python3-unbound-1.16.2-5.el8_9.6.aarc 804 kB/s | 129 kB     00:00
2024-08-06T22:15:00Z:     amazon-ebs: (18/273): unbound-libs-1.16.2-5.el8_9.6.aarch64  21 MB/s | 538 kB     00:00
2024-08-06T22:15:01Z:     amazon-ebs: (19/273): insights-client-3.2.2-2.el8.noarch.rp 7.5 MB/s | 1.3 MB     00:00
2024-08-06T22:15:02Z:     amazon-ebs: (20/273): kernel-modules-4.18.0-553.8.1.el8_10. 6.8 MB/s |  20 MB     00:02
2024-08-06T22:15:02Z:     amazon-ebs: (21/273): libblockdev-2.28-6.el8.aarch64.rpm    140 kB/s | 135 kB     00:00
2024-08-06T22:15:02Z:     amazon-ebs: (22/273): libblockdev-fs-2.28-6.el8.aarch64.rpm 5.5 MB/s |  86 kB     00:00
2024-08-06T22:15:02Z:     amazon-ebs: (23/273): libblockdev-loop-2.28-6.el8.aarch64.r 3.4 MB/s |  71 kB     00:00
2024-08-06T22:15:02Z:     amazon-ebs: (24/273): libblockdev-crypto-2.28-6.el8.aarch64 1.7 MB/s |  81 kB     00:00
2024-08-06T22:15:02Z:     amazon-ebs: (25/273): libblockdev-mdraid-2.28-6.el8.aarch64 427 kB/s |  78 kB     00:00
2024-08-06T22:15:02Z:     amazon-ebs: (26/273): libblockdev-part-2.28-6.el8.aarch64.r 447 kB/s |  80 kB     00:00
2024-08-06T22:15:02Z:     amazon-ebs: (27/273): libblockdev-swap-2.28-6.el8.aarch64.r 6.4 MB/s |  73 kB     00:00
2024-08-06T22:15:02Z:     amazon-ebs: (28/273): python3-pyserial-3.1.1-9.el8.noarch.r  13 MB/s | 169 kB     00:00
2024-08-06T22:15:02Z:     amazon-ebs: (29/273): libblockdev-utils-2.28-6.el8.aarch64. 3.2 MB/s |  80 kB     00:00
2024-08-06T22:15:02Z:     amazon-ebs: (30/273): nss-3.90.0-7.el8_10.aarch64.rpm       1.7 MB/s | 710 kB     00:00
2024-08-06T22:15:04Z:     amazon-ebs: (31/273): kernel-core-4.18.0-553.8.1.el8_10.aar 6.6 MB/s |  40 MB     00:06
2024-08-06T22:15:05Z:     amazon-ebs: (32/273): nss-softokn-3.90.0-7.el8_10.aarch64.r 489 kB/s | 1.2 MB     00:02
2024-08-06T22:15:05Z:     amazon-ebs: (33/273): nss-softokn-freebl-3.90.0-7.el8_10.aa 777 kB/s | 340 kB     00:00
2024-08-06T22:15:05Z:     amazon-ebs: (34/273): nss-sysinit-3.90.0-7.el8_10.aarch64.r 289 kB/s |  75 kB     00:00
2024-08-06T22:15:05Z:     amazon-ebs: (35/273): rhc-0.2.4-5.el8.aarch64.rpm           2.6 MB/s | 9.0 MB     00:03
2024-08-06T22:15:05Z:     amazon-ebs: (36/273): nss-util-3.90.0-7.el8_10.aarch64.rpm  252 kB/s | 136 kB     00:00
2024-08-06T22:15:06Z:     amazon-ebs: (37/273): python3-jinja2-2.10.1-5.el8_10.noarch 1.2 MB/s | 538 kB     00:00
2024-08-06T22:15:06Z:     amazon-ebs: (38/273): ethtool-5.13-2.el8.aarch64.rpm        739 kB/s | 212 kB     00:00
2024-08-06T22:15:06Z:     amazon-ebs: (39/273): cloud-init-23.4-7.el8_10.3.noarch.rpm 1.1 MB/s | 1.3 MB     00:01
2024-08-06T22:15:06Z:     amazon-ebs: (40/273): gdbm-1.18-2.el8.aarch64.rpm           256 kB/s | 128 kB     00:00
2024-08-06T22:15:06Z:     amazon-ebs: (41/273): freetype-2.9.1-9.el8.aarch64.rpm      627 kB/s | 370 kB     00:00
2024-08-06T22:15:07Z:     amazon-ebs: (42/273): initscripts-10.00.18-1.el8.aarch64.rp 1.1 MB/s | 340 kB     00:00
2024-08-06T22:15:07Z:     amazon-ebs: (43/273): gdbm-libs-1.18-2.el8.aarch64.rpm      105 kB/s |  59 kB     00:00
2024-08-06T22:15:07Z:     amazon-ebs: (44/273): libbasicobjects-0.1.1-40.el8.aarch64. 1.2 MB/s |  31 kB     00:00
2024-08-06T22:15:07Z:     amazon-ebs: (45/273): gdisk-1.0.3-11.el8.aarch64.rpm        465 kB/s | 226 kB     00:00
2024-08-06T22:15:07Z:     amazon-ebs: (46/273): libcollection-0.7.0-40.el8.aarch64.rp 562 kB/s |  47 kB     00:00
2024-08-06T22:15:07Z:     amazon-ebs: (47/273): libbpf-0.5.0-1.el8.aarch64.rpm        978 kB/s | 132 kB     00:00
2024-08-06T22:15:07Z:     amazon-ebs: (48/273): libdhash-0.5.0-40.el8.aarch64.rpm     237 kB/s |  34 kB     00:00
2024-08-06T22:15:07Z:     amazon-ebs: (49/273): libini_config-1.3.1-40.el8.aarch64.rp 388 kB/s |  69 kB     00:00
2024-08-06T22:15:07Z:     amazon-ebs: (50/273): libnl3-3.7.0-1.el8.aarch64.rpm        1.6 MB/s | 317 kB     00:00
2024-08-06T22:15:07Z:     amazon-ebs: (51/273): libpath_utils-0.2.1-40.el8.aarch64.rp 468 kB/s |  34 kB     00:00
2024-08-06T22:15:07Z:     amazon-ebs: (52/273): libverto-0.3.2-2.el8.aarch64.rpm      676 kB/s |  24 kB     00:00
2024-08-06T22:15:07Z:     amazon-ebs: (53/273): mokutil-0.3.0-12.el8.aarch64.rpm      767 kB/s |  44 kB     00:00
2024-08-06T22:15:07Z:     amazon-ebs: (54/273): sg3_utils-1.44-6.el8.aarch64.rpm      3.3 MB/s | 905 kB     00:00
2024-08-06T22:15:07Z:     amazon-ebs: (55/273): libnl3-cli-3.7.0-1.el8.aarch64.rpm    385 kB/s | 193 kB     00:00
2024-08-06T22:15:07Z:     amazon-ebs: (56/273): libref_array-0.1.5-40.el8.aarch64.rpm  76 kB/s |  33 kB     00:00
2024-08-06T22:15:08Z:     amazon-ebs: (57/273): sg3_utils-libs-1.44-6.el8.aarch64.rpm 452 kB/s |  93 kB     00:00
2024-08-06T22:15:08Z:     amazon-ebs: (58/273): coreutils-8.30-15.el8.aarch64.rpm     2.6 MB/s | 1.2 MB     00:00
2024-08-06T22:15:08Z:     amazon-ebs: (59/273): libffi-3.1-24.el8.aarch64.rpm         124 kB/s |  37 kB     00:00
2024-08-06T22:15:08Z:     amazon-ebs: (60/273): libksba-1.3.5-9.el8_7.aarch64.rpm     1.3 MB/s | 130 kB     00:00
2024-08-06T22:15:08Z:     amazon-ebs: (61/273): libnfsidmap-2.3.3-59.el8.aarch64.rpm  722 kB/s | 121 kB     00:00
2024-08-06T22:15:08Z:     amazon-ebs: (62/273): coreutils-common-8.30-15.el8.aarch64. 2.0 MB/s | 2.0 MB     00:00
2024-08-06T22:15:08Z:     amazon-ebs: (63/273): librhsm-0.0.3-5.el8.aarch64.rpm        84 kB/s |  33 kB     00:00
2024-08-06T22:15:08Z:     amazon-ebs: (64/273): libpwquality-1.4.4-6.el8.aarch64.rpm  194 kB/s | 106 kB     00:00
2024-08-06T22:15:09Z:     amazon-ebs: (65/273): libselinux-2.9-8.el8.aarch64.rpm      606 kB/s | 162 kB     00:00
2024-08-06T22:15:09Z:     amazon-ebs: (66/273): libtasn1-4.13-4.el8_7.aarch64.rpm     372 kB/s |  75 kB     00:00
2024-08-06T22:15:09Z:     amazon-ebs: (67/273): libselinux-utils-2.9-8.el8.aarch64.rp 641 kB/s | 241 kB     00:00
2024-08-06T22:15:09Z:     amazon-ebs: (68/273): libteam-1.31-4.el8.aarch64.rpm        255 kB/s |  63 kB     00:00
2024-08-06T22:15:09Z:     amazon-ebs: (69/273): lmdb-libs-0.9.24-2.el8.aarch64.rpm    203 kB/s |  57 kB     00:00
2024-08-06T22:15:09Z:     amazon-ebs: (70/273): logrotate-3.14.0-6.el8.aarch64.rpm    312 kB/s |  83 kB     00:00
2024-08-06T22:15:09Z:     amazon-ebs: (71/273): openssl-pkcs11-0.4.10-3.el8.aarch64.r 419 kB/s |  65 kB     00:00
2024-08-06T22:15:09Z:     amazon-ebs: (72/273): pciutils-3.7.0-3.el8.aarch64.rpm      255 kB/s | 102 kB     00:00
2024-08-06T22:15:09Z:     amazon-ebs: (73/273): pciutils-libs-3.7.0-3.el8.aarch64.rpm 160 kB/s |  52 kB     00:00
2024-08-06T22:15:09Z:     amazon-ebs: (74/273): python3-libselinux-2.9-8.el8.aarch64. 829 kB/s | 272 kB     00:00
2024-08-06T22:15:10Z:     amazon-ebs: (75/273): rsync-3.1.3-19.el8_7.1.aarch64.rpm    1.5 MB/s | 400 kB     00:00
2024-08-06T22:15:10Z:     amazon-ebs: (76/273): setup-2.12.2-9.el8.noarch.rpm         517 kB/s | 181 kB     00:00
2024-08-06T22:15:10Z:     amazon-ebs: (77/273): teamd-1.31-4.el8.aarch64.rpm          932 kB/s | 127 kB     00:00
2024-08-06T22:15:10Z:     amazon-ebs: (78/273): tar-1.30-9.el8.aarch64.rpm            1.5 MB/s | 830 kB     00:00
2024-08-06T22:15:10Z:     amazon-ebs: (79/273): authselect-libs-1.2.6-2.el8.aarch64.r 779 kB/s | 242 kB     00:00
2024-08-06T22:15:10Z:     amazon-ebs: (80/273): chkconfig-1.19.2-1.el8.aarch64.rpm    532 kB/s | 197 kB     00:00
2024-08-06T22:15:11Z:     amazon-ebs: (81/273): crypto-policies-20230731-1.git3177e06 666 kB/s |  64 kB     00:00
2024-08-06T22:15:11Z:     amazon-ebs: (82/273): cryptsetup-libs-2.3.7-7.el8.aarch64.r 1.5 MB/s | 474 kB     00:00
2024-08-06T22:15:11Z:     amazon-ebs: (83/273): authselect-1.2.6-2.el8.aarch64.rpm    132 kB/s | 147 kB     00:01
2024-08-06T22:15:11Z:     amazon-ebs: (84/273): dbus-1.12.8-26.el8.aarch64.rpm        1.9 MB/s |  42 kB     00:00
2024-08-06T22:15:11Z:     amazon-ebs: (85/273): ca-certificates-2023.2.60_v7.0.306-80 1.0 MB/s | 935 kB     00:00
2024-08-06T22:15:11Z:     amazon-ebs: (86/273): kbd-2.0.4-11.el8.aarch64.rpm          1.8 MB/s | 381 kB     00:00
2024-08-06T22:15:11Z:     amazon-ebs: (87/273): dbus-libs-1.12.8-26.el8.aarch64.rpm   835 kB/s | 177 kB     00:00
2024-08-06T22:15:11Z:     amazon-ebs: (88/273): kbd-misc-2.0.4-11.el8.noarch.rpm      4.8 MB/s | 1.5 MB     00:00
2024-08-06T22:15:12Z:     amazon-ebs: (89/273): kbd-legacy-2.0.4-11.el8.noarch.rpm    636 kB/s | 481 kB     00:00
2024-08-06T22:15:12Z:     amazon-ebs: (90/273): libarchive-3.3.3-5.el8.aarch64.rpm    601 kB/s | 340 kB     00:00
2024-08-06T22:15:12Z:     amazon-ebs: (91/273): libsolv-0.7.20-6.el8.aarch64.rpm      821 kB/s | 342 kB     00:00
2024-08-06T22:15:12Z:     amazon-ebs: (92/273): libuser-0.62-25.el8.aarch64.rpm       1.2 MB/s | 409 kB     00:00
2024-08-06T22:15:12Z:     amazon-ebs: (93/273): memstrack-0.2.5-2.el8.aarch64.rpm     278 kB/s |  51 kB     00:00
2024-08-06T22:15:12Z:     amazon-ebs: (94/273): python3-requests-2.20.0-3.el8_8.noarc  12 MB/s | 124 kB     00:00
2024-08-06T22:15:12Z:     amazon-ebs: (95/273): python3-setools-4.3.0-5.el8.aarch64.r 1.4 MB/s | 529 kB     00:00
2024-08-06T22:15:12Z:     amazon-ebs: (96/273): ncurses-libs-6.1-10.20180224.el8.aarc 773 kB/s | 310 kB     00:00
2024-08-06T22:15:12Z:     amazon-ebs: (97/273): ncurses-6.1-10.20180224.el8.aarch64.r 652 kB/s | 383 kB     00:00
2024-08-06T22:15:12Z:     amazon-ebs: (98/273): subscription-manager-rhsm-certificate 1.5 MB/s |  21 kB     00:00
2024-08-06T22:15:13Z:     amazon-ebs: (99/273): NetworkManager-1.40.16-15.el8_9.aarch 8.3 MB/s | 2.1 MB     00:00
2024-08-06T22:15:13Z:     amazon-ebs: (100/273): which-2.21-20.el8.aarch64.rpm        186 kB/s |  49 kB     00:00
2024-08-06T22:15:13Z:     amazon-ebs: (101/273): zlib-1.2.11-25.el8.aarch64.rpm       252 kB/s | 101 kB     00:00
2024-08-06T22:15:13Z:     amazon-ebs: (102/273): NetworkManager-libnm-1.40.16-15.el8_ 5.7 MB/s | 1.9 MB     00:00
2024-08-06T22:15:13Z:     amazon-ebs: (103/273): crypto-policies-scripts-20230731-1.g 3.8 MB/s |  84 kB     00:00
2024-08-06T22:15:13Z:     amazon-ebs: (104/273): dbus-common-1.12.8-26.el8.noarch.rpm 3.4 MB/s |  47 kB     00:00
2024-08-06T22:15:13Z:     amazon-ebs: (105/273): dbus-daemon-1.12.8-26.el8.aarch64.rp  11 MB/s | 234 kB     00:00
2024-08-06T22:15:13Z:     amazon-ebs: (106/273): dbus-tools-1.12.8-26.el8.aarch64.rpm 586 kB/s |  85 kB     00:00
2024-08-06T22:15:13Z:     amazon-ebs: (107/273): NetworkManager-team-1.40.16-15.el8_9 248 kB/s | 159 kB     00:00
2024-08-06T22:15:13Z:     amazon-ebs: (108/273): NetworkManager-tui-1.40.16-15.el8_9. 537 kB/s | 342 kB     00:00
2024-08-06T22:15:14Z:     amazon-ebs: (109/273): gnutls-3.6.16-8.el8_9.3.aarch64.rpm  1.6 MB/s | 940 kB     00:00
2024-08-06T22:15:14Z:     amazon-ebs: (110/273): iputils-20180629-11.el8.aarch64.rpm  339 kB/s | 148 kB     00:00
2024-08-06T22:15:14Z:     amazon-ebs: (111/273): fwupd-1.7.8-2.el8.aarch64.rpm        3.4 MB/s | 3.3 MB     00:00
2024-08-06T22:15:14Z:     amazon-ebs: (112/273): irqbalance-1.9.2-1.el8.aarch64.rpm   270 kB/s |  76 kB     00:00
2024-08-06T22:15:14Z:     amazon-ebs: (113/273): libcap-2.48-6.el8_9.aarch64.rpm      261 kB/s |  74 kB     00:00
2024-08-06T22:15:14Z:     amazon-ebs: (114/273): ncurses-base-6.1-10.20180224.el8.noa 7.3 MB/s |  81 kB     00:00
2024-08-06T22:15:14Z:     amazon-ebs: (115/273): procps-ng-3.3.15-14.el8.aarch64.rpm  2.2 MB/s | 329 kB     00:00
2024-08-06T22:15:14Z:     amazon-ebs: (116/273): python3-cffi-1.11.5-6.el8.aarch64.rp 9.4 MB/s | 239 kB     00:00
2024-08-06T22:15:14Z:     amazon-ebs: (117/273): python3-cryptography-3.2.1-7.el8_9.a 4.2 MB/s | 543 kB     00:00
2024-08-06T22:15:14Z:     amazon-ebs: (118/273): shim-aa64-15.8-4.el8_9.aarch64.rpm    25 MB/s | 387 kB     00:00
2024-08-06T22:15:15Z:     amazon-ebs: (119/273): sqlite-libs-3.26.0-19.el8_9.aarch64. 1.7 MB/s | 551 kB     00:00
2024-08-06T22:15:15Z:     amazon-ebs: (120/273): openssl-1.1.1k-12.el8_9.aarch64.rpm  888 kB/s | 692 kB     00:00
2024-08-06T22:15:15Z:     amazon-ebs: (121/273): openssl-libs-1.1.1k-12.el8_9.aarch64 1.4 MB/s | 1.3 MB     00:00
2024-08-06T22:15:15Z:     amazon-ebs: (122/273): virt-what-1.25-4.el8.aarch64.rpm     200 kB/s |  38 kB     00:00
2024-08-06T22:15:15Z:     amazon-ebs: (123/273): sudo-1.9.5p2-1.el8_9.aarch64.rpm     2.1 MB/s | 1.0 MB     00:00
2024-08-06T22:15:15Z:     amazon-ebs: (124/273): acl-2.2.53-3.el8.aarch64.rpm         606 kB/s |  80 kB     00:00
2024-08-06T22:15:15Z:     amazon-ebs: (125/273): xfsprogs-5.0.0-12.el8.aarch64.rpm    3.0 MB/s | 1.1 MB     00:00
2024-08-06T22:15:15Z:     amazon-ebs: (126/273): audit-3.1.2-1.el8.aarch64.rpm        1.1 MB/s | 257 kB     00:00
2024-08-06T22:15:16Z:     amazon-ebs: (127/273): chrony-4.5-1.el8.aarch64.rpm         2.6 MB/s | 339 kB     00:00
2024-08-06T22:15:16Z:     amazon-ebs: (128/273): cronie-1.5.2-10.el8.aarch64.rpm       11 MB/s | 118 kB     00:00
2024-08-06T22:15:16Z:     amazon-ebs: (129/273): cronie-anacron-1.5.2-10.el8.aarch64. 2.6 MB/s |  42 kB     00:00
2024-08-06T22:15:16Z:     amazon-ebs: (130/273): curl-7.61.1-34.el8.aarch64.rpm        18 MB/s | 350 kB     00:00
2024-08-06T22:15:16Z:     amazon-ebs: (131/273): device-mapper-1.02.181-14.el8.aarch6 2.2 MB/s | 375 kB     00:00
2024-08-06T22:15:16Z:     amazon-ebs: (132/273): device-mapper-libs-1.02.181-14.el8.a 2.7 MB/s | 399 kB     00:00
2024-08-06T22:15:16Z:     amazon-ebs: (133/273): audit-libs-3.1.2-1.el8.aarch64.rpm   154 kB/s | 120 kB     00:00
2024-08-06T22:15:16Z:     amazon-ebs: (134/273): dmidecode-3.5-1.el8.aarch64.rpm      726 kB/s |  80 kB     00:00
2024-08-06T22:15:17Z:     amazon-ebs: (135/273): bash-4.4.20-5.el8.aarch64.rpm        1.4 MB/s | 1.5 MB     00:01
2024-08-06T22:15:17Z:     amazon-ebs: (136/273): dnf-data-4.7.0-20.el8.noarch.rpm     310 kB/s | 157 kB     00:00
2024-08-06T22:15:17Z:     amazon-ebs: (137/273): dnf-plugin-subscription-manager-1.28 2.3 MB/s | 325 kB     00:00
2024-08-06T22:15:17Z:     amazon-ebs: (138/273): dnf-4.7.0-20.el8.noarch.rpm          699 kB/s | 543 kB     00:00
2024-08-06T22:15:17Z:     amazon-ebs: (139/273): dnf-plugins-core-4.0.21-25.el8.noarc 332 kB/s |  77 kB     00:00
2024-08-06T22:15:17Z:     amazon-ebs: (140/273): dracut-049-233.git20240115.el8.aarch 1.5 MB/s | 377 kB     00:00
2024-08-06T22:15:17Z:     amazon-ebs: (141/273): dracut-config-generic-049-233.git202 564 kB/s |  62 kB     00:00
2024-08-06T22:15:17Z:     amazon-ebs: (142/273): dracut-config-rescue-049-233.git2024 580 kB/s |  63 kB     00:00
2024-08-06T22:15:17Z:     amazon-ebs: (143/273): dracut-network-049-233.git20240115.e 5.4 MB/s | 111 kB     00:00
2024-08-06T22:15:17Z:     amazon-ebs: (144/273): elfutils-debuginfod-client-0.190-2.e 3.0 MB/s |  75 kB     00:00
2024-08-06T22:15:17Z:     amazon-ebs: (145/273): dracut-squash-049-233.git20240115.el 2.1 MB/s |  64 kB     00:00
2024-08-06T22:15:17Z:     amazon-ebs: (146/273): elfutils-libelf-0.190-2.el8.aarch64.  18 MB/s | 231 kB     00:00
2024-08-06T22:15:17Z:     amazon-ebs: (147/273): elfutils-default-yama-scope-0.190-2. 1.5 MB/s |  53 kB     00:00
2024-08-06T22:15:17Z:     amazon-ebs: (148/273): expat-2.2.5-13.el8_10.aarch64.rpm    7.4 MB/s | 104 kB     00:00
2024-08-06T22:15:17Z:     amazon-ebs: (149/273): elfutils-libs-0.190-2.el8.aarch64.rp 1.3 MB/s | 294 kB     00:00
2024-08-06T22:15:17Z:     amazon-ebs: (150/273): file-5.33-26.el8.aarch64.rpm         393 kB/s |  78 kB     00:00
2024-08-06T22:15:17Z:     amazon-ebs: (151/273): file-libs-5.33-26.el8.aarch64.rpm    1.6 MB/s | 542 kB     00:00
2024-08-06T22:15:17Z:     amazon-ebs: (152/273): fuse-libs-2.9.7-19.el8.aarch64.rpm   668 kB/s |  98 kB     00:00
2024-08-06T22:15:17Z:     amazon-ebs: (153/273): findutils-4.6.0-22.el8.aarch64.rpm   1.7 MB/s | 524 kB     00:00
2024-08-06T22:15:18Z:     amazon-ebs: (154/273): gpgme-1.13.1-12.el8.aarch64.rpm      1.2 MB/s | 323 kB     00:00
2024-08-06T22:15:18Z:     amazon-ebs: (155/273): grub2-common-2.02-156.el8.noarch.rpm 3.8 MB/s | 896 kB     00:00
2024-08-06T22:15:18Z:     amazon-ebs: (156/273): grub2-efi-aa64-2.02-156.el8.aarch64. 1.4 MB/s | 467 kB     00:00
2024-08-06T22:15:18Z:     amazon-ebs: (157/273): glib2-2.56.4-162.el8.aarch64.rpm     3.1 MB/s | 2.4 MB     00:00
2024-08-06T22:15:18Z:     amazon-ebs: (158/273): grub2-tools-extra-2.02-156.el8.aarch 2.1 MB/s | 1.0 MB     00:00
2024-08-06T22:15:19Z:     amazon-ebs: (159/273): grub2-tools-2.02-156.el8.aarch64.rpm 2.1 MB/s | 1.8 MB     00:00
2024-08-06T22:15:19Z:     amazon-ebs: (160/273): grubby-8.40-49.el8.aarch64.rpm       279 kB/s |  50 kB     00:00
2024-08-06T22:15:19Z:     amazon-ebs: (161/273): grub2-tools-minimal-2.02-156.el8.aar 452 kB/s | 204 kB     00:00
2024-08-06T22:15:19Z:     amazon-ebs: (162/273): kmod-25-20.el8.aarch64.rpm           6.6 MB/s | 123 kB     00:00
2024-08-06T22:15:19Z:     amazon-ebs: (163/273): kmod-libs-25-20.el8.aarch64.rpm      4.9 MB/s |  66 kB     00:00
2024-08-06T22:15:19Z:     amazon-ebs: (164/273): kpartx-0.8.4-41.el8.aarch64.rpm      7.2 MB/s | 119 kB     00:00
2024-08-06T22:15:19Z:     amazon-ebs: (165/273): libacl-2.2.53-3.el8.aarch64.rpm      1.9 MB/s |  34 kB     00:00
2024-08-06T22:15:19Z:     amazon-ebs: (166/273): libblkid-2.32.1-46.el8.aarch64.rpm   991 kB/s | 215 kB     00:00
2024-08-06T22:15:19Z:     amazon-ebs: (167/273): iproute-6.2.0-6.el8_10.aarch64.rpm   2.0 MB/s | 850 kB     00:00
2024-08-06T22:15:19Z:     amazon-ebs: (168/273): libcurl-7.61.1-34.el8.aarch64.rpm    2.0 MB/s | 285 kB     00:00
2024-08-06T22:15:19Z:     amazon-ebs: (169/273): hwdata-0.314-8.22.el8.noarch.rpm     2.7 MB/s | 1.8 MB     00:00
2024-08-06T22:15:19Z:     amazon-ebs: (170/273): libfdisk-2.32.1-46.el8.aarch64.rpm   922 kB/s | 244 kB     00:00
2024-08-06T22:15:20Z:     amazon-ebs: (171/273): libdnf-0.63.0-19.el8.aarch64.rpm     963 kB/s | 628 kB     00:00
2024-08-06T22:15:20Z:     amazon-ebs: (172/273): libkcapi-hmaccalc-1.4.0-2.el8.aarch6  85 kB/s |  32 kB     00:00
2024-08-06T22:15:20Z:     amazon-ebs: (173/273): libkcapi-1.4.0-2.el8.aarch64.rpm     133 kB/s |  52 kB     00:00
2024-08-06T22:15:20Z:     amazon-ebs: (174/273): libldb-2.8.0-0.el8.aarch64.rpm        14 MB/s | 186 kB     00:00
2024-08-06T22:15:20Z:     amazon-ebs: (175/273): librepo-1.14.2-5.el8.aarch64.rpm     4.8 MB/s |  88 kB     00:00
2024-08-06T22:15:20Z:     amazon-ebs: (176/273): libmount-2.32.1-46.el8.aarch64.rpm   9.2 MB/s | 230 kB     00:00
2024-08-06T22:15:20Z:     amazon-ebs: (177/273): libssh-0.9.6-14.el8.aarch64.rpm      1.3 MB/s | 210 kB     00:00
2024-08-06T22:15:20Z:     amazon-ebs: (178/273): libssh-config-0.9.6-14.el8.noarch.rp 140 kB/s |  21 kB     00:00
2024-08-06T22:15:20Z:     amazon-ebs: (179/273): libsmartcols-2.32.1-46.el8.aarch64.r 1.0 MB/s | 175 kB     00:00
2024-08-06T22:15:20Z:     amazon-ebs: (180/273): libtalloc-2.4.1-0.el8.aarch64.rpm    4.0 MB/s |  47 kB     00:00
2024-08-06T22:15:20Z:     amazon-ebs: (181/273): libtdb-1.4.9-0.el8.aarch64.rpm       4.5 MB/s |  59 kB     00:00
2024-08-06T22:15:20Z:     amazon-ebs: (182/273): libtevent-0.16.0-0.el8.aarch64.rpm   2.9 MB/s |  52 kB     00:00
2024-08-06T22:15:20Z:     amazon-ebs: (183/273): libuuid-2.32.1-46.el8.aarch64.rpm    7.0 MB/s |  99 kB     00:00
2024-08-06T22:15:20Z:     amazon-ebs: (184/273): mdadm-4.2-14.el8_10.aarch64.rpm       19 MB/s | 450 kB     00:00
2024-08-06T22:15:20Z:     amazon-ebs: (185/273): numactl-libs-2.0.16-4.el8.aarch64.rp 1.5 MB/s |  37 kB     00:00
2024-08-06T22:15:20Z:     amazon-ebs: (186/273): openssh-8.0p1-24.el8.aarch64.rpm     1.7 MB/s | 491 kB     00:00
2024-08-06T22:15:20Z:     amazon-ebs: (187/273): openssh-server-8.0p1-24.el8.aarch64. 998 kB/s | 478 kB     00:00
2024-08-06T22:15:21Z:     amazon-ebs: (188/273): openssh-clients-8.0p1-24.el8.aarch64 850 kB/s | 628 kB     00:00
2024-08-06T22:15:21Z:     amazon-ebs: (189/273): p11-kit-trust-0.23.22-2.el8.aarch64. 532 kB/s | 135 kB     00:00
2024-08-06T22:15:21Z:     amazon-ebs: (190/273): p11-kit-0.23.22-2.el8.aarch64.rpm    656 kB/s | 309 kB     00:00
2024-08-06T22:15:21Z:     amazon-ebs: (191/273): python3-audit-3.1.2-1.el8.aarch64.rp 8.0 MB/s |  86 kB     00:00
2024-08-06T22:15:21Z:     amazon-ebs: (192/273): python3-dnf-4.7.0-20.el8.noarch.rpm  5.4 MB/s | 550 kB     00:00
2024-08-06T22:15:21Z:     amazon-ebs: (193/273): python3-cloud-what-1.28.42-1.el8.aar 1.5 MB/s | 325 kB     00:00
2024-08-06T22:15:21Z:     amazon-ebs: (194/273): python3-dnf-plugins-core-4.0.21-25.e 1.0 MB/s | 263 kB     00:00
2024-08-06T22:15:21Z:     amazon-ebs: (195/273): platform-python-pip-9.0.3-24.el8.noa 2.5 MB/s | 1.6 MB     00:00
2024-08-06T22:15:21Z:     amazon-ebs: (196/273): python3-hawkey-0.63.0-19.el8.aarch64 410 kB/s | 110 kB     00:00
2024-08-06T22:15:21Z:     amazon-ebs: (197/273): python3-librepo-1.14.2-5.el8.aarch64 4.4 MB/s |  53 kB     00:00
2024-08-06T22:15:21Z:     amazon-ebs: (198/273): python3-linux-procfs-0.7.3-1.el8.noa 2.1 MB/s |  37 kB     00:00
2024-08-06T22:15:21Z:     amazon-ebs: (199/273): python3-gpg-1.13.1-12.el8.aarch64.rp 522 kB/s | 236 kB     00:00
2024-08-06T22:15:21Z:     amazon-ebs: (200/273): python3-magic-5.33-26.el8.noarch.rpm 4.8 MB/s |  47 kB     00:00
2024-08-06T22:15:21Z:     amazon-ebs: (201/273): python3-libdnf-0.63.0-19.el8.aarch64 5.1 MB/s | 707 kB     00:00
2024-08-06T22:15:21Z:     amazon-ebs: (202/273): python3-rpm-4.14.3-31.el8.aarch64.rp 1.6 MB/s | 156 kB     00:00
2024-08-06T22:15:21Z:     amazon-ebs: (203/273): python3-pip-wheel-9.0.3-24.el8.noarc 4.1 MB/s | 866 kB     00:00
2024-08-06T22:15:22Z:     amazon-ebs: (204/273): python3-syspurpose-1.28.42-1.el8.aar 1.1 MB/s | 342 kB     00:00
2024-08-06T22:15:22Z:     amazon-ebs: (205/273): python3-subscription-manager-rhsm-1. 897 kB/s | 404 kB     00:00
2024-08-06T22:15:22Z:     amazon-ebs: (206/273): rpm-4.14.3-31.el8.aarch64.rpm        1.7 MB/s | 544 kB     00:00
2024-08-06T22:15:22Z:     amazon-ebs: (207/273): rpm-build-libs-4.14.3-31.el8.aarch64 649 kB/s | 151 kB     00:00
2024-08-06T22:15:22Z:     amazon-ebs: (208/273): python3-urllib3-1.24.2-7.el8.noarch. 302 kB/s | 177 kB     00:00
2024-08-06T22:15:22Z:     amazon-ebs: (209/273): rpm-libs-4.14.3-31.el8.aarch64.rpm   1.8 MB/s | 330 kB     00:00
2024-08-06T22:15:22Z:     amazon-ebs: (210/273): rpm-plugin-selinux-4.14.3-31.el8.aar 371 kB/s |  78 kB     00:00
2024-08-06T22:15:22Z:     amazon-ebs: (211/273): rpm-plugin-systemd-inhibit-4.14.3-31 378 kB/s |  79 kB     00:00
2024-08-06T22:15:23Z:     amazon-ebs: (212/273): selinux-policy-3.14.3-139.el8_10.noa 1.0 MB/s | 669 kB     00:00
2024-08-06T22:15:23Z:     amazon-ebs: (213/273): shadow-utils-4.6-22.el8.aarch64.rpm  1.7 MB/s | 1.2 MB     00:00
2024-08-06T22:15:23Z:     amazon-ebs: (214/273): shared-mime-info-1.9-4.el8.aarch64.r 764 kB/s | 328 kB     00:00
2024-08-06T22:15:23Z:     amazon-ebs: (215/273): squashfs-tools-4.3-21.el8.aarch64.rp 558 kB/s | 162 kB     00:00
2024-08-06T22:15:23Z:     amazon-ebs: (216/273): subscription-manager-1.28.42-1.el8.a 5.6 MB/s | 1.2 MB     00:00
2024-08-06T22:15:23Z:     amazon-ebs: (217/273): tpm2-tss-2.3.2-6.el8.aarch64.rpm     1.2 MB/s | 240 kB     00:00
2024-08-06T22:15:23Z:     amazon-ebs: (218/273): trousers-0.3.15-2.el8.aarch64.rpm    1.6 MB/s | 148 kB     00:00
2024-08-06T22:15:23Z:     amazon-ebs: (219/273): trousers-lib-0.3.15-2.el8.aarch64.rp 3.2 MB/s | 158 kB     00:00
2024-08-06T22:15:24Z:     amazon-ebs: (220/273): yum-4.7.0-20.el8.noarch.rpm          2.1 MB/s | 209 kB     00:00
2024-08-06T22:15:24Z:     amazon-ebs: (221/273): yum-utils-4.0.21-25.el8.noarch.rpm   3.5 MB/s |  76 kB     00:00
2024-08-06T22:15:24Z:     amazon-ebs: (222/273): util-linux-2.32.1-46.el8.aarch64.rpm 2.8 MB/s | 2.5 MB     00:00
2024-08-06T22:15:25Z:     amazon-ebs: (223/273): bind-export-libs-9.11.36-14.el8_10.a 1.0 MB/s | 1.1 MB     00:01
2024-08-06T22:15:25Z:     amazon-ebs: (224/273): dhcp-client-4.3.6-50.el8_10.aarch64. 954 kB/s | 307 kB     00:00
2024-08-06T22:15:25Z:     amazon-ebs: (225/273): dhcp-common-4.3.6-50.el8_10.noarch.r 640 kB/s | 208 kB     00:00
2024-08-06T22:15:25Z:     amazon-ebs: (226/273): dhcp-libs-4.3.6-50.el8_10.aarch64.rp 447 kB/s | 146 kB     00:00
2024-08-06T22:15:25Z:     amazon-ebs: (227/273): libgcc-8.5.0-22.el8_10.aarch64.rpm   906 kB/s |  75 kB     00:00
2024-08-06T22:15:25Z:     amazon-ebs: (228/273): libgomp-8.5.0-22.el8_10.aarch64.rpm  2.4 MB/s | 200 kB     00:00
2024-08-06T22:15:25Z:     amazon-ebs: (229/273): libsss_autofs-2.9.4-3.el8_10.aarch64 1.9 MB/s | 130 kB     00:00
2024-08-06T22:15:25Z:     amazon-ebs: (230/273): libsss_certmap-2.9.4-3.el8_10.aarch6 2.2 MB/s | 184 kB     00:00
2024-08-06T22:15:25Z:     amazon-ebs: (231/273): libsss_idmap-2.9.4-3.el8_10.aarch64. 1.3 MB/s | 132 kB     00:00
2024-08-06T22:15:25Z:     amazon-ebs: (232/273): libsss_nss_idmap-2.9.4-3.el8_10.aarc 2.2 MB/s | 140 kB     00:00
2024-08-06T22:15:26Z:     amazon-ebs: (233/273): libstdc++-8.5.0-22.el8_10.aarch64.rp 1.4 MB/s | 425 kB     00:00
2024-08-06T22:15:26Z:     amazon-ebs: (234/273): selinux-policy-targeted-3.14.3-139.e 4.0 MB/s |  15 MB     00:03
2024-08-06T22:15:26Z:     amazon-ebs: (235/273): libsss_sudo-2.9.4-3.el8_10.aarch64.r 117 kB/s | 128 kB     00:01
2024-08-06T22:15:26Z:     amazon-ebs: (236/273): sssd-client-2.9.4-3.el8_10.aarch64.r 307 kB/s | 241 kB     00:00
2024-08-06T22:15:27Z:     amazon-ebs: (237/273): sssd-common-2.9.4-3.el8_10.aarch64.r 3.3 MB/s | 1.6 MB     00:00
2024-08-06T22:15:27Z:     amazon-ebs: (238/273): sssd-nfs-idmap-2.9.4-3.el8_10.aarch6 406 kB/s | 129 kB     00:00
2024-08-06T22:15:27Z:     amazon-ebs: (239/273): sssd-kcm-2.9.4-3.el8_10.aarch64.rpm  785 kB/s | 256 kB     00:00
2024-08-06T22:15:27Z:     amazon-ebs: (240/273): glibc-2.28-251.el8_10.2.aarch64.rpm   11 MB/s | 1.8 MB     00:00
2024-08-06T22:15:27Z:     amazon-ebs: (241/273): platform-python-3.6.8-62.el8_10.aarc 540 kB/s |  88 kB     00:00
2024-08-06T22:15:27Z:     amazon-ebs: (242/273): glibc-common-2.28-251.el8_10.2.aarch 3.6 MB/s | 1.0 MB     00:00
2024-08-06T22:15:27Z:     amazon-ebs: (243/273): glibc-gconv-extra-2.28-251.el8_10.2. 5.5 MB/s | 1.8 MB     00:00
2024-08-06T22:15:27Z:     amazon-ebs: (244/273): glibc-langpack-en-2.28-251.el8_10.2. 3.6 MB/s | 831 kB     00:00
2024-08-06T22:15:27Z:     amazon-ebs: (245/273): polkit-0.115-15.el8_10.2.aarch64.rpm 8.2 MB/s | 151 kB     00:00
2024-08-06T22:15:27Z:     amazon-ebs: (246/273): polkit-libs-0.115-15.el8_10.2.aarch6 5.6 MB/s |  75 kB     00:00
2024-08-06T22:15:27Z:     amazon-ebs: (247/273): tuned-2.22.1-4.el8_10.1.noarch.rpm    20 MB/s | 367 kB     00:00
2024-08-06T22:15:28Z:     amazon-ebs: (248/273): libxml2-2.9.7-18.el8_10.1.aarch64.rp 1.6 MB/s | 654 kB     00:00
2024-08-06T22:15:28Z:     amazon-ebs: (249/273): python3-libs-3.6.8-62.el8_10.aarch64 6.7 MB/s | 7.7 MB     00:01
2024-08-06T22:15:29Z:     amazon-ebs: (250/273): kernel-tools-4.18.0-553.8.1.el8_10.a 7.1 MB/s |  10 MB     00:01
2024-08-06T22:15:29Z:     amazon-ebs: (251/273): kernel-tools-libs-4.18.0-553.8.1.el8 6.4 MB/s |  10 MB     00:01
2024-08-06T22:15:29Z:     amazon-ebs: (252/273): c-ares-1.13.0-11.el8_10.aarch64.rpm  182 kB/s |  93 kB     00:00
2024-08-06T22:15:30Z:     amazon-ebs: (253/273): python3-perf-4.18.0-553.8.1.el8_10.a 6.4 MB/s |  11 MB     00:01
2024-08-06T22:15:30Z:     amazon-ebs: (254/273): kexec-tools-2.0.26-14.el8_10.1.aarch 1.1 MB/s | 490 kB     00:00
2024-08-06T22:15:30Z:     amazon-ebs: (255/273): less-530-3.el8_10.aarch64.rpm         11 MB/s | 162 kB     00:00
2024-08-06T22:15:30Z:     amazon-ebs: (256/273): krb5-libs-1.18.2-28.el8_10.aarch64.r 1.2 MB/s | 819 kB     00:00
2024-08-06T22:15:30Z:     amazon-ebs: (257/273): libnghttp2-1.33.0-6.el8_10.1.aarch64 347 kB/s |  75 kB     00:00
2024-08-06T22:15:30Z:     amazon-ebs: (258/273): libtirpc-1.1.4-12.el8_10.aarch64.rpm 511 kB/s | 110 kB     00:00
2024-08-06T22:15:30Z:     amazon-ebs: (259/273): openldap-2.4.46-19.el8_10.aarch64.rp 3.0 MB/s | 339 kB     00:00
2024-08-06T22:15:30Z:     amazon-ebs: (260/273): pam-1.3.1-34.el8_10.aarch64.rpm      2.8 MB/s | 741 kB     00:00
2024-08-06T22:15:30Z:     amazon-ebs: (261/273): policycoreutils-2.9-26.el8_10.aarch6 2.4 MB/s | 376 kB     00:00
2024-08-06T22:15:30Z:     amazon-ebs: (262/273): policycoreutils-python-utils-2.9-26.  15 MB/s | 254 kB     00:00
2024-08-06T22:15:30Z:     amazon-ebs: (263/273): python3-idna-2.5-7.el8_10.noarch.rpm 9.9 MB/s | 103 kB     00:00
2024-08-06T22:15:30Z:     amazon-ebs: (264/273): redhat-release-8.10-0.3.el8.aarch64. 4.0 MB/s |  45 kB     00:00
2024-08-06T22:15:30Z:     amazon-ebs: (265/273): redhat-release-eula-8.10-0.3.el8.aar 2.3 MB/s |  21 kB     00:00
2024-08-06T22:15:30Z:     amazon-ebs: (266/273): python3-policycoreutils-2.9-26.el8_1 9.7 MB/s | 2.3 MB     00:00
2024-08-06T22:15:31Z:     amazon-ebs: (267/273): systemd-239-82.el8_10.1.aarch64.rpm  7.2 MB/s | 3.3 MB     00:00
2024-08-06T22:15:31Z:     amazon-ebs: (268/273): systemd-libs-239-82.el8_10.1.aarch64 1.5 MB/s | 1.0 MB     00:00
2024-08-06T22:15:31Z:     amazon-ebs: (269/273): systemd-pam-239-82.el8_10.1.aarch64. 816 kB/s | 474 kB     00:00
2024-08-06T22:15:31Z:     amazon-ebs: (270/273): systemd-udev-239-82.el8_10.1.aarch64 4.3 MB/s | 1.5 MB     00:00
2024-08-06T22:15:31Z:     amazon-ebs: (271/273): libndp-1.7-7.el8_10.aarch64.rpm      134 kB/s |  40 kB     00:00
2024-08-06T22:15:32Z:     amazon-ebs: (272/273): rh-amazon-rhui-client-4.0.19-1.el8.n 258 kB/s |  56 kB     00:00
2024-08-06T22:15:52Z:     amazon-ebs: (273/273): linux-firmware-20240610-122.git90df6  17 MB/s | 363 MB     00:21
2024-08-06T22:15:52Z:     amazon-ebs: --------------------------------------------------------------------------------
2024-08-06T22:15:52Z:     amazon-ebs: Total                                            11 MB/s | 598 MB     00:53
2024-08-06T22:15:57Z:     amazon-ebs: Running transaction check
2024-08-06T22:15:58Z:     amazon-ebs: Transaction check succeeded.
2024-08-06T22:15:58Z:     amazon-ebs: Running transaction test
2024-08-06T22:16:04Z:     amazon-ebs: Transaction test succeeded.
2024-08-06T22:16:04Z:     amazon-ebs: Running transaction
2024-08-06T22:16:10Z:     amazon-ebs:   Preparing        :                                                        1/1
2024-08-06T22:16:10Z:     amazon-ebs:   Running scriptlet: libgcc-8.5.0-22.el8_10.aarch64                         1/1
2024-08-06T22:16:10Z:     amazon-ebs:   Upgrading        : libgcc-8.5.0-22.el8_10.aarch64                       1/542
2024-08-06T22:16:10Z:     amazon-ebs:   Running scriptlet: libgcc-8.5.0-22.el8_10.aarch64                       1/542
2024-08-06T22:16:10Z:     amazon-ebs:   Upgrading        : python3-pip-wheel-9.0.3-24.el8.noarch                2/542
2024-08-06T22:16:10Z:     amazon-ebs:   Upgrading        : redhat-release-eula-8.10-0.3.el8.aarch64             3/542
2024-08-06T22:16:10Z:     amazon-ebs:   Upgrading        : redhat-release-8.10-0.3.el8.aarch64                  4/542
2024-08-06T22:16:10Z:     amazon-ebs:   Upgrading        : setup-2.12.2-9.el8.noarch                            5/542
2024-08-06T22:16:10Z:     amazon-ebs: warning: /etc/shadow created as /etc/shadow.rpmnew
2024-08-06T22:16:10Z:     amazon-ebs:
2024-08-06T22:16:11Z:     amazon-ebs:   Running scriptlet: setup-2.12.2-9.el8.noarch                            5/542
2024-08-06T22:26:15Z:     amazon-ebs: Created symlink /etc/systemd/system/multi-user.target.wants/nodeadm-config.service → /etc/systemd/system/nodeadm-config.service.
2024-08-06T22:26:15Z:     amazon-ebs: Created symlink /etc/systemd/system/multi-user.target.wants/nodeadm-run.service → /etc/systemd/system/nodeadm-run.service.
2024-08-06T22:26:15Z: ==> amazon-ebs: Provisioning with shell script: /home/ubuntu/environment/custom-amazon-eks-ami-packer-rhel/templates/rhel/../shared/provisioners/cleanup.sh
2024-08-06T22:26:16Z:     amazon-ebs: Updating Subscription Management repositories.
2024-08-06T22:26:16Z:     amazon-ebs: Unable to read consumer identity
2024-08-06T22:26:16Z:     amazon-ebs:
2024-08-06T22:26:16Z:     amazon-ebs: This system is not registered with an entitlement server. You can use subscription-manager to register.
2024-08-06T22:26:16Z:     amazon-ebs:
2024-08-06T22:26:16Z:     amazon-ebs: 34 files removed
2024-08-06T22:26:16Z: ==> amazon-ebs: Provisioning with shell script: /home/ubuntu/environment/custom-amazon-eks-ami-packer-rhel/templates/rhel/provisioners/validate.sh
2024-08-06T22:26:16Z:     amazon-ebs: Required commands were found: unpigz
2024-08-06T22:26:16Z:     amazon-ebs: Disk space in mebibytes (required/free/total): 1024/6218/9517
2024-08-06T22:26:16Z:     amazon-ebs: Disk space requirements were met.
2024-08-06T22:26:16Z: ==> amazon-ebs: Provisioning with shell script: /home/ubuntu/environment/custom-amazon-eks-ami-packer-rhel/templates/rhel/../shared/provisioners/generate-version-info.sh
2024-08-06T22:26:17Z: ==> amazon-ebs: Downloading /tmp/worker/version-info.json => amazon-eks-rhel-arm64-node-1.29-v20240806-version-info.json
2024-08-06T22:26:18Z: ==> amazon-ebs: Provisioning with shell script: /tmp/packer-shell3108324959
2024-08-06T22:26:18Z: ==> amazon-ebs: Stopping the source instance...
2024-08-06T22:26:18Z:     amazon-ebs: Stopping instance
2024-08-06T22:26:18Z: ==> amazon-ebs: Waiting for the instance to stop...
2024-08-06T22:27:19Z: ==> amazon-ebs: Creating AMI amazon-eks-rhel-arm64-node-1.29-v20240806 from instance i-0528108c2f43dbfc0
2024-08-06T22:27:19Z:     amazon-ebs: AMI: ami-0da5e56d0e4a46f2c
2024-08-06T22:27:19Z: ==> amazon-ebs: Waiting for AMI to become ready...
2024-08-06T22:32:50Z: ==> amazon-ebs: Skipping Enable AMI deprecation...
2024-08-06T22:32:50Z: ==> amazon-ebs: Modifying attributes on AMI (ami-0da5e56d0e4a46f2c)...
2024-08-06T22:32:50Z:     amazon-ebs: Modifying: description
2024-08-06T22:32:50Z: ==> amazon-ebs: Modifying attributes on snapshot (snap-08087150517473633)...
2024-08-06T22:32:50Z: ==> amazon-ebs: Modifying attributes on snapshot (snap-0e04791ede539b830)...
2024-08-06T22:32:50Z: ==> amazon-ebs: Adding tags to AMI (ami-0da5e56d0e4a46f2c)...
2024-08-06T22:32:50Z: ==> amazon-ebs: Tagging snapshot: snap-08087150517473633
2024-08-06T22:32:50Z: ==> amazon-ebs: Tagging snapshot: snap-0e04791ede539b830
2024-08-06T22:32:50Z: ==> amazon-ebs: Creating AMI tags
2024-08-06T22:32:50Z:     amazon-ebs: Adding tag: "containerd_version": "*"
2024-08-06T22:32:50Z:     amazon-ebs: Adding tag: "kubernetes": "1.29.6/2024-07-12/bin/linux/arm64"
2024-08-06T22:32:50Z:     amazon-ebs: Adding tag: "build_region": "us-east-1"
2024-08-06T22:32:50Z:     amazon-ebs: Adding tag: "Name": "amazon-eks-rhel-arm64-node-1.29-v20240806"
2024-08-06T22:32:50Z:     amazon-ebs: Adding tag: "source_ami_name": "RHEL-8.6.0_HVM-20240521-arm64-58-Hourly2-GP3"
2024-08-06T22:32:50Z:     amazon-ebs: Adding tag: "source_ami_id": "ami-00656f1bd5c0e6ffc"
2024-08-06T22:32:50Z:     amazon-ebs: Adding tag: "container_selinux_version": "*"
2024-08-06T22:32:50Z:     amazon-ebs: Adding tag: "created": "1722982390"
2024-08-06T22:32:50Z:     amazon-ebs: Adding tag: "ssm_agent_version": ""
2024-08-06T22:32:50Z: ==> amazon-ebs: Creating snapshot tags
2024-08-06T22:32:51Z: ==> amazon-ebs: Terminating the source AWS instance...
2024-08-06T22:33:21Z: ==> amazon-ebs: Cleaning up any extra volumes...
2024-08-06T22:33:21Z: ==> amazon-ebs: No volumes to clean up, skipping
2024-08-06T22:33:21Z: ==> amazon-ebs: Deleting temporary security group...
2024-08-06T22:33:21Z: ==> amazon-ebs: Deleting temporary keypair...
2024-08-06T22:33:22Z: ==> amazon-ebs: Running post-processor: manifest
2024-08-06T22:33:22Z: ==> amazon-ebs: Running post-processor: manifest
2024-08-06T22:33:22Z: Build 'amazon-ebs' finished after 20 minutes 11 seconds.

==> Wait completed after 20 minutes 11 seconds

==> Builds finished. The artifacts of successful builds are:
--> amazon-ebs: AMIs were created:
us-east-1: ami-0da5e56d0e4a46f2c

--> amazon-ebs: AMIs were created:
us-east-1: ami-0da5e56d0e4a46f2c

--> amazon-ebs: AMIs were created:
us-east-1: ami-0da5e56d0e4a46f2c

make[1]: Leaving directory '/home/ubuntu/environment/custom-amazon-eks-ami-packer-rhel'
Admin:~/environment/custom-amazon-eks-ami-packer-rhel (main) $ 
