# `gazebo:libgazebo9-xenial`

## Docker Metadata

- Image ID: `sha256:8c77bead2dba170b58366e48ae4e0817995492d8b2584f3d52f2518e72ab8a9f`
- Created: `2021-08-31T06:38:26.634286199Z`
- Virtual Size: ~ 1.43 Gb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/gzserver_entrypoint.sh"]`
- Command: `["gzserver"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `acl=2.2.52-3`

Binary Packages:

- `libacl1:amd64=2.2.52-3`

Licenses: (parsed from: `/usr/share/doc/libacl1/copyright`)

- `GPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris acl=2.2.52-3
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52-3.dsc' acl_2.2.52-3.dsc 2025 SHA256:82e344b9ab176559a85630b74ee5a68d678d7f24b6fe8139f2fd9fcf38a48095
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52.orig.tar.bz2' acl_2.2.52.orig.tar.bz2 312128 SHA256:59d05b38af76baf2eddccbf08c7968a17451cc785ffecc657fcb46ce32b2631d
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52-3.debian.tar.xz' acl_2.2.52-3.debian.tar.xz 8740 SHA256:fc3f1178d18288993fc4ce4853b7f9dcdf0bd1fd26e4f69349a4e4e5916d1fa8
```

### `dpkg` source package: `adduser=3.113+nmu3ubuntu4`

Binary Packages:

- `adduser=3.113+nmu3ubuntu4`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.113+nmu3ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.113%2bnmu3ubuntu4.dsc' adduser_3.113+nmu3ubuntu4.dsc 1856 SHA256:323f327b25e1fbeba38278eae5813be6238a7c5959e7c10af041999408440247
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.113%2bnmu3ubuntu4.tar.gz' adduser_3.113+nmu3ubuntu4.tar.gz 367980 SHA256:6e4d44c8388b9ba85fc175fa4a48ed43bf6500913c2c631fda0e4419ae63c65a
```

### `dpkg` source package: `alsa-lib=1.1.0-0ubuntu1`

Binary Packages:

- `libasound2:amd64=1.1.0-0ubuntu1`
- `libasound2-data=1.1.0-0ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libasound2/copyright`, `/usr/share/doc/libasound2-data/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris alsa-lib=1.1.0-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/alsa-lib/alsa-lib_1.1.0-0ubuntu1.dsc' alsa-lib_1.1.0-0ubuntu1.dsc 1894 SHA256:17f7b1432cd6b2b1f5573658d42744fe7adeafd5aad482c9ee0be30869ef27f7
'http://archive.ubuntu.com/ubuntu/pool/main/a/alsa-lib/alsa-lib_1.1.0.orig.tar.bz2' alsa-lib_1.1.0.orig.tar.bz2 929874 SHA256:dfde65d11e82b68f82e562ab6228c1fb7c78854345d3c57e2c68a9dd3dae1f15
'http://archive.ubuntu.com/ubuntu/pool/main/a/alsa-lib/alsa-lib_1.1.0-0ubuntu1.debian.tar.xz' alsa-lib_1.1.0-0ubuntu1.debian.tar.xz 53828 SHA256:216445e0a62424c36080e4ef7eca6ad5c4bfe12f1258e52c1d98e53d212efac3
```

### `dpkg` source package: `apparmor=2.10.95-0ubuntu2.11`

Binary Packages:

- `libapparmor1:amd64=2.10.95-0ubuntu2.11`

Licenses: (parsed from: `/usr/share/doc/libapparmor1/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris apparmor=2.10.95-0ubuntu2.11
'http://archive.ubuntu.com/ubuntu/pool/main/a/apparmor/apparmor_2.10.95-0ubuntu2.11.dsc' apparmor_2.10.95-0ubuntu2.11.dsc 3256 SHA512:29ab3be3ce0698980cc80eeb713a7c471e5aae4802f74aefce020c488d819f4ee81e89fb27f2188619f8206104771d0632b207eb71d09a696e274402235486d7
'http://archive.ubuntu.com/ubuntu/pool/main/a/apparmor/apparmor_2.10.95.orig.tar.gz' apparmor_2.10.95.orig.tar.gz 4502268 SHA512:bd8b4223c0de15b76784a42e4ca1ad7da19ae0d12e1f592dc4af14b76c9d549da381cfe50365d75a16fb6bbb42c00d3f1f379a9c785d51cf512e0c8f96013084
'http://archive.ubuntu.com/ubuntu/pool/main/a/apparmor/apparmor_2.10.95-0ubuntu2.11.debian.tar.xz' apparmor_2.10.95-0ubuntu2.11.debian.tar.xz 98980 SHA512:6e410dd41e0d7f09d08ee1e1ad3cd6e82496a82afe158a37af7a3992d93095dbff11d22797fb19fac6d3b158e6ba80f840c380d99e703b41c428f182b22e42aa
```

### `dpkg` source package: `apt=1.2.35`

Binary Packages:

- `apt=1.2.35`
- `libapt-pkg5.0:amd64=1.2.35`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg5.0/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=1.2.35
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.2.35.dsc' apt_1.2.35.dsc 2548 SHA512:e7e220d4b7017c8772021583731296bb9a2c5a84f911b94e9c8195b84e6e36d0d5571b120e298838845c44911ced5fa93ab7eeb1e4c16fdac8754cb515ce9492
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.2.35.tar.xz' apt_1.2.35.tar.xz 2095904 SHA512:4d34d4f386eadcdc6bb16befbd752d18c0a8e62b69f3e49659ee051eb58579477b2c708df2507f917294e650384b63a37ac6432b82d93205ce0f26f6b772c32f
```

### `dpkg` source package: `armadillo=1:6.500.5+dfsg-1`

Binary Packages:

- `libarmadillo6=1:6.500.5+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/libarmadillo6/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris armadillo=1:6.500.5+dfsg-1
'http://archive.ubuntu.com/ubuntu/pool/universe/a/armadillo/armadillo_6.500.5%2bdfsg-1.dsc' armadillo_6.500.5+dfsg-1.dsc 2172 SHA256:8472b6f4c622d2c21d1d422617b03130557aabd2a62eaca3f054284b26be21bb
'http://archive.ubuntu.com/ubuntu/pool/universe/a/armadillo/armadillo_6.500.5%2bdfsg.orig.tar.gz' armadillo_6.500.5+dfsg.orig.tar.gz 537987 SHA256:91575541949ded919d80a65ad145bbb8468e5d6d6f3b04533c7af5c127de2d48
'http://archive.ubuntu.com/ubuntu/pool/universe/a/armadillo/armadillo_6.500.5%2bdfsg-1.diff.gz' armadillo_6.500.5+dfsg-1.diff.gz 11784 SHA256:06095c851354a5abc7af731dbec92ec470b7053a2ea043b5fd3b00d220ac863c
```

### `dpkg` source package: `arpack=3.3.0-1build2`

Binary Packages:

- `libarpack2=3.3.0-1build2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris arpack=3.3.0-1build2
'http://archive.ubuntu.com/ubuntu/pool/universe/a/arpack/arpack_3.3.0-1build2.dsc' arpack_3.3.0-1build2.dsc 2418 SHA256:07d063c0bf59842fec235c6d85717aa2c75d74f09bd59c1c3bc025948733e858
'http://archive.ubuntu.com/ubuntu/pool/universe/a/arpack/arpack_3.3.0.orig.tar.gz' arpack_3.3.0.orig.tar.gz 937287 SHA256:ad59811e7d79d50b8ba19fd908f92a3683d883597b2c7759fdcc38f6311fe5b3
'http://archive.ubuntu.com/ubuntu/pool/universe/a/arpack/arpack_3.3.0-1build2.debian.tar.xz' arpack_3.3.0-1build2.debian.tar.xz 8516 SHA256:208999c68f846c0808667e10728692062764e3f45ce675877ce14591e75b4313
```

### `dpkg` source package: `attr=1:2.4.47-2`

Binary Packages:

- `libattr1:amd64=1:2.4.47-2`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris attr=1:2.4.47-2
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47-2.dsc' attr_2.4.47-2.dsc 2027 SHA256:ee842d6d62d473acf02b494c432cf33128fa46455a09d3172c77c252449fa1a6
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47.orig.tar.bz2' attr_2.4.47.orig.tar.bz2 281877 SHA256:6c1208035757f5ce9b516402dd45b8299a53ae4d69ad2c352116f9cb8d7bc274
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47-2.debian.tar.xz' attr_2.4.47-2.debian.tar.xz 8096 SHA256:f65909562def601b1556393f5656032c058dc574ba622414ad3eb80c7b05a42a
```

### `dpkg` source package: `audit=1:2.4.5-1ubuntu2.1`

Binary Packages:

- `libaudit-common=1:2.4.5-1ubuntu2.1`
- `libaudit1:amd64=1:2.4.5-1ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:2.4.5-1ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.4.5-1ubuntu2.1.dsc' audit_2.4.5-1ubuntu2.1.dsc 2753 SHA512:dcba64d5208c60d9720ca9dca2646e4766ddb13513f1e970bcf042f4cf825291ffaca269a7c159225de2d3bb9cdc0b0125918f9a222990d6c7267bcd32fb9285
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.4.5.orig.tar.gz' audit_2.4.5.orig.tar.gz 1030113 SHA512:9d4ff4b19c027e34d4b7537fb4113116e8f56e3da8047a8d19ce394954648df8aa3dd8f8b8eb0af0c04bf1b7b6031916db6a168a28f065879ca6744bc2b04f15
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.4.5-1ubuntu2.1.debian.tar.xz' audit_2.4.5-1ubuntu2.1.debian.tar.xz 19292 SHA512:3537dfd29b5ed6c19e3ccf302c07cc46e33c6ff27384f24fa41516b2f0e0dae7eca321daef7be0fff72d83692490f69a1fadd0fdbb55891ce38d94c4977d8e5c
```

### `dpkg` source package: `avahi=0.6.32~rc+dfsg-1ubuntu2.3`

Binary Packages:

- `libavahi-client3:amd64=0.6.32~rc+dfsg-1ubuntu2.3`
- `libavahi-common-data:amd64=0.6.32~rc+dfsg-1ubuntu2.3`
- `libavahi-common3:amd64=0.6.32~rc+dfsg-1ubuntu2.3`

Licenses: (parsed from: `/usr/share/doc/libavahi-client3/copyright`, `/usr/share/doc/libavahi-common-data/copyright`, `/usr/share/doc/libavahi-common3/copyright`)

- `GPL`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris avahi=0.6.32~rc+dfsg-1ubuntu2.3
'http://archive.ubuntu.com/ubuntu/pool/main/a/avahi/avahi_0.6.32%7erc%2bdfsg-1ubuntu2.3.dsc' avahi_0.6.32~rc+dfsg-1ubuntu2.3.dsc 4414 SHA512:0d252662c0613c8d8be051c38f4b890843e146e00f0d46dcd98879321c1127fc4476621704f5ffb9722a076eb9270d9ec0a2af9d0556af9a56302a3734e62195
'http://archive.ubuntu.com/ubuntu/pool/main/a/avahi/avahi_0.6.32%7erc%2bdfsg.orig.tar.gz' avahi_0.6.32~rc+dfsg.orig.tar.gz 665175 SHA512:37c1fb2f383af68a191660387dd8d9850e5c57e496626612679576b031c8d84c2c1e6071b4cab3c46b70dd249b4f7aceecb93e3314dc5aa8d0173ca7fb2ebbfc
'http://archive.ubuntu.com/ubuntu/pool/main/a/avahi/avahi_0.6.32%7erc%2bdfsg-1ubuntu2.3.debian.tar.xz' avahi_0.6.32~rc+dfsg-1ubuntu2.3.debian.tar.xz 34628 SHA512:3723abe8a1b4513118b57ed426c56acbebb0492fa0e2f477205670802f38d1cad2d8d5122e0876f587d34c99cf365a9105a6b9b9cea8199c918c5def316c68f5
```

### `dpkg` source package: `base-files=9.4ubuntu4.13`

Binary Packages:

- `base-files=9.4ubuntu4.13`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=9.4ubuntu4.13
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_9.4ubuntu4.13.dsc' base-files_9.4ubuntu4.13.dsc 1639 SHA512:53e170545731c3531e1d4550120d68ba03ce35f97b179f3b0927fc93d762d7933a390417f68eb8114a426178362e7f7168ca23c9b5aec07a7b8f4a2e6c73ed2f
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_9.4ubuntu4.13.tar.xz' base-files_9.4ubuntu4.13.tar.xz 67184 SHA512:82572c771f79098406f6b52cd686fc70c4dfcdfadf3dfe6823c67a89c497867650868d908f451a23451d3c3d1f33e37bf39b48f331bc9872178152b1d42b8117
```

### `dpkg` source package: `base-passwd=3.5.39`

Binary Packages:

- `base-passwd=3.5.39`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `PD`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.5.39
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.5.39.dsc' base-passwd_3.5.39.dsc 1720 SHA256:cfb464663fd23f5b64b7fdeb8860a754b28ee77b346bf2a362c36ceccb7a65ea
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.5.39.tar.xz' base-passwd_3.5.39.tar.xz 51560 SHA256:d827ce2d7b9b4b572527b2071f0e1354840a14c3a43a5081bcb31de400112803
```

### `dpkg` source package: `bash=4.3-14ubuntu1.4`

Binary Packages:

- `bash=4.3-14ubuntu1.4`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris bash=4.3-14ubuntu1.4
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.3-14ubuntu1.4.dsc' bash_4.3-14ubuntu1.4.dsc 2346 SHA512:6a43b082f254950ec2bf6d1503fe23b0e1dae9f8cdaaae89f5f0ab2ad6c6ee16a292d0a525c0e9d12e9df24e1616c79f426182e7e03874e75fd50c87750e797d
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.3.orig.tar.gz' bash_4.3.orig.tar.gz 7516231 SHA512:1281b8bfe01c9b533824ff7de21752b9a4663589dc198e994faf09c0aed7f43d1b843929555b31e0c70c4b50eac943cc3df9224faee71cb19fa55dce4046d90e
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.3-14ubuntu1.4.debian.tar.xz' bash_4.3-14ubuntu1.4.debian.tar.xz 94248 SHA512:631ae6193f1b892fc33ae27398017fe9885d423ba3b2c01875de8f403f9de359d9db2c2125a2b5064c5761aee143af5347d16a335ffd3e0d91a938d12441a91c
```

### `dpkg` source package: `binutils=2.26.1-1ubuntu1~16.04.8`

Binary Packages:

- `binutils=2.26.1-1ubuntu1~16.04.8`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris binutils=2.26.1-1ubuntu1~16.04.8
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.26.1-1ubuntu1%7e16.04.8.dsc' binutils_2.26.1-1ubuntu1~16.04.8.dsc 4078 SHA512:eff1dc6a040835272e69765763161ac031d0aac024e705ec30f6fa62d2bd040b3ec8c9824928cf51029e1992514f14d7da3fb9088a5938eaacbeb422d0d3ffe2
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.26.1.orig.tar.gz' binutils_2.26.1.orig.tar.gz 34868933 SHA512:6c964a81b107684f64e371233157c93510214b250e6af6548f2797ad317c10fa3490b21c148d5343d133483979c4da0d70bccd5cc421911bf8066346b4ad9042
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.26.1-1ubuntu1%7e16.04.8.diff.gz' binutils_2.26.1-1ubuntu1~16.04.8.diff.gz 235088 SHA512:1750dd819809b369dfb419df98486fa8268bee2b5154e9f4cb5d924ac62a0bc91e5ebf5b2de7474e1aa3413dbbd7a6f68fc3ce6d127c7d10398a4efd45b0c6bc
```

### `dpkg` source package: `boost-defaults=1.58.0.1ubuntu1`

Binary Packages:

- `libboost-all-dev=1.58.0.1ubuntu1`
- `libboost-atomic-dev:amd64=1.58.0.1ubuntu1`
- `libboost-chrono-dev:amd64=1.58.0.1ubuntu1`
- `libboost-context-dev:amd64=1.58.0.1ubuntu1`
- `libboost-coroutine-dev:amd64=1.58.0.1ubuntu1`
- `libboost-date-time-dev:amd64=1.58.0.1ubuntu1`
- `libboost-dev:amd64=1.58.0.1ubuntu1`
- `libboost-exception-dev:amd64=1.58.0.1ubuntu1`
- `libboost-filesystem-dev:amd64=1.58.0.1ubuntu1`
- `libboost-graph-dev:amd64=1.58.0.1ubuntu1`
- `libboost-graph-parallel-dev=1.58.0.1ubuntu1`
- `libboost-iostreams-dev:amd64=1.58.0.1ubuntu1`
- `libboost-locale-dev:amd64=1.58.0.1ubuntu1`
- `libboost-log-dev=1.58.0.1ubuntu1`
- `libboost-math-dev:amd64=1.58.0.1ubuntu1`
- `libboost-mpi-dev=1.58.0.1ubuntu1`
- `libboost-mpi-python-dev=1.58.0.1ubuntu1`
- `libboost-program-options-dev:amd64=1.58.0.1ubuntu1`
- `libboost-python-dev=1.58.0.1ubuntu1`
- `libboost-random-dev:amd64=1.58.0.1ubuntu1`
- `libboost-regex-dev:amd64=1.58.0.1ubuntu1`
- `libboost-serialization-dev:amd64=1.58.0.1ubuntu1`
- `libboost-signals-dev:amd64=1.58.0.1ubuntu1`
- `libboost-system-dev:amd64=1.58.0.1ubuntu1`
- `libboost-test-dev:amd64=1.58.0.1ubuntu1`
- `libboost-thread-dev:amd64=1.58.0.1ubuntu1`
- `libboost-timer-dev:amd64=1.58.0.1ubuntu1`
- `libboost-tools-dev=1.58.0.1ubuntu1`
- `libboost-wave-dev:amd64=1.58.0.1ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris boost-defaults=1.58.0.1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost-defaults/boost-defaults_1.58.0.1ubuntu1.dsc' boost-defaults_1.58.0.1ubuntu1.dsc 3502 SHA256:b54fa784ab7c95c4b52a796c1caa503be2dc9b3460084d12e5a23eebb325b0f0
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost-defaults/boost-defaults_1.58.0.1ubuntu1.tar.gz' boost-defaults_1.58.0.1ubuntu1.tar.gz 10619 SHA256:60e743d2ec613928cfc9f514afe0e10da82c59c6d3546f2063ad8e388e2fc959
```

### `dpkg` source package: `boost1.58=1.58.0+dfsg-5ubuntu3.1`

Binary Packages:

- `libboost-atomic1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-atomic1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-chrono1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-chrono1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-context1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-context1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-coroutine1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-coroutine1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-date-time1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-date-time1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-exception1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-filesystem1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-filesystem1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-graph-parallel1.58-dev=1.58.0+dfsg-5ubuntu3.1`
- `libboost-graph-parallel1.58.0=1.58.0+dfsg-5ubuntu3.1`
- `libboost-graph1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-graph1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-iostreams1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-iostreams1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-locale1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-locale1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-log1.58-dev=1.58.0+dfsg-5ubuntu3.1`
- `libboost-log1.58.0=1.58.0+dfsg-5ubuntu3.1`
- `libboost-math1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-math1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-mpi-python1.58-dev=1.58.0+dfsg-5ubuntu3.1`
- `libboost-mpi-python1.58.0=1.58.0+dfsg-5ubuntu3.1`
- `libboost-mpi1.58-dev=1.58.0+dfsg-5ubuntu3.1`
- `libboost-mpi1.58.0=1.58.0+dfsg-5ubuntu3.1`
- `libboost-program-options1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-program-options1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-python1.58-dev=1.58.0+dfsg-5ubuntu3.1`
- `libboost-python1.58.0=1.58.0+dfsg-5ubuntu3.1`
- `libboost-random1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-random1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-regex1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-regex1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-serialization1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-serialization1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-signals1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-signals1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-system1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-system1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-test1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-test1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-thread1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-thread1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-timer1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-timer1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-wave1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-wave1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost1.58-tools-dev=1.58.0+dfsg-5ubuntu3.1`

Licenses: (parsed from: `/usr/share/doc/libboost-atomic1.58-dev/copyright`, `/usr/share/doc/libboost-atomic1.58.0/copyright`, `/usr/share/doc/libboost-chrono1.58-dev/copyright`, `/usr/share/doc/libboost-chrono1.58.0/copyright`, `/usr/share/doc/libboost-context1.58-dev/copyright`, `/usr/share/doc/libboost-context1.58.0/copyright`, `/usr/share/doc/libboost-coroutine1.58-dev/copyright`, `/usr/share/doc/libboost-coroutine1.58.0/copyright`, `/usr/share/doc/libboost-date-time1.58-dev/copyright`, `/usr/share/doc/libboost-date-time1.58.0/copyright`, `/usr/share/doc/libboost-exception1.58-dev/copyright`, `/usr/share/doc/libboost-filesystem1.58-dev/copyright`, `/usr/share/doc/libboost-filesystem1.58.0/copyright`, `/usr/share/doc/libboost-graph-parallel1.58-dev/copyright`, `/usr/share/doc/libboost-graph-parallel1.58.0/copyright`, `/usr/share/doc/libboost-graph1.58-dev/copyright`, `/usr/share/doc/libboost-graph1.58.0/copyright`, `/usr/share/doc/libboost-iostreams1.58-dev/copyright`, `/usr/share/doc/libboost-iostreams1.58.0/copyright`, `/usr/share/doc/libboost-locale1.58-dev/copyright`, `/usr/share/doc/libboost-locale1.58.0/copyright`, `/usr/share/doc/libboost-log1.58-dev/copyright`, `/usr/share/doc/libboost-log1.58.0/copyright`, `/usr/share/doc/libboost-math1.58-dev/copyright`, `/usr/share/doc/libboost-math1.58.0/copyright`, `/usr/share/doc/libboost-mpi-python1.58-dev/copyright`, `/usr/share/doc/libboost-mpi-python1.58.0/copyright`, `/usr/share/doc/libboost-mpi1.58-dev/copyright`, `/usr/share/doc/libboost-mpi1.58.0/copyright`, `/usr/share/doc/libboost-program-options1.58-dev/copyright`, `/usr/share/doc/libboost-program-options1.58.0/copyright`, `/usr/share/doc/libboost-python1.58-dev/copyright`, `/usr/share/doc/libboost-python1.58.0/copyright`, `/usr/share/doc/libboost-random1.58-dev/copyright`, `/usr/share/doc/libboost-random1.58.0/copyright`, `/usr/share/doc/libboost-regex1.58-dev/copyright`, `/usr/share/doc/libboost-regex1.58.0/copyright`, `/usr/share/doc/libboost-serialization1.58-dev/copyright`, `/usr/share/doc/libboost-serialization1.58.0/copyright`, `/usr/share/doc/libboost-signals1.58-dev/copyright`, `/usr/share/doc/libboost-signals1.58.0/copyright`, `/usr/share/doc/libboost-system1.58-dev/copyright`, `/usr/share/doc/libboost-system1.58.0/copyright`, `/usr/share/doc/libboost-test1.58-dev/copyright`, `/usr/share/doc/libboost-test1.58.0/copyright`, `/usr/share/doc/libboost-thread1.58-dev/copyright`, `/usr/share/doc/libboost-thread1.58.0/copyright`, `/usr/share/doc/libboost-timer1.58-dev/copyright`, `/usr/share/doc/libboost-timer1.58.0/copyright`, `/usr/share/doc/libboost-wave1.58-dev/copyright`, `/usr/share/doc/libboost-wave1.58.0/copyright`, `/usr/share/doc/libboost1.58-dev/copyright`, `/usr/share/doc/libboost1.58-tools-dev/copyright`)

- `Boost`

Source:

```console
$ apt-get source -qq --print-uris boost1.58=1.58.0+dfsg-5ubuntu3.1
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost1.58/boost1.58_1.58.0%2bdfsg-5ubuntu3.1.dsc' boost1.58_1.58.0+dfsg-5ubuntu3.1.dsc 6701 SHA512:ea3ae284550eda6324289cb3133e8723d00cf39dfb041a7da80d58e9a7ce97001213698687f2aef099797f9f0c0eff42583446ee3ec08b91c045c16e2d01b5de
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost1.58/boost1.58_1.58.0%2bdfsg.orig.tar.gz' boost1.58_1.58.0+dfsg.orig.tar.gz 82693055 SHA512:661052cf943d274d7eb3543f91272743ac4624a6791d52aa79b1d07630f685cbe6060c97ac858e486de71c1fba30cb7c9a8928582bb228dbdbd2d6b5f0e1fd31
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost1.58/boost1.58_1.58.0%2bdfsg-5ubuntu3.1.debian.tar.xz' boost1.58_1.58.0+dfsg-5ubuntu3.1.debian.tar.xz 158824 SHA512:593c2b6ead8112b1a7907542a99f59293df1f0e5b0695bd78bd05c100e5c73c5286a0675b0171a0cf1e9ddd58be75bbdd4e3644167018179411db18873d630b2
```

### `dpkg` source package: `bullet=2.83.6+dfsg-3`

Binary Packages:

- `libbullet-dev:amd64=2.83.6+dfsg-3`
- `libbulletcollision2.83.6:amd64=2.83.6+dfsg-3`
- `libbulletdynamics2.83.6:amd64=2.83.6+dfsg-3`
- `libbulletsoftbody2.83.6:amd64=2.83.6+dfsg-3`
- `liblinearmath2.83.6:amd64=2.83.6+dfsg-3`

Licenses: (parsed from: `/usr/share/doc/libbullet-dev/copyright`, `/usr/share/doc/libbulletcollision2.83.6/copyright`, `/usr/share/doc/libbulletdynamics2.83.6/copyright`, `/usr/share/doc/libbulletsoftbody2.83.6/copyright`, `/usr/share/doc/liblinearmath2.83.6/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `BSD-3-clause`
- `BSL-1.0`
- `Elsevier-CDROM-License`
- `Expat`
- `GNU-All-Permissive-License`
- `GPL-2`
- `GPL-2+`
- `Melax-License`
- `SCEA-Shared-Source-License-1.0`
- `Zlib`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris bullet=2.83.6+dfsg-3
'http://archive.ubuntu.com/ubuntu/pool/universe/b/bullet/bullet_2.83.6%2bdfsg-3.dsc' bullet_2.83.6+dfsg-3.dsc 3155 SHA256:0b4c819612783b0a1f0de0636ec4944d1ced4ae493c7114a0c6edf605c332157
'http://archive.ubuntu.com/ubuntu/pool/universe/b/bullet/bullet_2.83.6%2bdfsg.orig.tar.xz' bullet_2.83.6+dfsg.orig.tar.xz 8062008 SHA256:05f9be92f3ff426f669d1048e5a37c288fe4a0643254f49b41b4845cc4cd4164
'http://archive.ubuntu.com/ubuntu/pool/universe/b/bullet/bullet_2.83.6%2bdfsg-3.debian.tar.xz' bullet_2.83.6+dfsg-3.debian.tar.xz 12216 SHA256:fc3ee35aa5268030a18fb34d6c595bcd299cef2287441d6743b6f03160e33e5e
```

### `dpkg` source package: `bzip2=1.0.6-8ubuntu0.2`

Binary Packages:

- `bzip2=1.0.6-8ubuntu0.2`
- `libbz2-1.0:amd64=1.0.6-8ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/libbz2-1.0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.6-8ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6-8ubuntu0.2.dsc' bzip2_1.0.6-8ubuntu0.2.dsc 2173 SHA512:8d0b0d48bdde4510d239669d4f60fd952f1efeaf3ead4a4130493c9e14d7973fb67885e55c8faa2c87ace5841660989c3615c29788e3db856096913880150bb7
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6.orig.tar.bz2' bzip2_1.0.6.orig.tar.bz2 708737 SHA512:b1108c392a7f45218b86196498657f50333c870db4ab555ce4859a3fe76c17b4a3430b8a075b7f1c86d9ded006bdf17001b73bfcf261e2d2ee7de4998ad604fd
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6-8ubuntu0.2.debian.tar.bz2' bzip2_1.0.6-8ubuntu0.2.debian.tar.bz2 61599 SHA512:3c9ee464d8303a7c2c7a6dbaffd4bdd88752a65f1a2f968f8c4ed8084d732fb0c72614e5a88f4b9ee43228befb07ec5c283ab1e5995d38f7cd8239eab9c5101b
```

### `dpkg` source package: `capnproto=0.5.3-2ubuntu1.1`

Binary Packages:

- `libcapnp-0.5.3:amd64=0.5.3-2ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libcapnp-0.5.3/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris capnproto=0.5.3-2ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/c/capnproto/capnproto_0.5.3-2ubuntu1.1.dsc' capnproto_0.5.3-2ubuntu1.1.dsc 2166 SHA512:c4ce05afdfd9594994df0457f0c54badd3e0e39960c7ac4bd9103ffa06f37f4433b3759fa837b275bdeaae774a4f4e1e71e661ee13dae0a9f678d6f1740ffd78
'http://archive.ubuntu.com/ubuntu/pool/main/c/capnproto/capnproto_0.5.3.orig.tar.gz' capnproto_0.5.3.orig.tar.gz 2044467 SHA512:7ed66bb0b3668dd19cddb1a7ce98de230fd898892045d6d43bd323e622350717382fcc27958410a09ca59ed1b84fec6d84aa1bf3f49d7eeee0a2ea109551eb8f
'http://archive.ubuntu.com/ubuntu/pool/main/c/capnproto/capnproto_0.5.3-2ubuntu1.1.debian.tar.xz' capnproto_0.5.3-2ubuntu1.1.debian.tar.xz 12816 SHA512:6bf1c5aadae140db774302f5866b167336db2bad10618705cb09241596d021938ff6017a132698e4d085f1161e1d7e8f75dedf0408494e8475214870a87dbf79
```

### `dpkg` source package: `cdebconf=0.198ubuntu1`

Binary Packages:

- `libdebconfclient0:amd64=0.198ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.198ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.198ubuntu1.dsc' cdebconf_0.198ubuntu1.dsc 2825 SHA256:d595d3afcad97026a763909a3efe66e296b02e432827d66a49c6f7088023a21e
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.198ubuntu1.tar.xz' cdebconf_0.198ubuntu1.tar.xz 269256 SHA256:2f3490411599195bd31fb1a29770694888c8295f9bf5012bfb4fa22ebd3990f1
```

### `dpkg` source package: `cmake=3.5.1-1ubuntu3`

Binary Packages:

- `cmake=3.5.1-1ubuntu3`
- `cmake-data=3.5.1-1ubuntu3`

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
$ apt-get source -qq --print-uris cmake=3.5.1-1ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/c/cmake/cmake_3.5.1-1ubuntu3.dsc' cmake_3.5.1-1ubuntu3.dsc 2556 SHA512:6601c99c03077d9741c61d4a7dfd247a02f7677cbf3ac1eba7999871a354f9ee385925946a30cb082157dafbb71ba9b4496d024a77806ceaa577e9c421e56f48
'http://archive.ubuntu.com/ubuntu/pool/main/c/cmake/cmake_3.5.1.orig.tar.gz' cmake_3.5.1.orig.tar.gz 6863121 SHA512:f78185eb1a2344167888b13ce2a0e8657594bc9c4195c99f5a2be3f953dd2ff630081c2d63b180215851eec8c9565fab8ee1c481ca4c0e6eb9dc27b574d45616
'http://archive.ubuntu.com/ubuntu/pool/main/c/cmake/cmake_3.5.1-1ubuntu3.debian.tar.xz' cmake_3.5.1-1ubuntu3.debian.tar.xz 34716 SHA512:58de72af90875ab654d234db8e30b26f8f5681e7845c028cdfa40f6bdbe36b7b56a622da966b21486f79d9e3fdc2c9b9b287741af218c808b9ffdab7070803d6
```

### `dpkg` source package: `coreutils=8.25-2ubuntu3~16.04`

Binary Packages:

- `coreutils=8.25-2ubuntu3~16.04`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils=8.25-2ubuntu3~16.04
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.25-2ubuntu3%7e16.04.dsc' coreutils_8.25-2ubuntu3~16.04.dsc 2095 SHA512:c1b3746ab480ee4385d2d8549f7a756d3ecea36e800664d4fb329c65d7f9ce764cd1dfd71d284505b86c3b6150a23a7ed7c4e07e7c4e99fe7eb68b0faff9c58b
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.25.orig.tar.xz' coreutils_8.25.orig.tar.xz 5725008 SHA512:571f95d44987d373081ed4c6ac82155ad3dcd95621d7b1a7163597e80ecbbafef2cd74b2ef594587a443a1a4355083879f898a286bb0230c48112d43d076ccd6
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.25-2ubuntu3%7e16.04.debian.tar.xz' coreutils_8.25-2ubuntu3~16.04.debian.tar.xz 28336 SHA512:b92193304dcc20f01f2bdb49dae686d9c129abb059394523f23c251854714c9e3bda9304a46e13c685935afa215a533efc5969553c398a49d86447e298d9a3ee
```

### `dpkg` source package: `cryptsetup=2:1.6.6-5ubuntu2.1`

Binary Packages:

- `libcryptsetup4:amd64=2:1.6.6-5ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/libcryptsetup4/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris cryptsetup=2:1.6.6-5ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cryptsetup/cryptsetup_1.6.6-5ubuntu2.1.dsc' cryptsetup_1.6.6-5ubuntu2.1.dsc 2650 SHA512:e5836598fec56c67677d462f38d51eb997c708a5c7e5a44789cd62c18ceaf30080be61b98c92932122b7f3d563f80210fbfaed2b6c441490e38317ff61201277
'http://archive.ubuntu.com/ubuntu/pool/main/c/cryptsetup/cryptsetup_1.6.6.orig.tar.xz' cryptsetup_1.6.6.orig.tar.xz 1145940 SHA512:6ee6b4e8fe4f721bb97d1cf47c5e2d1c96001dd3ac48154d414f64d23620ac3ec3eeea2ad584a1a3111e07a086c8a4fdbfabdf4859cda58ba2bd6765b1f009a8
'http://archive.ubuntu.com/ubuntu/pool/main/c/cryptsetup/cryptsetup_1.6.6-5ubuntu2.1.debian.tar.xz' cryptsetup_1.6.6-5ubuntu2.1.debian.tar.xz 91808 SHA512:c17d030969620bdebe5e2822ab37d6996d15ac2d2483f91be86080c6f5793915b4b922e43d7e567abaea762076bee98d01c68e1d0f4cd058c3a2b8fbcfd5cf22
```

### `dpkg` source package: `crystalhd=1:0.0~git20110715.fdd2f19-11build1`

Binary Packages:

- `libcrystalhd3:amd64=1:0.0~git20110715.fdd2f19-11build1`

Licenses: (parsed from: `/usr/share/doc/libcrystalhd3/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris crystalhd=1:0.0~git20110715.fdd2f19-11build1
'http://archive.ubuntu.com/ubuntu/pool/universe/c/crystalhd/crystalhd_0.0%7egit20110715.fdd2f19-11build1.dsc' crystalhd_0.0~git20110715.fdd2f19-11build1.dsc 1726 SHA256:27c571228db5639c2c97c787e73ca65f37d3ecd856c664b5edbb559755af57fa
'http://archive.ubuntu.com/ubuntu/pool/universe/c/crystalhd/crystalhd_0.0%7egit20110715.fdd2f19.orig.tar.gz' crystalhd_0.0~git20110715.fdd2f19.orig.tar.gz 1186072 SHA256:a1c22908b85085dcc4591bc033fe054be63eab59b7d35f0a9ab3fcb2600722b7
'http://archive.ubuntu.com/ubuntu/pool/universe/c/crystalhd/crystalhd_0.0%7egit20110715.fdd2f19-11build1.debian.tar.xz' crystalhd_0.0~git20110715.fdd2f19-11build1.debian.tar.xz 15240 SHA256:646168058a9a41b20a392fe20f7a2a88caaa1a42fc3e002635c33f0cf129ed0f
```

### `dpkg` source package: `cups=2.1.3-4ubuntu0.11`

Binary Packages:

- `libcups2:amd64=2.1.3-4ubuntu0.11`

Licenses: (parsed from: `/usr/share/doc/libcups2/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2.0 with AOSDL exception`
- `LGPL-2`
- `LGPL-2.0 with AOSDL exception`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris cups=2.1.3-4ubuntu0.11
'http://archive.ubuntu.com/ubuntu/pool/main/c/cups/cups_2.1.3-4ubuntu0.11.dsc' cups_2.1.3-4ubuntu0.11.dsc 3755 SHA512:83bfa0f1ab5310d79ac3b00b6ee058ccb88431fe5f3f278bd30e35f73070a741c75856dd0f6fa0a9d76762ec384c7bd87349b8e542a6b768c2be4f04010526bc
'http://archive.ubuntu.com/ubuntu/pool/main/c/cups/cups_2.1.3.orig.tar.bz2' cups_2.1.3.orig.tar.bz2 8832400 SHA512:5cc715b8521b4d6af29a97a8abf7a1b0973840c00727ee8e7926e89a4a9da8e67565d14cc4b57ab7cfb40b238d4faaed7608b9ab95947cc3671ed87b710f8f36
'http://archive.ubuntu.com/ubuntu/pool/main/c/cups/cups_2.1.3-4ubuntu0.11.debian.tar.xz' cups_2.1.3-4ubuntu0.11.debian.tar.xz 356476 SHA512:b57ab661a003b62d60c90c0d22bdea4f046b0b052326f821070ed7c08b2a208fb2cfb789613f5a9ebec2c694916602d119862c9880904f45d266fdcff2e4ea9a
```

### `dpkg` source package: `curl=7.47.0-1ubuntu2.19`

Binary Packages:

- `libcurl3:amd64=7.47.0-1ubuntu2.19`
- `libcurl3-gnutls:amd64=7.47.0-1ubuntu2.19`
- `libcurl4-openssl-dev:amd64=7.47.0-1ubuntu2.19`

Licenses: (parsed from: `/usr/share/doc/libcurl3/copyright`, `/usr/share/doc/libcurl3-gnutls/copyright`, `/usr/share/doc/libcurl4-openssl-dev/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris curl=7.47.0-1ubuntu2.19
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.47.0-1ubuntu2.19.dsc' curl_7.47.0-1ubuntu2.19.dsc 2733 SHA512:d4f9d30a0097076ad83ab8f07766101f2d151dd2dcbcfc6e0560a1e2701f0ff802af20c2a2a4efa9b94fb599903071f6406a7b868b0c7817ce3ff8f8b928d8bd
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.47.0.orig.tar.gz' curl_7.47.0.orig.tar.gz 4563163 SHA512:567d6a17bad1439147a419eff7e3b4a8f81104e903d856a33a1ccfaf77723cc70004fa697505443a5edcee1b644eba2c79484b41c00e35320bec6ef928db43d9
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.47.0-1ubuntu2.19.debian.tar.xz' curl_7.47.0-1ubuntu2.19.debian.tar.xz 73780 SHA512:dc36d566bd0c09734ef0def1840e6afe6cbd6b3fb7ae0f9d7d74da5c9d05b40eaa1c288442f8ea40c157500bf759bbcb3625baeb1dfece3cede17ef1dbbb0087
```

### `dpkg` source package: `cyrus-sasl2=2.1.26.dfsg1-14ubuntu0.2`

Binary Packages:

- `libsasl2-2:amd64=2.1.26.dfsg1-14ubuntu0.2`
- `libsasl2-modules-db:amd64=2.1.26.dfsg1-14ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/libsasl2-2/copyright`, `/usr/share/doc/libsasl2-modules-db/copyright`)

- `BSD-2-clause`
- `BSD-4-clause`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.26.dfsg1-14ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.26.dfsg1-14ubuntu0.2.dsc' cyrus-sasl2_2.1.26.dfsg1-14ubuntu0.2.dsc 3416 SHA512:fd0ce2535908f464fa0335848b002c7bf49c16d60eabebc1812e2d75cb0a61fea27586bba3e49102660af7d90319d7b9f32e4a05d2abfac75a7982c80ebd701a
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.26.dfsg1.orig.tar.gz' cyrus-sasl2_2.1.26.dfsg1.orig.tar.gz 1494337 SHA512:244b081cb8c58f2cc59e0a0c18bc91fc3b0659d2419e3aa435d4e39ab86c565141d96bad50295a90046b86dcad7e773b26a88e8271917d89c065988b8c9599ec
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.26.dfsg1-14ubuntu0.2.debian.tar.xz' cyrus-sasl2_2.1.26.dfsg1-14ubuntu0.2.debian.tar.xz 95360 SHA512:f72b8e64cd49541046b9a759873aa61ee27db9ec230e17cbe240d8cc61b7da93be0754d51d692bee6557993829a565f052de5ec7a55230094ee53e256ca53e8d
```

### `dpkg` source package: `dash=0.5.8-2.1ubuntu2`

Binary Packages:

- `dash=0.5.8-2.1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.8-2.1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8-2.1ubuntu2.dsc' dash_0.5.8-2.1ubuntu2.dsc 1882 SHA256:16cb7f56041a9daa198728715318a5d88c19da01eb3ffccbc71f67304b077564
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8.orig.tar.gz' dash_0.5.8.orig.tar.gz 223028 SHA256:c6db3a237747b02d20382a761397563d813b306c020ae28ce25a1c3915fac60f
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8-2.1ubuntu2.diff.gz' dash_0.5.8-2.1ubuntu2.diff.gz 73054 SHA256:3c200a0b9c88b2e421bce9c717bf2ace7a9378c271a9b60463913e312424565a
```

### `dpkg` source package: `db5.3=5.3.28-11ubuntu0.2`

Binary Packages:

- `libdb5.3:amd64=5.3.28-11ubuntu0.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28-11ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28-11ubuntu0.2.dsc' db5.3_5.3.28-11ubuntu0.2.dsc 3182 SHA512:6b376d9d7286bf3a09ed1d1c8113a8bfaa99276424691e42d952393fcab04d9f317de621d24bfd7c33b1a2f6ac92c3d781c83f904c0dc8af55c8ea99eaa530da
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28.orig.tar.xz' db5.3_5.3.28.orig.tar.xz 24154920 SHA512:080483cac3119569e04c3c22c95e97e5e448c88d87a443933d0ef2c71b506f309428584d6a8fb9c236c616dd82beffa1b30361b4c918756745983fcf54a3f8da
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28-11ubuntu0.2.debian.tar.xz' db5.3_5.3.28-11ubuntu0.2.debian.tar.xz 29312 SHA512:63be9f279a67cc56ddacccd3a4b419d83e1a081c7b104c0a05d845a4e65c81aab51fc46e676a27c51f52cad038041e10f2ffbca64cbde6d006537cb0a53d2b66
```

### `dpkg` source package: `dbus=1.10.6-1ubuntu3.6`

Binary Packages:

- `libdbus-1-3:amd64=1.10.6-1ubuntu3.6`

Licenses: (parsed from: `/usr/share/doc/libdbus-1-3/copyright`)

- `AFL-2.1`
- `AFL-2.1,`
- `BSD-3-clause`
- `BSD-3-clause-generic`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `Tcl-BSDish`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris dbus=1.10.6-1ubuntu3.6
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.10.6-1ubuntu3.6.dsc' dbus_1.10.6-1ubuntu3.6.dsc 3090 SHA512:c0e69e543f96117580c2db0bb037c24ec9b83f63a3562c1f2e101503615c2bdff0d419d8fe5e286966d47e779a3be3529c7a6152e647742a715ba4b3b81cb03c
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.10.6.orig.tar.gz' dbus_1.10.6.orig.tar.gz 1952608 SHA512:56108dde5097b063b25ef6e42e573b7e1affd5b5a6ce3c745e2de21b434d86542ac6b7c384572826f867a5c471692cc7468c74c4b0cf4a1f60a1a41b0394fb3c
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.10.6-1ubuntu3.6.debian.tar.xz' dbus_1.10.6-1ubuntu3.6.debian.tar.xz 66784 SHA512:db7a48f3dd0ec0faa1f5270ae4a2863119c7badc0ed68c357cc16361bea2b5bada8e39f6005161443b20322861e063b51258f2d7e5fec9217b026e0a7f016c5d
```

### `dpkg` source package: `debconf=1.5.58ubuntu2`

Binary Packages:

- `debconf=1.5.58ubuntu2`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.58ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.58ubuntu2.dsc' debconf_1.5.58ubuntu2.dsc 2076 SHA512:5703f7ec92cd0247f94ee8384bbb395d37fb0d98ad6ca891cdd597e3dc124e64fa2f2b91687a2e5e10e196feef1dd32ebf9ee7565f8e7a39584e01002b43ea9d
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.58ubuntu2.tar.gz' debconf_1.5.58ubuntu2.tar.gz 1007295 SHA512:1b1f8f779e0cc2fb1580a7381599a47b0c27a0f68da90f07023edb178ea8bffe9a205c3ecf002f6496445225b158c3dc4a827cca24f2f1755384bfc67b3000ef
```

### `dpkg` source package: `debianutils=4.7`

Binary Packages:

- `debianutils=4.7`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debianutils=4.7
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_4.7.dsc' debianutils_4.7.dsc 1703 SHA256:8dd1d66186f56bfe11bce5151b50c6909787d690bf90cc90212ea6deec186460
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_4.7.tar.xz' debianutils_4.7.tar.xz 156276 SHA256:a269cacd40f52f2fa5d5636357714a49e8538459c16d77772efaa23711fe53d9
```

### `dpkg` source package: `dh-python=2.20151103ubuntu1.2`

Binary Packages:

- `dh-python=2.20151103ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/dh-python/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris dh-python=2.20151103ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/d/dh-python/dh-python_2.20151103ubuntu1.2.dsc' dh-python_2.20151103ubuntu1.2.dsc 1834 SHA512:9e3faac414ba96ce4588a19d450bb48a4b21d405a2d1ff1f7bc3fc20db496788d19f7685ac47fd97c09d1d994e204f0e0f9ad62e4b607d55137461b21d590c09
'http://archive.ubuntu.com/ubuntu/pool/main/d/dh-python/dh-python_2.20151103ubuntu1.2.tar.xz' dh-python_2.20151103ubuntu1.2.tar.xz 79844 SHA512:61236ba062a85d0476d8b8ff0e262192726382296a908809b16c27c0586a7da29af2d0c7af2cd5273d3f6266be610bbaba87c9e1247429f7bf4f2e4287527e2f
```

### `dpkg` source package: `diffutils=1:3.3-3`

Binary Packages:

- `diffutils=1:3.3-3`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris diffutils=1:3.3-3
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.3-3.dsc' diffutils_3.3-3.dsc 1438 SHA256:2ac1b096ab1f6f0c628d6952fe65336d0c792a3d4814fb73a81a3f1f518eff91
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.3.orig.tar.xz' diffutils_3.3.orig.tar.xz 1197832 SHA256:a25e89a8ab65fded1731e4186be1bb25cda967834b6df973599cdcd5abdfc19c
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.3-3.debian.tar.xz' diffutils_3.3-3.debian.tar.xz 18356 SHA256:a0d1946979196f793a8ca55b21ab7891227de08f15bac2578ed84f4911e8b755
```

### `dpkg` source package: `distro-info-data=0.28ubuntu0.18`

Binary Packages:

- `distro-info-data=0.28ubuntu0.18`

Licenses: (parsed from: `/usr/share/doc/distro-info-data/copyright`)

- `ISC`

Source:

```console
$ apt-get source -qq --print-uris distro-info-data=0.28ubuntu0.18
'http://archive.ubuntu.com/ubuntu/pool/main/d/distro-info-data/distro-info-data_0.28ubuntu0.18.dsc' distro-info-data_0.28ubuntu0.18.dsc 1761 SHA512:81f97432bfba24effb2acfa49802d3cd43d823c6efa57622aa0d4c62a6e9f924e132a4120cd77edbd1c47d2e6c03f156baefe05f751eea5c454271bc253968ac
'http://archive.ubuntu.com/ubuntu/pool/main/d/distro-info-data/distro-info-data_0.28ubuntu0.18.tar.xz' distro-info-data_0.28ubuntu0.18.tar.xz 7408 SHA512:a368ba3a7b767b79641b9c81b096eb682af0b47a964b117657f344ea4b0f2f68dfee0c0fd762a5f81ad1ecad2269b37a3fffa61d7be5605dd60609404649e771
```

### `dpkg` source package: `dpkg=1.18.4ubuntu1.7`

Binary Packages:

- `dpkg=1.18.4ubuntu1.7`
- `dpkg-dev=1.18.4ubuntu1.7`
- `libdpkg-perl=1.18.4ubuntu1.7`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`, `/usr/share/doc/dpkg-dev/copyright`, `/usr/share/doc/libdpkg-perl/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.18.4ubuntu1.7
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.18.4ubuntu1.7.dsc' dpkg_1.18.4ubuntu1.7.dsc 2196 SHA512:584fcb2ee1876ee6d500f492ba104082e46c5a7d0f89e2fc402114474f89a8166abb90b497b44471ddd7f3d3381fd5fdcc7d9e7e08b286de864710e4334bcd3a
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.18.4ubuntu1.7.tar.xz' dpkg_1.18.4ubuntu1.7.tar.xz 4298460 SHA512:4a953d961495ff7172ccb2e1f2e48216e52cf7faf127089039e7b122c2c9a6823c1e8e55f8a3cea353798955d5491f946dc46d4e52145c449980ebe6a981e7e0
```

### `dpkg` source package: `e2fsprogs=1.42.13-1ubuntu1.2`

Binary Packages:

- `comerr-dev=2.1-1.42.13-1ubuntu1.2`
- `e2fslibs:amd64=1.42.13-1ubuntu1.2`
- `e2fsprogs=1.42.13-1ubuntu1.2`
- `libcomerr2:amd64=1.42.13-1ubuntu1.2`
- `libss2:amd64=1.42.13-1ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/comerr-dev/copyright`, `/usr/share/doc/e2fslibs/copyright`, `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcomerr2/copyright`, `/usr/share/doc/libss2/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.42.13-1ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.42.13-1ubuntu1.2.dsc' e2fsprogs_1.42.13-1ubuntu1.2.dsc 2606 SHA512:02793a1deac21bdbd72aea42f684673c945f7ab33d659bef5245caa42a30d752d5bdfcfd6c672c87907508822819025bb3ce75603e7be61ea4d61717167ed06d
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.42.13.orig.tar.gz' e2fsprogs_1.42.13.orig.tar.gz 6511931 SHA512:d341790f55c3bff34425369063757280b9ba6ac08f405e14f94f299345ae76c0dc6e90871b746cc98c73467448d888fe5bc029688b5eed5fd22c3c37bf285cd0
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.42.13-1ubuntu1.2.debian.tar.xz' e2fsprogs_1.42.13-1ubuntu1.2.debian.tar.xz 72228 SHA512:db80956f2ed3e90ee888017843a1269f09dbb3e03f6adf2596983309189f8e131f68c06490673d69af7edae336d66446aea6e8fe488b1ad17cf2ba79bbd6ae98
```

### `dpkg` source package: `elfutils=0.165-3ubuntu1.2`

Binary Packages:

- `libelf1:amd64=0.165-3ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/libelf1/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris elfutils=0.165-3ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.165-3ubuntu1.2.dsc' elfutils_0.165-3ubuntu1.2.dsc 2393 SHA512:5f37104f950b615598a51c9f2d88996c4ad0db614bd63d8996e7cc7230dee3543d5c36705906a6c8f6dd6066ecbacd328c2fc6455e22302c7cf43b2f0723bf5f
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.165.orig.tar.bz2' elfutils_0.165.orig.tar.bz2 6481128 SHA512:89d42a32f1d77d3419473165e1ac15782765ce6ec842d63f03962260806fbfdf16d17b8abec8527d8b125b9195c24a56252070b0c6ae860ffcf0dd74943da32a
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.165-3ubuntu1.2.debian.tar.xz' elfutils_0.165-3ubuntu1.2.debian.tar.xz 52004 SHA512:acd8f208ffd461307216cfad95bb84c16ab77d6dfad17787bf75c0a571f57e33f95024f4245d043fe720dc53ed77f237b50e02d5655736d71e6e4fd100bcacba
```

### `dpkg` source package: `expat=2.1.0-7ubuntu0.16.04.5`

Binary Packages:

- `libexpat1:amd64=2.1.0-7ubuntu0.16.04.5`
- `libexpat1-dev:amd64=2.1.0-7ubuntu0.16.04.5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris expat=2.1.0-7ubuntu0.16.04.5
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.1.0-7ubuntu0.16.04.5.dsc' expat_2.1.0-7ubuntu0.16.04.5.dsc 2387 SHA512:8b3d97e198ef1d6024f39c8797c7cba4ceda7b6483fdeb8a4a27d706209c397669aa969e1e7ca4a3b15de6d894766881914fdcf574af8a3191f5a23b5b8ab9b3
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.1.0.orig.tar.gz' expat_2.1.0.orig.tar.gz 562616 SHA512:2a9ad2b44b87b84087979fe4114d661838df3b03dbdcb74d590cb74096bf35ce9d5a86617b0941a2655ea441a94537bcbcd78252da92342238823be36de2d09d
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.1.0-7ubuntu0.16.04.5.debian.tar.xz' expat_2.1.0-7ubuntu0.16.04.5.debian.tar.xz 23116 SHA512:fd79b62dde2cde33ca7d14c5b5fd99d0ad14d4d63b0332470e5ed103d64f1ed0d39670ac8a313a39193a3f4cf1c3c67b5f24d4db4eb64200b6f8c2f1f9d9daea
```

### `dpkg` source package: `ffmpeg=7:2.8.17-0ubuntu0.1`

Binary Packages:

- `libavcodec-dev:amd64=7:2.8.17-0ubuntu0.1`
- `libavcodec-ffmpeg56:amd64=7:2.8.17-0ubuntu0.1`
- `libavdevice-dev:amd64=7:2.8.17-0ubuntu0.1`
- `libavdevice-ffmpeg56:amd64=7:2.8.17-0ubuntu0.1`
- `libavfilter-dev:amd64=7:2.8.17-0ubuntu0.1`
- `libavfilter-ffmpeg5:amd64=7:2.8.17-0ubuntu0.1`
- `libavformat-dev:amd64=7:2.8.17-0ubuntu0.1`
- `libavformat-ffmpeg56:amd64=7:2.8.17-0ubuntu0.1`
- `libavresample-dev:amd64=7:2.8.17-0ubuntu0.1`
- `libavresample-ffmpeg2:amd64=7:2.8.17-0ubuntu0.1`
- `libavutil-dev:amd64=7:2.8.17-0ubuntu0.1`
- `libavutil-ffmpeg54:amd64=7:2.8.17-0ubuntu0.1`
- `libpostproc-dev:amd64=7:2.8.17-0ubuntu0.1`
- `libpostproc-ffmpeg53:amd64=7:2.8.17-0ubuntu0.1`
- `libswresample-dev:amd64=7:2.8.17-0ubuntu0.1`
- `libswresample-ffmpeg1:amd64=7:2.8.17-0ubuntu0.1`
- `libswscale-dev:amd64=7:2.8.17-0ubuntu0.1`
- `libswscale-ffmpeg3:amd64=7:2.8.17-0ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libavcodec-dev/copyright`, `/usr/share/doc/libavcodec-ffmpeg56/copyright`, `/usr/share/doc/libavdevice-dev/copyright`, `/usr/share/doc/libavdevice-ffmpeg56/copyright`, `/usr/share/doc/libavfilter-dev/copyright`, `/usr/share/doc/libavfilter-ffmpeg5/copyright`, `/usr/share/doc/libavformat-dev/copyright`, `/usr/share/doc/libavformat-ffmpeg56/copyright`, `/usr/share/doc/libavresample-dev/copyright`, `/usr/share/doc/libavresample-ffmpeg2/copyright`, `/usr/share/doc/libavutil-dev/copyright`, `/usr/share/doc/libavutil-ffmpeg54/copyright`, `/usr/share/doc/libpostproc-dev/copyright`, `/usr/share/doc/libpostproc-ffmpeg53/copyright`, `/usr/share/doc/libswresample-dev/copyright`, `/usr/share/doc/libswresample-ffmpeg1/copyright`, `/usr/share/doc/libswscale-dev/copyright`, `/usr/share/doc/libswscale-ffmpeg3/copyright`)

- `BSD-1-Clause`
- `BSD-3-Clause`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Avisynth exception`
- `GPL-3`
- `GPL-3+`
- `IJG`
- `ISC`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `Sundry`
- `Zlib`
- `man-page`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris ffmpeg=7:2.8.17-0ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/ffmpeg/ffmpeg_2.8.17-0ubuntu0.1.dsc' ffmpeg_2.8.17-0ubuntu0.1.dsc 4869 SHA512:01c52eaaf740199e8b16d81eadefe9c95983c26d8bf8cb0e3e70c19bc3f3ce36e68996b89219df8f0a2f890e07d603dd61bba1ed74a04de58773a62da557c82b
'http://archive.ubuntu.com/ubuntu/pool/universe/f/ffmpeg/ffmpeg_2.8.17.orig.tar.xz' ffmpeg_2.8.17.orig.tar.xz 7233412 SHA512:c09cefb51b62c428988fb344643dd60f3b21b4bba84316a59275b38bfa9341014fcfb9350c462e301e71365a23a3799b9cabc2119cff940d77513cf700a6af84
'http://archive.ubuntu.com/ubuntu/pool/universe/f/ffmpeg/ffmpeg_2.8.17-0ubuntu0.1.debian.tar.xz' ffmpeg_2.8.17-0ubuntu0.1.debian.tar.xz 44212 SHA512:ac2d943d7d587a179b95d0f4b7c89759ccab208973527a6ca788b9d8d4eee75ac0689e338094477c788652b940eb2c75f4551e98289b3f2eed6919c6691ba7af
```

### `dpkg` source package: `findutils=4.6.0+git+20160126-2`

Binary Packages:

- `findutils=4.6.0+git+20160126-2`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.6.0+git+20160126-2
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0%2bgit%2b20160126-2.dsc' findutils_4.6.0+git+20160126-2.dsc 2163 SHA256:b4b644696cb66bdf72c59b25efe61800ae20fadfcc8e633cde240e4a956567a7
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0%2bgit%2b20160126.orig.tar.xz' findutils_4.6.0+git+20160126.orig.tar.xz 1710188 SHA256:3d25cef1e0d5e098e323b06f66aea9f02f993a0cf6f13a437d712a8a722cd67e
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0%2bgit%2b20160126-2.debian.tar.xz' findutils_4.6.0+git+20160126-2.debian.tar.xz 25080 SHA256:58bf1e7a07fbac6a68693b099ec6fc9a6166e0b1b60cebe6bac3b90287a8dc3f
```

### `dpkg` source package: `flac=1.3.1-4`

Binary Packages:

- `libflac8:amd64=1.3.1-4`

Licenses: (parsed from: `/usr/share/doc/libflac8/copyright`)

- `BSD-3-clause`
- `GFDL-1.1+`
- `GFDL-1.2`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `Public-domain`

Source:

```console
$ apt-get source -qq --print-uris flac=1.3.1-4
'http://archive.ubuntu.com/ubuntu/pool/main/f/flac/flac_1.3.1-4.dsc' flac_1.3.1-4.dsc 2261 SHA256:271adf092634f74eb21d13f0cd02cee14e8c3415b7a23287821a27bb9b1f88b1
'http://archive.ubuntu.com/ubuntu/pool/main/f/flac/flac_1.3.1.orig.tar.xz' flac_1.3.1.orig.tar.xz 941848 SHA256:4773c0099dba767d963fd92143263be338c48702172e8754b9bc5103efe1c56c
'http://archive.ubuntu.com/ubuntu/pool/main/f/flac/flac_1.3.1-4.debian.tar.xz' flac_1.3.1-4.debian.tar.xz 17604 SHA256:68f5e3954876ef78ca60ea126a9e3b9525c2720e1ccf4a88389341e340094d1f
```

### `dpkg` source package: `flite=2.0.0-release-1`

Binary Packages:

- `libflite1:amd64=2.0.0-release-1`

Licenses: (parsed from: `/usr/share/doc/libflite1/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris flite=2.0.0-release-1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flite/flite_2.0.0-release-1.dsc' flite_2.0.0-release-1.dsc 2243 SHA256:00ffa92806775857ed2cc151f584d212aff7ff4dd9c3342ce74539f00db73731
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flite/flite_2.0.0-release.orig.tar.bz2' flite_2.0.0-release.orig.tar.bz2 14761376 SHA256:678c3860fd539402b5d1699b921239072af6acb4e72dc4720494112807cae411
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flite/flite_2.0.0-release-1.debian.tar.xz' flite_2.0.0-release-1.debian.tar.xz 30220 SHA256:70a9a88aa9d6fd6b0836b22bf5c7ee456e8c5f62a62f8edf60ca557ff10933c5
```

### `dpkg` source package: `fontconfig=2.11.94-0ubuntu1.1`

Binary Packages:

- `fontconfig=2.11.94-0ubuntu1.1`
- `fontconfig-config=2.11.94-0ubuntu1.1`
- `libfontconfig1:amd64=2.11.94-0ubuntu1.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris fontconfig=2.11.94-0ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.11.94-0ubuntu1.1.dsc' fontconfig_2.11.94-0ubuntu1.1.dsc 2287 SHA512:2bdd80817fff2184ecb2169cfa1236f4498ada9c75723598b9f29603f96d395451366c8da164950b79f203abae72d2f425333bd9b401b08d455e8252223ec49f
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.11.94.orig.tar.bz2' fontconfig_2.11.94.orig.tar.bz2 1567540 SHA512:ab0639afbe37c46197aa31178f928a000e0662edf794bcd421e396bae2298edc23851ff58deeb448cc14ac1206683494817a64a75ab9f7bb9bce6321ccf5c1f2
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.11.94-0ubuntu1.1.debian.tar.xz' fontconfig_2.11.94-0ubuntu1.1.debian.tar.xz 27932 SHA512:dd1759cff6acc99a2d3a0698cbf161dfa261ae96492651c4f72fd2749972f8012fdc187dc1a1c8542d767bb07684e766a9bfbbf50353781cd80c8b13df57b136
```

### `dpkg` source package: `fonts-dejavu=2.35-1`

Binary Packages:

- `fonts-dejavu-core=2.35-1`
- `ttf-dejavu-core=2.35-1`

Licenses: (parsed from: `/usr/share/doc/fonts-dejavu-core/copyright`, `/usr/share/doc/ttf-dejavu-core/copyright`)

- `GPL-2`
- `GPL-2+`
- `bitstream-vera`

Source:

```console
$ apt-get source -qq --print-uris fonts-dejavu=2.35-1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.35-1.dsc' fonts-dejavu_2.35-1.dsc 2583 SHA256:b02163fb4033175371a6cb6e39e193d438d910ab907eed5d14b47a3a5e57b392
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.35.orig.tar.bz2' fonts-dejavu_2.35.orig.tar.bz2 11493699 SHA256:646f5f52fbba7c6c82580a22cedb487f31ecf28aa28c71da5c38e04c2989abf5
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.35-1.debian.tar.xz' fonts-dejavu_2.35-1.debian.tar.xz 10276 SHA256:5922af28fff7db4c5845c17623fe882028742f90db658f4183c21648e0cafd3d
```

### `dpkg` source package: `freeglut=2.8.1-2`

Binary Packages:

- `freeglut3:amd64=2.8.1-2`
- `freeglut3-dev:amd64=2.8.1-2`

Licenses: (parsed from: `/usr/share/doc/freeglut3/copyright`, `/usr/share/doc/freeglut3-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT/X11`

Source:

```console
$ apt-get source -qq --print-uris freeglut=2.8.1-2
'http://archive.ubuntu.com/ubuntu/pool/universe/f/freeglut/freeglut_2.8.1-2.dsc' freeglut_2.8.1-2.dsc 2197 SHA256:3247a3126e829a319b3bfb1d74e99ab322cbf81df2b82f0aeef6544cd5f1ee68
'http://archive.ubuntu.com/ubuntu/pool/universe/f/freeglut/freeglut_2.8.1.orig.tar.gz' freeglut_2.8.1.orig.tar.gz 1005343 SHA256:dde46626a62a1cd9cf48a11951cdd592e7067c345cffe193a149dfd47aef999a
'http://archive.ubuntu.com/ubuntu/pool/universe/f/freeglut/freeglut_2.8.1-2.debian.tar.xz' freeglut_2.8.1-2.debian.tar.xz 17596 SHA256:7c43305b9d45829ea7619ba4635f86698054f48f7cae94b2d51dbe566fc67b67
```

### `dpkg` source package: `freeimage=3.17.0+ds1-2ubuntu0.1`

Binary Packages:

- `libfreeimage-dev=3.17.0+ds1-2ubuntu0.1`
- `libfreeimage3:amd64=3.17.0+ds1-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libfreeimage-dev/copyright`, `/usr/share/doc/libfreeimage3/copyright`)

- `FIPL-1.0`
- `GPL-2`
- `GPL-2.0`
- `GPL-3`
- `GPL-3.0`

Source:

```console
$ apt-get source -qq --print-uris freeimage=3.17.0+ds1-2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/freeimage/freeimage_3.17.0%2bds1-2ubuntu0.1.dsc' freeimage_3.17.0+ds1-2ubuntu0.1.dsc 2800 SHA512:2939d7538a3832ae7409864ec39cd6244da845454adf40aec22ca19027b84614ac3e35b8c1179780c693eab469aff37a17aeefaf4dae9697c5f6617b3a20cbf9
'http://archive.ubuntu.com/ubuntu/pool/universe/f/freeimage/freeimage_3.17.0%2bds1.orig.tar.xz' freeimage_3.17.0+ds1.orig.tar.xz 1277296 SHA512:c30b9539c0c913fccc7647b302a6b9de823b4f36e3f66cdb963d718f5e88eef2d955a002859e0a410b015305625695a8ed3a7d77f46d1749df36c6fa24caca7f
'http://archive.ubuntu.com/ubuntu/pool/universe/f/freeimage/freeimage_3.17.0%2bds1-2ubuntu0.1.debian.tar.xz' freeimage_3.17.0+ds1-2ubuntu0.1.debian.tar.xz 23020 SHA512:c0ba1a6ada99ea8630e468753c1fc4eef53a21315675483a52e20210fa2381edf5c2cd18b818ec82035a644494676d78b912f010305137c1515c84d388da4589
```

### `dpkg` source package: `freetype=2.6.1-0.1ubuntu2.5`

Binary Packages:

- `libfreetype6:amd64=2.6.1-0.1ubuntu2.5`

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
$ apt-get source -qq --print-uris freetype=2.6.1-0.1ubuntu2.5
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.6.1-0.1ubuntu2.5.dsc' freetype_2.6.1-0.1ubuntu2.5.dsc 1944 SHA512:46c852f27b64e27ed6861acd493cb8a73e28c2b0fd1e4e2609aec1762b80005f781731de7feec65bb028344f84cd1f77e852acdc8f922edc7158148cc18e0c9c
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.6.1.orig.tar.gz' freetype_2.6.1.orig.tar.gz 2411537 SHA512:526dfe1aa98631f1e4af7d01d00dc93128df426f4df00e41b4a2132914e9218945fbd92e06a4ad7adcd84812752613d0f5c7938c8d69626a802cf01e1dc527ef
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.6.1-0.1ubuntu2.5.diff.gz' freetype_2.6.1-0.1ubuntu2.5.diff.gz 45669 SHA512:b879ae7c77ebf691e42e3905b45e67d40eb9bbf9711b2e1b1204f1c2fd1738e334c30e04a73f847f4c2c4127100282b78d51af5354da0a1673b62744a75cb4ca
```

### `dpkg` source package: `freexl=1.0.2-1ubuntu0.1`

Binary Packages:

- `libfreexl1:amd64=1.0.2-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libfreexl1/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf exception`
- `GPL-2+ with Libtool exception`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MPL-1.1`
- `fsf-unlimited`
- `fsf-unlimited-configure`
- `fsf-unlimited-disclaimer`
- `fsf-unlimited-makefile`
- `install-sh`

Source:

```console
$ apt-get source -qq --print-uris freexl=1.0.2-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/freexl/freexl_1.0.2-1ubuntu0.1.dsc' freexl_1.0.2-1ubuntu0.1.dsc 2196 SHA512:979e7cd20facd0973df14cc4bc82dc6b8e9ce06e92ebd9100f912c09932234101a4158f5c3cc594b15cd4f136b9d20b0ae20e69c9bf10726ff5808337fd35c3f
'http://archive.ubuntu.com/ubuntu/pool/universe/f/freexl/freexl_1.0.2.orig.tar.gz' freexl_1.0.2.orig.tar.gz 939064 SHA512:554ad06905cbac3f88694e798369c1e1c4c64709eb4086b80eb3370dfd3bdc31d1b58441bcbf40b72700f177606ae900f2ab48ead873ac331c82edd718318354
'http://archive.ubuntu.com/ubuntu/pool/universe/f/freexl/freexl_1.0.2-1ubuntu0.1.debian.tar.xz' freexl_1.0.2-1ubuntu0.1.debian.tar.xz 15764 SHA512:50a86c6293fbd3bdfaf9a0199a0eefeeff2677319e796f9057c80a64c48e4ddf26513038bf838ff24233ad516a977d030813cae6bc9c22a40201fc35e5a56b68
```

### `dpkg` source package: `fribidi=0.19.7-1`

Binary Packages:

- `libfribidi0:amd64=0.19.7-1`

Licenses: (parsed from: `/usr/share/doc/libfribidi0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris fribidi=0.19.7-1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_0.19.7-1.dsc' fribidi_0.19.7-1.dsc 1875 SHA256:28787312e2725fa24fc6fd5b7dcdbd77228d9f0767b5bea3f0741cec75c4169b
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_0.19.7.orig.tar.bz2' fribidi_0.19.7.orig.tar.bz2 648299 SHA256:08222a6212bbc2276a2d55c3bf370109ae4a35b689acbc66571ad2a670595a8e
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_0.19.7-1.debian.tar.xz' fribidi_0.19.7-1.debian.tar.xz 7428 SHA256:05bba0f9eae7836c033ffd5674491bdac703ef69640dbd3eb029307d7420462e
```

### `dpkg` source package: `game-music-emu=0.6.0-3ubuntu0.16.04.1`

Binary Packages:

- `libgme0:amd64=0.6.0-3ubuntu0.16.04.1`

Licenses: (parsed from: `/usr/share/doc/libgme0/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris game-music-emu=0.6.0-3ubuntu0.16.04.1
'http://archive.ubuntu.com/ubuntu/pool/universe/g/game-music-emu/game-music-emu_0.6.0-3ubuntu0.16.04.1.dsc' game-music-emu_0.6.0-3ubuntu0.16.04.1.dsc 1979 SHA512:c4f4a1147bb3b3115ffe0f7c74e98af8c1c9aa78cbbdacf91eb3197e2195c40af3bd35f68eea7ab8413b7df77af91284cb5276fa0c807524721ec47b1af2a2c1
'http://archive.ubuntu.com/ubuntu/pool/universe/g/game-music-emu/game-music-emu_0.6.0.orig.tar.bz2' game-music-emu_0.6.0.orig.tar.bz2 170202 SHA512:9bd914cc89279519456a37a71c66cec12f7bea64f286fd118680b83eba76ebe547bb0774ad91230a53d004f5cd1a41ad399ffb94e15dd9fc3460abe6732ab4dd
'http://archive.ubuntu.com/ubuntu/pool/universe/g/game-music-emu/game-music-emu_0.6.0-3ubuntu0.16.04.1.debian.tar.xz' game-music-emu_0.6.0-3ubuntu0.16.04.1.debian.tar.xz 5592 SHA512:94081604ff85c42caa29351963294258e43304145bc926f34db428029b0854968f1587c84fa5f5eb28a63a704e114f354058ec59f4ebd9e3681fe7d530c9a85f
```

### `dpkg` source package: `gazebo9=9.18.0-1~xenial`

Binary Packages:

- `gazebo9=9.18.0-1~xenial`
- `gazebo9-common=9.18.0-1~xenial`
- `gazebo9-plugin-base=9.18.0-1~xenial`
- `libgazebo9:amd64=9.18.0-1~xenial`
- `libgazebo9-dev:amd64=9.18.0-1~xenial`

Licenses: (parsed from: `/usr/share/doc/gazebo9/copyright`, `/usr/share/doc/gazebo9-common/copyright`, `/usr/share/doc/gazebo9-plugin-base/copyright`, `/usr/share/doc/libgazebo9/copyright`, `/usr/share/doc/libgazebo9-dev/copyright`)

- `Apache`
- `Apache-2.0`
- `BSD`
- `BSD-2-clause`
- `BSD-3-clause`
- `BSL (v1.0)`
- `LGPL`
- `LGPL-2.1`
- `LGPL-3`
- `LGPL-3+`
- `ZLIB`

Source:

```console
$ apt-get source -qq --print-uris gazebo9=9.18.0-1~xenial
'http://packages.osrfoundation.org/gazebo/ubuntu-stable/pool/main/g/gazebo9/gazebo9_9.18.0-1%7exenial.dsc' gazebo9_9.18.0-1~xenial.dsc 2146 SHA256:aa7fcd184f09f67dc516899b5f2d865895a21271fb7ff012fe2def8b95066eef
'http://packages.osrfoundation.org/gazebo/ubuntu-stable/pool/main/g/gazebo9/gazebo9_9.18.0.orig.tar.bz2' gazebo9_9.18.0.orig.tar.bz2 55788706 SHA256:6d00de6e6e796285f844515ea9c774e10e2df8f554456d09bd439dfa172a2449
'http://packages.osrfoundation.org/gazebo/ubuntu-stable/pool/main/g/gazebo9/gazebo9_9.18.0-1%7exenial.debian.tar.xz' gazebo9_9.18.0-1~xenial.debian.tar.xz 6956 SHA256:d09c5c378232f6a291eb0499f5f2129b69fe18c0ec53999ace51dcbfe8b0e42d
```

### `dpkg` source package: `gcc-5=5.4.0-6ubuntu1~16.04.12`

Binary Packages:

- `cpp-5=5.4.0-6ubuntu1~16.04.12`
- `gcc-5=5.4.0-6ubuntu1~16.04.12`
- `gcc-5-base:amd64=5.4.0-6ubuntu1~16.04.12`
- `gfortran-5=5.4.0-6ubuntu1~16.04.12`
- `libasan2:amd64=5.4.0-6ubuntu1~16.04.12`
- `libatomic1:amd64=5.4.0-6ubuntu1~16.04.12`
- `libcc1-0:amd64=5.4.0-6ubuntu1~16.04.12`
- `libcilkrts5:amd64=5.4.0-6ubuntu1~16.04.12`
- `libgcc-5-dev:amd64=5.4.0-6ubuntu1~16.04.12`
- `libgfortran-5-dev:amd64=5.4.0-6ubuntu1~16.04.12`
- `libgfortran3:amd64=5.4.0-6ubuntu1~16.04.12`
- `libgomp1:amd64=5.4.0-6ubuntu1~16.04.12`
- `libitm1:amd64=5.4.0-6ubuntu1~16.04.12`
- `liblsan0:amd64=5.4.0-6ubuntu1~16.04.12`
- `libmpx0:amd64=5.4.0-6ubuntu1~16.04.12`
- `libquadmath0:amd64=5.4.0-6ubuntu1~16.04.12`
- `libstdc++-5-dev:amd64=5.4.0-6ubuntu1~16.04.12`
- `libstdc++6:amd64=5.4.0-6ubuntu1~16.04.12`
- `libtsan0:amd64=5.4.0-6ubuntu1~16.04.12`
- `libubsan0:amd64=5.4.0-6ubuntu1~16.04.12`

Licenses: (parsed from: `/usr/share/doc/cpp-5/copyright`, `/usr/share/doc/gcc-5/copyright`, `/usr/share/doc/gcc-5-base/copyright`, `/usr/share/doc/gfortran-5/copyright`, `/usr/share/doc/libasan2/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libcc1-0/copyright`, `/usr/share/doc/libcilkrts5/copyright`, `/usr/share/doc/libgcc-5-dev/copyright`, `/usr/share/doc/libgfortran-5-dev/copyright`, `/usr/share/doc/libgfortran3/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libmpx0/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++-5-dev/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan0/copyright`, `/usr/share/doc/libubsan0/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris gcc-5=5.4.0-6ubuntu1~16.04.12
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-5/gcc-5_5.4.0-6ubuntu1%7e16.04.12.dsc' gcc-5_5.4.0-6ubuntu1~16.04.12.dsc 28298 SHA512:d1f8116726cfad5d406849be8dd47fa6a0c5e40db65e284eaca6cb71e86b03ad854a9f843199d7f46c430fb72a5047f8eb9be27a0f9f656b8a781d6f9eed3a0b
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-5/gcc-5_5.4.0.orig.tar.gz' gcc-5_5.4.0.orig.tar.gz 73530162 SHA512:8ce644f7b67b999036d134443518da4fd4ccc3c838f9015dc18bf15dc8ef006e8a53bb4dd7dd1fcc4a8cfd9bd2b6e5e223e57c0474ea7c5c74f7b26d669bbdef
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-5/gcc-5_5.4.0-6ubuntu1%7e16.04.12.diff.gz' gcc-5_5.4.0-6ubuntu1~16.04.12.diff.gz 1486130 SHA512:bb05d04b8f0f0a3f333754d46bbb28365d8d6f4ea67b57c0c0f0d48fda9ba5f884b3eb1324a3fef259b8ae90497a70b44693aed5491639113502466b191473bf
```

### `dpkg` source package: `gcc-defaults=1.150ubuntu1`

Binary Packages:

- `cpp=4:5.3.1-1ubuntu1`
- `gcc=4:5.3.1-1ubuntu1`
- `gfortran=4:5.3.1-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/cpp/copyright`, `/usr/share/doc/gcc/copyright`, `/usr/share/doc/gfortran/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-defaults=1.150ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.150ubuntu1.dsc' gcc-defaults_1.150ubuntu1.dsc 12634 SHA256:5f538e1bb59109b47d820cdd056993d462f24468c67f6a1a005db389dffa8ee2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.150ubuntu1.tar.gz' gcc-defaults_1.150ubuntu1.tar.gz 73857 SHA256:cadaf435151fb1b901b0351d20a9981fe33d94fbb1ab14bd9960095b673ce6ed
```

### `dpkg` source package: `gccgo-6=6.0.1-0ubuntu1`

Binary Packages:

- `gcc-6-base:amd64=6.0.1-0ubuntu1`
- `libgcc1:amd64=1:6.0.1-0ubuntu1`

Licenses: (parsed from: `/usr/share/doc/gcc-6-base/copyright`, `/usr/share/doc/libgcc1/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris gccgo-6=6.0.1-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gccgo-6/gccgo-6_6.0.1-0ubuntu1.dsc' gccgo-6_6.0.1-0ubuntu1.dsc 11285 SHA256:4c02817baac83492323ebe7800d44de609eca147518682307a3bad2bd5134129
'http://archive.ubuntu.com/ubuntu/pool/main/g/gccgo-6/gccgo-6_6.0.1.orig.tar.gz' gccgo-6_6.0.1.orig.tar.gz 76335555 SHA256:daff7478ce52d00572683547c810bf50652a9057c33e3ce703c9f0baae28f4c3
'http://archive.ubuntu.com/ubuntu/pool/main/g/gccgo-6/gccgo-6_6.0.1-0ubuntu1.diff.gz' gccgo-6_6.0.1-0ubuntu1.diff.gz 633954 SHA256:839eea6c2d23670f09b642864ff61e3097b47391cb508a5997538750ff8678f6
```

### `dpkg` source package: `gdal=1.11.3+dfsg-3build2`

Binary Packages:

- `libgdal-dev=1.11.3+dfsg-3build2`
- `libgdal1i=1.11.3+dfsg-3build2`

Licenses: (parsed from: `/usr/share/doc/libgdal-dev/copyright`, `/usr/share/doc/libgdal1i/copyright`)

- `Artistic`
- `BSD-3-Clause`
- `Base64`
- `GPL-1`
- `GPL-1.0+`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Libtool exception`
- `GPL-3`
- `GPL-3+ with Bison exception`
- `HPND-3i`
- `HPND-disclaimer`
- `HPND-eos`
- `HPND-p-sl-sgi`
- `HPND-sl-gl-sgi`
- `HPND-sl-sgi`
- `IJG`
- `ITT`
- `Info-ZIP`
- `JasPer-2.0`
- `LGPL-2`
- `LGPL-2+`
- `MIT`
- `MIT-short`
- `PostgreSQL`
- `fsf-unlimited-configure`
- `fsf-unlimited-disclaimer`
- `libpng`
- `public-domain`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris gdal=1.11.3+dfsg-3build2
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gdal/gdal_1.11.3%2bdfsg-3build2.dsc' gdal_1.11.3+dfsg-3build2.dsc 3223 SHA256:4eaa6233cbf33878bd19e567140bfc5eb56f5f78b2916f87378f472f0315f894
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gdal/gdal_1.11.3%2bdfsg.orig.tar.gz' gdal_1.11.3+dfsg.orig.tar.gz 10873981 SHA256:25c134006bda699aa76749c2c50f12cd436df8c94e8bdc18787c4dfed2771b61
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gdal/gdal_1.11.3%2bdfsg-3build2.debian.tar.xz' gdal_1.11.3+dfsg-3build2.debian.tar.xz 181180 SHA256:a0fb0f442eae604de54d5650b79c8b4763814b0c9edf1bdc69ada22ab694de28
```

### `dpkg` source package: `gdbm=1.8.3-13.1`

Binary Packages:

- `libgdbm3:amd64=1.8.3-13.1`

Licenses: (parsed from: `/usr/share/doc/libgdbm3/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.8.3-13.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.8.3-13.1.dsc' gdbm_1.8.3-13.1.dsc 1830 SHA256:b1d8bef30edc491315c337930cbe2b61f44f55035adfc26ae945bab5ca57d5c9
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.8.3.orig.tar.bz2' gdbm_1.8.3.orig.tar.bz2 172796 SHA256:1d5995b6e9e6be4ff62c8126d019f184a083dd8e6f75f6c74b9fe023b5b9440e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.8.3-13.1.debian.tar.xz' gdbm_1.8.3-13.1.debian.tar.xz 14748 SHA256:251401e1f5210226f384e936b1b7ea1df40119a918d9f3dbf48b2e51d4df8983
```

### `dpkg` source package: `geos=3.5.0-1ubuntu2`

Binary Packages:

- `libgeos-3.5.0=3.5.0-1ubuntu2`
- `libgeos-c1v5=3.5.0-1ubuntu2`
- `libgeos-dev=3.5.0-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libgeos-3.5.0/copyright`, `/usr/share/doc/libgeos-c1v5/copyright`, `/usr/share/doc/libgeos-dev/copyright`)

- `GPL-2`
- `GPL-2+ with Libtool exception`
- `LGPL-2.1`
- `LGPL-2.1+`
- `public-domain`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris geos=3.5.0-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/universe/g/geos/geos_3.5.0-1ubuntu2.dsc' geos_3.5.0-1ubuntu2.dsc 2426 SHA256:56ac512617b8606bdd6cce04391a2c937fc924ddc68f83b55886220d5c661f79
'http://archive.ubuntu.com/ubuntu/pool/universe/g/geos/geos_3.5.0.orig.tar.bz2' geos_3.5.0.orig.tar.bz2 1949397 SHA256:49982b23bcfa64a53333dab136b82e25354edeb806e5a2e2f5b8aa98b1d0ae02
'http://archive.ubuntu.com/ubuntu/pool/universe/g/geos/geos_3.5.0-1ubuntu2.debian.tar.xz' geos_3.5.0-1ubuntu2.debian.tar.xz 44480 SHA256:f6a683f0b611538e32c19eb91724f2ff692b290540f02ef62b1493519d33e5d3
```

### `dpkg` source package: `giflib=5.1.4-0.3~16.04.1`

Binary Packages:

- `libgif-dev=5.1.4-0.3~16.04.1`
- `libgif7:amd64=5.1.4-0.3~16.04.1`

Licenses: (parsed from: `/usr/share/doc/libgif-dev/copyright`, `/usr/share/doc/libgif7/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris giflib=5.1.4-0.3~16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/giflib/giflib_5.1.4-0.3%7e16.04.1.dsc' giflib_5.1.4-0.3~16.04.1.dsc 2084 SHA512:87fb4698af64f27be392947dcc0954a8a4705ccfac94a333ff2100f38b0134ffb3c2f7560881ddbeddf9f2bc53057ba5b9b0e1cf916b752f064b6e084a15cf44
'http://archive.ubuntu.com/ubuntu/pool/main/g/giflib/giflib_5.1.4.orig.tar.bz2' giflib_5.1.4.orig.tar.bz2 639703 SHA512:32b5e342056c210e6478e9cb3b6ceec9594dcfaf34feea1eb4dad633a081ed4465bceee578c19165907cb47cb83912ac359ceea666a8e07dbbb5420f9928f96d
'http://archive.ubuntu.com/ubuntu/pool/main/g/giflib/giflib_5.1.4-0.3%7e16.04.1.debian.tar.xz' giflib_5.1.4-0.3~16.04.1.debian.tar.xz 13776 SHA512:55451e42c1af0cbaee130068638de6eb91b5e8e48bd09836394517aec9d7fd97933838160754fe4677505fc44eeddc7c5dcda10fa087d886caebec65636a80f8
```

### `dpkg` source package: `glib2.0=2.48.2-0ubuntu4.8`

Binary Packages:

- `libglib2.0-0:amd64=2.48.2-0ubuntu4.8`
- `libglib2.0-bin=2.48.2-0ubuntu4.8`
- `libglib2.0-data=2.48.2-0ubuntu4.8`
- `libglib2.0-dev=2.48.2-0ubuntu4.8`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0/copyright`, `/usr/share/doc/libglib2.0-bin/copyright`, `/usr/share/doc/libglib2.0-data/copyright`, `/usr/share/doc/libglib2.0-dev/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris glib2.0=2.48.2-0ubuntu4.8
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.48.2-0ubuntu4.8.dsc' glib2.0_2.48.2-0ubuntu4.8.dsc 3173 SHA512:1e2c8f195f29a7950170981fb08111a1850d0fa37df6725f18ccaf683cfdd4cb02da88a9f6d95b280d5beacccd096a59a197318059074b911e969679c7842c35
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.48.2.orig.tar.xz' glib2.0_2.48.2.orig.tar.xz 6408644 SHA512:2eac104eb2207d0a6488992e48069a34b417f51e141364f281ab7b0953a6de88be177b1c694dd9464a856c9a5d8021e3cf0193a8d9c5aaf6ea11f1f9ff743c43
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.48.2-0ubuntu4.8.debian.tar.xz' glib2.0_2.48.2-0ubuntu4.8.debian.tar.xz 95588 SHA512:c74afa24a478ee21c4a2325878b925119f116556991d79705b70a6d266ed87d3aeb908554bc6337433a42d44715da8bece89b3f70eb3384074c031739b4c23c5
```

### `dpkg` source package: `glibc=2.23-0ubuntu11.3`

Binary Packages:

- `libc-bin=2.23-0ubuntu11.3`
- `libc-dev-bin=2.23-0ubuntu11.3`
- `libc6:amd64=2.23-0ubuntu11.3`
- `libc6-dev:amd64=2.23-0ubuntu11.3`
- `multiarch-support=2.23-0ubuntu11.3`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`, `/usr/share/doc/multiarch-support/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.23-0ubuntu11.3
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.23-0ubuntu11.3.dsc' glibc_2.23-0ubuntu11.3.dsc 8547 SHA512:73ec4bcd6e9fd35ec2f7b4a0c646e0974ae302915a525cf3ff5a4aa7a21c04104aa201718d1f18ab792518c64cf803b3d46a560347784e3c96432da140719d49
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.23.orig.tar.xz' glibc_2.23.orig.tar.xz 13849968 SHA512:f2c3460d04226cbb5ff54755efb6f337356d9c063d71f736d8e5f631aaa85bfa89c4e2da1cd29f93383310994a18b21327512efd145d4c8dffd6c1412a002191
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.23-0ubuntu11.3.debian.tar.xz' glibc_2.23-0ubuntu11.3.debian.tar.xz 1253716 SHA512:41c5c9dc2ff20a1c0b781d700a94daeda087f3b58cbccc68f36695d6d3ee83c06eed2083bfaf3220ab7ebbbd35c0cca15f63b087ca981a39ed29a71430ba216c
```

### `dpkg` source package: `gmp=2:6.1.0+dfsg-2`

Binary Packages:

- `libgmp10:amd64=2:6.1.0+dfsg-2`

Licenses: (parsed from: `/usr/share/doc/libgmp10/copyright`)

- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris gmp=2:6.1.0+dfsg-2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.0%2bdfsg-2.dsc' gmp_6.1.0+dfsg-2.dsc 2161 SHA256:a790b4fea2792f968014a3ef41ea749dcc6687bcb33aa5bea59400ccd101337e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.0%2bdfsg.orig.tar.xz' gmp_6.1.0+dfsg.orig.tar.xz 1786120 SHA256:78a74cfd933bbdf7e93909a6069e53e8aba8389e9b3880300c926da7a7d55632
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.0%2bdfsg-2.debian.tar.xz' gmp_6.1.0+dfsg-2.debian.tar.xz 20576 SHA256:c933e3cb45cd4101cc0604b5bc0fb96d6067b3614e730dbf26588985720ba581
```

### `dpkg` source package: `gnupg2=2.1.11-6ubuntu2.1`

Binary Packages:

- `dirmngr=2.1.11-6ubuntu2.1`
- `gnupg-agent=2.1.11-6ubuntu2.1`
- `gnupg2=2.1.11-6ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/dirmngr/copyright`, `/usr/share/doc/gnupg-agent/copyright`, `/usr/share/doc/gnupg2/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`
- `RFC-Reference`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris gnupg2=2.1.11-6ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.1.11-6ubuntu2.1.dsc' gnupg2_2.1.11-6ubuntu2.1.dsc 2725 SHA512:95c7b89084a63a0c7b394a8b972d47471a053cff02dcec35a1e60b8385aa8639e107191da9ca63e2374d128edbdc71ea6b6fa439d30bd1309ef538dfa2e04b29
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.1.11.orig.tar.bz2' gnupg2_2.1.11.orig.tar.bz2 5224007 SHA512:b39f3fb461ad879b1909808434c4b03dab4d1d79aa674fbc88e3d50960184c0c25a840206ff32b760672f1b2153253f4d7a88eb726d8662f629fa04b6739ad31
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.1.11-6ubuntu2.1.debian.tar.bz2' gnupg2_2.1.11-6ubuntu2.1.debian.tar.bz2 34752 SHA512:05e12ddfef0609ed06782acf5b346a02fb581109fdd3be83648215a87acb4043680a09df64f2e55c1b869d5f52cfaaf4e7ab5d33010687634ff6e0fbf7c646dd
```

### `dpkg` source package: `gnupg=1.4.20-1ubuntu3.3`

Binary Packages:

- `gnupg=1.4.20-1ubuntu3.3`
- `gpgv=1.4.20-1ubuntu3.3`

Licenses: (parsed from: `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gpgv/copyright`)

- `GPL-3`
- `GPL-3+ with OpenSSL exception`
- `RFC-Reference`

Source:

```console
$ apt-get source -qq --print-uris gnupg=1.4.20-1ubuntu3.3
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg/gnupg_1.4.20-1ubuntu3.3.dsc' gnupg_1.4.20-1ubuntu3.3.dsc 2166 SHA512:e5e296ded101c8ca30f0a9ddc77ada39a858723af939770c68beb04337df05fb1559b2cc13404b9719e45e3b983121a115414aef196fe1b61f09374a340f43dd
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg/gnupg_1.4.20.orig.tar.gz' gnupg_1.4.20.orig.tar.gz 5156447 SHA512:878a704ca5d69dc56f857b4b7af8927a38c19da78a0096451c8ccb23bc1df83d229a3d12546a4af41270b4d5b237d054e9ccb5e694d7d9f2b30b1c31baeb8cc5
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg/gnupg_1.4.20-1ubuntu3.3.debian.tar.xz' gnupg_1.4.20-1ubuntu3.3.debian.tar.xz 42452 SHA512:22bd977c1e092c97c2e9409f4a10e38d9ee45826c036e2cf6eb8f0955a768e850fb4864525352a524a684668e582058abcf2bae8813bdf8358042a38aafc1e6f
```

### `dpkg` source package: `gnutls28=3.4.10-4ubuntu1.8`

Binary Packages:

- `libgnutls30:amd64=3.4.10-4ubuntu1.8`

Licenses: (parsed from: `/usr/share/doc/libgnutls30/copyright`)

- `CC0 license`
- `GFDL-1.3`
- `GPL`
- `GPL-3`
- `GPLv3+`
- `LGPL`
- `LGPL-3`
- `LGPL2.1`
- `The main library is licensed under GNU Lesser`
- `nonstandard, see below`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `graphite2=1.3.10-0ubuntu0.16.04.1`

Binary Packages:

- `libgraphite2-3:amd64=1.3.10-0ubuntu0.16.04.1`

Licenses: (parsed from: `/usr/share/doc/libgraphite2-3/copyright`)

- `Artistic`
- `GPL`
- `GPL-1+`
- `GPL1+ | Artistic`
- `LGPL | other`
- `LGPL-2`
- `LGPL-2+`
- `MPL-1.1 | GPL-2 | LGPL-2.1`
- `other`

Source:

```console
$ apt-get source -qq --print-uris graphite2=1.3.10-0ubuntu0.16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.10-0ubuntu0.16.04.1.dsc' graphite2_1.3.10-0ubuntu0.16.04.1.dsc 2238 SHA512:f7e6ae2e48bab6d1a7121056dae176528a00aeed54ac81f105b4923ff6685548376cad4597e6b3ea5eb33aa47960a454bfb77fb6f3263611c6c157f0ff6e2f39
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.10.orig.tar.gz' graphite2_1.3.10.orig.tar.gz 3889647 SHA512:d6d578feaa2d9304dc9bcd3926958070b8c23b27437a9fcb801e08e62f33a5549b7a6aa9636c7f8eb80a2a2c6d5cac97d58050fb30fd102b9fd0f8c558f4252b
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.10-0ubuntu0.16.04.1.debian.tar.xz' graphite2_1.3.10-0ubuntu0.16.04.1.debian.tar.xz 10016 SHA512:a71bb0302388813a3d9a314fcce57fa4d3b4b41920e3c6dc50de610dca10f6c1e2c274170c027921baa051e6bc6afe6b7438582baa2a77ee1f8c37431d862c2b
```

### `dpkg` source package: `grep=2.25-1~16.04.1`

Binary Packages:

- `grep=2.25-1~16.04.1`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=2.25-1~16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_2.25-1%7e16.04.1.dsc' grep_2.25-1~16.04.1.dsc 1971 SHA512:86ca38fcab2aba322c91093a29a7dd1f3e8a0fef39236c8fda4a01e8af6c1b817600e4f92cb87ac8f0bb97d35300f8fdce48b10a6b4fba5e4c60aee728da0c70
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_2.25.orig.tar.xz' grep_2.25.orig.tar.xz 1327856 SHA512:7a738f938dde350ae71eb87083586e25768ba392113cba973a4e567b476c788ca66e0736d63f5e0e12a7847fa70379dc0b6568ec92431ea4604acd2cbedd66c1
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_2.25-1%7e16.04.1.debian.tar.bz2' grep_2.25-1~16.04.1.debian.tar.bz2 108236 SHA512:adb04fb20d83908d46da9d8e7e58679103d57a33b69eb2c2352db1c1f71c478408f306f95ed5a1b1da479132019456cdf89eccda68a58dc6f404ab494d80ef83
```

### `dpkg` source package: `gts=0.7.6+darcs121130-1.2`

Binary Packages:

- `libgts-0.7-5:amd64=0.7.6+darcs121130-1.2`
- `libgts-dev:amd64=0.7.6+darcs121130-1.2`

Licenses: (parsed from: `/usr/share/doc/libgts-0.7-5/copyright`, `/usr/share/doc/libgts-dev/copyright`)

- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris gts=0.7.6+darcs121130-1.2
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gts/gts_0.7.6%2bdarcs121130-1.2.dsc' gts_0.7.6+darcs121130-1.2.dsc 1910 SHA256:b3211d73719b0fd3a7584b35eeb0473da818aadac024c397931ff26e8119bd7e
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gts/gts_0.7.6%2bdarcs121130.orig.tar.gz' gts_0.7.6+darcs121130.orig.tar.gz 880569 SHA256:c23f72ab74bbf65599f8c0b599d6336fabe1ec2a09c19b70544eeefdc069b73b
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gts/gts_0.7.6%2bdarcs121130-1.2.debian.tar.bz2' gts_0.7.6+darcs121130-1.2.debian.tar.bz2 13349 SHA256:96a4b26b65072146ecb54a03b9c4bc85cae91e56bddb2c65ca7b29a9952b2c59
```

### `dpkg` source package: `gzip=1.6-4ubuntu1`

Binary Packages:

- `gzip=1.6-4ubuntu1`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.6-4ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6-4ubuntu1.dsc' gzip_1.6-4ubuntu1.dsc 1907 SHA256:77c1d15c52947d50656365597802c586249d26a4f56c8075f5d94b4634d11465
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6.orig.tar.gz' gzip_1.6.orig.tar.gz 1074924 SHA256:97eb83b763d9e5ad35f351fe5517e6b71521d7aac7acf3e3cacdb6b1496d8f7e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6-4ubuntu1.debian.tar.xz' gzip_1.6-4ubuntu1.debian.tar.xz 14932 SHA256:9a3e558c87a78bf65f9b9c48d718b3ef0bb69e0cf07617f44e37f41ba5f7b006
```

### `dpkg` source package: `harfbuzz=1.0.1-1ubuntu0.1`

Binary Packages:

- `libharfbuzz0b:amd64=1.0.1-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libharfbuzz0b/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris harfbuzz=1.0.1-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_1.0.1-1ubuntu0.1.dsc' harfbuzz_1.0.1-1ubuntu0.1.dsc 2820 SHA512:6b48ffb72239a8c45812768a5fe4d9abd073b74633033345f382faed284e0ad81d2cda6a0cdb532ac41f6d508a420dbc56487bd0728b09fb4539ee15d63571cc
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_1.0.1.orig.tar.bz2' harfbuzz_1.0.1.orig.tar.bz2 1211877 SHA512:6de8d38c64772687701789d38001327a20c225e08d77bd4bb919c61613172e9cb57dd6f4dd5cedcaaad6db8228d91546d8a395dcc21033107496d0a37ded0291
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_1.0.1-1ubuntu0.1.debian.tar.xz' harfbuzz_1.0.1-1ubuntu0.1.debian.tar.xz 8952 SHA512:2fdaf41953d830f7bfc25e15f0f5e2126f54d8e1e9b88176085ab7d366eb8d556c4ac9f68370f1bcf5cb4d8aecababb85f9e13b1683926bd05e1e66405d93c7d
```

### `dpkg` source package: `hdf5=1.8.16+docs-4ubuntu1.1`

Binary Packages:

- `hdf5-helpers=1.8.16+docs-4ubuntu1.1`
- `libhdf5-10:amd64=1.8.16+docs-4ubuntu1.1`
- `libhdf5-cpp-11:amd64=1.8.16+docs-4ubuntu1.1`
- `libhdf5-dev=1.8.16+docs-4ubuntu1.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris hdf5=1.8.16+docs-4ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/universe/h/hdf5/hdf5_1.8.16%2bdocs-4ubuntu1.1.dsc' hdf5_1.8.16+docs-4ubuntu1.1.dsc 3203 SHA512:1226a20e4dbe174493cf9dc79b305e640816753aa77d72911d2f3014432972c2c2d8ae1269951e050353574a33315f5d5bca7a3148728a107e5c8d359966beaf
'http://archive.ubuntu.com/ubuntu/pool/universe/h/hdf5/hdf5_1.8.16%2bdocs.orig.tar.gz' hdf5_1.8.16+docs.orig.tar.gz 32359721 SHA512:bffd0247f23ce60b1470f48a9930f70decec94cc9d37c29526c635fb4885b557a58d05cad05069e467df3d4c0f7109ec677c269ce1b3e32762017c55b5cd9cd1
'http://archive.ubuntu.com/ubuntu/pool/universe/h/hdf5/hdf5_1.8.16%2bdocs-4ubuntu1.1.debian.tar.xz' hdf5_1.8.16+docs-4ubuntu1.1.debian.tar.xz 109384 SHA512:204f9854dfbd27677d0eec80ffcbc8ce4c29dc6578126ba3d158644f79658ddf1297b46915777938ab2542445322a8632d4e6f1623f2ea3f334183bef5a7a74e
```

### `dpkg` source package: `heimdal=1.7~git20150920+dfsg-4ubuntu1.16.04.1`

Binary Packages:

- `libasn1-8-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`
- `libgssapi3-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`
- `libhcrypto4-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`
- `libheimbase1-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`
- `libheimntlm0-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`
- `libhx509-5-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`
- `libkrb5-26-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`
- `libroken18-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`
- `libwind0-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris heimdal=1.7~git20150920+dfsg-4ubuntu1.16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/heimdal_1.7%7egit20150920%2bdfsg-4ubuntu1.16.04.1.dsc' heimdal_1.7~git20150920+dfsg-4ubuntu1.16.04.1.dsc 3766 SHA512:25d7c4546f575b9e94f80b79cc4cbe0f24960289ddc704017986557a9cd4675c2871228d54142a3fb0b2db98b728271b9271fe7df37160754252b988a848b72b
'http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/heimdal_1.7%7egit20150920%2bdfsg.orig.tar.gz' heimdal_1.7~git20150920+dfsg.orig.tar.gz 8979556 SHA512:a2d76adf60df36c5758f0090425a2ac421d2ae972adbf25c900490310bf283a9283c5055891167487f9f1a0813c3b033b31d28adcce497119e4e437be8a39837
'http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/heimdal_1.7%7egit20150920%2bdfsg-4ubuntu1.16.04.1.debian.tar.xz' heimdal_1.7~git20150920+dfsg-4ubuntu1.16.04.1.debian.tar.xz 65512 SHA512:faa8cb96a99eb3f5f9bf20935eea298adb1d2087a0e6eecf6db6efd13f82705b18f2741342e3fc7dad68428798339eb8dbeecaafb2e0766f9f728656775a7d1f
```

### `dpkg` source package: `hostname=3.16ubuntu2`

Binary Packages:

- `hostname=3.16ubuntu2`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.16ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.16ubuntu2.dsc' hostname_3.16ubuntu2.dsc 1573 SHA256:dcffca698d9f428a83b744d638ef2069252395d9b5d1a3098578f01b0cb347a5
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.16ubuntu2.tar.gz' hostname_3.16ubuntu2.tar.gz 14378 SHA256:e0a38fa03b66abd428e119e5af2cccb78a0462cdb58e2e540e66d964e2719195
```

### `dpkg` source package: `hwloc=1.11.2-3`

Binary Packages:

- `libhwloc-dev:amd64=1.11.2-3`
- `libhwloc5:amd64=1.11.2-3`

Licenses: (parsed from: `/usr/share/doc/libhwloc-dev/copyright`, `/usr/share/doc/libhwloc5/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris hwloc=1.11.2-3
'http://archive.ubuntu.com/ubuntu/pool/universe/h/hwloc/hwloc_1.11.2-3.dsc' hwloc_1.11.2-3.dsc 2542 SHA256:0cfb84c46465ef78d9167826c8d2f17525eda14d8580649e3bcca3b9ec2fecc2
'http://archive.ubuntu.com/ubuntu/pool/universe/h/hwloc/hwloc_1.11.2.orig.tar.bz2' hwloc_1.11.2.orig.tar.bz2 4019136 SHA256:8c029b6b1638245837707bfa6c865f448af4e49e7d352335e019d818b51fecf8
'http://archive.ubuntu.com/ubuntu/pool/universe/h/hwloc/hwloc_1.11.2-3.debian.tar.bz2' hwloc_1.11.2-3.debian.tar.bz2 10090 SHA256:11df92b1a4cb818586c2caa3d5f67e7c7693e5f551cd52e729356666c1ba06e7
```

### `dpkg` source package: `icu=55.1-7ubuntu0.5`

Binary Packages:

- `icu-devtools=55.1-7ubuntu0.5`
- `libicu-dev:amd64=55.1-7ubuntu0.5`
- `libicu55:amd64=55.1-7ubuntu0.5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris icu=55.1-7ubuntu0.5
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_55.1-7ubuntu0.5.dsc' icu_55.1-7ubuntu0.5.dsc 2162 SHA512:1a430be8449c2dab85aa46b3d3469b5d540245c2a7ccd75735a800ad8637cf18625189003494fdc91653eaaf008748863d798d84cd172b543336a012d1ee613e
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_55.1.orig.tar.gz' icu_55.1.orig.tar.gz 25600847 SHA512:21a3eb2c3678cd27b659eed073f8f1bd99c9751291d077820e9a370fd90b7d9b3bf414cc03dec4acb7fa61087e02d04f9f40e91a32c5180c718e2102fbd0cd35
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_55.1-7ubuntu0.5.debian.tar.xz' icu_55.1-7ubuntu0.5.debian.tar.xz 32320 SHA512:dc361dcbc2277e371d446508730ecfdd233469a9019fb01c0e474969815d61bf427f3b14b73fe69a0d764875ee533f6dbabce4cb2551b5d0c9b1f8cdd7487512
```

### `dpkg` source package: `ignition-cmake=0.6.1-1~xenial`

Binary Packages:

- `libignition-cmake-dev:amd64=0.6.1-1~xenial`

Licenses: (parsed from: `/usr/share/doc/libignition-cmake-dev/copyright`)

- `Apache`
- `Apache-2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ignition-common=1.1.1-1~xenial`

Binary Packages:

- `libignition-common:amd64=1.1.1-1~xenial`
- `libignition-common-dev:amd64=1.1.1-1~xenial`

Licenses: (parsed from: `/usr/share/doc/libignition-common/copyright`, `/usr/share/doc/libignition-common-dev/copyright`)

- `Apache`
- `Apache-2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ignition-fuel-tools1=1.2.0-1~xenial`

Binary Packages:

- `libignition-fuel-tools-dev=1.2.0-1~xenial`
- `libignition-fuel-tools1-1:amd64=1.2.0-1~xenial`
- `libignition-fuel-tools1-dev:amd64=1.2.0-1~xenial`

Licenses: (parsed from: `/usr/share/doc/libignition-fuel-tools-dev/copyright`, `/usr/share/doc/libignition-fuel-tools1-1/copyright`, `/usr/share/doc/libignition-fuel-tools1-dev/copyright`)

- `Apache`
- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris ignition-fuel-tools1=1.2.0-1~xenial
'http://packages.osrfoundation.org/gazebo/ubuntu-stable/pool/main/i/ignition-fuel-tools1/ignition-fuel-tools1_1.2.0-1%7exenial.dsc' ignition-fuel-tools1_1.2.0-1~xenial.dsc 1222 SHA256:0ffe4c0cee1d8caa8f8d78356ca5a06bd49bf727bf0e32abd18b7c9062393763
'http://packages.osrfoundation.org/gazebo/ubuntu-stable/pool/main/i/ignition-fuel-tools1/ignition-fuel-tools1_1.2.0-1%7exenial.tar.xz' ignition-fuel-tools1_1.2.0-1~xenial.tar.xz 283532 SHA256:c606b0f5126c00857d89a7315f8f1ba72176f89956be2311066a2e46da77fef0
```

### `dpkg` source package: `ignition-math4=4.0.0-1~xenial`

Binary Packages:

- `libignition-math4:amd64=4.0.0-1~xenial`
- `libignition-math4-dev:amd64=4.0.0-1~xenial`

Licenses: (parsed from: `/usr/share/doc/libignition-math4/copyright`, `/usr/share/doc/libignition-math4-dev/copyright`)

- `Apache`
- `Apache-2.0`
- `BSD-3-clause`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ignition-msgs=1.0.0-2~xenial`

Binary Packages:

- `libignition-msgs:amd64=1.0.0-2~xenial`
- `libignition-msgs-dev:amd64=1.0.0-2~xenial`

Licenses: (parsed from: `/usr/share/doc/libignition-msgs/copyright`, `/usr/share/doc/libignition-msgs-dev/copyright`)

- `Apache`
- `Apache-2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ignition-transport4=4.0.0-2~xenial`

Binary Packages:

- `libignition-transport4:amd64=4.0.0-2~xenial`
- `libignition-transport4-dev:amd64=4.0.0-2~xenial`

Licenses: (parsed from: `/usr/share/doc/libignition-transport4/copyright`, `/usr/share/doc/libignition-transport4-dev/copyright`)

- `Apache`
- `Apache-2.0`
- `BSD-3-clause`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ilmbase=2.2.0-11ubuntu2`

Binary Packages:

- `libilmbase12:amd64=2.2.0-11ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libilmbase12/copyright`)

- `boost`
- `ilmbase`

Source:

```console
$ apt-get source -qq --print-uris ilmbase=2.2.0-11ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/i/ilmbase/ilmbase_2.2.0-11ubuntu2.dsc' ilmbase_2.2.0-11ubuntu2.dsc 2099 SHA256:894cddbe71ecaa8be9d1a348962270882dbe6c339f65e6b702db2fa07d4c9c2d
'http://archive.ubuntu.com/ubuntu/pool/main/i/ilmbase/ilmbase_2.2.0.orig.tar.gz' ilmbase_2.2.0.orig.tar.gz 525289 SHA256:ecf815b60695555c1fbc73679e84c7c9902f4e8faa6e8000d2f905b8b86cedc7
'http://archive.ubuntu.com/ubuntu/pool/main/i/ilmbase/ilmbase_2.2.0-11ubuntu2.debian.tar.xz' ilmbase_2.2.0-11ubuntu2.debian.tar.xz 13400 SHA256:400b77a32f7a04d78ff0462f32dc1e4073f5e1225ed070c63fa6a0ec619905c5
```

### `dpkg` source package: `init-system-helpers=1.29ubuntu4`

Binary Packages:

- `init=1.29ubuntu4`
- `init-system-helpers=1.29ubuntu4`

Licenses: (parsed from: `/usr/share/doc/init/copyright`, `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.29ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.29ubuntu4.dsc' init-system-helpers_1.29ubuntu4.dsc 2047 SHA512:cdd02bb1deb55b73ded4d622e73b2f2b7e864d43f6e166d856e403d74d37b0aee3b58807ef18f170cf941991d800eeb179b8a7b47f9ed848cc6eacb1c3f3aea8
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.29ubuntu4.tar.xz' init-system-helpers_1.29ubuntu4.tar.xz 58648 SHA512:7749796e6a77d58ea3439832663ac06b9d11cc2c51ac7dabf8a5ad3c6038a90febcfc64469ec80a4501394bb122d3ba3656c427cdb7395e3794b42094c900008
```

### `dpkg` source package: `insserv=1.14.0-5ubuntu3`

Binary Packages:

- `insserv=1.14.0-5ubuntu3`

Licenses: (parsed from: `/usr/share/doc/insserv/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris insserv=1.14.0-5ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/i/insserv/insserv_1.14.0-5ubuntu3.dsc' insserv_1.14.0-5ubuntu3.dsc 2033 SHA256:30a8e6edc9c105803dfc98d733ba0ed8f0aaf81c4aa4f5ba132241b9a1fcb3a2
'http://archive.ubuntu.com/ubuntu/pool/main/i/insserv/insserv_1.14.0.orig.tar.gz' insserv_1.14.0.orig.tar.gz 53851 SHA256:da74dcf5225a00aa8aef4d5afc6a20e009b2ed9af328dabd55fef1cb3a32140e
'http://archive.ubuntu.com/ubuntu/pool/main/i/insserv/insserv_1.14.0-5ubuntu3.debian.tar.xz' insserv_1.14.0-5ubuntu3.debian.tar.xz 48124 SHA256:a4d0d0703fa398819ab7b4cad573f334feee80aac5520202457519e737b4648a
```

### `dpkg` source package: `isl=0.16.1-1`

Binary Packages:

- `libisl15:amd64=0.16.1-1`

Licenses: (parsed from: `/usr/share/doc/libisl15/copyright`)

- `BSD-2-clause`
- `LGPL-2`
- `LGPL-2.1+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris isl=0.16.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.16.1-1.dsc' isl_0.16.1-1.dsc 1857 SHA256:d6428f2a18db18cdfbff3be72b33dbc4b1838d5efea97ae5715c24115250be91
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.16.1.orig.tar.gz' isl_0.16.1.orig.tar.gz 1889136 SHA256:fb34703bd694622aef92164bad983c15ec04274edbe19e614d9ecda54b85603d
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.16.1-1.debian.tar.xz' isl_0.16.1-1.debian.tar.xz 21152 SHA256:d1ee2fd3a5b7289ba7f66fe443f57f5b6f4297a3a9164d840fafc9c37d3ec632
```

### `dpkg` source package: `jackd2=1.9.10+20150825git1ed50c92~dfsg-1ubuntu1`

Binary Packages:

- `libjack-jackd2-0:amd64=1.9.10+20150825git1ed50c92~dfsg-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libjack-jackd2-0/copyright`)

- `BSD-3-clause`
- `Expat`
- `Expat~modrequest`
- `GPL-2`
- `GPL-2+`
- `GPL-2~either`
- `GPL-2~jack-audio-connection-kit`
- `GPL-2~jackd2`
- `GPL-2~or`
- `GPL-3`
- `GPL-3+`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `None`
- `public-domain~Kroon`

Source:

```console
$ apt-get source -qq --print-uris jackd2=1.9.10+20150825git1ed50c92~dfsg-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/j/jackd2/jackd2_1.9.10%2b20150825git1ed50c92%7edfsg-1ubuntu1.dsc' jackd2_1.9.10+20150825git1ed50c92~dfsg-1ubuntu1.dsc 2757 SHA256:cd1ec18ef1122f57e1a4b1c009d3256c27879f697332e19976de4f97f2772169
'http://archive.ubuntu.com/ubuntu/pool/main/j/jackd2/jackd2_1.9.10%2b20150825git1ed50c92%7edfsg.orig.tar.gz' jackd2_1.9.10+20150825git1ed50c92~dfsg.orig.tar.gz 1323432 SHA256:7127ecc608775de8f47ea4f88f1ad75b17eb660745236e2cad3e14d8b98fe791
'http://archive.ubuntu.com/ubuntu/pool/main/j/jackd2/jackd2_1.9.10%2b20150825git1ed50c92%7edfsg-1ubuntu1.debian.tar.xz' jackd2_1.9.10+20150825git1ed50c92~dfsg-1ubuntu1.debian.tar.xz 39608 SHA256:fa6cbe2bdd3ab174134e283c25bd4d8d094bb4952df6640cd38ab133205059c3
```

### `dpkg` source package: `jasper=1.900.1-debian1-2.4ubuntu1.3`

Binary Packages:

- `libjasper-dev=1.900.1-debian1-2.4ubuntu1.3`
- `libjasper1:amd64=1.900.1-debian1-2.4ubuntu1.3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `jbigkit=2.1-3.1`

Binary Packages:

- `libjbig0:amd64=2.1-3.1`

Licenses: (parsed from: `/usr/share/doc/libjbig0/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris jbigkit=2.1-3.1
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1-3.1.dsc' jbigkit_2.1-3.1.dsc 1299 SHA256:62c8812d508958c5d35f2b1579dc3052fb5bd8d2e77d023fad064c4b48c8c3f8
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1.orig.tar.gz' jbigkit_2.1.orig.tar.gz 438710 SHA256:de7106b6bfaf495d6865c7dd7ac6ca1381bd12e0d81405ea81e7f2167263d932
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1-3.1.debian.tar.xz' jbigkit_2.1-3.1.debian.tar.xz 7600 SHA256:ebc3c52deaf37d52baea54d648a713640dc262926abda7bf05cd08e7db5dd1ee
```

### `dpkg` source package: `jxrlib=1.1-6`

Binary Packages:

- `libjxr0:amd64=1.1-6`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris jxrlib=1.1-6
'http://archive.ubuntu.com/ubuntu/pool/universe/j/jxrlib/jxrlib_1.1-6.dsc' jxrlib_1.1-6.dsc 2011 SHA256:9fbe751051bef047796f27263cb72eac9de434f0660c55d0312040df267b463a
'http://archive.ubuntu.com/ubuntu/pool/universe/j/jxrlib/jxrlib_1.1.orig.tar.gz' jxrlib_1.1.orig.tar.gz 287517 SHA256:c7287b86780befa0914f2eeb8be2ac83e672ebd4bd16dc5574a36a59d9708303
'http://archive.ubuntu.com/ubuntu/pool/universe/j/jxrlib/jxrlib_1.1-6.debian.tar.xz' jxrlib_1.1-6.debian.tar.xz 24184 SHA256:b8263001fbe8c871dbe3557926f29dfb25aa13dd578a9b4584fe21011a526d58
```

### `dpkg` source package: `keyutils=1.5.9-8ubuntu1`

Binary Packages:

- `libkeyutils1:amd64=1.5.9-8ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.5.9-8ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9-8ubuntu1.dsc' keyutils_1.5.9-8ubuntu1.dsc 1548 SHA256:dd06e9b6a773ed745cd74dbce13d585469aa508f2afbc6fa51a58939b295ce07
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9.orig.tar.bz2' keyutils_1.5.9.orig.tar.bz2 74683 SHA256:4da2c5552c688b65ab14d4fd40fbdf720c8b396d8ece643e040cf6e707e083ae
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9-8ubuntu1.debian.tar.xz' keyutils_1.5.9-8ubuntu1.debian.tar.xz 16716 SHA256:36f69846dfeb1e7abdd39dace57a43f9637e426cf4c5252dd9990af36488249b
```

### `dpkg` source package: `kmod=22-1ubuntu5.2`

Binary Packages:

- `libkmod2:amd64=22-1ubuntu5.2`

Licenses: (parsed from: `/usr/share/doc/libkmod2/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris kmod=22-1ubuntu5.2
'http://archive.ubuntu.com/ubuntu/pool/main/k/kmod/kmod_22-1ubuntu5.2.dsc' kmod_22-1ubuntu5.2.dsc 2165 SHA512:b8558b3e1968d95e0d2a084ecfc32d3d7b5988d75a794d5f528d63951bd6194f2bf8386c3d22664ad4422099315d79f1958d612a696a31b65f1f8da2b26252a4
'http://archive.ubuntu.com/ubuntu/pool/main/k/kmod/kmod_22.orig.tar.xz' kmod_22.orig.tar.xz 160576 SHA512:f34bcc05325b27c739d898e3c42ff02c3ac754fccab823f1e2d11ef9f9112871f4ace1d65a1c6e02af5097aa91b0fc794c7e916cdb6de169a527309db813ec42
'http://archive.ubuntu.com/ubuntu/pool/main/k/kmod/kmod_22-1ubuntu5.2.debian.tar.xz' kmod_22-1ubuntu5.2.debian.tar.xz 14524 SHA512:184d70264a6cf50b8df6e8bf19950c295c8c404633c2a782f75188e1c9fec639e6c673f594995f398e85c82613ffb4565131b62b7b8062dbae3de079c8778565
```

### `dpkg` source package: `krb5=1.13.2+dfsg-5ubuntu2.2`

Binary Packages:

- `krb5-multidev=1.13.2+dfsg-5ubuntu2.2`
- `libgssapi-krb5-2:amd64=1.13.2+dfsg-5ubuntu2.2`
- `libgssrpc4:amd64=1.13.2+dfsg-5ubuntu2.2`
- `libk5crypto3:amd64=1.13.2+dfsg-5ubuntu2.2`
- `libkadm5clnt-mit9:amd64=1.13.2+dfsg-5ubuntu2.2`
- `libkadm5srv-mit9:amd64=1.13.2+dfsg-5ubuntu2.2`
- `libkdb5-8:amd64=1.13.2+dfsg-5ubuntu2.2`
- `libkrb5-3:amd64=1.13.2+dfsg-5ubuntu2.2`
- `libkrb5support0:amd64=1.13.2+dfsg-5ubuntu2.2`

Licenses: (parsed from: `/usr/share/doc/krb5-multidev/copyright`, `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libgssrpc4/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkadm5clnt-mit9/copyright`, `/usr/share/doc/libkadm5srv-mit9/copyright`, `/usr/share/doc/libkdb5-8/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.13.2+dfsg-5ubuntu2.2
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.13.2%2bdfsg-5ubuntu2.2.dsc' krb5_1.13.2+dfsg-5ubuntu2.2.dsc 3520 SHA512:0ba1ff8222d7d715f400468fafc6b2c1dc63fa45c0f0c0e0e513c94cce42249e5ff9f9cd16303145c084a34db13794bcd0b3f1c50acac41ca6ed8c6cfe17c58b
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.13.2%2bdfsg.orig.tar.gz' krb5_1.13.2+dfsg.orig.tar.gz 11884064 SHA512:d9562deaee7144c786c279e6e3415fe248fa1a71db8868ff05d1d7ef651274146d9e2c96f37c045fefd43364662ec41714bdd2d59a5ff16634ad7a510d4b3eab
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.13.2%2bdfsg-5ubuntu2.2.debian.tar.xz' krb5_1.13.2+dfsg-5ubuntu2.2.debian.tar.xz 114232 SHA512:c944b16fdb0d730da220a8a5836cb283d5c3912598f99698bb0a9a493d3d38a76ec626ac1f07df2346eefac30cf2be49bea6c4fcaccdef209866a5287ec1017f
```

### `dpkg` source package: `lame=3.99.5+repack1-9build1`

Binary Packages:

- `libmp3lame0:amd64=3.99.5+repack1-9build1`

Licenses: (parsed from: `/usr/share/doc/libmp3lame0/copyright`)

- `BSD-3-clause`
- `GPL-1`
- `GPL-1+`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `zlib/libpng`

Source:

```console
$ apt-get source -qq --print-uris lame=3.99.5+repack1-9build1
'http://archive.ubuntu.com/ubuntu/pool/universe/l/lame/lame_3.99.5%2brepack1-9build1.dsc' lame_3.99.5+repack1-9build1.dsc 2298 SHA256:dba1adcbb3e8566da670e47ca491c4b353374f21fb2bbeb856be79ac14e16c59
'http://archive.ubuntu.com/ubuntu/pool/universe/l/lame/lame_3.99.5%2brepack1.orig.tar.gz' lame_3.99.5+repack1.orig.tar.gz 1464016 SHA256:01c1a34dc5ced11a487f04514cb948d38f6f559daebc85ae23c1c8a6c8280c95
'http://archive.ubuntu.com/ubuntu/pool/universe/l/lame/lame_3.99.5%2brepack1-9build1.debian.tar.xz' lame_3.99.5+repack1-9build1.debian.tar.xz 15520 SHA256:026f152ff188b9e7a5f4bb426c82a0cb8aff8f2503a870e16bcd6286df687934
```

### `dpkg` source package: `lapack=3.6.0-2ubuntu2`

Binary Packages:

- `libblas-common=3.6.0-2ubuntu2`
- `libblas-dev=3.6.0-2ubuntu2`
- `libblas3=3.6.0-2ubuntu2`
- `liblapack-dev=3.6.0-2ubuntu2`
- `liblapack3=3.6.0-2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libblas-common/copyright`, `/usr/share/doc/libblas-dev/copyright`, `/usr/share/doc/libblas3/copyright`, `/usr/share/doc/liblapack-dev/copyright`, `/usr/share/doc/liblapack3/copyright`)

- `BSD-3-clause`
- `BSD-3-clause-intel`

Source:

```console
$ apt-get source -qq --print-uris lapack=3.6.0-2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/lapack_3.6.0-2ubuntu2.dsc' lapack_3.6.0-2ubuntu2.dsc 2873 SHA256:a2ef88a09b242d0527748a8bff88ed432dab1dc5b200e918c4ac7ca30af691a2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/lapack_3.6.0.orig.tar.gz' lapack_3.6.0.orig.tar.gz 6792324 SHA256:a9a0082c918fe14e377bbd570057616768dca76cbdc713457d8199aaa233ffc3
'http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/lapack_3.6.0-2ubuntu2.debian.tar.xz' lapack_3.6.0-2ubuntu2.debian.tar.xz 24556 SHA256:a713e29f24fca14d59937595a54f03cf0479416188c5911d5220f61299f31c47
```

### `dpkg` source package: `lcms2=2.6-3ubuntu2.1`

Binary Packages:

- `liblcms2-2:amd64=2.6-3ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/liblcms2-2/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris lcms2=2.6-3ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.6-3ubuntu2.1.dsc' lcms2_2.6-3ubuntu2.1.dsc 2203 SHA512:65270fa47ba3d161b08c46322a58c037795c8e28c46a9dbe48b5538467b448c03d471bab2f0eec85536d4bc144f738dc62755d24a47fa63af3e55e200d270ad8
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.6.orig.tar.gz' lcms2_2.6.orig.tar.gz 4583389 SHA512:af2dd8829a5d8b280688bc247812829c885368951d385a23a1596cf8d0a7aed627c8faa35740073efc51a86ef5c900fc9bdb9dcdfad885fb8b1eae16953f9041
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.6-3ubuntu2.1.debian.tar.xz' lcms2_2.6-3ubuntu2.1.debian.tar.xz 2417988 SHA512:0db9b3affde90b49ea756e7e2b3616db2303fe8941ecfcc59ac199d88435e4a41a7f0c3650f980da5024a265ced7f61e187351003bd620eb6f3559b765dfa45b
```

### `dpkg` source package: `libaec=0.3.2-1`

Binary Packages:

- `libaec-dev:amd64=0.3.2-1`
- `libaec0:amd64=0.3.2-1`
- `libsz2:amd64=0.3.2-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libaec=0.3.2-1
'http://archive.ubuntu.com/ubuntu/pool/universe/liba/libaec/libaec_0.3.2-1.dsc' libaec_0.3.2-1.dsc 1975 SHA256:68d91939df2e635675029d5522888e824b8aa37e45ecf50b70a9bfca64193295
'http://archive.ubuntu.com/ubuntu/pool/universe/liba/libaec/libaec_0.3.2.orig.tar.gz' libaec_0.3.2.orig.tar.gz 352861 SHA256:9734713c5be1e534939db61f842f4ea01ab8b01f35539429c9dad6b202955421
'http://archive.ubuntu.com/ubuntu/pool/universe/liba/libaec/libaec_0.3.2-1.debian.tar.xz' libaec_0.3.2-1.debian.tar.xz 2011216 SHA256:0f24149ffb1a302437e59d5d335ea3eaac33d1d0f90fadde383cd97954b2d98e
```

### `dpkg` source package: `libarchive=3.1.2-11ubuntu0.16.04.8`

Binary Packages:

- `libarchive13:amd64=3.1.2-11ubuntu0.16.04.8`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libarchive=3.1.2-11ubuntu0.16.04.8
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libarchive/libarchive_3.1.2-11ubuntu0.16.04.8.dsc' libarchive_3.1.2-11ubuntu0.16.04.8.dsc 2422 SHA512:637cc4fb7325fd64edd0283b7808f9acd2244d79d9eda016d01d6a49d4e7d658a0ca0ce44c3c1b294c80a7c0deba242708ef6a03dfe7039d03f2754b19fe6e4b
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libarchive/libarchive_3.1.2.orig.tar.gz' libarchive_3.1.2.orig.tar.gz 4527540 SHA512:1f3c2a675031f93c7d42ae2ed06742b0b1e2236ff57d9117791d62fb8ae77d6cafffbcb5d45b5bd98daa908bd18c576cf82e01a9b1eba699705e23eff3688114
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libarchive/libarchive_3.1.2-11ubuntu0.16.04.8.debian.tar.xz' libarchive_3.1.2-11ubuntu0.16.04.8.debian.tar.xz 46116 SHA512:a4ffa14241d3d9279a4e45ab6518332004940e1e2d7d5af5e2aef5a7507711f1ebb25e1b8cc40bc219e68efbf51e5da0f717dd2861101b0636886e0557226501
```

### `dpkg` source package: `libass=0.13.1-1`

Binary Packages:

- `libass5:amd64=0.13.1-1`

Licenses: (parsed from: `/usr/share/doc/libass5/copyright`)

- `GPL-2`
- `GPL-2+`
- `ISC`
- `other-1`

Source:

```console
$ apt-get source -qq --print-uris libass=0.13.1-1
'http://archive.ubuntu.com/ubuntu/pool/universe/liba/libass/libass_0.13.1-1.dsc' libass_0.13.1-1.dsc 2120 SHA256:7dc13d4871aad1102a50755ae990d201f260d7a28dcc96cef12ee182ff4a2a81
'http://archive.ubuntu.com/ubuntu/pool/universe/liba/libass/libass_0.13.1.orig.tar.xz' libass_0.13.1.orig.tar.xz 318840 SHA256:4aa36b1876a61cab46fc9284fee84224b9e2840fe7b3e63d96a8d32574343fe7
'http://archive.ubuntu.com/ubuntu/pool/universe/liba/libass/libass_0.13.1-1.debian.tar.xz' libass_0.13.1-1.debian.tar.xz 5276 SHA256:b72d531075d630e120038c8f4a77a8342fbe9523915860b434102c495d47d166
```

### `dpkg` source package: `libassuan=2.4.2-2`

Binary Packages:

- `libassuan0:amd64=2.4.2-2`

Licenses: (parsed from: `/usr/share/doc/libassuan0/copyright`)

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
$ apt-get source -qq --print-uris libassuan=2.4.2-2
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.4.2-2.dsc' libassuan_2.4.2-2.dsc 2104 SHA256:5a741a94b2faf19626691bf5b9121e7fd2e82335c3e34c5d84644488228bb713
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.4.2.orig.tar.bz2' libassuan_2.4.2.orig.tar.bz2 587631 SHA256:bb06dc81380b74bf1b64d5849be5c0409a336f3b4c45f20ac688e86d1b5bcb20
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.4.2-2.debian.tar.xz' libassuan_2.4.2-2.debian.tar.xz 12168 SHA256:39b6f31517857bde39ff86f1b4b5d122a676d91477dc79caafb720e4e36cd3d1
```

### `dpkg` source package: `libasyncns=0.8-5build1`

Binary Packages:

- `libasyncns0:amd64=0.8-5build1`

Licenses: (parsed from: `/usr/share/doc/libasyncns0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libasyncns=0.8-5build1
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libasyncns/libasyncns_0.8-5build1.dsc' libasyncns_0.8-5build1.dsc 1290 SHA256:719caa7a1a54a6af4d7aefa3f78e19005ef0df14c9b0dc9247dad0daed427bf5
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libasyncns/libasyncns_0.8.orig.tar.gz' libasyncns_0.8.orig.tar.gz 341591 SHA256:4f1a66e746cbe54ff3c2fbada5843df4fbbbe7481d80be003e8d11161935ab74
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libasyncns/libasyncns_0.8-5build1.debian.tar.xz' libasyncns_0.8-5build1.debian.tar.xz 4244 SHA256:4be991be063b22c91bfbe047433124db81c0ec28af6e310dc6d4e6b35dfbf7b2
```

### `dpkg` source package: `libavc1394=0.5.4-4`

Binary Packages:

- `libavc1394-0:amd64=0.5.4-4`

Licenses: (parsed from: `/usr/share/doc/libavc1394-0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libavc1394=0.5.4-4
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libavc1394/libavc1394_0.5.4-4.dsc' libavc1394_0.5.4-4.dsc 2153 SHA256:e0fcaa8cfbf5b681575b8e56cdae9235baa6d8d0f5832ac08c7c8438276f0d7b
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libavc1394/libavc1394_0.5.4.orig.tar.gz' libavc1394_0.5.4.orig.tar.gz 341679 SHA256:7cb1ff09506ae911ca9860bef4af08c2403f3e131f6c913a2cbd6ddca4215b53
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libavc1394/libavc1394_0.5.4-4.debian.tar.xz' libavc1394_0.5.4-4.debian.tar.xz 6504 SHA256:2fd8771875db51024e01ac35b47ac873ce555a6bc8d2919346269cc1c450a472
```

### `dpkg` source package: `libbluray=1:0.9.2-2`

Binary Packages:

- `libbluray1:amd64=1:0.9.2-2`

Licenses: (parsed from: `/usr/share/doc/libbluray1/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MPL-1.0`

Source:

```console
$ apt-get source -qq --print-uris libbluray=1:0.9.2-2
'http://archive.ubuntu.com/ubuntu/pool/universe/libb/libbluray/libbluray_0.9.2-2.dsc' libbluray_0.9.2-2.dsc 2601 SHA256:7d54d30fc9a7f39c4682d6577a9be5d2b489241713318e9445b059103c27695c
'http://archive.ubuntu.com/ubuntu/pool/universe/libb/libbluray/libbluray_0.9.2.orig.tar.bz2' libbluray_0.9.2.orig.tar.bz2 704357 SHA256:efc994f42d2bce6af2ce69d05ba89dbbd88bcec7aca065de094fb3a7880ce7ea
'http://archive.ubuntu.com/ubuntu/pool/universe/libb/libbluray/libbluray_0.9.2-2.debian.tar.xz' libbluray_0.9.2-2.debian.tar.xz 17172 SHA256:00d4d6631bf8a480c4e5ec4cfb286f4d1baa12daadcc50291e4deb325b7f66c0
```

### `dpkg` source package: `libbs2b=3.1.0+dfsg-2.2`

Binary Packages:

- `libbs2b0:amd64=3.1.0+dfsg-2.2`

Licenses: (parsed from: `/usr/share/doc/libbs2b0/copyright`)

- `FSF-unlimited`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `MIT`
- `MIT+FSF-public`

Source:

```console
$ apt-get source -qq --print-uris libbs2b=3.1.0+dfsg-2.2
'http://archive.ubuntu.com/ubuntu/pool/universe/libb/libbs2b/libbs2b_3.1.0%2bdfsg-2.2.dsc' libbs2b_3.1.0+dfsg-2.2.dsc 1939 SHA256:a5fa01cf653b4161bb8595509be5ee91d1f47b8a9ff2b8c98b7fdd60b290e643
'http://archive.ubuntu.com/ubuntu/pool/universe/libb/libbs2b/libbs2b_3.1.0%2bdfsg.orig.tar.gz' libbs2b_3.1.0+dfsg.orig.tar.gz 330675 SHA256:c23faf614f787342c1a1a40f83064f2e5a49391733c029dc31d09fba759cee0a
'http://archive.ubuntu.com/ubuntu/pool/universe/libb/libbs2b/libbs2b_3.1.0%2bdfsg-2.2.debian.tar.xz' libbs2b_3.1.0+dfsg-2.2.debian.tar.xz 4632 SHA256:37d7d8da3d0ab030ca49944e98c83b4ae8a4463d3a70c301af79da20e05b0440
```

### `dpkg` source package: `libbsd=0.8.2-1ubuntu0.1`

Binary Packages:

- `libbsd0:amd64=0.8.2-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libbsd0/copyright`)

- `BSD-2-clause`
- `BSD-2-clause-NetBSD`
- `BSD-2-clause-author`
- `BSD-2-clause-verbatim`
- `BSD-3-clause`
- `BSD-3-clause-Peter-Wemm`
- `BSD-3-clause-Regents`
- `BSD-4-clause-Christopher-G-Demetriou`
- `BSD-4-clause-Niels-Provos`
- `BSD-5-clause-Peter-Wemm`
- `Beerware`
- `Expat`
- `ISC`
- `ISC-Original`
- `public-domain`
- `public-domain-Colin-Plumb`

Source:

```console
$ apt-get source -qq --print-uris libbsd=0.8.2-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.8.2-1ubuntu0.1.dsc' libbsd_0.8.2-1ubuntu0.1.dsc 2083 SHA512:7d5f09928b1d742ea60f9155829d3488fbd95e06be963f4dac415826142dd1677395da81412edd2f75149239ee534bee741d887c215b6419a1d8fe594fddf6b9
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.8.2.orig.tar.xz' libbsd_0.8.2.orig.tar.xz 344292 SHA512:2230d51a30a0c3a8518c7e325036d2b578c8c2b47525c2d0d5f530d28d82227ad48b50341e44521db21f99208fe7c0df7313254c90e3c92da1c8664a8cbb87c5
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.8.2-1ubuntu0.1.debian.tar.xz' libbsd_0.8.2-1ubuntu0.1.debian.tar.xz 15652 SHA512:009907249c54bc1158e88c3220ce99a52a99d660d76e4774e85c52e25602943e04094de3acc24fed6ae7f4e95125980608796dd90c4b5af1dbfb47611b37ae59
```

### `dpkg` source package: `libcaca=0.99.beta19-2ubuntu0.16.04.2`

Binary Packages:

- `libcaca0:amd64=0.99.beta19-2ubuntu0.16.04.2`

Licenses: (parsed from: `/usr/share/doc/libcaca0/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libcaca=0.99.beta19-2ubuntu0.16.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcaca/libcaca_0.99.beta19-2ubuntu0.16.04.2.dsc' libcaca_0.99.beta19-2ubuntu0.16.04.2.dsc 2307 SHA512:b0d2d65ec16df0f4b4cc94e46648aa3ca531e3c883809e35ffe5ec73ddd0a73331f508d6733fbd816fc70bf4fa7fb795034aaef8c0dfeea9cca9e0414e257c28
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcaca/libcaca_0.99.beta19.orig.tar.gz' libcaca_0.99.beta19.orig.tar.gz 1203495 SHA512:780fc7684d40207cc10df3f87d6d8f1d47ddfffa0e76e41a5ce671b82d5c7f090facb054c3d49ca7c4ea1a619625bb9085ce52f837f50792b4a2d776a4c68e15
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcaca/libcaca_0.99.beta19-2ubuntu0.16.04.2.debian.tar.xz' libcaca_0.99.beta19-2ubuntu0.16.04.2.debian.tar.xz 14952 SHA512:b9c126226061790beed8f1ff246df73a25787162e6c8315230cc98a3fa7700477cc2e8746357738770f5d4573b941b4f6c75d3886ca2df1b5d17e6945bd8b002
```

### `dpkg` source package: `libcap2=1:2.24-12`

Binary Packages:

- `libcap2:amd64=1:2.24-12`
- `libcap2-bin=1:2.24-12`

Licenses: (parsed from: `/usr/share/doc/libcap2/copyright`, `/usr/share/doc/libcap2-bin/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libcap2=1:2.24-12
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.24-12.dsc' libcap2_2.24-12.dsc 2211 SHA256:4db68746bd1fe7df6d29ae15c3605e4e1d0e44723580c05166144735c773ae14
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.24.orig.tar.xz' libcap2_2.24.orig.tar.xz 63264 SHA256:51cd1c568a2baf1e687573bd6117a94b07f33b46a05acaa50ee208792a830b79
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.24-12.debian.tar.xz' libcap2_2.24-12.debian.tar.xz 18704 SHA256:34be2e791ec96095cc0b405e532874e8c79aeb2125981ebc6896a0ad0b999cf2
```

### `dpkg` source package: `libcdio=0.83-4.2ubuntu1`

Binary Packages:

- `libcdio-cdda1:amd64=0.83-4.2ubuntu1`
- `libcdio-paranoia1:amd64=0.83-4.2ubuntu1`
- `libcdio13:amd64=0.83-4.2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libcdio-cdda1/copyright`, `/usr/share/doc/libcdio-paranoia1/copyright`, `/usr/share/doc/libcdio13/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libcdio=0.83-4.2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcdio/libcdio_0.83-4.2ubuntu1.dsc' libcdio_0.83-4.2ubuntu1.dsc 2448 SHA256:17fb091e174d30e37eea5161ad9549a9304a918482f3fb3fb1e5f241135c36b8
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcdio/libcdio_0.83.orig.tar.gz' libcdio_0.83.orig.tar.gz 2323747 SHA256:235017e3eccb86424f9c108f2c5d5fca62630bda8c9dcf23b425ba9c5e2482c0
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcdio/libcdio_0.83-4.2ubuntu1.debian.tar.xz' libcdio_0.83-4.2ubuntu1.debian.tar.xz 11576 SHA256:43ea64f58e72dae0d77b436ecbac108038d220d552667ae5774701db62842bf2
```

### `dpkg` source package: `libdap=3.15.1-7`

Binary Packages:

- `libdap-dev:amd64=3.15.1-7`
- `libdap17v5:amd64=3.15.1-7`
- `libdapclient6v5:amd64=3.15.1-7`
- `libdapserver7v5:amd64=3.15.1-7`

Licenses: (parsed from: `/usr/share/doc/libdap-dev/copyright`, `/usr/share/doc/libdap17v5/copyright`, `/usr/share/doc/libdapclient6v5/copyright`, `/usr/share/doc/libdapserver7v5/copyright`)

- `GPL-2`
- `LGPL-2.1`
- `W3C`

Source:

```console
$ apt-get source -qq --print-uris libdap=3.15.1-7
'http://archive.ubuntu.com/ubuntu/pool/universe/libd/libdap/libdap_3.15.1-7.dsc' libdap_3.15.1-7.dsc 2309 SHA256:6d5823ed6e1fc7ca7d5235a13e852422d20080618b405f2334d1d3472fddbaf1
'http://archive.ubuntu.com/ubuntu/pool/universe/libd/libdap/libdap_3.15.1.orig.tar.xz' libdap_3.15.1.orig.tar.xz 1192008 SHA256:23f015ec9daa7c0a8590e9d89779207ae6cad66e226295d8b1bd7f3369144d01
'http://archive.ubuntu.com/ubuntu/pool/universe/libd/libdap/libdap_3.15.1-7.debian.tar.xz' libdap_3.15.1-7.debian.tar.xz 9588 SHA256:3188e2f87f2fcebd7ba518ee0aa33656121f46a6e0b690f8574cd8b4ebc07699
```

### `dpkg` source package: `libdc1394-22=2.2.4-1`

Binary Packages:

- `libdc1394-22:amd64=2.2.4-1`

Licenses: (parsed from: `/usr/share/doc/libdc1394-22/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libdc1394-22=2.2.4-1
'http://archive.ubuntu.com/ubuntu/pool/universe/libd/libdc1394-22/libdc1394-22_2.2.4-1.dsc' libdc1394-22_2.2.4-1.dsc 2227 SHA256:573f73d6a8f42db3416cd84750c356631f5e5608146749201fcb51562fc18d4c
'http://archive.ubuntu.com/ubuntu/pool/universe/libd/libdc1394-22/libdc1394-22_2.2.4.orig.tar.gz' libdc1394-22_2.2.4.orig.tar.gz 609612 SHA256:a93689a353c241884a98727128f315ecf9965db70dca710b08af10e5fa0d2e6f
'http://archive.ubuntu.com/ubuntu/pool/universe/libd/libdc1394-22/libdc1394-22_2.2.4-1.debian.tar.xz' libdc1394-22_2.2.4-1.debian.tar.xz 8196 SHA256:7421eee4b233bc71f2c9b0c7b015bec7785ec048a1e6e462ed84853740f9a15e
```

### `dpkg` source package: `libdrm=2.4.91-2~16.04.1`

Binary Packages:

- `libdrm-amdgpu1:amd64=2.4.91-2~16.04.1`
- `libdrm-common=2.4.91-2~16.04.1`
- `libdrm-dev:amd64=2.4.91-2~16.04.1`
- `libdrm-intel1:amd64=2.4.91-2~16.04.1`
- `libdrm-nouveau2:amd64=2.4.91-2~16.04.1`
- `libdrm-radeon1:amd64=2.4.91-2~16.04.1`
- `libdrm2:amd64=2.4.91-2~16.04.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libdrm=2.4.91-2~16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdrm/libdrm_2.4.91-2%7e16.04.1.dsc' libdrm_2.4.91-2~16.04.1.dsc 3293 SHA512:d7867e2aeb3d5169c6ed0be056e67ea660ecd3aee90484430b550fe8618c81c69e141d0a9971a14e25998edfe62c34f19d9114161bbc09950be92af195d3d704
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdrm/libdrm_2.4.91.orig.tar.gz' libdrm_2.4.91.orig.tar.gz 1088866 SHA512:276cb0e0a6542a00ce5b9addc64b322bd25ceabdae2d86dda733bfe5d346bfbfc2a113d630c1a12761d31c7d4bda850bf3c26ed4b141f14e37fc8afbde6dbfc9
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdrm/libdrm_2.4.91.orig.tar.gz.asc' libdrm_2.4.91.orig.tar.gz.asc 879 SHA512:364b36b26e7f7a0f5d41d6ea6c069c66df5391e100b2c6cd5c412ea0d6d356a89d01acc1fa6ee431446e179144742bf5781a8de4210eec7f5ba24ee3eb70d5a4
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdrm/libdrm_2.4.91-2%7e16.04.1.diff.gz' libdrm_2.4.91-2~16.04.1.diff.gz 49908 SHA512:83ca15352cd6af889393d6e2432898c184a0553474420490e0011c6c1bda5ea05e18251590deeb27c2c7ce41b5e36ee1577dee4bfd3b0222b1d568327af5d1c8
```

### `dpkg` source package: `libedit=3.1-20150325-1ubuntu2`

Binary Packages:

- `libedit2:amd64=3.1-20150325-1ubuntu2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libedit=3.1-20150325-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20150325-1ubuntu2.dsc' libedit_3.1-20150325-1ubuntu2.dsc 2342 SHA256:58a27a139b3b1e216a9b9d95fc8f0a0e0bccb244b016b382e6957d0e5a8cdb04
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20150325.orig.tar.gz' libedit_3.1-20150325.orig.tar.gz 502792 SHA256:c88a5e4af83c5f40dda8455886ac98923a9c33125699742603a88a0253fcc8c5
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20150325-1ubuntu2.debian.tar.bz2' libedit_3.1-20150325-1ubuntu2.debian.tar.bz2 10946 SHA256:97d03ee621a5ec98b2683052b57c151462ec690a8e94e7d52bae76c79975f8b3
```

### `dpkg` source package: `libepsilon=0.9.2-3ubuntu1`

Binary Packages:

- `libepsilon1:amd64=0.9.2-3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libepsilon1/copyright`)

- `BSD-3-Clause`
- `BSD-3-Clause `
- `GPL-3`
- `GPL-3+`
- `GPL-3+ `
- `LGPL-3+`

Source:

```console
$ apt-get source -qq --print-uris libepsilon=0.9.2-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/universe/libe/libepsilon/libepsilon_0.9.2-3ubuntu1.dsc' libepsilon_0.9.2-3ubuntu1.dsc 2351 SHA256:718cb3274908ba7db9e6ffc9f086328c5abe8652ab0144f965b0036bb183de21
'http://archive.ubuntu.com/ubuntu/pool/universe/libe/libepsilon/libepsilon_0.9.2.orig.tar.gz' libepsilon_0.9.2.orig.tar.gz 2606012 SHA256:5421a15969d4d7af0ac0a11d519ba8d1d2147dc28d8c062bf0c52f3a0d4c54c4
'http://archive.ubuntu.com/ubuntu/pool/universe/libe/libepsilon/libepsilon_0.9.2-3ubuntu1.debian.tar.xz' libepsilon_0.9.2-3ubuntu1.debian.tar.xz 5916 SHA256:884a064718aaf978fd163c337dfb6008aea65c83dac0c5e1a5c79ad528f7b19f
```

### `dpkg` source package: `libevdev=1.4.6+dfsg-1`

Binary Packages:

- `libevdev2:amd64=1.4.6+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/libevdev2/copyright`)

- `GPL-2`
- `GPL-2+`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris libevdev=1.4.6+dfsg-1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevdev/libevdev_1.4.6%2bdfsg-1.dsc' libevdev_1.4.6+dfsg-1.dsc 2163 SHA256:c3b937195065281230eb60dad35211d55aa824e8357ecc2f9583550085df2e31
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevdev/libevdev_1.4.6%2bdfsg.orig.tar.xz' libevdev_1.4.6+dfsg.orig.tar.xz 310552 SHA256:6b0b04a6061471d9d7702a4b1793165257414adcd061b51ef0525d4cc7012b4a
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevdev/libevdev_1.4.6%2bdfsg-1.debian.tar.xz' libevdev_1.4.6+dfsg-1.debian.tar.xz 10824 SHA256:e60d176fcd407d14bf03d010e4fd4f8cc4dcb73d9e794c4ea78ccb115ae04e8d
```

### `dpkg` source package: `libffi=3.2.1-4`

Binary Packages:

- `libffi6:amd64=3.2.1-4`

Licenses: (parsed from: `/usr/share/doc/libffi6/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.2.1-4
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1-4.dsc' libffi_3.2.1-4.dsc 1914 SHA256:e2bdb4202f1c8be9d3cec5bf459a4a1619f494241938d982d6029e15a8b1da9e
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1.orig.tar.gz' libffi_3.2.1.orig.tar.gz 940837 SHA256:d06ebb8e1d9a22d19e38d63fdb83954253f39bedc5d46232a05645685722ca37
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1-4.debian.tar.xz' libffi_3.2.1-4.debian.tar.xz 8932 SHA256:4d7d5f9172e8a8d3e412ed47e14755e27a0657054a7786b578eb6327b0d08b2d
```

### `dpkg` source package: `libgcrypt20=1.6.5-2ubuntu0.6`

Binary Packages:

- `libgcrypt20:amd64=1.6.5-2ubuntu0.6`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.6.5-2ubuntu0.6
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.6.5-2ubuntu0.6.dsc' libgcrypt20_1.6.5-2ubuntu0.6.dsc 2653 SHA512:6ae3ce26176c486771c3e0c2f675595e49603934bec483b1333e0f8c22dc3c5b0ef013c53e0afc434c2afaa6a45365901aff7fcd247fe3a2475f6755caa74be0
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.6.5.orig.tar.bz2' libgcrypt20_1.6.5.orig.tar.bz2 2549601 SHA512:1b76640a68514369da3b6be51d66e7040b64d03eba68d6b0d1b1ba88336c9da3ef41b21170a9eb641dae5a36a7c53cb167e15c8da964a5a6793aec947afe91f4
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.6.5-2ubuntu0.6.debian.tar.xz' libgcrypt20_1.6.5-2ubuntu0.6.debian.tar.xz 38412 SHA512:de1031f5e21d8f61f4e6a8a1de7bdafeebfebfcc8951dda10d149341d4e69876cd5568d074c2ecda22d40d4a97a521f9718fe1af6f4948eb4a866daac599f21d
```

### `dpkg` source package: `libglu=9.0.0-2.1`

Binary Packages:

- `libglu1-mesa:amd64=9.0.0-2.1`
- `libglu1-mesa-dev:amd64=9.0.0-2.1`

Licenses: (parsed from: `/usr/share/doc/libglu1-mesa/copyright`, `/usr/share/doc/libglu1-mesa-dev/copyright`)

- `GPL-2`
- `LGPL-2`
- `SGI-1.1`
- `SGI-2`

Source:

```console
$ apt-get source -qq --print-uris libglu=9.0.0-2.1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libglu/libglu_9.0.0-2.1.dsc' libglu_9.0.0-2.1.dsc 1914 SHA256:6644a3e00d6d312fe8bbd232b6b39afbda88cc51b77bbaaf88fe8d30e0ecc47f
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libglu/libglu_9.0.0.orig.tar.gz' libglu_9.0.0.orig.tar.gz 626786 SHA256:4387476a1933f36fec1531178ea204057bbeb04cc2d8396c9ea32720a1f7e264
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libglu/libglu_9.0.0-2.1.diff.gz' libglu_9.0.0-2.1.diff.gz 14631 SHA256:ba605e71dd9cd007fc389b1f0f52b0b445df6d770ccd5a240d61ef7f3bb596a7
```

### `dpkg` source package: `libgpg-error=1.21-2ubuntu1`

Binary Packages:

- `libgpg-error0:amd64=1.21-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `GPL-2.1+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.21-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.21-2ubuntu1.dsc' libgpg-error_1.21-2ubuntu1.dsc 2306 SHA256:591fc35e29c7314e9dcbea0ed929afc563dd5e0a6be18d65d2480762353bd71f
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.21.orig.tar.bz2' libgpg-error_1.21.orig.tar.bz2 763186 SHA256:b7dbdb3cad63a740e9f0c632a1da32d4afdb694ec86c8625c98ea0691713b84d
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.21-2ubuntu1.debian.tar.xz' libgpg-error_1.21-2ubuntu1.debian.tar.xz 11988 SHA256:b67f4686d39ec678e860b28d05e07567ec6d43025c18b82c1e9a5dda07a00ed9
```

### `dpkg` source package: `libgsm=1.0.13-4`

Binary Packages:

- `libgsm1:amd64=1.0.13-4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libgsm=1.0.13-4
'http://archive.ubuntu.com/ubuntu/pool/universe/libg/libgsm/libgsm_1.0.13-4.dsc' libgsm_1.0.13-4.dsc 1140 SHA256:807be0900ebfc0d96ffa86fed633c389f465da6db7ee57adc275b479be3ccff0
'http://archive.ubuntu.com/ubuntu/pool/universe/libg/libgsm/libgsm_1.0.13.orig.tar.gz' libgsm_1.0.13.orig.tar.gz 65318 SHA256:52c518244d428c2e56c543b98c9135f4a76ff780c32455580b793f60a0a092ad
'http://archive.ubuntu.com/ubuntu/pool/universe/libg/libgsm/libgsm_1.0.13-4.debian.tar.gz' libgsm_1.0.13-4.debian.tar.gz 10333 SHA256:10baf466030802440a0de1b5a11e46292a82525f922bf9e0a182f509e0bc8514
```

### `dpkg` source package: `libgudev=230-2`

Binary Packages:

- `libgudev-1.0-0:amd64=1:230-2`

Licenses: (parsed from: `/usr/share/doc/libgudev-1.0-0/copyright`)

- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libgudev=230-2
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgudev/libgudev_230-2.dsc' libgudev_230-2.dsc 2391 SHA256:305e9cf50eb2cc83f05dc16188e44f8dcc5be0a467116a42bb3028b7c397ecb3
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgudev/libgudev_230.orig.tar.xz' libgudev_230.orig.tar.xz 257528 SHA256:a2e77faced0c66d7498403adefcc0707105e03db71a2b2abd620025b86347c18
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgudev/libgudev_230-2.debian.tar.xz' libgudev_230-2.debian.tar.xz 3220 SHA256:79c342ca7cc73e48bc6500b6f6ca7f669aa1a45450c9a2d98aa01722d6b9d913
```

### `dpkg` source package: `libhdf4=4.2.10-3.2`

Binary Packages:

- `libhdf4-0-alt=4.2.10-3.2`
- `libhdf4-alt-dev=4.2.10-3.2`

Licenses: (parsed from: `/usr/share/doc/libhdf4-0-alt/copyright`, `/usr/share/doc/libhdf4-alt-dev/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libhdf4=4.2.10-3.2
'http://archive.ubuntu.com/ubuntu/pool/universe/libh/libhdf4/libhdf4_4.2.10-3.2.dsc' libhdf4_4.2.10-3.2.dsc 1796 SHA256:5f1d3f6d3a668d1ad2e818d4df680977d5523370878db84d4332a5ac2177bd2b
'http://archive.ubuntu.com/ubuntu/pool/universe/libh/libhdf4/libhdf4_4.2.10-3.2.tar.gz' libhdf4_4.2.10-3.2.tar.gz 10190963 SHA256:3caefab4836675b086b5de7cc229bb1c29c0770a74dcaeb66fe041dd6319cab5
```

### `dpkg` source package: `libibverbs=1.1.8-1.1ubuntu2`

Binary Packages:

- `libibverbs-dev=1.1.8-1.1ubuntu2`
- `libibverbs1=1.1.8-1.1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libibverbs-dev/copyright`, `/usr/share/doc/libibverbs1/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libibverbs=1.1.8-1.1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libibverbs/libibverbs_1.1.8-1.1ubuntu2.dsc' libibverbs_1.1.8-1.1ubuntu2.dsc 1666 SHA256:85d0a6840eaf23064a577e4bbe031d8c79fc2d2fd19996f891639a87067d9437
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libibverbs/libibverbs_1.1.8.orig.tar.gz' libibverbs_1.1.8.orig.tar.gz 406548 SHA256:7c766e679e1e6dbcb37bdfc624c64310787e3a380baf7ee1eebde39c6991828f
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libibverbs/libibverbs_1.1.8-1.1ubuntu2.debian.tar.xz' libibverbs_1.1.8-1.1ubuntu2.debian.tar.xz 6952 SHA256:9149a3a6353b55aa3704e259c60f2dd3fdb3fad74e9e6cb01cbdf030cdcd7f47
```

### `dpkg` source package: `libice=2:1.0.9-1`

Binary Packages:

- `libice-dev:amd64=2:1.0.9-1`
- `libice6:amd64=2:1.0.9-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libice=2:1.0.9-1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.9-1.dsc' libice_1.0.9-1.dsc 2140 SHA256:f90a79944f147b5db208677d92381fd0886c201616172bac0b28ef0e85912ebd
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.9.orig.tar.gz' libice_1.0.9.orig.tar.gz 455871 SHA256:7812a824a66dd654c830d21982749b3b563d9c2dfe0b88b203cefc14a891edc0
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.9-1.diff.gz' libice_1.0.9-1.diff.gz 6260 SHA256:85d68a69d5e6b25b352eb98c6c33fa7a324da8dd913d7e84a049852fb87287e7
```

### `dpkg` source package: `libidn=1.32-3ubuntu1.2`

Binary Packages:

- `libidn11:amd64=1.32-3ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/libidn11/copyright`)

- `GAP`
- `GFDL-1.3`
- `GFDL-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-2`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`

Source:

```console
$ apt-get source -qq --print-uris libidn=1.32-3ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn/libidn_1.32-3ubuntu1.2.dsc' libidn_1.32-3ubuntu1.2.dsc 2303 SHA512:1c2cfc31a222bcdc47d5693bcb8cf3eb3338ca4faa27bf52bf096f225a2e7388124303238c6dca783f81494435687cd7af42f2dd2748e0a30d6ce6aabdd6d701
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn/libidn_1.32.orig.tar.gz' libidn_1.32.orig.tar.gz 3483155 SHA512:fd48665b65f88210ea504675fc1cd667bd4042b1df3e386847070a465d6753efcec735e6e8572f45f9432235e813c61ef7df09596274935467fdc6f12f80b9bd
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn/libidn_1.32-3ubuntu1.2.debian.tar.xz' libidn_1.32-3ubuntu1.2.debian.tar.xz 84724 SHA512:01614e1555d443f94e5380fd76827737e89774c6361ef72e551fec7ec0c82e99b514ec45d8f8b4f02dfa7b7573ea355476b0590ece35235b1ac4a5a03971cd04
```

### `dpkg` source package: `libiec61883=1.2.0-0.2`

Binary Packages:

- `libiec61883-0:amd64=1.2.0-0.2`

Licenses: (parsed from: `/usr/share/doc/libiec61883-0/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libiec61883=1.2.0-0.2
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libiec61883/libiec61883_1.2.0-0.2.dsc' libiec61883_1.2.0-0.2.dsc 1888 SHA256:0cca201c7d5e77ada0bbbf50c6da3ed1718406e3ef0b7a9994588f18ab0eeb71
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libiec61883/libiec61883_1.2.0.orig.tar.gz' libiec61883_1.2.0.orig.tar.gz 339064 SHA256:7c7879c6b9add3148baea697dfbfdcefffbc8ac74e8e6bcf46125ec1d21b373a
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libiec61883/libiec61883_1.2.0-0.2.diff.gz' libiec61883_1.2.0-0.2.diff.gz 6711 SHA256:84c54267c7fec62d2dbf9123057eba1ea9cffc0d29968cd747feb22020ddf71d
```

### `dpkg` source package: `libinput=1.6.3-1ubuntu1~16.04.1`

Binary Packages:

- `libinput-bin=1.6.3-1ubuntu1~16.04.1`
- `libinput10:amd64=1.6.3-1ubuntu1~16.04.1`

Licenses: (parsed from: `/usr/share/doc/libinput-bin/copyright`, `/usr/share/doc/libinput10/copyright`)

- `Expat`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libinput=1.6.3-1ubuntu1~16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libinput/libinput_1.6.3-1ubuntu1%7e16.04.1.dsc' libinput_1.6.3-1ubuntu1~16.04.1.dsc 2382 SHA512:b6d4fc91d78d9f1066b9972d04691022d3570077dba503e81a2a8904a226b42047133fa16e00be5f8a10f89d91f0224d2452dcfc15e3307154ad1bc44eb360a5
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libinput/libinput_1.6.3.orig.tar.xz' libinput_1.6.3.orig.tar.xz 654356 SHA512:e08d4be59a72e2ae4290054e084764f8c73cb546b43cd26bc10ebd891cfdc5478184d1cbbd6c93b7d127f891967a426e3dd124ca77e05480e7002a234659fbfc
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libinput/libinput_1.6.3-1ubuntu1%7e16.04.1.debian.tar.xz' libinput_1.6.3-1ubuntu1~16.04.1.debian.tar.xz 19324 SHA512:5e4c45c50e2bb088ed188a5b45c1ad41f246281104dd528344376b55bb9f22b5bee81991cb0a82ca6f5ebd63792413b75ed3440c605d5f58a3b08ea5151423ac
```

### `dpkg` source package: `libjpeg-turbo=1.4.2-0ubuntu3.4`

Binary Packages:

- `libjpeg-turbo8:amd64=1.4.2-0ubuntu3.4`
- `libjpeg-turbo8-dev:amd64=1.4.2-0ubuntu3.4`

Licenses: (parsed from: `/usr/share/doc/libjpeg-turbo8/copyright`, `/usr/share/doc/libjpeg-turbo8-dev/copyright`)

- `JPEG`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libjpeg-turbo=1.4.2-0ubuntu3.4
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.4.2-0ubuntu3.4.dsc' libjpeg-turbo_1.4.2-0ubuntu3.4.dsc 2302 SHA512:b38aea3ad6f874764d9a270f554c8ddf921bf303709dee30f1c7fb34666f313865c7841d8ad59997af3db0b7b18da4e67b3f3372d9a0d75f70a4db94d79a0d24
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.4.2.orig.tar.gz' libjpeg-turbo_1.4.2.orig.tar.gz 1569306 SHA512:9bd27c917c29125c425469eb0fdf99b802f25095f187fb416bd7c05e4af95a32404bbb0d06b77343d35d3461029500decf3481337b2eade9e57b58dea69719ee
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.4.2-0ubuntu3.4.debian.tar.xz' libjpeg-turbo_1.4.2-0ubuntu3.4.debian.tar.xz 30156 SHA512:621e4d1b6326524c5c73811c7bb66df7f50037c8e71a52dec1e45c657864b4b88b6c899ea05abf42373ac1d591983f873d07cc976576bc818a3643757515d529
```

### `dpkg` source package: `libjpeg8-empty=8c-2ubuntu8`

Binary Packages:

- `libjpeg-dev:amd64=8c-2ubuntu8`
- `libjpeg8:amd64=8c-2ubuntu8`
- `libjpeg8-dev:amd64=8c-2ubuntu8`

Licenses: (parsed from: `/usr/share/doc/libjpeg-dev/copyright`, `/usr/share/doc/libjpeg8/copyright`, `/usr/share/doc/libjpeg8-dev/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libjpeg8-empty=8c-2ubuntu8
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg8-empty/libjpeg8-empty_8c-2ubuntu8.dsc' libjpeg8-empty_8c-2ubuntu8.dsc 1637 SHA256:e7f575dcb3e0d462513b6f928179baa0ff1d145273934b1041b714515096b407
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg8-empty/libjpeg8-empty_8c-2ubuntu8.tar.gz' libjpeg8-empty_8c-2ubuntu8.tar.gz 1770 SHA256:48a4227e9fc70851a4f304b10624e02875bf6f4e2debfcbe4ba0dd85a3ec05c6
```

### `dpkg` source package: `libjsoncpp=1.7.2-1`

Binary Packages:

- `libjsoncpp-dev:amd64=1.7.2-1`
- `libjsoncpp1:amd64=1.7.2-1`

Licenses: (parsed from: `/usr/share/doc/libjsoncpp-dev/copyright`, `/usr/share/doc/libjsoncpp1/copyright`)

- `Expat_or_PublicDomain_or_DualExpatPD`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris libjsoncpp=1.7.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjsoncpp/libjsoncpp_1.7.2-1.dsc' libjsoncpp_1.7.2-1.dsc 2078 SHA256:1a639f002cb4405c80b6ab9d0db8739b692ff83a5c7221aca325ba1dfc90b760
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjsoncpp/libjsoncpp_1.7.2.orig.tar.gz' libjsoncpp_1.7.2.orig.tar.gz 205391 SHA256:2179a7df19c1c6dc87e02c65b847efc914625a9b87df3e443d9610fc70c0f557
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjsoncpp/libjsoncpp_1.7.2-1.debian.tar.xz' libjsoncpp_1.7.2-1.debian.tar.xz 7312 SHA256:fc2ce2284d00dffb1f18f894052aa51162b8d009f9d150d2d80dfda8285d8a37
```

### `dpkg` source package: `libkml=1.3.0-1`

Binary Packages:

- `libkmlbase1:amd64=1.3.0-1`
- `libkmldom1:amd64=1.3.0-1`
- `libkmlengine1:amd64=1.3.0-1`

Licenses: (parsed from: `/usr/share/doc/libkmlbase1/copyright`, `/usr/share/doc/libkmldom1/copyright`, `/usr/share/doc/libkmlengine1/copyright`)

- `BSD-3-Clause`
- `GPL-3`
- `GPL-3+`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris libkml=1.3.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/libk/libkml/libkml_1.3.0-1.dsc' libkml_1.3.0-1.dsc 2617 SHA256:d863c5d3ba10187e2f086afc8baf249c20b6f473f217032c9d55771af2562ca8
'http://archive.ubuntu.com/ubuntu/pool/universe/libk/libkml/libkml_1.3.0.orig.tar.gz' libkml_1.3.0.orig.tar.gz 6639857 SHA256:8892439e5570091965aaffe30b08631fdf7ca7f81f6495b4648f0950d7ea7963
'http://archive.ubuntu.com/ubuntu/pool/universe/libk/libkml/libkml_1.3.0-1.debian.tar.xz' libkml_1.3.0-1.debian.tar.xz 24244 SHA256:7e71b9a39d6424d9995bb0eb8c81cf7714abe6d805e27ef4aa8b98f54026ca2c
```

### `dpkg` source package: `libksba=1.3.3-1ubuntu0.16.04.1`

Binary Packages:

- `libksba8:amd64=1.3.3-1ubuntu0.16.04.1`

Licenses: (parsed from: `/usr/share/doc/libksba8/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris libksba=1.3.3-1ubuntu0.16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.3.3-1ubuntu0.16.04.1.dsc' libksba_1.3.3-1ubuntu0.16.04.1.dsc 2266 SHA512:a4ee24793de88e4f8b8ed63a40b55f723bf424f7950d436adb3a4deb19a6880b7ff3786a0f2e0d0effdaae3ec35e1b6bcf69ec2f01b2e2f647fa9c2da307ebd0
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.3.3.orig.tar.bz2' libksba_1.3.3.orig.tar.bz2 618698 SHA512:57de827a67a88dddf9227a5409bb86220e773f18b53d3d06c45699677e3052f94abe78bcd1895c3bd7594c5e728b4c8232dd3bd3b1cd22cf47f8110e2aec9db7
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.3.3-1ubuntu0.16.04.1.debian.tar.xz' libksba_1.3.3-1ubuntu0.16.04.1.debian.tar.xz 13460 SHA512:a995819e9616e5e9894c0bb17911796f20cf5b0f7df734d5ca3f7a93c8673e00d1a539c642d7c5231a5f6ef6faba76cf8d95cc6a44201ea5b49a047f94d1bcf1
```

### `dpkg` source package: `libmodplug=1:0.8.8.5-2`

Binary Packages:

- `libmodplug1:amd64=1:0.8.8.5-2`

Licenses: (parsed from: `/usr/share/doc/libmodplug1/copyright`)

- `Public Domain`

Source:

```console
$ apt-get source -qq --print-uris libmodplug=1:0.8.8.5-2
'http://archive.ubuntu.com/ubuntu/pool/universe/libm/libmodplug/libmodplug_0.8.8.5-2.dsc' libmodplug_0.8.8.5-2.dsc 2024 SHA256:f598b7c733b979612265f515b994710ab375b5fe708294d99a1e7c3ba1e98510
'http://archive.ubuntu.com/ubuntu/pool/universe/libm/libmodplug/libmodplug_0.8.8.5.orig.tar.gz' libmodplug_0.8.8.5.orig.tar.gz 546751 SHA256:77462d12ee99476c8645cb5511363e3906b88b33a6b54362b4dbc0f39aa2daad
'http://archive.ubuntu.com/ubuntu/pool/universe/libm/libmodplug/libmodplug_0.8.8.5-2.debian.tar.xz' libmodplug_0.8.8.5-2.debian.tar.xz 11400 SHA256:929178a75202336f43b7ed70b7a32345523ef33abd1d2958e436668d9ddc28df
```

### `dpkg` source package: `libogg=1.3.2-1`

Binary Packages:

- `libogg0:amd64=1.3.2-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libogg=1.3.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/libo/libogg/libogg_1.3.2-1.dsc' libogg_1.3.2-1.dsc 1230 SHA256:dacc2059f8f92d1f6b18805432f2f40ac45fb9d52a1a61f14dc8c7c6a1aecb58
'http://archive.ubuntu.com/ubuntu/pool/main/libo/libogg/libogg_1.3.2.orig.tar.gz' libogg_1.3.2.orig.tar.gz 557232 SHA256:bf253517df60ef1e6f5ae328bac7477595465de30638818948574e05f502dfa3
'http://archive.ubuntu.com/ubuntu/pool/main/libo/libogg/libogg_1.3.2-1.diff.gz' libogg_1.3.2-1.diff.gz 6824 SHA256:9bee2f473a5ed92f1c744105447f15fe38feea8935e740a9eea2d840fa2d15c7
```

### `dpkg` source package: `libpciaccess=0.13.4-1`

Binary Packages:

- `libpciaccess0:amd64=0.13.4-1`

Licenses: (parsed from: `/usr/share/doc/libpciaccess0/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libpciaccess=0.13.4-1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpciaccess/libpciaccess_0.13.4-1.dsc' libpciaccess_0.13.4-1.dsc 2060 SHA256:c7413e1b3804ae83667d0144eabb5bcba046a16c12f20f94d861edb71a9f67e8
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpciaccess/libpciaccess_0.13.4.orig.tar.gz' libpciaccess_0.13.4.orig.tar.gz 440390 SHA256:74d92bda448e6fdb64fee4e0091255f48d625d07146a121653022ed3a0ca1f2f
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpciaccess/libpciaccess_0.13.4-1.diff.gz' libpciaccess_0.13.4-1.diff.gz 24145 SHA256:72e06952d417e15ee23766815f8f10555c2504189f9420a3b6df0be25e972650
```

### `dpkg` source package: `libpng=1.2.54-1ubuntu1.1`

Binary Packages:

- `libpng12-0:amd64=1.2.54-1ubuntu1.1`
- `libpng12-dev:amd64=1.2.54-1ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libpng12-0/copyright`, `/usr/share/doc/libpng12-dev/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libpng=1.2.54-1ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng/libpng_1.2.54-1ubuntu1.1.dsc' libpng_1.2.54-1ubuntu1.1.dsc 2121 SHA512:bbfd410f3c521b11620196f80a6102fa05434a76c16733f4222d48371e5f96e29ebaf26708528352aff7a599fe79dff5cefe3a0b1aff0aff57a7f9a5524a1d90
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng/libpng_1.2.54.orig.tar.xz' libpng_1.2.54.orig.tar.xz 571448 SHA512:3fde161bae1c61c0c099344518a59a312ac5bcd6063d7d01be156fd4e048fdaafed8a27e10bf2750d4ef678389e2782137c9e6540b7fd0859b820bb8d9443497
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng/libpng_1.2.54-1ubuntu1.1.debian.tar.xz' libpng_1.2.54-1ubuntu1.1.debian.tar.xz 18820 SHA512:42b4f5f16310adf2e41f12656f7deb6900f85346a5a106d495d5b3f545e0841d4d8b22845df41e04d5b3ceb939d745e5b1c5efdca004f38305ad58608c271a2a
```

### `dpkg` source package: `libproxy=0.4.11-5ubuntu1.2`

Binary Packages:

- `libproxy1v5:amd64=0.4.11-5ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/libproxy1v5/copyright`)

- `GPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libproxy=0.4.11-5ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libproxy/libproxy_0.4.11-5ubuntu1.2.dsc' libproxy_0.4.11-5ubuntu1.2.dsc 3263 SHA512:e3966a68044577c0b2436ad7740a54c1f15f22ba407600a7a976e71197ecc6e79e1dbac94b6e3980e89a398f3fef5bdead2adfc69389be7a6e4be40ebbb78f63
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libproxy/libproxy_0.4.11.orig.tar.gz' libproxy_0.4.11.orig.tar.gz 93757 SHA512:563a837946a73c41e0773cec93332c6308245c0b807a40a0fb052c2445deae4a117ba2780a350c799717fd11c4dbe410183a38ea050a4f04db0b1adcb6f9ad98
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libproxy/libproxy_0.4.11-5ubuntu1.2.debian.tar.xz' libproxy_0.4.11-5ubuntu1.2.debian.tar.xz 11880 SHA512:e77dae9474c355bf742e84d950b271c8f8276ec252370637edba248619343e181274b06c391fca68cdb7cff5aadfc68c950269d6f51708671dc2e293506c70cb
```

### `dpkg` source package: `libpthread-stubs=0.3-4`

Binary Packages:

- `libpthread-stubs0-dev:amd64=0.3-4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libpthread-stubs=0.3-4
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpthread-stubs/libpthread-stubs_0.3-4.dsc' libpthread-stubs_0.3-4.dsc 1925 SHA256:e72310a5492e641076c199561977703947174c6acc3633073d909f6f5ab3c676
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpthread-stubs/libpthread-stubs_0.3.orig.tar.gz' libpthread-stubs_0.3.orig.tar.gz 272939 SHA256:3031f466cf0b06de6b3ccbf2019d15c4fcf75229b7d226a711bc1885b3a82cde
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpthread-stubs/libpthread-stubs_0.3-4.diff.gz' libpthread-stubs_0.3-4.diff.gz 2413 SHA256:ce3eb8bdc0f1a4347d42c5736d056973fae46908b764a9f2be83e1bd210f2024
```

### `dpkg` source package: `libraw1394=2.1.1-2`

Binary Packages:

- `libraw1394-11:amd64=2.1.1-2`

Licenses: (parsed from: `/usr/share/doc/libraw1394-11/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libraw1394=2.1.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/libr/libraw1394/libraw1394_2.1.1-2.dsc' libraw1394_2.1.1-2.dsc 2080 SHA256:5909a47ecdae0ac0281eeda1487ce88ca7a04ac43af00bee0b622230959a0f22
'http://archive.ubuntu.com/ubuntu/pool/main/libr/libraw1394/libraw1394_2.1.1.orig.tar.gz' libraw1394_2.1.1.orig.tar.gz 451309 SHA256:a960ac55fb81d56de055ab91b1e124c0ccbb657e059142d2d8fc644e4af8ca74
'http://archive.ubuntu.com/ubuntu/pool/main/libr/libraw1394/libraw1394_2.1.1-2.debian.tar.xz' libraw1394_2.1.1-2.debian.tar.xz 8752 SHA256:b043b7a3cd17ca4122c63cb8c129ec06890106074aa4a54f939bc32c7e6ed05e
```

### `dpkg` source package: `libraw=0.17.1-1ubuntu0.5`

Binary Packages:

- `libraw15:amd64=0.17.1-1ubuntu0.5`

Licenses: (parsed from: `/usr/share/doc/libraw15/copyright`)

- `BSD-3-clause`
- `CC-BY-SA-3.0`
- `CDDL-1.0`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LibRaw`
- `dcraw`

Source:

```console
$ apt-get source -qq --print-uris libraw=0.17.1-1ubuntu0.5
'http://archive.ubuntu.com/ubuntu/pool/main/libr/libraw/libraw_0.17.1-1ubuntu0.5.dsc' libraw_0.17.1-1ubuntu0.5.dsc 2292 SHA512:9b19643f0913bda070effeba0c96124339018f977c63c76e9d801ead7336792cf544f7d69f2f86ee9894b149c255cb42dd7e5620e6b1b1734afdcba26ac3733b
'http://archive.ubuntu.com/ubuntu/pool/main/libr/libraw/libraw_0.17.1.orig.tar.gz' libraw_0.17.1.orig.tar.gz 689407 SHA512:bde1a2c550ee14e0fd9cd5ba82736fbf30da61954eb4317ef3af24acea1248d5f05764b9350ee4b440c4e8951c6f855ea70a8d5de1b698263be832919863f372
'http://archive.ubuntu.com/ubuntu/pool/main/libr/libraw/libraw_0.17.1-1ubuntu0.5.debian.tar.xz' libraw_0.17.1-1ubuntu0.5.debian.tar.xz 38364 SHA512:bc9d0fde7991097b36e5cdcb89c803fb5cb9e81c5853f5245e44d25a9253fdd27dadc633e9ee62e2571069655bf3aefd6f5c52b23e8eb2323ab0fa88e99aa1f6
```

### `dpkg` source package: `libsamplerate=0.1.8-8`

Binary Packages:

- `libsamplerate0:amd64=0.1.8-8`

Licenses: (parsed from: `/usr/share/doc/libsamplerate0/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libsamplerate=0.1.8-8
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsamplerate/libsamplerate_0.1.8-8.dsc' libsamplerate_0.1.8-8.dsc 1940 SHA256:f13b419b19e18d7023b577382f7d2e65a6554b30793fde197338c7982c515660
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsamplerate/libsamplerate_0.1.8.orig.tar.gz' libsamplerate_0.1.8.orig.tar.gz 4303330 SHA256:93b54bdf46d5e6d2354b7034395fe329c222a966790de34520702bb9642f1c06
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsamplerate/libsamplerate_0.1.8-8.debian.tar.xz' libsamplerate_0.1.8-8.debian.tar.xz 5836 SHA256:d41c73e86687265491780fe507178513b320325108b026bb9d8f6672287c2225
```

### `dpkg` source package: `libsdl1.2=1.2.15+dfsg1-3ubuntu0.1`

Binary Packages:

- `libsdl1.2debian:amd64=1.2.15+dfsg1-3ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libsdl1.2debian/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsdl1.2=1.2.15+dfsg1-3ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsdl1.2/libsdl1.2_1.2.15%2bdfsg1-3ubuntu0.1.dsc' libsdl1.2_1.2.15+dfsg1-3ubuntu0.1.dsc 2488 SHA512:4e29fae81f4063d06e9193b30df1cb905a930a238022ef9c382dbd451f3eee99215294ad16f46c741cbbf2be4b37e03a38747e0a3d74760b78d92101495b3285
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsdl1.2/libsdl1.2_1.2.15%2bdfsg1.orig.tar.xz' libsdl1.2_1.2.15+dfsg1.orig.tar.xz 2584144 SHA512:6907a8139977b29a5b949e01a0c0a977f0f4b2e0bf4fdbe83b6852c547154b08ec4195f1176c3593c91215864a30694f69bda94bdc6987e34a5b781178a84ff5
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsdl1.2/libsdl1.2_1.2.15%2bdfsg1-3ubuntu0.1.debian.tar.xz' libsdl1.2_1.2.15+dfsg1-3ubuntu0.1.debian.tar.xz 36824 SHA512:f07ea962d13e07131192939412bc794e7a501e09624a61c5ad46b90f932f92d72b0f34da8dbbf1431ef850bff8823250989663bdd9f51f0a04a391121b7ed886
```

### `dpkg` source package: `libseccomp=2.5.1-1ubuntu1~16.04.1`

Binary Packages:

- `libseccomp2:amd64=2.5.1-1ubuntu1~16.04.1`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2`
- `LGPL-2.0+`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.5.1-1ubuntu1~16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.1-1ubuntu1%7e16.04.1.dsc' libseccomp_2.5.1-1ubuntu1~16.04.1.dsc 2303 SHA512:457ac79f79d99ad60f2063b4809e22cb82272df312fee2cef9058160c2596af130bffa4902b37e20dd2c0e924371605627a4bf4d2604ad12be82bfc1ebecc16b
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.1.orig.tar.gz' libseccomp_2.5.1.orig.tar.gz 638811 SHA512:2be80a6323f9282dbeae8791724e5778b32e2382b2a3d1b0f77366371ec4072ea28128204f675cce101c091c0420d12c497e1a9ccbb7dc5bcbf61bfd777160af
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.1-1ubuntu1%7e16.04.1.debian.tar.xz' libseccomp_2.5.1-1ubuntu1~16.04.1.debian.tar.xz 18572 SHA512:2ec59f6be5bdcca16eff07b917d6f6a7dc6ce1a77c0eeccac3ffb048b94f093307e23525dc7c30fede7ce13d8747efaa3bd744b6c6bfc8bcf1b65a853ea4b39e
```

### `dpkg` source package: `libselinux=2.4-3build2`

Binary Packages:

- `libselinux1:amd64=2.4-3build2`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=2.4-3build2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.4-3build2.dsc' libselinux_2.4-3build2.dsc 2491 SHA256:c14dbd5eff5dfd66c41b9ed3d09e1186975b233c8a2a59720ccb8b318c85883c
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.4.orig.tar.gz' libselinux_2.4.orig.tar.gz 165931 SHA256:46043091f4c5ba4f43e8d3715f30d665a2d571c9126c1f03945c9ea4ed380f7b
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.4-3build2.debian.tar.xz' libselinux_2.4-3build2.debian.tar.xz 23216 SHA256:96f1c0526970460e6b5f64ea4d2f7ecabe06e80e23e83e4feccecb955e1ca956
```

### `dpkg` source package: `libsemanage=2.3-1build3`

Binary Packages:

- `libsemanage-common=2.3-1build3`
- `libsemanage1:amd64=2.3-1build3`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=2.3-1build3
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.3-1build3.dsc' libsemanage_2.3-1build3.dsc 2497 SHA256:920f1f389316617711778cbe83eb36f62d59a2ebb3b1488f75c41014c0bc684c
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.3.orig.tar.gz' libsemanage_2.3.orig.tar.gz 138231 SHA256:03e09e35e611c286e446bef92b6023ef2623815996f5a53394bb02e49a312e4b
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.3-1build3.debian.tar.xz' libsemanage_2.3-1build3.debian.tar.xz 15056 SHA256:d4f90c66ba911f72c5195da957cdcacd91a583e64ad06c01bf5b692387ee3d33
```

### `dpkg` source package: `libsepol=2.4-2`

Binary Packages:

- `libsepol1:amd64=2.4-2`

Licenses: (parsed from: `/usr/share/doc/libsepol1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=2.4-2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.4-2.dsc' libsepol_2.4-2.dsc 1768 SHA256:fca86fc62f736baf96ac2061327553b74b1b34f7ace89d982baa5374c24e2841
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.4.orig.tar.gz' libsepol_2.4.orig.tar.gz 570822 SHA256:299015d59932404c6b69d365fdecffe5c0e2f9c44e08b47286a4bfc02ee49659
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.4-2.debian.tar.xz' libsepol_2.4-2.debian.tar.xz 13188 SHA256:85e50e42c49dee9b21b5dda5fb754ce6d10482a4641e9f088da103b9178c2c1d
```

### `dpkg` source package: `libsm=2:1.2.2-1`

Binary Packages:

- `libsm-dev:amd64=2:1.2.2-1`
- `libsm6:amd64=2:1.2.2-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libsm=2:1.2.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.2-1.dsc' libsm_1.2.2-1.dsc 2107 SHA256:1347efa550751179c0a3f1042a9f8ae43ee0c22cf0c2283921fa83e52a68433f
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.2.orig.tar.gz' libsm_1.2.2.orig.tar.gz 415990 SHA256:14bb7c669ce2b8ff712fbdbf48120e3742a77edcd5e025d6b3325ed30cf120f4
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.2-1.diff.gz' libsm_1.2.2-1.diff.gz 6183 SHA256:9848714292ead15fcc48ab2d337f2cc5fc08910abbdfaf69d3ef1b89d3fdb2d5
```

### `dpkg` source package: `libsndfile=1.0.25-10ubuntu0.16.04.3`

Binary Packages:

- `libsndfile1:amd64=1.0.25-10ubuntu0.16.04.3`

Licenses: (parsed from: `/usr/share/doc/libsndfile1/copyright`)

- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libsndfile=1.0.25-10ubuntu0.16.04.3
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsndfile/libsndfile_1.0.25-10ubuntu0.16.04.3.dsc' libsndfile_1.0.25-10ubuntu0.16.04.3.dsc 2086 SHA512:73b1ad15329eb950cf432fa8873a945ad3a7105207ee668de39853df111537c13dbc700dc6b48095d8c144095615f9d86b29644b69cc1818ff89827a6906051f
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsndfile/libsndfile_1.0.25.orig.tar.gz' libsndfile_1.0.25.orig.tar.gz 1060692 SHA512:4ca9780ed0a915aca8a10ef91bf4bf48b05ecb85285c2c3fe7eef1d46d3e0747e61416b6bddbef369bd69adf4b796ff5f61380e0bc998906b170a93341ba6f78
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsndfile/libsndfile_1.0.25-10ubuntu0.16.04.3.debian.tar.xz' libsndfile_1.0.25-10ubuntu0.16.04.3.debian.tar.xz 21012 SHA512:37c864644e26efdb084d0cc74a9e93c1d6bd62b088ac67e57e058360f8e73fc956f7867c9236b092fb4a6480ef8a6c8b2f9083eb7d656f4f4bf2b5c45829fd7d
```

### `dpkg` source package: `libsodium=1.0.8-5`

Binary Packages:

- `libsodium18:amd64=1.0.8-5`

Licenses: (parsed from: `/usr/share/doc/libsodium18/copyright`)

- `BSD-2-clause`
- `CC0`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `MIT`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libsodium=1.0.8-5
'http://archive.ubuntu.com/ubuntu/pool/universe/libs/libsodium/libsodium_1.0.8-5.dsc' libsodium_1.0.8-5.dsc 2022 SHA256:56e870b76ceea5517928be8af6c02c225fbc229ade25ece02aecebf34e2baf8b
'http://archive.ubuntu.com/ubuntu/pool/universe/libs/libsodium/libsodium_1.0.8.orig.tar.gz' libsodium_1.0.8.orig.tar.gz 1412473 SHA256:61493bdbb13d29b2d0bf5113199e141b986f97f414e86e510f59cfb4e42c85f1
'http://archive.ubuntu.com/ubuntu/pool/universe/libs/libsodium/libsodium_1.0.8-5.debian.tar.xz' libsodium_1.0.8-5.debian.tar.xz 5844 SHA256:0d55a56baaf2f141c87bb297fcf6d1d078c4d7bde67553774734cf29248e09eb
```

### `dpkg` source package: `libsoxr=0.1.2-1`

Binary Packages:

- `libsoxr0:amd64=0.1.2-1`

Licenses: (parsed from: `/usr/share/doc/libsoxr0/copyright`)

- `BSD-3-clause`
- `LGPL-2.1`
- `LGPL-2.1+`
- `Spherepack`
- `permissive1`
- `permissive2`

Source:

```console
$ apt-get source -qq --print-uris libsoxr=0.1.2-1
'http://archive.ubuntu.com/ubuntu/pool/universe/libs/libsoxr/libsoxr_0.1.2-1.dsc' libsoxr_0.1.2-1.dsc 2106 SHA256:dc9cdb6f3f88d79abaed570c450fe1ba6f3eba163fd83e5572c817b52c7a0762
'http://archive.ubuntu.com/ubuntu/pool/universe/libs/libsoxr/libsoxr_0.1.2.orig.tar.xz' libsoxr_0.1.2.orig.tar.xz 83760 SHA256:54e6f434f1c491388cd92f0e3c47f1ade082cc24327bdc43762f7d1eefe0c275
'http://archive.ubuntu.com/ubuntu/pool/universe/libs/libsoxr/libsoxr_0.1.2-1.debian.tar.xz' libsoxr_0.1.2-1.debian.tar.xz 4096 SHA256:46f983cbef66856659fc496de6f112f978abeafd2468c816081c6b30bfffb713
```

### `dpkg` source package: `libspnav=0.2.3-1`

Binary Packages:

- `libspnav0=0.2.3-1`

Licenses: (parsed from: `/usr/share/doc/libspnav0/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3.0+`

Source:

```console
$ apt-get source -qq --print-uris libspnav=0.2.3-1
'http://archive.ubuntu.com/ubuntu/pool/universe/libs/libspnav/libspnav_0.2.3-1.dsc' libspnav_0.2.3-1.dsc 1874 SHA256:e7f4bf5b738690c79294c673a4385b1f5708c5f1a4cf3255dd31cfa4f082c0e1
'http://archive.ubuntu.com/ubuntu/pool/universe/libs/libspnav/libspnav_0.2.3.orig.tar.gz' libspnav_0.2.3.orig.tar.gz 11985 SHA256:7ae4d7bb7f6a5dda28b487891e01accc856311440f582299760dace6ee5f1f93
'http://archive.ubuntu.com/ubuntu/pool/universe/libs/libspnav/libspnav_0.2.3-1.debian.tar.xz' libspnav_0.2.3-1.debian.tar.xz 3536 SHA256:90989c2656f922ee6a56280d530a77c547268edecb9a1e2f02b2011bf451afe3
```

### `dpkg` source package: `libssh=0.6.3-4.3ubuntu0.6`

Binary Packages:

- `libssh-gcrypt-4:amd64=0.6.3-4.3ubuntu0.6`

Licenses: (parsed from: `/usr/share/doc/libssh-gcrypt-4/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `LGPL-2.1`
- `LGPL-2.1+~OpenSSL`

Source:

```console
$ apt-get source -qq --print-uris libssh=0.6.3-4.3ubuntu0.6
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.6.3-4.3ubuntu0.6.dsc' libssh_0.6.3-4.3ubuntu0.6.dsc 2429 SHA512:8ff7c62169e54330f6742d173f4aa1d44f7ee12aa45a30f1e7a8bbc717732f4bf50c919371e1b6267c847ba403cf74375322bcfd30b65f6a60dd48aa7bfa52c9
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.6.3.orig.tar.xz' libssh_0.6.3.orig.tar.xz 279492 SHA512:8a9afd0add4f7e4b8ca237badaa9e248153cb3d069eeb3a5e752703545eda44a2556f93a4c60d3eadb3e950bc0848caa114fc54572e6372d740cbf8a63ab3b93
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.6.3-4.3ubuntu0.6.debian.tar.xz' libssh_0.6.3-4.3ubuntu0.6.debian.tar.xz 37036 SHA512:b4b196ccaf82a52e4729e24fd2d7384e2267e92ac7c984594f9413bf5de593d3270bf064a2b28e7a43f1d6568c340c41c4a7fdddcedc6175b2bdeba5c600c4c9
```

### `dpkg` source package: `libtar=1.2.20-4`

Binary Packages:

- `libtar-dev=1.2.20-4`
- `libtar0=1.2.20-4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libtar=1.2.20-4
'http://archive.ubuntu.com/ubuntu/pool/universe/libt/libtar/libtar_1.2.20-4.dsc' libtar_1.2.20-4.dsc 1882 SHA256:a65fc00b8e68a8f3bf679b32fb6872108964f2ed72ad6976a97f9f544515dc84
'http://archive.ubuntu.com/ubuntu/pool/universe/libt/libtar/libtar_1.2.20.orig.tar.gz' libtar_1.2.20.orig.tar.gz 63542 SHA256:50f24c857a7ef1cb092e6508758b86d06f1188508f897f3e6b40c573e8879109
'http://archive.ubuntu.com/ubuntu/pool/universe/libt/libtar/libtar_1.2.20-4.debian.tar.xz' libtar_1.2.20-4.debian.tar.xz 10164 SHA256:8b083e28886f43ff95571508c3805c98b58f70777eecdefd1c18768ab4b37e81
```

### `dpkg` source package: `libtasn1-6=4.7-3ubuntu0.16.04.3`

Binary Packages:

- `libtasn1-6:amd64=4.7-3ubuntu0.16.04.3`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=4.7-3ubuntu0.16.04.3
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.7-3ubuntu0.16.04.3.dsc' libtasn1-6_4.7-3ubuntu0.16.04.3.dsc 2495 SHA512:0309d18c3829079a188b37a6fbcf613d3e0b3143a44b845a5be4a619105197536c68b0d4febcc8a46fdc5718244df847601ec19e0689f987b9986f0ff1ad6f02
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.7.orig.tar.gz' libtasn1-6_4.7.orig.tar.gz 1851611 SHA512:9e93264bfad250d88c528550db4731d07c5c1b2ec319b892e9b536dc3d46b2a4166241ebf3470127c4f662067b7dabaa407ce1f16bdf05ee31495881eefe5572
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.7-3ubuntu0.16.04.3.debian.tar.xz' libtasn1-6_4.7-3ubuntu0.16.04.3.debian.tar.xz 60468 SHA512:9059324cc9e9048a014c86ebc923f068ed837929bd48dff7a670a0e5a45e492f5d8b53510e3a5b07844d3d24276eeb9810c710a4b46c83721726d8194f6fe3a1
```

### `dpkg` source package: `libtheora=1.1.1+dfsg.1-8`

Binary Packages:

- `libtheora0:amd64=1.1.1+dfsg.1-8`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libtheora=1.1.1+dfsg.1-8
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtheora/libtheora_1.1.1%2bdfsg.1-8.dsc' libtheora_1.1.1+dfsg.1-8.dsc 2520 SHA256:3b5365363e8abcf789d0ee848a24288dddba595953a1f8152c0319392d7e3b97
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtheora/libtheora_1.1.1%2bdfsg.1.orig.tar.gz' libtheora_1.1.1+dfsg.1.orig.tar.gz 2100495 SHA256:c59b0f07a7314dfe2ade15c41bc9f637f8a450fc6b340af61b81760629f28f90
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtheora/libtheora_1.1.1%2bdfsg.1-8.debian.tar.xz' libtheora_1.1.1+dfsg.1-8.debian.tar.xz 9208 SHA256:c4746f3502fe3489c95895e9ac4572bfc1d8b151349e50395abfd2000f15908c
```

### `dpkg` source package: `libtool=2.4.6-0.1`

Binary Packages:

- `libltdl-dev:amd64=2.4.6-0.1`
- `libltdl7:amd64=2.4.6-0.1`

Licenses: (parsed from: `/usr/share/doc/libltdl-dev/copyright`, `/usr/share/doc/libltdl7/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libtool=2.4.6-0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6-0.1.dsc' libtool_2.4.6-0.1.dsc 2080 SHA256:c0ec24bc1e892564840061e64cf288e018484d733208d97815f3b12f043088b6
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6.orig.tar.xz' libtool_2.4.6.orig.tar.xz 973080 SHA256:7c87a8c2c8c0fc9cd5019e402bed4292462d00a718a7cd5f11218153bf28b26f
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6-0.1.debian.tar.xz' libtool_2.4.6-0.1.debian.tar.xz 19332 SHA256:1b9d3e0f9d177d259206cdda69d6cec8dd04df14cbb064b71869936ca5f2722f
```

### `dpkg` source package: `libusb-1.0=2:1.0.20-1`

Binary Packages:

- `libusb-1.0-0:amd64=2:1.0.20-1`
- `libusb-1.0-0-dev:amd64=2:1.0.20-1`

Licenses: (parsed from: `/usr/share/doc/libusb-1.0-0/copyright`, `/usr/share/doc/libusb-1.0-0-dev/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libusb-1.0=2:1.0.20-1
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libusb-1.0/libusb-1.0_1.0.20-1.dsc' libusb-1.0_1.0.20-1.dsc 2096 SHA256:2d9dab764f330c6343d1ba97a0d77ad6e47d338061e845b0256d02d3fc014154
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libusb-1.0/libusb-1.0_1.0.20.orig.tar.bz2' libusb-1.0_1.0.20.orig.tar.bz2 795247 SHA256:cb057190ba0a961768224e4dc6883104c6f945b2bf2ef90d7da39e7c1834f7ff
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libusb-1.0/libusb-1.0_1.0.20-1.debian.tar.xz' libusb-1.0_1.0.20-1.debian.tar.xz 10132 SHA256:79181f1b8487cef862c31d5ba378dcc05efed76d5a55a7ae4961b788dcf3a2d4
```

### `dpkg` source package: `libusb=2:0.1.12-28`

Binary Packages:

- `libusb-0.1-4:amd64=2:0.1.12-28`

Licenses: (parsed from: `/usr/share/doc/libusb-0.1-4/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris libusb=2:0.1.12-28
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libusb/libusb_0.1.12-28.dsc' libusb_0.1.12-28.dsc 2012 SHA256:be0a89935a8764dc64d40a28959397e6582261eef2152c4ce90a13490471dc5f
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libusb/libusb_0.1.12.orig.tar.gz' libusb_0.1.12.orig.tar.gz 389343 SHA256:37f6f7d9de74196eb5fc0bbe0aea9b5c939de7f500acba3af6fd643f3b538b44
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libusb/libusb_0.1.12-28.debian.tar.xz' libusb_0.1.12-28.debian.tar.xz 21524 SHA256:eaf2314902b0bb9de3e1fa8c9abfcecea7b78c9824048016beaca34f7cc4351b
```

### `dpkg` source package: `libva=1.7.0-1ubuntu0.1`

Binary Packages:

- `libva1:amd64=1.7.0-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libva1/copyright`)

- `BSD-3-clause`
- `Expat`
- `Expat-advertising`
- `GPL-2`
- `GPL-2+`
- `other`

Source:

```console
$ apt-get source -qq --print-uris libva=1.7.0-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/universe/libv/libva/libva_1.7.0-1ubuntu0.1.dsc' libva_1.7.0-1ubuntu0.1.dsc 2720 SHA512:5dab232180e69e9cb38653acf891546a649ef9f04e33c499f51fd7d4045b13e8d4e0f261ed82fbc6f3b1ef5e1cee1154036746288c534a9934659a1aa81d89f6
'http://archive.ubuntu.com/ubuntu/pool/universe/libv/libva/libva_1.7.0.orig.tar.bz2' libva_1.7.0.orig.tar.bz2 788519 SHA512:b6b5317e875c9a4e17ec4f8d37383edf83a479aa4d9fa85bcf7debecae40efc56506905a0eefcc695364543436b3d80ed007eb45c6161fae01ee979ed82a3ca0
'http://archive.ubuntu.com/ubuntu/pool/universe/libv/libva/libva_1.7.0-1ubuntu0.1.debian.tar.xz' libva_1.7.0-1ubuntu0.1.debian.tar.xz 11764 SHA512:cbbaf8d47aa9b508f14d57e35d2329c2a7e6b390106fcacab930ea59b971cacc6364614f27bb868d3d7a1e21dfe084e27be8659d79382b6f585b967d91e8e0b6
```

### `dpkg` source package: `libvorbis=1.3.5-3ubuntu0.2`

Binary Packages:

- `libvorbis0a:amd64=1.3.5-3ubuntu0.2`
- `libvorbisenc2:amd64=1.3.5-3ubuntu0.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libvorbis=1.3.5-3ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvorbis/libvorbis_1.3.5-3ubuntu0.2.dsc' libvorbis_1.3.5-3ubuntu0.2.dsc 2377 SHA512:cb3c1e82a35258be2d779df23ffd0ce5cc9396c51ae67efe7bc9e7edc61a32a44047805902bb7f7113c436a8afddc24d0ab18f79273fbfde86d57c892b9c2e90
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvorbis/libvorbis_1.3.5.orig.tar.gz' libvorbis_1.3.5.orig.tar.gz 1638779 SHA512:6c729a227143abc744a779ec4d4ce9932cd1234e301b766cb5111c3894b7cd866f0267590c7864afd3841ac0d4ae2eb2386e8d14345b7c41c8ce35e996e3656c
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvorbis/libvorbis_1.3.5-3ubuntu0.2.debian.tar.xz' libvorbis_1.3.5-3ubuntu0.2.debian.tar.xz 12340 SHA512:7bf56fcf1b807acfec4ec8a9620815f9d8a3e4482e4d905fd6ec322c217787410eb25fd6037eb0231c92f6e41ae904f45105bfc8e6bed85950428557c996cfb3
```

### `dpkg` source package: `libvpx=1.5.0-2ubuntu1.1`

Binary Packages:

- `libvpx3:amd64=1.5.0-2ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libvpx3/copyright`)

- `Artistic`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libvpx=1.5.0-2ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvpx/libvpx_1.5.0-2ubuntu1.1.dsc' libvpx_1.5.0-2ubuntu1.1.dsc 2127 SHA512:c1a3dc4f0cf4a53d84fcbce42e1722a913f0e9307dcf5d477f5643205aad2a4255df1966482ad6fd6dc4b736b59b687d07fb04147652e916fd04856740e970ba
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvpx/libvpx_1.5.0.orig.tar.bz2' libvpx_1.5.0.orig.tar.bz2 1906571 SHA512:5a952aa53e539a130d316723d424fa02a8f42a450950d74a16d8abc5df569ba5559b3b09a32140b638d7a0cd54be1c7b0f8306ad286825bc1281f513bb665fc5
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvpx/libvpx_1.5.0-2ubuntu1.1.debian.tar.xz' libvpx_1.5.0-2ubuntu1.1.debian.tar.xz 17492 SHA512:f5a574cb893f19ede9238474dc8e6dac8b5bdb77ae45f732174e554c136d132a5750f10a9ca0b39974e23635db329a274a856211c0ef03c86228479bd4ca4140
```

### `dpkg` source package: `libwacom=0.22-1~ubuntu16.04.1`

Binary Packages:

- `libwacom-common=0.22-1~ubuntu16.04.1`
- `libwacom2:amd64=0.22-1~ubuntu16.04.1`

Licenses: (parsed from: `/usr/share/doc/libwacom-common/copyright`, `/usr/share/doc/libwacom2/copyright`)

- `MIT`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris libwacom=0.22-1~ubuntu16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwacom/libwacom_0.22-1%7eubuntu16.04.1.dsc' libwacom_0.22-1~ubuntu16.04.1.dsc 2317 SHA512:354dc0f6eab0d356e80f84de287771dcbe4a07739dab2a3cbc1987d306e1c67e0bb8b414d0523023141f55fa4306258194562c20f38e622089b397e9fdf1826d
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwacom/libwacom_0.22.orig.tar.bz2' libwacom_0.22.orig.tar.bz2 362844 SHA512:8f08d0aeeed05ea985f4ca88f2ae01b8a48f8ec0ed7989b89086700d4cea4da81451d1b2692d1f34a6025a63426e678986c527dae5aea070b49955b10e9a75e7
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwacom/libwacom_0.22-1%7eubuntu16.04.1.debian.tar.xz' libwacom_0.22-1~ubuntu16.04.1.debian.tar.xz 4044 SHA512:8d779a5b0545498e16cb894bdeadd018bafdd057df90dcdaed146dc320967991609fab2ab5d5230f58cc2d58502f7499b1f52e1fb6b840d3cf2af2300c3b0324
```

### `dpkg` source package: `libwebp=0.4.4-1`

Binary Packages:

- `libwebp-dev:amd64=0.4.4-1`
- `libwebp5:amd64=0.4.4-1`
- `libwebpdemux1:amd64=0.4.4-1`
- `libwebpmux1:amd64=0.4.4-1`

Licenses: (parsed from: `/usr/share/doc/libwebp-dev/copyright`, `/usr/share/doc/libwebp5/copyright`, `/usr/share/doc/libwebpdemux1/copyright`, `/usr/share/doc/libwebpmux1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris libwebp=0.4.4-1
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_0.4.4-1.dsc' libwebp_0.4.4-1.dsc 2077 SHA256:278509d0b7ec8507d8f23ec520b9eabd719727a1454d032c62d41641487a175b
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_0.4.4.orig.tar.gz' libwebp_0.4.4.orig.tar.gz 992491 SHA256:c65d34edb57338e331ba4d622227a2b3179444cfca17d02c34f1ead63f603e86
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_0.4.4-1.debian.tar.xz' libwebp_0.4.4-1.debian.tar.xz 6800 SHA256:edc5175cf73d87dfba9e1b7f35d54fd361a9866ab1682e6ca60229b501f17df5
```

### `dpkg` source package: `libx11=2:1.6.3-1ubuntu2.2`

Binary Packages:

- `libx11-6:amd64=2:1.6.3-1ubuntu2.2`
- `libx11-data=2:1.6.3-1ubuntu2.2`
- `libx11-dev:amd64=2:1.6.3-1ubuntu2.2`
- `libx11-xcb-dev:amd64=2:1.6.3-1ubuntu2.2`
- `libx11-xcb1:amd64=2:1.6.3-1ubuntu2.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libx11=2:1.6.3-1ubuntu2.2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.6.3-1ubuntu2.2.dsc' libx11_1.6.3-1ubuntu2.2.dsc 2619 SHA512:2c99d0db111ee13c5de8cab3955108c6602749f761f122dc3e629792dfc861636b114df4cbbd9f1158ebcbebfcd2bcc16579b41c5a9fc6a7df46642c2d4d77b7
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.6.3.orig.tar.gz' libx11_1.6.3.orig.tar.gz 3105928 SHA512:ee3bc82bb2d818dd25cffe1581260c301c24f25264da0a102ecbe897bcd6b2f203532caf8267d776725a6416ae04fc88f23ceecc0174198a66e49fb8447d3016
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.6.3-1ubuntu2.2.diff.gz' libx11_1.6.3-1ubuntu2.2.diff.gz 49296 SHA512:544f21bbbde2a329c4f75d0cc4c805ca4c3af5fbacb8a2abfac08ebfe98f795af0393e0f43494acf8ecc69b9b961e174ddca1285b8467dd2cec5d79a8fd40c07
```

### `dpkg` source package: `libxau=1:1.0.8-1`

Binary Packages:

- `libxau-dev:amd64=1:1.0.8-1`
- `libxau6:amd64=1:1.0.8-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxau=1:1.0.8-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.8-1.dsc' libxau_1.0.8-1.dsc 2040 SHA256:3ddb5f2c7a49ef7507b8d1e63e891238db877b4d1bb1c5486a3e3242c8523602
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.8.orig.tar.gz' libxau_1.0.8.orig.tar.gz 362044 SHA256:c343b4ef66d66a6b3e0e27aa46b37ad5cab0f11a5c565eafb4a1c7590bc71d7b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.8-1.diff.gz' libxau_1.0.8-1.diff.gz 15287 SHA256:b493479d6a52a0e753dd357ad8a4bc5c4296015f3f7b96cf546f7c5c5843cbb0
```

### `dpkg` source package: `libxaw=2:1.0.13-1`

Binary Packages:

- `libxaw7:amd64=2:1.0.13-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxaw=2:1.0.13-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxaw/libxaw_1.0.13-1.dsc' libxaw_1.0.13-1.dsc 2196 SHA256:9fdf48f9ff66c0889cda5030997fe919e5320e7988f32e20bb96602daa37e7f7
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxaw/libxaw_1.0.13.orig.tar.gz' libxaw_1.0.13.orig.tar.gz 848997 SHA256:7e74ac3e5f67def549722ff0333d6e6276b8becd9d89615cda011e71238ab694
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxaw/libxaw_1.0.13-1.diff.gz' libxaw_1.0.13-1.diff.gz 12643 SHA256:241f21ba0810d9d859a98ab60f100a366bc9e98cd946c736566a8ed1353a1bcc
```

### `dpkg` source package: `libxcb=1.11.1-1ubuntu1`

Binary Packages:

- `libxcb-dri2-0:amd64=1.11.1-1ubuntu1`
- `libxcb-dri2-0-dev:amd64=1.11.1-1ubuntu1`
- `libxcb-dri3-0:amd64=1.11.1-1ubuntu1`
- `libxcb-dri3-dev:amd64=1.11.1-1ubuntu1`
- `libxcb-glx0:amd64=1.11.1-1ubuntu1`
- `libxcb-glx0-dev:amd64=1.11.1-1ubuntu1`
- `libxcb-present-dev:amd64=1.11.1-1ubuntu1`
- `libxcb-present0:amd64=1.11.1-1ubuntu1`
- `libxcb-randr0:amd64=1.11.1-1ubuntu1`
- `libxcb-randr0-dev:amd64=1.11.1-1ubuntu1`
- `libxcb-render0:amd64=1.11.1-1ubuntu1`
- `libxcb-render0-dev:amd64=1.11.1-1ubuntu1`
- `libxcb-shape0:amd64=1.11.1-1ubuntu1`
- `libxcb-shape0-dev:amd64=1.11.1-1ubuntu1`
- `libxcb-shm0:amd64=1.11.1-1ubuntu1`
- `libxcb-sync-dev:amd64=1.11.1-1ubuntu1`
- `libxcb-sync1:amd64=1.11.1-1ubuntu1`
- `libxcb-xfixes0:amd64=1.11.1-1ubuntu1`
- `libxcb-xfixes0-dev:amd64=1.11.1-1ubuntu1`
- `libxcb-xkb1:amd64=1.11.1-1ubuntu1`
- `libxcb1:amd64=1.11.1-1ubuntu1`
- `libxcb1-dev:amd64=1.11.1-1ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcb=1.11.1-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.11.1-1ubuntu1.dsc' libxcb_1.11.1-1ubuntu1.dsc 6434 SHA256:d059cea4a732eb2600d829d023af89956b46d85399d90be122a887a6baf59a26
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.11.1.orig.tar.gz' libxcb_1.11.1.orig.tar.gz 633057 SHA256:660312d5e64d0a5800262488042c1707a0261fa01a759bad265b1b75dd4844dd
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.11.1-1ubuntu1.diff.gz' libxcb_1.11.1-1ubuntu1.diff.gz 25030 SHA256:017d57e8d555e9f003b1d1ef394b81eddecf9029b6b7e582400dd51e17d63401
```

### `dpkg` source package: `libxdamage=1:1.1.4-2`

Binary Packages:

- `libxdamage-dev:amd64=1:1.1.4-2`
- `libxdamage1:amd64=1:1.1.4-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxdamage=1:1.1.4-2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdamage/libxdamage_1.1.4-2.dsc' libxdamage_1.1.4-2.dsc 2127 SHA256:43cbefb5c69f51d89a11cf84718fe0c42058fc9b6ec7c0076e7c37b9e829feb5
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdamage/libxdamage_1.1.4.orig.tar.gz' libxdamage_1.1.4.orig.tar.gz 339060 SHA256:4bb3e9d917f5f593df2277d452926ee6ad96de7b7cd1017cbcf4579fe5d3442b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdamage/libxdamage_1.1.4-2.diff.gz' libxdamage_1.1.4-2.diff.gz 14930 SHA256:d238c1a266c30cd124ede7e6c86635bfaa108fa552c4a82919101cebf22670e9
```

### `dpkg` source package: `libxdmcp=1:1.1.2-1.1`

Binary Packages:

- `libxdmcp-dev:amd64=1:1.1.2-1.1`
- `libxdmcp6:amd64=1:1.1.2-1.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxdmcp=1:1.1.2-1.1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.2-1.1.dsc' libxdmcp_1.1.2-1.1.dsc 2098 SHA256:605175ee859f00ace43a4c35dc2d7c60971c0e1f21769b508b5bce2303979436
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.2.orig.tar.gz' libxdmcp_1.1.2.orig.tar.gz 404115 SHA256:6f7c7e491a23035a26284d247779174dedc67e34e93cc3548b648ffdb6fc57c0
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.2-1.1.diff.gz' libxdmcp_1.1.2-1.1.diff.gz 17944 SHA256:d764e8d251d06c9e5a50783cee393c621b7288bc3369d158b6a1d2e4372f3c9e
```

### `dpkg` source package: `libxext=2:1.3.3-1`

Binary Packages:

- `libxext-dev:amd64=2:1.3.3-1`
- `libxext6:amd64=2:1.3.3-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxext=2:1.3.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.3-1.dsc' libxext_1.3.3-1.dsc 2221 SHA256:47106df75b8f3db1e43803e8e94a2e966cd23f7daa8cfc393af739a9e33ef955
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.3.orig.tar.gz' libxext_1.3.3.orig.tar.gz 468441 SHA256:eb0b88050491fef4716da4b06a4d92b4fc9e76f880d6310b2157df604342cfe5
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.3-1.diff.gz' libxext_1.3.3-1.diff.gz 20763 SHA256:e294a4884eb68acbd151312cb0c973aad63268b637b15ccf1911864b7197557e
```

### `dpkg` source package: `libxfixes=1:5.0.1-2`

Binary Packages:

- `libxfixes-dev:amd64=1:5.0.1-2`
- `libxfixes3:amd64=1:5.0.1-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxfixes=1:5.0.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxfixes/libxfixes_5.0.1-2.dsc' libxfixes_5.0.1-2.dsc 2160 SHA256:1569c87546b8d59ee7f60b395b10ea1a6f9d52418aed9d7cf2d633b14a1f1f25
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxfixes/libxfixes_5.0.1.orig.tar.gz' libxfixes_5.0.1.orig.tar.gz 352057 SHA256:81b692856c0e7ab2778a34a32aa6b3f455b9b58cf388f009cba872ed933ae9c0
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxfixes/libxfixes_5.0.1-2.diff.gz' libxfixes_5.0.1-2.diff.gz 6564 SHA256:df62260744ac03e8354b004685d439c32588e826c9dc570b6109070447601ce0
```

### `dpkg` source package: `libxi=2:1.7.6-1`

Binary Packages:

- `libxi-dev=2:1.7.6-1`
- `libxi6:amd64=2:1.7.6-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxi=2:1.7.6-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxi/libxi_1.7.6-1.dsc' libxi_1.7.6-1.dsc 2269 SHA256:b0d205346b418dbfbdd36dadc164e6050bcfa5cd691f190c9aa0ac91d2a0e5e8
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxi/libxi_1.7.6.orig.tar.gz' libxi_1.7.6.orig.tar.gz 601628 SHA256:4e88fa7decd287e58140ea72238f8d54e4791de302938c83695fc0c9ac102b7e
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxi/libxi_1.7.6-1.diff.gz' libxi_1.7.6-1.diff.gz 10149 SHA256:ae61f11cd06263d7a4caf25835fdd8ba4e8ad319781acb1e0cd177eab82ce8a7
```

### `dpkg` source package: `libxkbcommon=0.5.0-1ubuntu2.1`

Binary Packages:

- `libxkbcommon-dev=0.5.0-1ubuntu2.1`
- `libxkbcommon-x11-0:amd64=0.5.0-1ubuntu2.1`
- `libxkbcommon0:amd64=0.5.0-1ubuntu2.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxkbcommon=0.5.0-1ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxkbcommon/libxkbcommon_0.5.0-1ubuntu2.1.dsc' libxkbcommon_0.5.0-1ubuntu2.1.dsc 2456 SHA512:213521d4024523007c1e1bedd9db4da556be949520fcb2ee76f6769cb4550b0b64c05699a2e50569b651d9a391a207764466441ee04520a4d85131805db9a253
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxkbcommon/libxkbcommon_0.5.0.orig.tar.gz' libxkbcommon_0.5.0.orig.tar.gz 575722 SHA512:826f0cf74d1503a1b894ed2071be1387c6b20f46c986ad7335e62e2ba190bf190bd3ce18aa4c63e8b1f6bbe3e31e8a35b12e7e921044e4810f0da05d2f46a984
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxkbcommon/libxkbcommon_0.5.0-1ubuntu2.1.diff.gz' libxkbcommon_0.5.0-1ubuntu2.1.diff.gz 189015 SHA512:09a8c45470ae855921ff2aacd545cf547f49c126fec82569a8b56ad885dcf8077e9f6c16db1aa047f9354f76527868d39ba03973d7e6e82928db82434ab89356
```

### `dpkg` source package: `libxml2=2.9.3+dfsg1-1ubuntu0.7`

Binary Packages:

- `libxml2:amd64=2.9.3+dfsg1-1ubuntu0.7`
- `libxml2-dev:amd64=2.9.3+dfsg1-1ubuntu0.7`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxml2=2.9.3+dfsg1-1ubuntu0.7
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.3%2bdfsg1-1ubuntu0.7.dsc' libxml2_2.9.3+dfsg1-1ubuntu0.7.dsc 2756 SHA512:1a2083bfc7196c9bf9074cbfc1c8d4adf22469c8b3a4983cdaa30e8b9e8a4a2c36015c58bb1eb5a7df39fd07b9ad11ea304cd64337af75ef08850f2ef0c384c8
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.3%2bdfsg1.orig.tar.xz' libxml2_2.9.3+dfsg1.orig.tar.xz 2475440 SHA512:e6766405ce0dd462679e9097a83a782440315ca685a95950725f4fe9e51fd1f83928f9d690ab7ce46c2f491b793c9bb7917081d3e2bb8811409c75727af680a7
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.3%2bdfsg1-1ubuntu0.7.debian.tar.xz' libxml2_2.9.3+dfsg1-1ubuntu0.7.debian.tar.xz 57976 SHA512:4c4ece08dd2d7b8ffcd6964fbeebdda3854c0c2ce46781b4e96c47e9130f829da1b3e7c5036e3f25d61c5f099f76fe2991f1e12e6404ee582ad2ea3069c4c6f6
```

### `dpkg` source package: `libxmu=2:1.1.2-2`

Binary Packages:

- `libxmu-dev:amd64=2:1.1.2-2`
- `libxmu-headers=2:1.1.2-2`
- `libxmu6:amd64=2:1.1.2-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxmu=2:1.1.2-2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxmu/libxmu_1.1.2-2.dsc' libxmu_1.1.2-2.dsc 2291 SHA256:5e3333a3fe9dbed9d0df596d964b94aa1d45d56a0475a8b66b3f69d60ab29504
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxmu/libxmu_1.1.2.orig.tar.gz' libxmu_1.1.2.orig.tar.gz 469019 SHA256:e5fd4bacef068f9509b8226017205040e38d3fba8d2de55037200e7176c13dba
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxmu/libxmu_1.1.2-2.diff.gz' libxmu_1.1.2-2.diff.gz 6054 SHA256:c01cbd09a15e71c0418d2689a0fd0b946bf4e40d1dbe9f594beb00a4818f0740
```

### `dpkg` source package: `libxpm=1:3.5.11-1ubuntu0.16.04.1`

Binary Packages:

- `libxpm4:amd64=1:3.5.11-1ubuntu0.16.04.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxpm=1:3.5.11-1ubuntu0.16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxpm/libxpm_3.5.11-1ubuntu0.16.04.1.dsc' libxpm_3.5.11-1ubuntu0.16.04.1.dsc 2251 SHA512:1ab11de45725f56da753574d658675eef2692c9595787dfce1f207802fe7269aa930553e1344cbcd5a6ed707df587e78c2fa40123a4550f0361a499a899ddc66
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxpm/libxpm_3.5.11.orig.tar.gz' libxpm_3.5.11.orig.tar.gz 527020 SHA512:e7e7288ecf0b7bb96b08d95b396ffc76ee9c00df83fb51a1eba9f8bf0fc4fb48f763a0946603c8290e262d0c4f39f6e8f9235bd8308e6bfbe1cbf8615ec310eb
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxpm/libxpm_3.5.11-1ubuntu0.16.04.1.diff.gz' libxpm_3.5.11-1ubuntu0.16.04.1.diff.gz 16815 SHA512:830a2653d3bd2e0c057ab6ac2eed29cbd5b7c21df1dbdf0a9129b0b15be0d23df85316efd02fbf6fdc3e55f9a96c609ef76d5458d1fa3934a125b9290f1ae77a
```

### `dpkg` source package: `libxrandr=2:1.5.0-1`

Binary Packages:

- `libxrandr2:amd64=2:1.5.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrandr=2:1.5.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrandr/libxrandr_1.5.0-1.dsc' libxrandr_1.5.0-1.dsc 2125 SHA256:e1fe17d69676e15108ff6c6c3eedc2c3c72fef8a9dd9bde1ac9f4f4467efdfd1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrandr/libxrandr_1.5.0.orig.tar.gz' libxrandr_1.5.0.orig.tar.gz 382147 SHA256:1b594a149e6b124aab7149446f2fd886461e2935eca8dca43fe83a70cf8ec451
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrandr/libxrandr_1.5.0-1.diff.gz' libxrandr_1.5.0-1.diff.gz 13507 SHA256:f04e5dccdee7db84d534aa4423b927710fbffe513c0ec632f92129a70323334e
```

### `dpkg` source package: `libxrender=1:0.9.9-0ubuntu1`

Binary Packages:

- `libxrender1:amd64=1:0.9.9-0ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrender=1:0.9.9-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.9-0ubuntu1.dsc' libxrender_0.9.9-0ubuntu1.dsc 1562 SHA256:3b9304baa99c34df694a673aeffc1e44d7564f1e0efa71ac542435afcfd0f334
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.9.orig.tar.gz' libxrender_0.9.9.orig.tar.gz 371568 SHA256:beeac64ff8d225f775019eb7c688782dee9f4cc7b412a65538f8dde7be4e90fe
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.9-0ubuntu1.diff.gz' libxrender_0.9.9-0ubuntu1.diff.gz 18873 SHA256:b02577c21b37a46cd0b554ab25ad4bfd49545e02774b4ab2b80c2deae93abd91
```

### `dpkg` source package: `libxshmfence=1.2-1`

Binary Packages:

- `libxshmfence-dev:amd64=1.2-1`
- `libxshmfence1:amd64=1.2-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxshmfence=1.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxshmfence/libxshmfence_1.2-1.dsc' libxshmfence_1.2-1.dsc 2128 SHA256:85a28d2f6211ebbf0a115d0f72d874cce179178958bcb2a77094e3499464b25d
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxshmfence/libxshmfence_1.2.orig.tar.gz' libxshmfence_1.2.orig.tar.gz 355356 SHA256:58467a0e36fc4ec749dc55f81a4ab3b822c82b6dfb7d36bdb6b28c9fd2a5ccaf
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxshmfence/libxshmfence_1.2-1.diff.gz' libxshmfence_1.2-1.diff.gz 13284 SHA256:65db7e07c5c5b12d0b1f93cdb0c4e3e448429240044247ea2f64a89c0cce5f8e
```

### `dpkg` source package: `libxt=1:1.1.5-0ubuntu1`

Binary Packages:

- `libxt-dev:amd64=1:1.1.5-0ubuntu1`
- `libxt6:amd64=1:1.1.5-0ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxt=1:1.1.5-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.1.5-0ubuntu1.dsc' libxt_1.1.5-0ubuntu1.dsc 1535 SHA256:26ea43fe0b9ed6612a2303b5fb0f84642ba9540a4a1bd18ccd84f17d17ac7e30
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.1.5.orig.tar.gz' libxt_1.1.5.orig.tar.gz 962169 SHA256:b59bee38a9935565fa49dc1bfe84cb30173e2e07e1dcdf801430d4b54eb0caa3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.1.5-0ubuntu1.diff.gz' libxt_1.1.5-0ubuntu1.diff.gz 11392 SHA256:e4945799551b88b8a8e62487384adc04a4c9cc7e1af8fa156d55582f6315874a
```

### `dpkg` source package: `libxv=2:1.0.10-1`

Binary Packages:

- `libxv1:amd64=2:1.0.10-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxv=2:1.0.10-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxv/libxv_1.0.10-1.dsc' libxv_1.0.10-1.dsc 1977 SHA256:488cadaa5f248215bf6c617ccd0b00381cc78f4f02aee4d758e2e041e24b6c4a
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxv/libxv_1.0.10.orig.tar.gz' libxv_1.0.10.orig.tar.gz 386940 SHA256:89a664928b625558268de81c633e300948b3752b0593453d7815f8775bab5293
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxv/libxv_1.0.10-1.diff.gz' libxv_1.0.10-1.diff.gz 15227 SHA256:a2ab595bcd2394cd224852d0e679fdec911d7947e33ca6c6a800e93bbf9bd446
```

### `dpkg` source package: `libxxf86vm=1:1.1.4-1`

Binary Packages:

- `libxxf86vm-dev:amd64=1:1.1.4-1`
- `libxxf86vm1:amd64=1:1.1.4-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxxf86vm=1:1.1.4-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxxf86vm/libxxf86vm_1.1.4-1.dsc' libxxf86vm_1.1.4-1.dsc 2078 SHA256:5a3aded030a415b0d6c201d2b9d3af36f241dc981f10052fd4c2b56d59597838
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxxf86vm/libxxf86vm_1.1.4.orig.tar.gz' libxxf86vm_1.1.4.orig.tar.gz 363146 SHA256:5108553c378a25688dcb57dca383664c36e293d60b1505815f67980ba9318a99
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxxf86vm/libxxf86vm_1.1.4-1.diff.gz' libxxf86vm_1.1.4-1.diff.gz 8040 SHA256:e0f11739d28c7a4475820ebda26e6f29e6cfa80b99a3513c075471132c81725b
```

### `dpkg` source package: `libyaml=0.1.6-3`

Binary Packages:

- `libyaml-0-2:amd64=0.1.6-3`
- `libyaml-dev:amd64=0.1.6-3`

Licenses: (parsed from: `/usr/share/doc/libyaml-0-2/copyright`, `/usr/share/doc/libyaml-dev/copyright`)

- `Expat`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris libyaml=0.1.6-3
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.6-3.dsc' libyaml_0.1.6-3.dsc 1893 SHA256:ed5bc299d3bcc0b038206f8780639d4682e65f521dff571b9336e2f8626d0011
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.6.orig.tar.gz' libyaml_0.1.6.orig.tar.gz 503012 SHA256:7da6971b4bd08a986dd2a61353bc422362bd0edcc67d7ebaac68c95f74182749
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.6-3.debian.tar.xz' libyaml_0.1.6-3.debian.tar.xz 4268 SHA256:fd567e6918903833e5c4f1f87254c550eca07c2bba1ccbe6031da33243cf4297
```

### `dpkg` source package: `libzip=1.0.1-0ubuntu1`

Binary Packages:

- `libzip-dev:amd64=1.0.1-0ubuntu1`
- `libzip4:amd64=1.0.1-0ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libzip-dev/copyright`, `/usr/share/doc/libzip4/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris libzip=1.0.1-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/universe/libz/libzip/libzip_1.0.1-0ubuntu1.dsc' libzip_1.0.1-0ubuntu1.dsc 1873 SHA256:de3b583625ac643ee635f111ef1f51d268c90def8bc05b430652b89903e1a88a
'http://archive.ubuntu.com/ubuntu/pool/universe/libz/libzip/libzip_1.0.1.orig.tar.gz' libzip_1.0.1.orig.tar.gz 659452 SHA256:0cef914d8f5105ccac44484f61413daa08d7204758e77240a4d20ebf967f3d49
'http://archive.ubuntu.com/ubuntu/pool/universe/libz/libzip/libzip_1.0.1-0ubuntu1.debian.tar.xz' libzip_1.0.1-0ubuntu1.debian.tar.xz 4564 SHA256:2e03e8ec880901fbf6d8a3c3f31b60c88ac0aa0b264890daf3a250f996b60d44
```

### `dpkg` source package: `libzstd=1.3.1+dfsg-1~ubuntu0.16.04.1`

Binary Packages:

- `libzstd1=1.3.1+dfsg-1~ubuntu0.16.04.1`

Licenses: (parsed from: `/usr/share/doc/libzstd1/copyright`)

- `BSD-3-clause-with-patent-grant`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris libzstd=1.3.1+dfsg-1~ubuntu0.16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.3.1%2bdfsg-1%7eubuntu0.16.04.1.dsc' libzstd_1.3.1+dfsg-1~ubuntu0.16.04.1.dsc 2224 SHA512:c0a076cb4d436a100bc9fa2ff49bdd198242c9e1bf886e7b315ad81e345d4aa21b4058001080c4987bc2d5ce1a462f43205bb9b0a6970b52b71e60c36396fc00
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.3.1%2bdfsg.orig.tar.xz' libzstd_1.3.1+dfsg.orig.tar.xz 1016592 SHA512:a3e8b9592797aa3e62fb006a0b8d41c7eb1a7dd12027830d9b8664e6d2b1189233a1563d6bc006256e52fb18203afb5e05b861372524c4393e255cd55edfb19b
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.3.1%2bdfsg-1%7eubuntu0.16.04.1.debian.tar.xz' libzstd_1.3.1+dfsg-1~ubuntu0.16.04.1.debian.tar.xz 10024 SHA512:d22b513ad3be36fca335fd67b302fb3a08bcfc2fd45527a8592ff56060c15f89061f53a208ed8ca4ea4f10c0b7bb742e9411ad07dd3aa0803c959871f1c6fde3
```

### `dpkg` source package: `linux=4.4.0-210.242`

Binary Packages:

- `linux-libc-dev:amd64=4.4.0-210.242`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `GPL-2`
- `redpine-signals`

Source:

```console
$ apt-get source -qq --print-uris linux=4.4.0-210.242
'http://archive.ubuntu.com/ubuntu/pool/main/l/linux/linux_4.4.0-210.242.dsc' linux_4.4.0-210.242.dsc 11941 SHA512:f3fff30bea1e367d7ff1f20ef93d7feca3792ab8ab33881758c4ec4a04859e180c84d83fc4cbd068e26fec9ca43afdb086aacb0f5b1972dabcdf0a8dd17eec58
'http://archive.ubuntu.com/ubuntu/pool/main/l/linux/linux_4.4.0.orig.tar.gz' linux_4.4.0.orig.tar.gz 132860730 SHA512:28ef89b62f663f2d90b58274799b7ebeff04699f08d0b83f650b0de179d4ef354450c81ecda07522b493c43d5eb2d530fa0f552a2794d48f84878e05efa39cc3
'http://archive.ubuntu.com/ubuntu/pool/main/l/linux/linux_4.4.0-210.242.diff.gz' linux_4.4.0-210.242.diff.gz 17092729 SHA512:715345ae2321a7012d6297b159bc700d02e376baeb7137a69dd07b5db91bc99d49c30925094b1c12f9b2ac702dead8e381614e743a8a0d08866efce7b7c01fde
```

### `dpkg` source package: `llvm-toolchain-6.0=1:6.0-1ubuntu2~16.04.1`

Binary Packages:

- `libllvm6.0:amd64=1:6.0-1ubuntu2~16.04.1`

Licenses: (parsed from: `/usr/share/doc/libllvm6.0/copyright`)

- `ARM`
- `Apple`
- `BSD-3-Clause`
- `BSD-3-clause`
- `Expat`
- `LLVM`
- `MIT`
- `NCSA`
- `Polly`
- `Python`
- `U-OF-I-BSD-LIKE`
- `public-domain`
- `solar-public-domain`

Source:

```console
$ apt-get source -qq --print-uris llvm-toolchain-6.0=1:6.0-1ubuntu2~16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/l/llvm-toolchain-6.0/llvm-toolchain-6.0_6.0-1ubuntu2%7e16.04.1.dsc' llvm-toolchain-6.0_6.0-1ubuntu2~16.04.1.dsc 6967 SHA512:d8adfb5a3568d149cc74f37091fd9c986cbe388af373c1dfd40eb663b9d1adbce14b185a71519c743543a53e440974c93fbb5112fdbed6f3a832b2f7e8100064
'http://archive.ubuntu.com/ubuntu/pool/main/l/llvm-toolchain-6.0/llvm-toolchain-6.0_6.0.orig-clang-tools-extra.tar.bz2' llvm-toolchain-6.0_6.0.orig-clang-tools-extra.tar.bz2 808825 SHA512:59bcc4d379115cbf2effa912d4a475a03809832e109dd86df661db3f2dc5915def1c6379a61c389d0b744a1e6fc0365a390ac7d793258343a3e9b9aeec3e25c3
'http://archive.ubuntu.com/ubuntu/pool/main/l/llvm-toolchain-6.0/llvm-toolchain-6.0_6.0.orig-clang.tar.bz2' llvm-toolchain-6.0_6.0.orig-clang.tar.bz2 13228782 SHA512:5f1c5e4258b8f4132bf2e40878862ee9108381c0c50b1e3ace6c6f5287a83c6325896815ed69f0dc01db4a4dbe0c0d68f045770fd2ad64e9d055775ed3dc8146
'http://archive.ubuntu.com/ubuntu/pool/main/l/llvm-toolchain-6.0/llvm-toolchain-6.0_6.0.orig-compiler-rt.tar.bz2' llvm-toolchain-6.0_6.0.orig-compiler-rt.tar.bz2 2145520 SHA512:a9cc0688a105a6204781297ee4d3fa57b14a018a9aa3a8a83f67be823ac83ffa5f396a8f591cb0a9810abd98b342799a595a324f1197b69a329db54aa02a3a3d
'http://archive.ubuntu.com/ubuntu/pool/main/l/llvm-toolchain-6.0/llvm-toolchain-6.0_6.0.orig-lld.tar.bz2' llvm-toolchain-6.0_6.0.orig-lld.tar.bz2 853733 SHA512:376cf5657e06e12e4e3bf91bd788b4028e8b2e09a4a2a87024284e3ab09abd2d0598d5b5e3500d73dbb8b97ba3d5843a826419b44838350b5d56b8305ab67fae
'http://archive.ubuntu.com/ubuntu/pool/main/l/llvm-toolchain-6.0/llvm-toolchain-6.0_6.0.orig-lldb.tar.bz2' llvm-toolchain-6.0_6.0.orig-lldb.tar.bz2 11238461 SHA512:4fa69c8f1ff35951440536accf2b4218e984d03d9d75007715a86270d417e7bf1dab8ed2604b03c3eefb8addbce7e499c07c53ebd6f0ead5e4ae9d83f212b753
'http://archive.ubuntu.com/ubuntu/pool/main/l/llvm-toolchain-6.0/llvm-toolchain-6.0_6.0.orig-polly.tar.bz2' llvm-toolchain-6.0_6.0.orig-polly.tar.bz2 3253870 SHA512:0099b77390d8cd04adf6609b54f30bfa4352bed994f2aa6ced785a364fa3fdf548c0cf4540959c90d8131c2eef256c204614fd5907c762caaa6cab1a4800028d
'http://archive.ubuntu.com/ubuntu/pool/main/l/llvm-toolchain-6.0/llvm-toolchain-6.0_6.0.orig.tar.bz2' llvm-toolchain-6.0_6.0.orig.tar.bz2 29853313 SHA512:8d948ee0bd3e4c53806f6b267832dc6b7729a36e88f1131c019fcb849f3a4b7328e8ea4333921eb85f91a21be48f9d422b4c17a630f46552c250c401180a0200
'http://archive.ubuntu.com/ubuntu/pool/main/l/llvm-toolchain-6.0/llvm-toolchain-6.0_6.0-1ubuntu2%7e16.04.1.debian.tar.xz' llvm-toolchain-6.0_6.0-1ubuntu2~16.04.1.debian.tar.xz 70280 SHA512:8b75a9dda27d97e9865077582060a0a9ef8336dc3b897c0dab8d43d93d11d7ec2346343981b57c600f70906339079f7b89ecfee3b87c034ee6040354df6b7d72
```

### `dpkg` source package: `lm-sensors=1:3.4.0-2`

Binary Packages:

- `libsensors4:amd64=1:3.4.0-2`

Licenses: (parsed from: `/usr/share/doc/libsensors4/copyright`)

- `GPL`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lm-sensors=1:3.4.0-2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lm-sensors/lm-sensors_3.4.0-2.dsc' lm-sensors_3.4.0-2.dsc 1964 SHA256:bd3cecc8bbef17a0213d1ec38bdaca3a1cafae93cab116d17b5d7eec9a62d60f
'http://archive.ubuntu.com/ubuntu/pool/main/l/lm-sensors/lm-sensors_3.4.0.orig.tar.bz2' lm-sensors_3.4.0.orig.tar.bz2 175802 SHA256:e0579016081a262dd23eafe1d22b41ebde78921e73a1dcef71e05e424340061f
'http://archive.ubuntu.com/ubuntu/pool/main/l/lm-sensors/lm-sensors_3.4.0-2.debian.tar.xz' lm-sensors_3.4.0-2.debian.tar.xz 28484 SHA256:efdb87b87c37be8a1eb478d78046838c3ab0178ffad23dce3f159fbf89e24d9c
```

### `dpkg` source package: `lsb=9.20160110ubuntu0.2`

Binary Packages:

- `lsb-base=9.20160110ubuntu0.2`
- `lsb-release=9.20160110ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`, `/usr/share/doc/lsb-release/copyright`)

- `BSD-3-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lsb=9.20160110ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb_9.20160110ubuntu0.2.dsc' lsb_9.20160110ubuntu0.2.dsc 2160 SHA512:27e7a82161c88850592a04d1d326859723ac1b4b897f006c1e66f7ebe6d325907da5566bc877d6e4edcdeb55328a3960952fc4286a2827100b119c73553e9e89
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb_9.20160110ubuntu0.2.tar.xz' lsb_9.20160110ubuntu0.2.tar.xz 57832 SHA512:b794cdbba25bf9079eb17f2b695490a8b35d10afb90ff5ca6f5c7188c1f9a80fb3d2b59749f87c88188733a05563cf81964e6a66beed4def020d7218aa20a253
```

### `dpkg` source package: `lvm2=2.02.133-1ubuntu10`

Binary Packages:

- `libdevmapper1.02.1:amd64=2:1.02.110-1ubuntu10`

Licenses: (parsed from: `/usr/share/doc/libdevmapper1.02.1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris lvm2=2.02.133-1ubuntu10
'http://archive.ubuntu.com/ubuntu/pool/main/l/lvm2/lvm2_2.02.133-1ubuntu10.dsc' lvm2_2.02.133-1ubuntu10.dsc 3151 SHA256:49b49c886da1f5b5d078875a025ee5f37d049e77c3abe49568b3b6fd7babb5de
'http://archive.ubuntu.com/ubuntu/pool/main/l/lvm2/lvm2_2.02.133.orig.tar.xz' lvm2_2.02.133.orig.tar.xz 1356636 SHA256:79c6fc85f28b6af1870d7e3b06d8339270746a5028f47a5b412f4394156ed846
'http://archive.ubuntu.com/ubuntu/pool/main/l/lvm2/lvm2_2.02.133-1ubuntu10.debian.tar.xz' lvm2_2.02.133-1ubuntu10.debian.tar.xz 42320 SHA256:54f13369a8576c98472dcc9121e3ac4fd69f3af02d2aa4a7aeb0224e87176d1e
```

### `dpkg` source package: `lz4=0.0~r131-2ubuntu2`

Binary Packages:

- `liblz4-1:amd64=0.0~r131-2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/liblz4-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lz4=0.0~r131-2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_0.0%7er131-2ubuntu2.dsc' lz4_0.0~r131-2ubuntu2.dsc 2007 SHA256:123f23834f83a4dca6d74a611cc0294491bd339d2e0be04d65783d6debbccc02
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_0.0%7er131.orig.tar.gz' lz4_0.0~r131.orig.tar.gz 133784 SHA256:9d4d00614d6b9dec3114b33d1224b6262b99ace24434c53487a0c8fd0b18cfed
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_0.0%7er131-2ubuntu2.debian.tar.xz' lz4_0.0~r131-2ubuntu2.debian.tar.xz 5224 SHA256:c0afb4a440b1e7b803e2d9dcf616be539c1d16baebc681cdf837000e4c5077b7
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

### `dpkg` source package: `make-dfsg=4.1-6`

Binary Packages:

- `make=4.1-6`

Licenses: (parsed from: `/usr/share/doc/make/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris make-dfsg=4.1-6
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.1-6.dsc' make-dfsg_4.1-6.dsc 1840 SHA256:c28066ebe2002e4791ac3a4e808d8a5f0bed75eff8e0462449a08ab767153361
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.1.orig.tar.gz' make-dfsg_4.1.orig.tar.gz 1350231 SHA256:b3ed04fb6718289e4a430afbe2df6ecba9177aad9f6d09aaf38e5409262ca8a3
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.1-6.diff.gz' make-dfsg_4.1-6.diff.gz 42552 SHA256:b647e6961a9707ea009de85fb65f8156143deab139be1636a200abdffe5e91c3
```

### `dpkg` source package: `makedev=2.3.1-93ubuntu2~ubuntu16.04.1`

Binary Packages:

- `makedev=2.3.1-93ubuntu2~ubuntu16.04.1`

Licenses: (parsed from: `/usr/share/doc/makedev/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris makedev=2.3.1-93ubuntu2~ubuntu16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/m/makedev/makedev_2.3.1-93ubuntu2%7eubuntu16.04.1.dsc' makedev_2.3.1-93ubuntu2~ubuntu16.04.1.dsc 1855 SHA512:af060ae534668d751781e0fe8577a0250d62b6a5a7a6849b617a3b1fbc378899950fca46dbd9937288bc94c7b66c42f1fc7ef4400ad3dc6031d3fb2e36addb00
'http://archive.ubuntu.com/ubuntu/pool/main/m/makedev/makedev_2.3.1.orig.tar.gz' makedev_2.3.1.orig.tar.gz 9924 SHA512:640df51e214dfa3be1b7425fb9cd6477f1b4da57441a58243913aae12e1b2c0b7ef35906384cb79975fda4f6c747534f9f72dde59b742ac3bc26c87cb69f65f5
'http://archive.ubuntu.com/ubuntu/pool/main/m/makedev/makedev_2.3.1-93ubuntu2%7eubuntu16.04.1.diff.gz' makedev_2.3.1-93ubuntu2~ubuntu16.04.1.diff.gz 50340 SHA512:384886ff3f0792cf67cdf5126af5f8d4dbf31ede75fdb339c1b53fdd15e7f0abc91d53297a3c5bf908e2c3c21be51f0766a37da51b92f5c8f7a5e6d81c916912
```

### `dpkg` source package: `mawk=1.3.3-17ubuntu2`

Binary Packages:

- `mawk=1.3.3-17ubuntu2`

Licenses: (parsed from: `/usr/share/doc/mawk/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris mawk=1.3.3-17ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.3-17ubuntu2.dsc' mawk_1.3.3-17ubuntu2.dsc 1843 SHA256:d9058945d45b0e9ee5dd1c9c2e16d8f28b96d5c2e777f743594096fa2a5e277b
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.3.orig.tar.gz' mawk_1.3.3.orig.tar.gz 209942 SHA256:32649c46063d4ef0777a12ae6e9a26bcc920833d54e1abca7edb8d37481e7485
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.3-17ubuntu2.diff.gz' mawk_1.3.3-17ubuntu2.diff.gz 63882 SHA256:670103046767474be29e80f2143dc67e3d0b958972f5942c3df94883f978eded
```

### `dpkg` source package: `mesa=18.0.5-0ubuntu0~16.04.1`

Binary Packages:

- `libegl1-mesa:amd64=18.0.5-0ubuntu0~16.04.1`
- `libegl1-mesa-dev:amd64=18.0.5-0ubuntu0~16.04.1`
- `libgbm1:amd64=18.0.5-0ubuntu0~16.04.1`
- `libgl1-mesa-dev:amd64=18.0.5-0ubuntu0~16.04.1`
- `libgl1-mesa-dri:amd64=18.0.5-0ubuntu0~16.04.1`
- `libgl1-mesa-glx:amd64=18.0.5-0ubuntu0~16.04.1`
- `libglapi-mesa:amd64=18.0.5-0ubuntu0~16.04.1`
- `libgles2-mesa:amd64=18.0.5-0ubuntu0~16.04.1`
- `libgles2-mesa-dev:amd64=18.0.5-0ubuntu0~16.04.1`
- `libwayland-egl1-mesa:amd64=18.0.5-0ubuntu0~16.04.1`
- `mesa-common-dev:amd64=18.0.5-0ubuntu0~16.04.1`

Licenses: (parsed from: `/usr/share/doc/libegl1-mesa/copyright`, `/usr/share/doc/libegl1-mesa-dev/copyright`, `/usr/share/doc/libgbm1/copyright`, `/usr/share/doc/libgl1-mesa-dev/copyright`, `/usr/share/doc/libgl1-mesa-dri/copyright`, `/usr/share/doc/libgl1-mesa-glx/copyright`, `/usr/share/doc/libglapi-mesa/copyright`, `/usr/share/doc/libgles2-mesa/copyright`, `/usr/share/doc/libgles2-mesa-dev/copyright`, `/usr/share/doc/libwayland-egl1-mesa/copyright`, `/usr/share/doc/mesa-common-dev/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris mesa=18.0.5-0ubuntu0~16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mesa/mesa_18.0.5-0ubuntu0%7e16.04.1.dsc' mesa_18.0.5-0ubuntu0~16.04.1.dsc 5261 SHA512:5ecfdbb5e84056c2560394dcb894c5e4a074a616d0942a08851c6d824bc546d909e0575d027b09f838c5cfee8bb052519d6f93947dd0502cda0a7355536078a7
'http://archive.ubuntu.com/ubuntu/pool/main/m/mesa/mesa_18.0.5.orig.tar.gz' mesa_18.0.5.orig.tar.gz 19123780 SHA512:a8fff267edf1b34a3f27e5d579200105039a9f64de561a84343a9609d50d2f30d4eba31b2f862fbee9f73157f2061bc37ea1b8ecd75b556dae03bcb40f0a6b6b
'http://archive.ubuntu.com/ubuntu/pool/main/m/mesa/mesa_18.0.5.orig.tar.gz.asc' mesa_18.0.5.orig.tar.gz.asc 879 SHA512:e8064d859e71f214114a24fcc00238cda4a02f5a86f04f0dbcf52d0831a45a9f712e70d94a12cd57fb0efff2df26274d756240b5e010c9d0da1540561d583274
'http://archive.ubuntu.com/ubuntu/pool/main/m/mesa/mesa_18.0.5-0ubuntu0%7e16.04.1.diff.gz' mesa_18.0.5-0ubuntu0~16.04.1.diff.gz 144399 SHA512:f9c0271b842bbd0e35ca04eac5f94d615ae9d5b22bf737db4c575985f1918ba08f885a1412f46b0daa96ef53b80ea4ae2b7f05a619e2021db916fafddb24932b
```

### `dpkg` source package: `mime-support=3.59ubuntu1`

Binary Packages:

- `mime-support=3.59ubuntu1`

Licenses: (parsed from: `/usr/share/doc/mime-support/copyright`)

- `Bellcore`
- `ad-hoc`

Source:

```console
$ apt-get source -qq --print-uris mime-support=3.59ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mime-support/mime-support_3.59ubuntu1.dsc' mime-support_3.59ubuntu1.dsc 1711 SHA256:37703b2273222f23dd8ad048f898a381412df0a76473047e0b7757a8043ff354
'http://archive.ubuntu.com/ubuntu/pool/main/m/mime-support/mime-support_3.59ubuntu1.tar.gz' mime-support_3.59ubuntu1.tar.gz 37508 SHA256:55ee4350da8425fb65e7c9b60518e20de09c5a72d08148e644fcefe7abf9c83d
```

### `dpkg` source package: `minizip=1.1-8`

Binary Packages:

- `libminizip1:amd64=1.1-8`

Licenses: (parsed from: `/usr/share/doc/libminizip1/copyright`)

- `zlib`

Source:

```console
$ apt-get source -qq --print-uris minizip=1.1-8
'http://archive.ubuntu.com/ubuntu/pool/universe/m/minizip/minizip_1.1-8.dsc' minizip_1.1-8.dsc 2518 SHA256:5be3fe2b335fb91cdaa734fff6663639e66bf4434489e5b68dde6aa756d45369
'http://archive.ubuntu.com/ubuntu/pool/universe/m/minizip/minizip_1.1.orig.tar.xz' minizip_1.1.orig.tar.xz 36204 SHA256:7d8da446d3b6799e7851f077a66551a46b80fc3de708549e79dbd3e49e842ba1
'http://archive.ubuntu.com/ubuntu/pool/universe/m/minizip/minizip_1.1-8.debian.tar.xz' minizip_1.1-8.debian.tar.xz 5176 SHA256:29653309f35032c873142dcd555594503710cf27d092b30892408cde922c4e26
```

### `dpkg` source package: `mir=0.26.3+16.04.20170605-0ubuntu1.1`

Binary Packages:

- `libmirclient-dev:amd64=0.26.3+16.04.20170605-0ubuntu1.1`
- `libmirclient9:amd64=0.26.3+16.04.20170605-0ubuntu1.1`
- `libmircommon-dev:amd64=0.26.3+16.04.20170605-0ubuntu1.1`
- `libmircommon7:amd64=0.26.3+16.04.20170605-0ubuntu1.1`
- `libmircookie-dev:amd64=0.26.3+16.04.20170605-0ubuntu1.1`
- `libmircookie2:amd64=0.26.3+16.04.20170605-0ubuntu1.1`
- `libmircore-dev:amd64=0.26.3+16.04.20170605-0ubuntu1.1`
- `libmircore1:amd64=0.26.3+16.04.20170605-0ubuntu1.1`
- `libmirprotobuf3:amd64=0.26.3+16.04.20170605-0ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libmirclient-dev/copyright`, `/usr/share/doc/libmirclient9/copyright`, `/usr/share/doc/libmircommon-dev/copyright`, `/usr/share/doc/libmircommon7/copyright`, `/usr/share/doc/libmircookie-dev/copyright`, `/usr/share/doc/libmircookie2/copyright`, `/usr/share/doc/libmircore-dev/copyright`, `/usr/share/doc/libmircore1/copyright`, `/usr/share/doc/libmirprotobuf3/copyright`)

- `Apache-2.0`
- `BSD (2 clause)`
- `BSD (3 clause)`
- `GPL-2`
- `GPL-3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mir=0.26.3+16.04.20170605-0ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mir/mir_0.26.3%2b16.04.20170605-0ubuntu1.1.dsc' mir_0.26.3+16.04.20170605-0ubuntu1.1.dsc 5199 SHA512:f43fbfdfa8fdecc0e35a38f9f44d620fe978767d7f329a38ec7717beb8ba36c53ec3949527c64cda591cb1e5031a165284c92264b7fe5f21a6ac203b4fdaa785
'http://archive.ubuntu.com/ubuntu/pool/main/m/mir/mir_0.26.3%2b16.04.20170605.orig.tar.gz' mir_0.26.3+16.04.20170605.orig.tar.gz 1862434 SHA512:cdde606ed392a3bba6c17ac6dd13e6005b6b49ef6175bce29a632162e4c6713e6d76391c25d5889ed0649ca06248dd074554365a629b4e154c0edabbaace1095
'http://archive.ubuntu.com/ubuntu/pool/main/m/mir/mir_0.26.3%2b16.04.20170605-0ubuntu1.1.diff.gz' mir_0.26.3+16.04.20170605-0ubuntu1.1.diff.gz 74098 SHA512:77573d7e7ff39174cb39a5eeae4a64f1f01bd65fe2da919c4cbad62c73a799e4b9c80e811af8b78ee1806d50432f9bc99e469dc0222b93ea04b3c726b0cabdd0
```

### `dpkg` source package: `mpclib3=1.0.3-1`

Binary Packages:

- `libmpc3:amd64=1.0.3-1`

Licenses: (parsed from: `/usr/share/doc/libmpc3/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris mpclib3=1.0.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.0.3-1.dsc' mpclib3_1.0.3-1.dsc 1940 SHA256:4b424e1c6063d48fd0d045b5afe37004346dae267ced0994fa8e11ff41cada45
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.0.3.orig.tar.gz' mpclib3_1.0.3.orig.tar.gz 669925 SHA256:617decc6ea09889fb08ede330917a00b16809b8db88c29c31bfbb49cbf88ecc3
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.0.3-1.diff.gz' mpclib3_1.0.3-1.diff.gz 3684 SHA256:5a3fe9a7eddb4428d42e95f5919cce517f17411acdb2a73013a8f1a2bb246565
```

### `dpkg` source package: `mpdecimal=2.4.2-1`

Binary Packages:

- `libmpdec2:amd64=2.4.2-1`

Licenses: (parsed from: `/usr/share/doc/libmpdec2/copyright`)

- `BSD`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mpdecimal=2.4.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpdecimal/mpdecimal_2.4.2-1.dsc' mpdecimal_2.4.2-1.dsc 1893 SHA256:5bc782829357ebc9f0c12084642319e5ac89784a119433f8bfba7a11008d7c13
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpdecimal/mpdecimal_2.4.2.orig.tar.gz' mpdecimal_2.4.2.orig.tar.gz 2271529 SHA256:83c628b90f009470981cf084c5418329c88b19835d8af3691b930afccb7d79c7
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpdecimal/mpdecimal_2.4.2-1.debian.tar.xz' mpdecimal_2.4.2-1.debian.tar.xz 5172 SHA256:b95fb775fd04a7ad34fa5bd2c222b49ee2dfd7f0e15295dbd3f7fb86a9b0194b
```

### `dpkg` source package: `mpfr4=3.1.4-1`

Binary Packages:

- `libmpfr4:amd64=3.1.4-1`

Licenses: (parsed from: `/usr/share/doc/libmpfr4/copyright`)

- `GFDL-1.2`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpfr4=3.1.4-1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_3.1.4-1.dsc' mpfr4_3.1.4-1.dsc 1965 SHA256:98c867cd9e2d82fd9f1bae851a3ec8e76aa35d9e54d9e0d75a2fcd97f08992a9
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_3.1.4.orig.tar.xz' mpfr4_3.1.4.orig.tar.xz 1122152 SHA256:761413b16d749c53e2bfd2b1dfaa3b027b0e793e404b90b5fbaeef60af6517f5
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_3.1.4-1.debian.tar.xz' mpfr4_3.1.4-1.debian.tar.xz 9656 SHA256:e0562521ac0ef9fc2039ef1305962ee1ad529ae2210e197cee0080b1facc4d60
```

### `dpkg` source package: `mpi-defaults=1.4`

Binary Packages:

- `mpi-default-bin=1.4`
- `mpi-default-dev=1.4`

Licenses: (parsed from: `/usr/share/doc/mpi-default-bin/copyright`, `/usr/share/doc/mpi-default-dev/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mpi-defaults=1.4
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mpi-defaults/mpi-defaults_1.4.dsc' mpi-defaults_1.4.dsc 2569 SHA256:89e9088d21d774eefebcf9c487c67a3f133a1991466bf474c68a987dd672ef08
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mpi-defaults/mpi-defaults_1.4.tar.xz' mpi-defaults_1.4.tar.xz 4544 SHA256:aa85c486ad60c23eb6d8c44353e5fa1985e935314d54b2d5b86f8fb844386ce3
```

### `dpkg` source package: `mtdev=1.1.5-1ubuntu2`

Binary Packages:

- `libmtdev1:amd64=1.1.5-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libmtdev1/copyright`)

- `The MIT License`
- `The MIT license`

Source:

```console
$ apt-get source -qq --print-uris mtdev=1.1.5-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/m/mtdev/mtdev_1.1.5-1ubuntu2.dsc' mtdev_1.1.5-1ubuntu2.dsc 1579 SHA256:5cfc5c62f881c5aea1b43af1bff664a2a84ad5f5600a3eeb80fd96189405a57b
'http://archive.ubuntu.com/ubuntu/pool/main/m/mtdev/mtdev_1.1.5.orig.tar.bz2' mtdev_1.1.5.orig.tar.bz2 274162 SHA256:6677d5708a7948840de734d8b4675d5980d4561171c5a8e89e54adf7a13eba7f
'http://archive.ubuntu.com/ubuntu/pool/main/m/mtdev/mtdev_1.1.5-1ubuntu2.debian.tar.xz' mtdev_1.1.5-1ubuntu2.debian.tar.xz 6224 SHA256:daf836ba10f7a870df957d1b5fcdb98dca302cbdc901baae91a3d7f6a5b2dd90
```

### `dpkg` source package: `mysql-5.7=5.7.33-0ubuntu0.16.04.1`

Binary Packages:

- `libmysqlclient-dev=5.7.33-0ubuntu0.16.04.1`
- `libmysqlclient20:amd64=5.7.33-0ubuntu0.16.04.1`
- `mysql-common=5.7.33-0ubuntu0.16.04.1`

Licenses: (parsed from: `/usr/share/doc/libmysqlclient-dev/copyright`, `/usr/share/doc/libmysqlclient20/copyright`, `/usr/share/doc/mysql-common/copyright`)

- `Artistic`
- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-like`
- `Boost`
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
$ apt-get source -qq --print-uris mysql-5.7=5.7.33-0ubuntu0.16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-5.7/mysql-5.7_5.7.33-0ubuntu0.16.04.1.dsc' mysql-5.7_5.7.33-0ubuntu0.16.04.1.dsc 3380 SHA512:e1ac33c094ef9a5212d85e2bbec9d706555eadb09066d22499447617df2a087d2bc04e62dcf44f18c10110e0add874778324e97933d7ee033040b9f4e8ac1016
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-5.7/mysql-5.7_5.7.33.orig.tar.gz' mysql-5.7_5.7.33.orig.tar.gz 52912380 SHA512:1d1e1e5934fb17ff731fea45b88d4af6a394c2fbf0177a87803b18cb0eb4fb8d4939f82fc22b6cbc2af64022a44e206cd23e2e88ce11cc119c3ea22129d54e7a
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-5.7/mysql-5.7_5.7.33-0ubuntu0.16.04.1.debian.tar.xz' mysql-5.7_5.7.33-0ubuntu0.16.04.1.debian.tar.xz 251296 SHA512:5804e3796d7e9337aa5587fc37ab1e1188b9df889404b73661c0b783a972bd119abd1575bb6334da1d2f7a6e366b4a645723f2aa06b2b214583ef74ef60fb458
```

### `dpkg` source package: `ncurses=6.0+20160213-1ubuntu1`

Binary Packages:

- `libncurses5:amd64=6.0+20160213-1ubuntu1`
- `libncursesw5:amd64=6.0+20160213-1ubuntu1`
- `libtinfo5:amd64=6.0+20160213-1ubuntu1`
- `ncurses-base=6.0+20160213-1ubuntu1`
- `ncurses-bin=6.0+20160213-1ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris ncurses=6.0+20160213-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.0%2b20160213-1ubuntu1.dsc' ncurses_6.0+20160213-1ubuntu1.dsc 4379 SHA256:16628fbe5a690f6f8d147a54d0ba6900a0afeaa51d318475781ce3f14df1ca79
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.0%2b20160213.orig.tar.gz' ncurses_6.0+20160213.orig.tar.gz 3153008 SHA256:20269c2dd62a311b9a3fb9f25638d35a057a5ece5f8d6caf4e70a3da6f01082c
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.0%2b20160213-1ubuntu1.debian.tar.xz' ncurses_6.0+20160213-1ubuntu1.debian.tar.xz 54496 SHA256:9551738e1bdc425d12897cc459ce5ce40b5e12530b144b731c0a7b3e077c07c7
```

### `dpkg` source package: `netcdf=1:4.4.0-2`

Binary Packages:

- `libnetcdf-dev=1:4.4.0-2`
- `libnetcdf11=1:4.4.0-2`

Licenses: (parsed from: `/usr/share/doc/libnetcdf-dev/copyright`, `/usr/share/doc/libnetcdf11/copyright`)

- `BSD-3-Clause`
- `GPL-2`
- `GPL-2+ with Bison exception`
- `GPL-2+ with Libtool exception`
- `GPL-3`
- `GPL-3+ with Bison exception`
- `HDF5`
- `MIT`
- `NetCDF`
- `Unicode`
- `Unicode-data`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris netcdf=1:4.4.0-2
'http://archive.ubuntu.com/ubuntu/pool/universe/n/netcdf/netcdf_4.4.0-2.dsc' netcdf_4.4.0-2.dsc 2347 SHA256:c74c8c32f3acc8d72506e88e9711096fc2aebf75715b1210dde5e45a0e46ee30
'http://archive.ubuntu.com/ubuntu/pool/universe/n/netcdf/netcdf_4.4.0.orig.tar.gz' netcdf_4.4.0.orig.tar.gz 17487357 SHA256:09b78b152d3fd373bee4b5738dc05c7b2f5315fe34aa2d94ee9256661119112f
'http://archive.ubuntu.com/ubuntu/pool/universe/n/netcdf/netcdf_4.4.0-2.debian.tar.xz' netcdf_4.4.0-2.debian.tar.xz 24160 SHA256:e3b8eeb4b31319d6f06eeaa5cbb614acef306d025ec8bd79bab2d1173ee75b0d
```

### `dpkg` source package: `nettle=3.2-1ubuntu0.16.04.2`

Binary Packages:

- `libhogweed4:amd64=3.2-1ubuntu0.16.04.2`
- `libnettle6:amd64=3.2-1ubuntu0.16.04.2`

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
$ apt-get source -qq --print-uris nettle=3.2-1ubuntu0.16.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.2-1ubuntu0.16.04.2.dsc' nettle_3.2-1ubuntu0.16.04.2.dsc 2214 SHA512:13487b8131242f0ea97733d48982c05dd63bc0d90c0f2c88c02d4486a8856537fb6108162850fef02dd8dba8726ca1a7b28d10f042f5e93b3933cabfbf39fc24
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.2.orig.tar.gz' nettle_3.2.orig.tar.gz 1879604 SHA512:9f2c802e8b683d1c2fd8d16ab33b2a1efda33a1bf33196be39031a2d0677f2e78d67221a718997780e157aa72973da7d9d549429e706fcfcdff97ee3bbef615a
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.2-1ubuntu0.16.04.2.debian.tar.xz' nettle_3.2-1ubuntu0.16.04.2.debian.tar.xz 25212 SHA512:23292a5d1f078fa6e28e835d53215aeedd982b4ebbf141b1488f4621b21d83e7c8d7dd6f93cca26b1a72c9f1238f307ee9a75905d2e26ae8c3c98e2ce6640572
```

### `dpkg` source package: `npth=1.2-3`

Binary Packages:

- `libnpth0:amd64=1.2-3`

Licenses: (parsed from: `/usr/share/doc/libnpth0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-3`
- `LGPL-3+`

Source:

```console
$ apt-get source -qq --print-uris npth=1.2-3
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.2-3.dsc' npth_1.2-3.dsc 1960 SHA256:457abe6599eda4ab9f4dc73a4ee1e250269febe333e8a660716544a16d8552de
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.2.orig.tar.bz2' npth_1.2.orig.tar.bz2 298735 SHA256:6ddbdddb2cf49a4723f9d1ad6563c480d6760dcb63cb7726b8fc3bc2e1b6c08a
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.2-3.debian.tar.xz' npth_1.2-3.debian.tar.xz 10216 SHA256:b63d662bf8b2ad834c1dce75ae53af592c4b2d9d1e70ddc6ef82c98d7321045b
```

### `dpkg` source package: `numactl=2.0.11-1ubuntu1.1`

Binary Packages:

- `libnuma-dev:amd64=2.0.11-1ubuntu1.1`
- `libnuma1:amd64=2.0.11-1ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libnuma-dev/copyright`, `/usr/share/doc/libnuma1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris numactl=2.0.11-1ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/n/numactl/numactl_2.0.11-1ubuntu1.1.dsc' numactl_2.0.11-1ubuntu1.1.dsc 2215 SHA512:1461e44244a711932e77144963086402a14dd2ab225fd2821484ce5a52e1bb34710092e03e223d413659f1d3d1a9fb24b07d5e5805f066bbdfb9908f14d7941f
'http://archive.ubuntu.com/ubuntu/pool/main/n/numactl/numactl_2.0.11.orig.tar.gz' numactl_2.0.11.orig.tar.gz 408175 SHA512:1969d7ee0ff3de0d6f1fa42ec089a17cdb3f92cb35d453b8f8b2eec49724c43787ecbd213357013a8f2500a260b0df9844d515815ca3a0376314a0eed050a0d4
'http://archive.ubuntu.com/ubuntu/pool/main/n/numactl/numactl_2.0.11-1ubuntu1.1.diff.gz' numactl_2.0.11-1ubuntu1.1.diff.gz 7106 SHA512:0978c76dcf4baae21e12fbf02e9cda341c9d73199b912b546b08a3f836f1ec1786e3a7ee78ae158ba339b2f6fa521660b32fad9972ed0fd8e09b93966051a1c9
```

### `dpkg` source package: `ogdi-dfsg=3.2.0~beta2-7.1build1`

Binary Packages:

- `libogdi3.2=3.2.0~beta2-7.1build1`

Licenses: (parsed from: `/usr/share/doc/libogdi3.2/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MIT`
- `MIT | LGPL-2.1+`
- `OGDI-3I`
- `OGDI-LAS`
- `OGDI-QUEEN`
- `OGDI-TORONTO`
- `PD`
- `VPFLIB`
- `other`

Source:

```console
$ apt-get source -qq --print-uris ogdi-dfsg=3.2.0~beta2-7.1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/o/ogdi-dfsg/ogdi-dfsg_3.2.0%7ebeta2-7.1build1.dsc' ogdi-dfsg_3.2.0~beta2-7.1build1.dsc 2132 SHA256:1dee724df3f5300e30b48cd847fbaeb2c89e1c658b1301dfbfa1eef524c270b7
'http://archive.ubuntu.com/ubuntu/pool/universe/o/ogdi-dfsg/ogdi-dfsg_3.2.0%7ebeta2.orig.tar.gz' ogdi-dfsg_3.2.0~beta2.orig.tar.gz 640158 SHA256:97d0a32fe9b50aaaf0d607fcd2fa99ee8eb9039d2aa7b091a4ae8d3beb8980cd
'http://archive.ubuntu.com/ubuntu/pool/universe/o/ogdi-dfsg/ogdi-dfsg_3.2.0%7ebeta2-7.1build1.diff.gz' ogdi-dfsg_3.2.0~beta2-7.1build1.diff.gz 34151 SHA256:22011997afe804cb4c44f802eac1674818611c7f506eb92d865f4d5b5cdbb595
```

### `dpkg` source package: `ogre-1.9=1.9.0+dfsg1-7`

Binary Packages:

- `libogre-1.9-dev=1.9.0+dfsg1-7`
- `libogre-1.9.0v5:amd64=1.9.0+dfsg1-7`

Licenses: (parsed from: `/usr/share/doc/libogre-1.9-dev/copyright`, `/usr/share/doc/libogre-1.9.0v5/copyright`)

- `AnyUse`
- `BSD-2Clause`
- `BSL-1`
- `CC-BY-SA-3.0`
- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MIT`
- `Scintilla`
- `UnivIllinois/NCSA`
- `other1`
- `other2`
- `other3`
- `other4`
- `other5`
- `zlib/libpng`

Source:

```console
$ apt-get source -qq --print-uris ogre-1.9=1.9.0+dfsg1-7
'http://archive.ubuntu.com/ubuntu/pool/universe/o/ogre-1.9/ogre-1.9_1.9.0%2bdfsg1-7.dsc' ogre-1.9_1.9.0+dfsg1-7.dsc 2722 SHA256:e8ab24b827c8bb4bb07c80630aeb5ed7222fe9deec0c28bee21912db3c9311a8
'http://archive.ubuntu.com/ubuntu/pool/universe/o/ogre-1.9/ogre-1.9_1.9.0%2bdfsg1.orig.tar.xz' ogre-1.9_1.9.0+dfsg1.orig.tar.xz 6641368 SHA256:a813af69085c9ef8bf785e8d3cb13216f8f2cc202df6db37fc620a83ae646185
'http://archive.ubuntu.com/ubuntu/pool/universe/o/ogre-1.9/ogre-1.9_1.9.0%2bdfsg1-7.debian.tar.xz' ogre-1.9_1.9.0+dfsg1-7.debian.tar.xz 24664 SHA256:6b6eb83a0d43650c1d79c2418fd6c9a2442a1c85efe329cecf7dbdcd9b79bc06
```

### `dpkg` source package: `openal-soft=1:1.16.0-3`

Binary Packages:

- `libopenal-data=1:1.16.0-3`
- `libopenal1:amd64=1:1.16.0-3`

Licenses: (parsed from: `/usr/share/doc/libopenal-data/copyright`, `/usr/share/doc/libopenal1/copyright`)

- `Apache`
- `BSD-3-clause-cmake`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-2+`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris openal-soft=1:1.16.0-3
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openal-soft/openal-soft_1.16.0-3.dsc' openal-soft_1.16.0-3.dsc 2387 SHA256:8493d2316a3fc15d94e07fe195b3278e2d9ff6567a02266276a0b4f75a789259
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openal-soft/openal-soft_1.16.0.orig.tar.bz2' openal-soft_1.16.0.orig.tar.bz2 393280 SHA256:2f3dcd313fe26391284fbf8596863723f99c65d6c6846dccb48e79cadaf40d5f
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openal-soft/openal-soft_1.16.0-3.debian.tar.xz' openal-soft_1.16.0-3.debian.tar.xz 12520 SHA256:3351735b5ac97b464c79cca06a94a5045746e60afd7a59a75abe0403cf8a0aae
```

### `dpkg` source package: `opencv=2.4.9.1+dfsg-1.5ubuntu1.1`

Binary Packages:

- `libopencv-core2.4v5:amd64=2.4.9.1+dfsg-1.5ubuntu1.1`
- `libopencv-imgproc2.4v5:amd64=2.4.9.1+dfsg-1.5ubuntu1.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris opencv=2.4.9.1+dfsg-1.5ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/universe/o/opencv/opencv_2.4.9.1%2bdfsg-1.5ubuntu1.1.dsc' opencv_2.4.9.1+dfsg-1.5ubuntu1.1.dsc 6107 SHA512:77226db779f12451c6595f23f42326a23c650ee5b68074d39abe1fd08e1911abc1b01cb356eaffb463a33c3caf9dbe073254b66d09be3fd705b8dcfca1a6090e
'http://archive.ubuntu.com/ubuntu/pool/universe/o/opencv/opencv_2.4.9.1%2bdfsg.orig.tar.xz' opencv_2.4.9.1+dfsg.orig.tar.xz 55863896 SHA512:3c5295df6cf08333b5bfb967cba5b377c6a8caa90856a6e50decb849392b3175c74ef45dc1e68d0b66e066d578a8fdc78526a13076888476c3d7a4be84605125
'http://archive.ubuntu.com/ubuntu/pool/universe/o/opencv/opencv_2.4.9.1%2bdfsg-1.5ubuntu1.1.debian.tar.xz' opencv_2.4.9.1+dfsg-1.5ubuntu1.1.debian.tar.xz 42700 SHA512:f2183f0334dee41a7b059f0ba54a79b30b4480a656b18133462b80d4dc01586d5b2a6571a2c62f8598193b95b951f3785c3c07c3830eae4efa2f9796d7670aa9
```

### `dpkg` source package: `openexr=2.2.0-10ubuntu2.6`

Binary Packages:

- `libopenexr22:amd64=2.2.0-10ubuntu2.6`

Licenses: (parsed from: `/usr/share/doc/libopenexr22/copyright`)

- `openexr`

Source:

```console
$ apt-get source -qq --print-uris openexr=2.2.0-10ubuntu2.6
'http://archive.ubuntu.com/ubuntu/pool/main/o/openexr/openexr_2.2.0-10ubuntu2.6.dsc' openexr_2.2.0-10ubuntu2.6.dsc 2395 SHA512:a8ee4d468fd59ef0c48ed910fb7abc562ff58209a1f8f3cdaa2b1ab0e6e000f8f6a40c7cc50aaf7b7a667c6076bd8f408392d0b6e869d7b08f1a2afbf1230248
'http://archive.ubuntu.com/ubuntu/pool/main/o/openexr/openexr_2.2.0.orig.tar.gz' openexr_2.2.0.orig.tar.gz 14489661 SHA512:017abbeeb6b814508180721bc8e8940094965c4c55b135a198c6bcb109a04bf7f72e4aee81ee72cb2185fe818a41d892b383e8d2d59f40c673198948cb79279a
'http://archive.ubuntu.com/ubuntu/pool/main/o/openexr/openexr_2.2.0-10ubuntu2.6.debian.tar.xz' openexr_2.2.0-10ubuntu2.6.debian.tar.xz 51704 SHA512:0855b586b59c420c73c17be3fe140f5c3abd4b8c4250c59d590cbab207f8c175d2f6938502a0ea4d9561151cb8b6630ac6c866b8d5a669cdb86d0b5c5fa945b5
```

### `dpkg` source package: `openjpeg2=2.1.2-1.1+deb9u6build0.16.04.1`

Binary Packages:

- `libopenjp2-7:amd64=2.1.2-1.1+deb9u6build0.16.04.1`

Licenses: (parsed from: `/usr/share/doc/libopenjp2-7/copyright`)

- `BSD-2`
- `BSD-3`
- `LIBPNG`
- `LIBTIFF`
- `LIBTIFF-GLARSON`
- `LIBTIFF-PIXAR`
- `MIT`
- `ZLIB`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris openjpeg2=2.1.2-1.1+deb9u6build0.16.04.1
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openjpeg2/openjpeg2_2.1.2-1.1%2bdeb9u6build0.16.04.1.dsc' openjpeg2_2.1.2-1.1+deb9u6build0.16.04.1.dsc 2853 SHA512:4d6b4fe0b6d307dfe9f1c35dbbe712051187f094ca9679b272b38d436b80d7c8cb5899b091028ff3674e222470a75a679fdfd4a152e2b8a965a2151ae82eb3f8
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openjpeg2/openjpeg2_2.1.2.orig.tar.gz' openjpeg2_2.1.2.orig.tar.gz 1987071 SHA512:411067e33c8e4da9921d0281e932a4ac2af592cf822bfad828daea9e2b9c414859455bcec6d912ce76460ea462fa4cbd94a401333bda5716ec017d18b8e5942c
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openjpeg2/openjpeg2_2.1.2-1.1%2bdeb9u6build0.16.04.1.debian.tar.xz' openjpeg2_2.1.2-1.1+deb9u6build0.16.04.1.debian.tar.xz 30432 SHA512:936e8fd91f4eeda7a995908a242ec9d853554a77cff51fb795cd2fb38ff6420d7478185a3df1554bfa7ac7ac8a5ddeadd746443720a5ef28eb3201fe401a49bc
```

### `dpkg` source package: `openjpeg=1:1.5.2-3.1`

Binary Packages:

- `libopenjpeg5:amd64=1:1.5.2-3.1`

Licenses: (parsed from: `/usr/share/doc/libopenjpeg5/copyright`)

- `BSD-2`
- `BSD-3`
- `Expat`
- `PD`

Source:

```console
$ apt-get source -qq --print-uris openjpeg=1:1.5.2-3.1
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openjpeg/openjpeg_1.5.2-3.1.dsc' openjpeg_1.5.2-3.1.dsc 2723 SHA256:1773f1326e2953b27b3eaf7cf74e37b245fda8369d3dc661acab8d93c523a51a
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openjpeg/openjpeg_1.5.2.orig.tar.gz' openjpeg_1.5.2.orig.tar.gz 615450 SHA256:aef498a293b4e75fa1ca8e367c3f32ed08e028d3557b069bf8584d0c1346026d
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openjpeg/openjpeg_1.5.2-3.1.debian.tar.xz' openjpeg_1.5.2-3.1.debian.tar.xz 18660 SHA256:c45f580c9dbdeffe9bc0e1f4f5c69b7a661568771339424690c81e138b973285
```

### `dpkg` source package: `openldap=2.4.42+dfsg-2ubuntu3.13`

Binary Packages:

- `libldap-2.4-2:amd64=2.4.42+dfsg-2ubuntu3.13`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openldap=2.4.42+dfsg-2ubuntu3.13
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.42%2bdfsg-2ubuntu3.13.dsc' openldap_2.4.42+dfsg-2ubuntu3.13.dsc 3058 SHA512:d23e2a477102df56bb931eff1c9c3026871c7c3fb0e8e86796afc5fec571553666aac9e5f569b2e751c1c5d3550adaa515482656754bb3911c4ed7519aa59ed7
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.42%2bdfsg.orig.tar.gz' openldap_2.4.42+dfsg.orig.tar.gz 4813173 SHA512:4ed671baef513927cc340dac15b8979dba766d4fd629cae0bad1e125d09bc4ae61fda6912e06c53f8ef2cee6c2e28379b4e0c419c00c8254dc0cc0c715caf200
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.42%2bdfsg-2ubuntu3.13.debian.tar.xz' openldap_2.4.42+dfsg-2ubuntu3.13.debian.tar.xz 186584 SHA512:9f14c8c34082d1ed9689aa610fffcbdad1396dcacbd763f61d3091ad67170de5fa6f72abde7332336e49d3a0925c475e19f8d7763ca7d66dc5be105abb3ce976
```

### `dpkg` source package: `openmpi=1.10.2-8ubuntu1`

Binary Packages:

- `libopenmpi-dev=1.10.2-8ubuntu1`
- `libopenmpi1.10=1.10.2-8ubuntu1`
- `openmpi-bin=1.10.2-8ubuntu1`
- `openmpi-common=1.10.2-8ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libopenmpi-dev/copyright`, `/usr/share/doc/libopenmpi1.10/copyright`, `/usr/share/doc/openmpi-bin/copyright`, `/usr/share/doc/openmpi-common/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris openmpi=1.10.2-8ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openmpi/openmpi_1.10.2-8ubuntu1.dsc' openmpi_1.10.2-8ubuntu1.dsc 2639 SHA256:0d45a031372bfdf0a5fc07f8b8320819a4755449b4efb2450b0a8b9ee272d1b5
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openmpi/openmpi_1.10.2.orig.tar.gz' openmpi_1.10.2.orig.tar.gz 20143146 SHA256:218136734653fde6304cc26137b292b0893cb2d401290bad983ac90de9bcafee
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openmpi/openmpi_1.10.2-8ubuntu1.debian.tar.xz' openmpi_1.10.2-8ubuntu1.debian.tar.xz 31736 SHA256:b402ee58b24798c198e64f033a5df1928b3949795eca2c0930c9fdcfa99b89f2
```

### `dpkg` source package: `openssl=1.0.2g-1ubuntu4.20`

Binary Packages:

- `libssl-dev:amd64=1.0.2g-1ubuntu4.20`
- `libssl1.0.0:amd64=1.0.2g-1ubuntu4.20`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl=1.0.2g-1ubuntu4.20
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.0.2g-1ubuntu4.20.dsc' openssl_1.0.2g-1ubuntu4.20.dsc 2453 SHA512:5a0545c1882a1395fe6a814059ef136cff64b6b8750004a94459c7703674ec5b0338e662edf52fd0e2b0e2e2c47f81ecb32447503e48b6bd8c9d1d0e0155bcf0
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.0.2g.orig.tar.gz' openssl_1.0.2g.orig.tar.gz 5266102 SHA512:4d96b6c8a232203483d6e8bee81da01ba10977bfbac92f25304a36dec9ea584b7ef917bc45e097cc7dbe681d71a4570d649c22244c178393ae91fab48323f735
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.0.2g-1ubuntu4.20.debian.tar.xz' openssl_1.0.2g-1ubuntu4.20.debian.tar.xz 142424 SHA512:523befa8829271e98e236f1d720ff3575273bd3cae192ea879196b674c4bf9ad17e949fde1b046a4ab764faf06bd51faa4140af402831db331755c47262e05f2
```

### `dpkg` source package: `opus=1.1.2-1ubuntu1`

Binary Packages:

- `libopus0:amd64=1.1.2-1ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris opus=1.1.2-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/o/opus/opus_1.1.2-1ubuntu1.dsc' opus_1.1.2-1ubuntu1.dsc 1983 SHA256:8f8ccf72939b5c7923df4a189ca1d7a0dcf0cd5151e70b5623029c095c54849e
'http://archive.ubuntu.com/ubuntu/pool/main/o/opus/opus_1.1.2.orig.tar.gz' opus_1.1.2.orig.tar.gz 1012168 SHA256:7aaa84f06ec89cbf19d08c1dd1ceac965a11b28b3ff504cc52893f9be78eb5d1
'http://archive.ubuntu.com/ubuntu/pool/main/o/opus/opus_1.1.2-1ubuntu1.debian.tar.xz' opus_1.1.2-1ubuntu1.debian.tar.xz 5920 SHA256:d31fc55216fbda1a05ea6d59f43b71988a5b748c3d292f0297dc97e5585c9535
```

### `dpkg` source package: `orc=1:0.4.25-1`

Binary Packages:

- `liborc-0.4-0:amd64=1:0.4.25-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris orc=1:0.4.25-1
'http://archive.ubuntu.com/ubuntu/pool/main/o/orc/orc_0.4.25-1.dsc' orc_0.4.25-1.dsc 2394 SHA256:31c1f6430cb90b30e7f0b7c89195482c1daea388835faa92056c50accc72ec65
'http://archive.ubuntu.com/ubuntu/pool/main/o/orc/orc_0.4.25.orig.tar.xz' orc_0.4.25.orig.tar.xz 467184 SHA256:c1b1d54a58f26d483f0b3881538984789fe5d5460ab8fab74a1cacbd3d1c53d1
'http://archive.ubuntu.com/ubuntu/pool/main/o/orc/orc_0.4.25-1.debian.tar.xz' orc_0.4.25-1.debian.tar.xz 5044 SHA256:470827b05344905ca68af316e9835fbbd86d368aa7ee12c090a2ade91099b1cb
```

### `dpkg` source package: `p11-kit=0.23.2-5~ubuntu16.04.2`

Binary Packages:

- `libp11-kit0:amd64=0.23.2-5~ubuntu16.04.2`

Licenses: (parsed from: `/usr/share/doc/libp11-kit0/copyright`)

- `BSD-3-Clause`
- `ISC`
- `ISC+IBM`
- `permissive-like-automake-output`
- `same-as-rest-of-p11kit`

Source:

```console
$ apt-get source -qq --print-uris p11-kit=0.23.2-5~ubuntu16.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.2-5%7eubuntu16.04.2.dsc' p11-kit_0.23.2-5~ubuntu16.04.2.dsc 2340 SHA512:e4d824b1373e304eb2e9f590c24ca125ba98b0b1019980679675c84b3c6c6626c09d01c83fa8f6b6b45dad0ed70a1aab386824f983a91bf325db43b0e4d0f38c
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.2.orig.tar.gz' p11-kit_0.23.2.orig.tar.gz 1022733 SHA512:b665d89f0d752a41b01ec53e29c801c4fdcaf3f21fce524984b10acef0477ad5dbac085edd35ffb747423d0e1e09660b8d29501c979cf54937d3b9d2561cf18f
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.2-5%7eubuntu16.04.2.debian.tar.xz' p11-kit_0.23.2-5~ubuntu16.04.2.debian.tar.xz 17648 SHA512:0364e155a73d67c8d709769dcea3deb28d9878d802779e2648d284243af12fb861c803d6742c2ce7a898657ec9b2127fa30ba150323964e0a951ea69335a5196
```

### `dpkg` source package: `pam=1.1.8-3.2ubuntu2.3`

Binary Packages:

- `libpam-modules:amd64=1.1.8-3.2ubuntu2.3`
- `libpam-modules-bin=1.1.8-3.2ubuntu2.3`
- `libpam-runtime=1.1.8-3.2ubuntu2.3`
- `libpam0g:amd64=1.1.8-3.2ubuntu2.3`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pam=1.1.8-3.2ubuntu2.3
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.1.8-3.2ubuntu2.3.dsc' pam_1.1.8-3.2ubuntu2.3.dsc 2611 SHA512:f33dfe20b608641d5d2f2396700a83511a58164d9ad22fada18f644e9c27dba5b489c178dcb7077c99307cc42d8ce5b6ba6826000307257a729a522c778fb34e
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.1.8.orig.tar.gz' pam_1.1.8.orig.tar.gz 1892765 SHA512:dca21547f951a53cdb6bbcbedde694f345ec02ff5931f2f81da26980471206515f891035cacded3e10d6631f7dc2fb8679fdaf737cd50adaf18768a1c56482a2
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.1.8-3.2ubuntu2.3.diff.gz' pam_1.1.8-3.2ubuntu2.3.diff.gz 197563 SHA512:19d1ea949966ba6f5935094f68006a35028c4787ceb6cbdd367ded22a28e8b76f17c6c2bb3d446f2f8674bc4427938f6cd65b85b6cc5699bfc64265302090074
```

### `dpkg` source package: `patch=2.7.5-1ubuntu0.16.04.2`

Binary Packages:

- `patch=2.7.5-1ubuntu0.16.04.2`

Licenses: (parsed from: `/usr/share/doc/patch/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris patch=2.7.5-1ubuntu0.16.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.5-1ubuntu0.16.04.2.dsc' patch_2.7.5-1ubuntu0.16.04.2.dsc 1950 SHA512:f55ca716b52f58d0a6e6fbf6ed9f60a73ce5f337f47ec312f3c090dc4601d1d91df4de0d808dce0fda1f892388e7e2043bcd037a8a93854a3477d1beca6ff930
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.5.orig.tar.xz' patch_2.7.5.orig.tar.xz 727704 SHA512:6620ac8101f60c0b456ce339fa5e371f40be0b391e2e9728f34f3625f9907e516de61dac2f91bc76e6fd28a9bd1224efc3ba827cfaa606d857730c1af4195a0f
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.5-1ubuntu0.16.04.2.debian.tar.xz' patch_2.7.5-1ubuntu0.16.04.2.debian.tar.xz 12588 SHA512:473af88a4c06f86236dee935178a4b688d25c8ed99e0a7b5072012d10220f0b382e9e00d79394df3ea674dadda61e515a6aa9851c710d5b9163c16eee360caa8
```

### `dpkg` source package: `pcre3=2:8.38-3.1`

Binary Packages:

- `libpcre16-3:amd64=2:8.38-3.1`
- `libpcre3:amd64=2:8.38-3.1`
- `libpcre3-dev:amd64=2:8.38-3.1`
- `libpcre32-3:amd64=2:8.38-3.1`
- `libpcrecpp0v5:amd64=2:8.38-3.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre3=2:8.38-3.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.38-3.1.dsc' pcre3_8.38-3.1.dsc 2074 SHA256:6a46bc62c33198fe38257f0dddecb4c534825f8f066bf88f2a45ad935b879885
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.38.orig.tar.gz' pcre3_8.38.orig.tar.gz 2053336 SHA256:9883e419c336c63b0cb5202b09537c140966d585e4d0da66147dc513da13e629
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.38-3.1.debian.tar.gz' pcre3_8.38-3.1.debian.tar.gz 32289 SHA256:9ee1b838c1de50cb5f6641016d0dd21b06f1038b9b7c3b1098e0a89b9c24b39f
```

### `dpkg` source package: `perl=5.22.1-9ubuntu0.9`

Binary Packages:

- `libperl5.22:amd64=5.22.1-9ubuntu0.9`
- `perl=5.22.1-9ubuntu0.9`
- `perl-base=5.22.1-9ubuntu0.9`
- `perl-modules-5.22=5.22.1-9ubuntu0.9`

Licenses: (parsed from: `/usr/share/doc/libperl5.22/copyright`, `/usr/share/doc/perl/copyright`, `/usr/share/doc/perl-base/copyright`, `/usr/share/doc/perl-modules-5.22/copyright`)

- `Artistic`
- `Artistic,`
- `Artistic-2`
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
- `S2P`
- `SDBM-PUBLIC-DOMAIN`
- `TEXT-TABS`
- `Unicode`
- `ZLIB`

Source:

```console
$ apt-get source -qq --print-uris perl=5.22.1-9ubuntu0.9
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.22.1-9ubuntu0.9.dsc' perl_5.22.1-9ubuntu0.9.dsc 2480 SHA512:78551f83138bae837431f926892f0dc07490b18b9e84c33a7baa1f301818cad74d40460889542f757530334510dc8bf7a60723fa9e3c5ff22c73abc8d8f49d63
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.22.1.orig.tar.xz' perl_5.22.1.orig.tar.xz 11223940 SHA512:f214bf6959e582a04034c9343a270fcc4fdcf959a8fbb393433865446e634024809d194cfd07ab614b2c09a5a73caec0a74945bbbb3d690663a5f6f10eb168b8
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.22.1-9ubuntu0.9.debian.tar.xz' perl_5.22.1-9ubuntu0.9.debian.tar.xz 167048 SHA512:77a9b2cbc73521969c77530819544c4f2a20e21bca2ee17092906b2804b5d575efc66626c1a9698dea4a3e4f2fd78c19f0c83a7824eb085e4bfd5fdcd2e28177
```

### `dpkg` source package: `pinentry=0.9.7-3`

Binary Packages:

- `pinentry-curses=0.9.7-3`

Licenses: (parsed from: `/usr/share/doc/pinentry-curses/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris pinentry=0.9.7-3
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_0.9.7-3.dsc' pinentry_0.9.7-3.dsc 2662 SHA256:67506f8c21b87a274aa7d9bc7a40a2da094dcbcf32e5b0a8f9c94512404ea747
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_0.9.7.orig.tar.bz2' pinentry_0.9.7.orig.tar.bz2 432978 SHA256:6398208394972bbf897c3325780195584682a0d0c164ca5a0da35b93b1e4e7b2
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_0.9.7-3.debian.tar.xz' pinentry_0.9.7-3.debian.tar.xz 13032 SHA256:1d3f5b2ad83234537482ec0b78c5b411b25c84e91dfa1fdbebb1dbc8f1677b8f
```

### `dpkg` source package: `pkg-config=0.29.1-0ubuntu1`

Binary Packages:

- `pkg-config=0.29.1-0ubuntu1`

Licenses: (parsed from: `/usr/share/doc/pkg-config/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pkg-config=0.29.1-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.1-0ubuntu1.dsc' pkg-config_0.29.1-0ubuntu1.dsc 1842 SHA256:0ade40d184e9684f9e22e622022f1b798123cc63cd37d669f664f47dddc5e072
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.1.orig.tar.gz' pkg-config_0.29.1.orig.tar.gz 2013454 SHA256:beb43c9e064555469bd4390dcfd8030b1536e0aa103f08d7abf7ae8cac0cb001
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.1-0ubuntu1.diff.gz' pkg-config_0.29.1-0ubuntu1.diff.gz 12597 SHA256:1c44aeeec1896a69f21861e9b9e18bb783258d57f4bd678b173b3890f1a209bf
```

### `dpkg` source package: `poppler=0.41.0-0ubuntu1.16`

Binary Packages:

- `libpoppler58:amd64=0.41.0-0ubuntu1.16`

Licenses: (parsed from: `/usr/share/doc/libpoppler58/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris poppler=0.41.0-0ubuntu1.16
'http://archive.ubuntu.com/ubuntu/pool/main/p/poppler/poppler_0.41.0-0ubuntu1.16.dsc' poppler_0.41.0-0ubuntu1.16.dsc 3376 SHA512:61fc6b5630e3390ae036b2f8c0ae4093b8e362e4e800554a2b77d0368b1d5a7a9a7a8faee6a13aac8cadd790c259827402d4e9c83ac12d721338e1d0218e7c7d
'http://archive.ubuntu.com/ubuntu/pool/main/p/poppler/poppler_0.41.0.orig.tar.xz' poppler_0.41.0.orig.tar.xz 1655448 SHA512:b2b99ac056efaae26f0bffc20756f17524011b7718a554ff48901422e7ab8caa4f879b800eacce1af5ae468346fa0beb569a4378f028a7d7cf0c9cc45f0d2402
'http://archive.ubuntu.com/ubuntu/pool/main/p/poppler/poppler_0.41.0-0ubuntu1.16.debian.tar.xz' poppler_0.41.0-0ubuntu1.16.debian.tar.xz 56380 SHA512:30197dc8ecdd18370f8d83a788efd506d5b509e5b685444768bd6b4006594ced051f0634be97a26f5a74fc0b5bb2fcc9eb57ca665c6b11487ee036ff3a39053a
```

### `dpkg` source package: `postgresql-9.5=9.5.25-0ubuntu0.16.04.1`

Binary Packages:

- `libpq-dev=9.5.25-0ubuntu0.16.04.1`
- `libpq5:amd64=9.5.25-0ubuntu0.16.04.1`

Licenses: (parsed from: `/usr/share/doc/libpq-dev/copyright`, `/usr/share/doc/libpq5/copyright`)

- `Custom-Unicode`
- `Custom-pg_dump`
- `Custom-regex`
- `PostgreSQL`
- `Tcl`
- `almost exclusively BSD`

Source:

```console
$ apt-get source -qq --print-uris postgresql-9.5=9.5.25-0ubuntu0.16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/postgresql-9.5/postgresql-9.5_9.5.25-0ubuntu0.16.04.1.dsc' postgresql-9.5_9.5.25-0ubuntu0.16.04.1.dsc 3777 SHA512:4750e429b8f4974d4f481d8e7d36d0658c7b75002d610eac7cae209a13e219ef758e5d24c64a09e4fbaa4c495186867d624c3136ba17f5ed14fc5fa55199c75f
'http://archive.ubuntu.com/ubuntu/pool/main/p/postgresql-9.5/postgresql-9.5_9.5.25.orig.tar.bz2' postgresql-9.5_9.5.25.orig.tar.bz2 17923796 SHA512:621b36d767d2c7eb2e942cb7b26ca7491450fcfd9606114849f7336b4d8a0bc0196badb44da4918e748145d21b6f72ccf1255a1309dff2427da8b39b63fca427
'http://archive.ubuntu.com/ubuntu/pool/main/p/postgresql-9.5/postgresql-9.5_9.5.25-0ubuntu0.16.04.1.debian.tar.xz' postgresql-9.5_9.5.25-0ubuntu0.16.04.1.debian.tar.xz 28708 SHA512:1aaaffa3464169b00f66c922b61c035c11df8a633b241479c9c4182fb0f73d8d135f559a4b1ecfbcb80f76800f1e194e50afdb1f656a267ab46c8fe445d8e8ad
```

### `dpkg` source package: `procps=2:3.3.10-4ubuntu2.5`

Binary Packages:

- `libprocps4:amd64=2:3.3.10-4ubuntu2.5`
- `procps=2:3.3.10-4ubuntu2.5`

Licenses: (parsed from: `/usr/share/doc/libprocps4/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris procps=2:3.3.10-4ubuntu2.5
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.10-4ubuntu2.5.dsc' procps_3.3.10-4ubuntu2.5.dsc 2227 SHA512:a247fdd9aa5c23eaa2aa5110e102db86de1f8162f738d2278af9bce2e8c0a1aa2a59903cd338344a2453f64121a5946d43211638a045850b97a9813616c0cb2c
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.10.orig.tar.xz' procps_3.3.10.orig.tar.xz 814816 SHA512:ab7627e46301d479a56a073cd7e6ff02dc85e7cba73cf0b9a0ca9288cd1aef2f6dac9413cefd8ee75ca84a3d1c5f38e5afc5c4969e31c96b276ce21c79ac5c34
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.10-4ubuntu2.5.debian.tar.xz' procps_3.3.10-4ubuntu2.5.debian.tar.xz 44704 SHA512:4ded69c9fb63c4ae7410b7304271454060f4ec51f54dc49ebd60393ce54aa45d5ec6a4a7f763900572a3e92cb704143e5410b1fb3ab519d54d2c588b0afea401
```

### `dpkg` source package: `proj=4.9.2-2`

Binary Packages:

- `libproj9=4.9.2-2`
- `proj-data=4.9.2-2`

Licenses: (parsed from: `/usr/share/doc/libproj9/copyright`, `/usr/share/doc/proj-data/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Libtool exception`
- `MIT`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris proj=4.9.2-2
'http://archive.ubuntu.com/ubuntu/pool/universe/p/proj/proj_4.9.2-2.dsc' proj_4.9.2-2.dsc 2190 SHA256:174e1b421dd03f3f7e6cf4b4ffb204d676a4509eae84f5262c77abc8af72ff88
'http://archive.ubuntu.com/ubuntu/pool/universe/p/proj/proj_4.9.2.orig.tar.gz' proj_4.9.2.orig.tar.gz 874816 SHA256:60bf9ad1ed1c18158e652dfff97865ba6fb2b67f1511bc8dceae4b3c7e657796
'http://archive.ubuntu.com/ubuntu/pool/universe/p/proj/proj_4.9.2-2.debian.tar.xz' proj_4.9.2-2.debian.tar.xz 9031740 SHA256:4705ddc818cc1e456225403afc69646b18193ddf3f867bfdd0abc710c83f1c04
```

### `dpkg` source package: `protobuf=2.6.1-1.3`

Binary Packages:

- `libprotobuf-dev:amd64=2.6.1-1.3`
- `libprotobuf-lite9v5:amd64=2.6.1-1.3`
- `libprotobuf9v5:amd64=2.6.1-1.3`
- `libprotoc-dev:amd64=2.6.1-1.3`
- `libprotoc9v5:amd64=2.6.1-1.3`
- `protobuf-compiler=2.6.1-1.3`

Licenses: (parsed from: `/usr/share/doc/libprotobuf-dev/copyright`, `/usr/share/doc/libprotobuf-lite9v5/copyright`, `/usr/share/doc/libprotobuf9v5/copyright`, `/usr/share/doc/libprotoc-dev/copyright`, `/usr/share/doc/libprotoc9v5/copyright`, `/usr/share/doc/protobuf-compiler/copyright`)

- `Apache-2.0`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris protobuf=2.6.1-1.3
'http://archive.ubuntu.com/ubuntu/pool/main/p/protobuf/protobuf_2.6.1-1.3.dsc' protobuf_2.6.1-1.3.dsc 2566 SHA256:9825950d5d99ca829600c02e3aaa63c886919e887c100cd63cfa4326de79b090
'http://archive.ubuntu.com/ubuntu/pool/main/p/protobuf/protobuf_2.6.1.orig.tar.gz' protobuf_2.6.1.orig.tar.gz 2641426 SHA256:dbbd7bdd2381633995404de65a945ff1a7610b0da14593051b4738c90c6dd164
'http://archive.ubuntu.com/ubuntu/pool/main/p/protobuf/protobuf_2.6.1-1.3.debian.tar.xz' protobuf_2.6.1-1.3.debian.tar.xz 13116 SHA256:ef3867b3c34f5411c40c4ed1c25810c433de2c20359df16daa71cc123c5c3717
```

### `dpkg` source package: `pulseaudio=1:8.0-0ubuntu3.15`

Binary Packages:

- `libpulse0:amd64=1:8.0-0ubuntu3.15`

Licenses: (parsed from: `/usr/share/doc/libpulse0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris pulseaudio=1:8.0-0ubuntu3.15
'http://archive.ubuntu.com/ubuntu/pool/main/p/pulseaudio/pulseaudio_8.0-0ubuntu3.15.dsc' pulseaudio_8.0-0ubuntu3.15.dsc 4120 SHA512:28c58fa1e90cff516cf278ae18c661443d9c126dca6ca5d966686d69a2fbb57f706bdbb94e3e715f92796996a0d967e1494f55f7b9582419407a476ff7437ac7
'http://archive.ubuntu.com/ubuntu/pool/main/p/pulseaudio/pulseaudio_8.0.orig.tar.xz' pulseaudio_8.0.orig.tar.xz 1517656 SHA512:7008abf768f720839353038ffd3e35e442f82452aa7e27d446f75d403096b042643d2b2b1d153454302bd5a51f9217f4979c8995b80ba2695f141e6a29e164fa
'http://archive.ubuntu.com/ubuntu/pool/main/p/pulseaudio/pulseaudio_8.0-0ubuntu3.15.debian.tar.xz' pulseaudio_8.0-0ubuntu3.15.debian.tar.xz 166304 SHA512:d867148c9d7b2e0551efabb2e5f862765b601348cbbe63de61129d1975915611ca4f0ef98f20e730cdde9bb26c6ef89c84f6cb0e6a4d8a659c9c8eb58d2deeb9
```

### `dpkg` source package: `python-defaults=2.7.12-1~16.04`

Binary Packages:

- `libpython-dev:amd64=2.7.12-1~16.04`
- `libpython-stdlib:amd64=2.7.12-1~16.04`
- `python=2.7.12-1~16.04`
- `python-dev=2.7.12-1~16.04`
- `python-minimal=2.7.12-1~16.04`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-defaults=2.7.12-1~16.04
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-defaults/python-defaults_2.7.12-1%7e16.04.dsc' python-defaults_2.7.12-1~16.04.dsc 2659 SHA512:408cd2d8aca9ea0573c68b4a14a3ceb98d7199e427350b3fa530b680a78641af1a5e16f3614c79723aaf0c0f44779844ab86874d2e6bb90d996bd3f6bd5e7b74
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-defaults/python-defaults_2.7.12-1%7e16.04.tar.gz' python-defaults_2.7.12-1~16.04.tar.gz 280070 SHA512:92fa75b66b29205348f1a13542b82ede82ce8233f0f4df56e4482774bf991dc295152137500cdd4d2a8ce3bccff028302a5b5323648ec8038b84cca6aca92adb
```

### `dpkg` source package: `python2.7=2.7.12-1ubuntu0~16.04.18`

Binary Packages:

- `libpython2.7:amd64=2.7.12-1ubuntu0~16.04.18`
- `libpython2.7-dev:amd64=2.7.12-1ubuntu0~16.04.18`
- `libpython2.7-minimal:amd64=2.7.12-1ubuntu0~16.04.18`
- `libpython2.7-stdlib:amd64=2.7.12-1ubuntu0~16.04.18`
- `python2.7=2.7.12-1ubuntu0~16.04.18`
- `python2.7-dev=2.7.12-1ubuntu0~16.04.18`
- `python2.7-minimal=2.7.12-1ubuntu0~16.04.18`

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
$ apt-get source -qq --print-uris python2.7=2.7.12-1ubuntu0~16.04.18
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.12-1ubuntu0%7e16.04.18.dsc' python2.7_2.7.12-1ubuntu0~16.04.18.dsc 3391 SHA512:999034052244dcc17392ee6d0e6c3ffaeba1d9632a30fa7a1e3d8a6c3b4f3ae65efe885b101118f90b727d28d5a58730e3a127b12b0991eba2fdf033731013da
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.12.orig.tar.gz' python2.7_2.7.12.orig.tar.gz 16935960 SHA512:e3c04b1c66ff659c08e09a5adc34fd856ca0c786e5820c05471747416fef38555f1711978ac5e81ff4fdf7c16311796212f638e5e2d43e2404b2a42fc139edb0
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.12-1ubuntu0%7e16.04.18.diff.gz' python2.7_2.7.12-1ubuntu0~16.04.18.diff.gz 393532 SHA512:3d8164199a7d8868385de89184226c45af9ede5c371cf376f61121baf677bbdeaf4df0763b9cd2e497aec3e1fbec96043e2f6115da0f84bdbed583dd4ee5c3a7
```

### `dpkg` source package: `python3-defaults=3.5.1-3`

Binary Packages:

- `libpython3-stdlib:amd64=3.5.1-3`
- `python3=3.5.1-3`
- `python3-minimal=3.5.1-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-defaults=3.5.1-3
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.5.1-3.dsc' python3-defaults_3.5.1-3.dsc 2715 SHA256:e1da92b6e0a03c096ad1442b2ee9ea00ea7f8f02a5f8ce59bc3a75db276e8556
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.5.1-3.tar.gz' python3-defaults_3.5.1-3.tar.gz 924115 SHA256:8d1284430b77775d4cea62a33b0685e0523b8dfa2ebcc092d382af5cb5b4f237
```

### `dpkg` source package: `python3.5=3.5.2-2ubuntu0~16.04.13`

Binary Packages:

- `libpython3.5-minimal:amd64=3.5.2-2ubuntu0~16.04.13`
- `libpython3.5-stdlib:amd64=3.5.2-2ubuntu0~16.04.13`
- `python3.5=3.5.2-2ubuntu0~16.04.13`
- `python3.5-minimal=3.5.2-2ubuntu0~16.04.13`

Licenses: (parsed from: `/usr/share/doc/libpython3.5-minimal/copyright`, `/usr/share/doc/libpython3.5-stdlib/copyright`, `/usr/share/doc/python3.5/copyright`, `/usr/share/doc/python3.5-minimal/copyright`)

- `* Permission to use this software in any way is granted without`
- `Apache`
- `Apache-2`
- `Apache-2.0`
- `By obtaining, using, and/or copying this software and/or its`
- `Expat`
- `GPL-2`
- `ISC`
- `LGPL-2.1+`
- `PSF-2`
- `Permission  is  hereby granted,  free  of charge,  to  any person`
- `Permission is hereby granted, free of charge, to any person obtaining`
- `Permission to use, copy, modify,`
- `Python`
- `Redistribution`
- `This software is provided 'as-is', without any express`
- `This software is provided as-is, without express`
- `binary forms, with`
- `distribute this software`
- `distribute this software and`
- `distribute this software for any`
- `implied`
- `its`
- `see above, some license as Python`
- `use in source`
- `without`

Source:

```console
$ apt-get source -qq --print-uris python3.5=3.5.2-2ubuntu0~16.04.13
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.5/python3.5_3.5.2-2ubuntu0%7e16.04.13.dsc' python3.5_3.5.2-2ubuntu0~16.04.13.dsc 3391 SHA512:9d11f96d95b34b7d0364fd19caada2d5eccdeb60453c5b666357d8cc8dbb6aaed19570fdb40874e42ea82b3855423653cd68c20a6164d4dd3ca1b058514874c0
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.5/python3.5_3.5.2.orig.tar.xz' python3.5_3.5.2.orig.tar.xz 15222676 SHA512:c07c3366f1c81e214241444bb9da6db9d11da32ad66bfa29cdad5a3b2e34e4d870bda6d4ce3c3910b582942e91f1d8c8a1c1a7b9464cc147b83c9e0007012742
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.5/python3.5_3.5.2-2ubuntu0%7e16.04.13.debian.tar.xz' python3.5_3.5.2-2ubuntu0~16.04.13.debian.tar.xz 239512 SHA512:9db3f92b481c74632b872a67dab26e919aacac0929c258d23bb556bddb7f2fbad29b784da2ad3d6ea902332cf6caf94bdac8bfaa63f9801b7721d826576d7ea8
```

### `dpkg` source package: `qtbase-opensource-src=5.5.1+dfsg-16ubuntu7.7`

Binary Packages:

- `libqt5concurrent5:amd64=5.5.1+dfsg-16ubuntu7.7`
- `libqt5core5a:amd64=5.5.1+dfsg-16ubuntu7.7`
- `libqt5dbus5:amd64=5.5.1+dfsg-16ubuntu7.7`
- `libqt5gui5:amd64=5.5.1+dfsg-16ubuntu7.7`
- `libqt5network5:amd64=5.5.1+dfsg-16ubuntu7.7`
- `libqt5opengl5:amd64=5.5.1+dfsg-16ubuntu7.7`
- `libqt5printsupport5:amd64=5.5.1+dfsg-16ubuntu7.7`
- `libqt5sql5:amd64=5.5.1+dfsg-16ubuntu7.7`
- `libqt5test5:amd64=5.5.1+dfsg-16ubuntu7.7`
- `libqt5widgets5:amd64=5.5.1+dfsg-16ubuntu7.7`
- `libqt5xml5:amd64=5.5.1+dfsg-16ubuntu7.7`
- `qt5-qmake:amd64=5.5.1+dfsg-16ubuntu7.7`
- `qtbase5-dev:amd64=5.5.1+dfsg-16ubuntu7.7`
- `qtbase5-dev-tools=5.5.1+dfsg-16ubuntu7.7`

Licenses: (parsed from: `/usr/share/doc/libqt5concurrent5/copyright`, `/usr/share/doc/libqt5core5a/copyright`, `/usr/share/doc/libqt5dbus5/copyright`, `/usr/share/doc/libqt5gui5/copyright`, `/usr/share/doc/libqt5network5/copyright`, `/usr/share/doc/libqt5opengl5/copyright`, `/usr/share/doc/libqt5printsupport5/copyright`, `/usr/share/doc/libqt5sql5/copyright`, `/usr/share/doc/libqt5test5/copyright`, `/usr/share/doc/libqt5widgets5/copyright`, `/usr/share/doc/libqt5xml5/copyright`, `/usr/share/doc/qt5-qmake/copyright`, `/usr/share/doc/qtbase5-dev/copyright`, `/usr/share/doc/qtbase5-dev-tools/copyright`)

- `Adobe`
- `Apache-2.0`
- `BSD-3-clause`
- `Bitstream`
- `Bitstream-Vera`
- `Courier`
- `Expat`
- `FTL`
- `GFDL-1.3`
- `GPL-2`
- `GPL-2+`
- `Harfbuzz`
- `Hybrid-BSD`
- `LGPL-2.1`
- `LGPL-2.1-or-3 with Qt-1.1 exception`
- `LGPL-3`
- `MIT`
- `Unicode`
- `Unifont`
- `W3C`
- `Zlib`
- `brg-endian`
- `libjpeg`
- `libpng`
- `public-domain`
- `wintab`

Source:

```console
$ apt-get source -qq --print-uris qtbase-opensource-src=5.5.1+dfsg-16ubuntu7.7
'http://archive.ubuntu.com/ubuntu/pool/main/q/qtbase-opensource-src/qtbase-opensource-src_5.5.1%2bdfsg-16ubuntu7.7.dsc' qtbase-opensource-src_5.5.1+dfsg-16ubuntu7.7.dsc 5092 SHA512:6c4eb1218e2f8687aee3c8b67d8c2b3de854921a3fc7791a5169039673a308bd7d9b4eda114634f4706d82fe32c40a86ce13aee259c720ff60427be42728a7be
'http://archive.ubuntu.com/ubuntu/pool/main/q/qtbase-opensource-src/qtbase-opensource-src_5.5.1%2bdfsg.orig.tar.xz' qtbase-opensource-src_5.5.1+dfsg.orig.tar.xz 47205972 SHA512:742ac3efd8b1e778a43b938a9c9db376704bacd72f5a15320a35435ce7c3e9550405d5e268ddb6a55558c01d3568ffbaf40c6cb3bd98b6a5e8cb844e70a72d2f
'http://archive.ubuntu.com/ubuntu/pool/main/q/qtbase-opensource-src/qtbase-opensource-src_5.5.1%2bdfsg-16ubuntu7.7.debian.tar.xz' qtbase-opensource-src_5.5.1+dfsg-16ubuntu7.7.debian.tar.xz 278360 SHA512:4cc7dcbe5c8a4c85bdaff31148cc65117bfc442c4542d136933b87c469749156ea4f6572bcfd6a6a670442e1f09ca4cdabe18379706782fd55c721ee31d796f0
```

### `dpkg` source package: `qtchooser=52-gae5eeef-2build1~gcc5.2`

Binary Packages:

- `qtchooser=52-gae5eeef-2build1~gcc5.2`

Licenses: (parsed from: `/usr/share/doc/qtchooser/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `LGPL-2.1`
- `LGPL-2.1 with Digia Qt LGPL exception`

Source:

```console
$ apt-get source -qq --print-uris qtchooser=52-gae5eeef-2build1~gcc5.2
'http://archive.ubuntu.com/ubuntu/pool/main/q/qtchooser/qtchooser_52-gae5eeef-2build1%7egcc5.2.dsc' qtchooser_52-gae5eeef-2build1~gcc5.2.dsc 1802 SHA256:2f094cf163c25a6f579ae7fb8e5c7b9f63c48daa8ea77508f606304d7d8c5f43
'http://archive.ubuntu.com/ubuntu/pool/main/q/qtchooser/qtchooser_52-gae5eeef.orig.tar.xz' qtchooser_52-gae5eeef.orig.tar.xz 31288 SHA256:03ff4b6abdd1a2230927a52f962febd47edf8adf21c3ad0cd242af014d1ae64c
'http://archive.ubuntu.com/ubuntu/pool/main/q/qtchooser/qtchooser_52-gae5eeef-2build1%7egcc5.2.debian.tar.xz' qtchooser_52-gae5eeef-2build1~gcc5.2.debian.tar.xz 5488 SHA256:fbf0a5cb066d1a6ac39bb652d90975cb0e24c66cc46295d4a7726648ec1bb5b1
```

### `dpkg` source package: `qtsvg-opensource-src=5.5.1-2build1`

Binary Packages:

- `libqt5svg5:amd64=5.5.1-2build1`

Licenses: (parsed from: `/usr/share/doc/libqt5svg5/copyright`)

- `BSD-3-clause`
- `GFDL-1.3`
- `GFDL-NIV-1.3`
- `LGPL-2.1`
- `LGPL-2.1-or-3 with Qt-1.1 exception`
- `LGPL-3`
- `MIT-ISI`

Source:

```console
$ apt-get source -qq --print-uris qtsvg-opensource-src=5.5.1-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/q/qtsvg-opensource-src/qtsvg-opensource-src_5.5.1-2build1.dsc' qtsvg-opensource-src_5.5.1-2build1.dsc 2657 SHA256:3b4f80de41039cb048c9689529c1272bbec682255a2d982928f8a5504b53aea4
'http://archive.ubuntu.com/ubuntu/pool/main/q/qtsvg-opensource-src/qtsvg-opensource-src_5.5.1.orig.tar.xz' qtsvg-opensource-src_5.5.1.orig.tar.xz 1802880 SHA256:f7f588be48befd9ccab5a6086832551b8899e8bed9e603ddea979581e05a91c7
'http://archive.ubuntu.com/ubuntu/pool/main/q/qtsvg-opensource-src/qtsvg-opensource-src_5.5.1-2build1.debian.tar.gz' qtsvg-opensource-src_5.5.1-2build1.debian.tar.gz 11095 SHA256:5bb1da429565e1f09d5319e01003a2c91e0d65e83a051993f80bd432259feac9
```

### `dpkg` source package: `qttools-opensource-src=5.5.1-3ubuntu0.1`

Binary Packages:

- `libqt5designer5:amd64=5.5.1-3ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libqt5designer5/copyright`)

- `Apache-2.0`
- `BSD-3-clause`
- `GFDL-1.3`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1-or-3 with Qt-1.1 exception`
- `LGPL-3`
- `MIT-Unicode`

Source:

```console
$ apt-get source -qq --print-uris qttools-opensource-src=5.5.1-3ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/universe/q/qttools-opensource-src/qttools-opensource-src_5.5.1-3ubuntu0.1.dsc' qttools-opensource-src_5.5.1-3ubuntu0.1.dsc 3757 SHA512:2d1141de1fe1f2e6a88b72a446c6439adf7b9bd79d8f6fa898fd113ded803659b786b3cf33b7581ad61b7cf368f227c65170e51dd550540abe29d9c3c073b886
'http://archive.ubuntu.com/ubuntu/pool/universe/q/qttools-opensource-src/qttools-opensource-src_5.5.1.orig.tar.xz' qttools-opensource-src_5.5.1.orig.tar.xz 9327100 SHA512:b5049cb48aa051c5d049821c55e62788bc7928acef1c668c142f317072d904bbd9571944665bd727d13b3c516a1361e909f99c87717ffc6eb6210e443e821b1b
'http://archive.ubuntu.com/ubuntu/pool/universe/q/qttools-opensource-src/qttools-opensource-src_5.5.1-3ubuntu0.1.debian.tar.xz' qttools-opensource-src_5.5.1-3ubuntu0.1.debian.tar.xz 43880 SHA512:b5578f729a9bc7f48013661532612a020a34ae6e2987587cfdf2adac403b6a739033f966cd08d9e91981080daf0332c39e6af54308ac3650f5f61554b65df203
```

### `dpkg` source package: `qwt=6.1.2-5`

Binary Packages:

- `libqwt-headers=6.1.2-5`
- `libqwt-qt5-6=6.1.2-5`
- `libqwt-qt5-dev=6.1.2-5`

Licenses: (parsed from: `/usr/share/doc/libqwt-headers/copyright`, `/usr/share/doc/libqwt-qt5-6/copyright`, `/usr/share/doc/libqwt-qt5-dev/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris qwt=6.1.2-5
'http://archive.ubuntu.com/ubuntu/pool/universe/q/qwt/qwt_6.1.2-5.dsc' qwt_6.1.2-5.dsc 2547 SHA256:c9c7b302efaf0d9188e7ebcc279efcc818975d0a73a1ff9be6fd421f670057b7
'http://archive.ubuntu.com/ubuntu/pool/universe/q/qwt/qwt_6.1.2.orig.tar.bz2' qwt_6.1.2.orig.tar.bz2 3286177 SHA256:938706d5806cf9b481c36535c55950656510bc219f3d48b85ddc5a79ef3a0543
'http://archive.ubuntu.com/ubuntu/pool/universe/q/qwt/qwt_6.1.2-5.debian.tar.xz' qwt_6.1.2-5.debian.tar.xz 31284 SHA256:ec8cdaaabbd6d1f0e4259e5f73f744abc4f4d745db449d2f3de10b074a8b2fe2
```

### `dpkg` source package: `readline6=6.3-8ubuntu2`

Binary Packages:

- `libreadline6:amd64=6.3-8ubuntu2`
- `readline-common=6.3-8ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libreadline6/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris readline6=6.3-8ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline6/readline6_6.3-8ubuntu2.dsc' readline6_6.3-8ubuntu2.dsc 2566 SHA256:3c7e3168dd1510f040325c1ab1e28c7fbde34d1a899005a98a894a9f27bd98f6
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline6/readline6_6.3.orig.tar.gz' readline6_6.3.orig.tar.gz 2468560 SHA256:56ba6071b9462f980c5a72ab0023893b65ba6debb4eeb475d7a563dc65cafd43
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline6/readline6_6.3-8ubuntu2.debian.tar.xz' readline6_6.3-8ubuntu2.debian.tar.xz 31232 SHA256:32d4f30dc92d79d722b04c2b678883245d2eccff2ed4f8591faebca7e6d81948
```

### `dpkg` source package: `rtmpdump=2.4+20151223.gitfa8646d-1ubuntu0.1`

Binary Packages:

- `librtmp1:amd64=2.4+20151223.gitfa8646d-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/librtmp1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris rtmpdump=2.4+20151223.gitfa8646d-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d-1ubuntu0.1.dsc' rtmpdump_2.4+20151223.gitfa8646d-1ubuntu0.1.dsc 2408 SHA512:51585f82a47b5c050148ff861fca899d13d0e77ce5095f782a5986e40df05afb45f23fd7bff9fcafadc5996eb3b8d369e9a6f0bca2a56f7576bcb205be6cd18b
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.orig.tar.gz' rtmpdump_2.4+20151223.gitfa8646d.orig.tar.gz 149016 SHA512:dbafe796c99f61c75f12eb7f4b424b72c4538da09a732eeb1ed0a259139b6dc683d036b504593a4a5a1d6656ca72bf40b00117b6f6c4040e9061e5d07f889530
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d-1ubuntu0.1.debian.tar.xz' rtmpdump_2.4+20151223.gitfa8646d-1ubuntu0.1.debian.tar.xz 9000 SHA512:d8bc31759d07b4b65b2f941126c0a6978bb5d33b1457aa541e2f7e20c5ebb99b4893f5eb73c482fd796ae8dc4ec5899421281b60a43b9c9f1da054b3c877699a
```

### `dpkg` source package: `schroedinger=1.0.11-2.1build1`

Binary Packages:

- `libschroedinger-1.0-0:amd64=1.0.11-2.1build1`

Licenses: (parsed from: `/usr/share/doc/libschroedinger-1.0-0/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris schroedinger=1.0.11-2.1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/s/schroedinger/schroedinger_1.0.11-2.1build1.dsc' schroedinger_1.0.11-2.1build1.dsc 1653 SHA256:426cd30212a67a8088d8998c54cc67bb2ac0740256a57960bc14fadc3d97a8d7
'http://archive.ubuntu.com/ubuntu/pool/universe/s/schroedinger/schroedinger_1.0.11.orig.tar.gz' schroedinger_1.0.11.orig.tar.gz 1019247 SHA256:1e572a0735b92aca5746c4528f9bebd35aa0ccf8619b22fa2756137a8cc9f912
'http://archive.ubuntu.com/ubuntu/pool/universe/s/schroedinger/schroedinger_1.0.11-2.1build1.debian.tar.xz' schroedinger_1.0.11-2.1build1.debian.tar.xz 16252 SHA256:ade22a54ba77a9f8796487ef70f929abc5d7e4b527cba7c30f4765b5f7096a22
```

### `dpkg` source package: `sdformat6=6.2.0-1~xenial`

Binary Packages:

- `libsdformat6:amd64=6.2.0-1~xenial`
- `libsdformat6-dev:amd64=6.2.0-1~xenial`
- `sdformat-sdf=6.2.0-1~xenial`

Licenses: (parsed from: `/usr/share/doc/libsdformat6/copyright`, `/usr/share/doc/libsdformat6-dev/copyright`, `/usr/share/doc/sdformat-sdf/copyright`)

- `Apache`
- `Apache-2.0`
- `BSD-3-clause`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `sed=4.2.2-7`

Binary Packages:

- `sed=4.2.2-7`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris sed=4.2.2-7
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.2.2-7.dsc' sed_4.2.2-7.dsc 1974 SHA256:42f5764a279ac3f9b31d9e922024b519b950b35e82830e552839cd41fbb8e0b0
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.2.2.orig.tar.bz2' sed_4.2.2.orig.tar.bz2 1059414 SHA256:f048d1838da284c8bc9753e4506b85a1e0cc1ea8999d36f6995bcb9460cddbd7
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.2.2-7.debian.tar.xz' sed_4.2.2-7.debian.tar.xz 85048 SHA256:416b70f601b40246c1daf7261f117ea9ff01564f574bd34871573fc5c9f74db7
```

### `dpkg` source package: `sensible-utils=0.0.9ubuntu0.16.04.1`

Binary Packages:

- `sensible-utils=0.0.9ubuntu0.16.04.1`

Licenses: (parsed from: `/usr/share/doc/sensible-utils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris sensible-utils=0.0.9ubuntu0.16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.9ubuntu0.16.04.1.dsc' sensible-utils_0.0.9ubuntu0.16.04.1.dsc 1514 SHA512:b888a311da2a29f7c79483c20148eaa0ca6d359f108c507bdca2fa6251b3fa24082513433e403c3f4176df91f21e0abe2665b3813007a84c370b18b3053de796
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.9ubuntu0.16.04.1.tar.xz' sensible-utils_0.0.9ubuntu0.16.04.1.tar.xz 54048 SHA512:2a928fdae2355e494b2c6c62d147c0e00286ed2d956262bc92c941692ce86499fd1f3b98d5b2bc89f113686fbcd882f5a7e5d65235159a521a84882c40cdb971
```

### `dpkg` source package: `shadow=1:4.2-3.1ubuntu5.4`

Binary Packages:

- `login=1:4.2-3.1ubuntu5.4`
- `passwd=1:4.2-3.1ubuntu5.4`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.2-3.1ubuntu5.4
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.2-3.1ubuntu5.4.dsc' shadow_4.2-3.1ubuntu5.4.dsc 2513 SHA512:b7de769873bc0941f55d5c64251fedbd434a72824d921ecd6d19f806a0412a878c64a61a6ed7632e67c1b3be48163d0f50834001641ca2876185f63b270b1b9a
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.2.orig.tar.xz' shadow_4.2.orig.tar.xz 1088696 SHA512:8c9b482c6006198766efe44df68c863116f7e4c8ee7056e7f9cd8f66af166944aab119f567da6f96cd34fb5dcf19fba9f5e3d7c226f0bc48e3aef4906497ae16
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.2-3.1ubuntu5.4.debian.tar.xz' shadow_4.2-3.1ubuntu5.4.debian.tar.xz 506364 SHA512:3502e415aa519109e421b383356d55d69e82f276a225cafad89a36af28a95be7a0695abec9ea2fc0fdbc02d20c68e385dc7a4bbc6c725b043daf65a66dc1b01f
```

### `dpkg` source package: `shine=3.1.0-4`

Binary Packages:

- `libshine3:amd64=3.1.0-4`

Licenses: (parsed from: `/usr/share/doc/libshine3/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris shine=3.1.0-4
'http://archive.ubuntu.com/ubuntu/pool/universe/s/shine/shine_3.1.0-4.dsc' shine_3.1.0-4.dsc 2042 SHA256:7cad74f28cb19f376657dcbca40fd348a139b787b8cd8f6037fb76bae17f33c3
'http://archive.ubuntu.com/ubuntu/pool/universe/s/shine/shine_3.1.0.orig.tar.gz' shine_3.1.0.orig.tar.gz 1275236 SHA256:6c5310bda766b116ed2415d639a27e5e11040e068b4b2db6bd733333e620cb4f
'http://archive.ubuntu.com/ubuntu/pool/universe/s/shine/shine_3.1.0-4.debian.tar.xz' shine_3.1.0-4.debian.tar.xz 3472 SHA256:5fc56f00d6653fc9d33b6adf802ea20324ccec762f9c4e581e1ddffee0fdb1a4
```

### `dpkg` source package: `simbody=3.5.3+dfsg-1ubuntu1`

Binary Packages:

- `libsimbody-dev:amd64=3.5.3+dfsg-1ubuntu1`
- `libsimbody3.5v5:amd64=3.5.3+dfsg-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libsimbody-dev/copyright`, `/usr/share/doc/libsimbody3.5v5/copyright`)

- `AS-IS`
- `Apache2`
- `BSD-3`
- `ECLIPSE-1`

Source:

```console
$ apt-get source -qq --print-uris simbody=3.5.3+dfsg-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/universe/s/simbody/simbody_3.5.3%2bdfsg-1ubuntu1.dsc' simbody_3.5.3+dfsg-1ubuntu1.dsc 2364 SHA256:d8a3d4771b919e1e8187354985ed6f73fade558bc3f5d0152c8bf7b79306d17e
'http://archive.ubuntu.com/ubuntu/pool/universe/s/simbody/simbody_3.5.3%2bdfsg.orig.tar.gz' simbody_3.5.3+dfsg.orig.tar.gz 22354791 SHA256:377cf929663c699931d3c94913c4e8103737c4c34a9053cf7fe98ecd43419f71
'http://archive.ubuntu.com/ubuntu/pool/universe/s/simbody/simbody_3.5.3%2bdfsg-1ubuntu1.debian.tar.xz' simbody_3.5.3+dfsg-1ubuntu1.debian.tar.xz 11868 SHA256:3652dca348eee88ed4a309fc3a8191f521ea002d1327e6801b1a8af3b2d62740
```

### `dpkg` source package: `slang2=2.3.0-2ubuntu1.1`

Binary Packages:

- `libslang2:amd64=2.3.0-2ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libslang2/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris slang2=2.3.0-2ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/s/slang2/slang2_2.3.0-2ubuntu1.1.dsc' slang2_2.3.0-2ubuntu1.1.dsc 2445 SHA512:6409599987c27d829aa646c9b1a3bd4f66113cbf8c50b10996d56e075173d7a70d979cffb79870a28f01a9646a5732920430300349db83cd8208b4cda08db5a9
'http://archive.ubuntu.com/ubuntu/pool/main/s/slang2/slang2_2.3.0.orig.tar.xz' slang2_2.3.0.orig.tar.xz 1250392 SHA512:0c7bc448d1d687aa5b1671ee9706b9ba97cab1f62cf9b7ae1b073bbc14722e6d73fe3cd70f089f1fc7dd7ca2baa18969a35bef6de2c3af69888cf441fc214d09
'http://archive.ubuntu.com/ubuntu/pool/main/s/slang2/slang2_2.3.0-2ubuntu1.1.debian.tar.xz' slang2_2.3.0-2ubuntu1.1.debian.tar.xz 22868 SHA512:c945fbbf44fc8e0fe09740028593b195c59150f70660d0c7ac403834ae4a3d0ad1eceed25a9a281a84c796ab4d6a20454a71a1d1fa7ae69ef2e52b2608e23ccf
```

### `dpkg` source package: `snappy=1.1.3-2`

Binary Packages:

- `libsnappy1v5:amd64=1.1.3-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/snappy/1.1.3-2/


### `dpkg` source package: `spatialite=4.3.0a-5`

Binary Packages:

- `libspatialite-dev:amd64=4.3.0a-5`
- `libspatialite7:amd64=4.3.0a-5`

Licenses: (parsed from: `/usr/share/doc/libspatialite-dev/copyright`, `/usr/share/doc/libspatialite7/copyright`)

- `BSD-4-Clause`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Libtool exception`
- `GPL-3`
- `GPL-3+`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MPL-1.1`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris spatialite=4.3.0a-5
'http://archive.ubuntu.com/ubuntu/pool/universe/s/spatialite/spatialite_4.3.0a-5.dsc' spatialite_4.3.0a-5.dsc 2413 SHA256:8956ac845470e3990d44ed0f21b61d03125ed509f48f2dc69ba0849d3c20ef3f
'http://archive.ubuntu.com/ubuntu/pool/universe/s/spatialite/spatialite_4.3.0a.orig.tar.gz' spatialite_4.3.0a.orig.tar.gz 4440660 SHA256:88900030a4762904a7880273f292e5e8ca6b15b7c6c3fb88ffa9e67ee8a5a499
'http://archive.ubuntu.com/ubuntu/pool/universe/s/spatialite/spatialite_4.3.0a-5.debian.tar.xz' spatialite_4.3.0a-5.debian.tar.xz 23860 SHA256:ba0b1a4ebfc3ebce091a3275dd55bb6a484366b4d15d1a8fd3b2496695ada1c4
```

### `dpkg` source package: `speex=1.2~rc1.2-1ubuntu1`

Binary Packages:

- `libspeex1:amd64=1.2~rc1.2-1ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris speex=1.2~rc1.2-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/s/speex/speex_1.2%7erc1.2-1ubuntu1.dsc' speex_1.2~rc1.2-1ubuntu1.dsc 2317 SHA256:09af27fb2d683424c30994a202ac2ddf6cc4b027ab4043097dee93e30296fbb7
'http://archive.ubuntu.com/ubuntu/pool/main/s/speex/speex_1.2%7erc1.2.orig.tar.gz' speex_1.2~rc1.2.orig.tar.gz 1069339 SHA256:8320fb86a024dfe1b6a78a7d57bc2388e5f8cb7f2fa10c946db2704e1e5d2805
'http://archive.ubuntu.com/ubuntu/pool/main/s/speex/speex_1.2%7erc1.2-1ubuntu1.diff.gz' speex_1.2~rc1.2-1ubuntu1.diff.gz 10290 SHA256:8058ab2ea9dc3c19d7fcdeab2c5e8838ba6b73ed2c7d3467407dcb51b049e05d
```

### `dpkg` source package: `sqlite3=3.11.0-1ubuntu1.5`

Binary Packages:

- `libsqlite3-0:amd64=3.11.0-1ubuntu1.5`
- `libsqlite3-dev:amd64=3.11.0-1ubuntu1.5`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`, `/usr/share/doc/libsqlite3-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.11.0-1ubuntu1.5
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.11.0-1ubuntu1.5.dsc' sqlite3_3.11.0-1ubuntu1.5.dsc 2625 SHA512:45dea33802cee1cd37c14550c817283d43d41c11b58398c754e5c23ebc2eaeada2478217c9739a4e80534bcc3b9667adb904d59a6e8b6efe42293c8faaaa76a9
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.11.0.orig-www.tar.xz' sqlite3_3.11.0.orig-www.tar.xz 3135012 SHA512:132ea8354b5c541b88e21af14ac3db5c741f904271c1027c06a10f19772aea839e0b88398791670fd68ccd9e01473431f5d5f67784f955dcab781c28ef551e03
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.11.0.orig.tar.xz' sqlite3_3.11.0.orig.tar.xz 5122440 SHA512:6d918b52f0dc10e49a43ed5c10f177424bdc1373d48367b57580937c64aaed4836c23c06b4643549ca4bca1913233056fb23314be2023a22ba51ee19eb32b949
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.11.0-1ubuntu1.5.debian.tar.xz' sqlite3_3.11.0-1ubuntu1.5.debian.tar.xz 45984 SHA512:54535155d3aa3626d1642224d339aff1a492c27589fbb55450de0e074bccb19162c01a2e23cd815a0dc7fdcd574f4cac283eaf7315cf94764b755eca5834040f
```

### `dpkg` source package: `superlu=4.3+dfsg-3`

Binary Packages:

- `libsuperlu4:amd64=4.3+dfsg-3`

Licenses: (parsed from: `/usr/share/doc/libsuperlu4/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris superlu=4.3+dfsg-3
'http://archive.ubuntu.com/ubuntu/pool/universe/s/superlu/superlu_4.3%2bdfsg-3.dsc' superlu_4.3+dfsg-3.dsc 2177 SHA256:6ff424d8df06cb2c04777e1d46879b3b6fc67bef612b8f44c850c2a358bd2bac
'http://archive.ubuntu.com/ubuntu/pool/universe/s/superlu/superlu_4.3%2bdfsg.orig.tar.xz' superlu_4.3+dfsg.orig.tar.xz 973628 SHA256:19763e9a298c4a63bb67e382a0d7ed96fa83d03faaed8d94ad9f9fc69b1a62cc
'http://archive.ubuntu.com/ubuntu/pool/universe/s/superlu/superlu_4.3%2bdfsg-3.debian.tar.xz' superlu_4.3+dfsg-3.debian.tar.xz 8472 SHA256:49b450efda3b636894fb66b0998c6246d5df1f6ad9135a5c7c4983dd630c8fc4
```

### `dpkg` source package: `systemd=229-4ubuntu21.31`

Binary Packages:

- `libsystemd0:amd64=229-4ubuntu21.31`
- `libudev1:amd64=229-4ubuntu21.31`
- `systemd=229-4ubuntu21.31`
- `systemd-sysv=229-4ubuntu21.31`

Licenses: (parsed from: `/usr/share/doc/libsystemd0/copyright`, `/usr/share/doc/libudev1/copyright`, `/usr/share/doc/systemd/copyright`, `/usr/share/doc/systemd-sysv/copyright`)

- `CC0`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris systemd=229-4ubuntu21.31
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_229-4ubuntu21.31.dsc' systemd_229-4ubuntu21.31.dsc 4643 SHA512:943ec0083ff45b277b559098f8c8b14f08000969be130445a7e10aa8c6939448bbf6cce372ccdddf7e2ad9de26895be825e07e3cd6434efeaff4e1072ed2d7ce
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_229.orig.tar.gz' systemd_229.orig.tar.gz 4319173 SHA512:d692c0c9fc82f2fce64a5ec1caa4a0f8cf9edaeb1bdaaa1c462669db8f78b3dd6b33c87ef926ff21823582d0460f7b63aa3755792f9ae2cd6fb813ba08a35c39
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_229-4ubuntu21.31.debian.tar.xz' systemd_229-4ubuntu21.31.debian.tar.xz 315956 SHA512:8c82953d97cd9e0f76242f5b3102001d8e601020d432e1db580e028ce63967d33ffa1c52717d1ff0c241fab559e4c1433e734086af3d8706ea50256c78619bc1
```

### `dpkg` source package: `sysvinit=2.88dsf-59.3ubuntu2`

Binary Packages:

- `initscripts=2.88dsf-59.3ubuntu2`
- `sysv-rc=2.88dsf-59.3ubuntu2`
- `sysvinit-utils=2.88dsf-59.3ubuntu2`

Licenses: (parsed from: `/usr/share/doc/initscripts/copyright`, `/usr/share/doc/sysv-rc/copyright`, `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=2.88dsf-59.3ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf-59.3ubuntu2.dsc' sysvinit_2.88dsf-59.3ubuntu2.dsc 2284 SHA256:a64f0c2c11c14c8bf57fee7c583ae38ea710ec3288c3d840daeeec5a2eab1676
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf.orig.tar.gz' sysvinit_2.88dsf.orig.tar.gz 125330 SHA256:b016f937958d2809a020d407e1287bdc09abf1d44efaa96530e2ea57f544f4e8
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf-59.3ubuntu2.debian.tar.xz' sysvinit_2.88dsf-59.3ubuntu2.debian.tar.xz 134864 SHA256:d4cf7aa3d6c1f8727cbd699395053d541844a9ff02ea5e6a1119eb90604586b8
```

### `dpkg` source package: `tar=1.28-2.1ubuntu0.2`

Binary Packages:

- `tar=1.28-2.1ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris tar=1.28-2.1ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.28-2.1ubuntu0.2.dsc' tar_1.28-2.1ubuntu0.2.dsc 1865 SHA512:c54bd26c1f337b9996d21b6a487dbba955b42059b8fb32cb5d812cb7cbb4f288681f976a567425ce81234ee5f919991d04bdce5f19f5c8ee9fbf0381df409535
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.28.orig.tar.xz' tar_1.28.orig.tar.xz 1756440 SHA512:dc91045b84bf5df513ae936be14977b029644a77ac03f58d21d34e61e50d8069f95526b9e706f2da7d41d3d0ed7de88bf13c2c066e63a80e5651a24077e604c2
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.28-2.1ubuntu0.2.debian.tar.xz' tar_1.28-2.1ubuntu0.2.debian.tar.xz 39348 SHA512:a646e5331c9f5b3c193b564798a2c02e85b861afda3a49c7f91bcc1a1c46bf9a2e824e6a34cd1ef0e470412a768258323594bb1490c0ae41643fb5018105442e
```

### `dpkg` source package: `tbb=4.4~20151115-0ubuntu3`

Binary Packages:

- `libtbb-dev:amd64=4.4~20151115-0ubuntu3`
- `libtbb2:amd64=4.4~20151115-0ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libtbb-dev/copyright`, `/usr/share/doc/libtbb2/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris tbb=4.4~20151115-0ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tbb/tbb_4.4%7e20151115-0ubuntu3.dsc' tbb_4.4~20151115-0ubuntu3.dsc 2101 SHA256:f99cdc350c1c6e15576d03db78b3a8742bf6f4ef4c0c8d1e968c44f7f8f90e7d
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tbb/tbb_4.4%7e20151115.orig.tar.gz' tbb_4.4~20151115.orig.tar.gz 3029951 SHA256:3dd5c4fc85c18f49307d3cde4ce937bda230679f7fe2906112e5c8dee4cc77bb
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tbb/tbb_4.4%7e20151115-0ubuntu3.debian.tar.xz' tbb_4.4~20151115-0ubuntu3.debian.tar.xz 10056 SHA256:3882117671a997c930ad422e443ebe684b77c46c382a16333fb00d4e16ea83d4
```

### `dpkg` source package: `tcp-wrappers=7.6.q-25`

Binary Packages:

- `libwrap0:amd64=7.6.q-25`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris tcp-wrappers=7.6.q-25
'http://archive.ubuntu.com/ubuntu/pool/main/t/tcp-wrappers/tcp-wrappers_7.6.q-25.dsc' tcp-wrappers_7.6.q-25.dsc 1132 SHA256:77e162fcb2fcbe34448cf445f10e746d417a61ec0d79f46fd8ac5883ffc720c7
'http://archive.ubuntu.com/ubuntu/pool/main/t/tcp-wrappers/tcp-wrappers_7.6.q.orig.tar.gz' tcp-wrappers_7.6.q.orig.tar.gz 99438 SHA256:9543d7adedf78a6de0b221ccbbd1952e08b5138717f4ade814039bb489a4315d
'http://archive.ubuntu.com/ubuntu/pool/main/t/tcp-wrappers/tcp-wrappers_7.6.q-25.debian.tar.xz' tcp-wrappers_7.6.q-25.debian.tar.xz 35504 SHA256:fb7bb73c586a0c00c76c730ab93ffd73c300e8c4fd83df76222e305a2466c7bb
```

### `dpkg` source package: `tiff=4.0.6-1ubuntu0.8`

Binary Packages:

- `libtiff5:amd64=4.0.6-1ubuntu0.8`

Licenses: (parsed from: `/usr/share/doc/libtiff5/copyright`)

- `Hylafax`

Source:

```console
$ apt-get source -qq --print-uris tiff=4.0.6-1ubuntu0.8
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.0.6-1ubuntu0.8.dsc' tiff_4.0.6-1ubuntu0.8.dsc 2399 SHA512:283556ddf55d97a5e93388c3dc6f233e77a9d041f399820a30ad449500c921479d2e3803d5865bbf40f2b7772aea5bc6c4fe6799a167bccc85781b6b0d88bbce
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.0.6.orig.tar.gz' tiff_4.0.6.orig.tar.gz 2192991 SHA512:2c8dbaaaab9f82a7722bfe8cb6fcfcf67472beb692f1b7dafaf322759e7016dad1bc58457c0f03db50aa5bd088fef2b37358fcbc1524e20e9e14a9620373fdf8
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.0.6-1ubuntu0.8.debian.tar.xz' tiff_4.0.6-1ubuntu0.8.debian.tar.xz 64356 SHA512:a36b70c147c9a7523a050c3c2d863253cdbe4c13ebb8dc55342b44a66c64fd991255b016618d08c90ec6f5ec4f3ad775823c9914c14451245d6bb33d241b3cee
```

### `dpkg` source package: `tinyxml2=2.2.0-1.1ubuntu1`

Binary Packages:

- `libtinyxml2-2v5:amd64=2.2.0-1.1ubuntu1`
- `libtinyxml2-dev:amd64=2.2.0-1.1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libtinyxml2-2v5/copyright`, `/usr/share/doc/libtinyxml2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `zlib/libpng`

Source:

```console
$ apt-get source -qq --print-uris tinyxml2=2.2.0-1.1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml2/tinyxml2_2.2.0-1.1ubuntu1.dsc' tinyxml2_2.2.0-1.1ubuntu1.dsc 1968 SHA256:5ccede2b8baeb174c4fcc24e0555c9f229bb832cc5bc6bbb8477e2fb15bcb3fa
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml2/tinyxml2_2.2.0.orig.tar.gz' tinyxml2_2.2.0.orig.tar.gz 455226 SHA256:f891224f32e7a06bf279290619cec80cc8ddc335c13696872195ffb87f5bce67
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml2/tinyxml2_2.2.0-1.1ubuntu1.debian.tar.xz' tinyxml2_2.2.0-1.1ubuntu1.debian.tar.xz 4896 SHA256:2e2ecb4f405be569a5fb55f2494d625d43e65b2ff620e751ace79fb0f1df6160
```

### `dpkg` source package: `tinyxml=2.6.2-3`

Binary Packages:

- `libtinyxml-dev:amd64=2.6.2-3`
- `libtinyxml2.6.2v5:amd64=2.6.2-3`

Licenses: (parsed from: `/usr/share/doc/libtinyxml-dev/copyright`, `/usr/share/doc/libtinyxml2.6.2v5/copyright`)

- `ZLIB`

Source:

```console
$ apt-get source -qq --print-uris tinyxml=2.6.2-3
'http://archive.ubuntu.com/ubuntu/pool/main/t/tinyxml/tinyxml_2.6.2-3.dsc' tinyxml_2.6.2-3.dsc 2059 SHA256:0299e682a6e38511f180e5f0ecab4372236574bec0b8b07f25534780361098ea
'http://archive.ubuntu.com/ubuntu/pool/main/t/tinyxml/tinyxml_2.6.2.orig.tar.gz' tinyxml_2.6.2.orig.tar.gz 210124 SHA256:15bdfdcec58a7da30adc87ac2b078e4417dbe5392f3afb719f9ba6d062645593
'http://archive.ubuntu.com/ubuntu/pool/main/t/tinyxml/tinyxml_2.6.2-3.debian.tar.xz' tinyxml_2.6.2-3.debian.tar.xz 4152 SHA256:f592529ece8b36a0ae2bacfb9d13ebb67ee3d4409af10c92f7bb9f73f3ba1423
```

### `dpkg` source package: `twolame=0.3.13-1.2`

Binary Packages:

- `libtwolame0:amd64=0.3.13-1.2`

Licenses: (parsed from: `/usr/share/doc/libtwolame0/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris twolame=0.3.13-1.2
'http://archive.ubuntu.com/ubuntu/pool/universe/t/twolame/twolame_0.3.13-1.2.dsc' twolame_0.3.13-1.2.dsc 1942 SHA256:39c3844a32217631ea90dfee409d43f48b0152466c0d657976b5a5d3a792c35d
'http://archive.ubuntu.com/ubuntu/pool/universe/t/twolame/twolame_0.3.13.orig.tar.gz' twolame_0.3.13.orig.tar.gz 660415 SHA256:98f332f48951f47f23f70fd0379463aff7d7fb26f07e1e24e42ddef22cc6112a
'http://archive.ubuntu.com/ubuntu/pool/universe/t/twolame/twolame_0.3.13-1.2.diff.gz' twolame_0.3.13-1.2.diff.gz 4432 SHA256:a98313a8238c99f6a3b1fd280f2be62cd0fdfe1c2fffcb8bd7d2544141927470
```

### `dpkg` source package: `ubuntu-keyring=2012.05.19.1`

Binary Packages:

- `ubuntu-keyring=2012.05.19.1`

Licenses: (parsed from: `/usr/share/doc/ubuntu-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris ubuntu-keyring=2012.05.19.1
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2012.05.19.1.dsc' ubuntu-keyring_2012.05.19.1.dsc 1505 SHA512:42d1e29ed8de0f37c17ccf2284e11a465dd42f9bcda222991696f0b41ab0cf57e0b6d09b2ccf377c6f578c0527bdc4fbd3c1caf1ddb8f9ad3da9406d27fe5f92
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2012.05.19.1.tar.gz' ubuntu-keyring_2012.05.19.1.tar.gz 21072 SHA512:62a9e816ef2a5f882f0974e940b15240aecdcf556d5a84c250fbe7c82dadd2154e22a0c3799bac832aa53f9782062d8433f1a8f3d1e407471d7292a315a59351
```

### `dpkg` source package: `ucf=3.0036`

Binary Packages:

- `ucf=3.0036`

Licenses: (parsed from: `/usr/share/doc/ucf/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris ucf=3.0036
'http://archive.ubuntu.com/ubuntu/pool/main/u/ucf/ucf_3.0036.dsc' ucf_3.0036.dsc 1343 SHA256:e67a8a3012ac357c7759dabd93d258422b1003bad8c3f17f25fc2a289eeda3bb
'http://archive.ubuntu.com/ubuntu/pool/main/u/ucf/ucf_3.0036.tar.xz' ucf_3.0036.tar.xz 65020 SHA256:34aa44416106f1205376918386b2896edf21dd42b633133b5f8fedecae17fca8
```

### `dpkg` source package: `unixodbc=2.3.1-4.1`

Binary Packages:

- `libodbc1:amd64=2.3.1-4.1`
- `odbcinst=2.3.1-4.1`
- `odbcinst1debian2:amd64=2.3.1-4.1`
- `unixodbc=2.3.1-4.1`
- `unixodbc-dev=2.3.1-4.1`

Licenses: (parsed from: `/usr/share/doc/libodbc1/copyright`, `/usr/share/doc/odbcinst/copyright`, `/usr/share/doc/odbcinst1debian2/copyright`, `/usr/share/doc/unixodbc/copyright`, `/usr/share/doc/unixodbc-dev/copyright`)

- `GPL`
- `GPL-2+`
- `LGPL`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris unixodbc=2.3.1-4.1
'http://archive.ubuntu.com/ubuntu/pool/main/u/unixodbc/unixodbc_2.3.1-4.1.dsc' unixodbc_2.3.1-4.1.dsc 2124 SHA256:e48ae9b7711b9bf5d2a486b1fa393f4efc4c6e5c50847af94b7d5e3b000c99fc
'http://archive.ubuntu.com/ubuntu/pool/main/u/unixodbc/unixodbc_2.3.1.orig.tar.gz' unixodbc_2.3.1.orig.tar.gz 1813380 SHA256:1f5be3edecff9e31072ef738ea1d8019594c4f0c2e3ab427e6eef153491db6a2
'http://archive.ubuntu.com/ubuntu/pool/main/u/unixodbc/unixodbc_2.3.1-4.1.diff.gz' unixodbc_2.3.1-4.1.diff.gz 384817 SHA256:a82169101ead03fb39365677d4419a26de21560eecb70c8107280daae49d3c3e
```

### `dpkg` source package: `uriparser=0.8.4-1`

Binary Packages:

- `liburiparser1:amd64=0.8.4-1`

Licenses: (parsed from: `/usr/share/doc/liburiparser1/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris uriparser=0.8.4-1
'http://archive.ubuntu.com/ubuntu/pool/universe/u/uriparser/uriparser_0.8.4-1.dsc' uriparser_0.8.4-1.dsc 2111 SHA256:82ee69e5c8e21489de91979248eda96b5b114d935fa73104dd161d9f64cfbe7e
'http://archive.ubuntu.com/ubuntu/pool/universe/u/uriparser/uriparser_0.8.4.orig.tar.bz2' uriparser_0.8.4.orig.tar.bz2 358408 SHA256:ce7ccda4136974889231e8426a785e7578e66a6283009cfd13f1b24a5e657b23
'http://archive.ubuntu.com/ubuntu/pool/universe/u/uriparser/uriparser_0.8.4-1.debian.tar.xz' uriparser_0.8.4-1.debian.tar.xz 6096 SHA256:fdff8accbb61b3befed0f9da70975fec473051a0f1f9b2020fead23471eed43f
```

### `dpkg` source package: `ustr=1.0.4-5`

Binary Packages:

- `libustr-1.0-1:amd64=1.0.4-5`

Licenses: (parsed from: `/usr/share/doc/libustr-1.0-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris ustr=1.0.4-5
'http://archive.ubuntu.com/ubuntu/pool/main/u/ustr/ustr_1.0.4-5.dsc' ustr_1.0.4-5.dsc 2016 SHA256:3c06f54e4c05e76bf7c4d7192bbf3a7b259372c7448a4245e8317115808cf7c9
'http://archive.ubuntu.com/ubuntu/pool/main/u/ustr/ustr_1.0.4.orig.tar.gz' ustr_1.0.4.orig.tar.gz 301345 SHA256:4d293b6b9d9fe51d58441f4b09b1f0005fcad8256ae8048587789bf5dbefb62e
'http://archive.ubuntu.com/ubuntu/pool/main/u/ustr/ustr_1.0.4-5.debian.tar.xz' ustr_1.0.4-5.debian.tar.xz 24948 SHA256:a21e78acf82dcccef2893932ef7b85852419bfd9b18382e63c34e7710c1d7762
```

### `dpkg` source package: `util-linux=2.27.1-6ubuntu3.10`

Binary Packages:

- `bsdutils=1:2.27.1-6ubuntu3.10`
- `libblkid1:amd64=2.27.1-6ubuntu3.10`
- `libfdisk1:amd64=2.27.1-6ubuntu3.10`
- `libmount1:amd64=2.27.1-6ubuntu3.10`
- `libsmartcols1:amd64=2.27.1-6ubuntu3.10`
- `libuuid1:amd64=2.27.1-6ubuntu3.10`
- `mount=2.27.1-6ubuntu3.10`
- `util-linux=2.27.1-6ubuntu3.10`
- `uuid-dev:amd64=2.27.1-6ubuntu3.10`

Licenses: (parsed from: `/usr/share/doc/bsdutils/copyright`, `/usr/share/doc/libblkid1/copyright`, `/usr/share/doc/libfdisk1/copyright`, `/usr/share/doc/libmount1/copyright`, `/usr/share/doc/libsmartcols1/copyright`, `/usr/share/doc/libuuid1/copyright`, `/usr/share/doc/mount/copyright`, `/usr/share/doc/util-linux/copyright`, `/usr/share/doc/uuid-dev/copyright`)

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
$ apt-get source -qq --print-uris util-linux=2.27.1-6ubuntu3.10
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.27.1-6ubuntu3.10.dsc' util-linux_2.27.1-6ubuntu3.10.dsc 3960 SHA512:e715cf0d8eb23bc832a860c2f25541082fc97e026518bc7ae7924003801173d6547a53c04fcff64efaa73ac8ea64ca4c76dc15c8c35f299d87f6b3016e84bc7a
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.27.1.orig.tar.xz' util-linux_2.27.1.orig.tar.xz 3964512 SHA512:a450a0c2d26a6deaf5e53b8f6bddf59409aefb1f0aaf07393f68a418408fbc62c5da353c8ba53c7cac8ea6e3dddfad59161753d888c31f5ccea445e81accbad8
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.27.1-6ubuntu3.10.debian.tar.xz' util-linux_2.27.1-6ubuntu3.10.debian.tar.xz 89428 SHA512:649416382fee72ba67cbf251b3234918f12d6ec530aabbfe8c9c4ab040c70428dcacf89dfdc4d2a0eee463a66e4ae73a3f8706307e23b7edb77968408cd632fb
```

### `dpkg` source package: `wavpack=4.75.2-2ubuntu0.2`

Binary Packages:

- `libwavpack1:amd64=4.75.2-2ubuntu0.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris wavpack=4.75.2-2ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/w/wavpack/wavpack_4.75.2-2ubuntu0.2.dsc' wavpack_4.75.2-2ubuntu0.2.dsc 2230 SHA512:03dbe725b192e38424cb46e6f5a0a3bffbfffeae928f739e505737bb27d3f43dad7bece9d24a078ea6b592df528545c072637ee11c409b3597c1fe9f46c8d9bc
'http://archive.ubuntu.com/ubuntu/pool/main/w/wavpack/wavpack_4.75.2.orig.tar.bz2' wavpack_4.75.2.orig.tar.bz2 439798 SHA512:f4af9f74aff27d9503d97319a4749d901bd7563c7e3eed025128d58add09dcd16f873d18c54f4bad1df95cdadd9f0c8047f8186d5158c175e60c22ed2df39635
'http://archive.ubuntu.com/ubuntu/pool/main/w/wavpack/wavpack_4.75.2-2ubuntu0.2.debian.tar.xz' wavpack_4.75.2-2ubuntu0.2.debian.tar.xz 6932 SHA512:627fe267c43128890fc036733fb4fb2318e65813d3087f841b69eafff7b53bc9a5a192950dd622f6dafc9ef0564d37886e048d631c6af8ce7104134549630b2f
```

### `dpkg` source package: `wayland=1.12.0-1~ubuntu16.04.3`

Binary Packages:

- `libwayland-bin=1.12.0-1~ubuntu16.04.3`
- `libwayland-client0:amd64=1.12.0-1~ubuntu16.04.3`
- `libwayland-cursor0:amd64=1.12.0-1~ubuntu16.04.3`
- `libwayland-dev:amd64=1.12.0-1~ubuntu16.04.3`
- `libwayland-server0:amd64=1.12.0-1~ubuntu16.04.3`

Licenses: (parsed from: `/usr/share/doc/libwayland-bin/copyright`, `/usr/share/doc/libwayland-client0/copyright`, `/usr/share/doc/libwayland-cursor0/copyright`, `/usr/share/doc/libwayland-dev/copyright`, `/usr/share/doc/libwayland-server0/copyright`)

- `X11`

Source:

```console
$ apt-get source -qq --print-uris wayland=1.12.0-1~ubuntu16.04.3
'http://archive.ubuntu.com/ubuntu/pool/main/w/wayland/wayland_1.12.0-1%7eubuntu16.04.3.dsc' wayland_1.12.0-1~ubuntu16.04.3.dsc 2512 SHA512:533e08652c356be784ad5c14cc21e0a401a5ed47ba093d7d20904713d0ba4914dda411fb043c5a6a9dbe2aa481eca26b96843faa77a2ce5c726e079a6172a070
'http://archive.ubuntu.com/ubuntu/pool/main/w/wayland/wayland_1.12.0.orig.tar.gz' wayland_1.12.0.orig.tar.gz 575381 SHA512:01119eea75e6b1b6ff55717109c62a16c90bc4b28ec43f51e3245ae22bd468e4e3a4b5f85bbb81d246e07fbd321e66689c51f9eb0d69964eb54c742b6d2a98fc
'http://archive.ubuntu.com/ubuntu/pool/main/w/wayland/wayland_1.12.0-1%7eubuntu16.04.3.diff.gz' wayland_1.12.0-1~ubuntu16.04.3.diff.gz 11477 SHA512:57b0787b155d717bf3fd0a674ff87ec5e0e6c93c8a35fcf027cfedf1b24a1311944fb1f7228cc38321b0bd75bc6fb0629367b4f229c38def9d20e16324e8c7ea
```

### `dpkg` source package: `x11proto-core=7.0.31-1~ubuntu16.04.2`

Binary Packages:

- `x11proto-core-dev=7.0.31-1~ubuntu16.04.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-core=7.0.31-1~ubuntu16.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-core/x11proto-core_7.0.31-1%7eubuntu16.04.2.dsc' x11proto-core_7.0.31-1~ubuntu16.04.2.dsc 2097 SHA512:88bf0075de0a3dd082933b403bad62dcb1f3b53b89653730eb8feb60d98a0ad178c098309204a20f88fc80c3eb88b40379564c555d91242e4c1b8ffdb65b5beb
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-core/x11proto-core_7.0.31.orig.tar.gz' x11proto-core_7.0.31.orig.tar.gz 367979 SHA512:efc583809c8fec8cee36873310658fb15edd54edf0117b7012b224ff3d38934731bed15cec3eddf0bf896035559b1a3eb4939f7d6a4e5ad8dfe2a3f1b2299230
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-core/x11proto-core_7.0.31-1%7eubuntu16.04.2.diff.gz' x11proto-core_7.0.31-1~ubuntu16.04.2.diff.gz 30062 SHA512:edfcf4a01f33fc9ad89b7777aca7a7b588891bf80cd1b42f5800591f7de6014901617eb34369b03f362faef045e55b277a83678e703a97e5f23989a4291a4a48
```

### `dpkg` source package: `x11proto-damage=1:1.2.1-2`

Binary Packages:

- `x11proto-damage-dev=1:1.2.1-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-damage=1:1.2.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-damage/x11proto-damage_1.2.1-2.dsc' x11proto-damage_1.2.1-2.dsc 1972 SHA256:799736247b8bc9164b9638ea6585faab4b11f42331491251de6a24908db34f07
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-damage/x11proto-damage_1.2.1.orig.tar.gz' x11proto-damage_1.2.1.orig.tar.gz 119305 SHA256:f65ccbf1de9750a527ea6e85694085b179f2d06495cbdb742b3edb2149fef303
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-damage/x11proto-damage_1.2.1-2.diff.gz' x11proto-damage_1.2.1-2.diff.gz 14338 SHA256:e279f3d3ca989dcabd621095b3a3aec33ae1b8ede8e82edaa40335073db54214
```

### `dpkg` source package: `x11proto-dri2=2.8-2`

Binary Packages:

- `x11proto-dri2-dev=2.8-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-dri2=2.8-2
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-dri2/x11proto-dri2_2.8-2.dsc' x11proto-dri2_2.8-2.dsc 1925 SHA256:9970cd802b65b9078b32645fa3c0a6a3517dd69f5487a4caca655f3357804e8d
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-dri2/x11proto-dri2_2.8.orig.tar.gz' x11proto-dri2_2.8.orig.tar.gz 132006 SHA256:7e65b031eaa6ebe23c75583d4abd993ded7add8009b4200a4db7aa10728b0f61
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-dri2/x11proto-dri2_2.8-2.diff.gz' x11proto-dri2_2.8-2.diff.gz 3037 SHA256:ac046af4c752d3c85a2400c1cf1a97105bb5186daa85965811feb519f9cf7f3d
```

### `dpkg` source package: `x11proto-fixes=1:5.0-2ubuntu2`

Binary Packages:

- `x11proto-fixes-dev=1:5.0-2ubuntu2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-fixes=1:5.0-2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-fixes/x11proto-fixes_5.0-2ubuntu2.dsc' x11proto-fixes_5.0-2ubuntu2.dsc 2108 SHA256:0ebde7ff304e7c02d9f4333d2dcbd41054fc8efd90f8df9b25c25073a6c5369c
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-fixes/x11proto-fixes_5.0.orig.tar.gz' x11proto-fixes_5.0.orig.tar.gz 122000 SHA256:67865a0e3cdc7dec1fd676f0927f7011ad4036c18eb320a2b41dbd56282f33b8
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-fixes/x11proto-fixes_5.0-2ubuntu2.diff.gz' x11proto-fixes_5.0-2ubuntu2.diff.gz 14907 SHA256:dc06c3923702eac0713224acd38018652cff90a9e49a17d00d51d027efe0f5f5
```

### `dpkg` source package: `x11proto-gl=1.4.17-1`

Binary Packages:

- `x11proto-gl-dev=1.4.17-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-gl=1.4.17-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-gl/x11proto-gl_1.4.17-1.dsc' x11proto-gl_1.4.17-1.dsc 1922 SHA256:82c7d203f6253850c645c9c2d78806fb02115821762c66866a9e0e60a2336a37
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-gl/x11proto-gl_1.4.17.orig.tar.gz' x11proto-gl_1.4.17.orig.tar.gz 157099 SHA256:9d8130fec2b98bd032db7730fa092dd9dec39f3de34f4bb03ceb43b9903dbc96
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-gl/x11proto-gl_1.4.17-1.diff.gz' x11proto-gl_1.4.17-1.diff.gz 4890 SHA256:38804356ca00a9b3bd908b687e3b2d67314cdd2c44a0ef9627b351216068b2f9
```

### `dpkg` source package: `x11proto-input=2.3.1-1`

Binary Packages:

- `x11proto-input-dev=2.3.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-input=2.3.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-input/x11proto-input_2.3.1-1.dsc' x11proto-input_2.3.1-1.dsc 1937 SHA256:c43dcce256561df0c239d24a5d9653cf651bfc949dc1a98bb450b1f23dda0b21
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-input/x11proto-input_2.3.1.orig.tar.gz' x11proto-input_2.3.1.orig.tar.gz 236302 SHA256:23f65ac55c36ea8c378e30b4a4fd85317c95923134e3fe46569741b94c8ed4ca
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-input/x11proto-input_2.3.1-1.diff.gz' x11proto-input_2.3.1-1.diff.gz 5603 SHA256:c92b1b97ce557f3564bd5252f921c1bc510df00ef1a81323078181754b4a31ab
```

### `dpkg` source package: `x11proto-kb=1.0.7-0ubuntu1`

Binary Packages:

- `x11proto-kb-dev=1.0.7-0ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-kb=1.0.7-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-kb/x11proto-kb_1.0.7-0ubuntu1.dsc' x11proto-kb_1.0.7-0ubuntu1.dsc 1343 SHA256:8923c65eb2193e49be47f32311eb03ad818545a55059672da26ed1f8127b4ba2
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-kb/x11proto-kb_1.0.7.orig.tar.gz' x11proto-kb_1.0.7.orig.tar.gz 325858 SHA256:828cb275b91268b1a3ea950d5c0c5eb076c678fdf005d517411f89cc8c3bb416
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-kb/x11proto-kb_1.0.7-0ubuntu1.diff.gz' x11proto-kb_1.0.7-0ubuntu1.diff.gz 14128 SHA256:2782403bed56d6e19aee719fa1aee1136abe152b008a0bab93732b313fed490a
```

### `dpkg` source package: `x11proto-xext=7.3.0-1`

Binary Packages:

- `x11proto-xext-dev=7.3.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-xext=7.3.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-xext/x11proto-xext_7.3.0-1.dsc' x11proto-xext_7.3.0-1.dsc 1997 SHA256:4b806c7f17f7dd466901111ce0862117541098025470601c251499d76affe9fc
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-xext/x11proto-xext_7.3.0.orig.tar.gz' x11proto-xext_7.3.0.orig.tar.gz 290814 SHA256:1b1bcdf91221e78c6c33738667a57bd9aaa63d5953174ad8ed9929296741c9f5
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-xext/x11proto-xext_7.3.0-1.diff.gz' x11proto-xext_7.3.0-1.diff.gz 16644 SHA256:68eec9363c7f8bcfbbaba68d6661284eb78fffccbddb293b95a6c85647cfcf6c
```

### `dpkg` source package: `x11proto-xf86vidmode=2.3.1-2`

Binary Packages:

- `x11proto-xf86vidmode-dev=2.3.1-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-xf86vidmode=2.3.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-xf86vidmode/x11proto-xf86vidmode_2.3.1-2.dsc' x11proto-xf86vidmode_2.3.1-2.dsc 2020 SHA256:59e027bc252f3d9b4d7ab86636237c509fc3c77b48c8f9a106f9d01708bf7628
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-xf86vidmode/x11proto-xf86vidmode_2.3.1.orig.tar.gz' x11proto-xf86vidmode_2.3.1.orig.tar.gz 116680 SHA256:c3512b11cefa7558576551f8582c6e7071c8a24d78176059d94b84b48b262979
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-xf86vidmode/x11proto-xf86vidmode_2.3.1-2.diff.gz' x11proto-xf86vidmode_2.3.1-2.diff.gz 14247 SHA256:87120b0ca761e9a7ded047d87ef813ba14335b6c6b2e03486a1a8a023d2280f3
```

### `dpkg` source package: `x264=2:0.148.2643+git5c65704-1`

Binary Packages:

- `libx264-148:amd64=2:0.148.2643+git5c65704-1`

Licenses: (parsed from: `/usr/share/doc/libx264-148/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with other exception`
- `ISC`
- `LGPL-2.1+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris x264=2:0.148.2643+git5c65704-1
'http://archive.ubuntu.com/ubuntu/pool/universe/x/x264/x264_0.148.2643%2bgit5c65704-1.dsc' x264_0.148.2643+git5c65704-1.dsc 2431 SHA256:e5356f684c004c090443b51b642be73e27047dab584bdd74e8ccb5851bbb171b
'http://archive.ubuntu.com/ubuntu/pool/universe/x/x264/x264_0.148.2643%2bgit5c65704.orig.tar.gz' x264_0.148.2643+git5c65704.orig.tar.gz 884605 SHA256:a2dfed165837bf901652a8f13f06ff2e2bba72fb729dee0faaafb791efa4f319
'http://archive.ubuntu.com/ubuntu/pool/universe/x/x264/x264_0.148.2643%2bgit5c65704-1.debian.tar.xz' x264_0.148.2643+git5c65704-1.debian.tar.xz 22548 SHA256:9d1ee42fc46701d3613bb4eb12162e20e390d6719183bb93754c06d53a6a022b
```

### `dpkg` source package: `x265=1.9-3`

Binary Packages:

- `libx265-79:amd64=1.9-3`

Licenses: (parsed from: `/usr/share/doc/libx265-79/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris x265=1.9-3
'http://archive.ubuntu.com/ubuntu/pool/universe/x/x265/x265_1.9-3.dsc' x265_1.9-3.dsc 2188 SHA256:2c92827504e3b7486d46dd7ec559495dc1664457914a1c756f16b8d0d7b9c070
'http://archive.ubuntu.com/ubuntu/pool/universe/x/x265/x265_1.9.orig.tar.gz' x265_1.9.orig.tar.gz 956101 SHA256:3e4654133ed957a98708fdb4cb9a154d9e80922b84e26e43fc462a101c5b15c8
'http://archive.ubuntu.com/ubuntu/pool/universe/x/x265/x265_1.9-3.debian.tar.xz' x265_1.9-3.debian.tar.xz 9744 SHA256:a1c184c22f212222581dcd3174ad91564696f9ca601e2b4dfa0b4dd0461815e3
```

### `dpkg` source package: `xcb-util-image=0.4.0-1build1`

Binary Packages:

- `libxcb-image0:amd64=0.4.0-1build1`

Licenses: (parsed from: `/usr/share/doc/libxcb-image0/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT/X11`

Source:

```console
$ apt-get source -qq --print-uris xcb-util-image=0.4.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util-image/xcb-util-image_0.4.0-1build1.dsc' xcb-util-image_0.4.0-1build1.dsc 2203 SHA256:06054630452521765015e5b3eb83865e7b208a16856c7441de05920092347062
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util-image/xcb-util-image_0.4.0.orig.tar.bz2' xcb-util-image_0.4.0.orig.tar.bz2 327891 SHA256:2db96a37d78831d643538dd1b595d7d712e04bdccf8896a5e18ce0f398ea2ffc
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util-image/xcb-util-image_0.4.0-1build1.debian.tar.xz' xcb-util-image_0.4.0-1build1.debian.tar.xz 4584 SHA256:7db5db856a24b5944979e25c06fefc5da315677c40a9d2cab421aec055474794
```

### `dpkg` source package: `xcb-util-keysyms=0.4.0-1`

Binary Packages:

- `libxcb-keysyms1:amd64=0.4.0-1`

Licenses: (parsed from: `/usr/share/doc/libxcb-keysyms1/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT/X11`

Source:

```console
$ apt-get source -qq --print-uris xcb-util-keysyms=0.4.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util-keysyms/xcb-util-keysyms_0.4.0-1.dsc' xcb-util-keysyms_0.4.0-1.dsc 1529 SHA256:7dd5419ccc060295ef0bb4815ca6406af490d3b950eed43905882cab95082ebf
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util-keysyms/xcb-util-keysyms_0.4.0.orig.tar.bz2' xcb-util-keysyms_0.4.0.orig.tar.bz2 289880 SHA256:0ef8490ff1dede52b7de533158547f8b454b241aa3e4dcca369507f66f216dd9
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util-keysyms/xcb-util-keysyms_0.4.0-1.debian.tar.xz' xcb-util-keysyms_0.4.0-1.debian.tar.xz 4228 SHA256:c26e5a78a50dff072d1b701b680b211431ace0faa1f19300768eab895f2b8637
```

### `dpkg` source package: `xcb-util-renderutil=0.3.9-1`

Binary Packages:

- `libxcb-render-util0:amd64=0.3.9-1`

Licenses: (parsed from: `/usr/share/doc/libxcb-render-util0/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT/X Consortium License`

Source:

```console
$ apt-get source -qq --print-uris xcb-util-renderutil=0.3.9-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util-renderutil/xcb-util-renderutil_0.3.9-1.dsc' xcb-util-renderutil_0.3.9-1.dsc 1602 SHA256:00d89cea2ad48c087126083e49f53b352fbf794931c7a3a9dcde727c4097649f
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util-renderutil/xcb-util-renderutil_0.3.9.orig.tar.bz2' xcb-util-renderutil_0.3.9.orig.tar.bz2 292898 SHA256:c6e97e48fb1286d6394dddb1c1732f00227c70bd1bedb7d1acabefdd340bea5b
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util-renderutil/xcb-util-renderutil_0.3.9-1.debian.tar.xz' xcb-util-renderutil_0.3.9-1.debian.tar.xz 4292 SHA256:6febe28c38155aa90ec866dbc8b7446494662cc09f3a38be392f21c90fa0b4ec
```

### `dpkg` source package: `xcb-util-wm=0.4.1-1ubuntu1`

Binary Packages:

- `libxcb-icccm4:amd64=0.4.1-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libxcb-icccm4/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT/X Consortium License`

Source:

```console
$ apt-get source -qq --print-uris xcb-util-wm=0.4.1-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util-wm/xcb-util-wm_0.4.1-1ubuntu1.dsc' xcb-util-wm_0.4.1-1ubuntu1.dsc 2349 SHA256:3395ae9ee3cab9d0d84d728f5f860a78222ea00d82797267fdcb50b08c702a75
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util-wm/xcb-util-wm_0.4.1.orig.tar.gz' xcb-util-wm_0.4.1.orig.tar.gz 395835 SHA256:038b39c4bdc04a792d62d163ba7908f4bb3373057208c07110be73c1b04b8334
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util-wm/xcb-util-wm_0.4.1-1ubuntu1.debian.tar.gz' xcb-util-wm_0.4.1-1ubuntu1.debian.tar.gz 4679 SHA256:51c439e1e8f58990e3d74f546c925bc9ee8a343721ce15a85e86c3256eadfce8
```

### `dpkg` source package: `xcb-util=0.4.0-0ubuntu3`

Binary Packages:

- `libxcb-util1:amd64=0.4.0-0ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libxcb-util1/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT/X Consortium License`

Source:

```console
$ apt-get source -qq --print-uris xcb-util=0.4.0-0ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util/xcb-util_0.4.0-0ubuntu3.dsc' xcb-util_0.4.0-0ubuntu3.dsc 1556 SHA256:6a8dd8a53fedd333fbe081ed715d7207f085d59fa38fcaa6d52ffbdf9c221917
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util/xcb-util_0.4.0.orig.tar.gz' xcb-util_0.4.0.orig.tar.gz 362923 SHA256:0ed0934e2ef4ddff53fcc70fc64fb16fe766cd41ee00330312e20a985fd927a7
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util/xcb-util_0.4.0-0ubuntu3.debian.tar.xz' xcb-util_0.4.0-0ubuntu3.debian.tar.xz 4648 SHA256:89d029b7ee5dd96794fb7db9a8ac168952a6cb9b1ac77f24967d327ca6fe1436
```

### `dpkg` source package: `xerces-c=3.1.3+debian-1`

Binary Packages:

- `libxerces-c-dev=3.1.3+debian-1`
- `libxerces-c3.1:amd64=3.1.3+debian-1`

Licenses: (parsed from: `/usr/share/doc/libxerces-c-dev/copyright`, `/usr/share/doc/libxerces-c3.1/copyright`)

- `Apache-2.0`
- `GPL-2`
- `GPL-2+ with Autoconf exception`
- `GPL-2+ with Libtool exception`
- `GPL-3`
- `GPL-3+ with Autoconf exception`
- `X11-install-sh`
- `permissive-configure`
- `permissive-fsf`
- `xerces-Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris xerces-c=3.1.3+debian-1
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xerces-c/xerces-c_3.1.3%2bdebian-1.dsc' xerces-c_3.1.3+debian-1.dsc 2231 SHA256:20b767d36b0f69bab905f2d2902cf8d8572f1c502e9607fb0633432459526380
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xerces-c/xerces-c_3.1.3%2bdebian.orig.tar.gz' xerces-c_3.1.3+debian.orig.tar.gz 2425084 SHA256:a8ccda886ed53a827ebfbbe88a0e3225e5b4341ed7ee80a379f2e446b3ec6db2
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xerces-c/xerces-c_3.1.3%2bdebian-1.debian.tar.xz' xerces-c_3.1.3+debian-1.debian.tar.xz 20780 SHA256:ca2b7be9b64003070868b1c88d868decde5911ccbe15fb62d00321b54280acf4
```

### `dpkg` source package: `xkeyboard-config=2.16-1ubuntu1`

Binary Packages:

- `xkb-data=2.16-1ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xkeyboard-config=2.16-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xkeyboard-config/xkeyboard-config_2.16-1ubuntu1.dsc' xkeyboard-config_2.16-1ubuntu1.dsc 2230 SHA256:be1f2417080ef35d48cd554eeb50ad290691bd0be5467b28bbf742a6d97160df
'http://archive.ubuntu.com/ubuntu/pool/main/x/xkeyboard-config/xkeyboard-config_2.16.orig.tar.gz' xkeyboard-config_2.16.orig.tar.gz 1486645 SHA256:ec9da6b298ec22f832d12636e89b270b763cd22bc0c155266df71d8016e7c714
'http://archive.ubuntu.com/ubuntu/pool/main/x/xkeyboard-config/xkeyboard-config_2.16-1ubuntu1.diff.gz' xkeyboard-config_2.16-1ubuntu1.diff.gz 47712 SHA256:901aaa6da6ecd562eb45d8da19b899fb265b0acae7ced5a772235d7be2b81de9
```

### `dpkg` source package: `xorg-sgml-doctools=1:1.11-1`

Binary Packages:

- `xorg-sgml-doctools=1:1.11-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xorg-sgml-doctools=1:1.11-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11-1.dsc' xorg-sgml-doctools_1.11-1.dsc 1975 SHA256:1f4a12a38420b0ddab35553b9588fdf43ab39577958aed70fca435c9a747141a
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11.orig.tar.gz' xorg-sgml-doctools_1.11.orig.tar.gz 150367 SHA256:986326d7b4dd2ad298f61d8d41fe3929ac6191c6000d6d7e47a8ffc0c34e7426
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11-1.diff.gz' xorg-sgml-doctools_1.11-1.diff.gz 3194 SHA256:18eeb355cb0efff9f47f8ed8e852eee322d9733a427419f4b39f43bc4df630c1
```

### `dpkg` source package: `xorg=1:7.7+13ubuntu3.1`

Binary Packages:

- `x11-common=1:7.7+13ubuntu3.1`

Licenses: (parsed from: `/usr/share/doc/x11-common/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris xorg=1:7.7+13ubuntu3.1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg/xorg_7.7%2b13ubuntu3.1.dsc' xorg_7.7+13ubuntu3.1.dsc 2112 SHA512:f44f01592aa31bd39e8ba2bf895b4a2aba8d6e459bd366efcd42832265432dc9e4971a65b33a00018ff18398eb12a464b1fd24bbce12ad288afa07774a6a8220
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg/xorg_7.7%2b13ubuntu3.1.tar.gz' xorg_7.7+13ubuntu3.1.tar.gz 289897 SHA512:23b97e0aef38e353c595ff2dc8277bafa79d7faf41613743989170d8d6d10aa06f365ff804f459b903428ec047f4c0ac9e2e879ba8cd4567f0baf70e7bccc823
```

### `dpkg` source package: `xtrans=1.3.5-1`

Binary Packages:

- `xtrans-dev=1.3.5-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xtrans=1.3.5-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.3.5-1.dsc' xtrans_1.3.5-1.dsc 1901 SHA256:64750bc2dd993ac93b9e0a8d6109ce72963ab22296479145eb3f392d238c2280
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.3.5.orig.tar.gz' xtrans_1.3.5.orig.tar.gz 227536 SHA256:b7a577c1b6c75030145e53b4793db9c88f9359ac49e7d771d4385d21b3e5945d
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.3.5-1.diff.gz' xtrans_1.3.5-1.diff.gz 16122 SHA256:2acb2c4f5958ef1bbae74ca64007d0465261a4f62bfad6ed22f1f144c0e445e1
```

### `dpkg` source package: `xvidcore=2:1.3.4-1`

Binary Packages:

- `libxvidcore4:amd64=2:1.3.4-1`

Licenses: (parsed from: `/usr/share/doc/libxvidcore4/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris xvidcore=2:1.3.4-1
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xvidcore/xvidcore_1.3.4-1.dsc' xvidcore_1.3.4-1.dsc 2125 SHA256:8443f4a4c4b3608ea72e15e1c8613f62f83ea6d0b271483dec74f4cec06d0819
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xvidcore/xvidcore_1.3.4.orig.tar.gz' xvidcore_1.3.4.orig.tar.gz 818067 SHA256:4e9fd62728885855bc5007fe1be58df42e5e274497591fec37249e1052ae316f
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xvidcore/xvidcore_1.3.4-1.debian.tar.xz' xvidcore_1.3.4-1.debian.tar.xz 6056 SHA256:7371066d81e0819c586aeab2f1188c6e57da64dc70d9e582e885c5ccb8f7f5aa
```

### `dpkg` source package: `xz-utils=5.1.1alpha+20120614-2ubuntu2`

Binary Packages:

- `liblzma5:amd64=5.1.1alpha+20120614-2ubuntu2`
- `xz-utils=5.1.1alpha+20120614-2ubuntu2`

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
$ apt-get source -qq --print-uris xz-utils=5.1.1alpha+20120614-2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.1.1alpha%2b20120614-2ubuntu2.dsc' xz-utils_5.1.1alpha+20120614-2ubuntu2.dsc 2409 SHA256:0a8cb3d928d1327f70b998b713c10afd9cd064056f5973d48075cd3d0f7872ca
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.1.1alpha%2b20120614.orig.tar.gz' xz-utils_5.1.1alpha+20120614.orig.tar.gz 556454 SHA256:b168e63400db449a6e7b3a06e668f557ca27e3d70accbd29d2b5a98e15c00fee
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.1.1alpha%2b20120614-2ubuntu2.debian.tar.gz' xz-utils_5.1.1alpha+20120614-2ubuntu2.debian.tar.gz 156001 SHA256:e7743d4a96276ccffc4e171812e402a1f503f87df3b668ef0e58db6629146a18
```

### `dpkg` source package: `zeromq3=4.1.4-7ubuntu0.1`

Binary Packages:

- `libzmq3-dev:amd64=4.1.4-7ubuntu0.1`
- `libzmq5:amd64=4.1.4-7ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libzmq3-dev/copyright`, `/usr/share/doc/libzmq5/copyright`)

- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-3`
- `LGPL-3.0+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris zeromq3=4.1.4-7ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/universe/z/zeromq3/zeromq3_4.1.4-7ubuntu0.1.dsc' zeromq3_4.1.4-7ubuntu0.1.dsc 2127 SHA512:1d4a2199f2b98b6a6689263e80407cced69d04266d7a965d28f7123fb71d54882979b36a13fb620014b5aa36f3e0cbe0700ec2d85e21fcabab8d6fd371b5a271
'http://archive.ubuntu.com/ubuntu/pool/universe/z/zeromq3/zeromq3_4.1.4.orig.tar.gz' zeromq3_4.1.4.orig.tar.gz 1400012 SHA512:8a8cf4f52ad78dddfff104bfba0f80bbc12566920906a0fafb9fc340aa92f5577c2923cb2e5346c69835cd2ea1609647a8893c2883cd22c1f0340a720511460c
'http://archive.ubuntu.com/ubuntu/pool/universe/z/zeromq3/zeromq3_4.1.4-7ubuntu0.1.debian.tar.xz' zeromq3_4.1.4-7ubuntu0.1.debian.tar.xz 15184 SHA512:eb4272710b6500109fe0cdd4d2e49a7ef39740a52e2375bbb4b702f18c45e0a3f907bf33569d2ae769d9fd51c33fe8f43989aab38017fd4788ee4b1a5ba806a9
```

### `dpkg` source package: `zlib=1:1.2.8.dfsg-2ubuntu4.3`

Binary Packages:

- `zlib1g:amd64=1:1.2.8.dfsg-2ubuntu4.3`
- `zlib1g-dev:amd64=1:1.2.8.dfsg-2ubuntu4.3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.8.dfsg-2ubuntu4.3
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.8.dfsg-2ubuntu4.3.dsc' zlib_1.2.8.dfsg-2ubuntu4.3.dsc 2535 SHA512:c4c661746b4883b35d3e8c54d1f0203a4487e76c15839f558c930b600d8716b0e8357e3452988b90c0eb99fbc0a6451dad3521cca8777dfbdb5df3fc78ad2951
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.8.dfsg.orig.tar.gz' zlib_1.2.8.dfsg.orig.tar.gz 361943 SHA512:a6abfd2d2d65ed711f82dccd75f366f491f7c53a0f5f8fb76d77e629f86a8de28fd19028b8d76ee7d8ab2eb2d5789698402104d42b8ef000dfe362af2d7c3fab
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.8.dfsg-2ubuntu4.3.debian.tar.xz' zlib_1.2.8.dfsg-2ubuntu4.3.debian.tar.xz 19128 SHA512:c0472b7614851e7e4c8905847da63bd13a9f8ec46a9746ded69cee62994061d2ae028d2b6413b70dd993cb99fc5c9db519411aa1539048de17e1c8a482b6d062
```

### `dpkg` source package: `zvbi=0.2.35-10`

Binary Packages:

- `libzvbi-common=0.2.35-10`
- `libzvbi0:amd64=0.2.35-10`

Licenses: (parsed from: `/usr/share/doc/libzvbi-common/copyright`, `/usr/share/doc/libzvbi0/copyright`)

- `BSD-2-Clause`
- `BSD-3-Clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris zvbi=0.2.35-10
'http://archive.ubuntu.com/ubuntu/pool/universe/z/zvbi/zvbi_0.2.35-10.dsc' zvbi_0.2.35-10.dsc 2095 SHA256:729f1e3ff9cbfde94a85f2edb5121257731f6f8deb307c8a7eccf56e74a18753
'http://archive.ubuntu.com/ubuntu/pool/universe/z/zvbi/zvbi_0.2.35.orig.tar.bz2' zvbi_0.2.35.orig.tar.bz2 1047761 SHA256:fc883c34111a487c4a783f91b1b2bb5610d8d8e58dcba80c7ab31e67e4765318
'http://archive.ubuntu.com/ubuntu/pool/universe/z/zvbi/zvbi_0.2.35-10.debian.tar.xz' zvbi_0.2.35-10.debian.tar.xz 14364 SHA256:8ceb1fa8a19403b5b7eeadd65379140b697e0b474ca80a013f43f5a2c8d49fa2
```

### `dpkg` source package: `zziplib=0.13.62-3ubuntu0.16.04.2`

Binary Packages:

- `libzzip-0-13:amd64=0.13.62-3ubuntu0.16.04.2`

Licenses: (parsed from: `/usr/share/doc/libzzip-0-13/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris zziplib=0.13.62-3ubuntu0.16.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/z/zziplib/zziplib_0.13.62-3ubuntu0.16.04.2.dsc' zziplib_0.13.62-3ubuntu0.16.04.2.dsc 2167 SHA512:f86a7c768c9efab89dccf5d0b804b408a1ac126cb21c6594deac3093581eea5e4bee8f4b0c9abcd4aa10b7edb26ecc8f6772a5550aaad2e1e27947b04d4e0a46
'http://archive.ubuntu.com/ubuntu/pool/main/z/zziplib/zziplib_0.13.62.orig.tar.bz2' zziplib_0.13.62.orig.tar.bz2 685770 SHA512:fd3b9e9015ba7603bdebd8f6a2ac6d11003705bfab22f3a0025f75455042664aea69440845b59e6f389417dff5ac777f49541d8cbacb2a220e67d20bb6973e25
'http://archive.ubuntu.com/ubuntu/pool/main/z/zziplib/zziplib_0.13.62-3ubuntu0.16.04.2.debian.tar.xz' zziplib_0.13.62-3ubuntu0.16.04.2.debian.tar.xz 15732 SHA512:ee250d946a3e67b0f9fbc9bf5d7dfde9415e1e8393d96fd21331ddeeb49146f1c50fd18985c016563eb0cbf363f07a7d8a73cc9c16e4cc2f3c05f265066918b8
```
