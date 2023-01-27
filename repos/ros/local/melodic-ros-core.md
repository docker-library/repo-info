# `ros:melodic-ros-core`

## Docker Metadata

- Image ID: `sha256:4f84f679baf852790c8573601493573517bfe80e16afd11af1e3d71008033855`
- Created: `2023-01-02T19:42:53.51112239Z`
- Virtual Size: ~ 862.81 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/ros_entrypoint.sh"]`
- Command: `["bash"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `LANG=C.UTF-8`
  - `LC_ALL=C.UTF-8`
  - `ROS_DISTRO=melodic`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `acl=2.2.52-3build1`

Binary Packages:

- `libacl1:amd64=2.2.52-3build1`

Licenses: (parsed from: `/usr/share/doc/libacl1/copyright`)

- `GPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris acl=2.2.52-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52-3build1.dsc' acl_2.2.52-3build1.dsc 2031 SHA256:864215f3e68d6b169a044bd952e78be9b0b1cf527a2cbf25866cab919e78e64b
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52.orig.tar.bz2' acl_2.2.52.orig.tar.bz2 312128 SHA256:59d05b38af76baf2eddccbf08c7968a17451cc785ffecc657fcb46ce32b2631d
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52-3build1.debian.tar.xz' acl_2.2.52-3build1.debian.tar.xz 8788 SHA256:0729d8c850aa26bc9f1b22ce632efb1616a3f97dc5fca1d9edfda45b582b7f37
```

### `dpkg` source package: `adduser=3.116ubuntu1`

Binary Packages:

- `adduser=3.116ubuntu1`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.116ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.116ubuntu1.dsc' adduser_3.116ubuntu1.dsc 1845 SHA256:fc44097093d74fc2e36fc37dceb54cf6bcb70a434240b14fd91beb64849cf2fd
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.116ubuntu1.tar.xz' adduser_3.116ubuntu1.tar.xz 216868 SHA256:f34f1d95e96ecae3b068a3dd666848f82f06cbb26152c56a6b72bd71555a8f18
```

### `dpkg` source package: `apr-util=1.6.1-2`

Binary Packages:

- `libaprutil1:amd64=1.6.1-2`
- `libaprutil1-dev=1.6.1-2`

Licenses: (parsed from: `/usr/share/doc/libaprutil1/copyright`, `/usr/share/doc/libaprutil1-dev/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr-util=1.6.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1-2.dsc' apr-util_1.6.1-2.dsc 2851 SHA256:7a3a7d0dccc0d89ad751988163cb57d34b32094893d08c4d0ac79e9bfee6d8f4
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1.orig.tar.bz2' apr-util_1.6.1.orig.tar.bz2 428595 SHA256:d3e12f7b6ad12687572a3a39475545a072608f4ba03a6ce8a3778f607dd0035b
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1.orig.tar.bz2.asc' apr-util_1.6.1.orig.tar.bz2.asc 801 SHA256:47837b605290c0d7659b73734e4a9d5e6c0c24c13185cd4d91837afe63c07ca4
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1-2.debian.tar.xz' apr-util_1.6.1-2.debian.tar.xz 211832 SHA256:e30e919e7e049a8a7056b7184e77d69b82660d71a4bf9654d1c9bfccf2fcde30
```

### `dpkg` source package: `apr=1.6.3-2`

Binary Packages:

- `libapr1:amd64=1.6.3-2`
- `libapr1-dev=1.6.3-2`

Licenses: (parsed from: `/usr/share/doc/libapr1/copyright`, `/usr/share/doc/libapr1-dev/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr=1.6.3-2
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.3-2.dsc' apr_1.6.3-2.dsc 2305 SHA256:0597703f9ea3bc3b30fcd7e055c67c2113e5c4255df5ff42738ce6a396bf5afc
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.3.orig.tar.bz2' apr_1.6.3.orig.tar.bz2 854100 SHA256:131f06d16d7aabd097fa992a33eec2b6af3962f93e6d570a9bd4d85e95993172
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.3.orig.tar.bz2.asc' apr_1.6.3.orig.tar.bz2.asc 801 SHA256:33db39162f7ca9acdccaa4f19630a67045542791b262116d3512c8b5d7c3fca1
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.3-2.debian.tar.xz' apr_1.6.3-2.debian.tar.xz 213068 SHA256:ac515f888f7157586631e3de9792ee01d239f9cbf1e768be31ee6daac61f2597
```

### `dpkg` source package: `apt=1.6.14`

Binary Packages:

- `apt=1.6.14`
- `libapt-pkg5.0:amd64=1.6.14`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg5.0/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=1.6.14
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.6.14.dsc' apt_1.6.14.dsc 2867 SHA512:f8042614d9c52e6512746e967b7a1e4b60a748ed711fd032086e112be597a3f6b10cf57412f971e128f84288cc96a408b3da72b4a3ae5a3ed6078b4bbc9577e9
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.6.14.tar.xz' apt_1.6.14.tar.xz 2179764 SHA512:6c0f2b6f32d54d6ad5704e47fa96ad2230026a83fb8747a96ddbae72fcf31eeba963a4a5c4218fe5a9ab03294c30cb063de36b33f0b130f6a67b5929428268dc
```

### `dpkg` source package: `asn1crypto=0.24.0-1`

Binary Packages:

- `python-asn1crypto=0.24.0-1`

Licenses: (parsed from: `/usr/share/doc/python-asn1crypto/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris asn1crypto=0.24.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/a/asn1crypto/asn1crypto_0.24.0-1.dsc' asn1crypto_0.24.0-1.dsc 1960 SHA256:71bef30ecadbb81ed4a656230892c1d7d4fde3dd74eaa546c94ae93c43591045
'http://archive.ubuntu.com/ubuntu/pool/main/a/asn1crypto/asn1crypto_0.24.0.orig.tar.gz' asn1crypto_0.24.0.orig.tar.gz 104964 SHA256:9d5c20441baf0cb60a4ac34cc447c6c189024b6b4c6cd7877034f4965c464e49
'http://archive.ubuntu.com/ubuntu/pool/main/a/asn1crypto/asn1crypto_0.24.0-1.debian.tar.xz' asn1crypto_0.24.0-1.debian.tar.xz 2288 SHA256:72a5e503943aa519acbd51971b83e51345aa53270f93d4e1313e1e7f7a05ab29
```

### `dpkg` source package: `attr=1:2.4.47-2build1`

Binary Packages:

- `libattr1:amd64=1:2.4.47-2build1`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris attr=1:2.4.47-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47-2build1.dsc' attr_2.4.47-2build1.dsc 2033 SHA256:b78dbf07b789010caabc12c1ab0b2a944072058fe47ac6b5d345209c16f4e1f5
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47.orig.tar.bz2' attr_2.4.47.orig.tar.bz2 281877 SHA256:6c1208035757f5ce9b516402dd45b8299a53ae4d69ad2c352116f9cb8d7bc274
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47-2build1.debian.tar.xz' attr_2.4.47-2build1.debian.tar.xz 8168 SHA256:6732a8874190a1f792c7f9cb95fadc1dc852baf2e164b0d7b4bcea525f5c0882
```

### `dpkg` source package: `audit=1:2.8.2-1ubuntu1.1`

Binary Packages:

- `libaudit-common=1:2.8.2-1ubuntu1.1`
- `libaudit1:amd64=1:2.8.2-1ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-1`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:2.8.2-1ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.8.2-1ubuntu1.1.dsc' audit_2.8.2-1ubuntu1.1.dsc 2907 SHA512:a6975ce1dcc522d033bba69eb9d719d04307c4652753bd44c2c950bc27077d273215a318a768e761770c5dd662e435fcc461a8b8790693523c90c8286703fa1a
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.8.2.orig.tar.gz' audit_2.8.2.orig.tar.gz 1121970 SHA512:888ebf5e8e9d285b82d87377fc8836886d7a8b089c1be4091420a77a0250c9baf09aebb7a6330ff5043fb35f51eb6baf8d4491e26da7ad0811f0087e395b5012
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.8.2-1ubuntu1.1.debian.tar.xz' audit_2.8.2-1ubuntu1.1.debian.tar.xz 21984 SHA512:69f9b8f6a891069b3194d6460a8fe897946b8d28887ca4a41a0b22f8793947a7604da868c4a2372d2610cbe9f3a7da75616e0abf392b7f7c9fb85ebd63f8459a
```

### `dpkg` source package: `base-files=10.1ubuntu2.11`

Binary Packages:

- `base-files=10.1ubuntu2.11`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=10.1ubuntu2.11
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_10.1ubuntu2.11.dsc' base-files_10.1ubuntu2.11.dsc 1343 SHA512:de777d9204569c0f5134d783cb56ada91e9d442e6ccb2077b0b544e7693bf8f05bedc284e089e2e3547d190b8897661c04689df10072383f2ef9158b48c4dd11
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_10.1ubuntu2.11.tar.xz' base-files_10.1ubuntu2.11.tar.xz 79756 SHA512:2f40f33e62da5b53c4464973ceb18f276681c593041cb03cb68e9b5810e5eea90e12f7fae526d612658544bbb36a16c0c38b114d4c4db18b2ec0661ba1fd36cf
```

### `dpkg` source package: `base-passwd=3.5.44`

Binary Packages:

- `base-passwd=3.5.44`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `PD`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.5.44
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.5.44.dsc' base-passwd_3.5.44.dsc 1685 SHA256:22a5db1e9bb71fa8a4d682b3f9c01470a61b8041eb6212471181c6808b268c13
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.5.44.tar.xz' base-passwd_3.5.44.tar.xz 52644 SHA256:f17a0746024572e86e60e4614cf226a81ffe682ceaf1a1fce9dc1a8002683e90
```

### `dpkg` source package: `bash=4.4.18-2ubuntu1.3`

Binary Packages:

- `bash=4.4.18-2ubuntu1.3`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris bash=4.4.18-2ubuntu1.3
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.4.18-2ubuntu1.3.dsc' bash_4.4.18-2ubuntu1.3.dsc 2312 SHA512:2f74c0172d5e55a936bdd650214ffce9f853cde9206ce3d4d7b748e16c1f82928a58d1a22c6e9597b5c83b235dd82e6f35f9032c3055ec75066839542d432412
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.4.18.orig.tar.xz' bash_4.4.18.orig.tar.xz 5036272 SHA512:a0c0b84133f9dc1dd404a130a6a8ac08c4551d28bf4d0a6a9be40acee5d1465270af595191cad9584f17fe098b846a70dd1f7772f771db79ff5f03e47cfd5791
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.4.18-2ubuntu1.3.debian.tar.xz' bash_4.4.18-2ubuntu1.3.debian.tar.xz 66128 SHA512:211d66113303c99c0c048e4e00923743da7e9034e2faa6f19c98074af73b78cbf81479fe2e75f72780fd6f74c799ab6613ea111b10789d67e79eb7f8ae9dd370
```

### `dpkg` source package: `binutils=2.30-21ubuntu1~18.04.8`

Binary Packages:

- `binutils=2.30-21ubuntu1~18.04.8`
- `binutils-common:amd64=2.30-21ubuntu1~18.04.8`
- `binutils-x86-64-linux-gnu=2.30-21ubuntu1~18.04.8`
- `libbinutils:amd64=2.30-21ubuntu1~18.04.8`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`, `/usr/share/doc/binutils-common/copyright`, `/usr/share/doc/binutils-x86-64-linux-gnu/copyright`, `/usr/share/doc/libbinutils/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris binutils=2.30-21ubuntu1~18.04.8
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.30-21ubuntu1%7e18.04.8.dsc' binutils_2.30-21ubuntu1~18.04.8.dsc 11670 SHA512:8cd9af448cdcc0392cbf8b6ebcb443b5a3e5f53bfabf41aff66f9c1a0393c84b303e6de96d96ab0663b49d35c3797d5f18ce9f8a50d3b54ca74ecb5e9db17a0b
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.30.orig.tar.xz' binutils_2.30.orig.tar.xz 20286700 SHA512:e747ea20d8d79fcd21b9d9f6695059caa7189d60f19256da398e34b789fea9a133c32b192e9693b5828d27683739b0198431bf8b3e39fb3b04884cf89d9aa839
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.30-21ubuntu1%7e18.04.8.debian.tar.xz' binutils_2.30-21ubuntu1~18.04.8.debian.tar.xz 625540 SHA512:8f93aefb0fe22af902aa849c9aa0752612e3c89ec008b0eb03d8d4e8d20dbb640540e414d637e40b71fbf8fa03064d60206281b472e40b3f6bce801f4ffe682f
```

### `dpkg` source package: `boost-defaults=1.65.1.0ubuntu1`

Binary Packages:

- `libboost-all-dev=1.65.1.0ubuntu1`
- `libboost-atomic-dev:amd64=1.65.1.0ubuntu1`
- `libboost-chrono-dev:amd64=1.65.1.0ubuntu1`
- `libboost-container-dev:amd64=1.65.1.0ubuntu1`
- `libboost-context-dev:amd64=1.65.1.0ubuntu1`
- `libboost-coroutine-dev:amd64=1.65.1.0ubuntu1`
- `libboost-date-time-dev:amd64=1.65.1.0ubuntu1`
- `libboost-dev:amd64=1.65.1.0ubuntu1`
- `libboost-exception-dev:amd64=1.65.1.0ubuntu1`
- `libboost-fiber-dev:amd64=1.65.1.0ubuntu1`
- `libboost-filesystem-dev:amd64=1.65.1.0ubuntu1`
- `libboost-graph-dev:amd64=1.65.1.0ubuntu1`
- `libboost-graph-parallel-dev=1.65.1.0ubuntu1`
- `libboost-iostreams-dev:amd64=1.65.1.0ubuntu1`
- `libboost-locale-dev:amd64=1.65.1.0ubuntu1`
- `libboost-log-dev=1.65.1.0ubuntu1`
- `libboost-math-dev:amd64=1.65.1.0ubuntu1`
- `libboost-mpi-dev=1.65.1.0ubuntu1`
- `libboost-mpi-python-dev=1.65.1.0ubuntu1`
- `libboost-numpy-dev=1.65.1.0ubuntu1`
- `libboost-program-options-dev:amd64=1.65.1.0ubuntu1`
- `libboost-python-dev=1.65.1.0ubuntu1`
- `libboost-random-dev:amd64=1.65.1.0ubuntu1`
- `libboost-regex-dev:amd64=1.65.1.0ubuntu1`
- `libboost-serialization-dev:amd64=1.65.1.0ubuntu1`
- `libboost-signals-dev:amd64=1.65.1.0ubuntu1`
- `libboost-stacktrace-dev:amd64=1.65.1.0ubuntu1`
- `libboost-system-dev:amd64=1.65.1.0ubuntu1`
- `libboost-test-dev:amd64=1.65.1.0ubuntu1`
- `libboost-thread-dev:amd64=1.65.1.0ubuntu1`
- `libboost-timer-dev:amd64=1.65.1.0ubuntu1`
- `libboost-tools-dev=1.65.1.0ubuntu1`
- `libboost-type-erasure-dev:amd64=1.65.1.0ubuntu1`
- `libboost-wave-dev:amd64=1.65.1.0ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris boost-defaults=1.65.1.0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost-defaults/boost-defaults_1.65.1.0ubuntu1.dsc' boost-defaults_1.65.1.0ubuntu1.dsc 4037 SHA256:0e1e6bde4468c802a8cb0795e15a3deb56ef29288f051f539a18a0b1b24edd6c
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost-defaults/boost-defaults_1.65.1.0ubuntu1.tar.gz' boost-defaults_1.65.1.0ubuntu1.tar.gz 12172 SHA256:2554c6a67a4b6939d2090d37445cc0fc366c1448c4080f62ebe2ca189d691a7a
```

### `dpkg` source package: `boost1.65.1=1.65.1+dfsg-0ubuntu5`

Binary Packages:

- `libboost-atomic1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-atomic1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-chrono1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-chrono1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-container1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-container1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-context1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-context1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-coroutine1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-coroutine1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-date-time1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-date-time1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-exception1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-fiber1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-fiber1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-filesystem1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-filesystem1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-graph-parallel1.65-dev=1.65.1+dfsg-0ubuntu5`
- `libboost-graph-parallel1.65.1=1.65.1+dfsg-0ubuntu5`
- `libboost-graph1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-graph1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-iostreams1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-iostreams1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-locale1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-locale1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-log1.65-dev=1.65.1+dfsg-0ubuntu5`
- `libboost-log1.65.1=1.65.1+dfsg-0ubuntu5`
- `libboost-math1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-math1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-mpi-python1.65-dev=1.65.1+dfsg-0ubuntu5`
- `libboost-mpi-python1.65.1=1.65.1+dfsg-0ubuntu5`
- `libboost-mpi1.65-dev=1.65.1+dfsg-0ubuntu5`
- `libboost-mpi1.65.1=1.65.1+dfsg-0ubuntu5`
- `libboost-numpy1.65-dev=1.65.1+dfsg-0ubuntu5`
- `libboost-numpy1.65.1=1.65.1+dfsg-0ubuntu5`
- `libboost-program-options1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-program-options1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-python1.65-dev=1.65.1+dfsg-0ubuntu5`
- `libboost-python1.65.1=1.65.1+dfsg-0ubuntu5`
- `libboost-random1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-random1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-regex1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-regex1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-serialization1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-serialization1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-signals1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-signals1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-stacktrace1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-stacktrace1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-system1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-system1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-test1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-test1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-thread1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-thread1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-timer1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-timer1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-type-erasure1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-type-erasure1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-wave1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-wave1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost1.65-tools-dev=1.65.1+dfsg-0ubuntu5`

Licenses: (parsed from: `/usr/share/doc/libboost-atomic1.65-dev/copyright`, `/usr/share/doc/libboost-atomic1.65.1/copyright`, `/usr/share/doc/libboost-chrono1.65-dev/copyright`, `/usr/share/doc/libboost-chrono1.65.1/copyright`, `/usr/share/doc/libboost-container1.65-dev/copyright`, `/usr/share/doc/libboost-container1.65.1/copyright`, `/usr/share/doc/libboost-context1.65-dev/copyright`, `/usr/share/doc/libboost-context1.65.1/copyright`, `/usr/share/doc/libboost-coroutine1.65-dev/copyright`, `/usr/share/doc/libboost-coroutine1.65.1/copyright`, `/usr/share/doc/libboost-date-time1.65-dev/copyright`, `/usr/share/doc/libboost-date-time1.65.1/copyright`, `/usr/share/doc/libboost-exception1.65-dev/copyright`, `/usr/share/doc/libboost-fiber1.65-dev/copyright`, `/usr/share/doc/libboost-fiber1.65.1/copyright`, `/usr/share/doc/libboost-filesystem1.65-dev/copyright`, `/usr/share/doc/libboost-filesystem1.65.1/copyright`, `/usr/share/doc/libboost-graph-parallel1.65-dev/copyright`, `/usr/share/doc/libboost-graph-parallel1.65.1/copyright`, `/usr/share/doc/libboost-graph1.65-dev/copyright`, `/usr/share/doc/libboost-graph1.65.1/copyright`, `/usr/share/doc/libboost-iostreams1.65-dev/copyright`, `/usr/share/doc/libboost-iostreams1.65.1/copyright`, `/usr/share/doc/libboost-locale1.65-dev/copyright`, `/usr/share/doc/libboost-locale1.65.1/copyright`, `/usr/share/doc/libboost-log1.65-dev/copyright`, `/usr/share/doc/libboost-log1.65.1/copyright`, `/usr/share/doc/libboost-math1.65-dev/copyright`, `/usr/share/doc/libboost-math1.65.1/copyright`, `/usr/share/doc/libboost-mpi-python1.65-dev/copyright`, `/usr/share/doc/libboost-mpi-python1.65.1/copyright`, `/usr/share/doc/libboost-mpi1.65-dev/copyright`, `/usr/share/doc/libboost-mpi1.65.1/copyright`, `/usr/share/doc/libboost-numpy1.65-dev/copyright`, `/usr/share/doc/libboost-numpy1.65.1/copyright`, `/usr/share/doc/libboost-program-options1.65-dev/copyright`, `/usr/share/doc/libboost-program-options1.65.1/copyright`, `/usr/share/doc/libboost-python1.65-dev/copyright`, `/usr/share/doc/libboost-python1.65.1/copyright`, `/usr/share/doc/libboost-random1.65-dev/copyright`, `/usr/share/doc/libboost-random1.65.1/copyright`, `/usr/share/doc/libboost-regex1.65-dev/copyright`, `/usr/share/doc/libboost-regex1.65.1/copyright`, `/usr/share/doc/libboost-serialization1.65-dev/copyright`, `/usr/share/doc/libboost-serialization1.65.1/copyright`, `/usr/share/doc/libboost-signals1.65-dev/copyright`, `/usr/share/doc/libboost-signals1.65.1/copyright`, `/usr/share/doc/libboost-stacktrace1.65-dev/copyright`, `/usr/share/doc/libboost-stacktrace1.65.1/copyright`, `/usr/share/doc/libboost-system1.65-dev/copyright`, `/usr/share/doc/libboost-system1.65.1/copyright`, `/usr/share/doc/libboost-test1.65-dev/copyright`, `/usr/share/doc/libboost-test1.65.1/copyright`, `/usr/share/doc/libboost-thread1.65-dev/copyright`, `/usr/share/doc/libboost-thread1.65.1/copyright`, `/usr/share/doc/libboost-timer1.65-dev/copyright`, `/usr/share/doc/libboost-timer1.65.1/copyright`, `/usr/share/doc/libboost-type-erasure1.65-dev/copyright`, `/usr/share/doc/libboost-type-erasure1.65.1/copyright`, `/usr/share/doc/libboost-wave1.65-dev/copyright`, `/usr/share/doc/libboost-wave1.65.1/copyright`, `/usr/share/doc/libboost1.65-dev/copyright`, `/usr/share/doc/libboost1.65-tools-dev/copyright`)

- `Boost`
- `bjam`
- `boostbook`

Source:

```console
$ apt-get source -qq --print-uris boost1.65.1=1.65.1+dfsg-0ubuntu5
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost1.65.1/boost1.65.1_1.65.1%2bdfsg-0ubuntu5.dsc' boost1.65.1_1.65.1+dfsg-0ubuntu5.dsc 7825 SHA256:e046822facd57a5810416328f6e440f5ae5a4017215d1ea3ca7bec59e090c598
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost1.65.1/boost1.65.1_1.65.1%2bdfsg.orig.tar.bz2' boost1.65.1_1.65.1+dfsg.orig.tar.bz2 82120283 SHA256:c7709bf6b416e0609fac4bcc0c0093a890ccbeaeebbeabe45877cffc5d06f43c
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost1.65.1/boost1.65.1_1.65.1%2bdfsg-0ubuntu5.debian.tar.xz' boost1.65.1_1.65.1+dfsg-0ubuntu5.debian.tar.xz 105524 SHA256:c238e8a63c232911402cef6f8ea7763bddf572f7062b5353147ee9ed9a79afdb
```

### `dpkg` source package: `bzip2=1.0.6-8.1ubuntu0.2`

Binary Packages:

- `bzip2=1.0.6-8.1ubuntu0.2`
- `libbz2-1.0:amd64=1.0.6-8.1ubuntu0.2`
- `libbz2-dev:amd64=1.0.6-8.1ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/libbz2-1.0/copyright`, `/usr/share/doc/libbz2-dev/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.6-8.1ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6-8.1ubuntu0.2.dsc' bzip2_1.0.6-8.1ubuntu0.2.dsc 2181 SHA512:872defc414a97416d701ce8bb59ddbf44b80ebffe447d67ebba20ed13b3e006c771002c82ad11c0c669004d22ce9368254e44c6be977c21e7d92dab69ec4e33a
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6.orig.tar.bz2' bzip2_1.0.6.orig.tar.bz2 708737 SHA512:b1108c392a7f45218b86196498657f50333c870db4ab555ce4859a3fe76c17b4a3430b8a075b7f1c86d9ded006bdf17001b73bfcf261e2d2ee7de4998ad604fd
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6-8.1ubuntu0.2.debian.tar.bz2' bzip2_1.0.6-8.1ubuntu0.2.debian.tar.bz2 61477 SHA512:f895cded216bd210eed7356be97630de75f650bb40d3bb0c7a26b0fadf9991188005ab1c5438e4b8f95614e6ff8c2ad5b2a94f0cc048580bcdc387a219ba7495
```

### `dpkg` source package: `ca-certificates=20211016ubuntu0.18.04.1`

Binary Packages:

- `ca-certificates=20211016ubuntu0.18.04.1`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20211016ubuntu0.18.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20211016ubuntu0.18.04.1.dsc' ca-certificates_20211016ubuntu0.18.04.1.dsc 1937 SHA512:6fb280d77de73d651e65b9c40f08c906516e5210e77bf87a06e81890124eb821f6db5998d0956af2ad07de930ac0c16086db6216062b8d7a8d16061db489f497
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20211016ubuntu0.18.04.1.tar.xz' ca-certificates_20211016ubuntu0.18.04.1.tar.xz 238868 SHA512:35d6b660088d22c90322eb01fd49349b85883f34a43a69faea011c936021d41ab961ac71053ab46ebc17a39026aca1c121c86bfec3b698bf11b0279ab072a24c
```

### `dpkg` source package: `cdebconf=0.213ubuntu1`

Binary Packages:

- `libdebconfclient0:amd64=0.213ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.213ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.213ubuntu1.dsc' cdebconf_0.213ubuntu1.dsc 2769 SHA256:76cb3f0b1685629220b0e4c3105757b95714f7350df4e7863d5310f1f581fee0
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.213ubuntu1.tar.xz' cdebconf_0.213ubuntu1.tar.xz 272596 SHA256:624feaf9e7e5f407271f99e06e54d5002fcce51345553a626caf7b4a65f0afd1
```

### `dpkg` source package: `cmake=3.10.2-1ubuntu2.18.04.2`

Binary Packages:

- `cmake=3.10.2-1ubuntu2.18.04.2`
- `cmake-data=3.10.2-1ubuntu2.18.04.2`

Licenses: (parsed from: `/usr/share/doc/cmake/copyright`, `/usr/share/doc/cmake-data/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-4-clause`
- `GPL-2`
- `GPL-2+with_exception`
- `GPL-3`
- `GPL-3+with_exception`
- `ISC`
- `MIT-like`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris cmake=3.10.2-1ubuntu2.18.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/c/cmake/cmake_3.10.2-1ubuntu2.18.04.2.dsc' cmake_3.10.2-1ubuntu2.18.04.2.dsc 3141 SHA512:3c1a9350cfbcbf905758462d86953239e55f74a5771c150a80b8e53adbe0a6b6f382e2ba36664adf98cf57111929773caa4fa3bf5df47986b0296e78c69d3540
'http://archive.ubuntu.com/ubuntu/pool/main/c/cmake/cmake_3.10.2.orig.tar.gz' cmake_3.10.2.orig.tar.gz 7824452 SHA512:f58fdd025285c9ff5396c0bd0d9573fc8a498fcbe5c11b336cb8ad6154ca6bc875c1a5e22d6654ba98596791ecf89ae8adffb83450839fa1275756b0af5bf82b
'http://archive.ubuntu.com/ubuntu/pool/main/c/cmake/cmake_3.10.2-1ubuntu2.18.04.2.debian.tar.xz' cmake_3.10.2-1ubuntu2.18.04.2.debian.tar.xz 30872 SHA512:1caa6766096306d5a878787f643b44b2c744d6af00f81c68aa3a5db32ad951325694175337821d78a94c8d29465227b57d85794f914f43f156236ac14555ac36
```

### `dpkg` source package: `console-bridge=0.4.0+dfsg-2`

Binary Packages:

- `libconsole-bridge-dev:amd64=0.4.0+dfsg-2`
- `libconsole-bridge0.4:amd64=0.4.0+dfsg-2`

Licenses: (parsed from: `/usr/share/doc/libconsole-bridge-dev/copyright`, `/usr/share/doc/libconsole-bridge0.4/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris console-bridge=0.4.0+dfsg-2
'http://archive.ubuntu.com/ubuntu/pool/universe/c/console-bridge/console-bridge_0.4.0%2bdfsg-2.dsc' console-bridge_0.4.0+dfsg-2.dsc 1949 SHA256:5cfb1b8f43d210c5c1c72bdccb909092b40f361759372211331f75859f29ff91
'http://archive.ubuntu.com/ubuntu/pool/universe/c/console-bridge/console-bridge_0.4.0%2bdfsg.orig.tar.gz' console-bridge_0.4.0+dfsg.orig.tar.gz 6042 SHA256:172eecc6c185de2f6d43aed10c3110b8573e53a49f77c48c3f81a83e0e6e63c2
'http://archive.ubuntu.com/ubuntu/pool/universe/c/console-bridge/console-bridge_0.4.0%2bdfsg-2.debian.tar.xz' console-bridge_0.4.0+dfsg-2.debian.tar.xz 3628 SHA256:56bdfbf50a6e7a83c1f4d1f9052b5b605b8f61846cce7042af0bb6ab661707f7
```

### `dpkg` source package: `coreutils=8.28-1ubuntu1`

Binary Packages:

- `coreutils=8.28-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils=8.28-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.28-1ubuntu1.dsc' coreutils_8.28-1ubuntu1.dsc 2302 SHA256:9a7154fd8a458295b686383767f9305095e6ea929a08c8f56cf51640c3fe209f
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.28.orig.tar.xz' coreutils_8.28.orig.tar.xz 5252336 SHA256:1117b1a16039ddd84d51a9923948307cfa28c2cea03d1a2438742253df0a0c65
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.28.orig.tar.xz.asc' coreutils_8.28.orig.tar.xz.asc 1196 SHA256:505b1a530a55732a9ed659d419ff4973d1b15059078d2060675927058db9607d
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.28-1ubuntu1.debian.tar.xz' coreutils_8.28-1ubuntu1.debian.tar.xz 37940 SHA256:71ba2e83edc675a79e1e0556aff326ab2ae812332692e3db29615e8ed1b427f4
```

### `dpkg` source package: `curl=7.58.0-2ubuntu3.21`

Binary Packages:

- `libcurl4:amd64=7.58.0-2ubuntu3.21`

Licenses: (parsed from: `/usr/share/doc/libcurl4/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `cyrus-sasl2=2.1.27~101-g0780600+dfsg-3ubuntu2.4`

Binary Packages:

- `libsasl2-2:amd64=2.1.27~101-g0780600+dfsg-3ubuntu2.4`
- `libsasl2-modules-db:amd64=2.1.27~101-g0780600+dfsg-3ubuntu2.4`

Licenses: (parsed from: `/usr/share/doc/libsasl2-2/copyright`, `/usr/share/doc/libsasl2-modules-db/copyright`)

- `BSD-4-clause`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.27~101-g0780600+dfsg-3ubuntu2.4
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27%7e101-g0780600%2bdfsg-3ubuntu2.4.dsc' cyrus-sasl2_2.1.27~101-g0780600+dfsg-3ubuntu2.4.dsc 3313 SHA512:43fb4775db1967b0bc2fb4691dc2b754151eccb4d0344e83ed412dded8e1a6e61ec495579b06a05f6b5e5a35364f12681f7bf63c4649536f8d94ae640bdf7a95
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27%7e101-g0780600%2bdfsg.orig.tar.xz' cyrus-sasl2_2.1.27~101-g0780600+dfsg.orig.tar.xz 1143888 SHA512:cd684133dcea5856301f50e378ff105e88f8008af06bd4e02fb9a62a88ece2ee1901ea2776ef3d941d6a3cfc2a77875c08054326293818db89e5f9995c4cd524
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27%7e101-g0780600%2bdfsg-3ubuntu2.4.debian.tar.xz' cyrus-sasl2_2.1.27~101-g0780600+dfsg-3ubuntu2.4.debian.tar.xz 97932 SHA512:9532cf4f5bf817d84616327a183612bee333f4efff02bc120fed744b60b86851f2ccfb7398b620e99964334bd963f8f45e8f542a87e9752a7ceff23c4de34264
```

### `dpkg` source package: `dash=0.5.8-2.10`

Binary Packages:

- `dash=0.5.8-2.10`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.8-2.10
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8-2.10.dsc' dash_0.5.8-2.10.dsc 1618 SHA256:1e8fdac0880d57d8ed5eb11f9f1750a67c71a7200180cf3ed5aa3e74dab3e4c5
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8.orig.tar.gz' dash_0.5.8.orig.tar.gz 223028 SHA256:c6db3a237747b02d20382a761397563d813b306c020ae28ce25a1c3915fac60f
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8-2.10.debian.tar.xz' dash_0.5.8-2.10.debian.tar.xz 43920 SHA256:0d870b0cf9b3ad40e4d4f1e3d4d9097f4d62151693a48f34cb1d49865fd4abdb
```

### `dpkg` source package: `db5.3=5.3.28-13.1ubuntu1.1`

Binary Packages:

- `libdb5.3:amd64=5.3.28-13.1ubuntu1.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28-13.1ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28-13.1ubuntu1.1.dsc' db5.3_5.3.28-13.1ubuntu1.1.dsc 3068 SHA512:20b2e7cddbf97b5de71d782b6df35c6586686da822ae978e5d60acfb3fecd4b00568b24a5ff33bfe05bc8776a0dc4d4d5dc0cc1b127f4fd0bb2d485f6fb108bd
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28.orig.tar.xz' db5.3_5.3.28.orig.tar.xz 24154920 SHA512:080483cac3119569e04c3c22c95e97e5e448c88d87a443933d0ef2c71b506f309428584d6a8fb9c236c616dd82beffa1b30361b4c918756745983fcf54a3f8da
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28-13.1ubuntu1.1.debian.tar.xz' db5.3_5.3.28-13.1ubuntu1.1.debian.tar.xz 29444 SHA512:0e30e4884d67561970fcff40f41641cb7bd663cc5310d396ddc002a26b348d12ca46dd2f265cfd479daffbc42530d047a177b943d65d96dfb483cd1c4e918dc4
```

### `dpkg` source package: `debconf=1.5.66ubuntu1`

Binary Packages:

- `debconf=1.5.66ubuntu1`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.66ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.66ubuntu1.dsc' debconf_1.5.66ubuntu1.dsc 2087 SHA512:5320524b5b84afeb7b48a50e25ba80648de989c83f3e8e6c0797e500b4be872cad0e226fe2e7c0bc3e7bed67747006ae855c5f9131e6ffb9a9618800e83d5016
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.66ubuntu1.tar.xz' debconf_1.5.66ubuntu1.tar.xz 572556 SHA512:6890b7639c884d4e28d43ac4ca27dd6ab845d9c451521d18369d57a487f2fd14966b30878065d749c60279d0f2f1996035e280e5d060b6c7ff8902bc32fac1f9
```

### `dpkg` source package: `debianutils=4.8.4`

Binary Packages:

- `debianutils=4.8.4`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debianutils=4.8.4
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_4.8.4.dsc' debianutils_4.8.4.dsc 1764 SHA256:8b12921fe6e4f51d295bfd4213706d588a6c9b8bab659b0ee1fe525f37e9fbcc
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_4.8.4.tar.xz' debianutils_4.8.4.tar.xz 156344 SHA256:c061ab99aea61f892043b7624b021ab5b193e9c6bbfd474da0fbcdd506be1eb2
```

### `dpkg` source package: `defusedxml=0.5.0-1ubuntu1`

Binary Packages:

- `python-defusedxml=0.5.0-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/python-defusedxml/copyright`)

- `Python`

Source:

```console
$ apt-get source -qq --print-uris defusedxml=0.5.0-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/defusedxml/defusedxml_0.5.0-1ubuntu1.dsc' defusedxml_0.5.0-1ubuntu1.dsc 2272 SHA256:053ec3c34cd46a2a8f9513180622110fa9331b3092fcfcacbb8bbb370345de0b
'http://archive.ubuntu.com/ubuntu/pool/main/d/defusedxml/defusedxml_0.5.0.orig.tar.gz' defusedxml_0.5.0.orig.tar.gz 60405 SHA256:24d7f2f94f7f3cb6061acb215685e5125fbcdc40a857eff9de22518820b0a4f4
'http://archive.ubuntu.com/ubuntu/pool/main/d/defusedxml/defusedxml_0.5.0-1ubuntu1.debian.tar.xz' defusedxml_0.5.0-1ubuntu1.debian.tar.xz 89668 SHA256:b44231646f08618496da99bc7b014524e9ac0d789eb174f4765cd154ee0971c2
```

### `dpkg` source package: `dh-python=3.20180325ubuntu2`

Binary Packages:

- `dh-python=3.20180325ubuntu2`

Licenses: (parsed from: `/usr/share/doc/dh-python/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris dh-python=3.20180325ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/d/dh-python/dh-python_3.20180325ubuntu2.dsc' dh-python_3.20180325ubuntu2.dsc 1935 SHA256:9600437f909a29468d5e2037e08bf9a2f29869922376a680212bf80c2061de6d
'http://archive.ubuntu.com/ubuntu/pool/main/d/dh-python/dh-python_3.20180325ubuntu2.tar.xz' dh-python_3.20180325ubuntu2.tar.xz 95292 SHA256:aee28c975e9ee74608fad868c1bdfcfacb8c9d771733b210e13b51c9fc5b99d1
```

### `dpkg` source package: `diffutils=1:3.6-1`

Binary Packages:

- `diffutils=1:3.6-1`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris diffutils=1:3.6-1
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.6-1.dsc' diffutils_3.6-1.dsc 1453 SHA256:26fe7690b45748dc92cee6af224192e78db2ac574e16ae0aeb8ed6a472c883cd
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.6.orig.tar.xz' diffutils_3.6.orig.tar.xz 1398296 SHA256:d621e8bdd4b573918c8145f7ae61817d1be9deb4c8d2328a65cea8e11d783bd6
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.6-1.debian.tar.xz' diffutils_3.6-1.debian.tar.xz 10808 SHA256:f6ab546a134bde18a87ca8e3c98919680e79d81a65a24801ae06ef69b33f24d8
```

### `dpkg` source package: `distro-info-data=0.37ubuntu0.15`

Binary Packages:

- `distro-info-data=0.37ubuntu0.15`

Licenses: (parsed from: `/usr/share/doc/distro-info-data/copyright`)

- `ISC`

Source:

```console
$ apt-get source -qq --print-uris distro-info-data=0.37ubuntu0.15
'http://archive.ubuntu.com/ubuntu/pool/main/d/distro-info-data/distro-info-data_0.37ubuntu0.15.dsc' distro-info-data_0.37ubuntu0.15.dsc 1776 SHA512:60fc499e69221ab6d97caf31084907736cbb18423450cd075fe36213ff69264258066183742100b34b33c8ac5f99261af6c5b1b08b211f66aef9fa4a9d0d4610
'http://archive.ubuntu.com/ubuntu/pool/main/d/distro-info-data/distro-info-data_0.37ubuntu0.15.tar.xz' distro-info-data_0.37ubuntu0.15.tar.xz 7608 SHA512:75142b5638b9daf0adb7da02994f2a0d16e5286d36c787c52bad6008cd2f9d6458b3862a1c4c73a05e4b8cee7174728835dd27309714a0225038518dd8955186
```

### `dpkg` source package: `dpkg=1.19.0.5ubuntu2.4`

Binary Packages:

- `dpkg=1.19.0.5ubuntu2.4`
- `dpkg-dev=1.19.0.5ubuntu2.4`
- `libdpkg-perl=1.19.0.5ubuntu2.4`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`, `/usr/share/doc/dpkg-dev/copyright`, `/usr/share/doc/libdpkg-perl/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.19.0.5ubuntu2.4
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.19.0.5ubuntu2.4.dsc' dpkg_1.19.0.5ubuntu2.4.dsc 2111 SHA512:cb24be96d3e3668f5b665864a0fe229bb5885e5dde715d239f1d4c3c2aad72e95ccc78534f096c46ec990f3600cdee209d1c51a95736074275547961401c8139
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.19.0.5ubuntu2.4.tar.xz' dpkg_1.19.0.5ubuntu2.4.tar.xz 4572088 SHA512:5ee43774cc38e1b66133f1a22f001ac058f2ab39c6a51f6bd69954151d5870223ab0cc82672087e8a4a93638bb824372e1805355f954a9e6436a03e4ffb74511
```

### `dpkg` source package: `e2fsprogs=1.44.1-1ubuntu1.4`

Binary Packages:

- `e2fsprogs=1.44.1-1ubuntu1.4`
- `libcom-err2:amd64=1.44.1-1ubuntu1.4`
- `libext2fs2:amd64=1.44.1-1ubuntu1.4`
- `libss2:amd64=1.44.1-1ubuntu1.4`

Licenses: (parsed from: `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcom-err2/copyright`, `/usr/share/doc/libext2fs2/copyright`, `/usr/share/doc/libss2/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.44.1-1ubuntu1.4
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.44.1-1ubuntu1.4.dsc' e2fsprogs_1.44.1-1ubuntu1.4.dsc 3241 SHA512:54691117a9ba838ce0dac97c46e8b088e4a89a8aca3fa3ff32d336b84a82bc14a9f707e80a7a6a2bbdf6292fee644232384a4e7d0055e1e45628c81199d51657
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.44.1.orig.tar.gz' e2fsprogs_1.44.1.orig.tar.gz 7544908 SHA512:c4b1f9baab70ceac9058286eeb75f57a738f01eaa0d9dd74eaaf9b0fd0709c954a0b3efb75896b9dd67ab2626febadd6635fe04a5c32e0700419d2531024dacf
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.44.1.orig.tar.gz.asc' e2fsprogs_1.44.1.orig.tar.gz.asc 488 SHA512:8e3771c784ac83b368e2258ebbd12869683be88cfad15b019ed5e60b72c21aac713494e987f3f3568e859b585808a41480027dd991163a785a93bdf78584853b
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.44.1-1ubuntu1.4.debian.tar.xz' e2fsprogs_1.44.1-1ubuntu1.4.debian.tar.xz 81864 SHA512:a16cb122618be567de9b7eca1a27062c865d6d6395933534e8bf38d1b35671c61557534e8899c6a45fc7875e433a99dae174fc8327369bd2eaae87f93bf66a2a
```

### `dpkg` source package: `elfutils=0.170-0.4ubuntu0.1`

Binary Packages:

- `libelf1:amd64=0.170-0.4ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libelf1/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-`

Source:

```console
$ apt-get source -qq --print-uris elfutils=0.170-0.4ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.170-0.4ubuntu0.1.dsc' elfutils_0.170-0.4ubuntu0.1.dsc 2422 SHA512:cc08e16e9e1b892911f1f48d465127ec621c5dfe9ad3054d5d52e1f165b6650ae76c6f590af05ba743c414ad738379b6a9467f33776e8d2c03a4f0d7b2097507
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.170.orig.tar.bz2' elfutils_0.170.orig.tar.bz2 8358001 SHA512:aca0b5e271138eaf86e36505ffb101181207b151e833e6cd7c18986ac50678542a5ecd2250f8dd6923ca497142f197c8b08fd225e4130b16b6203c24013d6d28
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.170-0.4ubuntu0.1.debian.tar.xz' elfutils_0.170-0.4ubuntu0.1.debian.tar.xz 51740 SHA512:a9d615f2dced250403c897ec1e2e2ff2b44523763b88cfad5656d60e864bb42b35384fdfdad372747499732c20e40e2e7d2de06a18c5284ea19f1a1617e2f254
```

### `dpkg` source package: `empy=3.3.2-1build1`

Binary Packages:

- `python-empy=3.3.2-1build1`

Licenses: (parsed from: `/usr/share/doc/python-empy/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris empy=3.3.2-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/e/empy/empy_3.3.2-1build1.dsc' empy_3.3.2-1build1.dsc 2161 SHA256:4fee77941fc5406214e9d2387b631040165329e0084319e5f5af52c0df948862
'http://archive.ubuntu.com/ubuntu/pool/universe/e/empy/empy_3.3.2.orig.tar.gz' empy_3.3.2.orig.tar.gz 138168 SHA256:99f016af2770c48ab57a65df7aae251360dc69a1514c15851458a71d4ddfea9c
'http://archive.ubuntu.com/ubuntu/pool/universe/e/empy/empy_3.3.2-1build1.debian.tar.xz' empy_3.3.2-1build1.debian.tar.xz 4688 SHA256:50eae836a5dbde23d563ef04b96e6e1f7bfc2cab6ab6ed1d62c68aacc235af21
```

### `dpkg` source package: `enum34=1.1.6-2`

Binary Packages:

- `python-enum34=1.1.6-2`

Licenses: (parsed from: `/usr/share/doc/python-enum34/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris enum34=1.1.6-2
'http://archive.ubuntu.com/ubuntu/pool/main/e/enum34/enum34_1.1.6-2.dsc' enum34_1.1.6-2.dsc 2194 SHA256:b3a8c78fd3289f68e6d2f4a21797ed74503c9cfd90d0e427ecb4a0106f3b1143
'http://archive.ubuntu.com/ubuntu/pool/main/e/enum34/enum34_1.1.6.orig.tar.gz' enum34_1.1.6.orig.tar.gz 40048 SHA256:8ad8c4783bf61ded74527bffb48ed9b54166685e4230386a9ed9b1279e2df5b1
'http://archive.ubuntu.com/ubuntu/pool/main/e/enum34/enum34_1.1.6-2.debian.tar.xz' enum34_1.1.6-2.debian.tar.xz 4036 SHA256:2b2a7b18652a66a81c23b665b9dfcc35bfd3d3d6d2262b6b4faf32cf0bc97ab7
```

### `dpkg` source package: `expat=2.2.5-3ubuntu0.9`

Binary Packages:

- `libexpat1:amd64=2.2.5-3ubuntu0.9`
- `libexpat1-dev:amd64=2.2.5-3ubuntu0.9`

Licenses: (parsed from: `/usr/share/doc/libexpat1/copyright`, `/usr/share/doc/libexpat1-dev/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris expat=2.2.5-3ubuntu0.9
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.2.5-3ubuntu0.9.dsc' expat_2.2.5-3ubuntu0.9.dsc 2267 SHA512:5c80706e1d54fe89c09201b842a4136fe74f4a9a1606768c3ddbafdd3f51d28ec422ac795337e4907ae8a1e41e94fbadc96959baef333fbf5d0925f58a70c3f1
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.2.5.orig.tar.gz' expat_2.2.5.orig.tar.gz 8273003 SHA512:61ce2a479521412e0c56c352106c4adfb61a6bedb883921aba3ebccc29311ddd192646ac2c51b41572728d4de6ab4cb60a1dbc71515d742a80a8b59d89ca74d6
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.2.5-3ubuntu0.9.debian.tar.xz' expat_2.2.5-3ubuntu0.9.debian.tar.xz 27460 SHA512:6c87b2ebdc487359a022efb9820bc4146cdcb0b68393bc3255af5e70739e94218c8c746f1c04908415882a939386f84a3c5dfa8089ed61217d96231dd36e0032
```

### `dpkg` source package: `findutils=4.6.0+git+20170828-2`

Binary Packages:

- `findutils=4.6.0+git+20170828-2`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.6.0+git+20170828-2
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0%2bgit%2b20170828-2.dsc' findutils_4.6.0+git+20170828-2.dsc 2221 SHA256:6997072de2f1b24457073275f7b8f15ad2f0569389dcb277ebe99dd1846e2ee9
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0%2bgit%2b20170828.orig.tar.xz' findutils_4.6.0+git+20170828.orig.tar.xz 1865192 SHA256:8d6571ffd5105307bcb1b20c4b7d5c2d0b5152e463b082801268bd3ec9e2bbfd
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0%2bgit%2b20170828-2.debian.tar.xz' findutils_4.6.0+git+20170828-2.debian.tar.xz 26532 SHA256:5b13792a14edec982fddcf74fe01b4380b909703d76aaba2860da51c6248de73
```

### `dpkg` source package: `freetype=2.8.1-2ubuntu2.2`

Binary Packages:

- `libfreetype6:amd64=2.8.1-2ubuntu2.2`

Licenses: (parsed from: `/usr/share/doc/libfreetype6/copyright`)

- `BSD-2-Clause`
- `BSD-3-Clause`
- `Catharon-OSL`
- `FTL`
- `GPL-2`
- `GPL-2+`
- `GZip`
- `OpenGroup-BSD-like`

Source:

```console
$ apt-get source -qq --print-uris freetype=2.8.1-2ubuntu2.2
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.8.1-2ubuntu2.2.dsc' freetype_2.8.1-2ubuntu2.2.dsc 2259 SHA512:588b8d5e7f9eb26e58150f4e7615595983d7b0101d7024cd1f58959b9bfea678117f4f51f824dcccc2a5a724b4e7610b66849132330713ae05a5d70721dad888
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.8.1.orig.tar.gz' freetype_2.8.1.orig.tar.gz 4242784 SHA512:60164caefc506c096142a05e4b578f48d65350fca3082527cd421ed5d0b9671c1123c2303b50ea09dc204288d6d4cbb548a761f67bd8260220f2c83b8f144d42
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.8.1-2ubuntu2.2.diff.gz' freetype_2.8.1-2ubuntu2.2.diff.gz 46148 SHA512:ca57cc2484155cadbab7b65b4366c4a3e25138c6eff35326b57dd65591a06b625f8c48b4b0452111bf612b1aa18c9d79e27e0dbd17c54b610983a1834cf18a60
```

### `dpkg` source package: `gcc-4.8=4.8.5-4ubuntu8`

Binary Packages:

- `gcc-4.8-base:amd64=4.8.5-4ubuntu8`
- `libasan0:amd64=4.8.5-4ubuntu8`
- `libgcc-4.8-dev:amd64=4.8.5-4ubuntu8`
- `libstdc++-4.8-dev:amd64=4.8.5-4ubuntu8`

Licenses: (parsed from: `/usr/share/doc/gcc-4.8-base/copyright`, `/usr/share/doc/libasan0/copyright`, `/usr/share/doc/libgcc-4.8-dev/copyright`, `/usr/share/doc/libstdc++-4.8-dev/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris gcc-4.8=4.8.5-4ubuntu8
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gcc-4.8/gcc-4.8_4.8.5-4ubuntu8.dsc' gcc-4.8_4.8.5-4ubuntu8.dsc 11436 SHA256:6a5d88d7bead454f851a4fefa473d2c0cb93edae13a6c7c8aa00939f8d9ad5a7
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gcc-4.8/gcc-4.8_4.8.5.orig.tar.gz' gcc-4.8_4.8.5.orig.tar.gz 66569326 SHA256:9c3263058e5fc8a89147fdc03afafcf1cfc6912c3d034e2ceabe40966d4bb4f7
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gcc-4.8/gcc-4.8_4.8.5-4ubuntu8.diff.gz' gcc-4.8_4.8.5-4ubuntu8.diff.gz 975822 SHA256:fc707c27b4298e69cbc2765cfa2f1f418f5f666fe528e606cca458318a9d00d4
```

### `dpkg` source package: `gcc-7=7.5.0-3ubuntu1~18.04`

Binary Packages:

- `gcc-7-base:amd64=7.5.0-3ubuntu1~18.04`
- `libgfortran4:amd64=7.5.0-3ubuntu1~18.04`

Licenses: (parsed from: `/usr/share/doc/gcc-7-base/copyright`, `/usr/share/doc/libgfortran4/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-7=7.5.0-3ubuntu1~18.04
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-7/gcc-7_7.5.0-3ubuntu1%7e18.04.dsc' gcc-7_7.5.0-3ubuntu1~18.04.dsc 28071 SHA512:1c06ed6e3fb7d3799aaad1915e318597a90ec87ec513d6710157cdf3ce877e15989ea62b70e9b6d6a06c9e24ded1174d87621d01e025797b50d13347126dc3ec
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-7/gcc-7_7.5.0.orig.tar.gz' gcc-7_7.5.0.orig.tar.gz 73877115 SHA512:806470ea2d8f69a8d7eed14e38d50ea58b7cb6b8da1bd91fecf15f2f840d67f321fb9602f2c25d44f13df12f80a4f8e2dbe4450d482ae876e3678f69a93dd2d8
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-7/gcc-7_7.5.0-3ubuntu1%7e18.04.diff.gz' gcc-7_7.5.0-3ubuntu1~18.04.diff.gz 574614 SHA512:030ab7a7894d9af4ce280556bbfd90a695d6d9fc0814f768184dc0cccfb243015f35afc85b97b92a2e1fc7054872b5d59f9fddeb65ca057cbbb3ad2a17935e98
```

### `dpkg` source package: `gcc-8=8.4.0-1ubuntu1~18.04`

Binary Packages:

- `gcc-8-base:amd64=8.4.0-1ubuntu1~18.04`
- `libatomic1:amd64=8.4.0-1ubuntu1~18.04`
- `libgcc1:amd64=1:8.4.0-1ubuntu1~18.04`
- `libgomp1:amd64=8.4.0-1ubuntu1~18.04`
- `libitm1:amd64=8.4.0-1ubuntu1~18.04`
- `libquadmath0:amd64=8.4.0-1ubuntu1~18.04`
- `libstdc++6:amd64=8.4.0-1ubuntu1~18.04`
- `libtsan0:amd64=8.4.0-1ubuntu1~18.04`

Licenses: (parsed from: `/usr/share/doc/gcc-8-base/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libgcc1/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan0/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-8=8.4.0-1ubuntu1~18.04
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-8/gcc-8_8.4.0-1ubuntu1%7e18.04.dsc' gcc-8_8.4.0-1ubuntu1~18.04.dsc 36382 SHA512:064409c787f62bff87a494f2952f5c3f264d5a7c8508c83b863c1a1ad410d25988cfc73afde9908221258f81714164121cc1f02e3699ca2283c6a3aa035d1ddd
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-8/gcc-8_8.4.0.orig.tar.gz' gcc-8_8.4.0.orig.tar.gz 85278215 SHA512:ce6ff302ab2e252950bc446bc2b58c198c4b1a75d59122c00845c026a29068f412e0d59cd6ddd8b648838f80589252a1695afc6193fb669082c9a1c4ad14b1dc
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-8/gcc-8_8.4.0-1ubuntu1%7e18.04.diff.gz' gcc-8_8.4.0-1ubuntu1~18.04.diff.gz 510634 SHA512:7bd97a04eccd35c3483a82b238d8d54c91071c4d1361cb30fb3fbf7b512c84b9d0bc80499373f2da3e17520d112125ebfebae6b93746feede78f9eecc1ccd4ac
```

### `dpkg` source package: `gdbm=1.14.1-6`

Binary Packages:

- `libgdbm-compat4:amd64=1.14.1-6`
- `libgdbm5:amd64=1.14.1-6`

Licenses: (parsed from: `/usr/share/doc/libgdbm-compat4/copyright`, `/usr/share/doc/libgdbm5/copyright`)

- `GFDL-1.3+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.14.1-6
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.14.1-6.dsc' gdbm_1.14.1-6.dsc 2293 SHA256:85fc353e81fc54b49d9c13c71f4247836fb1aac2693e98416a6821de8cfe7b41
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.14.1.orig.tar.gz' gdbm_1.14.1.orig.tar.gz 894412 SHA256:cdceff00ffe014495bed3aed71c7910aa88bf29379f795abc0f46d4ee5f8bc5f
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.14.1-6.debian.tar.xz' gdbm_1.14.1-6.debian.tar.xz 27492 SHA256:c9da59f11d5e40ecd877f1256c53ea4750b9d614c7885800e42d0f1885996658
```

### `dpkg` source package: `glib2.0=2.56.4-0ubuntu0.18.04.9`

Binary Packages:

- `libglib2.0-0:amd64=2.56.4-0ubuntu0.18.04.9`
- `libglib2.0-bin=2.56.4-0ubuntu0.18.04.9`
- `libglib2.0-data=2.56.4-0ubuntu0.18.04.9`
- `libglib2.0-dev:amd64=2.56.4-0ubuntu0.18.04.9`
- `libglib2.0-dev-bin=2.56.4-0ubuntu0.18.04.9`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0/copyright`, `/usr/share/doc/libglib2.0-bin/copyright`, `/usr/share/doc/libglib2.0-data/copyright`, `/usr/share/doc/libglib2.0-dev/copyright`, `/usr/share/doc/libglib2.0-dev-bin/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris glib2.0=2.56.4-0ubuntu0.18.04.9
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.56.4-0ubuntu0.18.04.9.dsc' glib2.0_2.56.4-0ubuntu0.18.04.9.dsc 3308 SHA512:1209ada47df60c25f02e82371e8ebcdde130ebbf8642639a8a67867ca57dd2f5741937d36e645ccbc15be35e92664d60b5b7d3ff1342fe365bbe512b5b3e3cb9
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.56.4.orig.tar.xz' glib2.0_2.56.4.orig.tar.xz 7029768 SHA512:280a46c2af13283a08c15ff0b4f5492659c2884521930600ad45310ed181c44a878ad8f9b36bae68ed6e7d92db6f1630f7bf015148c513dc317d25807f13abb0
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.56.4-0ubuntu0.18.04.9.debian.tar.xz' glib2.0_2.56.4-0ubuntu0.18.04.9.debian.tar.xz 107488 SHA512:9cbf02335e216eb2d74914de67411d89b76ff4a18d4194e19801326eb31be8d9300a4416588d7ad1c6fe384e57c4d986f64f05a93ae69fa137d68e0c80c174be
```

### `dpkg` source package: `glibc=2.27-3ubuntu1.6`

Binary Packages:

- `libc-bin=2.27-3ubuntu1.6`
- `libc-dev-bin=2.27-3ubuntu1.6`
- `libc6:amd64=2.27-3ubuntu1.6`
- `libc6-dev:amd64=2.27-3ubuntu1.6`
- `multiarch-support=2.27-3ubuntu1.6`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`, `/usr/share/doc/multiarch-support/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.27-3ubuntu1.6
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.27-3ubuntu1.6.dsc' glibc_2.27-3ubuntu1.6.dsc 9612 SHA512:aa5e035e3e8f749abeb3bbd34089d7718bd385710ef4cb00e55bad25cac4d6a3c905e044d115fff8f74417ef21839e8a26eb8897aac32dc9e98e3f9015118fc1
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.27.orig.tar.xz' glibc_2.27.orig.tar.xz 15923832 SHA512:a0580fb52bc4ea8bb6e6734086b0dc66bd661060cdd837965880b989866490063c2420f250fb19b54e3547c58a5a7f8e012699e6513ce413746fd236ddd239e8
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.27-3ubuntu1.6.debian.tar.xz' glibc_2.27-3ubuntu1.6.debian.tar.xz 1111120 SHA512:5b696d4c5404dfa71724a6758b312ae4a2c82b3e9da56e5b5e3a76a903c348bf14dfb9bae77e1453da28a2ce96fdc3405513d60e0c8dd7e04c226ebe34fed606
```

### `dpkg` source package: `gmp=2:6.1.2+dfsg-2ubuntu0.1`

Binary Packages:

- `libgmp10:amd64=2:6.1.2+dfsg-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libgmp10/copyright`)

- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris gmp=2:6.1.2+dfsg-2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.2%2bdfsg-2ubuntu0.1.dsc' gmp_6.1.2+dfsg-2ubuntu0.1.dsc 2283 SHA512:05711b25a05e2bd13887b82afd54458f357c1524ce26da37373f9567f97bc7c6ab6ddd379c31bd0b6d007b3ca60f9bdc8116562029385a426bfce06c47ccecee
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.2%2bdfsg.orig.tar.xz' gmp_6.1.2+dfsg.orig.tar.xz 1804424 SHA512:cd3771807ebd467cbfdd0c08e5abef107e88af35dfa75e0aa514ea335479c570392f453c05cb033b558f81dc5c0e132cc5e2f56209ef3647fe14ed41cd961e89
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.2%2bdfsg-2ubuntu0.1.debian.tar.xz' gmp_6.1.2+dfsg-2ubuntu0.1.debian.tar.xz 21272 SHA512:3566a04bb8271cce23068ccdcd9fa9a9a4d5f42fca15442a2f1c23cc5b5f03b33ce241b574d5b361018c685b3cd4f005395cc2fda36fd8d9801631463c8344f3
```

### `dpkg` source package: `gnupg2=2.2.4-1ubuntu1.6`

Binary Packages:

- `dirmngr=2.2.4-1ubuntu1.6`
- `gnupg=2.2.4-1ubuntu1.6`
- `gnupg-l10n=2.2.4-1ubuntu1.6`
- `gnupg-utils=2.2.4-1ubuntu1.6`
- `gnupg2=2.2.4-1ubuntu1.6`
- `gpg=2.2.4-1ubuntu1.6`
- `gpg-agent=2.2.4-1ubuntu1.6`
- `gpg-wks-client=2.2.4-1ubuntu1.6`
- `gpg-wks-server=2.2.4-1ubuntu1.6`
- `gpgconf=2.2.4-1ubuntu1.6`
- `gpgsm=2.2.4-1ubuntu1.6`
- `gpgv=2.2.4-1ubuntu1.6`

Licenses: (parsed from: `/usr/share/doc/dirmngr/copyright`, `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gnupg-l10n/copyright`, `/usr/share/doc/gnupg-utils/copyright`, `/usr/share/doc/gnupg2/copyright`, `/usr/share/doc/gpg/copyright`, `/usr/share/doc/gpg-agent/copyright`, `/usr/share/doc/gpg-wks-client/copyright`, `/usr/share/doc/gpg-wks-server/copyright`, `/usr/share/doc/gpgconf/copyright`, `/usr/share/doc/gpgsm/copyright`, `/usr/share/doc/gpgv/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`
- `RFC-Reference`
- `TinySCHEME`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris gnupg2=2.2.4-1ubuntu1.6
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.4-1ubuntu1.6.dsc' gnupg2_2.2.4-1ubuntu1.6.dsc 3816 SHA512:fd78661bb18007758903eae843657368874d788a7d3ab6d42eb2ec1f833a02e25983f93fba9afd651b20eb50e7be6c2d9e80e9ff493d5a4dc9ac4cc07ecf9eb9
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.4.orig.tar.bz2' gnupg2_2.2.4.orig.tar.bz2 6571487 SHA512:3d5c93b7662433103e9549d066a6b1a0c09d595851fab712d2ee844a55157e952a8a2dd5deff70fa8dd6817481f81c3fe5135603bca03206857310d04c1067a8
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.4.orig.tar.bz2.asc' gnupg2_2.2.4.orig.tar.bz2.asc 952 SHA512:85c60b8ff5f7d307d5b741e446915ea067804ad27b4a4b779fbafc11800b0cfb2a94d956b502164a3781b5ad2807434215a3413b913ce22d656838163dc1dabb
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.4-1ubuntu1.6.debian.tar.bz2' gnupg2_2.2.4-1ubuntu1.6.debian.tar.bz2 91188 SHA512:b3c96b7a12862052f39f220696fee0a8629cd86b9f351eef8b2844b1944cb9462983f03ec2752cf69995013463e32eef11211f2b8e3706b0aefb378c9e946dc3
```

### `dpkg` source package: `gnutls28=3.5.18-1ubuntu1.6`

Binary Packages:

- `libgnutls30:amd64=3.5.18-1ubuntu1.6`

Licenses: (parsed from: `/usr/share/doc/libgnutls30/copyright`)

- `CC0 license`
- `GFDL-1.3`
- `GPL`
- `GPL-3`
- `LGPL`
- `LGPL-3`
- `LGPL2.1`
- `The MIT License (MIT)`
- `The main library is licensed under GNU Lesser`

Source:

```console
$ apt-get source -qq --print-uris gnutls28=3.5.18-1ubuntu1.6
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.5.18-1ubuntu1.6.dsc' gnutls28_3.5.18-1ubuntu1.6.dsc 3434 SHA512:2868b533ea66b8f48aa4ea4aef4ab6c50feae1fc045edb6fe91d3306ba705f26aedebbf3434d62d659e6e95288b59d25dbd1c05152272975899be05942822a8d
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.5.18.orig.tar.xz' gnutls28_3.5.18.orig.tar.xz 7261980 SHA512:434cf33a4221fe2edce1b531cb53690d14a0991cb2056006021f625fb018987351f8ec917c3a7803e5e64179cf1647a3002ae783736ffca3188d2d294b76df52
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.5.18.orig.tar.xz.asc' gnutls28_3.5.18.orig.tar.xz.asc 534 SHA512:c5716fed2d87b88690194cef3aa6ad6674162c77ea6bd536dcff7c32dafe66304d4d2d8cefecf9ee709cf0fae8dae40e9e71dc2c69fd55abf8a15fb6cee52950
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.5.18-1ubuntu1.6.debian.tar.xz' gnutls28_3.5.18-1ubuntu1.6.debian.tar.xz 96712 SHA512:f0ab2f492d6a31264098c57c8ee9fd1adef297e3739ec156556e43b6274b6cca6e45d228f20c9a7ee9bab357672809374b0460b66731f7c5c15c205dad3b9819
```

### `dpkg` source package: `gobject-introspection=1.56.1-1`

Binary Packages:

- `gir1.2-glib-2.0:amd64=1.56.1-1`
- `libgirepository-1.0-1:amd64=1.56.1-1`

Licenses: (parsed from: `/usr/share/doc/gir1.2-glib-2.0/copyright`, `/usr/share/doc/libgirepository-1.0-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris gobject-introspection=1.56.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.56.1-1.dsc' gobject-introspection_1.56.1-1.dsc 2915 SHA256:978c16c9988d7bc6fed4f112012d9027d5add7e783d405057c4757e8d377a5a5
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.56.1.orig.tar.xz' gobject-introspection_1.56.1.orig.tar.xz 1397812 SHA256:5b2875ccff99ff7baab63a34b67f8c920def240e178ff50add809e267d9ea24b
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.56.1-1.debian.tar.xz' gobject-introspection_1.56.1-1.debian.tar.xz 20460 SHA256:20fb97a39c69106ab3b008b31e0409bc6de47989a888004c24dba64397151d86
```

### `dpkg` source package: `googletest=1.8.0-6`

Binary Packages:

- `google-mock:amd64=1.8.0-6`
- `googletest:amd64=1.8.0-6`
- `libgtest-dev:amd64=1.8.0-6`

Licenses: (parsed from: `/usr/share/doc/google-mock/copyright`, `/usr/share/doc/googletest/copyright`, `/usr/share/doc/libgtest-dev/copyright`)

- `Apache`
- `BSD-C3`
- `GAP`

Source:

```console
$ apt-get source -qq --print-uris googletest=1.8.0-6
'http://archive.ubuntu.com/ubuntu/pool/universe/g/googletest/googletest_1.8.0-6.dsc' googletest_1.8.0-6.dsc 2077 SHA256:80407dd39851eee21860f05b4f3d88e9c3fb905d3aa33c4a19496ddc33da66d4
'http://archive.ubuntu.com/ubuntu/pool/universe/g/googletest/googletest_1.8.0.orig.tar.gz' googletest_1.8.0.orig.tar.gz 1281617 SHA256:58a6f4277ca2bc8565222b3bbd58a177609e9c488e8a72649359ba51450db7d8
'http://archive.ubuntu.com/ubuntu/pool/universe/g/googletest/googletest_1.8.0-6.debian.tar.xz' googletest_1.8.0-6.debian.tar.xz 8492 SHA256:0b11f825aae0c84d1b0be43ffc3e6b288d2c3b064f94ac5f241a72493a51b253
```

### `dpkg` source package: `gpgme1.0=1.10.0-1ubuntu2`

Binary Packages:

- `libgpgme-dev=1.10.0-1ubuntu2`
- `libgpgme11:amd64=1.10.0-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libgpgme-dev/copyright`, `/usr/share/doc/libgpgme11/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gpgme1.0=1.10.0-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gpgme1.0/gpgme1.0_1.10.0-1ubuntu2.dsc' gpgme1.0_1.10.0-1ubuntu2.dsc 3046 SHA512:c3271bad11945eb4edbc6775bb5f2b9c4f625faaa0a5caeb6babb8d9b6150c7fccc452a6c84dc5ba1cc7d5ed0ac4a27af08ff02336215eb70ff8193bacb0b461
'http://archive.ubuntu.com/ubuntu/pool/main/g/gpgme1.0/gpgme1.0_1.10.0.orig.tar.bz2' gpgme1.0_1.10.0.orig.tar.bz2 1370162 SHA512:8ffa348ef4775ed3209486444d54411e28c9a0ff1d7a4315feb0b2856ccd5d110b219100ea41262ca0016af69a1936d79fee0eadf2599c7c5bbeed05d11f7ab5
'http://archive.ubuntu.com/ubuntu/pool/main/g/gpgme1.0/gpgme1.0_1.10.0.orig.tar.bz2.asc' gpgme1.0_1.10.0.orig.tar.bz2.asc 534 SHA512:5a2f7b2e1109bbe71719ad3bb2a0e30e0dae220ed0223a98debb6a0eb8c6ca6e6fd42d3ddd714e253754b41b7321e711c58188e25db248d20bb96d99cbf86136
'http://archive.ubuntu.com/ubuntu/pool/main/g/gpgme1.0/gpgme1.0_1.10.0-1ubuntu2.debian.tar.xz' gpgme1.0_1.10.0-1ubuntu2.debian.tar.xz 18372 SHA512:9c412f0adbf98b97561c4915dba70ba772c9ab299d25c402dab78645e8ebc5c5db6655ecd215b8303c94db71742bf96585b6dc31b5a6864624b62cb3ed0a397f
```

### `dpkg` source package: `graphite2=1.3.11-2`

Binary Packages:

- `libgraphite2-3:amd64=1.3.11-2`
- `libgraphite2-dev:amd64=1.3.11-2`

Licenses: (parsed from: `/usr/share/doc/libgraphite2-3/copyright`, `/usr/share/doc/libgraphite2-dev/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-2.1+ `
- `MPL-1.1`
- `custom-sil-open-font-license`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris graphite2=1.3.11-2
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.11-2.dsc' graphite2_1.3.11-2.dsc 2367 SHA256:3c2f5ed2b6021e9a18456215d5d01354434f14577dbc862f7f53c8ce62200d71
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.11.orig.tar.gz' graphite2_1.3.11.orig.tar.gz 4236768 SHA256:945c01d3647b355d68e5541773fc99a7f29ede6a264bcbd735156a7c493459ff
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.11-2.debian.tar.xz' graphite2_1.3.11-2.debian.tar.xz 14068 SHA256:c47ef4ae6edfa6ce02483f347e67786b0fce089515087370ccc10f22ad711f90
```

### `dpkg` source package: `grep=3.1-2build1`

Binary Packages:

- `grep=3.1-2build1`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=3.1-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.1-2build1.dsc' grep_3.1-2build1.dsc 2116 SHA512:420de2689ce397d7ae7cfa80bb3f2285445325269f649c387cd265770ba8ea6c0d7a87b5f40d86f88959f807ed77a5dffd6ebf2abdddf05c5c5653df3c6a1232
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.1.orig.tar.xz' grep_3.1.orig.tar.xz 1370880 SHA512:05494381c7dd8aad7e2ee4c17450de8d7b969a99dcfe17747db60df3475bf02d5323d091e896e8343e4f3251c29dc7f0b7a9f93c575c9d58ee2a57014c2c9d26
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.1-2build1.debian.tar.bz2' grep_3.1-2build1.debian.tar.bz2 110087 SHA512:ca29a8001c406a2914a9edc1859f2615abc08dc1c8c8a42e48036844ee6249436dba7a43f5e5c078cb44605d620cd0d93904c92178acf73b42cb6faf416be310
```

### `dpkg` source package: `gzip=1.6-5ubuntu1.2`

Binary Packages:

- `gzip=1.6-5ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.6-5ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6-5ubuntu1.2.dsc' gzip_1.6-5ubuntu1.2.dsc 2027 SHA512:988c5bd84a707fe1b68237c4c81f8537ec34d7f60c2ba9755c3628c3305d4e318103eb208981784957bfbdc4e9b8495cfd3e8b1a4e4c520427c32542827dfda4
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6.orig.tar.gz' gzip_1.6.orig.tar.gz 1074924 SHA512:7fe04ddc101f8a6a8c91ca9cc3502ba80e08011ba27005ddde6bc5926b44066c2f943108c78ac66596cb5ea61f1f7e845a90899a11623638c15088d76e95f04a
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6-5ubuntu1.2.debian.tar.xz' gzip_1.6-5ubuntu1.2.debian.tar.xz 20408 SHA512:2253a804bcc3f13696ecef5bb6e5297f3902a471ba7ea239b4309c5fdf377197984f33fbff881f6f8d67540017bbf9f8234519fe332af6397c429454f32d5e13
```

### `dpkg` source package: `harfbuzz=1.7.2-1ubuntu1`

Binary Packages:

- `gir1.2-harfbuzz-0.0:amd64=1.7.2-1ubuntu1`
- `libharfbuzz-dev:amd64=1.7.2-1ubuntu1`
- `libharfbuzz-gobject0:amd64=1.7.2-1ubuntu1`
- `libharfbuzz-icu0:amd64=1.7.2-1ubuntu1`
- `libharfbuzz0b:amd64=1.7.2-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/gir1.2-harfbuzz-0.0/copyright`, `/usr/share/doc/libharfbuzz-dev/copyright`, `/usr/share/doc/libharfbuzz-gobject0/copyright`, `/usr/share/doc/libharfbuzz-icu0/copyright`, `/usr/share/doc/libharfbuzz0b/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris harfbuzz=1.7.2-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_1.7.2-1ubuntu1.dsc' harfbuzz_1.7.2-1ubuntu1.dsc 2825 SHA256:0222317c07eecbb164a537694dcb01ff4c658a56e577f9667cbb8ec144d287fa
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_1.7.2.orig.tar.bz2' harfbuzz_1.7.2.orig.tar.bz2 1708416 SHA256:a790585e35c1a87f0dcc23580c84b7cc2324e6f67a2946178d278c2a36c790cb
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_1.7.2-1ubuntu1.debian.tar.xz' harfbuzz_1.7.2-1ubuntu1.debian.tar.xz 9168 SHA256:f94a2a0990fd0b39fdef14444fa39b0bd1d15f6c79e74b697856ba2cef06b0bf
```

### `dpkg` source package: `heimdal=7.5.0+dfsg-1ubuntu0.2`

Binary Packages:

- `libasn1-8-heimdal:amd64=7.5.0+dfsg-1ubuntu0.2`
- `libgssapi3-heimdal:amd64=7.5.0+dfsg-1ubuntu0.2`
- `libhcrypto4-heimdal:amd64=7.5.0+dfsg-1ubuntu0.2`
- `libheimbase1-heimdal:amd64=7.5.0+dfsg-1ubuntu0.2`
- `libheimntlm0-heimdal:amd64=7.5.0+dfsg-1ubuntu0.2`
- `libhx509-5-heimdal:amd64=7.5.0+dfsg-1ubuntu0.2`
- `libkrb5-26-heimdal:amd64=7.5.0+dfsg-1ubuntu0.2`
- `libroken18-heimdal:amd64=7.5.0+dfsg-1ubuntu0.2`
- `libwind0-heimdal:amd64=7.5.0+dfsg-1ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/libasn1-8-heimdal/copyright`, `/usr/share/doc/libgssapi3-heimdal/copyright`, `/usr/share/doc/libhcrypto4-heimdal/copyright`, `/usr/share/doc/libheimbase1-heimdal/copyright`, `/usr/share/doc/libheimntlm0-heimdal/copyright`, `/usr/share/doc/libhx509-5-heimdal/copyright`, `/usr/share/doc/libkrb5-26-heimdal/copyright`, `/usr/share/doc/libroken18-heimdal/copyright`, `/usr/share/doc/libwind0-heimdal/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `custom`
- `none`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `hostname=3.20`

Binary Packages:

- `hostname=3.20`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.20
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.20.dsc' hostname_3.20.dsc 1429 SHA256:1fd7b0b2b61e58aa0e50de4d375072c938cb3cc4b722bc73e085e3a3691d9114
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.20.tar.gz' hostname_3.20.tar.gz 13336 SHA256:e7ed56f8c532573ff34d9bd6e7a10d04fbbb2c7fae187898805868e5fed24ab0
```

### `dpkg` source package: `hwloc=1.11.9-1`

Binary Packages:

- `libhwloc-dev:amd64=1.11.9-1`
- `libhwloc-plugins=1.11.9-1`
- `libhwloc5:amd64=1.11.9-1`

Licenses: (parsed from: `/usr/share/doc/libhwloc-dev/copyright`, `/usr/share/doc/libhwloc-plugins/copyright`, `/usr/share/doc/libhwloc5/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris hwloc=1.11.9-1
'http://archive.ubuntu.com/ubuntu/pool/universe/h/hwloc/hwloc_1.11.9-1.dsc' hwloc_1.11.9-1.dsc 2661 SHA256:96705c8bef41c088d215dab615f4a813658cdb4ad5b6d18ec8d463eac6bf88f5
'http://archive.ubuntu.com/ubuntu/pool/universe/h/hwloc/hwloc_1.11.9.orig.tar.bz2' hwloc_1.11.9.orig.tar.bz2 4221902 SHA256:394333184248d63cb2708a976e57f05337d03bb50c33aa3097ff5c5a74a85164
'http://archive.ubuntu.com/ubuntu/pool/universe/h/hwloc/hwloc_1.11.9-1.debian.tar.bz2' hwloc_1.11.9-1.debian.tar.bz2 10200 SHA256:82d20f317a796b196e19c1b6029a2c694a95aaee59be7f36c04a3021efa83ef6
```

### `dpkg` source package: `icu-le-hb=1.0.3+git161113-4`

Binary Packages:

- `libicu-le-hb-dev:amd64=1.0.3+git161113-4`
- `libicu-le-hb0:amd64=1.0.3+git161113-4`

Licenses: (parsed from: `/usr/share/doc/libicu-le-hb-dev/copyright`, `/usr/share/doc/libicu-le-hb0/copyright`)

- `GPL-3`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris icu-le-hb=1.0.3+git161113-4
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu-le-hb/icu-le-hb_1.0.3%2bgit161113-4.dsc' icu-le-hb_1.0.3+git161113-4.dsc 1929 SHA256:e486c93a9795a26347607ea19ad2ca97e043b6de3dcbbc8bf70b0826d740ed50
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu-le-hb/icu-le-hb_1.0.3%2bgit161113.orig.tar.xz' icu-le-hb_1.0.3+git161113.orig.tar.xz 31460 SHA256:777cdb6fecedb6400cab85894a8407bb70771e38a0e99b837ccf9e4a55f8578c
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu-le-hb/icu-le-hb_1.0.3%2bgit161113-4.debian.tar.xz' icu-le-hb_1.0.3+git161113-4.debian.tar.xz 3176 SHA256:e140404464ff5c26af2f7f2f974cb4447e833a64f4529e85564ad367fb483ee5
```

### `dpkg` source package: `icu=60.2-3ubuntu3.2`

Binary Packages:

- `icu-devtools=60.2-3ubuntu3.2`
- `libicu-dev=60.2-3ubuntu3.2`
- `libicu60:amd64=60.2-3ubuntu3.2`
- `libiculx60:amd64=60.2-3ubuntu3.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris icu=60.2-3ubuntu3.2
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_60.2-3ubuntu3.2.dsc' icu_60.2-3ubuntu3.2.dsc 1845 SHA512:7a31aeb82e3d5456296665d77efb93c58f93fc49eef10030de32a2811f24592c2ec1f16d9f734ea8a8613bf5ac1bc5ecdb85b08698bdaa51fbf0954722eefa7e
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_60.2.orig.tar.gz' icu_60.2.orig.tar.gz 23315541 SHA512:ecbd9eea199d261d5f2b262abab6b1f3ee4e993081faca1426046b4ed2eadbb082fca3ebdeff82f6b431eafa7ddbe764fe64f9d96bf96486d1aa51cdc4c3d8b2
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_60.2-3ubuntu3.2.debian.tar.xz' icu_60.2-3ubuntu3.2.debian.tar.xz 29840 SHA512:85fc052c31cb78043a3d4029d0024e2871443aa6f31fce677aec398bb2f73d51ff1ba82d19c9e182d8d2bba2e08dd71e2ec8e8edde8ec1455c79eb63ee205a12
```

### `dpkg` source package: `infinipath-psm=3.3+20.604758e7-5`

Binary Packages:

- `libpsm-infinipath1=3.3+20.604758e7-5`

Licenses: (parsed from: `/usr/share/doc/libpsm-infinipath1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris infinipath-psm=3.3+20.604758e7-5
'http://archive.ubuntu.com/ubuntu/pool/universe/i/infinipath-psm/infinipath-psm_3.3%2b20.604758e7-5.dsc' infinipath-psm_3.3+20.604758e7-5.dsc 2284 SHA256:5b42b5d421a2bcc86999a019adfeeb0194584ac586374a285d6ae54ac018e2ac
'http://archive.ubuntu.com/ubuntu/pool/universe/i/infinipath-psm/infinipath-psm_3.3%2b20.604758e7.orig.tar.xz' infinipath-psm_3.3+20.604758e7.orig.tar.xz 287112 SHA256:2fb37b3436866b7f6d7244edded875bf7ebc89e7a09a1f372ace548d0f90481d
'http://archive.ubuntu.com/ubuntu/pool/universe/i/infinipath-psm/infinipath-psm_3.3%2b20.604758e7-5.debian.tar.xz' infinipath-psm_3.3+20.604758e7-5.debian.tar.xz 9312 SHA256:d1cc95c8f929d86ebdd3ea12214ee7a9d4493db1f2cd2b9332f89c56ccab0a63
```

### `dpkg` source package: `init-system-helpers=1.51`

Binary Packages:

- `init-system-helpers=1.51`

Licenses: (parsed from: `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.51
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.51.dsc' init-system-helpers_1.51.dsc 1963 SHA256:82f0e30fef2ad14c65f9c7d8ccafd43549451041fdf661dca28b963a6cef02e4
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.51.tar.xz' init-system-helpers_1.51.tar.xz 37468 SHA256:e18b28efe8df087146d9c1e4e9c25386ee1b7312f518d48a2a38469a6c661be0
```

### `dpkg` source package: `keyutils=1.5.9-9.2ubuntu2.1`

Binary Packages:

- `libkeyutils1:amd64=1.5.9-9.2ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.5.9-9.2ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9-9.2ubuntu2.1.dsc' keyutils_1.5.9-9.2ubuntu2.1.dsc 2237 SHA512:61f4e6581936491c0e7276bff184340181966f893160de274b42cde482e6137d0cca7752fd2cf007a5e88292ee54ecd6ffafcb852d6522505d474bdda58625e6
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9.orig.tar.bz2' keyutils_1.5.9.orig.tar.bz2 74683 SHA512:d4ee1dabb87844e18bfd8d094a5bc9ce792c96720b71e77961b6c36bb1addb9acea2a7004ddfba1d09b167af908368162312e5c3656b22a6266955bb57b887e2
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9-9.2ubuntu2.1.debian.tar.xz' keyutils_1.5.9-9.2ubuntu2.1.debian.tar.xz 19340 SHA512:03ec3595871f536dcba7979869a4e54054f94172875702ae787bf9207896cde48db038eeaf77672a7110276de9a1ac8827b50ed054121cbf6f5954a25f8063d9
```

### `dpkg` source package: `krb5=1.16-2ubuntu0.2`

Binary Packages:

- `libgssapi-krb5-2:amd64=1.16-2ubuntu0.2`
- `libk5crypto3:amd64=1.16-2ubuntu0.2`
- `libkrb5-3:amd64=1.16-2ubuntu0.2`
- `libkrb5support0:amd64=1.16-2ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.16-2ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.16-2ubuntu0.2.dsc' krb5_1.16-2ubuntu0.2.dsc 3566 SHA512:04d0fe2c659918de633560296f62b19b4f358efc714be7ce90938bdfd1d9b1c13d4de597761ef162077fb5a53b48cfa49583be0057d9c232d26736856a89dcae
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.16.orig.tar.gz' krb5_1.16.orig.tar.gz 9474479 SHA512:7e162467b95dad2b6aaa11686d08a00f1cc4eb08247fca8f0e5a8bcaa5f9f7b42cdf00db69c5c6111bdf9eb8063d53cef3bb207ce5d6a287615ca10b710153f9
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.16-2ubuntu0.2.debian.tar.xz' krb5_1.16-2ubuntu0.2.debian.tar.xz 100948 SHA512:77a936bb4cbcefdecc24b9c2d45c4275b40cb363dda386f02347bc4d6668408c405a23bc795722315d4dfd77db49584d6e494235f84dc6b93db0563c749c558b
```

### `dpkg` source package: `lapack=3.7.1-4ubuntu1`

Binary Packages:

- `libblas3:amd64=3.7.1-4ubuntu1`
- `liblapack3:amd64=3.7.1-4ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libblas3/copyright`, `/usr/share/doc/liblapack3/copyright`)

- `BSD-3-clause`
- `BSD-3-clause-intel`

Source:

```console
$ apt-get source -qq --print-uris lapack=3.7.1-4ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/lapack_3.7.1-4ubuntu1.dsc' lapack_3.7.1-4ubuntu1.dsc 2920 SHA256:e33bcdea935109083a85442f1826cb4fef865c7e56fb5b38e75a08a8defc3fcd
'http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/lapack_3.7.1.orig.tar.gz' lapack_3.7.1.orig.tar.gz 9137261 SHA256:f6c53fd9f56932f3ddb3d5e24c1c07e4cd9b3b08e7f89de9c867125eecc9a1c8
'http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/lapack_3.7.1-4ubuntu1.debian.tar.xz' lapack_3.7.1-4ubuntu1.debian.tar.xz 20956 SHA256:0b981a911d7a8cde6b1addd3d823be88d29807f50c19e71e1a8a233e469c3a6d
```

### `dpkg` source package: `libarchive=3.2.2-3.1ubuntu0.7`

Binary Packages:

- `libarchive13:amd64=3.2.2-3.1ubuntu0.7`

Licenses: (parsed from: `/usr/share/doc/libarchive13/copyright`)

- `Apache-2.0`
- `BSD-1-clause-UCB`
- `BSD-124-clause-UCB`
- `BSD-2-clause`
- `BSD-3-clause-UCB`
- `BSD-4-clause-UCB`
- `Expat`
- `PD`

Source:

```console
$ apt-get source -qq --print-uris libarchive=3.2.2-3.1ubuntu0.7
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libarchive/libarchive_3.2.2-3.1ubuntu0.7.dsc' libarchive_3.2.2-3.1ubuntu0.7.dsc 2473 SHA512:c1d036d3f7b384de09447bc9f98657425af46aba4efe7a4f4119169b9888de15a50fc673c6063d4fe64ae697734672455c4b686faa1537bd50a6479e405ce268
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libarchive/libarchive_3.2.2.orig.tar.gz' libarchive_3.2.2.orig.tar.gz 5458241 SHA512:a67920c37d49cf9478032d77fc4fa21827cebb96e9b83d9ecb8466328834052e4ab3d3a9bc4e2edf405d6cb14ffd648c9fa100b578257f6e5842c99bbea558a7
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libarchive/libarchive_3.2.2-3.1ubuntu0.7.debian.tar.xz' libarchive_3.2.2-3.1ubuntu0.7.debian.tar.xz 27124 SHA512:561e173046a9afb5e543a24c904eb359b8876dc742652acf95061727803f6da1830144d4de545f746cbfe95e16ef9ca61e966468e3c739f1aa0fb0017665cb55
```

### `dpkg` source package: `libassuan=2.5.1-2`

Binary Packages:

- `libassuan-dev=2.5.1-2`
- `libassuan0:amd64=2.5.1-2`

Licenses: (parsed from: `/usr/share/doc/libassuan-dev/copyright`, `/usr/share/doc/libassuan0/copyright`)

- `GAP`
- `GAP~FSF`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with libtool exception`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`

Source:

```console
$ apt-get source -qq --print-uris libassuan=2.5.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.1-2.dsc' libassuan_2.5.1-2.dsc 2215 SHA256:e954a7ef30815e62832ca4a1d2959142e264795e7ec78ba369752353135beb68
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.1.orig.tar.bz2' libassuan_2.5.1.orig.tar.bz2 564857 SHA256:47f96c37b4f2aac289f0bc1bacfa8bd8b4b209a488d3d15e2229cb6cc9b26449
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.1-2.debian.tar.xz' libassuan_2.5.1-2.debian.tar.xz 15236 SHA256:4a67901dcb0e92cd40e0d5d7148ebe6f929378671df373eb68b48acb560d641f
```

### `dpkg` source package: `libcap-ng=0.7.7-3.1`

Binary Packages:

- `libcap-ng0:amd64=0.7.7-3.1`

Licenses: (parsed from: `/usr/share/doc/libcap-ng0/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libcap-ng=0.7.7-3.1
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.7-3.1.dsc' libcap-ng_0.7.7-3.1.dsc 2266 SHA256:f545d107ed3e6160b16aac09e242d1ccc054bfca76f6d70731a83c031b416f53
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.7.orig.tar.gz' libcap-ng_0.7.7.orig.tar.gz 420178 SHA256:615549ce39b333f6b78baee0c0b4ef18bc726c6bf1cca123dfd89dd963f6d06b
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.7-3.1.debian.tar.xz' libcap-ng_0.7.7-3.1.debian.tar.xz 5432 SHA256:074bf729c3081af729e7e0fbbe3354ddecc16e045245e7d4f44003b9f1f1adc6
```

### `dpkg` source package: `libfabric=1.5.3-1`

Binary Packages:

- `libfabric1=1.5.3-1`

Licenses: (parsed from: `/usr/share/doc/libfabric1/copyright`)

- `BSD-2-clause`
- `Expat`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libfabric=1.5.3-1
'http://archive.ubuntu.com/ubuntu/pool/universe/libf/libfabric/libfabric_1.5.3-1.dsc' libfabric_1.5.3-1.dsc 2143 SHA256:4dcd9d9a757fa4a0896ee2072a0339c3402e6b1e3243d3ed85b93b63ff76a827
'http://archive.ubuntu.com/ubuntu/pool/universe/libf/libfabric/libfabric_1.5.3.orig.tar.xz' libfabric_1.5.3.orig.tar.xz 930228 SHA256:68bf2b4e465ff08a0403175553d535dccee39d6597f2b0a4619b43c522c29128
'http://archive.ubuntu.com/ubuntu/pool/universe/libf/libfabric/libfabric_1.5.3-1.debian.tar.xz' libfabric_1.5.3-1.debian.tar.xz 8836 SHA256:630681fa87d7dbd91190f42fe39946794e20727f2a35fb51ea108cec5c4d70df
```

### `dpkg` source package: `libffi=3.2.1-8`

Binary Packages:

- `libffi6:amd64=3.2.1-8`

Licenses: (parsed from: `/usr/share/doc/libffi6/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.2.1-8
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1-8.dsc' libffi_3.2.1-8.dsc 1959 SHA256:a07201eb5374cfab35703a6f4c88a494bb23ece91da5481497bc25404c57eaf4
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1.orig.tar.gz' libffi_3.2.1.orig.tar.gz 940837 SHA256:d06ebb8e1d9a22d19e38d63fdb83954253f39bedc5d46232a05645685722ca37
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1-8.debian.tar.xz' libffi_3.2.1-8.debian.tar.xz 11660 SHA256:1eb0b13e0c0fc989ed98011d18dcddf8a05af17380fe1258883761a8d16586b4
```

### `dpkg` source package: `libgcrypt20=1.8.1-4ubuntu1.3`

Binary Packages:

- `libgcrypt20:amd64=1.8.1-4ubuntu1.3`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.8.1-4ubuntu1.3
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.8.1-4ubuntu1.3.dsc' libgcrypt20_1.8.1-4ubuntu1.3.dsc 3035 SHA512:96fc27a4a51579c483ff37b230c7e84dc0ea3c4547cee06d2c274134fa3da948df5f7b7e3e838582d13dc4d8ecd04ef44b065bbd3842590636b27ebc84f6ce65
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.8.1.orig.tar.bz2' libgcrypt20_1.8.1.orig.tar.bz2 2967344 SHA512:27c9d2fd9cba5afca71d421c9299d6942463975fae0bd10d4ff42cda2d7ea213e6b73c071a40fcf23ff52a93394cc7505ab332f8a4a3321826460e471eda5b4e
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.8.1.orig.tar.bz2.asc' libgcrypt20_1.8.1.orig.tar.bz2.asc 310 SHA512:2e03cade8815ef146ea186efcdef2be5e1a0cfae3b9f8fcd7d7f774503b93ab29dbd2b284c1ad260181419ae0fc23462762e9a5e20193f89af76ca4ea0c1bccf
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.8.1-4ubuntu1.3.debian.tar.xz' libgcrypt20_1.8.1-4ubuntu1.3.debian.tar.xz 34832 SHA512:865175d0f34a97873c42749f0a1c783db9c1ab77422bae61627dda2175ac55697e86ef31fffd2eb8645700e3504a1ff7051d684597444df6404166e73d920925
```

### `dpkg` source package: `libgpg-error=1.27-6`

Binary Packages:

- `libgpg-error-dev=1.27-6`
- `libgpg-error0:amd64=1.27-6`

Licenses: (parsed from: `/usr/share/doc/libgpg-error-dev/copyright`, `/usr/share/doc/libgpg-error0/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.27-6
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.27-6.dsc' libgpg-error_1.27-6.dsc 2343 SHA256:d4cc2c1691b295f558d5b347df8a8ad2f0260cf57146180bed223b94ffacafbb
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.27.orig.tar.bz2' libgpg-error_1.27.orig.tar.bz2 813060 SHA256:4f93aac6fecb7da2b92871bb9ee33032be6a87b174f54abf8ddf0911a22d29d2
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.27-6.debian.tar.xz' libgpg-error_1.27-6.debian.tar.xz 20556 SHA256:89bc57dc3df449febf037226daf1aee830455c4efa493c0e3bdeab2a48971479
```

### `dpkg` source package: `libidn2=2.0.4-1.1ubuntu0.2`

Binary Packages:

- `libidn2-0:amd64=2.0.4-1.1ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/libidn2-0/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-3`
- `LGPL-3+`
- `Unicode`

Source:

```console
$ apt-get source -qq --print-uris libidn2=2.0.4-1.1ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.0.4-1.1ubuntu0.2.dsc' libidn2_2.0.4-1.1ubuntu0.2.dsc 2391 SHA512:5c6d826b5994bdeb59f7d71b060643e051ed32ee0c013f638cb80cbb1fb3ad60671b20503bb47fbfabd29005bd3848a95f3bdae7b4ef6ae1d55cabfb4745fc9c
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.0.4.orig.tar.gz' libidn2_2.0.4.orig.tar.gz 2008524 SHA512:1e51bd4b8f8907531576291f1c2a8865d17429b4105418b4c98754eb982cd1cbb3adbeab4ec0c1c561d2dba11d876c7c09e5dc5b315c55a2c24986d7a2a3b4d2
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.0.4-1.1ubuntu0.2.debian.tar.xz' libidn2_2.0.4-1.1ubuntu0.2.debian.tar.xz 10290460 SHA512:b46d51758767ae8d7cc5e9fe59df28c559baac7677bfbfd6a2e51b84c29211e38a5f85ec27afd9e72ec333ea81d03ae783a03e1d8202a0f6ef52dd7bde47475f
```

### `dpkg` source package: `libjsoncpp=1.7.4-3`

Binary Packages:

- `libjsoncpp1:amd64=1.7.4-3`

Licenses: (parsed from: `/usr/share/doc/libjsoncpp1/copyright`)

- `Expat_or_PublicDomain_or_DualExpatPD`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris libjsoncpp=1.7.4-3
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjsoncpp/libjsoncpp_1.7.4-3.dsc' libjsoncpp_1.7.4-3.dsc 2137 SHA256:8f8d17cb824b288e140988e489b953f7ca084b094a06cc39867a4af1faf1f421
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjsoncpp/libjsoncpp_1.7.4.orig.tar.gz' libjsoncpp_1.7.4.orig.tar.gz 205752 SHA256:10dcd0677e80727e572a1e462193e51a5fde3e023b99e144b2ee1a469835f769
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjsoncpp/libjsoncpp_1.7.4-3.debian.tar.xz' libjsoncpp_1.7.4-3.debian.tar.xz 7828 SHA256:4d99ab057737a02512e75404315ee0b723823f6caed4401c25e46925c4c8857e
```

### `dpkg` source package: `libksba=1.3.5-2ubuntu0.18.04.1`

Binary Packages:

- `libksba8:amd64=1.3.5-2ubuntu0.18.04.1`

Licenses: (parsed from: `/usr/share/doc/libksba8/copyright`)

- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libnl3=3.2.29-0ubuntu3`

Binary Packages:

- `libnl-3-200:amd64=3.2.29-0ubuntu3`
- `libnl-route-3-200:amd64=3.2.29-0ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libnl-3-200/copyright`, `/usr/share/doc/libnl-route-3-200/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libnl3=3.2.29-0ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/libn/libnl3/libnl3_3.2.29-0ubuntu3.dsc' libnl3_3.2.29-0ubuntu3.dsc 3149 SHA256:4b342949deb676eab1475ab10e7ff088ce2bba798fdb87b800b0a821c8ad65e4
'http://archive.ubuntu.com/ubuntu/pool/main/libn/libnl3/libnl3_3.2.29.orig.tar.gz' libnl3_3.2.29.orig.tar.gz 963681 SHA256:0beb593dc6abfffa18a5c787b27884979c1b7e7f1fd468c801e3cc938a685922
'http://archive.ubuntu.com/ubuntu/pool/main/libn/libnl3/libnl3_3.2.29-0ubuntu3.debian.tar.xz' libnl3_3.2.29-0ubuntu3.debian.tar.xz 20156 SHA256:77b157013f0274525580b17d97b057c1600eda8a256eec07cbd0d2e9cc442d6b
```

### `dpkg` source package: `libpciaccess=0.14-1`

Binary Packages:

- `libpciaccess0:amd64=0.14-1`

Licenses: (parsed from: `/usr/share/doc/libpciaccess0/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libpciaccess=0.14-1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpciaccess/libpciaccess_0.14-1.dsc' libpciaccess_0.14-1.dsc 2062 SHA256:1cbfd426e4efcc958b6c9fd4889877b533035175370fa0505f361b89e1aeaa4f
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpciaccess/libpciaccess_0.14.orig.tar.gz' libpciaccess_0.14.orig.tar.gz 461764 SHA256:8d86e64893917be3dfb1c5e837888d1275399c818783474002203d751312b03c
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpciaccess/libpciaccess_0.14-1.diff.gz' libpciaccess_0.14-1.diff.gz 25039 SHA256:fea9483fbfb202040a8e5eef3ec3b434b3e897f301e735753568db2106e1512d
```

### `dpkg` source package: `libpng1.6=1.6.34-1ubuntu0.18.04.2`

Binary Packages:

- `libpng16-16:amd64=1.6.34-1ubuntu0.18.04.2`

Licenses: (parsed from: `/usr/share/doc/libpng16-16/copyright`)

- `Apache-2.0`
- `BSD-3-clause`
- `BSD-like-with-advertising-clause`
- `GPL-2`
- `GPL-2+`
- `expat`
- `libpng`
- `libpng OR Apache-2.0 OR BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris libpng1.6=1.6.34-1ubuntu0.18.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.34-1ubuntu0.18.04.2.dsc' libpng1.6_1.6.34-1ubuntu0.18.04.2.dsc 2362 SHA512:306827271e4b470dacd142c5b7b4c8d97561c5b2fa39ea5fc36f20bc29f6929c868a0e926179835a24569825def8a778872100b54fbbd1f4b03a817730c40238
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.34.orig.tar.xz' libpng1.6_1.6.34.orig.tar.xz 997968 SHA512:89407c5abc1623faaa3992fc1e4a62def671d9a7401108dfceee895d5f16fe7030090bea89b34a36d377d8e6a5d40046886991f663ce075d1a2d31bf9eaf3c51
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.34-1ubuntu0.18.04.2.debian.tar.xz' libpng1.6_1.6.34-1ubuntu0.18.04.2.debian.tar.xz 24572 SHA512:7b13f1e486f15260f90376604e92c4050ffbf9023bcca17e527b9d5cf81fffdce83301893d635049939d12608a12835f9e3cbf4321b24dbd08afc5efe8d1a50d
```

### `dpkg` source package: `libpsl=0.19.1-5build1`

Binary Packages:

- `libpsl5:amd64=0.19.1-5build1`

Licenses: (parsed from: `/usr/share/doc/libpsl5/copyright`)

- `Chromium`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libpsl=0.19.1-5build1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.19.1-5build1.dsc' libpsl_0.19.1-5build1.dsc 2229 SHA256:cb9bcc439b8e37ee27bd3e69a8afa6dd2a59c90ba45de4d533df256f61c8a4f5
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.19.1.orig.tar.gz' libpsl_0.19.1.orig.tar.gz 8578385 SHA256:e370181114b8ef9daf2bb6db49b1edb842335839c15a088e7ec0a35e04e9a227
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.19.1-5build1.debian.tar.xz' libpsl_0.19.1-5build1.debian.tar.xz 9860 SHA256:53285bee66ac22a25dd41f7778cc4e94ae3d61929eb6701a8064a38a964e40e2
```

### `dpkg` source package: `libseccomp=2.5.1-1ubuntu1~18.04.2`

Binary Packages:

- `libseccomp2:amd64=2.5.1-1ubuntu1~18.04.2`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2`
- `LGPL-2.0+`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.5.1-1ubuntu1~18.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.1-1ubuntu1%7e18.04.2.dsc' libseccomp_2.5.1-1ubuntu1~18.04.2.dsc 2303 SHA512:2e493d3aa3b9a83efc57a88388a4e37b57a10947b36e39e90953e630a7637656bcb41ddc5cec4887d928738bab0e652dc8d3264710c577910244fb7a3ebdf600
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.1.orig.tar.gz' libseccomp_2.5.1.orig.tar.gz 638811 SHA512:2be80a6323f9282dbeae8791724e5778b32e2382b2a3d1b0f77366371ec4072ea28128204f675cce101c091c0420d12c497e1a9ccbb7dc5bcbf61bfd777160af
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.1-1ubuntu1%7e18.04.2.debian.tar.xz' libseccomp_2.5.1-1ubuntu1~18.04.2.debian.tar.xz 18840 SHA512:100d1d23c46f7e76c46b21ac8f7be74527ee52b2d1500427eb5d1891eee0f6afba44c3cddcea663110513f623477ce21904d09a9d50f2a017a90cb568048dca6
```

### `dpkg` source package: `libselinux=2.7-2build2`

Binary Packages:

- `libselinux1:amd64=2.7-2build2`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=2.7-2build2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.7-2build2.dsc' libselinux_2.7-2build2.dsc 2468 SHA256:86f2d8422230927aa3274773e2b8a9ed15cb539804c378e75515afcd28545c37
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.7.orig.tar.gz' libselinux_2.7.orig.tar.gz 187574 SHA256:d0fec0769b3ad60aa7baf9b9a4b7a056827769dc2dadda0dc0eb59b3d1c18c57
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.7-2build2.debian.tar.xz' libselinux_2.7-2build2.debian.tar.xz 23176 SHA256:ef7a781c247797b66f4d68907d8dd6fec7188d0a08e2a8541437d5f7f6796105
```

### `dpkg` source package: `libsemanage=2.7-2build2`

Binary Packages:

- `libsemanage-common=2.7-2build2`
- `libsemanage1:amd64=2.7-2build2`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=2.7-2build2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.7-2build2.dsc' libsemanage_2.7-2build2.dsc 2555 SHA256:4454d11e7228df1e5166907867bbd1be4e6cc8b20c6834dc690fb0dcf19d1c43
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.7.orig.tar.gz' libsemanage_2.7.orig.tar.gz 153465 SHA256:07e9477714ce6a4557a1fe924ea4cb06501b62d0fa0e3c0dc32a2cf47cb8d476
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.7-2build2.debian.tar.xz' libsemanage_2.7-2build2.debian.tar.xz 17136 SHA256:d6d11ecc5687baa3b07a2a2360a9cbc4b93424a9728aa17b81cd9faf13855c3a
```

### `dpkg` source package: `libsepol=2.7-1ubuntu0.1`

Binary Packages:

- `libsepol1:amd64=2.7-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libsepol1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=2.7-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.7-1ubuntu0.1.dsc' libsepol_2.7-1ubuntu0.1.dsc 2128 SHA512:35a860b3d4eb59743d35e6275d1c624fbf651c5974f45b197194cab0c4ca59ba89f7b2c9d24176b76e2f105c6362bf3a52142aa77a7709f3f2c274d0b17e02ff
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.7.orig.tar.gz' libsepol_2.7.orig.tar.gz 471147 SHA512:1d308c17bfea2659f9dc4877ab685449a5a33dff7260e62b603cde9551bed2010360b71a896c6dfcdb8b9fe86ecebc9f6b3225e6c3573a80fca8578a9d561b47
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.7-1ubuntu0.1.debian.tar.xz' libsepol_2.7-1ubuntu0.1.debian.tar.xz 16688 SHA512:26fd4c79e41d7f684f1df4d5e2fc656680756569db963c07327c986eebed70bd5b50c25bbec073f7b91851f64337fcb2f8cff55c680f541062e3d90706defe0b
```

### `dpkg` source package: `libtasn1-6=4.13-2`

Binary Packages:

- `libtasn1-6:amd64=4.13-2`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=4.13-2
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.13-2.dsc' libtasn1-6_4.13-2.dsc 2574 SHA256:8f583c0ae8568ccf7fcf66c387963ef949d644cfca56d66512a17cb91c3a44fd
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.13.orig.tar.gz' libtasn1-6_4.13.orig.tar.gz 1891703 SHA256:7e528e8c317ddd156230c4e31d082cd13e7ddeb7a54824be82632209550c8cca
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.13.orig.tar.gz.asc' libtasn1-6_4.13.orig.tar.gz.asc 774 SHA256:90261376528edf44831d1369847088cc2fb48669860d343961daca42e674b226
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.13-2.debian.tar.xz' libtasn1-6_4.13-2.debian.tar.xz 63332 SHA256:f36a43fb898c031b6b1a5f43b35af1aea95ac164bb2b57c7f07d1c098ed9f7eb
```

### `dpkg` source package: `libtool=2.4.6-2`

Binary Packages:

- `libltdl-dev:amd64=2.4.6-2`
- `libltdl7:amd64=2.4.6-2`

Licenses: (parsed from: `/usr/share/doc/libltdl-dev/copyright`, `/usr/share/doc/libltdl7/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libtool=2.4.6-2
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6-2.dsc' libtool_2.4.6-2.dsc 2324 SHA256:caa2b9d5c32e491388d0627e2f808b6cb2f260dd1b0b9fdafc9bff957f05bb29
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6.orig.tar.xz' libtool_2.4.6.orig.tar.xz 973080 SHA256:7c87a8c2c8c0fc9cd5019e402bed4292462d00a718a7cd5f11218153bf28b26f
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6.orig.tar.xz.asc' libtool_2.4.6.orig.tar.xz.asc 380 SHA256:ab68ebc45d60128a71fc36167cd29dcf3c3d6d639fd28663905ebaf3e2f43d6a
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6-2.debian.tar.xz' libtool_2.4.6-2.debian.tar.xz 36024 SHA256:6227fb1240a90ef06855567e71ee96e4950dd53c4399348f36c1ec39367cd8ea
```

### `dpkg` source package: `libunistring=0.9.9-0ubuntu2`

Binary Packages:

- `libunistring2:amd64=0.9.9-0ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libunistring2/copyright`)

- `FreeSoftware`
- `GFDL-1.2`
- `GFDL-1.2+`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with distribution exception`
- `GPL-3`
- `GPL-3+`
- `LGPL-3`
- `LGPL-3+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libunistring=0.9.9-0ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_0.9.9-0ubuntu2.dsc' libunistring_0.9.9-0ubuntu2.dsc 2006 SHA512:c06c7a7a04dbaef582ed90334e740b70704187df303c033a6298592cdb783f1099ea9a62b787df4b5cbd504ad76f5ff112a3508fda5134b749a25c3222ac9eb1
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_0.9.9.orig.tar.xz' libunistring_0.9.9.orig.tar.xz 2042992 SHA512:c5f3619d0b064c0256dc9326b609cb72871c85102cd67cfc46d85f72b67c564924cd76198c6d6ab60fbf7d6f76ddcb9fbe6c8116f779ca7e24570ae84e31fea8
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_0.9.9-0ubuntu2.debian.tar.xz' libunistring_0.9.9-0ubuntu2.debian.tar.xz 40424 SHA512:e9c6f76208bef66892b584d83e68b60a05a9cf0b67b1ac10532e996a081319d110a92b440713cb9a46fc45404723a5c81420ede10af2ab8e89432c693db4e1ef
```

### `dpkg` source package: `libuv1=1.18.0-3`

Binary Packages:

- `libuv1:amd64=1.18.0-3`

Licenses: (parsed from: `/usr/share/doc/libuv1/copyright`)

- `BSD-1-clause`
- `BSD-2-clause`
- `BSD-3-clause`
- `Expat`
- `ISC`

Source:

```console
$ apt-get source -qq --print-uris libuv1=1.18.0-3
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libuv1/libuv1_1.18.0-3.dsc' libuv1_1.18.0-3.dsc 2053 SHA256:92f4dfae07b870fc4190fcc5bf53edf963ee978b9f9dbc999ad169c9679482da
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libuv1/libuv1_1.18.0.orig.tar.gz' libuv1_1.18.0.orig.tar.gz 1167975 SHA256:0b9aef32e63619c328b65d85583653e295ca091cf9b15315c3c518e02a59c17c
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libuv1/libuv1_1.18.0-3.debian.tar.xz' libuv1_1.18.0-3.debian.tar.xz 12380 SHA256:9ae1087c696cc2612f406eb0041264aaa9c36efa4cbfb5026dbaf7d9f4626b0a
```

### `dpkg` source package: `libxml2=2.9.4+dfsg1-6.1ubuntu1.8`

Binary Packages:

- `libxml2:amd64=2.9.4+dfsg1-6.1ubuntu1.8`

Licenses: (parsed from: `/usr/share/doc/libxml2/copyright`)

- `ISC`
- `MIT-1`

Source:

```console
$ apt-get source -qq --print-uris libxml2=2.9.4+dfsg1-6.1ubuntu1.8
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.4%2bdfsg1-6.1ubuntu1.8.dsc' libxml2_2.9.4+dfsg1-6.1ubuntu1.8.dsc 3167 SHA512:bb568086db2543550c628f8170388afe59ee6586ca98360bdbfbee8f7dadd4349e03069dddb48c322759ae5afecb1c6988f0488c0eb777603ca40d8be019e392
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.4%2bdfsg1.orig.tar.xz' libxml2_2.9.4+dfsg1.orig.tar.xz 2446412 SHA512:c921697db38b530b1a088636cb31226bbe9df8c9e9c83316ce53770f9bd2faeef360d5f526f34e00cd778150c408e8d91b99a67a5f5030a8b279961ff9299ae5
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.4%2bdfsg1-6.1ubuntu1.8.debian.tar.xz' libxml2_2.9.4+dfsg1-6.1ubuntu1.8.debian.tar.xz 50060 SHA512:0f0f83f113136ac3e439d0b955b0758b28bb76828c9494dbafa061eeb97d938730041d14c4be24f54c3b90442e59ca1af887d52c856186b440a5edecc232ad6e
```

### `dpkg` source package: `libyaml=0.1.7-2ubuntu3`

Binary Packages:

- `libyaml-0-2:amd64=0.1.7-2ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libyaml-0-2/copyright`)

- `Expat`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris libyaml=0.1.7-2ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.7-2ubuntu3.dsc' libyaml_0.1.7-2ubuntu3.dsc 2019 SHA256:122f3c4ddc6b6f069382587fdde2ba9ed4800b303bce92c3d11d4fee1c1c0c5c
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.7.orig.tar.gz' libyaml_0.1.7.orig.tar.gz 527518 SHA256:8088e457264a98ba451a90b8661fcb4f9d6f478f7265d48322a196cec2480729
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.7-2ubuntu3.debian.tar.xz' libyaml_0.1.7-2ubuntu3.debian.tar.xz 4288 SHA256:d1b9caa9e645c2c306417068bcdd85e56e6065d74771c15cc970652e52f8259b
```

### `dpkg` source package: `libzstd=1.3.3+dfsg-2ubuntu1.2`

Binary Packages:

- `libzstd1:amd64=1.3.3+dfsg-2ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/libzstd1/copyright`)

- `BSD-3-clause-with-patent-grant`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris libzstd=1.3.3+dfsg-2ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.3.3%2bdfsg-2ubuntu1.2.dsc' libzstd_1.3.3+dfsg-2ubuntu1.2.dsc 2406 SHA512:ba1f7d18723eafcd18f2722a0005be04d0104c87a7cd80e2ffff91395df87213df3d6969d59e4260930ce583070d319847982c175dc99859bc8f0f964fbf1ad2
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.3.3%2bdfsg.orig.tar.xz' libzstd_1.3.3+dfsg.orig.tar.xz 1333584 SHA512:40f66d34247f549b6861677a520bdce722036c49bc78096981b3b6b4cbb798780c6afccaff18e843016ec7aab55b8bb3ce3ddbfb089efb5d83028058df5e755c
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.3.3%2bdfsg-2ubuntu1.2.debian.tar.xz' libzstd_1.3.3+dfsg-2ubuntu1.2.debian.tar.xz 13764 SHA512:f14aa9e453c7041a79dd90a52b5955b86fa86886b89ef26d4d257aa017a50d97410e8b875593992ad7d4b7e8e8d55743b8c66706be62cd4234f81e49c8bfc05d
```

### `dpkg` source package: `linux=4.15.0-200.211`

Binary Packages:

- `linux-libc-dev:amd64=4.15.0-200.211`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `lksctp-tools=1.0.17+dfsg-2`

Binary Packages:

- `libsctp-dev:amd64=1.0.17+dfsg-2`
- `libsctp1:amd64=1.0.17+dfsg-2`

Licenses: (parsed from: `/usr/share/doc/libsctp-dev/copyright`, `/usr/share/doc/libsctp1/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris lksctp-tools=1.0.17+dfsg-2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lksctp-tools/lksctp-tools_1.0.17%2bdfsg-2.dsc' lksctp-tools_1.0.17+dfsg-2.dsc 2014 SHA256:f9180a1d047ac7bdb853a000cd4c4f6a53143f2604bd7cd08bc0800a36abd0e7
'http://archive.ubuntu.com/ubuntu/pool/main/l/lksctp-tools/lksctp-tools_1.0.17%2bdfsg.orig.tar.gz' lksctp-tools_1.0.17+dfsg.orig.tar.gz 556428 SHA256:f7c537bc08bf57a8eddf49b232f19920e51b0e4ca55e7d47377ce64546d04e1d
'http://archive.ubuntu.com/ubuntu/pool/main/l/lksctp-tools/lksctp-tools_1.0.17%2bdfsg-2.debian.tar.xz' lksctp-tools_1.0.17+dfsg-2.debian.tar.xz 9436 SHA256:c8e05a29ffbca99428cf2c59a50dd26a4bf73f42487db8231b810882a5f5c779
```

### `dpkg` source package: `log4cxx=0.10.0-13ubuntu2`

Binary Packages:

- `liblog4cxx-dev:amd64=0.10.0-13ubuntu2`
- `liblog4cxx10v5:amd64=0.10.0-13ubuntu2`

Licenses: (parsed from: `/usr/share/doc/liblog4cxx-dev/copyright`, `/usr/share/doc/liblog4cxx10v5/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris log4cxx=0.10.0-13ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/universe/l/log4cxx/log4cxx_0.10.0-13ubuntu2.dsc' log4cxx_0.10.0-13ubuntu2.dsc 2262 SHA256:79dbfa3b2684e6aaec543e7b4cd23520fc56d351606439127cee8b1b11df933c
'http://archive.ubuntu.com/ubuntu/pool/universe/l/log4cxx/log4cxx_0.10.0.orig.tar.gz' log4cxx_0.10.0.orig.tar.gz 1667425 SHA256:0de0396220a9566a580166e66b39674cb40efd2176f52ad2c65486c99c920c8c
'http://archive.ubuntu.com/ubuntu/pool/universe/l/log4cxx/log4cxx_0.10.0-13ubuntu2.debian.tar.xz' log4cxx_0.10.0-13ubuntu2.debian.tar.xz 16488 SHA256:4303722b0541512cda99c39212074528fd96aff81f5e4c0b8837eb89adddce05
```

### `dpkg` source package: `lsb=9.20170808ubuntu1`

Binary Packages:

- `lsb-base=9.20170808ubuntu1`
- `lsb-release=9.20170808ubuntu1`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`, `/usr/share/doc/lsb-release/copyright`)

- `BSD-3-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lsb=9.20170808ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb_9.20170808ubuntu1.dsc' lsb_9.20170808ubuntu1.dsc 2126 SHA256:9b98df7b442472d172612bf6855b4dbc3cd6d5892d8073605dda786fec94af5f
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb_9.20170808ubuntu1.tar.xz' lsb_9.20170808ubuntu1.tar.xz 45492 SHA256:b26bcb746e0bff05ad3e15dfbeb0ba7ea2a8d031f765a6cfa568c57d14c522c4
```

### `dpkg` source package: `lz4=0.0~r131-2ubuntu3.1`

Binary Packages:

- `liblz4-1:amd64=0.0~r131-2ubuntu3.1`
- `liblz4-dev:amd64=0.0~r131-2ubuntu3.1`

Licenses: (parsed from: `/usr/share/doc/liblz4-1/copyright`, `/usr/share/doc/liblz4-dev/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lz4=0.0~r131-2ubuntu3.1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_0.0%7er131-2ubuntu3.1.dsc' lz4_0.0~r131-2ubuntu3.1.dsc 2108 SHA512:a90ae7ae8793f180a604cb20a43ca5a69d837aaf9df7bbe6c23d6f6a4700ad9b81d06cb7503d5d3f2d0f2b9bbbe3013601eeb47641c3d12113ea66900876c6f4
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_0.0%7er131.orig.tar.gz' lz4_0.0~r131.orig.tar.gz 133784 SHA512:60bd95d529691ffee2c43f0d8a62484c3cff74c0154094f073192606806ac8182dced61e0534ffa7e0ccf5f18e9a8cfd2738883a83814c0711a6d7f1d1b252e5
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_0.0%7er131-2ubuntu3.1.debian.tar.xz' lz4_0.0~r131-2ubuntu3.1.debian.tar.xz 5848 SHA512:d2fbe7c7edc933391275d7a29a5e0893cc358454a7d54ee352cb9eb91532cf9d97daedd08b2c921373b0fff3a45522e07fef18f522b04160dc09432c0cf2acdc
```

### `dpkg` source package: `lzo2=2.08-1.2`

Binary Packages:

- `liblzo2-2:amd64=2.08-1.2`

Licenses: (parsed from: `/usr/share/doc/liblzo2-2/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lzo2=2.08-1.2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lzo2/lzo2_2.08-1.2.dsc' lzo2_2.08-1.2.dsc 1804 SHA256:09eabe81d6f631a29cc603843b27ab914704726a1400a2219cf83b1da4e72892
'http://archive.ubuntu.com/ubuntu/pool/main/l/lzo2/lzo2_2.08.orig.tar.gz' lzo2_2.08.orig.tar.gz 589045 SHA256:ac1b3e4dee46febe9fd28737eb7f5692d3232ef1a01da10444394c3d47536614
'http://archive.ubuntu.com/ubuntu/pool/main/l/lzo2/lzo2_2.08-1.2.debian.tar.xz' lzo2_2.08-1.2.debian.tar.xz 5996 SHA256:5a9aa3a2432f5d4f689b24c64ea3daec7646e736da37721388ae88b670dd99bc
```

### `dpkg` source package: `make-dfsg=4.1-9.1ubuntu1`

Binary Packages:

- `make=4.1-9.1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/make/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris make-dfsg=4.1-9.1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.1-9.1ubuntu1.dsc' make-dfsg_4.1-9.1ubuntu1.dsc 2079 SHA256:d8ca40c89cb2b808b28264b7097a001f00a517a68d5bc2657b5c5e1bbfd0ce8b
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.1.orig.tar.gz' make-dfsg_4.1.orig.tar.gz 1350231 SHA256:b3ed04fb6718289e4a430afbe2df6ecba9177aad9f6d09aaf38e5409262ca8a3
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.1-9.1ubuntu1.diff.gz' make-dfsg_4.1-9.1ubuntu1.diff.gz 46399 SHA256:6adc229835bd4cf04cefab0767534f9e6934989413002dd5525ec557010af5e8
```

### `dpkg` source package: `mawk=1.3.3-17ubuntu3`

Binary Packages:

- `mawk=1.3.3-17ubuntu3`

Licenses: (parsed from: `/usr/share/doc/mawk/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris mawk=1.3.3-17ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.3-17ubuntu3.dsc' mawk_1.3.3-17ubuntu3.dsc 1970 SHA256:2893a0c18b75c41d480be67d5d4edb7124ed7e9b5ed643d2670aa34481f7a77c
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.3.orig.tar.gz' mawk_1.3.3.orig.tar.gz 209942 SHA256:32649c46063d4ef0777a12ae6e9a26bcc920833d54e1abca7edb8d37481e7485
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.3-17ubuntu3.diff.gz' mawk_1.3.3-17ubuntu3.diff.gz 64052 SHA256:d1be148525885cb1869e35514f55005b5043f3310b08c444625005a3e14c81fc
```

### `dpkg` source package: `mime-support=3.60ubuntu1`

Binary Packages:

- `mime-support=3.60ubuntu1`

Licenses: (parsed from: `/usr/share/doc/mime-support/copyright`)

- `Bellcore`
- `ad-hoc`

Source:

```console
$ apt-get source -qq --print-uris mime-support=3.60ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mime-support/mime-support_3.60ubuntu1.dsc' mime-support_3.60ubuntu1.dsc 1712 SHA256:1e58e26d0f87f25ebe6c08007e9d354a24457ab73d40a1eb3b9ab62ea0d366d5
'http://archive.ubuntu.com/ubuntu/pool/main/m/mime-support/mime-support_3.60ubuntu1.tar.gz' mime-support_3.60ubuntu1.tar.gz 37743 SHA256:cb1bc122ac2dc7046f6c0c06146ac0897a3c1c02e7e5e53cdd30817db2c62d33
```

### `dpkg` source package: `mpdecimal=2.4.2-1ubuntu1`

Binary Packages:

- `libmpdec2:amd64=2.4.2-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libmpdec2/copyright`)

- `BSD`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mpdecimal=2.4.2-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpdecimal/mpdecimal_2.4.2-1ubuntu1.dsc' mpdecimal_2.4.2-1ubuntu1.dsc 2051 SHA256:6a1a2c1b839492e178d601dc6b9de26a3173124b35659ccd21362167a4fabda9
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpdecimal/mpdecimal_2.4.2.orig.tar.gz' mpdecimal_2.4.2.orig.tar.gz 2271529 SHA256:83c628b90f009470981cf084c5418329c88b19835d8af3691b930afccb7d79c7
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpdecimal/mpdecimal_2.4.2-1ubuntu1.debian.tar.xz' mpdecimal_2.4.2-1ubuntu1.debian.tar.xz 5328 SHA256:091414d364411f1d05b496f877e04d8ad22d52441cb698d739929907e94e0fc7
```

### `dpkg` source package: `mpi-defaults=1.10`

Binary Packages:

- `mpi-default-bin=1.10`
- `mpi-default-dev=1.10`

Licenses: (parsed from: `/usr/share/doc/mpi-default-bin/copyright`, `/usr/share/doc/mpi-default-dev/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mpi-defaults=1.10
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mpi-defaults/mpi-defaults_1.10.dsc' mpi-defaults_1.10.dsc 2680 SHA256:fa42bc3bff329ad4b8f028c47f492a7b61d8c63f2467e7e02f043dfe7e9dfb8d
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mpi-defaults/mpi-defaults_1.10.tar.xz' mpi-defaults_1.10.tar.xz 4864 SHA256:ca4410036cc8f63ce7e3205238612b25a32b300b9bce73ec8d5b00738e0902c4
```

### `dpkg` source package: `mysql-5.7=5.7.40-0ubuntu0.18.04.1`

Binary Packages:

- `libmysqlclient-dev=5.7.40-0ubuntu0.18.04.1`
- `libmysqlclient20:amd64=5.7.40-0ubuntu0.18.04.1`

Licenses: (parsed from: `/usr/share/doc/libmysqlclient-dev/copyright`, `/usr/share/doc/libmysqlclient20/copyright`)

- `Artistic`
- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-like`
- `Boost-1.0`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `LGPL`
- `LGPL-2`
- `SWsoft`
- `public-domain`
- `zlib/libpng`

Source:

```console
$ apt-get source -qq --print-uris mysql-5.7=5.7.40-0ubuntu0.18.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-5.7/mysql-5.7_5.7.40-0ubuntu0.18.04.1.dsc' mysql-5.7_5.7.40-0ubuntu0.18.04.1.dsc 3446 SHA512:81ff981daca129c1455909d6d02de6d5d9a846d13a6a388e84f67c526afd18486333f377d4f8f8ea2636933e4328df7d2f81d8959bb5ec5d8cb8ab3c7a529e77
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-5.7/mysql-5.7_5.7.40.orig.tar.gz' mysql-5.7_5.7.40.orig.tar.gz 53255386 SHA512:5c49ef65c00658786117cc489d80a6ed7517759b010fb4530508649ab6b4079bb8f1dbc70cefe5d179e1a003960d296b85210b161be4f8f18756a578a1a11365
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-5.7/mysql-5.7_5.7.40-0ubuntu0.18.04.1.debian.tar.xz' mysql-5.7_5.7.40-0ubuntu0.18.04.1.debian.tar.xz 156984 SHA512:f9048d9e9457c22513f918a69c2b781fb9a1453b11a046408563b9d26868399cf994303c807dd71702535768c4350268dc67071858e278c56c690094767b754b
```

### `dpkg` source package: `mysql-defaults=1.0.4`

Binary Packages:

- `default-libmysqlclient-dev:amd64=1.0.4`
- `mysql-common=5.8+1.0.4`

Licenses: (parsed from: `/usr/share/doc/default-libmysqlclient-dev/copyright`, `/usr/share/doc/mysql-common/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mysql-defaults=1.0.4
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-defaults/mysql-defaults_1.0.4.dsc' mysql-defaults_1.0.4.dsc 2213 SHA256:c0cb0ba90874c858c30cfc71ccbd078c1fb1b45fbfdc6414af75811101d6f01f
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-defaults/mysql-defaults_1.0.4.tar.xz' mysql-defaults_1.0.4.tar.xz 7084 SHA256:01b92a09aaa08fd589610c0d7cbe55e05dce64db57ff2dfa6f794bcf857e002a
```

### `dpkg` source package: `ncurses=6.1-1ubuntu1.18.04`

Binary Packages:

- `libncurses5:amd64=6.1-1ubuntu1.18.04`
- `libncursesw5:amd64=6.1-1ubuntu1.18.04`
- `libtinfo5:amd64=6.1-1ubuntu1.18.04`
- `ncurses-base=6.1-1ubuntu1.18.04`
- `ncurses-bin=6.1-1ubuntu1.18.04`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris ncurses=6.1-1ubuntu1.18.04
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.1-1ubuntu1.18.04.dsc' ncurses_6.1-1ubuntu1.18.04.dsc 4702 SHA512:e998c05380a2599d3f37572e720ab60854a1c83bacdf921372767e320d4063c2af611d45409201dbc77e6c6b981537eec246f46326bae6a69536ddf974007ab1
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.1.orig.tar.gz' ncurses_6.1.orig.tar.gz 3365395 SHA512:e308af43f8b7e01e98a55f4f6c4ee4d1c39ce09d95399fa555b3f0cdf5fd0db0f4c4d820b4af78a63f6cf6d8627587114a40af48cfc066134b600520808a77ee
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.1.orig.tar.gz.asc' ncurses_6.1.orig.tar.gz.asc 251 SHA512:53659ddf0890683f1d9bf895d7d5b0693d95e102cde4440685a3d0c97230c4930203a9383bd9833ba4639713a12b0afd2b3ebecd9fa5640fb6f2b5fa8e662441
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.1-1ubuntu1.18.04.debian.tar.xz' ncurses_6.1-1ubuntu1.18.04.debian.tar.xz 57464 SHA512:ec0211e25ecc865296afd54eeae8314718ca2d443936e016dd74dacfaa1f1de79778b1d50fe9377488f07e40fce82ed367348db30889757efd1db4f96630a6fa
```

### `dpkg` source package: `netifaces=0.10.4-0.1build4`

Binary Packages:

- `python-netifaces=0.10.4-0.1build4`

Licenses: (parsed from: `/usr/share/doc/python-netifaces/copyright`)

- `MIT-style`

Source:

```console
$ apt-get source -qq --print-uris netifaces=0.10.4-0.1build4
'http://archive.ubuntu.com/ubuntu/pool/main/n/netifaces/netifaces_0.10.4-0.1build4.dsc' netifaces_0.10.4-0.1build4.dsc 2445 SHA256:f2d0307065fb71ad2859aa356983134dca48cc131ecd9b23973a96012241f8f7
'http://archive.ubuntu.com/ubuntu/pool/main/n/netifaces/netifaces_0.10.4.orig.tar.gz' netifaces_0.10.4.orig.tar.gz 22969 SHA256:9656a169cb83da34d732b0eb72b39373d48774aee009a3d1272b7ea2ce109cde
'http://archive.ubuntu.com/ubuntu/pool/main/n/netifaces/netifaces_0.10.4-0.1build4.debian.tar.xz' netifaces_0.10.4-0.1build4.debian.tar.xz 8436 SHA256:516521d6ac087265a5a40225f36ffdc969a15f715eed0ecdf80a1039c9eb5835
```

### `dpkg` source package: `nettle=3.4.1-0ubuntu0.18.04.1`

Binary Packages:

- `libhogweed4:amd64=3.4.1-0ubuntu0.18.04.1`
- `libnettle6:amd64=3.4.1-0ubuntu0.18.04.1`

Licenses: (parsed from: `/usr/share/doc/libhogweed4/copyright`, `/usr/share/doc/libnettle6/copyright`)

- `GAP`
- `GPL`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf exception`
- `LGPL`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1+`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris nettle=3.4.1-0ubuntu0.18.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.4.1-0ubuntu0.18.04.1.dsc' nettle_3.4.1-0ubuntu0.18.04.1.dsc 2153 SHA512:01b4b4de8dfcde469729f09e1271af2d39f8728bef22f709f21113e139c81fe8cbe5224582a4eee5699486143b93a67b96d4da357225dd1dcb8be403705ed5e7
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.4.1.orig.tar.gz' nettle_3.4.1.orig.tar.gz 1947053 SHA512:26aefbbe9927e90e28f271e56d2ba876611831222d0e1e1a58bdb75bbd50934fcd84418a4fe47b845f557e60a9786a72a4de2676c930447b104f2256aca7a54f
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.4.1-0ubuntu0.18.04.1.debian.tar.xz' nettle_3.4.1-0ubuntu0.18.04.1.debian.tar.xz 27048 SHA512:424581749cb4e4f30343f788b9a26a2ced0f734b2a8faddc93f27317ff45e071f8f47d845e93d2d3eb5374390f29a868b1020858cc7890107916ec60991c1203
```

### `dpkg` source package: `nghttp2=1.30.0-1ubuntu1`

Binary Packages:

- `libnghttp2-14:amd64=1.30.0-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libnghttp2-14/copyright`)

- `BSD-2-clause`
- `Expat`
- `GPL-3`
- `GPL-3+ with autoconf exception`
- `MIT`
- `SIL-OFL-1.1`
- `all-permissive`

Source:

```console
$ apt-get source -qq --print-uris nghttp2=1.30.0-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.30.0-1ubuntu1.dsc' nghttp2_1.30.0-1ubuntu1.dsc 2674 SHA256:1848fdc28933b7ee23dbebe3c9dcd0ca9182f95a278d627758d5ccfa2e0b44ad
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.30.0.orig.tar.bz2' nghttp2_1.30.0.orig.tar.bz2 1839714 SHA256:f66918dd03773f4847da1d069295c758ce478cbd1fe58298a37d65e1dce056d8
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.30.0-1ubuntu1.debian.tar.xz' nghttp2_1.30.0-1ubuntu1.debian.tar.xz 13244 SHA256:eb99f2c10cd872ce750964fc59734aa70b89ad04179291a23bfbee0e1a2903d3
```

### `dpkg` source package: `nose=1.3.7-3`

Binary Packages:

- `python-nose=1.3.7-3`

Licenses: (parsed from: `/usr/share/doc/python-nose/copyright`)

- `Expat`
- `LGPL`
- `LGPL-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris nose=1.3.7-3
'http://archive.ubuntu.com/ubuntu/pool/universe/n/nose/nose_1.3.7-3.dsc' nose_1.3.7-3.dsc 2334 SHA256:0b50c376c21270ec857fcf28516f49d250d5ddb4db4f93a2181687bba3d776ff
'http://archive.ubuntu.com/ubuntu/pool/universe/n/nose/nose_1.3.7.orig.tar.gz' nose_1.3.7.orig.tar.gz 280488 SHA256:f1bffef9cbc82628f6e7d7b40d7e255aefaa1adb6a1b1d26c69a8b79e6208a98
'http://archive.ubuntu.com/ubuntu/pool/universe/n/nose/nose_1.3.7-3.debian.tar.xz' nose_1.3.7-3.debian.tar.xz 12080 SHA256:5e1f6fa1ce29d8a4ad6315544d5d7db634be5233ec9900e21540b890b5058338
```

### `dpkg` source package: `npth=1.5-3`

Binary Packages:

- `libnpth0:amd64=1.5-3`

Licenses: (parsed from: `/usr/share/doc/libnpth0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris npth=1.5-3
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.5-3.dsc' npth_1.5-3.dsc 1954 SHA256:98e02623d39451685321ab638e12cd0b85f7829f6b174d03dbb806b8d899ae3f
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.5.orig.tar.bz2' npth_1.5.orig.tar.bz2 299308 SHA256:294a690c1f537b92ed829d867bee537e46be93fbd60b16c04630fbbfcd9db3c2
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.5-3.debian.tar.xz' npth_1.5-3.debian.tar.xz 10480 SHA256:5cbaf91c95c90ab82053110eeec5ac72f5a3cab36829edb0579f1fb759ec5fec
```

### `dpkg` source package: `numactl=2.0.11-2.1ubuntu0.1`

Binary Packages:

- `libnuma-dev:amd64=2.0.11-2.1ubuntu0.1`
- `libnuma1:amd64=2.0.11-2.1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libnuma-dev/copyright`, `/usr/share/doc/libnuma1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris numactl=2.0.11-2.1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/n/numactl/numactl_2.0.11-2.1ubuntu0.1.dsc' numactl_2.0.11-2.1ubuntu0.1.dsc 1970 SHA512:ef9adf0b792d712b56903cbb9b9bbc7b0ff8b0b42c836fe52595befbf1412251dcefb6fce0db039a5501b41463d1152046ad11477b332590560c44e669da0f2f
'http://archive.ubuntu.com/ubuntu/pool/main/n/numactl/numactl_2.0.11.orig.tar.gz' numactl_2.0.11.orig.tar.gz 408175 SHA512:1969d7ee0ff3de0d6f1fa42ec089a17cdb3f92cb35d453b8f8b2eec49724c43787ecbd213357013a8f2500a260b0df9844d515815ca3a0376314a0eed050a0d4
'http://archive.ubuntu.com/ubuntu/pool/main/n/numactl/numactl_2.0.11-2.1ubuntu0.1.debian.tar.xz' numactl_2.0.11-2.1ubuntu0.1.debian.tar.xz 9504 SHA512:a389644eac8e9ddaa9c644d9c3fff01f1bd4c5e0f2b4da7593806846fd5d288af44e559a8eb48a720003e62141924f96b654b0a4adda846947ac5e0601892961
```

### `dpkg` source package: `ocl-icd=2.2.11-1ubuntu1`

Binary Packages:

- `ocl-icd-libopencl1:amd64=2.2.11-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/ocl-icd-libopencl1/copyright`)

- `BSD-2-Clause`

Source:

```console
$ apt-get source -qq --print-uris ocl-icd=2.2.11-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/o/ocl-icd/ocl-icd_2.2.11-1ubuntu1.dsc' ocl-icd_2.2.11-1ubuntu1.dsc 2101 SHA256:e786ea5edf5223f3ad32fa4b8d9a4455507b376e45342954ec5b36b21cb4904d
'http://archive.ubuntu.com/ubuntu/pool/main/o/ocl-icd/ocl-icd_2.2.11.orig.tar.gz' ocl-icd_2.2.11.orig.tar.gz 455800 SHA256:02fa41da98ae2807e92742196831d320e3fc2f4cb1118d0061d9f51dda867730
'http://archive.ubuntu.com/ubuntu/pool/main/o/ocl-icd/ocl-icd_2.2.11-1ubuntu1.debian.tar.xz' ocl-icd_2.2.11-1ubuntu1.debian.tar.xz 11204 SHA256:2baece01c46beada400992cfcbe5b0facb822bae07bda5d98f1a7ad4d474415c
```

### `dpkg` source package: `openldap=2.4.45+dfsg-1ubuntu1.11`

Binary Packages:

- `libldap-2.4-2:amd64=2.4.45+dfsg-1ubuntu1.11`
- `libldap-common=2.4.45+dfsg-1ubuntu1.11`
- `libldap2-dev:amd64=2.4.45+dfsg-1ubuntu1.11`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openldap=2.4.45+dfsg-1ubuntu1.11
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.45%2bdfsg-1ubuntu1.11.dsc' openldap_2.4.45+dfsg-1ubuntu1.11.dsc 2888 SHA512:5bb7107e4edef2110b854ab51293be2c8363fb75c07f5bb954e712b967cd9237f71a9ab48874d234459eabcddd81f1fda045c14c9b2daef4a776c6e3d3375794
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.45%2bdfsg.orig.tar.gz' openldap_2.4.45+dfsg.orig.tar.gz 4846458 SHA512:fb2089aa6949ecced1d48242b203bc2f744e920ecea41559209f7d3a1cfe626c1d81e8a9234b6997b2379832d62e439ca1f674a8a06635fdaa359fc09d1b414e
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.45%2bdfsg-1ubuntu1.11.debian.tar.xz' openldap_2.4.45+dfsg-1ubuntu1.11.debian.tar.xz 185504 SHA512:f4552c4b7c4e8d21fadbcbdcc4a616756b75394d3fed9586e0ece9c3d20f8b40bd3c8b1e91f7391b0acdaaa4caa885978ba963498db94861abf9f726af282e38
```

### `dpkg` source package: `openmpi=2.1.1-8`

Binary Packages:

- `libopenmpi-dev=2.1.1-8`
- `libopenmpi2:amd64=2.1.1-8`
- `openmpi-bin=2.1.1-8`
- `openmpi-common=2.1.1-8`

Licenses: (parsed from: `/usr/share/doc/libopenmpi-dev/copyright`, `/usr/share/doc/libopenmpi2/copyright`, `/usr/share/doc/openmpi-bin/copyright`, `/usr/share/doc/openmpi-common/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris openmpi=2.1.1-8
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openmpi/openmpi_2.1.1-8.dsc' openmpi_2.1.1-8.dsc 2618 SHA256:2133456247dc953bf4c5d5c4cbeb8727498b11be044a0c96d7d470f2ebaa6339
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openmpi/openmpi_2.1.1.orig.tar.xz' openmpi_2.1.1.orig.tar.xz 5419544 SHA256:0a64746082725ee25f36b79956da30297dd18d4d27b38ab5b74e2faad694574b
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openmpi/openmpi_2.1.1-8.debian.tar.xz' openmpi_2.1.1-8.debian.tar.xz 60008 SHA256:33ee9c1ebc8c5c5a8c60faa25efbcc8abfea101331b9318abae2e3a458fc937f
```

### `dpkg` source package: `openssl=1.1.1-1ubuntu2.1~18.04.20`

Binary Packages:

- `libssl-dev:amd64=1.1.1-1ubuntu2.1~18.04.20`
- `libssl1.1:amd64=1.1.1-1ubuntu2.1~18.04.20`
- `openssl=1.1.1-1ubuntu2.1~18.04.20`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl=1.1.1-1ubuntu2.1~18.04.20
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.1.1-1ubuntu2.1%7e18.04.20.dsc' openssl_1.1.1-1ubuntu2.1~18.04.20.dsc 2514 SHA512:cf3b83b1ec29b576328faa6e2dd10e9b396afeafcd8277d008ef82f80f999834237cbc61b44b2d8684fbb7104e0b9c79a2878333c09027beed5fbf9a55916bcc
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.1.1.orig.tar.gz' openssl_1.1.1.orig.tar.gz 8337920 SHA512:c0284a4fe84bdf765ca5bc5148da4441ffc36392cfecaf9d372af00cf93b6de5681cab1248b6f8246474532155dc205da5ad49549ad7c61c07c917145e7c9c71
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.1.1-1ubuntu2.1%7e18.04.20.debian.tar.xz' openssl_1.1.1-1ubuntu2.1~18.04.20.debian.tar.xz 171540 SHA512:213a93d75c90436974dd9d8aa2fd12000a062ca089204ef8c86aee50952c86a32df5766a993b41029c650865d057ce728f14c117de0eaa5439c6503af1011e6a
```

### `dpkg` source package: `p11-kit=0.23.9-2ubuntu0.1`

Binary Packages:

- `libp11-kit0:amd64=0.23.9-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libp11-kit0/copyright`)

- `BSD-3-Clause`
- `ISC`
- `ISC+IBM`
- `permissive-like-automake-output`
- `same-as-rest-of-p11kit`

Source:

```console
$ apt-get source -qq --print-uris p11-kit=0.23.9-2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.9-2ubuntu0.1.dsc' p11-kit_0.23.9-2ubuntu0.1.dsc 2573 SHA512:f7494e246f8a092a240fa0eecc2c0352a6f48ea5f245dfb46ce3daae2579384c418534d18d0dfde6ee973b01aa5376676d9c7829262e36854881a6d1b0eb3030
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.9.orig.tar.gz' p11-kit_0.23.9.orig.tar.gz 1091561 SHA512:6a8a569483763d3ffacadf669b8ba9b9be38a77dd8dc366ca0cb91c44753517fa1879d4422e4e8dfbcac594565727839a619566a170c0f94f8e112f18b0086ed
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.9.orig.tar.gz.asc' p11-kit_0.23.9.orig.tar.gz.asc 900 SHA512:c6e3cda0a2f3a75126fa046ead97e2914c277bda7e7cb6712f48bd993f5f441b6f5c14d6e74a2042c600cfe4526494872e6fef2fd7453aebb975696de1bff9b2
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.9-2ubuntu0.1.debian.tar.xz' p11-kit_0.23.9-2ubuntu0.1.debian.tar.xz 24380 SHA512:460f4179781768a4a4b686955f16f335565d50f7a2d74c298216fe6725ce4e04119f49605752026f65bf56e143e560718969c5983decc906d3246f0a01c46178
```

### `dpkg` source package: `pam=1.1.8-3.6ubuntu2.18.04.3`

Binary Packages:

- `libpam-modules:amd64=1.1.8-3.6ubuntu2.18.04.3`
- `libpam-modules-bin=1.1.8-3.6ubuntu2.18.04.3`
- `libpam-runtime=1.1.8-3.6ubuntu2.18.04.3`
- `libpam0g:amd64=1.1.8-3.6ubuntu2.18.04.3`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pam=1.1.8-3.6ubuntu2.18.04.3
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.1.8-3.6ubuntu2.18.04.3.dsc' pam_1.1.8-3.6ubuntu2.18.04.3.dsc 2557 SHA512:2ef95d8bdbc9edbad8f20c1db07bd07c0a9b32d431ff144c92e8739ed2f1a43580a257ba5c45505a471265c55d7ae4dee86667bb0424fd3541abbca22aa51c46
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.1.8-3.6ubuntu2.18.04.3.tar.gz' pam_1.1.8-3.6ubuntu2.18.04.3.tar.gz 2011024 SHA512:18a11b3b9e355354ab1a9ae11f7870727a1bb9cfddfc080b2f0df43afafec6f23ce9f60d8d870eb282bd47bb20a4deab9fc0ec4a4fc1d7db50081ecef2257d11
```

### `dpkg` source package: `paramiko=2.0.0-1ubuntu1.3`

Binary Packages:

- `python-paramiko=2.0.0-1ubuntu1.3`

Licenses: (parsed from: `/usr/share/doc/python-paramiko/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris paramiko=2.0.0-1ubuntu1.3
'http://archive.ubuntu.com/ubuntu/pool/main/p/paramiko/paramiko_2.0.0-1ubuntu1.3.dsc' paramiko_2.0.0-1ubuntu1.3.dsc 2511 SHA512:28517e24339023205612b6dc0cda6843e64fe5877f642afc9e34a9bb7555e580c6bb5e252d3ea6364aa2f348813153ea677edf4255447badceae24fa439892db
'http://archive.ubuntu.com/ubuntu/pool/main/p/paramiko/paramiko_2.0.0.orig.tar.gz' paramiko_2.0.0.orig.tar.gz 273791 SHA512:dd1e4b64a0f9843c2788f9ae1a3b5df7a754ec4fc83e8721f05c5efd7910c8163f634a51ec4e26360639e81ade2e5cc247c9e5c2e2b69beae8be91e2db2e5212
'http://archive.ubuntu.com/ubuntu/pool/main/p/paramiko/paramiko_2.0.0-1ubuntu1.3.debian.tar.xz' paramiko_2.0.0-1ubuntu1.3.debian.tar.xz 14532 SHA512:643d3a84542b50ec94f6e03b82a565c93f968f197df48e78fdd7bb6a186edf55ebbf8fba807ff694cb7cd40a336bf6758b4fe5af8034f1c278086ab401aeba82
```

### `dpkg` source package: `patch=2.7.6-2ubuntu1.1`

Binary Packages:

- `patch=2.7.6-2ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/patch/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris patch=2.7.6-2ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.6-2ubuntu1.1.dsc' patch_2.7.6-2ubuntu1.1.dsc 1798 SHA512:80fefde6e5b713944a47a40d9dec24510467249135659f987f2d544c8e83ff4acf3b4e5cbcb8fa87cbf0ae001fa66173f06a8404d2163a66578a3b41ff6a62fa
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.6.orig.tar.xz' patch_2.7.6.orig.tar.xz 783756 SHA512:fcca87bdb67a88685a8a25597f9e015f5e60197b9a269fa350ae35a7991ed8da553939b4bbc7f7d3cfd863c67142af403b04165633acbce4339056a905e87fbd
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.6-2ubuntu1.1.debian.tar.xz' patch_2.7.6-2ubuntu1.1.debian.tar.xz 12356 SHA512:3ba381149e7e7a7f878a6ff485c42775a8f1c8c0546cdbe9d7f9354bd1700bb884028466a9c660979b1bc0ad1e8ed9f09e50688d33d8979eee14d4bb0a65f332
```

### `dpkg` source package: `pcre3=2:8.39-9ubuntu0.1`

Binary Packages:

- `libpcre16-3:amd64=2:8.39-9ubuntu0.1`
- `libpcre3:amd64=2:8.39-9ubuntu0.1`
- `libpcre3-dev:amd64=2:8.39-9ubuntu0.1`
- `libpcre32-3:amd64=2:8.39-9ubuntu0.1`
- `libpcrecpp0v5:amd64=2:8.39-9ubuntu0.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre3=2:8.39-9ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39-9ubuntu0.1.dsc' pcre3_8.39-9ubuntu0.1.dsc 2076 SHA512:d21296f802e0197b5e8c129acfd5857a1f582e0507ed34fc27de9e9f6fcff2f2f5f3a5effa569f2a84f1aa622f7fd57e434c30373f74146c99fa0c1d0a8f1728
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39.orig.tar.bz2' pcre3_8.39.orig.tar.bz2 1560758 SHA512:8b0f14ae5947c4b2d74876a795b04e532fd71c2479a64dbe0ed817e7c7894ea3cae533413de8c17322d305cb7f4e275d72b43e4e828eaca77dc4bcaf04529cf6
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39-9ubuntu0.1.debian.tar.gz' pcre3_8.39-9ubuntu0.1.debian.tar.gz 27241 SHA512:31396aa4ad4077c702cb28c3611e58605e04a45f0d0c6e3ef6158324ee6703784c53a9b2b84959defa3bef96ea5754420016bb15ca6dd0bcfe3b1cf37a025c43
```

### `dpkg` source package: `perl=5.26.1-6ubuntu0.6`

Binary Packages:

- `libperl5.26:amd64=5.26.1-6ubuntu0.6`
- `perl=5.26.1-6ubuntu0.6`
- `perl-base=5.26.1-6ubuntu0.6`
- `perl-modules-5.26=5.26.1-6ubuntu0.6`

Licenses: (parsed from: `/usr/share/doc/libperl5.26/copyright`, `/usr/share/doc/perl/copyright`, `/usr/share/doc/perl-base/copyright`, `/usr/share/doc/perl-modules-5.26/copyright`)

- `Artistic`
- `Artistic,`
- `Artistic-2`
- `Artistic-dist`
- `BSD-3-clause`
- `BSD-3-clause-GENERIC`
- `BSD-3-clause-with-weird-numbering`
- `BSD-4-clause-POWERDOG`
- `BZIP`
- `CC0-1.0`
- `DONT-CHANGE-THE-GPL`
- `Expat`
- `GPL-1`
- `GPL-1+`
- `GPL-2`
- `GPL-2+`
- `GPL-3+-WITH-BISON-EXCEPTION`
- `HSIEH-BSD`
- `HSIEH-DERIVATIVE`
- `LGPL-2.1`
- `REGCOMP`
- `REGCOMP,`
- `RRA-KEEP-THIS-NOTICE`
- `S2P`
- `SDBM-PUBLIC-DOMAIN`
- `TEXT-TABS`
- `Unicode`
- `ZLIB`

Source:

```console
$ apt-get source -qq --print-uris perl=5.26.1-6ubuntu0.6
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.26.1-6ubuntu0.6.dsc' perl_5.26.1-6ubuntu0.6.dsc 2768 SHA512:bd9753e82e06455628fe271f1bafc7be75359daea84c71dc1c6484772507b4191804b325f07513b82cb5c156df0c7f0fe1c44e5da085fbdc7f57370bb87f0073
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.26.1.orig-regen-configure.tar.gz' perl_5.26.1.orig-regen-configure.tar.gz 712883 SHA512:3a8ecf16483d87d40bf428e952a3f5c287af8e4f64977133b61188855120d5896b3c5af845a19ad1912f469d9345dddd728708f6171498a7fd0dd0f56b463139
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.26.1.orig.tar.xz' perl_5.26.1.orig.tar.xz 11922848 SHA512:13faa7bcd7ed8c490c37e9032c115af06c9b8152b75f8062409dd72d263d1314480e8a9a883490de1b448b2e6d53b6a87d108e2eceb17de2524d5857c6a7d300
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.26.1-6ubuntu0.6.debian.tar.xz' perl_5.26.1-6ubuntu0.6.debian.tar.xz 181812 SHA512:5cf34deafe0755b063bc0fcdddc4f0fe49feb751fcb462395bbec26bebde052914ae14b962feecbf229b8b687a8054ea49e68365c6ca02494713ba46a6f983a5
```

### `dpkg` source package: `pinentry=1.1.0-1`

Binary Packages:

- `pinentry-curses=1.1.0-1`

Licenses: (parsed from: `/usr/share/doc/pinentry-curses/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-3`
- `LGPL-3+`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris pinentry=1.1.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.1.0-1.dsc' pinentry_1.1.0-1.dsc 2910 SHA256:8cda3442923c0e18f9c3d5a2817a97a54db7447046b9c469e890abd19c680247
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.1.0.orig.tar.bz2' pinentry_1.1.0.orig.tar.bz2 467702 SHA256:68076686fa724a290ea49cdf0d1c0c1500907d1b759a3bcbfbec0293e8f56570
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.1.0.orig.tar.bz2.asc' pinentry_1.1.0.orig.tar.bz2.asc 534 SHA256:0e3a7633b9fddf9c01c3dcf74aeb94888cc6d5d233f0b8357b0b9c1a1fed9a73
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.1.0-1.debian.tar.xz' pinentry_1.1.0-1.debian.tar.xz 15408 SHA256:ddee92638e762f125ac09b86b4f3b31e2d240e8d2dcce940302293bb2ea0873e
```

### `dpkg` source package: `pkg-config=0.29.1-0ubuntu2`

Binary Packages:

- `pkg-config=0.29.1-0ubuntu2`

Licenses: (parsed from: `/usr/share/doc/pkg-config/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pkg-config=0.29.1-0ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.1-0ubuntu2.dsc' pkg-config_0.29.1-0ubuntu2.dsc 1824 SHA256:91f07d5a80083fbe86c93d9f107890920f4740df8f3d1e6b162a5d703afc3b89
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.1.orig.tar.gz' pkg-config_0.29.1.orig.tar.gz 2013454 SHA256:beb43c9e064555469bd4390dcfd8030b1536e0aa103f08d7abf7ae8cac0cb001
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.1-0ubuntu2.diff.gz' pkg-config_0.29.1-0ubuntu2.diff.gz 12715 SHA256:8d5645ccad7bdbcaf3bd83b1b18c7f7d0e2a813e9813b5d4603aa646fc5ff5ea
```

### `dpkg` source package: `poco=1.8.0.1-1ubuntu4`

Binary Packages:

- `libpoco-dev=1.8.0.1-1ubuntu4`
- `libpococrypto50=1.8.0.1-1ubuntu4`
- `libpocodata50=1.8.0.1-1ubuntu4`
- `libpocodatamysql50=1.8.0.1-1ubuntu4`
- `libpocodataodbc50=1.8.0.1-1ubuntu4`
- `libpocodatasqlite50=1.8.0.1-1ubuntu4`
- `libpocofoundation50=1.8.0.1-1ubuntu4`
- `libpocojson50=1.8.0.1-1ubuntu4`
- `libpocomongodb50=1.8.0.1-1ubuntu4`
- `libpoconet50=1.8.0.1-1ubuntu4`
- `libpoconetssl50=1.8.0.1-1ubuntu4`
- `libpocoredis50=1.8.0.1-1ubuntu4`
- `libpocoutil50=1.8.0.1-1ubuntu4`
- `libpocoxml50=1.8.0.1-1ubuntu4`
- `libpocozip50=1.8.0.1-1ubuntu4`

Licenses: (parsed from: `/usr/share/doc/libpoco-dev/copyright`, `/usr/share/doc/libpococrypto50/copyright`, `/usr/share/doc/libpocodata50/copyright`, `/usr/share/doc/libpocodatamysql50/copyright`, `/usr/share/doc/libpocodataodbc50/copyright`, `/usr/share/doc/libpocodatasqlite50/copyright`, `/usr/share/doc/libpocofoundation50/copyright`, `/usr/share/doc/libpocojson50/copyright`, `/usr/share/doc/libpocomongodb50/copyright`, `/usr/share/doc/libpoconet50/copyright`, `/usr/share/doc/libpoconetssl50/copyright`, `/usr/share/doc/libpocoredis50/copyright`, `/usr/share/doc/libpocoutil50/copyright`, `/usr/share/doc/libpocoxml50/copyright`, `/usr/share/doc/libpocozip50/copyright`)

- `BSD-3-clause`
- `BSL-1.0`
- `Expat`
- `MIT`
- `RSA-MD`
- `Zlib`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris poco=1.8.0.1-1ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/universe/p/poco/poco_1.8.0.1-1ubuntu4.dsc' poco_1.8.0.1-1ubuntu4.dsc 3051 SHA256:fe990610bab8ca4c3c05b0af1ddb52eba946f43439a9e1e094936c03d214339d
'http://archive.ubuntu.com/ubuntu/pool/universe/p/poco/poco_1.8.0.1.orig.tar.bz2' poco_1.8.0.1.orig.tar.bz2 4520334 SHA256:61f1e26e25af2201295b6a58a8e2bf74063ad3bf49c8e969ba08af42310716c2
'http://archive.ubuntu.com/ubuntu/pool/universe/p/poco/poco_1.8.0.1-1ubuntu4.debian.tar.xz' poco_1.8.0.1-1ubuntu4.debian.tar.xz 12716 SHA256:f45010c5cf15a5fe434f007bb4ada1088b3e3cecbe0788fe116649f12ac0efd2
```

### `dpkg` source package: `procps=2:3.3.12-3ubuntu1.2`

Binary Packages:

- `libprocps6:amd64=2:3.3.12-3ubuntu1.2`
- `procps=2:3.3.12-3ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/libprocps6/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris procps=2:3.3.12-3ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.12-3ubuntu1.2.dsc' procps_3.3.12-3ubuntu1.2.dsc 1920 SHA512:0ba0450d7411075000e5be9f64c92c73cf9f029fac707a13ad9bba692042a70c6f5535b31793eaca31670be61408e3a49cd861a0078859c57798a991e713459b
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.12.orig.tar.xz' procps_3.3.12.orig.tar.xz 840540 SHA512:cb26a6b8419cc41134ccd072e1b38919ffd7126a99055a64726dc1d55149a2278fbf84528a71388196351e5bc72e81b18ce2a4f576a111d3741971327b30e6f8
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.12-3ubuntu1.2.debian.tar.xz' procps_3.3.12-3ubuntu1.2.debian.tar.xz 37736 SHA512:36ef9f540a72538f4a6fb02bfb53bf0b4689077c733b7dc4e301f968e2698667e6ad997f30a0ad21d189a8ee4bef7de2710441a8cc9f1ecb3aff6f67f182d49e
```

### `dpkg` source package: `pyasn1=0.4.2-3`

Binary Packages:

- `python-pyasn1=0.4.2-3`

Licenses: (parsed from: `/usr/share/doc/python-pyasn1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris pyasn1=0.4.2-3
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyasn1/pyasn1_0.4.2-3.dsc' pyasn1_0.4.2-3.dsc 2233 SHA256:888517922336ade422fa159960d48a58bc2bc971a9242b3b32f531b7ab7bfd3c
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyasn1/pyasn1_0.4.2.orig.tar.gz' pyasn1_0.4.2.orig.tar.gz 118404 SHA256:d258b0a71994f7770599835249cece1caef3c70def868c4915e6e5ca49b67d15
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyasn1/pyasn1_0.4.2-3.debian.tar.xz' pyasn1_0.4.2-3.debian.tar.xz 5404 SHA256:c4769523a4353d9aabda5728f456c22882c242ff49aa3457595f0685c5d065a2
```

### `dpkg` source package: `pycryptodome=3.4.7-1ubuntu1`

Binary Packages:

- `python-pycryptodome=3.4.7-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/python-pycryptodome/copyright`)

- `BSD-2-clause`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris pycryptodome=3.4.7-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pycryptodome/pycryptodome_3.4.7-1ubuntu1.dsc' pycryptodome_3.4.7-1ubuntu1.dsc 2690 SHA256:b18bdc048bc039ca4f7566adfd07ec9527b0f6617bbe1242fd1261dbc20eaa09
'http://archive.ubuntu.com/ubuntu/pool/main/p/pycryptodome/pycryptodome_3.4.7.orig.tar.gz' pycryptodome_3.4.7.orig.tar.gz 6483140 SHA256:18d8dfe31bf0cb53d58694903e526be68f3cf48e6e3c6dfbbc1e7042b1693af7
'http://archive.ubuntu.com/ubuntu/pool/main/p/pycryptodome/pycryptodome_3.4.7.orig.tar.gz.asc' pycryptodome_3.4.7.orig.tar.gz.asc 862 SHA256:2a0cb959984893539f396039815eadcda26b9fc6f3375d672c1ffa55c636a681
'http://archive.ubuntu.com/ubuntu/pool/main/p/pycryptodome/pycryptodome_3.4.7-1ubuntu1.debian.tar.xz' pycryptodome_3.4.7-1ubuntu1.debian.tar.xz 9972 SHA256:f7510afa5034769b845b4fa2a912c5f14d13ebf84716a4d865e035af660eb000
```

### `dpkg` source package: `pyparsing=2.2.0+dfsg1-2`

Binary Packages:

- `python-pyparsing=2.2.0+dfsg1-2`

Licenses: (parsed from: `/usr/share/doc/python-pyparsing/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `GPL-3`
- `ellis-and-grant`
- `salvolainen`

Source:

```console
$ apt-get source -qq --print-uris pyparsing=2.2.0+dfsg1-2
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyparsing/pyparsing_2.2.0%2bdfsg1-2.dsc' pyparsing_2.2.0+dfsg1-2.dsc 2429 SHA256:fb7dbda8c89bbddf2d96fab4bf770a59f53b08a8f727652556de98e20e1e74ea
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyparsing/pyparsing_2.2.0%2bdfsg1.orig.tar.gz' pyparsing_2.2.0+dfsg1.orig.tar.gz 1146636 SHA256:8cf2bde582aa28b854cb96d225606caae902956136e5050ca62125371b06ef8c
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyparsing/pyparsing_2.2.0%2bdfsg1-2.debian.tar.xz' pyparsing_2.2.0+dfsg1-2.debian.tar.xz 7984 SHA256:f968a17566c942a919fe7024a15bbbb2f1cce5af9c50e01e57ad9580b1e12591
```

### `dpkg` source package: `python-catkin-pkg-modules=0.5.2-1`

Binary Packages:

- `python-catkin-pkg-modules=0.5.2-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-catkin-pkg-modules=0.5.2-1
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-catkin-pkg-modules/python-catkin-pkg-modules_0.5.2-1.debian.tar.xz' python-catkin-pkg-modules_0.5.2-1.debian.tar.xz 2016 SHA512:a20adce16c70a60af4d23221c322f1a3c65b82be0a72a81486c0a2832d06cc8bf159f4549559940ed3bd11062bcc30c5c38f537a58fdd914307d4604a99a9c70
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-catkin-pkg-modules/python-catkin-pkg-modules_0.5.2-1.dsc' python-catkin-pkg-modules_0.5.2-1.dsc 1032 SHA512:f6891619269798c8034fc67eeffdc11a2940d4f7a07c7ec472c17d142e05b14519ff1b4af2c250ff5bdaa159012452a628240057c217ea526f105b4ef6d46533
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-catkin-pkg-modules/python-catkin-pkg-modules_0.5.2.orig.tar.gz' python-catkin-pkg-modules_0.5.2.orig.tar.gz 61860 SHA512:904f8b140e55c3287761089ee96b3ac0cd0505364f689ceaaef1089282b11a50b00508bf5f35465d550038c0618aa0ec02208922768f2c781bbaa716d8f4b050
```

### `dpkg` source package: `python-catkin-pkg=0.5.2-100`

Binary Packages:

- `python-catkin-pkg=0.5.2-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-catkin-pkg=0.5.2-100
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-catkin-pkg/python-catkin-pkg_0.5.2-100.debian.tar.xz' python-catkin-pkg_0.5.2-100.debian.tar.xz 2004 SHA512:e8d874220255bec54c50a985c919c29f1b2e75dab9da04a27410440591101fa9a32a97d840cddfa0ea18c776224c4b01f742ad6325c59016e4aea14e7bed344f
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-catkin-pkg/python-catkin-pkg_0.5.2-100.dsc' python-catkin-pkg_0.5.2-100.dsc 968 SHA512:46c221c44b6cea887330c0fea35b9d123b127e06dfdddc3c62b9034e795b78375625b51c5e88128c9de9dbe246273537b37df4e02158fb694af6710a9a1f007e
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-catkin-pkg/python-catkin-pkg_0.5.2.orig.tar.gz' python-catkin-pkg_0.5.2.orig.tar.gz 14544 SHA512:92dca9fdaf6561f9ffb4c16fc3bc4fbbbf8f554c65a2e4ca9032217140cd8e75e76c28710720cf1d8322e4d43042bcfbb07420b8a7a36a6f2ab282f9327b610a
```

### `dpkg` source package: `python-cffi=1.11.5-1`

Binary Packages:

- `python-cffi-backend=1.11.5-1`

Licenses: (parsed from: `/usr/share/doc/python-cffi-backend/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-cffi=1.11.5-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cffi/python-cffi_1.11.5-1.dsc' python-cffi_1.11.5-1.dsc 2566 SHA256:ea78c9d66e5e6f567e96e7ce940766234efb60b9acfc58b1e144ae8ab6c541c2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cffi/python-cffi_1.11.5.orig.tar.gz' python-cffi_1.11.5.orig.tar.gz 438498 SHA256:e90f17980e6ab0f3c2f3730e56d1fe9bcba1891eeea58966e89d352492cc74f4
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cffi/python-cffi_1.11.5-1.debian.tar.xz' python-cffi_1.11.5-1.debian.tar.xz 5692 SHA256:e4771d799b765f449ce46bc20e671b771bfcc7b5e4d829ffb26280e6de215648
```

### `dpkg` source package: `python-cryptography=2.1.4-1ubuntu1.4`

Binary Packages:

- `python-cryptography=2.1.4-1ubuntu1.4`

Licenses: (parsed from: `/usr/share/doc/python-cryptography/copyright`)

- `Apache`
- `Apache-2.0`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-cryptography=2.1.4-1ubuntu1.4
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cryptography/python-cryptography_2.1.4-1ubuntu1.4.dsc' python-cryptography_2.1.4-1ubuntu1.4.dsc 3645 SHA512:6d6188ec3f7a2d61e635b41ce342428ce1e60a8240d0f236a4f28546559e66812cfc76da30552844eaf31d0ff66c5afa91898c98e09be2d3cfefb86c6af76389
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cryptography/python-cryptography_2.1.4.orig.tar.gz' python-cryptography_2.1.4.orig.tar.gz 441557 SHA512:f749cb4384badc174a842514e5a4fee2ed01ab9c716799d8d9d5301f6d2d97b6c41deb9e425f48928b639fa34bef8c05529ed7e5b777ef5ca75c244f8fda8fd4
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cryptography/python-cryptography_2.1.4-1ubuntu1.4.debian.tar.xz' python-cryptography_2.1.4-1ubuntu1.4.debian.tar.xz 29084 SHA512:ab13e0598663db844e9a473fb49444e1bc6766727b835ff87332808577e7dd4bd4c732bc1899c59cb454445af670caed941ddc597dd884979940c745ff83d58e
```

### `dpkg` source package: `python-dateutil=2.6.1-1`

Binary Packages:

- `python-dateutil=2.6.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-dateutil=2.6.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-dateutil/python-dateutil_2.6.1-1.dsc' python-dateutil_2.6.1-1.dsc 2128 SHA256:17e9a795c53c1c4e4832e8926cb321138934b4d09457dfff45194182b937a311
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-dateutil/python-dateutil_2.6.1.orig.tar.gz' python-dateutil_2.6.1.orig.tar.gz 241428 SHA256:891c38b2a02f5bb1be3e4793866c8df49c7d19baabf9c1bad62547e0b4866aca
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-dateutil/python-dateutil_2.6.1-1.debian.tar.xz' python-dateutil_2.6.1-1.debian.tar.xz 13648 SHA256:ef4fcc1f8a6fc095b15953986d1dd24d05f51c167f0ee212e3f8fef772c43f26
```

### `dpkg` source package: `python-defaults=2.7.15~rc1-1`

Binary Packages:

- `libpython-dev:amd64=2.7.15~rc1-1`
- `libpython-stdlib:amd64=2.7.15~rc1-1`
- `python=2.7.15~rc1-1`
- `python-dev=2.7.15~rc1-1`
- `python-minimal=2.7.15~rc1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-defaults=2.7.15~rc1-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-defaults/python-defaults_2.7.15%7erc1-1.dsc' python-defaults_2.7.15~rc1-1.dsc 2633 SHA256:1089e25a274fb86e8dfbab1b661ecb5ef2b7610e1b6e3fbf8388f875758f7c2c
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-defaults/python-defaults_2.7.15%7erc1-1.tar.gz' python-defaults_2.7.15~rc1-1.tar.gz 1958015 SHA256:f3bed2b81091821d2e514c2e17c6846f7e744487fd15f7d3c48fa1c91b9cd49b
```

### `dpkg` source package: `python-docutils=0.14+dfsg-3`

Binary Packages:

- `docutils-common=0.14+dfsg-3`
- `python-docutils=0.14+dfsg-3`

Licenses: (parsed from: `/usr/share/doc/docutils-common/copyright`, `/usr/share/doc/python-docutils/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `Python-2.1.1`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris python-docutils=0.14+dfsg-3
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-docutils/python-docutils_0.14%2bdfsg-3.dsc' python-docutils_0.14+dfsg-3.dsc 2446 SHA256:400dc1214c70e86c13dd34dd134e4ece07fbbc0119f2c7ed0bf173fb7618bd5d
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-docutils/python-docutils_0.14%2bdfsg.orig.tar.gz' python-docutils_0.14+dfsg.orig.tar.gz 1739255 SHA256:9731d30e7d958c7fe8fcc20c1689064e130053c954e61df20ac5362eb6305760
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-docutils/python-docutils_0.14%2bdfsg-3.debian.tar.xz' python-docutils_0.14+dfsg-3.debian.tar.xz 31188 SHA256:3e73e6211785b227dc0c9258e1a69b0adbbd129a401b5b09886981789569e024
```

### `dpkg` source package: `python-gnupg=0.4.1-1ubuntu1.18.04.1`

Binary Packages:

- `python-gnupg=0.4.1-1ubuntu1.18.04.1`

Licenses: (parsed from: `/usr/share/doc/python-gnupg/copyright`)

- `BSD-3-clause`
- `pycrypto`

Source:

```console
$ apt-get source -qq --print-uris python-gnupg=0.4.1-1ubuntu1.18.04.1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-gnupg/python-gnupg_0.4.1-1ubuntu1.18.04.1.dsc' python-gnupg_0.4.1-1ubuntu1.18.04.1.dsc 2285 SHA512:cf01d154e3c1bcf6d525cac63f44b9454936089456f9f1f6365894a45ace829f7339e8408892e860735c0777edb98b0061ddb58029ff3047ffae35e4b46be296
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-gnupg/python-gnupg_0.4.1.orig.tar.gz' python-gnupg_0.4.1.orig.tar.gz 44534 SHA512:0920a1de4d98a745f7747280672975db04c40b59ea4436745cdbefa86a0c88bfdc086d6dd312c82a0a9e9f8cafb5651f8e17d86e0ee37282b5fc36e7ac8d1a1e
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-gnupg/python-gnupg_0.4.1-1ubuntu1.18.04.1.debian.tar.xz' python-gnupg_0.4.1-1ubuntu1.18.04.1.debian.tar.xz 9992 SHA512:28acbac0ddf3ba814502a5ca398ded9125be914679bd3c4dd337b8c1ba1e70b432fc97a74192c3c44d5ca0541d893632f5a4aba573479cea2c20ea4eaa548ed1
```

### `dpkg` source package: `python-idna=2.6-1`

Binary Packages:

- `python-idna=2.6-1`

Licenses: (parsed from: `/usr/share/doc/python-idna/copyright`)

- `BSD-3-clause`
- `PSF-2`
- `Unicode`

Source:

```console
$ apt-get source -qq --print-uris python-idna=2.6-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-idna/python-idna_2.6-1.dsc' python-idna_2.6-1.dsc 2211 SHA256:e53dc537db7f178ca67efb2e728985644234290aea8b3ae03dfe393181b8a825
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-idna/python-idna_2.6.orig.tar.gz' python-idna_2.6.orig.tar.gz 135992 SHA256:2c6a5de3089009e3da7c5dde64a141dbc8551d5b7f6cf4ed7c2568d0cc520a8f
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-idna/python-idna_2.6-1.debian.tar.xz' python-idna_2.6-1.debian.tar.xz 4472 SHA256:64740dad9d18032de36a6f81f0bcbbc3356a27705b65da792673be510929ae8c
```

### `dpkg` source package: `python-ipaddress=1.0.17-1`

Binary Packages:

- `python-ipaddress=1.0.17-1`

Licenses: (parsed from: `/usr/share/doc/python-ipaddress/copyright`)

- `Expat`
- `PSF-2`

Source:

```console
$ apt-get source -qq --print-uris python-ipaddress=1.0.17-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-ipaddress/python-ipaddress_1.0.17-1.dsc' python-ipaddress_1.0.17-1.dsc 2146 SHA256:c2737119d84971270b25ff6ddcbdd37d33cf364e24d9861beeffb06c164e83e4
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-ipaddress/python-ipaddress_1.0.17.orig.tar.gz' python-ipaddress_1.0.17.orig.tar.gz 32434 SHA256:3a21c5a15f433710aaa26f1ae174b615973a25182006ae7f9c26de151cd51716
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-ipaddress/python-ipaddress_1.0.17-1.debian.tar.xz' python-ipaddress_1.0.17-1.debian.tar.xz 3624 SHA256:0eb6e0b886d4c6cae9274fdd3aacf78dc7efb559bd2fea2612c312095f9a3f0c
```

### `dpkg` source package: `python-numpy=1:1.13.3-2ubuntu1`

Binary Packages:

- `python-numpy=1:1.13.3-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/python-numpy/copyright`)

- `PSF`

Source:

```console
$ apt-get source -qq --print-uris python-numpy=1:1.13.3-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-numpy/python-numpy_1.13.3-2ubuntu1.dsc' python-numpy_1.13.3-2ubuntu1.dsc 3000 SHA256:5cbbdaa075dc0a5732bf4dc703a49c5c4f0a4c3c0af2616e773be339fa5cdca3
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-numpy/python-numpy_1.13.3.orig.tar.gz' python-numpy_1.13.3.orig.tar.gz 4520295 SHA256:5e3cb4c3797a4f0da082cab65ab00fa4a9d7552391876e2bb53f39a35bdc78cf
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-numpy/python-numpy_1.13.3-2ubuntu1.debian.tar.xz' python-numpy_1.13.3-2ubuntu1.debian.tar.xz 144196 SHA256:7dc98e90991b19f413137e8289a81ec2a9bfc7679719235d914af98d96dea33f
```

### `dpkg` source package: `python-roman=2.0.0-3`

Binary Packages:

- `python-roman=2.0.0-3`

Licenses: (parsed from: `/usr/share/doc/python-roman/copyright`)

- `Python-2.1.1`
- `ZPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris python-roman=2.0.0-3
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-roman/python-roman_2.0.0-3.dsc' python-roman_2.0.0-3.dsc 2132 SHA256:0470c89ad49bfbcf20bb59cb86f5de4d2f7d597ffc7519ecb07064ef313f252e
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-roman/python-roman_2.0.0.orig.tar.gz' python-roman_2.0.0.orig.tar.gz 4968 SHA256:98f2c0fb3cdcfba465d12c85b3b7139fc4cd2177f1325f1bacfe00878c8fa7b9
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-roman/python-roman_2.0.0-3.debian.tar.xz' python-roman_2.0.0-3.debian.tar.xz 8596 SHA256:fa6c16b3e4d328a8cfe16fbed994add1a2c9cb5a5955bff374244794a6cddf31
```

### `dpkg` source package: `python-rosdep-modules=0.22.1-1`

Binary Packages:

- `python-rosdep-modules=0.22.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-rosdep-modules=0.22.1-1
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rosdep-modules/python-rosdep-modules_0.22.1-1.debian.tar.xz' python-rosdep-modules_0.22.1-1.debian.tar.xz 2028 SHA512:4c8c51da005393a6d843aa08c34e684385a641ab7728939b834c6fc95f7f36b0c0b5bffa6c57a649c9828bfbc90b4c676299f8245ef6f6eb1d7dac499e3c37a0
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rosdep-modules/python-rosdep-modules_0.22.1-1.dsc' python-rosdep-modules_0.22.1-1.dsc 1010 SHA512:b8b27a5dcbdee8ef0cff9aa6749f88087aa86712bc87ce56b1d4acb859bed52c47a58e831da09594ecb8f9f242cd3e23db8a5d9c99c3dd8734547dd7f360e22b
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rosdep-modules/python-rosdep-modules_0.22.1.orig.tar.gz' python-rosdep-modules_0.22.1.orig.tar.gz 92398 SHA512:a211844a6a7ededfa25ef44e00026d040cfb70c856daf6fe73f9c02a60e896f74a9e85b7a7a2782148c9abc19ce504bf063316066396ccbc3c8722bdfb88ec8d
```

### `dpkg` source package: `python-rosdistro-modules=0.9.0-1`

Binary Packages:

- `python-rosdistro-modules=0.9.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-rosdistro-modules=0.9.0-1
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rosdistro-modules/python-rosdistro-modules_0.9.0-1.debian.tar.xz' python-rosdistro-modules_0.9.0-1.debian.tar.xz 1996 SHA512:eb8ecffe859772d9b2cc3d35538a6d301304bfd48421cee2e0fcf90ffc56a105ea6ef31420c86f57d5eb5d9fb13dc6ad36518bfb07841213d6558c6bf89d4c7b
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rosdistro-modules/python-rosdistro-modules_0.9.0-1.dsc' python-rosdistro-modules_0.9.0-1.dsc 1051 SHA512:fda69b46b8166b24a4e7f77a69d356f7aa1f34bf41674cc7b84bb6fdbee46ae7b46ac9aa235cfe22e879674525b8759d741c5e9fc6dad5e782db23196e478ef3
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rosdistro-modules/python-rosdistro-modules_0.9.0.orig.tar.gz' python-rosdistro-modules_0.9.0.orig.tar.gz 42574 SHA512:3103997bc8cc00267d32cbf6790bea643b5fcfa9b2dd0abc983538aa74f443354a3d8bf918cf12c393edbc2839eb8c7cff22411e7831cedd6edf4936a2fcca8f
```

### `dpkg` source package: `python-rospkg-modules=1.4.0-1`

Binary Packages:

- `python-rospkg-modules=1.4.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-rospkg-modules=1.4.0-1
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rospkg-modules/python-rospkg-modules_1.4.0-1.debian.tar.xz' python-rospkg-modules_1.4.0-1.debian.tar.xz 1140 SHA512:0f8fadf8f9e000386e2c5d399c7b0c30e50548db38bf826dfb513c7f5138a56ee9c9e14731b615e5493b87c432e940e1ef68971b01628a37d9a8960966ad035d
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rospkg-modules/python-rospkg-modules_1.4.0-1.dsc' python-rospkg-modules_1.4.0-1.dsc 986 SHA512:06d498a5e5e35aef196242a857f3df9123eb90521be2924b63ec350043752547f84668ac9f8fd42c515b3c50a90e2f30e9c9365600c3502916d8366d9195f651
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rospkg-modules/python-rospkg-modules_1.4.0.orig.tar.gz' python-rospkg-modules_1.4.0.orig.tar.gz 41507 SHA512:9f4d8216f8dcd521bf48d1b9e1a198eedbb6e2c3c8d480d0f959d8c6fb19fd6a2333747c6d957b01cd25abdaa25226ba6fdc7d340ad82ef53cfbf3a71be6c2e5
```

### `dpkg` source package: `python-rospkg=1.4.0-100`

Binary Packages:

- `python-rospkg=1.4.0-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-rospkg=1.4.0-100
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rospkg/python-rospkg_1.4.0-100.debian.tar.xz' python-rospkg_1.4.0-100.debian.tar.xz 1112 SHA512:0a0e6dc94f7a3665d82d861159ded92837c45c3b17be5187436cc08028a339d316a9fd388225ecc5bdedc5a55b8336a70bf5686be9ac08296cd6e53d90e3ca81
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rospkg/python-rospkg_1.4.0-100.dsc' python-rospkg_1.4.0-100.dsc 922 SHA512:78f298b7eac48bceee865c1e5c106ff86edcdb639fd8da6910c1133d4ecf82f4523f2c4957baa52f984e8769ae207e9ded18e1764e406e33674438bdb2bdc0e2
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rospkg/python-rospkg_1.4.0.orig.tar.gz' python-rospkg_1.4.0.orig.tar.gz 17505 SHA512:6bd90b465e83e1be7f3774a5c305963e4ee2339c15f547e105c209ca9d5c13befd36090841d4a7132d457aeadb0473567cbbfd326803902e495d71ed52f32070
```

### `dpkg` source package: `python-setuptools=39.0.1-2`

Binary Packages:

- `python-pkg-resources=39.0.1-2`
- `python-setuptools=39.0.1-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-setuptools=39.0.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-setuptools/python-setuptools_39.0.1-2.dsc' python-setuptools_39.0.1-2.dsc 2394 SHA256:ff5d172461544d2d847e6d3ecef3356141a4487dcc3047a88db61744986cf999
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-setuptools/python-setuptools_39.0.1.orig.tar.xz' python-setuptools_39.0.1.orig.tar.xz 454544 SHA256:b79bf38d5d74f348f534ba92b49ca21f124046acbb66d54f845aa910af49adff
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-setuptools/python-setuptools_39.0.1-2.debian.tar.xz' python-setuptools_39.0.1-2.debian.tar.xz 15040 SHA256:2e997b64dd6b9ff88672eb965c23ab505558ca45b34d47c87a18e90751fe189a
```

### `dpkg` source package: `python2.7=2.7.17-1~18.04ubuntu1.10`

Binary Packages:

- `libpython2.7:amd64=2.7.17-1~18.04ubuntu1.10`
- `libpython2.7-dev:amd64=2.7.17-1~18.04ubuntu1.10`
- `libpython2.7-minimal:amd64=2.7.17-1~18.04ubuntu1.10`
- `libpython2.7-stdlib:amd64=2.7.17-1~18.04ubuntu1.10`
- `python2.7=2.7.17-1~18.04ubuntu1.10`
- `python2.7-dev=2.7.17-1~18.04ubuntu1.10`
- `python2.7-minimal=2.7.17-1~18.04ubuntu1.10`

Licenses: (parsed from: `/usr/share/doc/libpython2.7/copyright`, `/usr/share/doc/libpython2.7-dev/copyright`, `/usr/share/doc/libpython2.7-minimal/copyright`, `/usr/share/doc/libpython2.7-stdlib/copyright`, `/usr/share/doc/python2.7/copyright`, `/usr/share/doc/python2.7-dev/copyright`, `/usr/share/doc/python2.7-minimal/copyright`)

- `# Licensed to PSF under a Contributor Agreement`
- `* Permission to use this software in any way is granted without`
- `Apache`
- `Apache-2`
- `Apache-2.0`
- `Expat`
- `GPL-2`
- `ISC`
- `LGPL-2.1+`
- `PSF-2`
- `Permission is hereby granted, free of charge, to any person obtaining`
- `Python`
- `This software is provided 'as-is', without any express`
- `This software is provided as-is, without express`
- `implied`
- `see above, some license as Python`

Source:

```console
$ apt-get source -qq --print-uris python2.7=2.7.17-1~18.04ubuntu1.10
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.17-1%7e18.04ubuntu1.10.dsc' python2.7_2.7.17-1~18.04ubuntu1.10.dsc 3487 SHA512:cae83b4698aa976ec3c98f11be1c970ad4aee8e7fd3a394f674ecdc92d5ca7f76fd24d2538e1a73c746a8ea52d2a7a5ffab7b5431f98fccb32fddbbc43394c94
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.17.orig.tar.gz' python2.7_2.7.17.orig.tar.gz 17535962 SHA512:f526baff7f1a9451244edb04e2aca63336b656aac178f4f64c135390b5b1185990ccff0c48f602914dd1c49c9e075951d372b4f2daac39e336c23ae84ef4ca16
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.17-1%7e18.04ubuntu1.10.diff.gz' python2.7_2.7.17-1~18.04ubuntu1.10.diff.gz 305168 SHA512:b9656b2e96971b43b9535a5b29f1c290a9949cee7bad579a1029a6165b3327a557ff024b59562eb5e5335a37ef981c823d8699c0030351c79bd10535ad7dd19e
```

### `dpkg` source package: `python3-defaults=3.6.7-1~18.04`

Binary Packages:

- `libpython3-dev:amd64=3.6.7-1~18.04`
- `libpython3-stdlib:amd64=3.6.7-1~18.04`
- `python3=3.6.7-1~18.04`
- `python3-dev=3.6.7-1~18.04`
- `python3-minimal=3.6.7-1~18.04`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-defaults=3.6.7-1~18.04
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.6.7-1%7e18.04.dsc' python3-defaults_3.6.7-1~18.04.dsc 2896 SHA512:1f6f6bdbc030b0c9bf24a97b2c48052c8a52810e22e021b00719fce7eea8d454c9cc756e3d73ee79be06655b9a35fe8279bf71833a4aa6c605859856e4a31151
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.6.7-1%7e18.04.tar.gz' python3-defaults_3.6.7-1~18.04.tar.gz 137600 SHA512:7020c60ba146deafaf1937883bea03c39efb1068968025756b32e7c7f069c06bfdfb3e1b91dcaa5a1e1c4c01e0177ea91beb4f5fa71f5e60334866ef5b28a2ef
```

### `dpkg` source package: `python3-stdlib-extensions=3.6.9-1~18.04`

Binary Packages:

- `python3-distutils=3.6.9-1~18.04`
- `python3-lib2to3=3.6.9-1~18.04`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-stdlib-extensions=3.6.9-1~18.04
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-stdlib-extensions/python3-stdlib-extensions_3.6.9-1%7e18.04.dsc' python3-stdlib-extensions_3.6.9-1~18.04.dsc 2624 SHA512:e10786f72375b0da8042ac41094c5c2fa9d4649001646da0072e51207042dc0434d5f06616e50a13bfe9610044f0e0bed4cc5b6e9487c38a81024568d52918ce
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-stdlib-extensions/python3-stdlib-extensions_3.6.9.orig.tar.bz2' python3-stdlib-extensions_3.6.9.orig.tar.bz2 4237908 SHA512:79312db29db5ad407d6710f3f8d1c725f2efd481d875d06dfb7e3d442cafccca19d0601a899b86c4cf0360ba6dcaeca187e856c5a6d50df04abef309122b3dd7
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-stdlib-extensions/python3-stdlib-extensions_3.6.9-1%7e18.04.debian.tar.xz' python3-stdlib-extensions_3.6.9-1~18.04.debian.tar.xz 16908 SHA512:7f0e9efb59e4a50b913c13ed0308a3f3fd4c9fc8f029ea6100f40afffc7e6698c781d0910e5443dcde20345a9e5ef4402d4e22f393507169149e58fe14d857a3
```

### `dpkg` source package: `python3.6=3.6.9-1~18.04ubuntu1.9`

Binary Packages:

- `libpython3.6:amd64=3.6.9-1~18.04ubuntu1.9`
- `libpython3.6-dev:amd64=3.6.9-1~18.04ubuntu1.9`
- `libpython3.6-minimal:amd64=3.6.9-1~18.04ubuntu1.9`
- `libpython3.6-stdlib:amd64=3.6.9-1~18.04ubuntu1.9`
- `python3.6=3.6.9-1~18.04ubuntu1.9`
- `python3.6-dev=3.6.9-1~18.04ubuntu1.9`
- `python3.6-minimal=3.6.9-1~18.04ubuntu1.9`

Licenses: (parsed from: `/usr/share/doc/libpython3.6/copyright`, `/usr/share/doc/libpython3.6-dev/copyright`, `/usr/share/doc/libpython3.6-minimal/copyright`, `/usr/share/doc/libpython3.6-stdlib/copyright`, `/usr/share/doc/python3.6/copyright`, `/usr/share/doc/python3.6-dev/copyright`, `/usr/share/doc/python3.6-minimal/copyright`)

- `* Permission to use this software in any way is granted without`
- `By obtaining, using, and/or copying this software and/or its`
- `GPL-2`
- `Permission  is  hereby granted,  free  of charge,  to  any person`
- `Permission is hereby granted, free of charge, to any person obtaining`
- `Permission to use, copy, modify,`
- `Redistribution`
- `This software is provided 'as-is', without any express`
- `This software is provided as-is, without express`
- `binary forms, with`
- `distribute this software`
- `distribute this software and`
- `distribute this software for any`
- `implied`
- `its`
- `use in source`
- `without`

Source:

```console
$ apt-get source -qq --print-uris python3.6=3.6.9-1~18.04ubuntu1.9
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.6/python3.6_3.6.9-1%7e18.04ubuntu1.9.dsc' python3.6_3.6.9-1~18.04ubuntu1.9.dsc 3470 SHA512:24df6348ccda376026e56cdf0774dfab7c8dfc3ece47696728cc7a869ed2dc4d6000f7bddb5180aa0d95b74ad4507ac50c2a3ab233ca23f9e7db363f39fe6652
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.6/python3.6_3.6.9.orig.tar.xz' python3.6_3.6.9.orig.tar.xz 17212164 SHA512:05de9c6f44d96a52bfce10ede4312de892573edaf8bece65926d19973a3a800d65eed7a857af945f69efcfb25efa3788e7a54016b03d80b611eb51c3ea074819
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.6/python3.6_3.6.9-1%7e18.04ubuntu1.9.debian.tar.xz' python3.6_3.6.9-1~18.04ubuntu1.9.debian.tar.xz 231660 SHA512:4b7d1a77ccc536acd7cef8912484eecde40bbea28909eaf1c6d210e65b3e19a78d7ad16d64d8103058234ef5010b2b3df25a80893b3c6867455cff51c1e52721
```

### `dpkg` source package: `pyyaml=3.12-1build2`

Binary Packages:

- `python-yaml=3.12-1build2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pyyaml=3.12-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyyaml/pyyaml_3.12-1build2.dsc' pyyaml_3.12-1build2.dsc 2301 SHA256:05dadbe75f65a9989490de951abf10889e9113cf345e0eb9bf09e65febe5021d
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyyaml/pyyaml_3.12.orig.tar.gz' pyyaml_3.12.orig.tar.gz 253011 SHA256:592766c6303207a20efc445587778322d7f73b161bd994f227adaa341ba212ab
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyyaml/pyyaml_3.12-1build2.debian.tar.xz' pyyaml_3.12-1build2.debian.tar.xz 7272 SHA256:ecaaf2c0725aaa0573ca24f5f477da76af7f3b281e90e2f04496fe4bc86a298b
```

### `dpkg` source package: `rdma-core=17.1-1ubuntu0.2`

Binary Packages:

- `ibverbs-providers:amd64=17.1-1ubuntu0.2`
- `libibverbs-dev:amd64=17.1-1ubuntu0.2`
- `libibverbs1:amd64=17.1-1ubuntu0.2`
- `librdmacm1:amd64=17.1-1ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/ibverbs-providers/copyright`, `/usr/share/doc/libibverbs-dev/copyright`, `/usr/share/doc/libibverbs1/copyright`, `/usr/share/doc/librdmacm1/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-MIT`
- `CC0`
- `CPL-1.0`
- `GPL-2`
- `GPL-2+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris rdma-core=17.1-1ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/r/rdma-core/rdma-core_17.1-1ubuntu0.2.dsc' rdma-core_17.1-1ubuntu0.2.dsc 2762 SHA512:11a86c7c0e571ee312bfdc3707d094209d4e4f2c5b7e2147797ac2cae0bd930d4df290aa2cfd8612bbcd1d44cc22d6c25d89a35dcc1c3ff2b8e4936f07becd1c
'http://archive.ubuntu.com/ubuntu/pool/main/r/rdma-core/rdma-core_17.1.orig.tar.gz' rdma-core_17.1.orig.tar.gz 1027903 SHA512:6a9905dddd4a1cb63f8c235e1e303d85e3be7146c615c1e55e9c837a43d210ed884fe8d4d1b93116e13ceda1ceb57ea43725a1d22f59688cb8676a9251b0771e
'http://archive.ubuntu.com/ubuntu/pool/main/r/rdma-core/rdma-core_17.1-1ubuntu0.2.debian.tar.xz' rdma-core_17.1-1ubuntu0.2.debian.tar.xz 18696 SHA512:d71bc649f927a5a9c67fc7f7f0231a7450ce44af6ebad5698d5b6389b3890cc86cfe04a739d166840ad3a47d182fcef121a01aa2643549fa05ed5d2312c90f90
```

### `dpkg` source package: `readline=7.0-3`

Binary Packages:

- `libreadline7:amd64=7.0-3`
- `readline-common=7.0-3`

Licenses: (parsed from: `/usr/share/doc/libreadline7/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GFDL`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris readline=7.0-3
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_7.0-3.dsc' readline_7.0-3.dsc 2538 SHA256:f27a5dc9053b88641e3effc6c03b7840cbbbd887e8dcaf05d9e336c7bc7c6a53
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_7.0.orig.tar.gz' readline_7.0.orig.tar.gz 2910016 SHA256:750d437185286f40a369e1e4f4764eda932b9459b5ec9a731628393dd3d32334
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_7.0-3.debian.tar.xz' readline_7.0-3.debian.tar.xz 30012 SHA256:bf166310d6ca7716f2bd0e9e06cee2458b0157f7989d028730fc305643560175
```

### `dpkg` source package: `rhash=1.3.6-2`

Binary Packages:

- `librhash0:amd64=1.3.6-2`

Licenses: (parsed from: `/usr/share/doc/librhash0/copyright`)

- `RHash`

Source:

```console
$ apt-get source -qq --print-uris rhash=1.3.6-2
'http://archive.ubuntu.com/ubuntu/pool/main/r/rhash/rhash_1.3.6-2.dsc' rhash_1.3.6-2.dsc 1747 SHA256:57e77023e0c769513949dec63b2d0d7368a47b048367d7d252f80b91257c8843
'http://archive.ubuntu.com/ubuntu/pool/main/r/rhash/rhash_1.3.6.orig.tar.gz' rhash_1.3.6.orig.tar.gz 328097 SHA256:964df972b60569b5cb35ec989ced195ab8ea514fc46a74eab98e86569ffbcf92
'http://archive.ubuntu.com/ubuntu/pool/main/r/rhash/rhash_1.3.6-2.debian.tar.xz' rhash_1.3.6-2.debian.tar.xz 9672 SHA256:fcccfa3d3a5a7ac16395ec54fcfb4217a5ccf5718e762f3670276366061e5638
```

### `dpkg` source package: `ros-melodic-actionlib-msgs=1.12.8-1bionic.20221025.174924`

Binary Packages:

- `ros-melodic-actionlib-msgs=1.12.8-1bionic.20221025.174924`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-catkin=0.7.29-1bionic.20201014.191449`

Binary Packages:

- `ros-melodic-catkin=0.7.29-1bionic.20201014.191449`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-class-loader=0.4.1-0bionic.20201015.033003`

Binary Packages:

- `ros-melodic-class-loader=0.4.1-0bionic.20201015.033003`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-cmake-modules=0.4.2-0bionic.20201015.021712`

Binary Packages:

- `ros-melodic-cmake-modules=0.4.2-0bionic.20201015.021712`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-common-msgs=1.12.8-1bionic.20221025.192012`

Binary Packages:

- `ros-melodic-common-msgs=1.12.8-1bionic.20221025.192012`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-cpp-common=0.6.14-1bionic.20200801.035855`

Binary Packages:

- `ros-melodic-cpp-common=0.6.14-1bionic.20200801.035855`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-diagnostic-msgs=1.12.8-1bionic.20221025.175306`

Binary Packages:

- `ros-melodic-diagnostic-msgs=1.12.8-1bionic.20221025.175306`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-gencpp=0.6.6-1bionic.20221025.174158`

Binary Packages:

- `ros-melodic-gencpp=0.6.6-1bionic.20221025.174158`

Licenses: (parsed from: `/usr/share/doc/ros-melodic-gencpp/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-geneus=2.2.6-0bionic.20221025.174153`

Binary Packages:

- `ros-melodic-geneus=2.2.6-0bionic.20221025.174153`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-genlisp=0.4.16-0bionic.20221025.174014`

Binary Packages:

- `ros-melodic-genlisp=0.4.16-0bionic.20221025.174014`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-genmsg=0.5.17-1bionic.20221025.173817`

Binary Packages:

- `ros-melodic-genmsg=0.5.17-1bionic.20221025.173817`

Licenses: (parsed from: `/usr/share/doc/ros-melodic-genmsg/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-gennodejs=2.0.1-0bionic.20221025.174010`

Binary Packages:

- `ros-melodic-gennodejs=2.0.1-0bionic.20221025.174010`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-genpy=0.6.16-1bionic.20221025.174014`

Binary Packages:

- `ros-melodic-genpy=0.6.16-1bionic.20221025.174014`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-geometry-msgs=1.12.8-1bionic.20221025.175355`

Binary Packages:

- `ros-melodic-geometry-msgs=1.12.8-1bionic.20221025.175355`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-message-filters=1.14.13-1bionic.20221025.184443`

Binary Packages:

- `ros-melodic-message-filters=1.14.13-1bionic.20221025.184443`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-message-generation=0.4.1-1bionic.20221025.174412`

Binary Packages:

- `ros-melodic-message-generation=0.4.1-1bionic.20221025.174412`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-message-runtime=0.4.12-0bionic.20221025.174256`

Binary Packages:

- `ros-melodic-message-runtime=0.4.12-0bionic.20221025.174256`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-mk=1.14.9-1bionic.20221025.180548`

Binary Packages:

- `ros-melodic-mk=1.14.9-1bionic.20221025.180548`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-nav-msgs=1.12.8-1bionic.20221025.175754`

Binary Packages:

- `ros-melodic-nav-msgs=1.12.8-1bionic.20221025.175754`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-pluginlib=1.12.1-0bionic.20221025.180956`

Binary Packages:

- `ros-melodic-pluginlib=1.12.1-0bionic.20221025.180956`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-ros-comm=1.14.13-1bionic.20221025.190831`

Binary Packages:

- `ros-melodic-ros-comm=1.14.13-1bionic.20221025.190831`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-ros-core=1.4.1-0bionic.20221025.192231`

Binary Packages:

- `ros-melodic-ros-core=1.4.1-0bionic.20221025.192231`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-ros-environment=1.2.3-1bionic.20201015.052244`

Binary Packages:

- `ros-melodic-ros-environment=1.2.3-1bionic.20201015.052244`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-ros=1.14.9-1bionic.20221025.180622`

Binary Packages:

- `ros-melodic-ros=1.14.9-1bionic.20221025.180622`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosbag-migration-rule=1.0.0-0bionic.20200801.040144`

Binary Packages:

- `ros-melodic-rosbag-migration-rule=1.0.0-0bionic.20200801.040144`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosbag-storage=1.14.13-1bionic.20221025.184506`

Binary Packages:

- `ros-melodic-rosbag-storage=1.14.13-1bionic.20221025.184506`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosbag=1.14.13-1bionic.20221025.185335`

Binary Packages:

- `ros-melodic-rosbag=1.14.13-1bionic.20221025.185335`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosbash=1.14.9-1bionic.20201016.105914`

Binary Packages:

- `ros-melodic-rosbash=1.14.9-1bionic.20201016.105914`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosboost-cfg=1.14.9-1bionic.20201015.020311`

Binary Packages:

- `ros-melodic-rosboost-cfg=1.14.9-1bionic.20201015.020311`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosbuild=1.14.9-1bionic.20221025.174623`

Binary Packages:

- `ros-melodic-rosbuild=1.14.9-1bionic.20221025.174623`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosclean=1.14.9-1bionic.20201015.071027`

Binary Packages:

- `ros-melodic-rosclean=1.14.9-1bionic.20201015.071027`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosconsole-bridge=0.5.3-0bionic.20221025.181027`

Binary Packages:

- `ros-melodic-rosconsole-bridge=0.5.3-0bionic.20221025.181027`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosconsole=1.13.18-1bionic.20221025.180608`

Binary Packages:

- `ros-melodic-rosconsole=1.13.18-1bionic.20221025.180608`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-roscpp-core=0.6.14-1bionic.20200801.065849`

Binary Packages:

- `ros-melodic-roscpp-core=0.6.14-1bionic.20200801.065849`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-roscpp-serialization=0.6.14-1bionic.20200801.063506`

Binary Packages:

- `ros-melodic-roscpp-serialization=0.6.14-1bionic.20200801.063506`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-roscpp-traits=0.6.14-1bionic.20200801.063118`

Binary Packages:

- `ros-melodic-roscpp-traits=0.6.14-1bionic.20200801.063118`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-roscpp=1.14.13-1bionic.20221025.181538`

Binary Packages:

- `ros-melodic-roscpp=1.14.13-1bionic.20221025.181538`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-roscreate=1.14.9-1bionic.20201017.031701`

Binary Packages:

- `ros-melodic-roscreate=1.14.9-1bionic.20201017.031701`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosgraph-msgs=1.11.2-0bionic.20221025.180432`

Binary Packages:

- `ros-melodic-rosgraph-msgs=1.11.2-0bionic.20221025.180432`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosgraph=1.14.13-1bionic.20220127.142555`

Binary Packages:

- `ros-melodic-rosgraph=1.14.13-1bionic.20220127.142555`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-roslang=1.14.9-1bionic.20221025.174015`

Binary Packages:

- `ros-melodic-roslang=1.14.9-1bionic.20221025.174015`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-roslaunch=1.14.13-1bionic.20221025.183434`

Binary Packages:

- `ros-melodic-roslaunch=1.14.13-1bionic.20221025.183434`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-roslib=1.14.9-1bionic.20201016.105810`

Binary Packages:

- `ros-melodic-roslib=1.14.9-1bionic.20201016.105810`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-roslisp=1.9.24-1bionic.20221025.180522`

Binary Packages:

- `ros-melodic-roslisp=1.9.24-1bionic.20221025.180522`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-roslz4=1.14.13-1bionic.20220127.142622`

Binary Packages:

- `ros-melodic-roslz4=1.14.13-1bionic.20220127.142622`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosmake=1.14.9-1bionic.20201015.052555`

Binary Packages:

- `ros-melodic-rosmake=1.14.9-1bionic.20201015.052555`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosmaster=1.14.13-1bionic.20220127.143155`

Binary Packages:

- `ros-melodic-rosmaster=1.14.13-1bionic.20220127.143155`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosmsg=1.14.13-1bionic.20221025.185916`

Binary Packages:

- `ros-melodic-rosmsg=1.14.13-1bionic.20221025.185916`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosnode=1.14.13-1bionic.20221025.190319`

Binary Packages:

- `ros-melodic-rosnode=1.14.13-1bionic.20221025.190319`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosout=1.14.13-1bionic.20221025.182737`

Binary Packages:

- `ros-melodic-rosout=1.14.13-1bionic.20221025.182737`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rospack=2.5.6-1bionic.20201015.070131`

Binary Packages:

- `ros-melodic-rospack=2.5.6-1bionic.20201015.070131`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosparam=1.14.13-1bionic.20220127.142805`

Binary Packages:

- `ros-melodic-rosparam=1.14.13-1bionic.20220127.142805`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rospy=1.14.13-1bionic.20221025.182746`

Binary Packages:

- `ros-melodic-rospy=1.14.13-1bionic.20221025.182746`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosservice=1.14.13-1bionic.20221025.190129`

Binary Packages:

- `ros-melodic-rosservice=1.14.13-1bionic.20221025.190129`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rostest=1.14.13-1bionic.20221025.183909`

Binary Packages:

- `ros-melodic-rostest=1.14.13-1bionic.20221025.183909`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rostime=0.6.14-1bionic.20200801.051100`

Binary Packages:

- `ros-melodic-rostime=0.6.14-1bionic.20200801.051100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rostopic=1.14.13-1bionic.20221025.185955`

Binary Packages:

- `ros-melodic-rostopic=1.14.13-1bionic.20221025.185955`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosunit=1.14.9-1bionic.20201017.031507`

Binary Packages:

- `ros-melodic-rosunit=1.14.9-1bionic.20201017.031507`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-roswtf=1.14.13-1bionic.20221025.190549`

Binary Packages:

- `ros-melodic-roswtf=1.14.13-1bionic.20221025.190549`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-sensor-msgs=1.12.8-1bionic.20221025.185709`

Binary Packages:

- `ros-melodic-sensor-msgs=1.12.8-1bionic.20221025.185709`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-shape-msgs=1.12.8-1bionic.20221025.175947`

Binary Packages:

- `ros-melodic-shape-msgs=1.12.8-1bionic.20221025.175947`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-std-msgs=0.5.12-0bionic.20221025.174604`

Binary Packages:

- `ros-melodic-std-msgs=0.5.12-0bionic.20221025.174604`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-std-srvs=1.11.2-0bionic.20221025.174616`

Binary Packages:

- `ros-melodic-std-srvs=1.11.2-0bionic.20221025.174616`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-stereo-msgs=1.12.8-1bionic.20221025.191732`

Binary Packages:

- `ros-melodic-stereo-msgs=1.12.8-1bionic.20221025.191732`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-topic-tools=1.14.13-1bionic.20221025.184424`

Binary Packages:

- `ros-melodic-topic-tools=1.14.13-1bionic.20221025.184424`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-trajectory-msgs=1.12.8-1bionic.20221025.180014`

Binary Packages:

- `ros-melodic-trajectory-msgs=1.12.8-1bionic.20221025.180014`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-visualization-msgs=1.12.8-1bionic.20221025.180213`

Binary Packages:

- `ros-melodic-visualization-msgs=1.12.8-1bionic.20221025.180213`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-xmlrpcpp=1.14.13-1bionic.20220127.142710`

Binary Packages:

- `ros-melodic-xmlrpcpp=1.14.13-1bionic.20220127.142710`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `rtmpdump=2.4+20151223.gitfa8646d.1-1`

Binary Packages:

- `librtmp1:amd64=2.4+20151223.gitfa8646d.1-1`

Licenses: (parsed from: `/usr/share/doc/librtmp1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris rtmpdump=2.4+20151223.gitfa8646d.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1-1.dsc' rtmpdump_2.4+20151223.gitfa8646d.1-1.dsc 2315 SHA256:e56822b88625bf6a51f06652fc36fa2a1348b4325ac76541800cd078192aa3d2
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1.orig.tar.gz' rtmpdump_2.4+20151223.gitfa8646d.1.orig.tar.gz 142213 SHA256:5c032f5c8cc2937eb55a81a94effdfed3b0a0304b6376147b86f951e225e3ab5
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1-1.debian.tar.xz' rtmpdump_2.4+20151223.gitfa8646d.1-1.debian.tar.xz 8044 SHA256:675847f5cddb860256cbf2e7d5b85918aa53b59b0fd97a466b39a5c77a399537
```

### `dpkg` source package: `sbcl=2:1.4.5-1`

Binary Packages:

- `sbcl=2:1.4.5-1`

Licenses: (parsed from: `/usr/share/doc/sbcl/copyright`)

- `Apache-2.0`
- `BSD-3-clause`
- `Expat`
- `NTP`
- `NTP~disclaimer`
- `permissive-xerox`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sbcl=2:1.4.5-1
'http://archive.ubuntu.com/ubuntu/pool/universe/s/sbcl/sbcl_1.4.5-1.dsc' sbcl_1.4.5-1.dsc 2352 SHA256:dc7421f1dcd2d7b30393f6846e766efe7bf114aaf411e878e99b8203af924baa
'http://archive.ubuntu.com/ubuntu/pool/universe/s/sbcl/sbcl_1.4.5.orig.tar.bz2' sbcl_1.4.5.orig.tar.bz2 5998856 SHA256:96192effd17f3e457f77bcff0619784ce6e7293e27e0e6c1546a542b3d8ac540
'http://archive.ubuntu.com/ubuntu/pool/universe/s/sbcl/sbcl_1.4.5-1.debian.tar.xz' sbcl_1.4.5-1.debian.tar.xz 71404 SHA256:1dbe1e4d6a6e65e199f8748c098ba8874892399e187ec163784e996c7aeeb681
```

### `dpkg` source package: `sed=4.4-2`

Binary Packages:

- `sed=4.4-2`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris sed=4.4-2
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.4-2.dsc' sed_4.4-2.dsc 2006 SHA256:0e025a69a04c867048f918778771e2ba79d6ddfd62cb5ce6c3a6e255c005706c
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.4.orig.tar.xz' sed_4.4.orig.tar.xz 1181664 SHA256:cbd6ebc5aaf080ed60d0162d7f6aeae58211a1ee9ba9bb25623daa6cd942683b
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.4-2.debian.tar.xz' sed_4.4-2.debian.tar.xz 59600 SHA256:9f9b8bec0438ea0d0bd4315548de519543385c8196bcfcc61362f38f4cc6e7ed
```

### `dpkg` source package: `sensible-utils=0.0.12`

Binary Packages:

- `sensible-utils=0.0.12`

Licenses: (parsed from: `/usr/share/doc/sensible-utils/copyright`)

- `All-permissive`
- `GPL-2`
- `GPL-2+`
- `configure`
- `installsh`

Source:

```console
$ apt-get source -qq --print-uris sensible-utils=0.0.12
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.12.dsc' sensible-utils_0.0.12.dsc 1732 SHA256:1b62cc5f7561b3f5692a6edaec942e2e97e8368dabff8c865867d428eecb1221
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.12.tar.xz' sensible-utils_0.0.12.tar.xz 62152 SHA256:99ba2ebf8c57447c69d426b99b84ff9dc817be0bc4988ec6890a14558c529e2e
```

### `dpkg` source package: `sgml-base=1.29`

Binary Packages:

- `sgml-base=1.29`

Licenses: (parsed from: `/usr/share/doc/sgml-base/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris sgml-base=1.29
'http://archive.ubuntu.com/ubuntu/pool/main/s/sgml-base/sgml-base_1.29.dsc' sgml-base_1.29.dsc 1387 SHA256:5fa519d3de7365d2256c7b9e74b6234a5c81bd115efb6305a53444584c32f8b1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sgml-base/sgml-base_1.29.tar.xz' sgml-base_1.29.tar.xz 12224 SHA256:33808f1d51407ae105d471bf53cab526fe8903b003b78bc7ac4fd1429b7986b4
```

### `dpkg` source package: `shadow=1:4.5-1ubuntu2.5`

Binary Packages:

- `login=1:4.5-1ubuntu2.5`
- `passwd=1:4.5-1ubuntu2.5`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.5-1ubuntu2.5
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.5-1ubuntu2.5.dsc' shadow_4.5-1ubuntu2.5.dsc 2105 SHA512:5753e1aebcc18abe88c5143ca18e6a8da3aa622a601aa785bbc44ff01bb57030de02d2c59f8f4cff7da77b0dc77725b7a52bed6622cce8c01c908e5692c8bf8a
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.5.orig.tar.xz' shadow_4.5.orig.tar.xz 1344524 SHA512:4278544efdd6d800a3c46cfcb144f209ace14ebe017ba1c0d05425fac7868062a73afa8522036a2bc0a16f6f1e7c16373a204463221012367ce0e8e9ef4c4a4d
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.5-1ubuntu2.5.debian.tar.xz' shadow_4.5-1ubuntu2.5.debian.tar.xz 473964 SHA512:9bfcc493e74c384e7fc6c54616590283b00972c853862999659e88c521fe38b81a8ad1ea7a910aabdc293bbd4eefffe46d1624c823c3f239a4eb7dd509ec929c
```

### `dpkg` source package: `six=1.11.0-2`

Binary Packages:

- `python-six=1.11.0-2`

Licenses: (parsed from: `/usr/share/doc/python-six/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris six=1.11.0-2
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.11.0-2.dsc' six_1.11.0-2.dsc 2316 SHA256:c0391b38bc251a3df586bdb163cb250af78aee69bbb27880215a350caaea53f2
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.11.0.orig.tar.gz' six_1.11.0.orig.tar.gz 29860 SHA256:70e8a77beed4562e7f14fe23a786b54f6296e34344c23bc42f07b15018ff98e9
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.11.0-2.debian.tar.xz' six_1.11.0-2.debian.tar.xz 4176 SHA256:bbd91dcb509a1f083bf531062b77dfdf2cbd2badca0fbe5d81957fe852ac4a7a
```

### `dpkg` source package: `sqlite3=3.22.0-1ubuntu0.7`

Binary Packages:

- `libsqlite3-0:amd64=3.22.0-1ubuntu0.7`
- `libsqlite3-dev:amd64=3.22.0-1ubuntu0.7`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`, `/usr/share/doc/libsqlite3-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.22.0-1ubuntu0.7
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.22.0-1ubuntu0.7.dsc' sqlite3_3.22.0-1ubuntu0.7.dsc 2512 SHA512:f71e3d3499da10f02f3d521e2a19820102e85a5f16841427bb80faf6119e9de879f9e322193337c32aac2e4f2d96f1233bfeaad32a67a36789b6eef35a884b46
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.22.0.orig-www.tar.xz' sqlite3_3.22.0.orig-www.tar.xz 3564688 SHA512:e469878137ec3d06886fe096c4325451e8c9b73f6841d28fac9bed45e698bdc1222739570abf2ce456e0853b0c6876b1c79ca0896826295f64d27b276541c1f8
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.22.0.orig.tar.xz' sqlite3_3.22.0.orig.tar.xz 6019648 SHA512:ce3b05cb9f75a5c7a5e8562b70e72e23c043222fd61995f795cbcc40f3f8efcac2660e57b588a15bfdce28c8eb644745bb73af35f5b98ba956dd77457d661dfa
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.22.0-1ubuntu0.7.debian.tar.xz' sqlite3_3.22.0-1ubuntu0.7.debian.tar.xz 48864 SHA512:a6086620c444a6c16c790894ce3cdade4575770630fe695ffaaff6c19723199f944a6999b0957dc7ec46e72fabd34201463ea9c33c23f8bf53e85e3f8f163993
```

### `dpkg` source package: `sudo=1.8.21p2-3ubuntu1.4`

Binary Packages:

- `sudo=1.8.21p2-3ubuntu1.4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `systemd=237-3ubuntu10.56`

Binary Packages:

- `libsystemd0:amd64=237-3ubuntu10.56`
- `libudev1:amd64=237-3ubuntu10.56`

Licenses: (parsed from: `/usr/share/doc/libsystemd0/copyright`, `/usr/share/doc/libudev1/copyright`)

- `CC0-1.0`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris systemd=237-3ubuntu10.56
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_237-3ubuntu10.56.dsc' systemd_237-3ubuntu10.56.dsc 5057 SHA512:f2f70add1d9b4a56b677a7078365c8263dccac069affb765c3cf8c00b33c9854d4ef8f34023a40a550bc6fe8360519ece0829892f348b31215b2770e712424ac
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_237.orig.tar.gz' systemd_237.orig.tar.gz 6871350 SHA512:15ef4b92815a6dd9a6c51672dbc00fd7cd0f08068ef0cbeaca574f68d330b28bc67ba1946f24f75ef3d9e7b63843a73eea700db54688061dbf5c9f8470394c3b
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_237-3ubuntu10.56.debian.tar.xz' systemd_237-3ubuntu10.56.debian.tar.xz 304208 SHA512:4ebcb84f31d046a0bd97b551c90e0c25112ebf1f4ca3e94a2c046d02ba4a4208963a78fa98b9bbf2dbd7e0f635dc0f9e7f8641657f451f70784b2624a3aec0d4
```

### `dpkg` source package: `sysvinit=2.88dsf-59.10ubuntu1`

Binary Packages:

- `sysvinit-utils=2.88dsf-59.10ubuntu1`

Licenses: (parsed from: `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=2.88dsf-59.10ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf-59.10ubuntu1.dsc' sysvinit_2.88dsf-59.10ubuntu1.dsc 2428 SHA256:030f4e8a71381529da3141988344d6e1d0e05ba437e0cdd38d2f3786185bf285
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf.orig.tar.gz' sysvinit_2.88dsf.orig.tar.gz 125330 SHA256:b016f937958d2809a020d407e1287bdc09abf1d44efaa96530e2ea57f544f4e8
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf-59.10ubuntu1.debian.tar.xz' sysvinit_2.88dsf-59.10ubuntu1.debian.tar.xz 132736 SHA256:faee591309aa0065aa43f44a1e840eb01db7f55379af2b45949534bd0317b734
```

### `dpkg` source package: `tar=1.29b-2ubuntu0.3`

Binary Packages:

- `tar=1.29b-2ubuntu0.3`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris tar=1.29b-2ubuntu0.3
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.29b-2ubuntu0.3.dsc' tar_1.29b-2ubuntu0.3.dsc 1776 SHA512:d67785fa916988ddc357d3de81486b8dce4995e68b852ba5dae36527a846fb2431e902c0b036d287d0fc35a95ca2def3aade4facec29c2834c70c77db02c5998
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.29b.orig.tar.xz' tar_1.29b.orig.tar.xz 1822008 SHA512:6814c906f3bf3d1421d46e63aff7921acffbd2b2a0a7e5c20b472a821eab839d6eab93653d964ae16376b65da223c57a92455f44793522c84c8b1343af20b106
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.29b-2ubuntu0.3.debian.tar.xz' tar_1.29b-2ubuntu0.3.debian.tar.xz 35080 SHA512:4808285a3ea5903a7c61be297e2c2cb41654facd68397966a91ae5ebd2381e196cb159c2cec3bcf8f26b24d913764fd4d178670a324ca4daf8ee78050acd7cb2
```

### `dpkg` source package: `tinyxml2=6.0.0+dfsg-1`

Binary Packages:

- `libtinyxml2-6:amd64=6.0.0+dfsg-1`
- `libtinyxml2-dev:amd64=6.0.0+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/libtinyxml2-6/copyright`, `/usr/share/doc/libtinyxml2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `zlib/libpng`

Source:

```console
$ apt-get source -qq --print-uris tinyxml2=6.0.0+dfsg-1
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml2/tinyxml2_6.0.0%2bdfsg-1.dsc' tinyxml2_6.0.0+dfsg-1.dsc 1999 SHA256:d103b12a55f1225e61a87cabf184237be9213233972e3d7bd35a4cc926736aec
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml2/tinyxml2_6.0.0%2bdfsg.orig.tar.gz' tinyxml2_6.0.0+dfsg.orig.tar.gz 352041 SHA256:ef930de291e18acef913a79bba1d2d8e387cd19cfd9fef7618895a21c909164b
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml2/tinyxml2_6.0.0%2bdfsg-1.debian.tar.xz' tinyxml2_6.0.0+dfsg-1.debian.tar.xz 5532 SHA256:6e6052241bc2d7cefbf915b101474185bd5a7369456fbac0f0efa53b8a3c75a6
```

### `dpkg` source package: `tzdata=2022g-0ubuntu0.18.04`

Binary Packages:

- `tzdata=2022g-0ubuntu0.18.04`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris tzdata=2022g-0ubuntu0.18.04
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2022g-0ubuntu0.18.04.dsc' tzdata_2022g-0ubuntu0.18.04.dsc 2331 SHA512:d047ce6a7b961ec55a903adca7059cfe67640ab0640ee78802bc04353b15601338b99ab433b2990c2e77b7d68abd2497d622ac62c3717c3eefbc6ce4d8851753
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2022g.orig.tar.gz' tzdata_2022g.orig.tar.gz 439731 SHA512:7f79394295e00e3a24ebdbf9af3bc454a65f432a93b517e7e96c7f9db9949f6f5fdae9892a9d3789ff44ae0eb1bfe4744d36976b4624659af951d26414f94e65
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2022g.orig.tar.gz.asc' tzdata_2022g.orig.tar.gz.asc 833 SHA512:3474a05373ec4397e17133c54708e1f9efd1f1c5e7ee6945f0972809ceda2214cc4962238773818d04ab4f29dcdf0b3e87247ab19795d06a62b8769dd85cf76b
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2022g-0ubuntu0.18.04.debian.tar.xz' tzdata_2022g-0ubuntu0.18.04.debian.tar.xz 107104 SHA512:212b0f1d601b4bcc358647e3465864a4ace022e3fa0257986b720ae08cf24ab9750a901ca654548a7f4ed19467b2445a5d8a24bfebf4b3a70c443d1dd721e2f1
```

### `dpkg` source package: `ubuntu-keyring=2018.09.18.1~18.04.2`

Binary Packages:

- `ubuntu-keyring=2018.09.18.1~18.04.2`

Licenses: (parsed from: `/usr/share/doc/ubuntu-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris ubuntu-keyring=2018.09.18.1~18.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2018.09.18.1%7e18.04.2.dsc' ubuntu-keyring_2018.09.18.1~18.04.2.dsc 1828 SHA512:d8ae5d5c056c7234d98171a9ad9eacf579e284ac6b06a33abd74fd153e7b42d62a8c4171222cd7d9e1feb7fc84e32671d15483e5a68e0e96d40b3efaea18d387
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2018.09.18.1%7e18.04.2.tar.gz' ubuntu-keyring_2018.09.18.1~18.04.2.tar.gz 34312 SHA512:54b1a31b822bdfe096d879c524043cc93df6d4440fd53264cc4f459fcbe25c26262a09eb637ed9dad6f7715f30acd96dc7e07ed1881a40fd982f7fa00a94e839
```

### `dpkg` source package: `unixodbc=2.3.4-1.1ubuntu3`

Binary Packages:

- `libodbc1:amd64=2.3.4-1.1ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libodbc1/copyright`)

- `GPL`
- `GPL-2+`
- `LGPL`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris unixodbc=2.3.4-1.1ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/u/unixodbc/unixodbc_2.3.4-1.1ubuntu3.dsc' unixodbc_2.3.4-1.1ubuntu3.dsc 2213 SHA256:82ff3dc47665081d287c98f2d8c1390819c176d4d23378a65010b7860827b06f
'http://archive.ubuntu.com/ubuntu/pool/main/u/unixodbc/unixodbc_2.3.4.orig.tar.gz' unixodbc_2.3.4.orig.tar.gz 1830660 SHA256:2e1509a96bb18d248bf08ead0d74804957304ff7c6f8b2e5965309c632421e39
'http://archive.ubuntu.com/ubuntu/pool/main/u/unixodbc/unixodbc_2.3.4-1.1ubuntu3.diff.gz' unixodbc_2.3.4-1.1ubuntu3.diff.gz 19700 SHA256:7b533e947f1a0c49541668924b3679e8fe7dac75a3759081a6ac82f0c55f9184
```

### `dpkg` source package: `util-linux=2.31.1-0.4ubuntu3.7`

Binary Packages:

- `bsdutils=1:2.31.1-0.4ubuntu3.7`
- `fdisk=2.31.1-0.4ubuntu3.7`
- `libblkid1:amd64=2.31.1-0.4ubuntu3.7`
- `libfdisk1:amd64=2.31.1-0.4ubuntu3.7`
- `libmount1:amd64=2.31.1-0.4ubuntu3.7`
- `libsmartcols1:amd64=2.31.1-0.4ubuntu3.7`
- `libuuid1:amd64=2.31.1-0.4ubuntu3.7`
- `mount=2.31.1-0.4ubuntu3.7`
- `util-linux=2.31.1-0.4ubuntu3.7`
- `uuid-dev:amd64=2.31.1-0.4ubuntu3.7`

Licenses: (parsed from: `/usr/share/doc/bsdutils/copyright`, `/usr/share/doc/fdisk/copyright`, `/usr/share/doc/libblkid1/copyright`, `/usr/share/doc/libfdisk1/copyright`, `/usr/share/doc/libmount1/copyright`, `/usr/share/doc/libsmartcols1/copyright`, `/usr/share/doc/libuuid1/copyright`, `/usr/share/doc/mount/copyright`, `/usr/share/doc/util-linux/copyright`, `/usr/share/doc/uuid-dev/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-4-clause`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`
- `MIT`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris util-linux=2.31.1-0.4ubuntu3.7
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.31.1-0.4ubuntu3.7.dsc' util-linux_2.31.1-0.4ubuntu3.7.dsc 4122 SHA512:2602472fb8da0cedd750f9df51b3a5ff4a04be4fcc8843d2b9294495d5697c7209111ec2889f980da7051c39ee186ab3d69fdefea08a1531c9686e4ac9427a1e
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.31.1.orig.tar.xz' util-linux_2.31.1.orig.tar.xz 4514032 SHA512:0a3dc7a4c80f180d99ff64452e6e7269688a7d066a212ab15eafb3b9aaedf0b5294345bc1087dc9655f0efc82d4bb7dff9b669b5ee338a5f13aaff7407fe384f
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.31.1-0.4ubuntu3.7.debian.tar.xz' util-linux_2.31.1-0.4ubuntu3.7.debian.tar.xz 102216 SHA512:f94ae8ca8fa4d3a79a2c909807bbee0bc28156abe33e072a47149fab6f820aab462f2869f564c9a30ef20c0ca21f2b777809324c7c426bf58f584ea4efe3596f
```

### `dpkg` source package: `xml-core=0.18`

Binary Packages:

- `xml-core=0.18`

Licenses: (parsed from: `/usr/share/doc/xml-core/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris xml-core=0.18
'http://archive.ubuntu.com/ubuntu/pool/main/x/xml-core/xml-core_0.18.dsc' xml-core_0.18.dsc 1564 SHA256:109b93880b90e7ec07c7efe9508ed74e1c69de72b6be3e77ebff0c8f0ddcf4a9
'http://archive.ubuntu.com/ubuntu/pool/main/x/xml-core/xml-core_0.18.tar.xz' xml-core_0.18.tar.xz 23804 SHA256:353f05dbb03c642649a6bec28b1acf3c57e489ffdd1401f5e9624dcc90af72cd
```

### `dpkg` source package: `xz-utils=5.2.2-1.3ubuntu0.1`

Binary Packages:

- `liblzma5:amd64=5.2.2-1.3ubuntu0.1`
- `xz-utils=5.2.2-1.3ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/liblzma5/copyright`, `/usr/share/doc/xz-utils/copyright`)

- `Autoconf`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `LGPL-2`
- `LGPL-2.1`
- `LGPL-2.1+`
- `PD`
- `PD-debian`
- `config-h`
- `noderivs`
- `none`
- `permissive-fsf`
- `permissive-nowarranty`
- `probably-PD`

Source:

```console
$ apt-get source -qq --print-uris xz-utils=5.2.2-1.3ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2-1.3ubuntu0.1.dsc' xz-utils_5.2.2-1.3ubuntu0.1.dsc 2661 SHA512:2ce48f364229361c75c56216b25290df301f0016ad98b326280327750945586fcebcba6c58dfabd6ca703582e75771de3917c438d130dc6f53d00f771479ab0a
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2.orig.tar.xz' xz-utils_5.2.2.orig.tar.xz 1016404 SHA512:949ef90669a31b9855c5328d7f9d7e2e537c8072b700b1d2f5d69c307eb7f7635a2a4b1b5bb1bb300fba9429355a6d8935b803c505be5c0104bda9e81d0cf477
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2.orig.tar.xz.asc' xz-utils_5.2.2.orig.tar.xz.asc 543 SHA512:7d0c8ac212731a5d7364d2d29467eafa831a5703b91e894ff90025c632605e669333d14e61c6d9b86ab38bc3f598f0a8774b7ff7abc088ca893a2776f8aee576
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2-1.3ubuntu0.1.debian.tar.xz' xz-utils_5.2.2-1.3ubuntu0.1.debian.tar.xz 110048 SHA512:ec41e17d0e2e3e54a888798236fcbff9bfd3a4b65a3416790095e832b29b08d8507248d5db3d33c1b0066fe282b79066f583f8fbc7e32ea98b7722f8d480abf8
```

### `dpkg` source package: `zlib=1:1.2.11.dfsg-0ubuntu2.2`

Binary Packages:

- `zlib1g:amd64=1:1.2.11.dfsg-0ubuntu2.2`
- `zlib1g-dev:amd64=1:1.2.11.dfsg-0ubuntu2.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.11.dfsg-0ubuntu2.2
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg-0ubuntu2.2.dsc' zlib_1.2.11.dfsg-0ubuntu2.2.dsc 2412 SHA512:ce7274a30b09b16a7da4206b0c69853511c3f8bad780b32226ae17e43765622d900092dcb72f86b16726e54d617cc0adbcd220dbd3c6e731c62689a459189984
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg.orig.tar.xz' zlib_1.2.11.dfsg.orig.tar.xz 287216 SHA512:ffa49436c80fc94555a36a1f2f1f025b223055e02e43f297a572dd5df56d88421dfc36fcbbf0825fbdad876cb0c104f1846af51cca66cac57bbfe698c4365731
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg-0ubuntu2.2.debian.tar.xz' zlib_1.2.11.dfsg-0ubuntu2.2.debian.tar.xz 23148 SHA512:0b5bbd7ff0af3bdec1497619e036253bc5a6ea38bbe62d31aff51f9c0df3d341056376d4474f3194a619279b41392b81f9e4c944d4bf44faa8ab8052450e7517
```
