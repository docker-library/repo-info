# `ros:lyrical-perception`

## Docker Metadata

- Image ID: `sha256:4bd706caf8d3ac3eb2ccf27df776b93b780138f7e6daa62f1fdf2981df079243`
- Created: `2026-08-18T21:17:30.249283499Z`
- Virtual Size: ~ 4.54 Gb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/ros_entrypoint.sh"]`
- Command: `["bash"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `LANG=C.UTF-8`
  - `LC_ALL=C.UTF-8`
  - `ROS_DISTRO=lyrical`
- Labels:
  - `org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00`
  - `org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.
`
  - `org.opencontainers.image.title=ubuntu`
  - `org.opencontainers.image.version=26.04`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `abseil=20260107.0-4`

Binary Packages:

- `libabsl20260107:amd64=20260107.0-4`

Licenses: (parsed from: `/usr/share/doc/libabsl20260107/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris abseil=20260107.0-4
'http://archive.ubuntu.com/ubuntu/pool/main/a/abseil/abseil_20260107.0-4.dsc' abseil_20260107.0-4.dsc 2506 SHA512:60e67f161a8a6c3a4d1de9e763004a67a6648f684122c8cf4ba3d31fdf6067472533aac9043ba0f3ec823164c8052497222051da7979c49ece762c44299f6907
'http://archive.ubuntu.com/ubuntu/pool/main/a/abseil/abseil_20260107.0.orig.tar.gz' abseil_20260107.0.orig.tar.gz 2301048 SHA512:55bae4cbdf987ad94b4006d9928ef2aafc6e9ac635f02a49aa9b70124c62978a89a3db9f249d1371329df7ab2e25732bee848df4e8530e1ce113833bcbdcbb9a
'http://archive.ubuntu.com/ubuntu/pool/main/a/abseil/abseil_20260107.0-4.debian.tar.xz' abseil_20260107.0-4.debian.tar.xz 10760 SHA512:85bbaeec21ed93dd0530175a9d77306e471198dd9ae5668b46f86e3e3a4cb69163672c6585a23ca169e74d6aebc7e8807efd6ebbd9849a442b7457ee13f14a7a
```

### `dpkg` source package: `acl=2.3.2-2`

Binary Packages:

- `libacl1:amd64=2.3.2-2`
- `libacl1-dev:amd64=2.3.2-2`

Licenses: (parsed from: `/usr/share/doc/libacl1/copyright`, `/usr/share/doc/libacl1-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris acl=2.3.2-2
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.3.2-2.dsc' acl_2.3.2-2.dsc 2604 SHA256:1f42130ccb5442fe2db2aee1dcc03c51a31512dd2519a38e8fc9270c5abbc807
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.3.2.orig.tar.xz' acl_2.3.2.orig.tar.xz 371680 SHA256:97203a72cae99ab89a067fe2210c1cbf052bc492b479eca7d226d9830883b0bd
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.3.2.orig.tar.xz.asc' acl_2.3.2.orig.tar.xz.asc 833 SHA256:184c6a903490885a096095db67b433a04542c6569f167cbe8115268c0f227273
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.3.2-2.debian.tar.xz' acl_2.3.2-2.debian.tar.xz 24296 SHA256:e27b6e194c0a7554595d76f96acdceb800631bdc46c36457b73bc7e4a0c5f2ee
```

### `dpkg` source package: `adduser=3.153ubuntu1`

Binary Packages:

- `adduser=3.153ubuntu1`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.153ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.153ubuntu1.tar.xz' adduser_3.153ubuntu1.tar.xz 339348 SHA256:bb3c29bd281f2d06183c0ab348cf37f6142741fbb2f8ee7a8d263ef3888983b1
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.153ubuntu1.dsc' adduser_3.153ubuntu1.dsc 1807 SHA256:a4242f3e9dbbf4979b7960abbfcad7ff06499629eda2eb53d8c3527e95fff84c
```

### `dpkg` source package: `adios2=2.11.0+dfsg1-6build1`

Binary Packages:

- `libadios2-mpi-auxiliary-2.11:amd64=2.11.0+dfsg1-6build1`
- `libadios2-mpi-c++-2.11:amd64=2.11.0+dfsg1-6build1`
- `libadios2-mpi-c-2.11:amd64=2.11.0+dfsg1-6build1`
- `libadios2-mpi-core-2.11:amd64=2.11.0+dfsg1-6build1`
- `libadios2-mpi-plugins:amd64=2.11.0+dfsg1-6build1`

Licenses: (parsed from: `/usr/share/doc/libadios2-mpi-auxiliary-2.11/copyright`, `/usr/share/doc/libadios2-mpi-c++-2.11/copyright`, `/usr/share/doc/libadios2-mpi-c-2.11/copyright`, `/usr/share/doc/libadios2-mpi-core-2.11/copyright`, `/usr/share/doc/libadios2-mpi-plugins/copyright`)

- `Apache-2.0`
- `Apache2`
- `BSD-3-clause`
- `BSD-3-clause-Kitware`

Source:

```console
$ apt-get source -qq --print-uris adios2=2.11.0+dfsg1-6build1
'http://archive.ubuntu.com/ubuntu/pool/universe/a/adios2/adios2_2.11.0%2bdfsg1.orig.tar.xz' adios2_2.11.0+dfsg1.orig.tar.xz 3868064 SHA256:e421cd6bf4a8ef12e3b55fdec87dd93f9ab49dc8b8282e3f30b596c0aaadc903
'http://archive.ubuntu.com/ubuntu/pool/universe/a/adios2/adios2_2.11.0%2bdfsg1-6build1.debian.tar.xz' adios2_2.11.0+dfsg1-6build1.debian.tar.xz 28752 SHA256:27078b023724a4546bda59ef088845565935131febf2785dc9712b47f4f100d4
'http://archive.ubuntu.com/ubuntu/pool/universe/a/adios2/adios2_2.11.0%2bdfsg1-6build1.dsc' adios2_2.11.0+dfsg1-6build1.dsc 5121 SHA256:9d1a4a0193b4a32de1ae6a3af8ca178ad60384ac2b075a407f967b7c4b055147
```

### `dpkg` source package: `adwaita-icon-theme=50.0-1`

Binary Packages:

- `adwaita-icon-theme=50.0-1`

Licenses: (parsed from: `/usr/share/doc/adwaita-icon-theme/copyright`)

- `CC-BY-3.0-US`
- `CC-BY-SA-2.0-IT`
- `CC-BY-SA-2.0-IT,`
- `CC-BY-SA-3.0`
- `CC-BY-SA-3.0-US`
- `CC-BY-SA-3.0-Unported`
- `CC-BY-SA-4.0`
- `GFDL-1.2`
- `GFDL-1.2+`
- `GPL`
- `GPL-2`
- `GPL-3`
- `GPL-3+`
- `GPL-unspecified`
- `LGPL-3`
- `LGPL-3,`

Source:

```console
$ apt-get source -qq --print-uris adwaita-icon-theme=50.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/a/adwaita-icon-theme/adwaita-icon-theme_50.0-1.dsc' adwaita-icon-theme_50.0-1.dsc 2359 SHA256:e7159b1324b6eb25148fe92e7d2a57e5366b4e44bdec162f034348efd2d50323
'http://archive.ubuntu.com/ubuntu/pool/main/a/adwaita-icon-theme/adwaita-icon-theme_50.0.orig.tar.xz' adwaita-icon-theme_50.0.orig.tar.xz 4517092 SHA256:fac6e0401fca714780561a081b8f7e27c3bc1db34ebda4da175081f26b24d460
'http://archive.ubuntu.com/ubuntu/pool/main/a/adwaita-icon-theme/adwaita-icon-theme_50.0-1.debian.tar.xz' adwaita-icon-theme_50.0-1.debian.tar.xz 45700 SHA256:4da8a0c5c9b6da482be11e2f4e269fd2f5334526df343085702098650c541135
```

### `dpkg` source package: `alsa-lib=1.2.15.3-1ubuntu1.1`

Binary Packages:

- `libasound2-data=1.2.15.3-1ubuntu1.1`
- `libasound2t64:amd64=1.2.15.3-1ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libasound2-data/copyright`, `/usr/share/doc/libasound2t64/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris alsa-lib=1.2.15.3-1ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/alsa-lib/alsa-lib_1.2.15.3.orig.tar.bz2' alsa-lib_1.2.15.3.orig.tar.bz2 1126411 SHA512:7fc0fa8a5ae02d3404d2c262c6a14fcbb8b08e25993eac86b9e89b8419ed4d293b422da77b3eb7a1930f26c316b638e5aa7bdba78b0ada9908b0362d132a0cc0
'http://archive.ubuntu.com/ubuntu/pool/main/a/alsa-lib/alsa-lib_1.2.15.3.orig.tar.bz2.asc' alsa-lib_1.2.15.3.orig.tar.bz2.asc 833 SHA512:8b6c49dd4cc6a31fc6c569560af52778c0f78b1a11c0d686a98dd1830f9cdb957ff3e2d6da6f64d8ee177fd6f765fcd8c90cfefe87e330378ae62ddae1ea5b83
'http://archive.ubuntu.com/ubuntu/pool/main/a/alsa-lib/alsa-lib_1.2.15.3-1ubuntu1.1.debian.tar.xz' alsa-lib_1.2.15.3-1ubuntu1.1.debian.tar.xz 35072 SHA512:360173c99ce1596fa7acbe2642751fcea1bd2890764ec48e935deaf84992231cdc24727bad620b3f584ee4e7ebde998f55360b9066d45bafdcffa5ecd432cea7
'http://archive.ubuntu.com/ubuntu/pool/main/a/alsa-lib/alsa-lib_1.2.15.3-1ubuntu1.1.dsc' alsa-lib_1.2.15.3-1ubuntu1.1.dsc 3054 SHA512:9ac4393b38fad45ecec185e9d71d16b718efdce96221bbe23552ae3ceb8ae96bb2fbedc3a1f158d2f84ddf2ac81a8bc64b27759002b596f8a39722f5ca42b4f1
```

### `dpkg` source package: `aom=3.13.1-2`

Binary Packages:

- `libaom-dev:amd64=3.13.1-2`
- `libaom3:amd64=3.13.1-2`

Licenses: (parsed from: `/usr/share/doc/libaom-dev/copyright`, `/usr/share/doc/libaom3/copyright`)

- `BSD-2-Clause`
- `BSD-2-clause`
- `BSD-3-Clause`
- `BSD-3-clause`
- `Expat`
- `ISC`
- `public-domain-md5`

Source:

```console
$ apt-get source -qq --print-uris aom=3.13.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/a/aom/aom_3.13.1-2.dsc' aom_3.13.1-2.dsc 2402 SHA256:f55a29106fee067b34566cdaefd42e72aa7293ab26a7ab05903de05b4cb6bffc
'http://archive.ubuntu.com/ubuntu/pool/main/a/aom/aom_3.13.1.orig.tar.gz' aom_3.13.1.orig.tar.gz 6262920 SHA256:73f73d1ef94f93868edf2fae2bf80eca9c66a5813cfa63ef5e4c8d367c84e814
'http://archive.ubuntu.com/ubuntu/pool/main/a/aom/aom_3.13.1-2.debian.tar.xz' aom_3.13.1-2.debian.tar.xz 20840 SHA256:6617c623a0b4cbc3eab39a222bea3671b5e46fc8c4598b493e173f565810479e
```

### `dpkg` source package: `apparmor=5.0.2-0ubuntu1~26.04.1`

Binary Packages:

- `libapparmor1:amd64=5.0.2-0ubuntu1~26.04.1`

Licenses: (parsed from: `/usr/share/doc/libapparmor1/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris apparmor=5.0.2-0ubuntu1~26.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/apparmor/apparmor_5.0.2.orig.tar.gz' apparmor_5.0.2.orig.tar.gz 7613576 SHA512:e56c2a810f90541597091c44794afb316b790701df80f41047ec6bba3c1a0f2c1e01e47593e12c622262a677ca4c274cbd9800e148eb0957020a5e727a4c4f29
'http://archive.ubuntu.com/ubuntu/pool/main/a/apparmor/apparmor_5.0.2-0ubuntu1%7e26.04.1.debian.tar.xz' apparmor_5.0.2-0ubuntu1~26.04.1.debian.tar.xz 118224 SHA512:d9efce0ae0722753a77aad042a9e2b9526462c48735ada270feee8291795adb87c31f879b679f7b6be99ccf4b50690e2c5adc993ab7626d189c1460b73a720d1
'http://archive.ubuntu.com/ubuntu/pool/main/a/apparmor/apparmor_5.0.2-0ubuntu1%7e26.04.1.dsc' apparmor_5.0.2-0ubuntu1~26.04.1.dsc 3522 SHA512:d2013fbabfec519da9c3d9f7bc2e9f221f5e083ad30c66c18fe47251240a16c8256d0a232f4b5f932c0b2a70c3421604fb954409e23983bd052835c98dc1461a
```

### `dpkg` source package: `apt=3.2.0`

Binary Packages:

- `apt=3.2.0`
- `libapt-pkg7.0:amd64=3.2.0`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg7.0/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `curl`

Source:

```console
$ apt-get source -qq --print-uris apt=3.2.0
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_3.2.0.dsc' apt_3.2.0.dsc 3127 SHA512:4a4582b1949244b0f597f2c4ba09bab21f734b1c0d1168d340992821f4fb1b1e09ec8a2f9a77b9380f09b4d7cf2989acfa02d8f91601d7a210367039ed41a947
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_3.2.0.tar.xz' apt_3.2.0.tar.xz 2476660 SHA512:02a029afdbc7612d860e145120113da0e25abcb5cbef947f5838fae41d02361d3c150322ef24a0d6e675d66e45b491da53fd0e5c8311d45f017a72e8eba6e33f
```

### `dpkg` source package: `armadillo=1:15.2.1+dfsg-2`

Binary Packages:

- `libarmadillo-dev=1:15.2.1+dfsg-2`
- `libarmadillo15=1:15.2.1+dfsg-2`

Licenses: (parsed from: `/usr/share/doc/libarmadillo-dev/copyright`, `/usr/share/doc/libarmadillo15/copyright`)

- `Apache`
- `Apache-2.0`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris armadillo=1:15.2.1+dfsg-2
'http://archive.ubuntu.com/ubuntu/pool/universe/a/armadillo/armadillo_15.2.1%2bdfsg-2.dsc' armadillo_15.2.1+dfsg-2.dsc 2112 SHA256:db7bb52b2dbea7006db825a54a9a33063c1f290e1a8ed64e279f5d3b77c79160
'http://archive.ubuntu.com/ubuntu/pool/universe/a/armadillo/armadillo_15.2.1%2bdfsg.orig.tar.xz' armadillo_15.2.1+dfsg.orig.tar.xz 656116 SHA256:c70e7433f57c47a2b1ed126d5654833f049c4f3d15ac2d1ca124247977e75d79
'http://archive.ubuntu.com/ubuntu/pool/universe/a/armadillo/armadillo_15.2.1%2bdfsg-2.debian.tar.xz' armadillo_15.2.1+dfsg-2.debian.tar.xz 7396 SHA256:81c7a5f8fcdbf3b683ff592eacffae1fa72f50c9dda1cd6be46ac19ccc9edf79
```

### `dpkg` source package: `arpack=3.9.1-6build1`

Binary Packages:

- `libarpack2-dev:amd64=3.9.1-6build1`
- `libarpack2t64:amd64=3.9.1-6build1`

Licenses: (parsed from: `/usr/share/doc/libarpack2-dev/copyright`, `/usr/share/doc/libarpack2t64/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris arpack=3.9.1-6build1
'http://archive.ubuntu.com/ubuntu/pool/universe/a/arpack/arpack_3.9.1.orig.tar.gz' arpack_3.9.1.orig.tar.gz 1020208 SHA256:f6641deb07fa69165b7815de9008af3ea47eb39b2bb97521fbf74c97aba6e844
'http://archive.ubuntu.com/ubuntu/pool/universe/a/arpack/arpack_3.9.1-6build1.debian.tar.xz' arpack_3.9.1-6build1.debian.tar.xz 11484 SHA256:1a598210b594687e5526bb17b4e07ee1eb2475a592c5052ae2e6902cd827d9d1
'http://archive.ubuntu.com/ubuntu/pool/universe/a/arpack/arpack_3.9.1-6build1.dsc' arpack_3.9.1-6build1.dsc 2528 SHA256:b4badedaa4e567ae4eb9519d38ada69d2cfd539119735e15f372f7e4fb16ab30
```

### `dpkg` source package: `at-spi2-core=2.60.4-0ubuntu0.1`

Binary Packages:

- `at-spi2-common=2.60.4-0ubuntu0.1`
- `libatk-bridge2.0-0t64:amd64=2.60.4-0ubuntu0.1`
- `libatk1.0-0t64:amd64=2.60.4-0ubuntu0.1`
- `libatspi2.0-0t64:amd64=2.60.4-0ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/at-spi2-common/copyright`, `/usr/share/doc/libatk-bridge2.0-0t64/copyright`, `/usr/share/doc/libatk1.0-0t64/copyright`, `/usr/share/doc/libatspi2.0-0t64/copyright`)

- `AFL-2.1`
- `AFL-2.1 and/or GPL-2+`
- `GPL`
- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris at-spi2-core=2.60.4-0ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/at-spi2-core/at-spi2-core_2.60.4.orig.tar.xz' at-spi2-core_2.60.4.orig.tar.xz 599468 SHA512:ff938b8c5d58bb0a81ef673dd277b7f7386257263dfb0940a4a73f97240b051bfd4fe53b1072fc1f4abbe53af1da2f6a667ce0b07076d8a757a6bbb07539dea9
'http://archive.ubuntu.com/ubuntu/pool/main/a/at-spi2-core/at-spi2-core_2.60.4-0ubuntu0.1.debian.tar.xz' at-spi2-core_2.60.4-0ubuntu0.1.debian.tar.xz 21160 SHA512:935d70cbc87a7e252798b915141d571a947423664c1bffa3d8e84eedc7cd8301c3147d421cda0bbda8b2e0b7216a480e4a236c9e862cd9635439b5d5cd930277
'http://archive.ubuntu.com/ubuntu/pool/main/a/at-spi2-core/at-spi2-core_2.60.4-0ubuntu0.1.dsc' at-spi2-core_2.60.4-0ubuntu0.1.dsc 3329 SHA512:21f034e07b9ed038dccea6c364b18707667e85830d4f5c7e89c6281598f8d1ad337784d694f7f0838b5128e532aae241b6a7ce5006f5c1d3a2e784a33623110d
```

### `dpkg` source package: `attr=1:2.5.2-4`

Binary Packages:

- `libattr1:amd64=1:2.5.2-4`
- `libattr1-dev:amd64=1:2.5.2-4`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`, `/usr/share/doc/libattr1-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris attr=1:2.5.2-4
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.5.2-4.dsc' attr_2.5.2-4.dsc 2614 SHA256:256e36ed6f60a39813a304a11617a3e573a11019db007a891bfeff7f2dad7175
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.5.2.orig.tar.xz' attr_2.5.2.orig.tar.xz 334180 SHA256:f2e97b0ab7ce293681ab701915766190d607a1dba7fae8a718138150b700a70b
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.5.2.orig.tar.xz.asc' attr_2.5.2.orig.tar.xz.asc 833 SHA256:eeac729088d3c6379e91b7596cb3582e46b047c47f0fa3c5c77f9c9e84dc3a4c
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.5.2-4.debian.tar.xz' attr_2.5.2-4.debian.tar.xz 32372 SHA256:d49f176ceaceb3679141e9bb00a7595848e91b4c4db8682f81a828109ee6e2c7
```

### `dpkg` source package: `audit=1:4.1.2-1build1`

Binary Packages:

- `libaudit-common=1:4.1.2-1build1`
- `libaudit1:amd64=1:4.1.2-1build1`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:4.1.2-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_4.1.2.orig.tar.gz' audit_4.1.2.orig.tar.gz 656095 SHA256:5c638bbeef9adb6c5715d3a60f0f5adb93e9b81633608af13d23c61f5e5db04d
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_4.1.2-1build1.debian.tar.xz' audit_4.1.2-1build1.debian.tar.xz 19800 SHA256:f5448b31a499220c1e48f8eaae57306a1d76b1ca7f1534f63ce13fbcf9e60efe
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_4.1.2-1build1.dsc' audit_4.1.2-1build1.dsc 2891 SHA256:9d273637613a8a29a29ade25bbed913362aeefd08ca5f19504d4df391ef08201
```

### `dpkg` source package: `autoconf=2.72-3.1ubuntu2`

Binary Packages:

- `autoconf=2.72-3.1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/autoconf/copyright`)

- `GFDL-1.3`
- `GFDL-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf exception`
- `GPL-3`
- `GPL-3+`
- `GPL-3+ with Autoconf exception`
- `GPL-3+ with Texinfo exception`
- `MIT-X-Consortium`
- `no-modification`
- `other`
- `permissive`
- `permissive-long-disclaimer`
- `permissive-short-disclaimer`
- `permissive-without-disclaimer`
- `permissive-without-notices-or-disclaimer`

Source:

```console
$ apt-get source -qq --print-uris autoconf=2.72-3.1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.72.orig.tar.xz' autoconf_2.72.orig.tar.xz 1389680 SHA256:ba885c1319578d6c94d46e9b0dceb4014caafe2490e437a0dbca3f270a223f5a
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.72-3.1ubuntu2.debian.tar.xz' autoconf_2.72-3.1ubuntu2.debian.tar.xz 27464 SHA256:1eeebbff91013c8846533b5f528c73bbe93455fa3420f06cd465ba03387a750e
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.72-3.1ubuntu2.dsc' autoconf_2.72-3.1ubuntu2.dsc 2174 SHA256:919a232b01553c8352e0cd4f86ee95979725f5f0bfbc34128a259fbbac237d6c
```

### `dpkg` source package: `automake=1:1.18.1-3build1`

Binary Packages:

- `automake=1:1.18.1-3build1`

Licenses: (parsed from: `/usr/share/doc/automake/copyright`)

- `GFDL-1.3`
- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris automake=1:1.18.1-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake/automake_1.18.1.orig.tar.xz' automake_1.18.1.orig.tar.xz 1652392 SHA256:168aa363278351b89af56684448f525a5bce5079d0b6842bd910fdd3f1646887
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake/automake_1.18.1.orig.tar.xz.asc' automake_1.18.1.orig.tar.xz.asc 488 SHA256:728ce05b02f123ea360ab9d168111bc98470afc7568253e93ee2a7582ef5ddb4
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake/automake_1.18.1-3build1.debian.tar.xz' automake_1.18.1-3build1.debian.tar.xz 22812 SHA256:1923654f311910c01b906b86fbf3c731aef4537bbca100946e54853c4ea3eedb
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake/automake_1.18.1-3build1.dsc' automake_1.18.1-3build1.dsc 2507 SHA256:7fe3f7597bd650e5906591550c075c4761d1be6c75c77359b5affb16436b8b4a
```

### `dpkg` source package: `autotools-dev=20240727.1build1`

Binary Packages:

- `autotools-dev=20240727.1build1`

Licenses: (parsed from: `/usr/share/doc/autotools-dev/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris autotools-dev=20240727.1build1
'http://archive.ubuntu.com/ubuntu/pool/main/a/autotools-dev/autotools-dev_20240727.1build1.tar.xz' autotools-dev_20240727.1build1.tar.xz 99820 SHA256:286daf1aee119fd797bbf1d876d1195b45865ba1893ece91e4e802f77fba2f36
'http://archive.ubuntu.com/ubuntu/pool/main/a/autotools-dev/autotools-dev_20240727.1build1.dsc' autotools-dev_20240727.1build1.dsc 1685 SHA256:1806daf2c205c1ac79e170c7e22c59751872631498131031e9075777e88b62b2
```

### `dpkg` source package: `avahi=0.8-18ubuntu1.1`

Binary Packages:

- `libavahi-client3:amd64=0.8-18ubuntu1.1`
- `libavahi-common-data:amd64=0.8-18ubuntu1.1`
- `libavahi-common3:amd64=0.8-18ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libavahi-client3/copyright`, `/usr/share/doc/libavahi-common-data/copyright`, `/usr/share/doc/libavahi-common3/copyright`)

- `GPL`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris avahi=0.8-18ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/avahi/avahi_0.8.orig.tar.gz' avahi_0.8.orig.tar.gz 1591458 SHA512:c6ba76feb6e92f70289f94b3bf12e5f5c66c11628ce0aeb3cadfb72c13a5d1a9bd56d71bdf3072627a76cd103b9b056d9131aa49ffe11fa334c24ab3b596c7de
'http://archive.ubuntu.com/ubuntu/pool/main/a/avahi/avahi_0.8-18ubuntu1.1.debian.tar.xz' avahi_0.8-18ubuntu1.1.debian.tar.xz 65132 SHA512:1418fb6a0f665a63cef26805523bfb90fbf241d3f59cf57413070e70c14fa591000d77696ab74fb94bee9fab913f87d42f5064a90540ac9766dbf5d2e8054dc7
'http://archive.ubuntu.com/ubuntu/pool/main/a/avahi/avahi_0.8-18ubuntu1.1.dsc' avahi_0.8-18ubuntu1.1.dsc 4427 SHA512:1d080854c1d93888f0cc08ed965e2217e0641512aec8e93763506466aa89437bf1b5381643ad77db3e1d19a611c5e80b011fe37dde62f59fd0ceeeb30a5c4605
```

### `dpkg` source package: `base-files=14ubuntu6.1`

Binary Packages:

- `base-files=14ubuntu6.1`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`
- `GPL-2+`
- `verbatim`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `base-passwd=3.6.8`

Binary Packages:

- `base-passwd=3.6.8`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.6.8
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.6.8.dsc' base-passwd_3.6.8.dsc 2044 SHA256:e76e572d2653f2b8eda64c662f5b4310a978ef1fdd039410ace5f6355c3af7d6
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.6.8.tar.xz' base-passwd_3.6.8.tar.xz 61840 SHA256:fab3d0e6e8b641e116bda9bd5f7a7ed24482384c1513f6a369b506327fbc8dde
```

### `dpkg` source package: `bash=5.3-2ubuntu1`

Binary Packages:

- `bash=5.3-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `BSD-4-clause-UC`
- `GFDL-1.3`
- `GFDL-NIV-1.3`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `GPL-3+ with Bison exception`
- `Latex2e`
- `MIT-like`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris bash=5.3-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_5.3.orig.tar.xz' bash_5.3.orig.tar.xz 5571836 SHA256:a70de6bb41f5e192534a5a1836b1d7fad9a8d4818a6e1506d70f38441552c17a
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_5.3-2ubuntu1.debian.tar.xz' bash_5.3-2ubuntu1.debian.tar.xz 98872 SHA256:855d84044d14c7c11cd84e5aa0994961f7de72b932109bb3a18d1f809c9551d4
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_5.3-2ubuntu1.dsc' bash_5.3-2ubuntu1.dsc 2246 SHA256:a7127d8ebb439412493b10908b3b448bf0947637d0aaac88833e3572d951e62c
```

### `dpkg` source package: `binutils=2.46-3ubuntu2`

Binary Packages:

- `binutils=2.46-3ubuntu2`
- `binutils-common:amd64=2.46-3ubuntu2`
- `binutils-x86-64-linux-gnu=2.46-3ubuntu2`
- `libbinutils:amd64=2.46-3ubuntu2`
- `libctf-nobfd0:amd64=2.46-3ubuntu2`
- `libctf0:amd64=2.46-3ubuntu2`
- `libgprofng0:amd64=2.46-3ubuntu2`
- `libsframe3:amd64=2.46-3ubuntu2`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`, `/usr/share/doc/binutils-common/copyright`, `/usr/share/doc/binutils-x86-64-linux-gnu/copyright`, `/usr/share/doc/libbinutils/copyright`, `/usr/share/doc/libctf-nobfd0/copyright`, `/usr/share/doc/libctf0/copyright`, `/usr/share/doc/libgprofng0/copyright`, `/usr/share/doc/libsframe3/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris binutils=2.46-3ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.46.orig.tar.xz' binutils_2.46.orig.tar.xz 29830224 SHA256:a389850c2d3919f2cc96fb8b5e7711eacfc819259aaffb11615c9fb9756eaeae
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.46-3ubuntu2.debian.tar.xz' binutils_2.46-3ubuntu2.debian.tar.xz 136556 SHA256:3c239143b144584a15d38f84f5f0fc7ca9ddfb930ce369cd0035466e27d4d2ec
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.46-3ubuntu2.dsc' binutils_2.46-3ubuntu2.dsc 9064 SHA256:99bb7521f86e2ab17fc7244aa084bb4ea000dbe78ef73eb1e4a1adda0b68937d
```

### `dpkg` source package: `boost-defaults=1.90.0.1ubuntu3`

Binary Packages:

- `libboost-all-dev=1.90.0.1ubuntu3`
- `libboost-atomic-dev:amd64=1.90.0.1ubuntu3`
- `libboost-chrono-dev:amd64=1.90.0.1ubuntu3`
- `libboost-container-dev:amd64=1.90.0.1ubuntu3`
- `libboost-context-dev:amd64=1.90.0.1ubuntu3`
- `libboost-coroutine-dev:amd64=1.90.0.1ubuntu3`
- `libboost-date-time-dev:amd64=1.90.0.1ubuntu3`
- `libboost-dev:amd64=1.90.0.1ubuntu3`
- `libboost-exception-dev:amd64=1.90.0.1ubuntu3`
- `libboost-fiber-dev:amd64=1.90.0.1ubuntu3`
- `libboost-filesystem-dev:amd64=1.90.0.1ubuntu3`
- `libboost-graph-dev:amd64=1.90.0.1ubuntu3`
- `libboost-graph-parallel-dev=1.90.0.1ubuntu3`
- `libboost-iostreams-dev:amd64=1.90.0.1ubuntu3`
- `libboost-json-dev:amd64=1.90.0.1ubuntu3`
- `libboost-locale-dev:amd64=1.90.0.1ubuntu3`
- `libboost-log-dev=1.90.0.1ubuntu3`
- `libboost-math-dev:amd64=1.90.0.1ubuntu3`
- `libboost-mpi-dev=1.90.0.1ubuntu3`
- `libboost-mpi-python-dev=1.90.0.1ubuntu3`
- `libboost-nowide-dev=1.90.0.1ubuntu3`
- `libboost-numpy-dev=1.90.0.1ubuntu3`
- `libboost-process-dev:amd64=1.90.0.1ubuntu3`
- `libboost-program-options-dev:amd64=1.90.0.1ubuntu3`
- `libboost-python-dev=1.90.0.1ubuntu3`
- `libboost-random-dev:amd64=1.90.0.1ubuntu3`
- `libboost-regex-dev:amd64=1.90.0.1ubuntu3`
- `libboost-serialization-dev:amd64=1.90.0.1ubuntu3`
- `libboost-stacktrace-dev:amd64=1.90.0.1ubuntu3`
- `libboost-test-dev:amd64=1.90.0.1ubuntu3`
- `libboost-thread-dev:amd64=1.90.0.1ubuntu3`
- `libboost-timer-dev:amd64=1.90.0.1ubuntu3`
- `libboost-tools-dev=1.90.0.1ubuntu3`
- `libboost-type-erasure-dev:amd64=1.90.0.1ubuntu3`
- `libboost-url-dev:amd64=1.90.0.1ubuntu3`
- `libboost-wave-dev:amd64=1.90.0.1ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libboost-all-dev/copyright`, `/usr/share/doc/libboost-atomic-dev/copyright`, `/usr/share/doc/libboost-chrono-dev/copyright`, `/usr/share/doc/libboost-container-dev/copyright`, `/usr/share/doc/libboost-context-dev/copyright`, `/usr/share/doc/libboost-coroutine-dev/copyright`, `/usr/share/doc/libboost-date-time-dev/copyright`, `/usr/share/doc/libboost-dev/copyright`, `/usr/share/doc/libboost-exception-dev/copyright`, `/usr/share/doc/libboost-fiber-dev/copyright`, `/usr/share/doc/libboost-filesystem-dev/copyright`, `/usr/share/doc/libboost-graph-dev/copyright`, `/usr/share/doc/libboost-graph-parallel-dev/copyright`, `/usr/share/doc/libboost-iostreams-dev/copyright`, `/usr/share/doc/libboost-json-dev/copyright`, `/usr/share/doc/libboost-locale-dev/copyright`, `/usr/share/doc/libboost-log-dev/copyright`, `/usr/share/doc/libboost-math-dev/copyright`, `/usr/share/doc/libboost-mpi-dev/copyright`, `/usr/share/doc/libboost-mpi-python-dev/copyright`, `/usr/share/doc/libboost-nowide-dev/copyright`, `/usr/share/doc/libboost-numpy-dev/copyright`, `/usr/share/doc/libboost-process-dev/copyright`, `/usr/share/doc/libboost-program-options-dev/copyright`, `/usr/share/doc/libboost-python-dev/copyright`, `/usr/share/doc/libboost-random-dev/copyright`, `/usr/share/doc/libboost-regex-dev/copyright`, `/usr/share/doc/libboost-serialization-dev/copyright`, `/usr/share/doc/libboost-stacktrace-dev/copyright`, `/usr/share/doc/libboost-test-dev/copyright`, `/usr/share/doc/libboost-thread-dev/copyright`, `/usr/share/doc/libboost-timer-dev/copyright`, `/usr/share/doc/libboost-tools-dev/copyright`, `/usr/share/doc/libboost-type-erasure-dev/copyright`, `/usr/share/doc/libboost-url-dev/copyright`, `/usr/share/doc/libboost-wave-dev/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris boost-defaults=1.90.0.1ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost-defaults/boost-defaults_1.90.0.1ubuntu3.tar.xz' boost-defaults_1.90.0.1ubuntu3.tar.xz 14656 SHA512:1f12d954d86692ef77a4f483dfbf0b1542eb627a8440093f3163f597408abb62711fc1b6cc6a772dcf91a4f3244b9000e52f5251b6851347457842eb8af399d8
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost-defaults/boost-defaults_1.90.0.1ubuntu3.dsc' boost-defaults_1.90.0.1ubuntu3.dsc 5684 SHA512:e4928ae0145c1e55a602bcfd104a2ed1f9516db2613cf441b5833571693163022aad8e7e0ec50fffa139d9a0cfc25b9d68cecb5d67f5ae46e8ddbb40c9a15a65
```

### `dpkg` source package: `boost1.83=1.83.0-5ubuntu5`

Binary Packages:

- `libboost-python1.83.0=1.83.0-5ubuntu5`

Licenses: (parsed from: `/usr/share/doc/libboost-python1.83.0/copyright`)

- `Apache-2.0`
- `BSD2`
- `BSD3_DEShaw`
- `BSD3_Google`
- `BSL-1.0`
- `Caramel`
- `CrystalClear`
- `HP`
- `Jam`
- `Kempf`
- `MIT`
- `NIST`
- `OldBoost1`
- `OldBoost2`
- `OldBoost3`
- `Python`
- `SGI`
- `Spencer`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris boost1.83=1.83.0-5ubuntu5
'http://archive.ubuntu.com/ubuntu/pool/universe/b/boost1.83/boost1.83_1.83.0.orig.tar.xz' boost1.83_1.83.0.orig.tar.xz 77376520 SHA256:404df4b4072fc7f2d4483d4fc2d61ff6f554dd80c9a812652684d5952e881c91
'http://archive.ubuntu.com/ubuntu/pool/universe/b/boost1.83/boost1.83_1.83.0-5ubuntu5.debian.tar.xz' boost1.83_1.83.0-5ubuntu5.debian.tar.xz 384384 SHA256:4ab27ba41fe85ead2de3f5637af1d04f7a5cbf51b960169f8278f1e2e5ba5af0
'http://archive.ubuntu.com/ubuntu/pool/universe/b/boost1.83/boost1.83_1.83.0-5ubuntu5.dsc' boost1.83_1.83.0-5ubuntu5.dsc 10287 SHA256:6f2519c892d806fc773a849a3b6ae7413688629802c0e4052f0e41e8c18c1ff3
```

### `dpkg` source package: `boost1.90=1.90.0-6ubuntu1`

Binary Packages:

- `libboost-atomic1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-atomic1.90.0:amd64=1.90.0-6ubuntu1`
- `libboost-charconv1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-charconv1.90.0:amd64=1.90.0-6ubuntu1`
- `libboost-chrono1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-chrono1.90.0:amd64=1.90.0-6ubuntu1`
- `libboost-container1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-container1.90.0:amd64=1.90.0-6ubuntu1`
- `libboost-context1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-context1.90.0:amd64=1.90.0-6ubuntu1`
- `libboost-coroutine1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-coroutine1.90.0:amd64=1.90.0-6ubuntu1`
- `libboost-date-time1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-date-time1.90.0:amd64=1.90.0-6ubuntu1`
- `libboost-exception1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-fiber1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-fiber1.90.0:amd64=1.90.0-6ubuntu1`
- `libboost-filesystem1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-filesystem1.90.0:amd64=1.90.0-6ubuntu1`
- `libboost-graph-parallel1.90-dev=1.90.0-6ubuntu1`
- `libboost-graph-parallel1.90.0=1.90.0-6ubuntu1`
- `libboost-graph1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-graph1.90.0:amd64=1.90.0-6ubuntu1`
- `libboost-iostreams1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-iostreams1.90.0:amd64=1.90.0-6ubuntu1`
- `libboost-json1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-json1.90.0:amd64=1.90.0-6ubuntu1`
- `libboost-locale1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-locale1.90.0:amd64=1.90.0-6ubuntu1`
- `libboost-log1.90-dev=1.90.0-6ubuntu1`
- `libboost-log1.90.0=1.90.0-6ubuntu1`
- `libboost-math1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-math1.90.0:amd64=1.90.0-6ubuntu1`
- `libboost-mpi-python1.90-dev=1.90.0-6ubuntu1`
- `libboost-mpi-python1.90.0=1.90.0-6ubuntu1`
- `libboost-mpi1.90-dev=1.90.0-6ubuntu1`
- `libboost-mpi1.90.0=1.90.0-6ubuntu1`
- `libboost-nowide1.90-dev=1.90.0-6ubuntu1`
- `libboost-nowide1.90.0=1.90.0-6ubuntu1`
- `libboost-numpy1.90-dev=1.90.0-6ubuntu1`
- `libboost-numpy1.90.0=1.90.0-6ubuntu1`
- `libboost-process1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-process1.90.0:amd64=1.90.0-6ubuntu1`
- `libboost-program-options1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-program-options1.90.0:amd64=1.90.0-6ubuntu1`
- `libboost-python1.90-dev=1.90.0-6ubuntu1`
- `libboost-python1.90.0=1.90.0-6ubuntu1`
- `libboost-random1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-random1.90.0:amd64=1.90.0-6ubuntu1`
- `libboost-regex1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-regex1.90.0:amd64=1.90.0-6ubuntu1`
- `libboost-serialization1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-serialization1.90.0:amd64=1.90.0-6ubuntu1`
- `libboost-stacktrace1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-stacktrace1.90.0:amd64=1.90.0-6ubuntu1`
- `libboost-test1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-test1.90.0:amd64=1.90.0-6ubuntu1`
- `libboost-thread1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-thread1.90.0:amd64=1.90.0-6ubuntu1`
- `libboost-timer1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-timer1.90.0:amd64=1.90.0-6ubuntu1`
- `libboost-type-erasure1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-type-erasure1.90.0:amd64=1.90.0-6ubuntu1`
- `libboost-url1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-url1.90.0:amd64=1.90.0-6ubuntu1`
- `libboost-wave1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost-wave1.90.0:amd64=1.90.0-6ubuntu1`
- `libboost1.90-dev:amd64=1.90.0-6ubuntu1`
- `libboost1.90-tools-dev=1.90.0-6ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libboost-atomic1.90-dev/copyright`, `/usr/share/doc/libboost-atomic1.90.0/copyright`, `/usr/share/doc/libboost-charconv1.90-dev/copyright`, `/usr/share/doc/libboost-charconv1.90.0/copyright`, `/usr/share/doc/libboost-chrono1.90-dev/copyright`, `/usr/share/doc/libboost-chrono1.90.0/copyright`, `/usr/share/doc/libboost-container1.90-dev/copyright`, `/usr/share/doc/libboost-container1.90.0/copyright`, `/usr/share/doc/libboost-context1.90-dev/copyright`, `/usr/share/doc/libboost-context1.90.0/copyright`, `/usr/share/doc/libboost-coroutine1.90-dev/copyright`, `/usr/share/doc/libboost-coroutine1.90.0/copyright`, `/usr/share/doc/libboost-date-time1.90-dev/copyright`, `/usr/share/doc/libboost-date-time1.90.0/copyright`, `/usr/share/doc/libboost-exception1.90-dev/copyright`, `/usr/share/doc/libboost-fiber1.90-dev/copyright`, `/usr/share/doc/libboost-fiber1.90.0/copyright`, `/usr/share/doc/libboost-filesystem1.90-dev/copyright`, `/usr/share/doc/libboost-filesystem1.90.0/copyright`, `/usr/share/doc/libboost-graph-parallel1.90-dev/copyright`, `/usr/share/doc/libboost-graph-parallel1.90.0/copyright`, `/usr/share/doc/libboost-graph1.90-dev/copyright`, `/usr/share/doc/libboost-graph1.90.0/copyright`, `/usr/share/doc/libboost-iostreams1.90-dev/copyright`, `/usr/share/doc/libboost-iostreams1.90.0/copyright`, `/usr/share/doc/libboost-json1.90-dev/copyright`, `/usr/share/doc/libboost-json1.90.0/copyright`, `/usr/share/doc/libboost-locale1.90-dev/copyright`, `/usr/share/doc/libboost-locale1.90.0/copyright`, `/usr/share/doc/libboost-log1.90-dev/copyright`, `/usr/share/doc/libboost-log1.90.0/copyright`, `/usr/share/doc/libboost-math1.90-dev/copyright`, `/usr/share/doc/libboost-math1.90.0/copyright`, `/usr/share/doc/libboost-mpi-python1.90-dev/copyright`, `/usr/share/doc/libboost-mpi-python1.90.0/copyright`, `/usr/share/doc/libboost-mpi1.90-dev/copyright`, `/usr/share/doc/libboost-mpi1.90.0/copyright`, `/usr/share/doc/libboost-nowide1.90-dev/copyright`, `/usr/share/doc/libboost-nowide1.90.0/copyright`, `/usr/share/doc/libboost-numpy1.90-dev/copyright`, `/usr/share/doc/libboost-numpy1.90.0/copyright`, `/usr/share/doc/libboost-process1.90-dev/copyright`, `/usr/share/doc/libboost-process1.90.0/copyright`, `/usr/share/doc/libboost-program-options1.90-dev/copyright`, `/usr/share/doc/libboost-program-options1.90.0/copyright`, `/usr/share/doc/libboost-python1.90-dev/copyright`, `/usr/share/doc/libboost-python1.90.0/copyright`, `/usr/share/doc/libboost-random1.90-dev/copyright`, `/usr/share/doc/libboost-random1.90.0/copyright`, `/usr/share/doc/libboost-regex1.90-dev/copyright`, `/usr/share/doc/libboost-regex1.90.0/copyright`, `/usr/share/doc/libboost-serialization1.90-dev/copyright`, `/usr/share/doc/libboost-serialization1.90.0/copyright`, `/usr/share/doc/libboost-stacktrace1.90-dev/copyright`, `/usr/share/doc/libboost-stacktrace1.90.0/copyright`, `/usr/share/doc/libboost-test1.90-dev/copyright`, `/usr/share/doc/libboost-test1.90.0/copyright`, `/usr/share/doc/libboost-thread1.90-dev/copyright`, `/usr/share/doc/libboost-thread1.90.0/copyright`, `/usr/share/doc/libboost-timer1.90-dev/copyright`, `/usr/share/doc/libboost-timer1.90.0/copyright`, `/usr/share/doc/libboost-type-erasure1.90-dev/copyright`, `/usr/share/doc/libboost-type-erasure1.90.0/copyright`, `/usr/share/doc/libboost-url1.90-dev/copyright`, `/usr/share/doc/libboost-url1.90.0/copyright`, `/usr/share/doc/libboost-wave1.90-dev/copyright`, `/usr/share/doc/libboost-wave1.90.0/copyright`, `/usr/share/doc/libboost1.90-dev/copyright`, `/usr/share/doc/libboost1.90-tools-dev/copyright`)

- `Apache-2.0`
- `BSD2`
- `BSD3_DEShaw`
- `BSD3_Google`
- `BSL-1.0`
- `Caramel`
- `CrystalClear`
- `HP`
- `Jam`
- `Kempf`
- `MIT`
- `NIST`
- `OldBoost1`
- `OldBoost2`
- `OldBoost3`
- `Python`
- `SGI`
- `Spencer`
- `Zlib`
- `or BSL-1.0`
- `or Zlib`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris boost1.90=1.90.0-6ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost1.90/boost1.90_1.90.0.orig.tar.xz' boost1.90_1.90.0.orig.tar.xz 85542004 SHA512:c409b8c10e5663d322f3ca2adb5547e50ab277071ceb96ff6cdf3d917a2d15cba1cab01a3765c8ae29b3c9a36ab1af50eb9c73245ed2e9d7c6e30defb5a99f82
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost1.90/boost1.90_1.90.0-6ubuntu1.debian.tar.xz' boost1.90_1.90.0-6ubuntu1.debian.tar.xz 373324 SHA512:38b56b946862e17b7ba9ad134f659e007ab2d94dbf06303a7e80960ce3a657d50504380b32382399d2403e1e8723d206b3009a8c7e0acba9cc983ce90f415b41
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost1.90/boost1.90_1.90.0-6ubuntu1.dsc' boost1.90_1.90.0-6ubuntu1.dsc 10137 SHA512:557e8280f86f7d4a1bf4945612e78ec692bd904501f6e50901c5e7a3bee30a9aa86bc588f7c80f4f226ad253da837d0eed95763741732a07466a59e7d227fe77
```

### `dpkg` source package: `brotli=1.2.0-3build1`

Binary Packages:

- `libbrotli-dev:amd64=1.2.0-3build1`
- `libbrotli1:amd64=1.2.0-3build1`

Licenses: (parsed from: `/usr/share/doc/libbrotli-dev/copyright`, `/usr/share/doc/libbrotli1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris brotli=1.2.0-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.2.0.orig.tar.gz' brotli_1.2.0.orig.tar.gz 646398 SHA256:eb5f7dadf215d0670665fd81566e1fe2dfdc154d983f09142de7299df4c182e6
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.2.0-3build1.debian.tar.xz' brotli_1.2.0-3build1.debian.tar.xz 5976 SHA256:7ebbb009f9e33f54a7790e95da60af4667a3fc4a914b79ad49bfc06bb396d829
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.2.0-3build1.dsc' brotli_1.2.0-3build1.dsc 2281 SHA256:07c51f4299d065d4ae3cc269e9a837b9723453632fe62039cc47723a7d620eda
```

### `dpkg` source package: `bubblewrap=0.11.1-1ubuntu0.1`

Binary Packages:

- `bubblewrap=0.11.1-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/bubblewrap/copyright`)

- `LGPL-2`
- `LGPL-2+`
- `pd-bubblewrap.jpg`

Source:

```console
$ apt-get source -qq --print-uris bubblewrap=0.11.1-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/b/bubblewrap/bubblewrap_0.11.1.orig.tar.xz' bubblewrap_0.11.1.orig.tar.xz 115836 SHA512:875c851c298a821648995edae1dee4cf7628e7e5a9d92af25ca8d43052ac3ae8b5447ca31e53126bf8837545c3987f5952993e1538cd06769aeaea65ed9fbe78
'http://archive.ubuntu.com/ubuntu/pool/main/b/bubblewrap/bubblewrap_0.11.1.orig.tar.xz.asc' bubblewrap_0.11.1.orig.tar.xz.asc 833 SHA512:97120e2bf54ab60c1dc4a4b184dff121de41319cdd7ed420c3582aad6868411f313526a03ce624802de5a7c2a923fb1e9d2002a4b0e811f60c99a3bfe14eba3d
'http://archive.ubuntu.com/ubuntu/pool/main/b/bubblewrap/bubblewrap_0.11.1-1ubuntu0.1.debian.tar.xz' bubblewrap_0.11.1-1ubuntu0.1.debian.tar.xz 13800 SHA512:f40fb3154657fd2f11cadee71dd830b6c29ea69ede610fc26d241bb87120347313a4fe1bb7d0cd60f454793bfeec73b824002e9e5161bf31385c26a07d85e9e0
'http://archive.ubuntu.com/ubuntu/pool/main/b/bubblewrap/bubblewrap_0.11.1-1ubuntu0.1.dsc' bubblewrap_0.11.1-1ubuntu0.1.dsc 2718 SHA512:dd4e11115a900d5a35159d13d8db663684d89fca86137c79c4ff9f727a9b6024169d2d0edc02e2daaec21be688e632da38658f8b33d514be5af16c98db08df14
```

### `dpkg` source package: `build-essential=12.12ubuntu2.26.04.2`

Binary Packages:

- `build-essential=12.12ubuntu2.26.04.2`

Licenses: (parsed from: `/usr/share/doc/build-essential/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris build-essential=12.12ubuntu2.26.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/b/build-essential/build-essential_12.12ubuntu2.26.04.2.tar.xz' build-essential_12.12ubuntu2.26.04.2.tar.xz 52144 SHA512:263baf9b8b181967354c376b2f4d533a9fbb607b4245b7afc5811878b76863ab52405de834085d4ad7aa67c0468dd5880aaa4bfbadb48cb1e07b0eb8fe1ed338
'http://archive.ubuntu.com/ubuntu/pool/main/b/build-essential/build-essential_12.12ubuntu2.26.04.2.dsc' build-essential_12.12ubuntu2.26.04.2.dsc 2290 SHA512:9d7cf1292916342d44a91b26aa427762e4e41f65ec6792a0a6c0c6e6ef88485ba56426df08181a22ae29d927902fe1845dc6279fc2a7fcde1ec2f7a6d783bbe1
```

### `dpkg` source package: `bullet=3.24+dfsg-5`

Binary Packages:

- `libbullet-dev:amd64=3.24+dfsg-5`
- `libbullet3.24t64:amd64=3.24+dfsg-5`

Licenses: (parsed from: `/usr/share/doc/libbullet-dev/copyright`, `/usr/share/doc/libbullet3.24t64/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `BSD-3-clause`
- `BSL-1.0`
- `Elsevier-CDROM-License`
- `Expat`
- `GNU-All-Permissive-License`
- `GPL-2`
- `GPL-2+`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris bullet=3.24+dfsg-5
'http://archive.ubuntu.com/ubuntu/pool/universe/b/bullet/bullet_3.24%2bdfsg-5.dsc' bullet_3.24+dfsg-5.dsc 2360 SHA256:13acae792da013bc250ad415fbc0625444d8ffa75146a449f33174246a4db053
'http://archive.ubuntu.com/ubuntu/pool/universe/b/bullet/bullet_3.24%2bdfsg.orig.tar.xz' bullet_3.24+dfsg.orig.tar.xz 1581896 SHA256:43c1edae2024ba18bb5d7bfd3bb2394b066a79151a29789504a2d8efcdc333d7
'http://archive.ubuntu.com/ubuntu/pool/universe/b/bullet/bullet_3.24%2bdfsg-5.debian.tar.xz' bullet_3.24+dfsg-5.debian.tar.xz 13228 SHA256:287ce8be87d26c087472f1d1c66998e5084ed1b20925ca40123da31d0ed1b3f2
```

### `dpkg` source package: `bzip2=1.0.8-6build2`

Binary Packages:

- `bzip2=1.0.8-6build2`
- `libbz2-1.0:amd64=1.0.8-6build2`
- `libbz2-dev:amd64=1.0.8-6build2`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/libbz2-1.0/copyright`, `/usr/share/doc/libbz2-dev/copyright`)

- `BSD-variant`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.8-6build2
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8.orig.tar.gz' bzip2_1.0.8.orig.tar.gz 810029 SHA256:ab5a03176ee106d3f0fa90e381da478ddae405918153cca248e682cd0c4a2269
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8-6build2.debian.tar.bz2' bzip2_1.0.8-6build2.debian.tar.bz2 27136 SHA256:39576cdf8211af8b7d3fe1419245299bf4dd2d9c1ae43ffc72cbc4a8f21f2c71
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8-6build2.dsc' bzip2_1.0.8-6build2.dsc 2205 SHA256:61558c8f0254e5bdfc013ee538374e9ca66183d8ea6c695ab7d4f33ce169cf27
```

### `dpkg` source package: `c-blosc2=2.23.0+ds-1`

Binary Packages:

- `libblosc2-7:amd64=2.23.0+ds-1`

Licenses: (parsed from: `/usr/share/doc/libblosc2-7/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `Expat`
- `minizip-ng`

Source:

```console
$ apt-get source -qq --print-uris c-blosc2=2.23.0+ds-1
'http://archive.ubuntu.com/ubuntu/pool/universe/c/c-blosc2/c-blosc2_2.23.0%2bds-1.dsc' c-blosc2_2.23.0+ds-1.dsc 3285 SHA256:3d364888387ff78bcb95479c8546d070c3c261a2013530135fca629aed9766f3
'http://archive.ubuntu.com/ubuntu/pool/universe/c/c-blosc2/c-blosc2_2.23.0%2bds.orig.tar.xz' c-blosc2_2.23.0+ds.orig.tar.xz 1426084 SHA256:8912d0ac6a3fc7642dfc00324f7d4b3b49dd44a5ee1c7340e7c2ad511cbed855
'http://archive.ubuntu.com/ubuntu/pool/universe/c/c-blosc2/c-blosc2_2.23.0%2bds-1.debian.tar.xz' c-blosc2_2.23.0+ds-1.debian.tar.xz 8960 SHA256:cae0fa42bf7f6b1edb86fd7313a534872f05aa4ed3d67f5cfa460b97163a03d7
```

### `dpkg` source package: `c-blosc=1.21.5+ds-2`

Binary Packages:

- `libblosc-dev:amd64=1.21.5+ds-2`
- `libblosc1:amd64=1.21.5+ds-2`

Licenses: (parsed from: `/usr/share/doc/libblosc-dev/copyright`, `/usr/share/doc/libblosc1/copyright`)

- `BSD-3-clause`
- `Expat`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris c-blosc=1.21.5+ds-2
'http://archive.ubuntu.com/ubuntu/pool/universe/c/c-blosc/c-blosc_1.21.5%2bds-2.dsc' c-blosc_1.21.5+ds-2.dsc 1422 SHA256:c8a21d12b6dde96100dffa7e34eedaca568bf73a03931601f1cc12df601be3ed
'http://archive.ubuntu.com/ubuntu/pool/universe/c/c-blosc/c-blosc_1.21.5%2bds.orig.tar.xz' c-blosc_1.21.5+ds.orig.tar.xz 107808 SHA256:c4e616db0dc234e92e79eb07eb51f1940fda251576f17d5e6afe618244a992cb
'http://archive.ubuntu.com/ubuntu/pool/universe/c/c-blosc/c-blosc_1.21.5%2bds-2.debian.tar.xz' c-blosc_1.21.5+ds-2.debian.tar.xz 8120 SHA256:85d219e3e608f90dc332d107438f9dfa1a3db24767bdae2a6c6a90e687cbffb4
```

### `dpkg` source package: `ca-certificates-java=20260311`

Binary Packages:

- `ca-certificates-java=20260311`

Licenses: (parsed from: `/usr/share/doc/ca-certificates-java/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates-java=20260311
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates-java/ca-certificates-java_20260311.dsc' ca-certificates-java_20260311.dsc 1933 SHA256:2689c5c0c55f470d8daebdbeea8e867be43583fad6f98e3b4b0dd480f826f292
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates-java/ca-certificates-java_20260311.tar.xz' ca-certificates-java_20260311.tar.xz 19684 SHA256:acb82ad4b200fe71d3ad95346932e2f94d2fa288e543038bffcacd21ac86d33d
```

### `dpkg` source package: `ca-certificates=20260601~26.04.1`

Binary Packages:

- `ca-certificates=20260601~26.04.1`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20260601~26.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20260601%7e26.04.1.tar.xz' ca-certificates_20260601~26.04.1.tar.xz 267380 SHA512:d82662a6c959c6d2cbd463a986eda6a500bd1b4ae53e904bcabc3076b33b5662f93a52e69e15371694391a5fb12c313224a5447c73ab1b921cef0317e907b2f4
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20260601%7e26.04.1.dsc' ca-certificates_20260601~26.04.1.dsc 1769 SHA512:e8be457fd3aa8cacaf00e112858116c1b99f5af889f27f298a9880baea1b2a4014f07974c6bcbfa66ddf901271653daf7413b590d0bf26b6d488a6329bb92d14
```

### `dpkg` source package: `cairo=1.18.4-3`

Binary Packages:

- `libcairo-gobject2:amd64=1.18.4-3`
- `libcairo2:amd64=1.18.4-3`

Licenses: (parsed from: `/usr/share/doc/libcairo-gobject2/copyright`, `/usr/share/doc/libcairo2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris cairo=1.18.4-3
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.18.4-3.dsc' cairo_1.18.4-3.dsc 2784 SHA256:5dfb99f2896a2f23810cde3e80e930bd917079b143e4e984feb44ba018590d2a
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.18.4.orig.tar.xz' cairo_1.18.4.orig.tar.xz 32578804 SHA256:445ed8208a6e4823de1226a74ca319d3600e83f6369f99b14265006599c32ccb
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.18.4-3.debian.tar.xz' cairo_1.18.4-3.debian.tar.xz 29988 SHA256:25cb656a9c4165f36950b01710683efce6b5b0e30b80d81d519d7c3d1a2f7b2a
```

### `dpkg` source package: `cdebconf=0.280ubuntu1`

Binary Packages:

- `libdebconfclient0:amd64=0.280ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libdebconfclient0/copyright`)

- `BSD-2-Clause`
- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.280ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.280ubuntu1.tar.xz' cdebconf_0.280ubuntu1.tar.xz 287352 SHA256:74601a49d86a2437131a552c577c7e15b2446f43d5112d9e32a312d5616abbd3
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.280ubuntu1.dsc' cdebconf_0.280ubuntu1.dsc 2873 SHA256:8e2ae2596d7850599eb0974c9ac31380e06aaf0be5a3b86b45e48a1b5c8a4cc7
```

### `dpkg` source package: `cfitsio=4.6.3-1`

Binary Packages:

- `libcfitsio-dev:amd64=4.6.3-1`
- `libcfitsio10t64:amd64=4.6.3-1`

Licenses: (parsed from: `/usr/share/doc/libcfitsio-dev/copyright`, `/usr/share/doc/libcfitsio10t64/copyright`)

- `FSFAP`
- `FSFUL`
- `FSFULLR`
- `GPL-2`
- `GPL-2+ with Libtool exception`
- `GPL-3`
- `GPL-3+ with Bison-2.2 exception`
- `LGPL-2`
- `LGPL-2+`
- `NOSA`
- `SAO`
- `X11`
- `cfortran`

Source:

```console
$ apt-get source -qq --print-uris cfitsio=4.6.3-1
'http://archive.ubuntu.com/ubuntu/pool/universe/c/cfitsio/cfitsio_4.6.3-1.dsc' cfitsio_4.6.3-1.dsc 2456 SHA256:21c0ef163eb0589031607e04c6d2eb9d5b100d41c7f7682388dcdeb5c941fea6
'http://archive.ubuntu.com/ubuntu/pool/universe/c/cfitsio/cfitsio_4.6.3.orig.tar.gz' cfitsio_4.6.3.orig.tar.gz 4661924 SHA256:fad44fff274fdda5ffcc0c0fff3bc3c596362722b9292fc8944db91187813600
'http://archive.ubuntu.com/ubuntu/pool/universe/c/cfitsio/cfitsio_4.6.3-1.debian.tar.xz' cfitsio_4.6.3-1.debian.tar.xz 24740 SHA256:2695bf09d939cc7b7351f99357cac69008d73177c034b84a46898fc49721828a
```

### `dpkg` source package: `cfortran=20210827-1`

Binary Packages:

- `cfortran=20210827-1`

Licenses: (parsed from: `/usr/share/doc/cfortran/copyright`)

- `LGPL-2`
- `LGPL-2+`
- `other-cfortran`

Source:

```console
$ apt-get source -qq --print-uris cfortran=20210827-1
'http://archive.ubuntu.com/ubuntu/pool/universe/c/cfortran/cfortran_20210827-1.dsc' cfortran_20210827-1.dsc 2061 SHA256:84a7e41ec44969ab1ec55a84cb59bd9a9901debe98a37c036ca24c2612c1025a
'http://archive.ubuntu.com/ubuntu/pool/universe/c/cfortran/cfortran_20210827.orig.tar.gz' cfortran_20210827.orig.tar.gz 94493 SHA256:d1e3ce2c1d85fa4854d6a9276df333962a662426c618c4f011a9546bae55afda
'http://archive.ubuntu.com/ubuntu/pool/universe/c/cfortran/cfortran_20210827-1.debian.tar.xz' cfortran_20210827-1.debian.tar.xz 8096 SHA256:4b27f4b70acc4672e554ca254ad510a7237623417c6fc90bce229123a140ce05
```

### `dpkg` source package: `charls=2.4.2-2build3`

Binary Packages:

- `libcharls2:amd64=2.4.2-2build3`

Licenses: (parsed from: `/usr/share/doc/libcharls2/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris charls=2.4.2-2build3
'http://archive.ubuntu.com/ubuntu/pool/universe/c/charls/charls_2.4.2.orig.tar.gz' charls_2.4.2.orig.tar.gz 9492449 SHA256:d1c2c35664976f1e43fec7764d72755e6a50a80f38eca70fcc7553cad4fe19d9
'http://archive.ubuntu.com/ubuntu/pool/universe/c/charls/charls_2.4.2-2build3.debian.tar.xz' charls_2.4.2-2build3.debian.tar.xz 5784 SHA256:2db938a066cd1bd8e647c01ee9bd26c1cfce70c3d0dd6784eaf068225a66acda
'http://archive.ubuntu.com/ubuntu/pool/universe/c/charls/charls_2.4.2-2build3.dsc' charls_2.4.2-2build3.dsc 2121 SHA256:c46ae4fb753a0617374ab095bbd90de7d6a1363d203e18e56bd687f9b67c9ff5
```

### `dpkg` source package: `chromaprint=1.6.0-2build1`

Binary Packages:

- `libchromaprint1:amd64=1.6.0-2build1`

Licenses: (parsed from: `/usr/share/doc/libchromaprint1/copyright`)

- `BSD-3-clause`
- `Expat`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris chromaprint=1.6.0-2build1
'http://archive.ubuntu.com/ubuntu/pool/universe/c/chromaprint/chromaprint_1.6.0.orig.tar.gz' chromaprint_1.6.0.orig.tar.gz 1580199 SHA256:65bfce4a35b2e673dbcda917b6aa577e2f145cf805243d19e6a50fea2a520c2a
'http://archive.ubuntu.com/ubuntu/pool/universe/c/chromaprint/chromaprint_1.6.0-2build1.debian.tar.xz' chromaprint_1.6.0-2build1.debian.tar.xz 6616 SHA256:024c8c60ada5fb3650d833c1b6340de924aa418f4bbd4f4030a8be821f217d8f
'http://archive.ubuntu.com/ubuntu/pool/universe/c/chromaprint/chromaprint_1.6.0-2build1.dsc' chromaprint_1.6.0-2build1.dsc 2381 SHA256:d63ab682f5db9fb29fe1b260fbdf769c5451f7caa18d8e0fb38459cc2d950c6b
```

### `dpkg` source package: `cjson=1.7.19-2`

Binary Packages:

- `libcjson1:amd64=1.7.19-2`

Licenses: (parsed from: `/usr/share/doc/libcjson1/copyright`)

- `Apache-2.0`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris cjson=1.7.19-2
'http://archive.ubuntu.com/ubuntu/pool/universe/c/cjson/cjson_1.7.19-2.dsc' cjson_1.7.19-2.dsc 1929 SHA256:4c2a8c0418ca719fc4f7039d2a889b67d820da2a288a9fb2c8e9c863cdf01aff
'http://archive.ubuntu.com/ubuntu/pool/universe/c/cjson/cjson_1.7.19.orig.tar.gz' cjson_1.7.19.orig.tar.gz 356247 SHA256:7fa616e3046edfa7a28a32d5f9eacfd23f92900fe1f8ccd988c1662f30454562
'http://archive.ubuntu.com/ubuntu/pool/universe/c/cjson/cjson_1.7.19-2.debian.tar.xz' cjson_1.7.19-2.debian.tar.xz 5484 SHA256:eb82fa71fc33ae882af35ba0a7f5588584f834683848ebfed9f1e14cde6ee344
```

### `dpkg` source package: `cmake=4.2.3-2ubuntu2`

Binary Packages:

- `cmake=4.2.3-2ubuntu2`
- `cmake-data=4.2.3-2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/cmake/copyright`, `/usr/share/doc/cmake-data/copyright`)

- `Apache-2.0`
- `BSD-0-Clause`
- `BSD-2-Clause`
- `BSD-3-Clause`
- `BSD-3-clause`
- `BSD-4-Clause`
- `Expat`
- `FSFAP`
- `GPL-2`
- `GPL-2+ with Bison exception`
- `GPL-3`
- `GPL-3+ with Bison exception`
- `ISC`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris cmake=4.2.3-2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/c/cmake/cmake_4.2.3.orig.tar.gz' cmake_4.2.3.orig.tar.gz 12345147 SHA256:7efaccde8c5a6b2968bad6ce0fe60e19b6e10701a12fce948c2bf79bac8a11e9
'http://archive.ubuntu.com/ubuntu/pool/main/c/cmake/cmake_4.2.3-2ubuntu2.debian.tar.xz' cmake_4.2.3-2ubuntu2.debian.tar.xz 36096 SHA256:d0999ef9347bcb505a2aecdea98c635b026f2ff1aab3b037cca63f3809b200f3
'http://archive.ubuntu.com/ubuntu/pool/main/c/cmake/cmake_4.2.3-2ubuntu2.dsc' cmake_4.2.3-2ubuntu2.dsc 3579 SHA256:77ae4d395392d674c8bb2f9b0e063074564aa45a2a2818e1359867b7ac10edb7
```

### `dpkg` source package: `codec2=1.2.0-4`

Binary Packages:

- `libcodec2-1.2:amd64=1.2.0-4`

Licenses: (parsed from: `/usr/share/doc/libcodec2-1.2/copyright`)

- `JMVBSD`
- `KISSFFTBSD`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris codec2=1.2.0-4
'http://archive.ubuntu.com/ubuntu/pool/universe/c/codec2/codec2_1.2.0-4.dsc' codec2_1.2.0-4.dsc 2887 SHA256:d3a8125d2b5e4be3834d4bfcb8a386e9bdda692016d85e728e0804d9ffb42446
'http://archive.ubuntu.com/ubuntu/pool/universe/c/codec2/codec2_1.2.0.orig-LPCNet.tar.gz' codec2_1.2.0.orig-LPCNet.tar.gz 5233217 SHA256:8c01fb69fc5ef1e33b654d811161c3df3759878c7c61c5d66a149751bd680516
'http://archive.ubuntu.com/ubuntu/pool/universe/c/codec2/codec2_1.2.0.orig-cml.tar.gz' codec2_1.2.0.orig-cml.tar.gz 569648 SHA256:471dc66f4c1a9d55585ac7b2a7831449cf4827ec6e89b351864c4e600656baf8
'http://archive.ubuntu.com/ubuntu/pool/universe/c/codec2/codec2_1.2.0.orig-lpcnet191005.tar.gz' codec2_1.2.0.orig-lpcnet191005.tar.gz 18396516 SHA256:509440924751fdd87ffaa5683ee3dddd937af5c833b9104ccce65d51614926c8
'http://archive.ubuntu.com/ubuntu/pool/universe/c/codec2/codec2_1.2.0.orig.tar.gz' codec2_1.2.0.orig.tar.gz 7688549 SHA256:cbccae52b2c2ecc5d2757e407da567eb681241ff8dadce39d779a7219dbcf449
'http://archive.ubuntu.com/ubuntu/pool/universe/c/codec2/codec2_1.2.0-4.debian.tar.xz' codec2_1.2.0-4.debian.tar.xz 48532 SHA256:864e4b5e63eca41d586490dddbe7ddaed93eec5e548168ec213914152fc56a7d
```

### `dpkg` source package: `colord=1.4.8-3`

Binary Packages:

- `libcolord2:amd64=1.4.8-3`

Licenses: (parsed from: `/usr/share/doc/libcolord2/copyright`)

- `CC0-1.0`
- `Expat`
- `GFDL-NIV`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `NPES`

Source:

```console
$ apt-get source -qq --print-uris colord=1.4.8-3
'http://archive.ubuntu.com/ubuntu/pool/main/c/colord/colord_1.4.8-3.dsc' colord_1.4.8-3.dsc 3474 SHA256:bb791ec4ab4f3a8e51f7437aa74fa247adaae01ae840311dfb3e708f3f472f6a
'http://archive.ubuntu.com/ubuntu/pool/main/c/colord/colord_1.4.8.orig.tar.xz' colord_1.4.8.orig.tar.xz 1916884 SHA256:21500bd68975312a7f0f3ce6019d9f75f42aacaa75ca7115ec720b5445406896
'http://archive.ubuntu.com/ubuntu/pool/main/c/colord/colord_1.4.8.orig.tar.xz.asc' colord_1.4.8.orig.tar.xz.asc 488 SHA256:8a7c047510f003efeddc39c19b1fb1f5118185ad4722abe1b4f0be7f1a0a278f
'http://archive.ubuntu.com/ubuntu/pool/main/c/colord/colord_1.4.8-3.debian.tar.xz' colord_1.4.8-3.debian.tar.xz 29448 SHA256:7dae606f6b41529e853da9fb23fc92a1ee3a3780a911c0abd354d6e35d5b3759
```

### `dpkg` source package: `console-bridge=1.0.1+dfsg2-4`

Binary Packages:

- `libconsole-bridge-dev:amd64=1.0.1+dfsg2-4`
- `libconsole-bridge1.0:amd64=1.0.1+dfsg2-4`

Licenses: (parsed from: `/usr/share/doc/libconsole-bridge-dev/copyright`, `/usr/share/doc/libconsole-bridge1.0/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris console-bridge=1.0.1+dfsg2-4
'http://archive.ubuntu.com/ubuntu/pool/universe/c/console-bridge/console-bridge_1.0.1%2bdfsg2-4.dsc' console-bridge_1.0.1+dfsg2-4.dsc 2397 SHA256:6789559b76e157a470a7c10b572cab347be86f4083a44c7145f3448454d701d1
'http://archive.ubuntu.com/ubuntu/pool/universe/c/console-bridge/console-bridge_1.0.1%2bdfsg2.orig.tar.xz' console-bridge_1.0.1+dfsg2.orig.tar.xz 10352 SHA256:d5ae857cd3bb3d6f6715a4d7a18ced55540ca9ad864e80a8c8258dba12ccf659
'http://archive.ubuntu.com/ubuntu/pool/universe/c/console-bridge/console-bridge_1.0.1%2bdfsg2-4.debian.tar.xz' console-bridge_1.0.1+dfsg2-4.debian.tar.xz 4484 SHA256:eb0cc7c036cda1f2bb233fc88e7484064586ab7f04cceb67801e7387a2630213
```

### `dpkg` source package: `coreutils-from=0.0.0~ubuntu25`

Binary Packages:

- `coreutils=9.5-1ubuntu2+0.0.0~ubuntu25`
- `coreutils-from-uutils=0.0.0~ubuntu25`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`, `/usr/share/doc/coreutils-from-uutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils-from=0.0.0~ubuntu25
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils-from/coreutils-from_0.0.0%7eubuntu25.tar.xz' coreutils-from_0.0.0~ubuntu25.tar.xz 7548 SHA512:11e3088d8b610ec45bcfa448fdc4a6f03acef55d1e9f6a01dc49e525ba0fefa15ebd21dc2a96686cdffcaa179bf1eb0e87aad25b3585c7c053afdb4540d881fa
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils-from/coreutils-from_0.0.0%7eubuntu25.dsc' coreutils-from_0.0.0~ubuntu25.dsc 1958 SHA512:8cb63710ed9acb7f69fd55e825a69ee9278b6190dbed219bb5d044333d2da59db4bd50f9a377300e7421efe70c3b9858b9933c6fe517433616e84ff0a9c4a252
```

### `dpkg` source package: `coreutils=9.7-3ubuntu2`

Binary Packages:

- `gnu-coreutils=9.7-3ubuntu2`

Licenses: (parsed from: `/usr/share/doc/gnu-coreutils/copyright`)

- `BSD-4-clause-UC`
- `FSFULLR`
- `GFDL-1.3`
- `GFDL-NIV-1.3`
- `GPL-3`
- `GPL-3+`
- `ISC`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `cppcheck=2.19.0-3`

Binary Packages:

- `cppcheck=2.19.0-3`

Licenses: (parsed from: `/usr/share/doc/cppcheck/copyright`)

- `BSD-2`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `ZLIB`

Source:

```console
$ apt-get source -qq --print-uris cppcheck=2.19.0-3
'http://archive.ubuntu.com/ubuntu/pool/universe/c/cppcheck/cppcheck_2.19.0-3.dsc' cppcheck_2.19.0-3.dsc 2132 SHA256:aed65a2e6820966955c6fc6bbeff7569744ae69bfdeee148309014afe0a5bfb5
'http://archive.ubuntu.com/ubuntu/pool/universe/c/cppcheck/cppcheck_2.19.0.orig.tar.gz' cppcheck_2.19.0.orig.tar.gz 3985155 SHA256:c6cff9d3bbcb3da941bf7f525ae974b6c7af3d610c4c5519fcd1be3f21f5ae09
'http://archive.ubuntu.com/ubuntu/pool/universe/c/cppcheck/cppcheck_2.19.0-3.debian.tar.xz' cppcheck_2.19.0-3.debian.tar.xz 12448 SHA256:4a2bf771c3693fba518082beea44ba970951e72bd35cd4a2aa485bf4258a643f
```

### `dpkg` source package: `cups=2.4.16-1ubuntu1.3`

Binary Packages:

- `libcups2t64:amd64=2.4.16-1ubuntu1.3`

Licenses: (parsed from: `/usr/share/doc/libcups2t64/copyright`)

- `Apache-2.0`
- `Apache-2.0-with-GPL2-LGPL2-Exception`
- `BSD-2-Clause`
- `BSD-2-clause`
- `FSFUL`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris cups=2.4.16-1ubuntu1.3
'http://archive.ubuntu.com/ubuntu/pool/main/c/cups/cups_2.4.16.orig.tar.gz' cups_2.4.16.orig.tar.gz 8159166 SHA512:ee0d2afdba7b713c8249912dd738c4fa87efb6f7cdb0a48a48be299d03ae4b1a02773418d6ffc4f7c5731bbae2c859bcc39695f9b93cc422ec6124b7ba179734
'http://archive.ubuntu.com/ubuntu/pool/main/c/cups/cups_2.4.16.orig.tar.gz.asc' cups_2.4.16.orig.tar.gz.asc 228 SHA512:79e6b97d30822e55d75d52fc19aa24a7a3c6f8ed3703c2ebb8447e02d1e3892aa97416687f47451d5db1c2c4a49a3b728d5173fa55ed765b91fc8a1930a83c8d
'http://archive.ubuntu.com/ubuntu/pool/main/c/cups/cups_2.4.16-1ubuntu1.3.debian.tar.xz' cups_2.4.16-1ubuntu1.3.debian.tar.xz 415068 SHA512:8f1a5ab0115a7f9d78ad6a1046abeb86c511c147afd9849d3a029c55fee01f49bed0aed52b97a18731d074de4dde93418a776c859ce5f2a84da4409df2481378
'http://archive.ubuntu.com/ubuntu/pool/main/c/cups/cups_2.4.16-1ubuntu1.3.dsc' cups_2.4.16-1ubuntu1.3.dsc 3447 SHA512:9d342c88290a9717a3c04e9e89bef066049518927a75efbadcb1e428efe690603e99b409ef004a26e5876526736590d86468ace74e7daa50b932e56b1132f784
```

### `dpkg` source package: `curl=8.18.0-1ubuntu2.3`

Binary Packages:

- `curl=8.18.0-1ubuntu2.3`
- `libcurl3t64-gnutls:amd64=8.18.0-1ubuntu2.3`
- `libcurl4-gnutls-dev:amd64=8.18.0-1ubuntu2.3`
- `libcurl4t64:amd64=8.18.0-1ubuntu2.3`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3t64-gnutls/copyright`, `/usr/share/doc/libcurl4-gnutls-dev/copyright`, `/usr/share/doc/libcurl4t64/copyright`)

- `BSD-4-Clause-UC`
- `FSFUL`
- `FSFULLR`
- `GPL-2`
- `GPL-2+ with Autoconf-data exception`
- `GPL-2+ with Libtool exception`
- `GPL-3+ with Autoconf-data exception`
- `ISC`
- `OLDAP-2.8`
- `X11`
- `curl`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `cyrus-sasl2=2.1.28+dfsg1-9ubuntu3`

Binary Packages:

- `libsasl2-2:amd64=2.1.28+dfsg1-9ubuntu3`
- `libsasl2-modules-db:amd64=2.1.28+dfsg1-9ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libsasl2-2/copyright`, `/usr/share/doc/libsasl2-modules-db/copyright`)

- `BSD-2-clause`
- `BSD-2.2-clause`
- `BSD-3-Clause-Attribution`
- `BSD-3-clause`
- `BSD-3-clause-JANET`
- `BSD-3-clause-PADL`
- `BSD-4-clause-UC`
- `FSFULLR`
- `GPL-3`
- `GPL-3+`
- `IBM-as-is`
- `MIT-CMU`
- `MIT-Export`
- `MIT-OpenVision`
- `OpenLDAP`
- `RSA-MD`

Source:

```console
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.28+dfsg1-9ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.28%2bdfsg1.orig.tar.xz' cyrus-sasl2_2.1.28+dfsg1.orig.tar.xz 794540 SHA256:e796a5d85d1a85e1b433d43504e467f9075c7ebc0b45730a3996cf11b1deada4
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.28%2bdfsg1-9ubuntu3.debian.tar.xz' cyrus-sasl2_2.1.28+dfsg1-9ubuntu3.debian.tar.xz 99600 SHA256:1941b432c3f4ad491b4394977a3ea3994e9d248ff4b8ffa0bcc8c0bec7c5f07f
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.28%2bdfsg1-9ubuntu3.dsc' cyrus-sasl2_2.1.28+dfsg1-9ubuntu3.dsc 3668 SHA256:31f3078127eb019aa785f1f32e9b0ae176738ce53e41762b18162f1d3a9d2443
```

### `dpkg` source package: `dash=0.5.12-12ubuntu3`

Binary Packages:

- `dash=0.5.12-12ubuntu3`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `BSD-3-Clause`
- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.12-12ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.12.orig.tar.gz' dash_0.5.12.orig.tar.gz 246054 SHA256:6a474ac46e8b0b32916c4c60df694c82058d3297d8b385b74508030ca4a8f28a
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.12-12ubuntu3.debian.tar.xz' dash_0.5.12-12ubuntu3.debian.tar.xz 48112 SHA256:e738deadc72ee2f5cb2c08dd38b5ae696292051d5547e1b07846134874840377
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.12-12ubuntu3.dsc' dash_0.5.12-12ubuntu3.dsc 2060 SHA256:e08ef9207e7ccbc4384aeec972234f2fb56d8aa8d1ba6def02c88187e7c68758
```

### `dpkg` source package: `dav1d=1.5.3-1`

Binary Packages:

- `libdav1d-dev:amd64=1.5.3-1`
- `libdav1d7:amd64=1.5.3-1`

Licenses: (parsed from: `/usr/share/doc/libdav1d-dev/copyright`, `/usr/share/doc/libdav1d7/copyright`)

- `BSD-2-clause`
- `ISC`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris dav1d=1.5.3-1
'http://archive.ubuntu.com/ubuntu/pool/universe/d/dav1d/dav1d_1.5.3-1.dsc' dav1d_1.5.3-1.dsc 2290 SHA256:1592217a09f18e62b59851631d467c931c5891dacd087e02a7469c379b5e819c
'http://archive.ubuntu.com/ubuntu/pool/universe/d/dav1d/dav1d_1.5.3.orig.tar.xz' dav1d_1.5.3.orig.tar.xz 1022836 SHA256:732010aa5ef461fa93355ed2c6c5fedb48ddc4b74e697eaabe8907eaeb943011
'http://archive.ubuntu.com/ubuntu/pool/universe/d/dav1d/dav1d_1.5.3.orig.tar.xz.asc' dav1d_1.5.3.orig.tar.xz.asc 195 SHA256:8a3edf1d814175c61c4b8ccb752e6d9b3a795c9c14aa83243239e782ba935224
'http://archive.ubuntu.com/ubuntu/pool/universe/d/dav1d/dav1d_1.5.3-1.debian.tar.xz' dav1d_1.5.3-1.debian.tar.xz 8572 SHA256:2701010cf2ed259c4970bb945be99ca271be2515e90052ec6fc48c0a6317afd8
```

### `dpkg` source package: `db5.3=5.3.28+dfsg2-10ubuntu1`

Binary Packages:

- `libdb5.3t64:amd64=5.3.28+dfsg2-10ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libdb5.3t64/copyright`)

- `Artistic`
- `BSD-3-clause`
- `BSD-3-clause-fjord`
- `GPL`
- `GPL-3`
- `MIT-old`
- `Ms-PL`
- `Sleepycat`
- `TCL-like`
- `X11`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28+dfsg2-10ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg2.orig.tar.xz' db5.3_5.3.28+dfsg2.orig.tar.xz 21287688 SHA256:ad41b507415dec8316e828b2230242af2251d2c86eefa3c7aa9ef47c5239ef33
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg2-10ubuntu1.debian.tar.xz' db5.3_5.3.28+dfsg2-10ubuntu1.debian.tar.xz 36572 SHA256:d901c0a275f43ba688460c3a06865d9318774b19dadf770e03f4927acd0ad61a
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg2-10ubuntu1.dsc' db5.3_5.3.28+dfsg2-10ubuntu1.dsc 2484 SHA256:12c95f53a2dec9cf8dff8de23967f46f16a0c92fcc7e3ee90ebbbbbb12df4b1b
```

### `dpkg` source package: `dbus-python=1.4.0-1build2`

Binary Packages:

- `python3-dbus=1.4.0-1build2`

Licenses: (parsed from: `/usr/share/doc/python3-dbus/copyright`)

- `AFL-2.1`
- `AFL-2.1,`
- `Expat`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris dbus-python=1.4.0-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus-python/dbus-python_1.4.0.orig.tar.xz' dbus-python_1.4.0.orig.tar.xz 168268 SHA256:c36b28f10ffcc8f1f798aca973bcc132f91f33eb9b6b8904381b4077766043d5
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus-python/dbus-python_1.4.0.orig.tar.xz.asc' dbus-python_1.4.0.orig.tar.xz.asc 833 SHA256:855c03b351e2ecbedf6d46f938bc4d9734f8573d252fd0ac496cbaeda27a2c53
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus-python/dbus-python_1.4.0-1build2.debian.tar.xz' dbus-python_1.4.0-1build2.debian.tar.xz 35232 SHA256:3b15008855cae6461051d5a266746ffdbfa302aa7e8b13e23f4b2ae6410fa78c
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus-python/dbus-python_1.4.0-1build2.dsc' dbus-python_1.4.0-1build2.dsc 2990 SHA256:6829e9059df61077c9ffc2272838bbb599dce580f951b073902a22de1d467703
```

### `dpkg` source package: `dbus=1.16.2-2ubuntu4`

Binary Packages:

- `dbus=1.16.2-2ubuntu4`
- `dbus-bin=1.16.2-2ubuntu4`
- `dbus-daemon=1.16.2-2ubuntu4`
- `dbus-session-bus-common=1.16.2-2ubuntu4`
- `dbus-system-bus-common=1.16.2-2ubuntu4`
- `dbus-user-session=1.16.2-2ubuntu4`
- `libdbus-1-3:amd64=1.16.2-2ubuntu4`

Licenses: (parsed from: `/usr/share/doc/dbus/copyright`, `/usr/share/doc/dbus-bin/copyright`, `/usr/share/doc/dbus-daemon/copyright`, `/usr/share/doc/dbus-session-bus-common/copyright`, `/usr/share/doc/dbus-system-bus-common/copyright`, `/usr/share/doc/dbus-user-session/copyright`, `/usr/share/doc/libdbus-1-3/copyright`)

- `AFL-2.1`
- `AFL-2.1,`
- `BSD-3-clause`
- `BSD-3-clause-generic`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `Tcl-BSDish`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris dbus=1.16.2-2ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.16.2.orig.tar.xz' dbus_1.16.2.orig.tar.xz 1115644 SHA256:0ba2a1a4b16afe7bceb2c07e9ce99a8c2c3508e5dec290dbb643384bd6beb7e2
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.16.2-2ubuntu4.debian.tar.xz' dbus_1.16.2-2ubuntu4.debian.tar.xz 72252 SHA256:f1bccf4ec5d41440d6cb62fd0c60b02231c9b47de6a31e6a548beec1d42d6072
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.16.2-2ubuntu4.dsc' dbus_1.16.2-2ubuntu4.dsc 3470 SHA256:5092503804ba08d1c7c24b3601827fe6490ba981687f42971b1cab1e1f92d502
```

### `dpkg` source package: `dconf=0.49.0-4`

Binary Packages:

- `dconf-gsettings-backend:amd64=0.49.0-4`
- `dconf-service=0.49.0-4`
- `libdconf1:amd64=0.49.0-4`

Licenses: (parsed from: `/usr/share/doc/dconf-gsettings-backend/copyright`, `/usr/share/doc/dconf-service/copyright`, `/usr/share/doc/libdconf1/copyright`)

- `GPL-3`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris dconf=0.49.0-4
'http://archive.ubuntu.com/ubuntu/pool/main/d/dconf/dconf_0.49.0-4.dsc' dconf_0.49.0-4.dsc 2654 SHA256:8ddd98085a13027899af357ba7c0f4f38f8725ebe59bf89afff9111d7847f245
'http://archive.ubuntu.com/ubuntu/pool/main/d/dconf/dconf_0.49.0.orig.tar.xz' dconf_0.49.0.orig.tar.xz 123832 SHA256:16a47e49a58156dbb96578e1708325299e4c19eea9be128d5bd12fd0963d6c36
'http://archive.ubuntu.com/ubuntu/pool/main/d/dconf/dconf_0.49.0-4.debian.tar.xz' dconf_0.49.0-4.debian.tar.xz 11336 SHA256:c3a094d7e086d63ef13b6adf3e74d9fc716997321d70a0413209a9ea5edfea8a
```

### `dpkg` source package: `debconf=1.5.92`

Binary Packages:

- `debconf=1.5.92`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.92
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.92.dsc' debconf_1.5.92.dsc 2202 SHA256:612d1b51713fc95b205b5f222af036b1541b13734e1f183a3f37e637eda187a9
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.92.tar.xz' debconf_1.5.92.tar.xz 610068 SHA256:72265cb0315c0cc58a0d5abf0c032ffac2d071c8ba05bf830f9e0e73ca8ab219
```

### `dpkg` source package: `debianutils=5.23.2build1`

Binary Packages:

- `debianutils=5.23.2build1`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL-2`
- `GPL-2+`
- `SMAIL-GPL`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris debianutils=5.23.2build1
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_5.23.2build1.tar.xz' debianutils_5.23.2build1.tar.xz 82192 SHA256:72fc5deb77b6883cfd97de456e9193b421457a7271ac28d0647df56fb3b69665
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_5.23.2build1.dsc' debianutils_5.23.2build1.dsc 1663 SHA256:ab153b7c7b73834ca21c5d27b9052ab5b4815d880a2ecb4d67b2d7b7707e94bc
```

### `dpkg` source package: `diffutils=1:3.12-1`

Binary Packages:

- `diffutils=1:3.12-1`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `FSFAP`
- `FSFULLR`
- `GFDL-1.3`
- `GFDL-NIV-1.3`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `GPL-3+ with autoconf exception`
- `GPL-3+ with texinfo exception`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3.0+`
- `X11`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris diffutils=1:3.12-1
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.12-1.dsc' diffutils_3.12-1.dsc 1875 SHA256:eb99be6cc60e71249bd119dfb66ada6a8c0fdd2e1bb8b1325f4801b813ad820c
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.12.orig.tar.xz' diffutils_3.12.orig.tar.xz 1938800 SHA256:7c8b7f9fc8609141fdea9cece85249d308624391ff61dedaf528fcb337727dfd
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.12.orig.tar.xz.asc' diffutils_3.12.orig.tar.xz.asc 833 SHA256:ad05b321b2f23441275af68072123a5907b05ad989335a9f1f6e3781cb0846a6
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.12-1.debian.tar.xz' diffutils_3.12-1.debian.tar.xz 14752 SHA256:ffacb3eb9ad1a8cc90768e13e1d09da1b71cfab3cb99b1e0bd1f0ba26f89dd46
```

### `dpkg` source package: `distlib=0.4.0-1`

Binary Packages:

- `python3-distlib=0.4.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-distlib/copyright`)

- `BSD-3-clause`
- `Python`

Source:

```console
$ apt-get source -qq --print-uris distlib=0.4.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/d/distlib/distlib_0.4.0-1.dsc' distlib_0.4.0-1.dsc 1809 SHA256:9620e8cb85605fb8ff1834526f701a901c0447c9255b7c9533566d03ce82995a
'http://archive.ubuntu.com/ubuntu/pool/universe/d/distlib/distlib_0.4.0.orig.tar.gz' distlib_0.4.0.orig.tar.gz 614605 SHA256:feec40075be03a04501a973d81f633735b4b69f98b05450592310c0f401a4e0d
'http://archive.ubuntu.com/ubuntu/pool/universe/d/distlib/distlib_0.4.0-1.debian.tar.xz' distlib_0.4.0-1.debian.tar.xz 7080 SHA256:6e313318f6362e9672c2b1919e4dc7de203eb8fc5d60fe66f5e8d54f458dd27b
```

### `dpkg` source package: `double-conversion=3.4.0-1`

Binary Packages:

- `libdouble-conversion-dev:amd64=3.4.0-1`
- `libdouble-conversion3:amd64=3.4.0-1`

Licenses: (parsed from: `/usr/share/doc/libdouble-conversion-dev/copyright`, `/usr/share/doc/libdouble-conversion3/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris double-conversion=3.4.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/d/double-conversion/double-conversion_3.4.0-1.dsc' double-conversion_3.4.0-1.dsc 2212 SHA256:08978e80b92afac4877dbf72f6fcbb04ce6f88c703f993673bbc9b01211c9c98
'http://archive.ubuntu.com/ubuntu/pool/universe/d/double-conversion/double-conversion_3.4.0.orig.tar.gz' double-conversion_3.4.0.orig.tar.gz 7035722 SHA256:42fd4d980ea86426e457b24bdfa835a6f5ad9517ddb01cdb42b99ab9c8dd5dc9
'http://archive.ubuntu.com/ubuntu/pool/universe/d/double-conversion/double-conversion_3.4.0-1.debian.tar.xz' double-conversion_3.4.0-1.debian.tar.xz 8896 SHA256:f1f2748a79992bac2c94c3cb75b13b31d40b5f095c06d9e25bbb67e774f85dde
```

### `dpkg` source package: `dpkg=1.23.7ubuntu1`

Binary Packages:

- `dpkg=1.23.7ubuntu1`
- `dpkg-dev=1.23.7ubuntu1`
- `libdpkg-perl=1.23.7ubuntu1`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`, `/usr/share/doc/dpkg-dev/copyright`, `/usr/share/doc/libdpkg-perl/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.23.7ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.23.7ubuntu1.tar.xz' dpkg_1.23.7ubuntu1.tar.xz 5773036 SHA512:94489c924b7d8588ea156fc9593fb576c1fce1b6e159d5095aacbea33c257459af523f77a5c471bbf54f3fb7787c554e90705e40d048db28c00d2e756525c6df
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.23.7ubuntu1.dsc' dpkg_1.23.7ubuntu1.dsc 3482 SHA512:b8af1554884f9057bfca85a0dc20a7c18f6ef1773b4ab423148360b069b99bed9624c8fdbbf9c0cc0626df9ea993b3f833ba7c2112c12157fd4d7696b3e8dc3a
```

### `dpkg` source package: `duktape=2.7.0+tests-0ubuntu4`

Binary Packages:

- `libduktape207:amd64=2.7.0+tests-0ubuntu4`

Licenses: (parsed from: `/usr/share/doc/libduktape207/copyright`)

- `CC0`
- `CC0-1.0`
- `expat`
- `unicode`

Source:

```console
$ apt-get source -qq --print-uris duktape=2.7.0+tests-0ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/d/duktape/duktape_2.7.0%2btests.orig.tar.xz' duktape_2.7.0+tests.orig.tar.xz 14764880 SHA256:012fe77bffc8daf8f68c6932c1c926ce155c09aed9a3705fb4606c19bfd093fd
'http://archive.ubuntu.com/ubuntu/pool/main/d/duktape/duktape_2.7.0%2btests-0ubuntu4.debian.tar.xz' duktape_2.7.0+tests-0ubuntu4.debian.tar.xz 9172 SHA256:9a2686f6ca0197d67eb671d3fbbaa76e978460cd6ddbe9fc745e510828775abe
'http://archive.ubuntu.com/ubuntu/pool/main/d/duktape/duktape_2.7.0%2btests-0ubuntu4.dsc' duktape_2.7.0+tests-0ubuntu4.dsc 2279 SHA256:62898a38e25c203711f4e58c2a3eb0f2b7a6c972ee9eee424c32144c355ffbbc
```

### `dpkg` source package: `e2fsprogs=1.47.2-3ubuntu4`

Binary Packages:

- `comerr-dev:amd64=2.1-1.47.2-3ubuntu4`
- `e2fsprogs=1.47.2-3ubuntu4`
- `libcom-err2:amd64=1.47.2-3ubuntu4`
- `libext2fs-dev=1.47.2-3ubuntu4`
- `libext2fs2t64:amd64=1.47.2-3ubuntu4`
- `libss2:amd64=1.47.2-3ubuntu4`
- `logsave=1.47.2-3ubuntu4`

Licenses: (parsed from: `/usr/share/doc/comerr-dev/copyright`, `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcom-err2/copyright`, `/usr/share/doc/libext2fs-dev/copyright`, `/usr/share/doc/libext2fs2t64/copyright`, `/usr/share/doc/libss2/copyright`, `/usr/share/doc/logsave/copyright`)

- `0BSD`
- `Apache-2`
- `Apache-2.0`
- `BSD-3-Clause`
- `BSD-3-Clause-Variant`
- `BSD-4-Clause-CMU`
- `Expat`
- `GPL`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Texinfo exception`
- `ISC`
- `Kazlib`
- `LGPL-2`
- `Latex2e`
- `MIT-US-export`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.47.2-3ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.47.2.orig.tar.gz' e2fsprogs_1.47.2.orig.tar.gz 9996725 SHA256:6dcd67ff9d8b13274ba3f088e4318be4f5b71412cd863524423fc49d39a6371f
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.47.2.orig.tar.gz.asc' e2fsprogs_1.47.2.orig.tar.gz.asc 488 SHA256:2063f62a198dd3df21f789c990c2cf9b4a5de24ed55f0b78d86e97e98daffc9d
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.47.2-3ubuntu4.debian.tar.xz' e2fsprogs_1.47.2-3ubuntu4.debian.tar.xz 105780 SHA256:6cdbd4f59b979c6e1a75c186b5b0d02b33d35c0410ceb329fc77aba9a313d9c6
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.47.2-3ubuntu4.dsc' e2fsprogs_1.47.2-3ubuntu4.dsc 3044 SHA256:56bd049f448bc211a3a875a4baf35cf2a1eb082f13709426367d5a433166621c
```

### `dpkg` source package: `eigen3=3.4.0-5`

Binary Packages:

- `libeigen3-dev=3.4.0-5`

Licenses: (parsed from: `/usr/share/doc/libeigen3-dev/copyright`)

- `BSD-3-clause`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MPL-2`

Source:

```console
$ apt-get source -qq --print-uris eigen3=3.4.0-5
'http://archive.ubuntu.com/ubuntu/pool/universe/e/eigen3/eigen3_3.4.0-5.dsc' eigen3_3.4.0-5.dsc 2196 SHA256:0c3e60694bd1f3db4430a949f7efdf71dcd9c6e6c1bf3de950d33475043e1396
'http://archive.ubuntu.com/ubuntu/pool/universe/e/eigen3/eigen3_3.4.0.orig.tar.bz2' eigen3_3.4.0.orig.tar.bz2 2143091 SHA256:b4c198460eba6f28d34894e3a5710998818515104d6e74e5cc331ce31e46e626
'http://archive.ubuntu.com/ubuntu/pool/universe/e/eigen3/eigen3_3.4.0-5.debian.tar.xz' eigen3_3.4.0-5.debian.tar.xz 20776 SHA256:bce0ed717bac704f8871812b9df0b2b9fe13b290acf97b1f617b51a16d4555c6
```

### `dpkg` source package: `elfutils=0.194-4`

Binary Packages:

- `libelf1t64:amd64=0.194-4`

Licenses: (parsed from: `/usr/share/doc/libelf1t64/copyright`)

- `GFDL-1.3`
- `GFDL-NIV-1.3`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `GPL-3+ with Bison exception`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`

Source:

```console
$ apt-get source -qq --print-uris elfutils=0.194-4
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.194-4.dsc' elfutils_0.194-4.dsc 3416 SHA256:4b427b9efe2c894f965d8b944f4e886606c36517da20a36bdc08584e497561f7
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.194.orig.tar.bz2' elfutils_0.194.orig.tar.bz2 12003321 SHA256:09e2ff033d39baa8b388a2d7fbc5390bfde99ae3b7c67c7daaf7433fbcf0f01e
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.194-4.debian.tar.xz' elfutils_0.194-4.debian.tar.xz 51088 SHA256:5b04e6da3cd52819fc5eb09fce5705a7251f6f37b50faa1c61644f5de2f30a3f
```

### `dpkg` source package: `empy=4.2.1-1`

Binary Packages:

- `python3-empy=4.2.1-1`

Licenses: (parsed from: `/usr/share/doc/python3-empy/copyright`)

- `BSD-3-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris empy=4.2.1-1
'http://archive.ubuntu.com/ubuntu/pool/universe/e/empy/empy_4.2.1-1.dsc' empy_4.2.1-1.dsc 2023 SHA256:dbd6e6489e5a21ed3084c85c48e44416d7f42f9deaaa59053b514499544c1db9
'http://archive.ubuntu.com/ubuntu/pool/universe/e/empy/empy_4.2.1.orig.tar.gz' empy_4.2.1.orig.tar.gz 177011 SHA256:ac00eefe9ff003719582ad88fc10f7b93064c573769b434eabb6196d52d16359
'http://archive.ubuntu.com/ubuntu/pool/universe/e/empy/empy_4.2.1-1.debian.tar.xz' empy_4.2.1-1.debian.tar.xz 12064 SHA256:008aa39c6b1d3e5f3996dd34e11323707baba2482112a40bbac0dc4166d72b77
```

### `dpkg` source package: `expat=2.7.4-1`

Binary Packages:

- `libexpat1:amd64=2.7.4-1`
- `libexpat1-dev:amd64=2.7.4-1`

Licenses: (parsed from: `/usr/share/doc/libexpat1/copyright`, `/usr/share/doc/libexpat1-dev/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris expat=2.7.4-1
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.7.4-1.dsc' expat_2.7.4-1.dsc 1970 SHA256:2b8d94bbc4e830fb7268be91ff18dc24cfdc88608399311af85737cf360da3a0
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.7.4.orig.tar.gz' expat_2.7.4.orig.tar.gz 8448897 SHA256:5b356795b889d3e5b379433ece069b8781bf0727f6959ad3bbc9da0c22164f59
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.7.4-1.debian.tar.xz' expat_2.7.4-1.debian.tar.xz 13420 SHA256:d58d2cb39825e385b7063eca491ce1b34299b047bce45d9ef0b42666a289a9b0
```

### `dpkg` source package: `exprtk=0.0.3-4`

Binary Packages:

- `libexprtk-dev=0.0.3-4`

Licenses: (parsed from: `/usr/share/doc/libexprtk-dev/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris exprtk=0.0.3-4
'http://archive.ubuntu.com/ubuntu/pool/universe/e/exprtk/exprtk_0.0.3-4.dsc' exprtk_0.0.3-4.dsc 1929 SHA256:374083f6f8478d91e621523822a65cca8a480f45264cfce707d0430136700922
'http://archive.ubuntu.com/ubuntu/pool/universe/e/exprtk/exprtk_0.0.3.orig.tar.gz' exprtk_0.0.3.orig.tar.gz 1533147 SHA256:f9dec6975e86c702033d6a65ba9a0368eba31a61b89d74f2b5d24457c02c8439
'http://archive.ubuntu.com/ubuntu/pool/universe/e/exprtk/exprtk_0.0.3-4.debian.tar.xz' exprtk_0.0.3-4.debian.tar.xz 2196 SHA256:908bd2f14e0ba5d221682521a5d744dea853ebe4b9c1076b1bad8181962793d5
```

### `dpkg` source package: `ffmpeg=7:8.0.1-3ubuntu2`

Binary Packages:

- `libavcodec-dev:amd64=7:8.0.1-3ubuntu2`
- `libavcodec62:amd64=7:8.0.1-3ubuntu2`
- `libavformat-dev:amd64=7:8.0.1-3ubuntu2`
- `libavformat62:amd64=7:8.0.1-3ubuntu2`
- `libavutil-dev:amd64=7:8.0.1-3ubuntu2`
- `libavutil60:amd64=7:8.0.1-3ubuntu2`
- `libswresample-dev:amd64=7:8.0.1-3ubuntu2`
- `libswresample6:amd64=7:8.0.1-3ubuntu2`
- `libswscale-dev:amd64=7:8.0.1-3ubuntu2`
- `libswscale9:amd64=7:8.0.1-3ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libavcodec-dev/copyright`, `/usr/share/doc/libavcodec62/copyright`, `/usr/share/doc/libavformat-dev/copyright`, `/usr/share/doc/libavformat62/copyright`, `/usr/share/doc/libavutil-dev/copyright`, `/usr/share/doc/libavutil60/copyright`, `/usr/share/doc/libswresample-dev/copyright`, `/usr/share/doc/libswresample6/copyright`, `/usr/share/doc/libswscale-dev/copyright`, `/usr/share/doc/libswscale9/copyright`)

- `BSD-1-clause`
- `BSD-2-clause`
- `BSD-3-clause`
- `BSL`
- `Expat`
- `GPL-2`
- `GPL-2+`
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
$ apt-get source -qq --print-uris ffmpeg=7:8.0.1-3ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/universe/f/ffmpeg/ffmpeg_8.0.1.orig.tar.xz' ffmpeg_8.0.1.orig.tar.xz 11388848 SHA256:05ee0b03119b45c0bdb4df654b96802e909e0a752f72e4fe3794f487229e5a41
'http://archive.ubuntu.com/ubuntu/pool/universe/f/ffmpeg/ffmpeg_8.0.1.orig.tar.xz.asc' ffmpeg_8.0.1.orig.tar.xz.asc 520 SHA256:54ab4020bb4eb280444da74d7aabc282acf6e8500cf6feaefd9821373fa9e72c
'http://archive.ubuntu.com/ubuntu/pool/universe/f/ffmpeg/ffmpeg_8.0.1-3ubuntu2.debian.tar.xz' ffmpeg_8.0.1-3ubuntu2.debian.tar.xz 58084 SHA256:a32bd75677bca735105b04a0ebd190a3481e0d8c2fcacd7d9f17524e240ee879
'http://archive.ubuntu.com/ubuntu/pool/universe/f/ffmpeg/ffmpeg_8.0.1-3ubuntu2.dsc' ffmpeg_8.0.1-3ubuntu2.dsc 6104 SHA256:70ac30ebbb7e89fc4ebc4438457fab7c1deea5b62986577bfb1c866fee72436e
```

### `dpkg` source package: `findutils=4.10.0-3build2`

Binary Packages:

- `findutils=4.10.0-3build2`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `BSD-3-clause`
- `FSFAP`
- `FSFULLR`
- `GFDL-1.3`
- `GFDL-NIV-1.3+`
- `GPL`
- `GPL with automake exception`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf-data exception`
- `GPL-3`
- `GPL-3+`
- `GPL-3+ with Autoconf-data exception`
- `GPL-3+ with Bison-2.2 exception`
- `ISC`
- `LGPL`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`
- `X11`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.10.0-3build2
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.10.0.orig.tar.xz' findutils_4.10.0.orig.tar.xz 2240712 SHA256:1387e0b67ff247d2abde998f90dfbf70c1491391a59ddfecb8ae698789f0a4f5
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.10.0.orig.tar.xz.asc' findutils_4.10.0.orig.tar.xz.asc 488 SHA256:7f53670eea6bd114e014571221eb652855c1129a3ed99f2a9257c2a313cc216f
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.10.0-3build2.debian.tar.xz' findutils_4.10.0-3build2.debian.tar.xz 33524 SHA256:9cc2b136d07f4d901356c4946a63ef8b1daaefa9303737ddaf748aaf0a914d95
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.10.0-3build2.dsc' findutils_4.10.0-3build2.dsc 2315 SHA256:fe0941ee86020480e78c3a2717b0ab36746535b50d3d158d87d46cf99774a0f3
```

### `dpkg` source package: `flake8-blind-except=0.2.1-1build1`

Binary Packages:

- `python3-flake8-blind-except=0.2.1-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-flake8-blind-except/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris flake8-blind-except=0.2.1-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-blind-except/flake8-blind-except_0.2.1.orig.tar.gz' flake8-blind-except_0.2.1.orig.tar.gz 3229 SHA256:d418273d9595f18d25ef8bd43af27f78aa5a29753207990854bf3ecb198cd955
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-blind-except/flake8-blind-except_0.2.1-1build1.debian.tar.xz' flake8-blind-except_0.2.1-1build1.debian.tar.xz 2492 SHA256:cb50d191ad94fb1df5013c63f3c6b91a13578c66137923202f6387616b14c1a5
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-blind-except/flake8-blind-except_0.2.1-1build1.dsc' flake8-blind-except_0.2.1-1build1.dsc 2218 SHA256:5c05687de4d9574155f0eaf54d72c1240416abdf8ec09eda3726f42242b1cec9
```

### `dpkg` source package: `flake8-builtins=3.1.0-1`

Binary Packages:

- `python3-flake8-builtins=3.1.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-flake8-builtins/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris flake8-builtins=3.1.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-builtins/flake8-builtins_3.1.0-1.dsc' flake8-builtins_3.1.0-1.dsc 2331 SHA256:4748a3743bf183bcfeebc887ec3aea68dccb6906175c6cb772d845df6be51cd6
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-builtins/flake8-builtins_3.1.0.orig.tar.gz' flake8-builtins_3.1.0.orig.tar.gz 16440 SHA256:f6c4b7865f423b551ea1610b5b0a80b19d7ba221b705e4b61020d8377adfcbb3
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-builtins/flake8-builtins_3.1.0-1.debian.tar.xz' flake8-builtins_3.1.0-1.debian.tar.xz 2484 SHA256:1f727f962fe86401d4807d0e8bac29532261ba7870af376c5e52a15e087bc5c5
```

### `dpkg` source package: `flake8-class-newline=1.6.0-6build1`

Binary Packages:

- `python3-flake8-class-newline=1.6.0-6build1`

Licenses: (parsed from: `/usr/share/doc/python3-flake8-class-newline/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris flake8-class-newline=1.6.0-6build1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-class-newline/flake8-class-newline_1.6.0.orig.tar.gz' flake8-class-newline_1.6.0.orig.tar.gz 4672 SHA256:ebf97f562eeca28534a1d0b186f510554b50f228a6d553a1a8bc18ae3ec9545d
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-class-newline/flake8-class-newline_1.6.0-6build1.debian.tar.xz' flake8-class-newline_1.6.0-6build1.debian.tar.xz 2964 SHA256:2aa61363c19db1a13f9b223e8bed2d02328d378318f647df2e18dd44447831e9
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-class-newline/flake8-class-newline_1.6.0-6build1.dsc' flake8-class-newline_1.6.0-6build1.dsc 2248 SHA256:04afae1c87455ede39bcc85616b7bfd274948c24738c7e0fe5845aaaa3fe8c0a
```

### `dpkg` source package: `flake8-comprehensions=3.17.0-1`

Binary Packages:

- `python3-flake8-comprehensions=3.17.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-flake8-comprehensions/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris flake8-comprehensions=3.17.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-comprehensions/flake8-comprehensions_3.17.0-1.dsc' flake8-comprehensions_3.17.0-1.dsc 2304 SHA256:9017fa50641f10de7ab5bbed24ff7c534e9e20b3bee72e00a3d3c1d0aa438368
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-comprehensions/flake8-comprehensions_3.17.0.orig.tar.gz' flake8-comprehensions_3.17.0.orig.tar.gz 22391 SHA256:4fb7f5b9d4333128222860d59956d14d994f6a0e32d2abb82e7b29305e50b888
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-comprehensions/flake8-comprehensions_3.17.0-1.debian.tar.xz' flake8-comprehensions_3.17.0-1.debian.tar.xz 2676 SHA256:62da08b0416e4f9633ef08222d795aa638eac7c826b4d806d182a6504064a09e
```

### `dpkg` source package: `flake8-deprecated=2.3.0-1`

Binary Packages:

- `python3-flake8-deprecated=2.3.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-flake8-deprecated/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris flake8-deprecated=2.3.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-deprecated/flake8-deprecated_2.3.0-1.dsc' flake8-deprecated_2.3.0-1.dsc 2258 SHA256:03d983505d8c9e2138067bf9616f19e573d29676487d53fcdfa6ac598e088a3c
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-deprecated/flake8-deprecated_2.3.0.orig.tar.gz' flake8-deprecated_2.3.0.orig.tar.gz 12827 SHA256:00fa7ac6a1a01af124875fb52fd751a0649e739774c8015bd9b937ae1ec145dc
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-deprecated/flake8-deprecated_2.3.0-1.debian.tar.xz' flake8-deprecated_2.3.0-1.debian.tar.xz 2052 SHA256:575e3954684e3628bf06f09679a266a044af1f19cf5fbc8d44492bcf240d584b
```

### `dpkg` source package: `flake8-import-order=0.19.2-1`

Binary Packages:

- `python3-flake8-import-order=0.19.2-1`

Licenses: (parsed from: `/usr/share/doc/python3-flake8-import-order/copyright`)

- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris flake8-import-order=0.19.2-1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-import-order/flake8-import-order_0.19.2-1.dsc' flake8-import-order_0.19.2-1.dsc 2303 SHA256:0f384c806fa21df36a38024072615d0a6d78a9a679f370dda4675ad7d1fc96e3
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-import-order/flake8-import-order_0.19.2.orig.tar.gz' flake8-import-order_0.19.2.orig.tar.gz 29638 SHA256:590c57bc83cac4b99891b3f672183638b5002b75b65db9ae24776d31d7f85584
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-import-order/flake8-import-order_0.19.2-1.debian.tar.xz' flake8-import-order_0.19.2-1.debian.tar.xz 2880 SHA256:423b1bed137bd98d77a69ef091081241f6ebfc7844b1013dbeff0ce44910e922
```

### `dpkg` source package: `flake8-quotes=3.4.0-4build1`

Binary Packages:

- `python3-flake8-quotes=3.4.0-4build1`

Licenses: (parsed from: `/usr/share/doc/python3-flake8-quotes/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris flake8-quotes=3.4.0-4build1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-quotes/flake8-quotes_3.4.0.orig.tar.gz' flake8-quotes_3.4.0.orig.tar.gz 12924 SHA256:0a09b7905765de92987f2184d14456f1d6b2aae26e668f4db7a933fc3c4d0cac
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-quotes/flake8-quotes_3.4.0-4build1.debian.tar.xz' flake8-quotes_3.4.0-4build1.debian.tar.xz 3940 SHA256:c0348b28f8c7e00d5922628fb3d3de9d39ea82d5d41c4b2a380f25fae9be4355
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-quotes/flake8-quotes_3.4.0-4build1.dsc' flake8-quotes_3.4.0-4build1.dsc 2151 SHA256:4a7ab8c18f1c621a481d1126cbca7fbe58a79b53e28606595249e8e409936231
```

### `dpkg` source package: `flann=1.9.2+dfsg-7`

Binary Packages:

- `libflann-dev:amd64=1.9.2+dfsg-7`
- `libflann1.9:amd64=1.9.2+dfsg-7`

Licenses: (parsed from: `/usr/share/doc/libflann-dev/copyright`, `/usr/share/doc/libflann1.9/copyright`)

- `BSD-3-clause`
- `BSL-1`
- `Contract_DE-AC04-94AL85000`

Source:

```console
$ apt-get source -qq --print-uris flann=1.9.2+dfsg-7
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flann/flann_1.9.2%2bdfsg-7.dsc' flann_1.9.2+dfsg-7.dsc 2833 SHA256:5d89eeffb0653f7ab5303a600fde45f3be5f0df913e6c879e8e9f1ac925bb8bc
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flann/flann_1.9.2%2bdfsg.orig.tar.xz' flann_1.9.2+dfsg.orig.tar.xz 27015224 SHA256:9ef9e74820c0eb7136200fb7e2e9ac5caff1defe339351b4e8e7aec19bb35de8
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flann/flann_1.9.2%2bdfsg-7.debian.tar.xz' flann_1.9.2+dfsg-7.debian.tar.xz 9448 SHA256:05adaa1b942d8b7e4ca09e91fc42ab312ef7d052e3a5f777baec21e3248ece44
```

### `dpkg` source package: `fmtlib=10.1.1+ds1-4build1`

Binary Packages:

- `libfmt-dev:amd64=10.1.1+ds1-4build1`
- `libfmt10:amd64=10.1.1+ds1-4build1`

Licenses: (parsed from: `/usr/share/doc/libfmt-dev/copyright`, `/usr/share/doc/libfmt10/copyright`)

- `BSD-2-Clause`
- `CC0-1.0`
- `Expat`
- `Expat with embedded exception`
- `Python`

Source:

```console
$ apt-get source -qq --print-uris fmtlib=10.1.1+ds1-4build1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/fmtlib/fmtlib_10.1.1%2bds1.orig.tar.gz' fmtlib_10.1.1+ds1.orig.tar.gz 329952 SHA256:7000f214d2628f04174822f8048c573f1608194408d7931121595a03f1c18a17
'http://archive.ubuntu.com/ubuntu/pool/universe/f/fmtlib/fmtlib_10.1.1%2bds1-4build1.debian.tar.xz' fmtlib_10.1.1+ds1-4build1.debian.tar.xz 14476 SHA256:5b0da09beededebd484fa075cb80c5e4ce7c61ca21cc29d74251a4853d7717a2
'http://archive.ubuntu.com/ubuntu/pool/universe/f/fmtlib/fmtlib_10.1.1%2bds1-4build1.dsc' fmtlib_10.1.1+ds1-4build1.dsc 2094 SHA256:82f9f796fbbd57c7119b6604e9fa3082de1fac1264a1b145d06165aa09accd24
```

### `dpkg` source package: `fontconfig=2.17.1-3ubuntu1`

Binary Packages:

- `fontconfig=2.17.1-3ubuntu1`
- `fontconfig-config=2.17.1-3ubuntu1`
- `libfontconfig-dev:amd64=2.17.1-3ubuntu1`
- `libfontconfig1:amd64=2.17.1-3ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris fontconfig=2.17.1-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.17.1.orig.tar.gz' fontconfig_2.17.1.orig.tar.gz 622045 SHA256:f07504cef87f171ee1748352e2df9b9f125352f620fa0d03a9284306ea2c40a4
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.17.1-3ubuntu1.debian.tar.xz' fontconfig_2.17.1-3ubuntu1.debian.tar.xz 31920 SHA256:3125c7ad526f1c9791ddd58b9194af84cd05154446692168cd546e9a52d955b7
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.17.1-3ubuntu1.dsc' fontconfig_2.17.1-3ubuntu1.dsc 2751 SHA256:1e0f7507102b7f8287052b0757f43017795d0e27c0b75d85cc41d9c523ff11c2
```

### `dpkg` source package: `fonts-dejavu=2.37-8build1`

Binary Packages:

- `fonts-dejavu-core=2.37-8build1`
- `fonts-dejavu-mono=2.37-8build1`

Licenses: (parsed from: `/usr/share/doc/fonts-dejavu-core/copyright`, `/usr/share/doc/fonts-dejavu-mono/copyright`)

- `GPL-2`
- `GPL-2+`
- `bitstream-vera`

Source:

```console
$ apt-get source -qq --print-uris fonts-dejavu=2.37-8build1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.37.orig.tar.bz2' fonts-dejavu_2.37.orig.tar.bz2 12050109 SHA256:4b21c5203f792343d5e90ab1cb0cf07e99887218abe3d83cd9a98cea9085e799
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.37-8build1.debian.tar.xz' fonts-dejavu_2.37-8build1.debian.tar.xz 13244 SHA256:b82c68359a2aaf6830ce7689d14c030d318c24db4fe8ddc9da60ee7e972cad7f
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.37-8build1.dsc' fonts-dejavu_2.37-8build1.dsc 2525 SHA256:f092af264087c8c3598f8ff4fc6548d883e49cfbf4854ac33a4850eb80f99aa8
```

### `dpkg` source package: `freetype=2.14.2+dfsg-1ubuntu0.1`

Binary Packages:

- `libfreetype-dev:amd64=2.14.2+dfsg-1ubuntu0.1`
- `libfreetype6:amd64=2.14.2+dfsg-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libfreetype-dev/copyright`, `/usr/share/doc/libfreetype6/copyright`)

- `BSD-3-Clause`
- `BSL-1.0`
- `Expat`
- `FSFAP`
- `FTL`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `MIT-Modern-Variant`
- `MIT-SMC`
- `OpenGroup-MIT`
- `Public-Domain`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris freetype=2.14.2+dfsg-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.2%2bdfsg.orig-ft2demos.tar.xz' freetype_2.14.2+dfsg.orig-ft2demos.tar.xz 347364 SHA512:efef4187b3d9cc747daad26cef6700051388435480c60e96e371eb04be3baae1e09ac932183c3a72b7bb4db1889d2bda89a70bfb058193c73bc5a602e53a3553
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.2%2bdfsg.orig-ft2demos.tar.xz.asc' freetype_2.14.2+dfsg.orig-ft2demos.tar.xz.asc 833 SHA512:569d05266c430b7fb361a5c74198e0047f44ba24fd723d13e89de8974a6ce3fc5837bbd551e2e404926e14da5db68bd50011c6fa6fa01d92460bd3eeaacdc0f2
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.2%2bdfsg.orig-ft2docs.tar.xz' freetype_2.14.2+dfsg.orig-ft2docs.tar.xz 2176140 SHA512:f2794dee78a00f91ea4241722deff64e03e7c42cbd26073ed0d7a6e0ecca14c5f87cb1dbd520ccc94311a6b0f510b4462eee3f8765e8d77841176e78d8c45837
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.2%2bdfsg.orig-ft2docs.tar.xz.asc' freetype_2.14.2+dfsg.orig-ft2docs.tar.xz.asc 833 SHA512:9a42b83c2237cd04e5cea7e5389078a985d6e22f48c030d225c32b5da9230b0c1b8ae6dd213bef4ac572fec74c5d05b9acfc011c199f0db5995293800575514a
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.2%2bdfsg.orig.tar.xz' freetype_2.14.2+dfsg.orig.tar.xz 2246044 SHA512:fa16e901edee4b578cf920eb357ec5f8aea38fe1152e7ad8562201e7edde4d763a457dfdcf69bb1b5792c0b1ba0253e6dea2b8928141e77ab53e366be1b9af65
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.2%2bdfsg-1ubuntu0.1.debian.tar.xz' freetype_2.14.2+dfsg-1ubuntu0.1.debian.tar.xz 45112 SHA512:4d5be2b05ace8730454a50716f303a310aa8b363ef13467b58f39035f93228f43e95b5cd7df7837beaac80f4a10efda931de565e1d2f2a9b041bb099bb04b1cd
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.2%2bdfsg-1ubuntu0.1.dsc' freetype_2.14.2+dfsg-1ubuntu0.1.dsc 4105 SHA512:818b73fce2b591edd77af51cfcf1d4853ea0064b8dc376128afb17dfadae4c6261ab21104129f0d37cac57ceab2107c5bed32dffd6cbb30c5b9fa72ce8abbe16
```

### `dpkg` source package: `freexl=2.0.0-1build3`

Binary Packages:

- `libfreexl-dev:amd64=2.0.0-1build3`
- `libfreexl1:amd64=2.0.0-1build3`

Licenses: (parsed from: `/usr/share/doc/libfreexl-dev/copyright`, `/usr/share/doc/libfreexl1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MPL-1.1`

Source:

```console
$ apt-get source -qq --print-uris freexl=2.0.0-1build3
'http://archive.ubuntu.com/ubuntu/pool/universe/f/freexl/freexl_2.0.0.orig.tar.gz' freexl_2.0.0.orig.tar.gz 991565 SHA256:176705f1de58ab7c1eebbf5c6de46ab76fcd8b856508dbd28f5648f7c6e1a7f0
'http://archive.ubuntu.com/ubuntu/pool/universe/f/freexl/freexl_2.0.0-1build3.debian.tar.xz' freexl_2.0.0-1build3.debian.tar.xz 12448 SHA256:9aea16ac005b685a84c18f3c8e2ba65aca82c3b0ba139ad44da53361c2f1208c
'http://archive.ubuntu.com/ubuntu/pool/universe/f/freexl/freexl_2.0.0-1build3.dsc' freexl_2.0.0-1build3.dsc 2148 SHA256:b10ef69a6d3c56ce9571399a7feaa89329962b91d7b7e6816d6ffc02d614a8a0
```

### `dpkg` source package: `fribidi=1.0.16-5`

Binary Packages:

- `libfribidi0:amd64=1.0.16-5`

Licenses: (parsed from: `/usr/share/doc/libfribidi0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris fribidi=1.0.16-5
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_1.0.16-5.dsc' fribidi_1.0.16-5.dsc 2014 SHA256:bc60303e25c24c017928a8e19766a0d10c7196ddeb419a646b0781d746cba918
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_1.0.16.orig.tar.xz' fribidi_1.0.16.orig.tar.xz 1098260 SHA256:1b1cde5b235d40479e91be2f0e88a309e3214c8ab470ec8a2744d82a5a9ea05c
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_1.0.16-5.debian.tar.xz' fribidi_1.0.16-5.debian.tar.xz 9052 SHA256:72209d3e970d4d10d2a2c691c9177d3bfeee59d75a45bacd6ec2f004513b0283
```

### `dpkg` source package: `fuse3=3.18.2-1`

Binary Packages:

- `libfuse3-4:amd64=3.18.2-1`

Licenses: (parsed from: `/usr/share/doc/libfuse3-4/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris fuse3=3.18.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fuse3/fuse3_3.18.2-1.dsc' fuse3_3.18.2-1.dsc 2395 SHA256:161ea130b835e26a87a51ce50b8e7354e042563d4c575feead126eccb9633bc6
'http://archive.ubuntu.com/ubuntu/pool/main/f/fuse3/fuse3_3.18.2.orig.tar.gz' fuse3_3.18.2.orig.tar.gz 4933779 SHA256:f01de85717e20adf5f98aff324acd85dd73d61a5ca3834d573dcf0bd6e54a298
'http://archive.ubuntu.com/ubuntu/pool/main/f/fuse3/fuse3_3.18.2.orig.tar.gz.asc' fuse3_3.18.2.orig.tar.gz.asc 314 SHA256:6007147a98d51e84b8e4a501eec65dc1207e3adb34b4b4431bd7126f9c52bedb
'http://archive.ubuntu.com/ubuntu/pool/main/f/fuse3/fuse3_3.18.2-1.debian.tar.xz' fuse3_3.18.2-1.debian.tar.xz 11884 SHA256:afb317c24228560fb52778f04993519b5652523977d93370cac43b835bc4fb8a
```

### `dpkg` source package: `fyba=4.1.1-11build2`

Binary Packages:

- `libfyba-dev:amd64=4.1.1-11build2`
- `libfyba0t64:amd64=4.1.1-11build2`

Licenses: (parsed from: `/usr/share/doc/libfyba-dev/copyright`, `/usr/share/doc/libfyba0t64/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris fyba=4.1.1-11build2
'http://archive.ubuntu.com/ubuntu/pool/universe/f/fyba/fyba_4.1.1.orig.tar.gz' fyba_4.1.1.orig.tar.gz 500377 SHA256:99f658d52e8fd8997118bb6207b9c121500700996d9481a736683474e2534179
'http://archive.ubuntu.com/ubuntu/pool/universe/f/fyba/fyba_4.1.1-11build2.debian.tar.xz' fyba_4.1.1-11build2.debian.tar.xz 13448 SHA256:e77de2bf2194edf0f40c8cc34a8d8eebc5e4738ef3331f91a8d55b88775032e7
'http://archive.ubuntu.com/ubuntu/pool/universe/f/fyba/fyba_4.1.1-11build2.dsc' fyba_4.1.1-11build2.dsc 2123 SHA256:109863f87d8d212e1ada2474475752b87eb06ff5d089a799f7a5b12d0e91a1af
```

### `dpkg` source package: `fzf=0.67.0-1`

Binary Packages:

- `fzf=0.67.0-1`

Licenses: (parsed from: `/usr/share/doc/fzf/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris fzf=0.67.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/fzf/fzf_0.67.0-1.dsc' fzf_0.67.0-1.dsc 2281 SHA256:6c93ab96b9cc59d32106163d44f9552a1500777f04b3d61648feda331f55b388
'http://archive.ubuntu.com/ubuntu/pool/universe/f/fzf/fzf_0.67.0.orig.tar.gz' fzf_0.67.0.orig.tar.gz 363163 SHA256:93f49e12e225ac85892fb6fb364410bc1b7bb90df53466b56a1813b07bf234c7
'http://archive.ubuntu.com/ubuntu/pool/universe/f/fzf/fzf_0.67.0-1.debian.tar.xz' fzf_0.67.0-1.debian.tar.xz 6660 SHA256:e34871e5102f4b606bea455242fbbdfad2f8ab75af0f3319655dd1ac152bdb58
```

### `dpkg` source package: `game-music-emu=0.6.4-1`

Binary Packages:

- `libgme0:amd64=0.6.4-1`

Licenses: (parsed from: `/usr/share/doc/libgme0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris game-music-emu=0.6.4-1
'http://archive.ubuntu.com/ubuntu/pool/universe/g/game-music-emu/game-music-emu_0.6.4-1.dsc' game-music-emu_0.6.4-1.dsc 1996 SHA256:c63bd7aba16fa44920481e16fb0e270e22d2dd5b08595ce139934140da5cfc86
'http://archive.ubuntu.com/ubuntu/pool/universe/g/game-music-emu/game-music-emu_0.6.4.orig.tar.gz' game-music-emu_0.6.4.orig.tar.gz 343669 SHA256:f2360feb5a32ace226c583df4faf6eff74145c81264aaea11e17a1af2f6f101a
'http://archive.ubuntu.com/ubuntu/pool/universe/g/game-music-emu/game-music-emu_0.6.4-1.debian.tar.xz' game-music-emu_0.6.4-1.debian.tar.xz 5092 SHA256:40d6043b2a95934ad71c26669a553ad7307026b67344b796080bf6d91cd1de0c
```

### `dpkg` source package: `gcc-15=15.2.0-16ubuntu1`

Binary Packages:

- `cpp-15=15.2.0-16ubuntu1`
- `cpp-15-x86-64-linux-gnu=15.2.0-16ubuntu1`
- `g++-15=15.2.0-16ubuntu1`
- `g++-15-x86-64-linux-gnu=15.2.0-16ubuntu1`
- `gcc-15=15.2.0-16ubuntu1`
- `gcc-15-base:amd64=15.2.0-16ubuntu1`
- `gcc-15-x86-64-linux-gnu=15.2.0-16ubuntu1`
- `libgcc-15-dev:amd64=15.2.0-16ubuntu1`
- `libstdc++-15-dev:amd64=15.2.0-16ubuntu1`

Licenses: (parsed from: `/usr/share/doc/cpp-15/copyright`, `/usr/share/doc/cpp-15-x86-64-linux-gnu/copyright`, `/usr/share/doc/g++-15/copyright`, `/usr/share/doc/g++-15-x86-64-linux-gnu/copyright`, `/usr/share/doc/gcc-15/copyright`, `/usr/share/doc/gcc-15-base/copyright`, `/usr/share/doc/gcc-15-x86-64-linux-gnu/copyright`, `/usr/share/doc/libgcc-15-dev/copyright`, `/usr/share/doc/libstdc++-15-dev/copyright`)

- `Apache-2.0`
- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-15=15.2.0-16ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-15/gcc-15_15.2.0.orig.tar.gz' gcc-15_15.2.0.orig.tar.gz 105962230 SHA256:3063dafdeed9fb9565f099b2560379bce08dae2b461ed4e30dd8d999f5f5747c
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-15/gcc-15_15.2.0-16ubuntu1.debian.tar.xz' gcc-15_15.2.0-16ubuntu1.debian.tar.xz 3015048 SHA256:1c8154422ea6352d5453b1f27884a6639170d66725b7bb3e372baa1fc43b6f96
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-15/gcc-15_15.2.0-16ubuntu1.dsc' gcc-15_15.2.0-16ubuntu1.dsc 47488 SHA256:4effae608555a1ac18393b059270c1d3c27ca3d05accaa528babe40cd22c0ade
```

### `dpkg` source package: `gcc-16=16-20260322-1ubuntu1`

Binary Packages:

- `cpp-16=16-20260322-1ubuntu1`
- `cpp-16-x86-64-linux-gnu=16-20260322-1ubuntu1`
- `gcc-16=16-20260322-1ubuntu1`
- `gcc-16-base:amd64=16-20260322-1ubuntu1`
- `gcc-16-x86-64-linux-gnu=16-20260322-1ubuntu1`
- `gfortran-16=16-20260322-1ubuntu1`
- `gfortran-16-x86-64-linux-gnu=16-20260322-1ubuntu1`
- `libasan8:amd64=16-20260322-1ubuntu1`
- `libatomic1:amd64=16-20260322-1ubuntu1`
- `libcc1-0:amd64=16-20260322-1ubuntu1`
- `libgcc-16-dev:amd64=16-20260322-1ubuntu1`
- `libgcc-s1:amd64=16-20260322-1ubuntu1`
- `libgfortran-16-dev:amd64=16-20260322-1ubuntu1`
- `libgfortran5:amd64=16-20260322-1ubuntu1`
- `libgomp1:amd64=16-20260322-1ubuntu1`
- `libhwasan0:amd64=16-20260322-1ubuntu1`
- `libitm1:amd64=16-20260322-1ubuntu1`
- `liblsan0:amd64=16-20260322-1ubuntu1`
- `libquadmath0:amd64=16-20260322-1ubuntu1`
- `libstdc++6:amd64=16-20260322-1ubuntu1`
- `libtsan2:amd64=16-20260322-1ubuntu1`
- `libubsan1:amd64=16-20260322-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/cpp-16/copyright`, `/usr/share/doc/cpp-16-x86-64-linux-gnu/copyright`, `/usr/share/doc/gcc-16/copyright`, `/usr/share/doc/gcc-16-base/copyright`, `/usr/share/doc/gcc-16-x86-64-linux-gnu/copyright`, `/usr/share/doc/gfortran-16/copyright`, `/usr/share/doc/gfortran-16-x86-64-linux-gnu/copyright`, `/usr/share/doc/libasan8/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libcc1-0/copyright`, `/usr/share/doc/libgcc-16-dev/copyright`, `/usr/share/doc/libgcc-s1/copyright`, `/usr/share/doc/libgfortran-16-dev/copyright`, `/usr/share/doc/libgfortran5/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libhwasan0/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan2/copyright`, `/usr/share/doc/libubsan1/copyright`)

- `Apache-2.0`
- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-16=16-20260322-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-16/gcc-16_16-20260322.orig.tar.gz' gcc-16_16-20260322.orig.tar.gz 101830903 SHA256:7be0bbf2ed1797e31161993ea641331d230b9b95f1ca263e7e840a5843b61a4a
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-16/gcc-16_16-20260322-1ubuntu1.debian.tar.xz' gcc-16_16-20260322-1ubuntu1.debian.tar.xz 629144 SHA256:d2912b1539846a5bfbe23e22191fb510d70af5d54ec2af5a15edff9b0ab95d9b
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-16/gcc-16_16-20260322-1ubuntu1.dsc' gcc-16_16-20260322-1ubuntu1.dsc 52875 SHA256:64a579a45be2dafef92bf8e0984223dd1c009df061d2890f584fd8c08f41b2f2
```

### `dpkg` source package: `gcc-defaults=1.230ubuntu1`

Binary Packages:

- `cpp=4:15.2.0-5ubuntu1`
- `cpp-x86-64-linux-gnu=4:15.2.0-5ubuntu1`
- `g++=4:15.2.0-5ubuntu1`
- `g++-x86-64-linux-gnu=4:15.2.0-5ubuntu1`
- `gcc=4:15.2.0-5ubuntu1`
- `gcc-x86-64-linux-gnu=4:15.2.0-5ubuntu1`

Licenses: (parsed from: `/usr/share/doc/cpp/copyright`, `/usr/share/doc/cpp-x86-64-linux-gnu/copyright`, `/usr/share/doc/g++/copyright`, `/usr/share/doc/g++-x86-64-linux-gnu/copyright`, `/usr/share/doc/gcc/copyright`, `/usr/share/doc/gcc-x86-64-linux-gnu/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris gcc-defaults=1.230ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.230ubuntu1.tar.xz' gcc-defaults_1.230ubuntu1.tar.xz 58212 SHA256:3099a64a2a93d7098c34d5d9bd4210007ba52b5e04fab7a87858900a5400fb6b
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.230ubuntu1.dsc' gcc-defaults_1.230ubuntu1.dsc 38421 SHA256:c139267618a70a880acfd061b8f3102f67928e7dbb84ff91700ed28207abd09d
```

### `dpkg` source package: `gdal=3.12.2+dfsg-1build2`

Binary Packages:

- `gdal-data=3.12.2+dfsg-1build2`
- `gdal-plugins:amd64=3.12.2+dfsg-1build2`
- `libgdal-dev=3.12.2+dfsg-1build2`
- `libgdal38:amd64=3.12.2+dfsg-1build2`

Licenses: (parsed from: `/usr/share/doc/gdal-data/copyright`, `/usr/share/doc/gdal-plugins/copyright`, `/usr/share/doc/libgdal-dev/copyright`, `/usr/share/doc/libgdal38/copyright`)

- `Apache-2.0`
- `BSD-3-Clause`
- `BSL-1.0`
- `Base64`
- `Expat`
- `GPL-3`
- `GPL-3+ with Bison exception`
- `HPND-3i`
- `HPND-disclaimer`
- `HPND-eos`
- `HPND-p-sl-sgi`
- `HPND-sl-gl-sgi`
- `HPND-sl-sgi`
- `IJG`
- `ISC`
- `ITT`
- `Info-ZIP`
- `LGPL-2`
- `LGPL-2+`
- `PostgreSQL`
- `Qhull`
- `cpl-mem-cache`
- `fontconfig`
- `libpng`
- `public-domain`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris gdal=3.12.2+dfsg-1build2
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gdal/gdal_3.12.2%2bdfsg.orig.tar.xz' gdal_3.12.2+dfsg.orig.tar.xz 10329344 SHA256:698c5e58b8a0dc463225c32d1ccbdb95a1d9b37c806484334b399492f6d703b2
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gdal/gdal_3.12.2%2bdfsg-1build2.debian.tar.xz' gdal_3.12.2+dfsg-1build2.debian.tar.xz 121976 SHA256:2cf265668b63a093adf804811a9e384c39de24acd4a32cb912aafebb0fa3e095
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gdal/gdal_3.12.2%2bdfsg-1build2.dsc' gdal_3.12.2+dfsg-1build2.dsc 3250 SHA256:7618abf70c976631694d833b7eb2910762a5089c1ad87653caeb5f334e5d5bf9
```

### `dpkg` source package: `gdbm=1.26-1build1`

Binary Packages:

- `libgdbm-compat4t64:amd64=1.26-1build1`
- `libgdbm6t64:amd64=1.26-1build1`

Licenses: (parsed from: `/usr/share/doc/libgdbm-compat4t64/copyright`, `/usr/share/doc/libgdbm6t64/copyright`)

- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.26-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.26.orig.tar.gz' gdbm_1.26.orig.tar.gz 1226591 SHA256:6a24504a14de4a744103dcb936be976df6fbe88ccff26065e54c1c47946f4a5e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.26-1build1.debian.tar.xz' gdbm_1.26-1build1.debian.tar.xz 16896 SHA256:d7305440f777ce3f2ffe2c625685f822cc3e85e5e99bc7f6be20d88c4f135933
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.26-1build1.dsc' gdbm_1.26-1build1.dsc 2258 SHA256:ae64d944a1f2ec46d872a27714c30f6b79e68f8398628bb801f80467972fa0ac
```

### `dpkg` source package: `gdcm=3.0.24-9ubuntu1`

Binary Packages:

- `libgdcm-dev=3.0.24-9ubuntu1`
- `libgdcm3.0t64:amd64=3.0.24-9ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libgdcm-dev/copyright`, `/usr/share/doc/libgdcm3.0t64/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `BSD-3-clause-alike-CREATIS`
- `BSD-3-clause-alike-Jan-de-Vaan`
- `BSD-3-clause-alike-Mathieu-Malaterre`
- `BSD-3-clause-alike-Theodore-Ts`
- `BSD-4-clause`
- `BSL`
- `Expat`
- `LGPL-2`
- `LGPL-2+`
- `Zlib`
- `gdcmjpeg`
- `public-domain`
- `socketxx`
- `zlib/libpng`

Source:

```console
$ apt-get source -qq --print-uris gdcm=3.0.24-9ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gdcm/gdcm_3.0.24.orig.tar.xz' gdcm_3.0.24.orig.tar.xz 2613432 SHA256:9e76f70262b7fe019cd06001022b7aa53f4aa4a7e070f71d8e3b13fe99c36028
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gdcm/gdcm_3.0.24-9ubuntu1.debian.tar.xz' gdcm_3.0.24-9ubuntu1.debian.tar.xz 283344 SHA256:c5a3c29bf837dc7193623a3e3d0a0d9c2e902a1687d20541e56cbfd664b353bd
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gdcm/gdcm_3.0.24-9ubuntu1.dsc' gdcm_3.0.24-9ubuntu1.dsc 3261 SHA256:2ddeed592d914e1f481b41769aaabb70177d499bc13317c49a53742ce69989a3
```

### `dpkg` source package: `gdk-pixbuf=2.44.5+dfsg-4ubuntu1`

Binary Packages:

- `libgdk-pixbuf-2.0-0:amd64=2.44.5+dfsg-4ubuntu1`
- `libgdk-pixbuf2.0-common=2.44.5+dfsg-4ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libgdk-pixbuf-2.0-0/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-common/copyright`)

- `CC0-1.0`
- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris gdk-pixbuf=2.44.5+dfsg-4ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.44.5%2bdfsg.orig.tar.xz' gdk-pixbuf_2.44.5+dfsg.orig.tar.xz 5954316 SHA512:c1519c697228756939bbc0ec3627597576a358ec1576cbacd1b160c5128a3d3002fd9fd3fe09e6dd043e22730238a1e935984c57af86c36ab273fb13762ef801
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.44.5%2bdfsg-4ubuntu1.debian.tar.xz' gdk-pixbuf_2.44.5+dfsg-4ubuntu1.debian.tar.xz 25432 SHA512:ae0e3f8b3826a2bb60d5a0d721c28d2391699ed37c2e7e08bf94df73d34aca6af9503f4c9c2ffcb912d99e244c7fa5ed109581019f82f6856659a78b504ac63c
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.44.5%2bdfsg-4ubuntu1.dsc' gdk-pixbuf_2.44.5+dfsg-4ubuntu1.dsc 3566 SHA512:3e68de5361ec48bd109f693d70fd63f74a0b25257880d0f497004d2c6f650d599bc6f070d76d140888e386a82634f6f0af22702530648af5f3e886099de6d90a
```

### `dpkg` source package: `geos=3.14.1-2`

Binary Packages:

- `libgeos-c1t64:amd64=3.14.1-2`
- `libgeos-dev=3.14.1-2`
- `libgeos3.14.1:amd64=3.14.1-2`

Licenses: (parsed from: `/usr/share/doc/libgeos-c1t64/copyright`, `/usr/share/doc/libgeos-dev/copyright`, `/usr/share/doc/libgeos3.14.1/copyright`)

- `Apache-2.0`
- `BSL-1.0`
- `Expat`
- `LGPL-2.1`
- `LGPL-2.1+`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris geos=3.14.1-2
'http://archive.ubuntu.com/ubuntu/pool/universe/g/geos/geos_3.14.1-2.dsc' geos_3.14.1-2.dsc 2312 SHA256:84ba8508c0ebe6a73898555a251cf69e16bf9085d151bcc10c6ddc4bffe32ec5
'http://archive.ubuntu.com/ubuntu/pool/universe/g/geos/geos_3.14.1.orig.tar.bz2' geos_3.14.1.orig.tar.bz2 7013834 SHA256:3c20919cda9a505db07b5216baa980bacdaa0702da715b43f176fb07eff7e716
'http://archive.ubuntu.com/ubuntu/pool/universe/g/geos/geos_3.14.1-2.debian.tar.xz' geos_3.14.1-2.debian.tar.xz 78924 SHA256:1bbd00ef6f14fcbf644b405d29dcfb20d94902b9da579594b75fbafa1704cdb1
```

### `dpkg` source package: `giflib=5.2.2-1ubuntu3.2`

Binary Packages:

- `libgif-dev:amd64=5.2.2-1ubuntu3.2`
- `libgif7:amd64=5.2.2-1ubuntu3.2`

Licenses: (parsed from: `/usr/share/doc/libgif-dev/copyright`, `/usr/share/doc/libgif7/copyright`)

- `ISC`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris giflib=5.2.2-1ubuntu3.2
'http://archive.ubuntu.com/ubuntu/pool/main/g/giflib/giflib_5.2.2.orig.tar.gz' giflib_5.2.2.orig.tar.gz 447175 SHA512:0865ab2b1904fa14640c655fdb14bb54244ad18a66e358565c00287875d00912343f9be8bfac7658cc0146200d626f7ec9160d7a339f20ba3be6b9941d73975f
'http://archive.ubuntu.com/ubuntu/pool/main/g/giflib/giflib_5.2.2-1ubuntu3.2.debian.tar.xz' giflib_5.2.2-1ubuntu3.2.debian.tar.xz 17316 SHA512:1196db32abb77c9c23f71f2d853497298bb5e858273891a8606fc1f8db56169c86360827892322fe229eb42854963b15ae8132d39439781f27ce1455d04a4932
'http://archive.ubuntu.com/ubuntu/pool/main/g/giflib/giflib_5.2.2-1ubuntu3.2.dsc' giflib_5.2.2-1ubuntu3.2.dsc 2032 SHA512:fc71bae3c414fcb794fc857dde8f6a5688cd0eb8289843d2bd1c2cfd10d4d307d037702dce95ed4b98dee4806fe977a9a493ab38c1b47ed683b9a353c12579e5
```

### `dpkg` source package: `git=1:2.53.0-1ubuntu1`

Binary Packages:

- `git=1:2.53.0-1ubuntu1`
- `git-man=1:2.53.0-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/git/copyright`, `/usr/share/doc/git-man/copyright`)

- `Apache-2.0`
- `Artistic`
- `Artistic-1`
- `BSD-3-clause`
- `Boost`
- `EDL-1.0`
- `Expat`
- `GPL`
- `GPL-1+`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `dlmalloc`
- `mingw-runtime`

Source:

```console
$ apt-get source -qq --print-uris git=1:2.53.0-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.53.0.orig.tar.xz' git_2.53.0.orig.tar.xz 7993096 SHA256:5818bd7d80b061bbbdfec8a433d609dc8818a05991f731ffc4a561e2ca18c653
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.53.0-1ubuntu1.debian.tar.xz' git_2.53.0-1ubuntu1.debian.tar.xz 835760 SHA256:de1843ed2a314adce0111d5d7053270932c709e8a3e98752f07ec38f359ba3a3
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.53.0-1ubuntu1.dsc' git_2.53.0-1ubuntu1.dsc 2656 SHA256:5725094be101993b4c03ebb8a77c0808870d639b2a7039f20063af27d7a8ebf4
```

### `dpkg` source package: `gl2ps=1.4.2+dfsg1-4`

Binary Packages:

- `libgl2ps-dev:amd64=1.4.2+dfsg1-4`
- `libgl2ps1.4:amd64=1.4.2+dfsg1-4`

Licenses: (parsed from: `/usr/share/doc/libgl2ps-dev/copyright`, `/usr/share/doc/libgl2ps1.4/copyright`)

- `GL2PS-2+`
- `GPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris gl2ps=1.4.2+dfsg1-4
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gl2ps/gl2ps_1.4.2%2bdfsg1-4.dsc' gl2ps_1.4.2+dfsg1-4.dsc 2525 SHA256:8584cb3f8c33aa43185f1f172173f0ea9d9f25f23ac8114dee749f6c709e1372
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gl2ps/gl2ps_1.4.2%2bdfsg1.orig.tar.xz' gl2ps_1.4.2+dfsg1.orig.tar.xz 61564 SHA256:f5a390ea332e756f8d08d2058b54d3d48600dc9e31d28146b6b780270ea26f94
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gl2ps/gl2ps_1.4.2%2bdfsg1-4.debian.tar.xz' gl2ps_1.4.2+dfsg1-4.debian.tar.xz 11524 SHA256:75f2975816778ccb266e2448c3dae2d621546c025aca7d9150e0366a8163e283
```

### `dpkg` source package: `glew=2.2.0-4build2`

Binary Packages:

- `libglew-dev:amd64=2.2.0-4build2`
- `libglew2.2:amd64=2.2.0-4build2`

Licenses: (parsed from: `/usr/share/doc/libglew-dev/copyright`, `/usr/share/doc/libglew2.2/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `Mesa`

Source:

```console
$ apt-get source -qq --print-uris glew=2.2.0-4build2
'http://archive.ubuntu.com/ubuntu/pool/universe/g/glew/glew_2.2.0.orig.tar.xz' glew_2.2.0.orig.tar.xz 492468 SHA256:971e9bd3e3561e2c33cd1722129a1a44186790e93f4a79e843a0dc8bd1fb1db1
'http://archive.ubuntu.com/ubuntu/pool/universe/g/glew/glew_2.2.0-4build2.debian.tar.xz' glew_2.2.0-4build2.debian.tar.xz 27328 SHA256:4e37a085a36ed7c83438c099a6c22185cd6024cef35374f5a77c8023c7869a11
'http://archive.ubuntu.com/ubuntu/pool/universe/g/glew/glew_2.2.0-4build2.dsc' glew_2.2.0-4build2.dsc 2129 SHA256:44c32b59205ebbfc3aeb163fc41c529341a1430f9c73b24827bb85d653cdfa55
```

### `dpkg` source package: `glib2.0=2.88.0-1`

Binary Packages:

- `libglib2.0-0t64:amd64=2.88.0-1`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0t64/copyright`)

- `AFL-2.0`
- `Apache-2.0`
- `Apache-2.0 with LLVM exception`
- `CC-BY-SA-3.0`
- `CC0-1.0`
- `Expat`
- `FSFULLR`
- `GPL-2`
- `GPL-2+`
- `Iconv-PD`
- `Janik-permissive`
- `Kuchling-PD`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`
- `MPL-1.1`
- `Mingw-PD`
- `Plumb-PD`
- `Unicode-DFS-2016`
- `bzip2-1.0.6`
- `cmph`
- `old-glib-tests`

Source:

```console
$ apt-get source -qq --print-uris glib2.0=2.88.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.88.0-1.dsc' glib2.0_2.88.0-1.dsc 4935 SHA256:ff592e1e093328e01b811118e8f68eec83359b71874eb320cc240da7d27e9f24
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.88.0.orig-unicode-data.tar.xz' glib2.0_2.88.0.orig-unicode-data.tar.xz 666552 SHA256:4b55352323696c72187f855981ed1f7d1594a53f257f7803a928749cab9f9f44
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.88.0.orig.tar.xz' glib2.0_2.88.0.orig.tar.xz 5788396 SHA256:3546251ccbb3744d4bc4eb48354540e1f6200846572bab68e3a2b7b2b64dfd07
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.88.0-1.debian.tar.xz' glib2.0_2.88.0-1.debian.tar.xz 142452 SHA256:e988a135ff5dffd39c05f67f3c2743ca1774c144615edcb6a823d4e1d976fbd1
```

### `dpkg` source package: `glibc=2.43-2ubuntu2.3`

Binary Packages:

- `libc-bin=2.43-2ubuntu2.3`
- `libc-dev-bin=2.43-2ubuntu2.3`
- `libc-gconv-modules-extra:amd64=2.43-2ubuntu2.3`
- `libc6:amd64=2.43-2ubuntu2.3`
- `libc6-dev:amd64=2.43-2ubuntu2.3`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc-gconv-modules-extra/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`)

- `BSD-2-clause`
- `BSD-3-clause-Berkeley`
- `BSD-3-clause-Carnegie`
- `BSD-3-clause-Oracle`
- `BSD-3-clause-WIDE`
- `BSD-like-Spencer`
- `BSL-1.0`
- `CORE-MATH`
- `Carnegie`
- `DEC`
- `FSFAP`
- `GFDL-1.3`
- `GPL-2`
- `GPL-2+`
- `GPL-2+-with-link-exception`
- `GPL-3`
- `GPL-3+`
- `IBM`
- `ISC`
- `Inner-Net`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-2.1+-with-link-exception`
- `LGPL-3`
- `LGPL-3+`
- `MIT-like-Lord`
- `PCRE`
- `SunPro`
- `Unicode-DFS-2016`
- `Univ-Coimbra`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.43-2ubuntu2.3
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.43.orig.tar.xz' glibc_2.43.orig.tar.xz 20297012 SHA512:25765f86bf54a22fc69dd13023ec9be59bd7e1f9d6ea1630cf21851898df2043bb8a01538c4b5fdd06495d0163289362b0768b391b0617f709b89a777168291c
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.43.orig.tar.xz.asc' glibc_2.43.orig.tar.xz.asc 1018 SHA512:6e26f0edee146710bcb73c3890c455e8b479009f99d284c43ea695b73bfe45e4ba47d1460300ce8c7496689b0c21a1c77e6359e005957973648b86755160c8f5
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.43-2ubuntu2.3.debian.tar.xz' glibc_2.43-2ubuntu2.3.debian.tar.xz 522068 SHA512:ce62820ab900c8811da5c8789e5c22f731e6a3c5bcd1be4969cc6202d545c836d748264e50fa55e4d22f37715d27d70685257181c70313814389df52bc462b83
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.43-2ubuntu2.3.dsc' glibc_2.43-2ubuntu2.3.dsc 9078 SHA512:7df3df3b84f9434bd895a3f89de60bf4c65bbcaf068797160cd9e0604550c0f05e5ec22eff7e5d2175bdf45282e8f8d7f796d7b6de1fdc204f24ddb94ca97cb5
```

### `dpkg` source package: `glycin=2.1.1+ds-0ubuntu1`

Binary Packages:

- `glycin-loaders=2.1.1+ds-0ubuntu1`
- `glycin-thumbnailers=2.1.1+ds-0ubuntu1`
- `libglycin-2-0:amd64=2.1.1+ds-0ubuntu1`

Licenses: (parsed from: `/usr/share/doc/glycin-loaders/copyright`, `/usr/share/doc/glycin-thumbnailers/copyright`, `/usr/share/doc/libglycin-2-0/copyright`)

- `CC-BY-SA-3.0`
- `CC0-1.0`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris glycin=2.1.1+ds-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/glycin/glycin_2.1.1%2bds.orig.tar.xz' glycin_2.1.1+ds.orig.tar.xz 7169160 SHA512:a584fe38e57e572623ef0859a3c99e2a8e3c43da5fde0bcc74a1ad6ceac59b4d26c14f2b8974f2c88d5edc61097c5ba7d89d37a57b3184066ca9c34c8a659f4e
'http://archive.ubuntu.com/ubuntu/pool/main/g/glycin/glycin_2.1.1%2bds-0ubuntu1.debian.tar.xz' glycin_2.1.1+ds-0ubuntu1.debian.tar.xz 16188268 SHA512:f62425ed3dd95c4d3dd83be8fc874bab1efd7d2a6da567fffb457f5d9cc3e967325fc51b59e48d6b69c2d7ececb100c97f97ff7bdef78b8beffde0fa0efd2157
'http://archive.ubuntu.com/ubuntu/pool/main/g/glycin/glycin_2.1.1%2bds-0ubuntu1.dsc' glycin_2.1.1+ds-0ubuntu1.dsc 7825 SHA512:fe1cbe97dd88f2bbb693448ea73ce1b065e27f0aea466acb91d48d6b73c1d4efad7143976c5581489ff987c7ae7bfd1bb31d88fd30de6d02a7d14f3aba8e6b64
```

### `dpkg` source package: `gmp=2:6.3.0+dfsg-5ubuntu2`

Binary Packages:

- `libgmp-dev:amd64=2:6.3.0+dfsg-5ubuntu2`
- `libgmp10:amd64=2:6.3.0+dfsg-5ubuntu2`
- `libgmpxx4ldbl:amd64=2:6.3.0+dfsg-5ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libgmp-dev/copyright`, `/usr/share/doc/libgmp10/copyright`, `/usr/share/doc/libgmpxx4ldbl/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `GPL-3+ with Bison exception`
- `LGPL-3`
- `LGPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gmp=2:6.3.0+dfsg-5ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.3.0%2bdfsg.orig.tar.xz' gmp_6.3.0+dfsg.orig.tar.xz 1870556 SHA256:bd2966e6d277f79328e894a5a9f3ba3fbf2ed2be81def5f48623e30c23fb1572
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.3.0%2bdfsg-5ubuntu2.debian.tar.xz' gmp_6.3.0+dfsg-5ubuntu2.debian.tar.xz 40328 SHA256:2eb9fc9ec44509e8c8123e28bd223b4e4efd565d48d30cc76c107ee1102d5f54
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.3.0%2bdfsg-5ubuntu2.dsc' gmp_6.3.0+dfsg-5ubuntu2.dsc 2337 SHA256:124ecc12680fb9cef589e9c4c60abba140cb5439f2742f109500fe7214d4db18
```

### `dpkg` source package: `gnupg2=2.4.8-4ubuntu3`

Binary Packages:

- `dirmngr=2.4.8-4ubuntu3`
- `gnupg=2.4.8-4ubuntu3`
- `gnupg2=2.4.8-4ubuntu3`
- `gpg=2.4.8-4ubuntu3`
- `gpg-agent=2.4.8-4ubuntu3`
- `gpgconf=2.4.8-4ubuntu3`
- `gpgsm=2.4.8-4ubuntu3`
- `gpgv=2.4.8-4ubuntu3`

Licenses: (parsed from: `/usr/share/doc/dirmngr/copyright`, `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gnupg2/copyright`, `/usr/share/doc/gpg/copyright`, `/usr/share/doc/gpg-agent/copyright`, `/usr/share/doc/gpgconf/copyright`, `/usr/share/doc/gpgsm/copyright`, `/usr/share/doc/gpgv/copyright`)

- `BSD-3-clause`
- `CC0-1.0`
- `Expat`
- `GPL-2+`
- `GPL-2.0`
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
$ apt-get source -qq --print-uris gnupg2=2.4.8-4ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.4.8.orig.tar.bz2' gnupg2_2.4.8.orig.tar.bz2 8017685 SHA256:b58c80d79b04d3243ff49c1c3fc6b5f83138eb3784689563bcdd060595318616
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.4.8.orig.tar.bz2.asc' gnupg2_2.4.8.orig.tar.bz2.asc 228 SHA256:92982ed45a1ca3af60e04addd6df14569158509364b70694a53f48b6bfed025b
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.4.8-4ubuntu3.debian.tar.xz' gnupg2_2.4.8-4ubuntu3.debian.tar.xz 122928 SHA256:b6071750c3663b5d21e89fee68bab55dd00dd3bb5a3a7ad0fe468bfd6e5d5783
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.4.8-4ubuntu3.dsc' gnupg2_2.4.8-4ubuntu3.dsc 4565 SHA256:8a6f37fcc6c0a044277d4937e8f9859e6928fcb7d2ac3369ada7b812901693bc
```

### `dpkg` source package: `gnutls28=3.8.12-2ubuntu1.1`

Binary Packages:

- `libgnutls-dane0t64:amd64=3.8.12-2ubuntu1.1`
- `libgnutls-openssl27t64:amd64=3.8.12-2ubuntu1.1`
- `libgnutls28-dev:amd64=3.8.12-2ubuntu1.1`
- `libgnutls30t64:amd64=3.8.12-2ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libgnutls-dane0t64/copyright`, `/usr/share/doc/libgnutls-openssl27t64/copyright`, `/usr/share/doc/libgnutls28-dev/copyright`, `/usr/share/doc/libgnutls30t64/copyright`)

- `Apache-2.0`
- `BSD-3-Clause`
- `CC0 license`
- `Expat`
- `FSFAP`
- `GFDL-1.3`
- `GPL`
- `GPL-3`
- `GPLv3+`
- `LGPL`
- `LGPL-3`
- `LGPLv2.1+`
- `LGPLv3+_or_GPLv2+`
- `MIT OR Unlicense`
- `The main library is licensed under GNU Lesser`

Source:

```console
$ apt-get source -qq --print-uris gnutls28=3.8.12-2ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.8.12.orig.tar.xz' gnutls28_3.8.12.orig.tar.xz 6949604 SHA512:332a8e5200461517c7f08515e3aaab0bec6222747422e33e9e7d25d35613e3d0695a803fce226bd6a83f723054f551328bd99dcf0573e142be777dcf358e1a3b
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.8.12.orig.tar.xz.asc' gnutls28_3.8.12.orig.tar.xz.asc 996 SHA512:a2cb8c797b1acbcc54c6249bd503a1395bc13d878048f6fff9eca54f38472cf55e04864291a49b6c649038a318d403b5a97ae7bf4ae5a3670e542557ca248a65
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.8.12-2ubuntu1.1.debian.tar.xz' gnutls28_3.8.12-2ubuntu1.1.debian.tar.xz 192052 SHA512:2fc758f45aa139a8dbb1cb52ed9e5894878da827bda71099e9b1c821b3830931d7749463c0cb7c096aba621b54005dd969d7c4320719f3aa70da5aaf66d00dab
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.8.12-2ubuntu1.1.dsc' gnutls28_3.8.12-2ubuntu1.1.dsc 3362 SHA512:dfc18fa57bbe37f451bcd4b8cc583c9b17669ee010bb10b0be75bb8acf5f71dc37e89a58a78906efde13c454b7c2251f0ac513cfd91e2027a979fb34cec4e58a
```

### `dpkg` source package: `googletest=1.17.0-1build1`

Binary Packages:

- `googletest=1.17.0-1build1`
- `libgmock-dev:amd64=1.17.0-1build1`
- `libgtest-dev:amd64=1.17.0-1build1`

Licenses: (parsed from: `/usr/share/doc/googletest/copyright`, `/usr/share/doc/libgmock-dev/copyright`, `/usr/share/doc/libgtest-dev/copyright`)

- `BSD-C3`
- `GAP`

Source:

```console
$ apt-get source -qq --print-uris googletest=1.17.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/g/googletest/googletest_1.17.0.orig.tar.gz' googletest_1.17.0.orig.tar.gz 885563 SHA256:3dc65ed118d82feb8276176354568e66acefee362d2b615e798bdd6c656377ff
'http://archive.ubuntu.com/ubuntu/pool/universe/g/googletest/googletest_1.17.0-1build1.debian.tar.xz' googletest_1.17.0-1build1.debian.tar.xz 11112 SHA256:29c01740383e6b3e03e7462565bc7a7dc5f2609ca4754521480bb189a4d89a4f
'http://archive.ubuntu.com/ubuntu/pool/universe/g/googletest/googletest_1.17.0-1build1.dsc' googletest_1.17.0-1build1.dsc 2134 SHA256:74ce4c087bc2b34d77fa7e83b9d0e3ed3998a3e56c72bb0f45f1c6b959d73db6
```

### `dpkg` source package: `gpgme1.0=2.0.1-2build1`

Binary Packages:

- `libgpgme-dev=2.0.1-2build1`
- `libgpgme45:amd64=2.0.1-2build1`

Licenses: (parsed from: `/usr/share/doc/libgpgme-dev/copyright`, `/usr/share/doc/libgpgme45/copyright`)

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
$ apt-get source -qq --print-uris gpgme1.0=2.0.1-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gpgme1.0/gpgme1.0_2.0.1.orig.tar.bz2' gpgme1.0_2.0.1.orig.tar.bz2 1392080 SHA256:821ab0695c842eab51752a81980c92b0410c7eadd04103f791d5d2a526784966
'http://archive.ubuntu.com/ubuntu/pool/main/g/gpgme1.0/gpgme1.0_2.0.1.orig.tar.bz2.asc' gpgme1.0_2.0.1.orig.tar.bz2.asc 265 SHA256:278ce6f814c584972775702357640429da8364e609fd1a866549c089497fbcab
'http://archive.ubuntu.com/ubuntu/pool/main/g/gpgme1.0/gpgme1.0_2.0.1-2build1.debian.tar.xz' gpgme1.0_2.0.1-2build1.debian.tar.xz 21264 SHA256:f3bf4f8c92d18a0131128b39cf864526e16d1ca253b1a26fd4098e4dc30884d6
'http://archive.ubuntu.com/ubuntu/pool/main/g/gpgme1.0/gpgme1.0_2.0.1-2build1.dsc' gpgme1.0_2.0.1-2build1.dsc 2645 SHA256:9e03451ec519724837faa63bccd013ca76666c365f12ab7a8dc3e15bfc7fbbff
```

### `dpkg` source package: `gpgmepp=2.0.0-2`

Binary Packages:

- `libgpgmepp-dev:amd64=2.0.0-2`
- `libgpgmepp7:amd64=2.0.0-2`

Licenses: (parsed from: `/usr/share/doc/libgpgmepp-dev/copyright`, `/usr/share/doc/libgpgmepp7/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `FSFULLRWD`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris gpgmepp=2.0.0-2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gpgmepp/gpgmepp_2.0.0-2.dsc' gpgmepp_2.0.0-2.dsc 2463 SHA256:aebd64366e57e3466160785f1cdc14eaa95f0fa29559d3ce3d90833c90d7eb69
'http://archive.ubuntu.com/ubuntu/pool/main/g/gpgmepp/gpgmepp_2.0.0.orig.tar.xz' gpgmepp_2.0.0.orig.tar.xz 118304 SHA256:d4796049c06708a26f3096f748ef095347e1a3c1e570561701fe952c3f565382
'http://archive.ubuntu.com/ubuntu/pool/main/g/gpgmepp/gpgmepp_2.0.0.orig.tar.xz.asc' gpgmepp_2.0.0.orig.tar.xz.asc 228 SHA256:12f90905fd4719d06f9346dd883ee2991edc292e715708d9029eead63257f634
'http://archive.ubuntu.com/ubuntu/pool/main/g/gpgmepp/gpgmepp_2.0.0-2.debian.tar.xz' gpgmepp_2.0.0-2.debian.tar.xz 17660 SHA256:7116427dd1b3401f14f0e598bc0d5c96abbe35ddd72c0d9d6a1f3a9a9b462299
```

### `dpkg` source package: `graphite2=1.3.14-11ubuntu1.1`

Binary Packages:

- `libgraphite2-3:amd64=1.3.14-11ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libgraphite2-3/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MPL-1.1`
- `custom-sil-open-font-license`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris graphite2=1.3.14-11ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.14.orig.tar.gz' graphite2_1.3.14.orig.tar.gz 6629829 SHA512:49d127964d3f5c9403c7aecbfb5b18f32f25fe4919a81c49e0534e7123fe845423e16b0b8c8baaae21162b1150ab3e0f1c22c344e07d4364b6b8473c40a0822c
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.14-11ubuntu1.1.debian.tar.xz' graphite2_1.3.14-11ubuntu1.1.debian.tar.xz 16700 SHA512:3365688343878158bbaf4fcf509e27fffdcda37d0e4ce447846d85ff31ec2f6970eca6c8ab8edfbe443e8e6519a6afc0f8884bac0aeb2769e1898e41c3072fa4
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.14-11ubuntu1.1.dsc' graphite2_1.3.14-11ubuntu1.1.dsc 2634 SHA512:eb1e2975b47dda04a85a83b611158a84f29ed9171f49939e9c0e96e783c79dc69d78df6fadf2e37a36e9a45db646e215e097f80617f298b2fbebb1d529ffadf2
```

### `dpkg` source package: `graphviz=14.1.2-1ubuntu1`

Binary Packages:

- `graphviz=14.1.2-1ubuntu1`
- `libcdt6:amd64=14.1.2-1ubuntu1`
- `libcgraph8:amd64=14.1.2-1ubuntu1`
- `libgvc7:amd64=14.1.2-1ubuntu1`
- `libgvplugin-gd8:amd64=14.1.2-1ubuntu1`
- `libgvplugin-pango8:amd64=14.1.2-1ubuntu1`
- `libgvpr2:amd64=14.1.2-1ubuntu1`
- `libpathplan4:amd64=14.1.2-1ubuntu1`
- `libxdot4:amd64=14.1.2-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/graphviz/copyright`, `/usr/share/doc/libcdt6/copyright`, `/usr/share/doc/libcgraph8/copyright`, `/usr/share/doc/libgvc7/copyright`, `/usr/share/doc/libgvplugin-gd8/copyright`, `/usr/share/doc/libgvplugin-pango8/copyright`, `/usr/share/doc/libgvpr2/copyright`, `/usr/share/doc/libpathplan4/copyright`, `/usr/share/doc/libxdot4/copyright`)

- `EPL-1.0`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris graphviz=14.1.2-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/universe/g/graphviz/graphviz_14.1.2.orig.tar.bz2' graphviz_14.1.2.orig.tar.bz2 36643570 SHA256:8ba7611c378b3e82f2a0ca5fc9dbcc5fef77c86d9fdfe3281f8f59eaab3314f6
'http://archive.ubuntu.com/ubuntu/pool/universe/g/graphviz/graphviz_14.1.2-1ubuntu1.debian.tar.xz' graphviz_14.1.2-1ubuntu1.debian.tar.xz 40364 SHA256:65cd227f4823e39e6aaf9f52e1fe1b5da7fdbeb107abc18b3acfa7fc128a6f41
'http://archive.ubuntu.com/ubuntu/pool/universe/g/graphviz/graphviz_14.1.2-1ubuntu1.dsc' graphviz_14.1.2-1ubuntu1.dsc 5501 SHA256:08b2aa5e9196556ca75069b288473990f1ac85a3dbd426475f6485f100e9f14a
```

### `dpkg` source package: `grep=3.12-1`

Binary Packages:

- `grep=3.12-1`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `BSD-3-clause`
- `FSFAP`
- `FSFUL`
- `FSFULLR`
- `FSFULLR and/or GPL and/or LGPL`
- `GFDL-1.3`
- `GFDL-1.3+`
- `GPL`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `ISC`
- `LGPL`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`
- `X11`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris grep=3.12-1
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.12-1.dsc' grep_3.12-1.dsc 1647 SHA256:ce35486482abc0591a00be0848c90a3f40ce14b62e501da637296d23bc4c29f4
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.12.orig.tar.xz' grep_3.12.orig.tar.xz 1918448 SHA256:2649b27c0e90e632eadcd757be06c6e9a4f48d941de51e7c0f83ff76408a07b9
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.12.orig.tar.xz.asc' grep_3.12.orig.tar.xz.asc 833 SHA256:62d4867d7cfff57a364b745866d798958a90286551fdf45d08df515fa8c79c25
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.12-1.debian.tar.xz' grep_3.12-1.debian.tar.xz 24160 SHA256:5baef65e599c41285a0393c1c6845c03c9b29f14765447911a1871a50321fd42
```

### `dpkg` source package: `gst-plugins-base1.0=1.28.2-1`

Binary Packages:

- `libgstreamer-plugins-base1.0-0:amd64=1.28.2-1`

Licenses: (parsed from: `/usr/share/doc/libgstreamer-plugins-base1.0-0/copyright`)

- `BSD-3-clause`
- `CC-BY-SA-4.0`
- `GPL-2`
- `GPL-2+`
- `LGPL`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MIT`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris gst-plugins-base1.0=1.28.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gst-plugins-base1.0/gst-plugins-base1.0_1.28.2-1.dsc' gst-plugins-base1.0_1.28.2-1.dsc 4136 SHA512:1a1b72ba0e32b23a9b1e93cb2660e73ad67e88bc016a4a927375798c2da14770a3b2a0813ea2d45bdeac02a69ed908083e805255c83eeb206560ff9153659cf8
'http://archive.ubuntu.com/ubuntu/pool/main/g/gst-plugins-base1.0/gst-plugins-base1.0_1.28.2.orig.tar.xz' gst-plugins-base1.0_1.28.2.orig.tar.xz 2529100 SHA512:68f09ed6c456b2763514ad65153e53139e8fe8fe188045da4a7b21b9bc5c607507bb8d84ad79162444e3281cd8b642dd78f73da59cb3dffbab43d8fe6c943dbe
'http://archive.ubuntu.com/ubuntu/pool/main/g/gst-plugins-base1.0/gst-plugins-base1.0_1.28.2.orig.tar.xz.asc' gst-plugins-base1.0_1.28.2.orig.tar.xz.asc 833 SHA512:b2b86cd61a5e45a9e6d7da19360c933525704e79db9c9ab463da1c79ade44d9ebda19f7a7cfc4715079066906ba8d93457af53b6428efdc69db4c10b8a3d2d8c
'http://archive.ubuntu.com/ubuntu/pool/main/g/gst-plugins-base1.0/gst-plugins-base1.0_1.28.2-1.debian.tar.xz' gst-plugins-base1.0_1.28.2-1.debian.tar.xz 58188 SHA512:ef5600702713c096384fc3e47002ca63e61bb706f6f50e9f15a5bdb4f59f97eb7ce6a7422a623f47e31eb07f9ae827946d826eb55fff1ef85a7613c8d5cbb481
```

### `dpkg` source package: `gstreamer1.0=1.28.2-1`

Binary Packages:

- `libgstreamer1.0-0:amd64=1.28.2-1`

Licenses: (parsed from: `/usr/share/doc/libgstreamer1.0-0/copyright`)

- `CC-BY-SA-4.0`
- `GFDL`
- `LGPL`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MPL-2.0`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris gstreamer1.0=1.28.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gstreamer1.0/gstreamer1.0_1.28.2-1.dsc' gstreamer1.0_1.28.2-1.dsc 2991 SHA512:c25949e1e73e1d3f6fb5996f408c0d5eef10d778f6cf507aadb1cf9cfbde910392d6885132bc2947f15a3fd0f32453724baaa9173fe8ef49e01df83ed49737da
'http://archive.ubuntu.com/ubuntu/pool/main/g/gstreamer1.0/gstreamer1.0_1.28.2.orig.tar.xz' gstreamer1.0_1.28.2.orig.tar.xz 1932984 SHA512:35119aa759d2e81331f35977cbf791594c74ce19643663e093b01a65adedb9a4aadbea39f26057501647be0c00bed8bbfcae2d1fad8ba71586cc817aed70af69
'http://archive.ubuntu.com/ubuntu/pool/main/g/gstreamer1.0/gstreamer1.0_1.28.2.orig.tar.xz.asc' gstreamer1.0_1.28.2.orig.tar.xz.asc 833 SHA512:075c10ea8f427c7e6a1fbe143a2fc88dfbcf9e6a78088b597ff4f4b97ce1688e3d4a86f1ab49a9c5d5df3966ceac80f6f06b84f66e0432ce9ec0c156b341e983
'http://archive.ubuntu.com/ubuntu/pool/main/g/gstreamer1.0/gstreamer1.0_1.28.2-1.debian.tar.xz' gstreamer1.0_1.28.2-1.debian.tar.xz 58472 SHA512:12a609445ffc3088517255fcd12acc0e4ec74cc8b7ad4b957defe7b0121ae845349ea76516f384de3a264fa130cb91b472715404d5ddd98e6d59356b946f842a
```

### `dpkg` source package: `gtk+3.0=3.24.52-0ubuntu1`

Binary Packages:

- `libgtk-3-0t64:amd64=3.24.52-0ubuntu1`
- `libgtk-3-common=3.24.52-0ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libgtk-3-0t64/copyright`, `/usr/share/doc/libgtk-3-common/copyright`)

- `Apache-2.0`
- `CC-BY-SA-4.0`
- `Expat`
- `GPL-3`
- `GPL-3+`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `SWL`
- `X11R5-permissive`
- `ZPL-2.1`
- `check-gdk-cairo-permissive`
- `other`
- `unencumbered`

Source:

```console
$ apt-get source -qq --print-uris gtk+3.0=3.24.52-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gtk%2b3.0/gtk%2b3.0_3.24.52.orig.tar.xz' gtk+3.0_3.24.52.orig.tar.xz 13578032 SHA256:80931fa472a77b9a164f6740e3c0b444fac6770054632d35a7ff9d679e5e7b9f
'http://archive.ubuntu.com/ubuntu/pool/main/g/gtk%2b3.0/gtk%2b3.0_3.24.52-0ubuntu1.debian.tar.xz' gtk+3.0_3.24.52-0ubuntu1.debian.tar.xz 3943272 SHA256:f8ad3b251e5b17c2579f5ea5eda842c8f18e258a09dc2974c6f459d4eafd3d39
'http://archive.ubuntu.com/ubuntu/pool/main/g/gtk%2b3.0/gtk%2b3.0_3.24.52-0ubuntu1.dsc' gtk+3.0_3.24.52-0ubuntu1.dsc 4451 SHA256:e728d7ed6115281cf76129a96f92e309d69eeafb696a88cf3a9884a0b1fa3dc1
```

### `dpkg` source package: `gtk4=4.22.4+ds-0ubuntu0.1`

Binary Packages:

- `gtk-update-icon-cache=4.22.4+ds-0ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/gtk-update-icon-cache/copyright`)

- `Apache-2.0`
- `Apache-2.0 with LLVM exception`
- `BSD-3-clause-Google`
- `CC0-1.0`
- `Expat`
- `GPL-3`
- `GPL-3+`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `Unicode-DFS-2016`
- `X11R5-permissive`
- `ZPL-2.1`
- `lcs-telegraphics-permissive`
- `sun-permissive`

Source:

```console
$ apt-get source -qq --print-uris gtk4=4.22.4+ds-0ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gtk4/gtk4_4.22.4%2bds.orig.tar.xz' gtk4_4.22.4+ds.orig.tar.xz 17127924 SHA512:61a9d18ec044e582060637b3c8d2b135b30e8d062d3a2157d57f53e77f29e14b77fbd2512e6868e5f94e7ad1fc6a2fbcd377baab09bf9093f6713a4962988bd3
'http://archive.ubuntu.com/ubuntu/pool/main/g/gtk4/gtk4_4.22.4%2bds-0ubuntu0.1.debian.tar.xz' gtk4_4.22.4+ds-0ubuntu0.1.debian.tar.xz 4010436 SHA512:de0153e04a64c5939fa3bd2db134efa4f3e641097f48ff513b3ff8470aac664063cf3e3c035ca3773f75f08f10f7774cdd9a2ea3ac5fc20cf45743c40a596e8c
'http://archive.ubuntu.com/ubuntu/pool/main/g/gtk4/gtk4_4.22.4%2bds-0ubuntu0.1.dsc' gtk4_4.22.4+ds-0ubuntu0.1.dsc 4315 SHA512:6afd53e46e4d3ebaf1b1a8aeb6c71741578bc337e9e7a5cbd82724fc6acc29f5fb921515cb93fc744446f99277f9d048d762e56db7f07c1cd788a515179ba25f
```

### `dpkg` source package: `gzip=1.14-1~exp2ubuntu1.1`

Binary Packages:

- `gzip=1.14-1~exp2ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `FSF-manpages`
- `GFDL-1.3`
- `GFDL-1.3+-no-invariant`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.14-1~exp2ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.14.orig.tar.xz' gzip_1.14.orig.tar.xz 885748 SHA512:82aef53188b3e69b51b7ddab5b8c44a11a5b73c0039b22a315a0c7d244694feab0146748add4265901eb1b4c0cee8a9eb69594995f098830d964091af97079c5
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.14-1%7eexp2ubuntu1.1.debian.tar.xz' gzip_1.14-1~exp2ubuntu1.1.debian.tar.xz 22816 SHA512:9cc7548d0f3f29e5129d2bfbb09197a0ead6f5676e3a739e14a3cc6dc422ee94bf6fe8613cb07d675a2990fcea445a2c364d40e88a64936d0cd34feee525e825
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.14-1%7eexp2ubuntu1.1.dsc' gzip_1.14-1~exp2ubuntu1.1.dsc 1961 SHA512:b468a2fd4c0ace81eb6d11ace96c3a94295772336a26c30aae0ebbb22e056b79900d691504c4de3d6aefd273fcc8485c93aead0a9dc88010d319c8fa895e71d9
```

### `dpkg` source package: `harfbuzz=12.3.2-2`

Binary Packages:

- `libharfbuzz0b:amd64=12.3.2-2`

Licenses: (parsed from: `/usr/share/doc/libharfbuzz0b/copyright`)

- `Apache-2.0`
- `CC0-1.0`
- `GPL-2`
- `GPL-2+ with Font exception`
- `GPL-3`
- `GPL-3+`
- `ISC`
- `MIT`
- `Monotype`
- `OFL-1.1`
- `UFL-1.0`
- `Unicode`

Source:

```console
$ apt-get source -qq --print-uris harfbuzz=12.3.2-2
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_12.3.2-2.dsc' harfbuzz_12.3.2-2.dsc 2573 SHA256:d6e9e342b811b32697413fb8b9ad795b01227fc5ee7cd42680aad9e4e7877b4a
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_12.3.2.orig.tar.xz' harfbuzz_12.3.2.orig.tar.xz 19282952 SHA256:6f6db164359a2da5a84ef826615b448b33e6306067ad829d85d5b0bf936f1bb8
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_12.3.2-2.debian.tar.xz' harfbuzz_12.3.2-2.debian.tar.xz 19848 SHA256:e60831c79be0f1621c559e621d6149a21195731126fc7b8b71c0b7a7369cfeea
```

### `dpkg` source package: `hdf5=1.14.6+repack-2`

Binary Packages:

- `hdf5-helpers=1.14.6+repack-2`
- `libhdf5-310:amd64=1.14.6+repack-2`
- `libhdf5-cpp-310:amd64=1.14.6+repack-2`
- `libhdf5-dev=1.14.6+repack-2`
- `libhdf5-fortran-310:amd64=1.14.6+repack-2`
- `libhdf5-hl-310:amd64=1.14.6+repack-2`
- `libhdf5-hl-cpp-310:amd64=1.14.6+repack-2`
- `libhdf5-hl-fortran-310:amd64=1.14.6+repack-2`
- `libhdf5-mpi-dev:amd64=1.14.6+repack-2`
- `libhdf5-openmpi-310:amd64=1.14.6+repack-2`
- `libhdf5-openmpi-cpp-310:amd64=1.14.6+repack-2`
- `libhdf5-openmpi-dev=1.14.6+repack-2`
- `libhdf5-openmpi-fortran-310:amd64=1.14.6+repack-2`
- `libhdf5-openmpi-hl-310:amd64=1.14.6+repack-2`
- `libhdf5-openmpi-hl-cpp-310:amd64=1.14.6+repack-2`
- `libhdf5-openmpi-hl-fortran-310:amd64=1.14.6+repack-2`

Licenses: (parsed from: `/usr/share/doc/hdf5-helpers/copyright`, `/usr/share/doc/libhdf5-310/copyright`, `/usr/share/doc/libhdf5-cpp-310/copyright`, `/usr/share/doc/libhdf5-dev/copyright`, `/usr/share/doc/libhdf5-fortran-310/copyright`, `/usr/share/doc/libhdf5-hl-310/copyright`, `/usr/share/doc/libhdf5-hl-cpp-310/copyright`, `/usr/share/doc/libhdf5-hl-fortran-310/copyright`, `/usr/share/doc/libhdf5-mpi-dev/copyright`, `/usr/share/doc/libhdf5-openmpi-310/copyright`, `/usr/share/doc/libhdf5-openmpi-cpp-310/copyright`, `/usr/share/doc/libhdf5-openmpi-dev/copyright`, `/usr/share/doc/libhdf5-openmpi-fortran-310/copyright`, `/usr/share/doc/libhdf5-openmpi-hl-310/copyright`, `/usr/share/doc/libhdf5-openmpi-hl-cpp-310/copyright`, `/usr/share/doc/libhdf5-openmpi-hl-fortran-310/copyright`)

- `Apache-2.0`
- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris hdf5=1.14.6+repack-2
'http://archive.ubuntu.com/ubuntu/pool/universe/h/hdf5/hdf5_1.14.6%2brepack-2.dsc' hdf5_1.14.6+repack-2.dsc 3824 SHA256:1cfceaafe7fc0faf89ed01e1091f13a4cbc3260bb308b45c52dfd96efa3e29cd
'http://archive.ubuntu.com/ubuntu/pool/universe/h/hdf5/hdf5_1.14.6%2brepack.orig.tar.gz' hdf5_1.14.6+repack.orig.tar.gz 38945289 SHA256:c18bc47d07f76a5c2cfb70773bfe4152857e48ca4c96e7aef2684c96fa0e6a7c
'http://archive.ubuntu.com/ubuntu/pool/universe/h/hdf5/hdf5_1.14.6%2brepack-2.debian.tar.xz' hdf5_1.14.6+repack-2.debian.tar.xz 163280 SHA256:c541d69d173ef3bf3c6c717e239003f8527b9728f33b4eb1d8c26c631e99e072
```

### `dpkg` source package: `hicolor-icon-theme=0.18-2build1`

Binary Packages:

- `hicolor-icon-theme=0.18-2build1`

Licenses: (parsed from: `/usr/share/doc/hicolor-icon-theme/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris hicolor-icon-theme=0.18-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.18.orig.tar.xz' hicolor-icon-theme_0.18.orig.tar.xz 29624 SHA256:db0e50a80aa3bf64bb45cbca5cf9f75efd9348cf2ac690b907435238c3cf81d7
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.18.orig.tar.xz.asc' hicolor-icon-theme_0.18.orig.tar.xz.asc 833 SHA256:0fe29ecd5d445805e33b33d7ff35813eabab2100806c06dd002efd35b37fb855
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.18-2build1.debian.tar.xz' hicolor-icon-theme_0.18-2build1.debian.tar.xz 9232 SHA256:2682ac16041f6089c3263ecfc04bef64a6196d705bf07ba33b68b19e50c64503
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.18-2build1.dsc' hicolor-icon-theme_0.18-2build1.dsc 2349 SHA256:3b2d42a5eb5ed623e3f24e45f0681ce04c1a04c4c7f9ae3dcf4259347390fce0
```

### `dpkg` source package: `highway=1.3.0-2`

Binary Packages:

- `libhwy-dev:amd64=1.3.0-2`
- `libhwy1t64:amd64=1.3.0-2`

Licenses: (parsed from: `/usr/share/doc/libhwy-dev/copyright`, `/usr/share/doc/libhwy1t64/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris highway=1.3.0-2
'http://archive.ubuntu.com/ubuntu/pool/main/h/highway/highway_1.3.0-2.dsc' highway_1.3.0-2.dsc 2248 SHA256:c50f8bb6fbc9341f1ced977789ec282a3b3a3cb8e3e14b2e94c0616df5f9b867
'http://archive.ubuntu.com/ubuntu/pool/main/h/highway/highway_1.3.0.orig.tar.gz' highway_1.3.0.orig.tar.gz 3634890 SHA256:07b3c1ba2c1096878a85a31a5b9b3757427af963b1141ca904db2f9f4afe0bc2
'http://archive.ubuntu.com/ubuntu/pool/main/h/highway/highway_1.3.0-2.debian.tar.xz' highway_1.3.0-2.debian.tar.xz 8896 SHA256:1f4bbe3240765ea3bd2e98388c23d8fe29afbcf4828a8af1f28de265b37b6f3f
```

### `dpkg` source package: `hostname=3.25build1`

Binary Packages:

- `hostname=3.25build1`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.25build1
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.25build1.tar.xz' hostname_3.25build1.tar.xz 12896 SHA256:8233331087d506e6a8394582dae3a03d5bd2bb6e609112b8543c9ecfc84f5acc
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.25build1.dsc' hostname_3.25build1.dsc 1543 SHA256:bd88940a19a729f44a0c5eb1b79bb2d5e0e9e76289838bc699bdd44b18c326a3
```

### `dpkg` source package: `hwloc=2.13.0-2`

Binary Packages:

- `libhwloc-dev:amd64=2.13.0-2`
- `libhwloc-plugins:amd64=2.13.0-2`
- `libhwloc15:amd64=2.13.0-2`

Licenses: (parsed from: `/usr/share/doc/libhwloc-dev/copyright`, `/usr/share/doc/libhwloc-plugins/copyright`, `/usr/share/doc/libhwloc15/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris hwloc=2.13.0-2
'http://archive.ubuntu.com/ubuntu/pool/universe/h/hwloc/hwloc_2.13.0-2.dsc' hwloc_2.13.0-2.dsc 3233 SHA256:f98021331d64f0f90ffee18388b7b0e3994463acc2a12b4dc450f8f637f242c4
'http://archive.ubuntu.com/ubuntu/pool/universe/h/hwloc/hwloc_2.13.0.orig.tar.bz2' hwloc_2.13.0.orig.tar.bz2 5625879 SHA256:52e936afb6ebd80f171f763fcf14f7b1f5ce98b125af5dd2f328b873b1fd0dab
'http://archive.ubuntu.com/ubuntu/pool/universe/h/hwloc/hwloc_2.13.0-2.debian.tar.xz' hwloc_2.13.0-2.debian.tar.xz 14396 SHA256:ccbb2db0f0ebdd728c6abfe4a80cba63c1b9f0e7070100b8945b38c63cfc4951
```

### `dpkg` source package: `icu=78.2-2ubuntu1`

Binary Packages:

- `icu-devtools=78.2-2ubuntu1`
- `libicu-dev:amd64=78.2-2ubuntu1`
- `libicu78:amd64=78.2-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/icu-devtools/copyright`, `/usr/share/doc/libicu-dev/copyright`, `/usr/share/doc/libicu78/copyright`)

- `GPL-3`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris icu=78.2-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_78.2.orig.tar.gz' icu_78.2.orig.tar.gz 27970651 SHA256:3e99687b5c435d4b209630e2d2ebb79906c984685e78635078b672e03c89df35
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_78.2.orig.tar.gz.asc' icu_78.2.orig.tar.gz.asc 228 SHA256:09220c6136a2f451a7ba0fc6fb96c1d393464cd0ba44953085f9a23c454fae66
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_78.2-2ubuntu1.debian.tar.xz' icu_78.2-2ubuntu1.debian.tar.xz 66656 SHA256:9b858204fc6defa1d26d9fc9213197931b1c956215129cb499c6f4322794eb0f
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_78.2-2ubuntu1.dsc' icu_78.2-2ubuntu1.dsc 2264 SHA256:c1fb577273b2eb1feb11a8cc594229857bc7d673cae964d1aeca897d2c879d65
```

### `dpkg` source package: `imath=3.1.12-1ubuntu5`

Binary Packages:

- `libimath-3-1-29t64:amd64=3.1.12-1ubuntu5`
- `libimath-dev:amd64=3.1.12-1ubuntu5`

Licenses: (parsed from: `/usr/share/doc/libimath-3-1-29t64/copyright`, `/usr/share/doc/libimath-dev/copyright`)

- `imath`

Source:

```console
$ apt-get source -qq --print-uris imath=3.1.12-1ubuntu5
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imath/imath_3.1.12.orig.tar.gz' imath_3.1.12.orig.tar.gz 604232 SHA256:8a1bc258f3149b5729c2f4f8ffd337c0e57f09096e4ba9784329f40c4a9035da
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imath/imath_3.1.12.orig.tar.gz.asc' imath_3.1.12.orig.tar.gz.asc 287 SHA256:a2c4ac5151789903ca8ab3093a2798491463ccf2abfd003a20f96453e505dd5f
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imath/imath_3.1.12-1ubuntu5.debian.tar.xz' imath_3.1.12-1ubuntu5.debian.tar.xz 10260 SHA256:bbd06a3587784b51831c906c679ef42abec4528b6bd7289d3d0be61f7d4feada
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imath/imath_3.1.12-1ubuntu5.dsc' imath_3.1.12-1ubuntu5.dsc 2728 SHA256:09821b1692d95be6f6c5f104b51263d92d4adbacd6930d72539cf395cad6fdea
```

### `dpkg` source package: `init-system-helpers=1.69`

Binary Packages:

- `init-system-helpers=1.69`

Licenses: (parsed from: `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.69
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.69.dsc' init-system-helpers_1.69.dsc 2234 SHA256:99b681c969728fba085226b1d1fd25cc37c9fe16f9eb5118e679d845b50ae7ee
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.69.tar.xz' init-system-helpers_1.69.tar.xz 45648 SHA256:e246ee7f39b110803e5307fdb25ec2fb5fe0c62dbd9274011803fef50af08100
```

### `dpkg` source package: `isl=0.27-1build1`

Binary Packages:

- `libisl23:amd64=0.27-1build1`

Licenses: (parsed from: `/usr/share/doc/libisl23/copyright`)

- `BSD-2-clause`
- `LGPL-2`
- `LGPL-2.1+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris isl=0.27-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.27.orig.tar.xz' isl_0.27.orig.tar.xz 2056436 SHA256:6d8babb59e7b672e8cb7870e874f3f7b813b6e00e6af3f8b04f7579965643d5c
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.27-1build1.debian.tar.xz' isl_0.27-1build1.debian.tar.xz 24944 SHA256:393307dbf03c39c394ec99f02b7c4c4d515f8b03fec7e0a637d9a5904ecdf19a
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.27-1build1.dsc' isl_0.27-1build1.dsc 1829 SHA256:ebff763009ec74912956b5dd34b3c00ec3727eee5e0a2f0e193269838f5a8069
```

### `dpkg` source package: `iso-codes=4.20.1-1`

Binary Packages:

- `iso-codes=4.20.1-1`

Licenses: (parsed from: `/usr/share/doc/iso-codes/copyright`)

- `FSFAP`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris iso-codes=4.20.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/i/iso-codes/iso-codes_4.20.1-1.dsc' iso-codes_4.20.1-1.dsc 1966 SHA256:76358bdcdec2aa083d7f1f77048948aa130796d9221294cc902db1c0b002c8a2
'http://archive.ubuntu.com/ubuntu/pool/main/i/iso-codes/iso-codes_4.20.1.orig.tar.xz' iso-codes_4.20.1.orig.tar.xz 4702640 SHA256:5d551f3ddb32548c4321e9011720fd97751af0107592f79ebffc939bd32f2268
'http://archive.ubuntu.com/ubuntu/pool/main/i/iso-codes/iso-codes_4.20.1-1.debian.tar.xz' iso-codes_4.20.1-1.debian.tar.xz 24780 SHA256:c685d0eb4d74b3c87ba2e6e9e911ec1a3f7520420219c9d28489e89466d6fe14
```

### `dpkg` source package: `jansson=2.14-2build4`

Binary Packages:

- `libjansson4:amd64=2.14-2build4`

Licenses: (parsed from: `/usr/share/doc/libjansson4/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris jansson=2.14-2build4
'http://archive.ubuntu.com/ubuntu/pool/main/j/jansson/jansson_2.14.orig.tar.gz' jansson_2.14.orig.tar.gz 141500 SHA256:c739578bf6b764aa0752db9a2fdadcfe921c78f1228c7ec0bb47fa804c55d17b
'http://archive.ubuntu.com/ubuntu/pool/main/j/jansson/jansson_2.14-2build4.debian.tar.xz' jansson_2.14-2build4.debian.tar.xz 5688 SHA256:cb48a932a9a05c85adc8b816e3d3432f34d93a53c42f0235611bdac06ff35317
'http://archive.ubuntu.com/ubuntu/pool/main/j/jansson/jansson_2.14-2build4.dsc' jansson_2.14-2build4.dsc 2083 SHA256:df055a3dd0ff0eacf058a54785d2db7ec557c4669dd59cb9f3b0f07860f062b4
```

### `dpkg` source package: `jaraco.context=6.0.1-2`

Binary Packages:

- `python3-jaraco.context=6.0.1-2`

Licenses: (parsed from: `/usr/share/doc/python3-jaraco.context/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris jaraco.context=6.0.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/j/jaraco.context/jaraco.context_6.0.1-2.dsc' jaraco.context_6.0.1-2.dsc 2184 SHA256:0df319147733ff83d940edcf0e5a3b51dc6441fbfe96b29907ddb8a2c6a1a2f4
'http://archive.ubuntu.com/ubuntu/pool/main/j/jaraco.context/jaraco.context_6.0.1.orig.tar.gz' jaraco.context_6.0.1.orig.tar.gz 11103 SHA256:96d6814d92562e3b5a84b62be77ced00a7fd4d54138ce5ee18b30d48860f4f23
'http://archive.ubuntu.com/ubuntu/pool/main/j/jaraco.context/jaraco.context_6.0.1-2.debian.tar.xz' jaraco.context_6.0.1-2.debian.tar.xz 6424 SHA256:c8899f6f8c645beb62eb7694fcb61edb42fa81417923eecd7e40c8122e7e4209
```

### `dpkg` source package: `jaraco.text=4.0.0-1build1`

Binary Packages:

- `python3-jaraco.text=4.0.0-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-jaraco.text/copyright`)

- `Expat`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris jaraco.text=4.0.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/j/jaraco.text/jaraco.text_4.0.0.orig.tar.gz' jaraco.text_4.0.0.orig.tar.gz 14167 SHA256:d84969c483a49d8d0a6f44991307f91951a9349c277b64a13f065bd357430831
'http://archive.ubuntu.com/ubuntu/pool/main/j/jaraco.text/jaraco.text_4.0.0-1build1.debian.tar.xz' jaraco.text_4.0.0-1build1.debian.tar.xz 3856 SHA256:2c1ccafd5ebb43e5acbafc621088b1f9cbbcb8caf546a7debef19a711a5bac41
'http://archive.ubuntu.com/ubuntu/pool/main/j/jaraco.text/jaraco.text_4.0.0-1build1.dsc' jaraco.text_4.0.0-1build1.dsc 2239 SHA256:7a7328bb97ed2b01a010d1aff7840447b8bd3512200b47fce5d5738404351dca
```

### `dpkg` source package: `java-common=0.77`

Binary Packages:

- `default-jdk=2:1.25-77`
- `default-jdk-headless=2:1.25-77`
- `default-jre=2:1.25-77`
- `default-jre-headless=2:1.25-77`
- `java-common=0.77`

Licenses: (parsed from: `/usr/share/doc/default-jdk/copyright`, `/usr/share/doc/default-jdk-headless/copyright`, `/usr/share/doc/default-jre/copyright`, `/usr/share/doc/default-jre-headless/copyright`, `/usr/share/doc/java-common/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris java-common=0.77
'http://archive.ubuntu.com/ubuntu/pool/main/j/java-common/java-common_0.77.dsc' java-common_0.77.dsc 1991 SHA256:59d9f98d766a4c77b60ea68240c84f777db99a6c8036541450721e23c7222562
'http://archive.ubuntu.com/ubuntu/pool/main/j/java-common/java-common_0.77.tar.xz' java-common_0.77.tar.xz 13580 SHA256:9fe7f95f5d02c48abe25bd7ee857a7852c2f27e795c07dd2caaa23a79b9a3a30
```

### `dpkg` source package: `jbigkit=2.1-6.1ubuntu3`

Binary Packages:

- `libjbig-dev:amd64=2.1-6.1ubuntu3`
- `libjbig0:amd64=2.1-6.1ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libjbig-dev/copyright`, `/usr/share/doc/libjbig0/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris jbigkit=2.1-6.1ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1.orig.tar.gz' jbigkit_2.1.orig.tar.gz 438710 SHA256:de7106b6bfaf495d6865c7dd7ac6ca1381bd12e0d81405ea81e7f2167263d932
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1-6.1ubuntu3.debian.tar.xz' jbigkit_2.1-6.1ubuntu3.debian.tar.xz 11240 SHA256:75e61a77d5cc220601265c9a9be669ea526d197ce6178dd25209e6a3f62ea508
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1-6.1ubuntu3.dsc' jbigkit_2.1-6.1ubuntu3.dsc 2170 SHA256:5e628221c5cff4b55df8134dea3396f151cb8fb86d4c9234e463a093e7382837
```

### `dpkg` source package: `jpeg-xl=0.11.1-6ubuntu4.2`

Binary Packages:

- `libjxl-dev:amd64=0.11.1-6ubuntu4.2`
- `libjxl0.11:amd64=0.11.1-6ubuntu4.2`

Licenses: (parsed from: `/usr/share/doc/libjxl-dev/copyright`, `/usr/share/doc/libjxl0.11/copyright`)

- `BSD-3-clause-Google`
- `ISC-License`

Source:

```console
$ apt-get source -qq --print-uris jpeg-xl=0.11.1-6ubuntu4.2
'http://archive.ubuntu.com/ubuntu/pool/main/j/jpeg-xl/jpeg-xl_0.11.1.orig.tar.gz' jpeg-xl_0.11.1.orig.tar.gz 1876134 SHA512:0cfd81d9d3b783f96bd04f244d73ffbc12186c89993d46064a2751bef0a446a5e86be05add5c10f60d4482d39333d9bf3f9a866d6eb84f8fa0d4e8b5828fd74c
'http://archive.ubuntu.com/ubuntu/pool/main/j/jpeg-xl/jpeg-xl_0.11.1-6ubuntu4.2.debian.tar.xz' jpeg-xl_0.11.1-6ubuntu4.2.debian.tar.xz 25412 SHA512:bd18d545533a5b7207eded00fc2764cd72824741cdb103617383c383f3f7094a0a656653181c5da56d37f339b819a7725d9ca51a5eb4b2523a853742069c77c9
'http://archive.ubuntu.com/ubuntu/pool/main/j/jpeg-xl/jpeg-xl_0.11.1-6ubuntu4.2.dsc' jpeg-xl_0.11.1-6ubuntu4.2.dsc 3324 SHA512:3e85be65a562a8006098e214a4495d762f1234166e53d4d98c2b430388347b963495c28373b531e821d8b8b666e8a39d9c7cb37b181a93a764c5bb8896c64e4f
```

### `dpkg` source package: `jqueryui=1.13.2+dfsg-1build1`

Binary Packages:

- `libjs-jquery-ui=1.13.2+dfsg-1build1`

Licenses: (parsed from: `/usr/share/doc/libjs-jquery-ui/copyright`)

- `CC-BY-SA-3.0`
- `CC0`
- `Expat`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris jqueryui=1.13.2+dfsg-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/j/jqueryui/jqueryui_1.13.2%2bdfsg.orig.tar.xz' jqueryui_1.13.2+dfsg.orig.tar.xz 608604 SHA256:b5812410ee96f1cec3c1efc9f65c40454004321783c3778244e7a619d24a1d03
'http://archive.ubuntu.com/ubuntu/pool/universe/j/jqueryui/jqueryui_1.13.2%2bdfsg-1build1.debian.tar.xz' jqueryui_1.13.2+dfsg-1build1.debian.tar.xz 129032 SHA256:b552e18ea3cf1374524865e1ecabf4244acf72da40eb5fee3b99ef2fbb9b4836
'http://archive.ubuntu.com/ubuntu/pool/universe/j/jqueryui/jqueryui_1.13.2%2bdfsg-1build1.dsc' jqueryui_1.13.2+dfsg-1build1.dsc 2351 SHA256:684378b548a7d6a62961c996108bdae1808e2da23625fbec02f9c3579dabae03
```

### `dpkg` source package: `json-c=0.18+ds-3`

Binary Packages:

- `libjson-c-dev:amd64=0.18+ds-3`
- `libjson-c5:amd64=0.18+ds-3`

Licenses: (parsed from: `/usr/share/doc/libjson-c-dev/copyright`, `/usr/share/doc/libjson-c5/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris json-c=0.18+ds-3
'http://archive.ubuntu.com/ubuntu/pool/main/j/json-c/json-c_0.18%2bds-3.dsc' json-c_0.18+ds-3.dsc 2102 SHA256:cb256543ed993cb134c88548a962e2691f685b1860f48fcb77e27a069e5f4cc2
'http://archive.ubuntu.com/ubuntu/pool/main/j/json-c/json-c_0.18%2bds.orig.tar.xz' json-c_0.18+ds.orig.tar.xz 159264 SHA256:f6439962c9622c1f9f4746d5b3daf5e0800c335281b048fab00159f2a29d7daa
'http://archive.ubuntu.com/ubuntu/pool/main/j/json-c/json-c_0.18%2bds-3.debian.tar.xz' json-c_0.18+ds-3.debian.tar.xz 9140 SHA256:022c7f4e8bdec15d22872025b3ca4d0ccb49633ddd2869f479f7cd9ec63cb5c9
```

### `dpkg` source package: `keyutils=1.6.3-6ubuntu3`

Binary Packages:

- `libkeyutils1:amd64=1.6.3-6ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.6.3-6ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6.3.orig.tar.gz' keyutils_1.6.3.orig.tar.gz 137022 SHA256:a61d5706136ae4c05bd48f86186bcfdbd88dd8bd5107e3e195c924cfc1b39bb4
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6.3-6ubuntu3.debian.tar.xz' keyutils_1.6.3-6ubuntu3.debian.tar.xz 17552 SHA256:a25a617f1a613e08b527968d123d822a255734a9a9fe7ec5851700a96ff8bfd4
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6.3-6ubuntu3.dsc' keyutils_1.6.3-6ubuntu3.dsc 2186 SHA256:ba44d62a5bcf68a8cbd872d8cabe7570b54a3b17101ea5ff260adf33de5c4302
```

### `dpkg` source package: `kmod=34.2-2ubuntu2`

Binary Packages:

- `libkmod2:amd64=34.2-2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libkmod2/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris kmod=34.2-2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/k/kmod/kmod_34.2.orig.tar.xz' kmod_34.2.orig.tar.xz 192520 SHA256:012d16e2099115486d8aa9f2c2a23d058d3d0cad83113a60512647d25d3869e8
'http://archive.ubuntu.com/ubuntu/pool/main/k/kmod/kmod_34.2-2ubuntu2.debian.tar.xz' kmod_34.2-2ubuntu2.debian.tar.xz 18028 SHA256:89e8ade01c0c76a08ea5cf2fcff9823ff89c0b7ed0981b64ea433af2b505c5e0
'http://archive.ubuntu.com/ubuntu/pool/main/k/kmod/kmod_34.2-2ubuntu2.dsc' kmod_34.2-2ubuntu2.dsc 2531 SHA256:a70cb48c8df89cd532e46bf32669bdc97b60eaa631927426cce543bbc3495f23
```

### `dpkg` source package: `krb5=1.22.1-2ubuntu4.1`

Binary Packages:

- `krb5-multidev:amd64=1.22.1-2ubuntu4.1`
- `libgssapi-krb5-2:amd64=1.22.1-2ubuntu4.1`
- `libgssrpc4t64:amd64=1.22.1-2ubuntu4.1`
- `libk5crypto3:amd64=1.22.1-2ubuntu4.1`
- `libkadm5clnt-mit12:amd64=1.22.1-2ubuntu4.1`
- `libkadm5srv-mit12:amd64=1.22.1-2ubuntu4.1`
- `libkdb5-10t64:amd64=1.22.1-2ubuntu4.1`
- `libkrb5-3:amd64=1.22.1-2ubuntu4.1`
- `libkrb5-dev:amd64=1.22.1-2ubuntu4.1`
- `libkrb5support0:amd64=1.22.1-2ubuntu4.1`

Licenses: (parsed from: `/usr/share/doc/krb5-multidev/copyright`, `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libgssrpc4t64/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkadm5clnt-mit12/copyright`, `/usr/share/doc/libkadm5srv-mit12/copyright`, `/usr/share/doc/libkdb5-10t64/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5-dev/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.22.1-2ubuntu4.1
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.22.1.orig.tar.gz' krb5_1.22.1.orig.tar.gz 8747101 SHA512:c33bfada5e0c035133436031d9818ad97b0ff08578691c832b743c55751a2cf9460501d3cc658ab79655ed7a0f9f4795ba94b363d6b616795d9bdca668825c52
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.22.1-2ubuntu4.1.debian.tar.xz' krb5_1.22.1-2ubuntu4.1.debian.tar.xz 109240 SHA512:6b6518bd38d6e8939b8f0295f6c07a26308b50769b848bd77cc86456052a9cdf35421f56075cd97bd07aa7a1b5509dc12bd00da3a36b94f370694fb3b889277e
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.22.1-2ubuntu4.1.dsc' krb5_1.22.1-2ubuntu4.1.dsc 3879 SHA512:2a3e54f7a1e241eb678053b145f69161af113ab3f62a1c5cc2333098572586bcf001c98a54e246246105a269067f991ac4318a347020527a29dc56e6eee44ef8
```

### `dpkg` source package: `lame=3.101~svn6525+dfsg-2`

Binary Packages:

- `libmp3lame0:amd64=3.101~svn6525+dfsg-2`

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
$ apt-get source -qq --print-uris lame=3.101~svn6525+dfsg-2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lame/lame_3.101%7esvn6525%2bdfsg-2.dsc' lame_3.101~svn6525+dfsg-2.dsc 2269 SHA256:a31e279fc4a5ef26015c95b1ca62076f35627e2031640562498cddef7b31a902
'http://archive.ubuntu.com/ubuntu/pool/main/l/lame/lame_3.101%7esvn6525%2bdfsg.orig.tar.gz' lame_3.101~svn6525+dfsg.orig.tar.gz 1498092 SHA256:c4c3aae99c495d50caac9a181fbd6f5f7fb5859ad2d27431ec7a0a0010bdec01
'http://archive.ubuntu.com/ubuntu/pool/main/l/lame/lame_3.101%7esvn6525%2bdfsg-2.debian.tar.xz' lame_3.101~svn6525+dfsg-2.debian.tar.xz 10568 SHA256:bd2d8fb86ba7e2a19e99decceee84a4df97ff84b77f4976bb7e89a29d0c93331
```

### `dpkg` source package: `lapack=3.12.1-7ubuntu1`

Binary Packages:

- `libblas-dev:amd64=3.12.1-7ubuntu1`
- `libblas3:amd64=3.12.1-7ubuntu1`
- `liblapack-dev:amd64=3.12.1-7ubuntu1`
- `liblapack3:amd64=3.12.1-7ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libblas-dev/copyright`, `/usr/share/doc/libblas3/copyright`, `/usr/share/doc/liblapack-dev/copyright`, `/usr/share/doc/liblapack3/copyright`)

- `BSD-3-clause`
- `BSD-3-clause-intel`

Source:

```console
$ apt-get source -qq --print-uris lapack=3.12.1-7ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/lapack_3.12.1.orig.tar.gz' lapack_3.12.1.orig.tar.gz 8067087 SHA256:2ca6407a001a474d4d4d35f3a61550156050c48016d949f0da0529c0aa052422
'http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/lapack_3.12.1-7ubuntu1.debian.tar.xz' lapack_3.12.1-7ubuntu1.debian.tar.xz 28808 SHA256:836081b2da0c33a0ce7890c148730fae93fe4979d8bf392daffe0c245df94788
'http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/lapack_3.12.1-7ubuntu1.dsc' lapack_3.12.1-7ubuntu1.dsc 3496 SHA256:5db29f761caecec513b5c7a1c27096aa30d23c05686e2735f66de7075ef42952
```

### `dpkg` source package: `lcms2=2.17-1ubuntu0.2`

Binary Packages:

- `liblcms2-2:amd64=2.17-1ubuntu0.2`
- `liblcms2-dev:amd64=2.17-1ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/liblcms2-2/copyright`, `/usr/share/doc/liblcms2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `IJG`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris lcms2=2.17-1ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.17.orig.tar.gz' lcms2_2.17.orig.tar.gz 5245319 SHA512:81885c70fb26a9b7d37a398f43ccb0d1d3ab8f43de7da8f760b26d053a0d7e0543e7d3b0cdcaf9b3b681a1b88f032134c5a3c1a6774a9abc66a8a3f10ba64398
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.17-1ubuntu0.2.debian.tar.xz' lcms2_2.17-1ubuntu0.2.debian.tar.xz 12912 SHA512:76adda53e5c67924cdd9bbbb4dad62efc93ff00d72dbf17b4fcb29c169c954526a0e9d4815e630fde45b7a7fe7af3ee3b79888e2b50d380f88596a745b932f53
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.17-1ubuntu0.2.dsc' lcms2_2.17-1ubuntu0.2.dsc 2158 SHA512:09c51008ab8d96e828203ec25c635b3c5335819da7c02249b94c9c1e4661748ea4024b7b0fe34c1e5ffef60997a9328ee40884f2299aa2de04ef04f0e525f6be
```

### `dpkg` source package: `leptonlib=1.86.0-1`

Binary Packages:

- `libleptonica6:amd64=1.86.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris leptonlib=1.86.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/l/leptonlib/leptonlib_1.86.0-1.dsc' leptonlib_1.86.0-1.dsc 2020 SHA256:f47352d38b3975891634446510f74d59ae09d5f0edf78f347759d150a032f920
'http://archive.ubuntu.com/ubuntu/pool/universe/l/leptonlib/leptonlib_1.86.0.orig.tar.gz' leptonlib_1.86.0.orig.tar.gz 13719176 SHA256:b4447faf61a8786a9b211d58d4103d85d47fd3a5dd418d5a6bc525d41db54ccc
'http://archive.ubuntu.com/ubuntu/pool/universe/l/leptonlib/leptonlib_1.86.0-1.debian.tar.xz' leptonlib_1.86.0-1.debian.tar.xz 7264 SHA256:a772828c1b56486f3c5216d75786a5c53bd54d7b3f1aa94a99939e1d77348e34
```

### `dpkg` source package: `lerc=4.0.0+ds-5ubuntu2`

Binary Packages:

- `liblerc-dev:amd64=4.0.0+ds-5ubuntu2`
- `liblerc4:amd64=4.0.0+ds-5ubuntu2`

Licenses: (parsed from: `/usr/share/doc/liblerc-dev/copyright`, `/usr/share/doc/liblerc4/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris lerc=4.0.0+ds-5ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lerc/lerc_4.0.0%2bds.orig.tar.xz' lerc_4.0.0+ds.orig.tar.xz 348140 SHA256:acf855502fd3b950ee78f0b67bc9e9b39316b3526fbf6d8b8b1a9482fb756723
'http://archive.ubuntu.com/ubuntu/pool/main/l/lerc/lerc_4.0.0%2bds-5ubuntu2.debian.tar.xz' lerc_4.0.0+ds-5ubuntu2.debian.tar.xz 8808 SHA256:f3352c0f57b0b4303719ca7e86198fc68e4a9e86cd1a747588ddff8c3622069f
'http://archive.ubuntu.com/ubuntu/pool/main/l/lerc/lerc_4.0.0%2bds-5ubuntu2.dsc' lerc_4.0.0+ds-5ubuntu2.dsc 2739 SHA256:c0263116dc87739c8070254036121f31d6494eff2494b1926ef0ef887965adc1
```

### `dpkg` source package: `level-zero=1.28.2-2`

Binary Packages:

- `libze1:amd64=1.28.2-2`

Licenses: (parsed from: `/usr/share/doc/libze1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris level-zero=1.28.2-2
'http://archive.ubuntu.com/ubuntu/pool/universe/l/level-zero/level-zero_1.28.2-2.dsc' level-zero_1.28.2-2.dsc 1934 SHA256:628bb1991b5a3a826593a997846d6fef5ea0d3eaa79ae823f8074463851186c6
'http://archive.ubuntu.com/ubuntu/pool/universe/l/level-zero/level-zero_1.28.2.orig.tar.gz' level-zero_1.28.2.orig.tar.gz 1744509 SHA256:8133525fbf9a089ea633f6fa1f5a93a36848ec6572e255415643de031ed14429
'http://archive.ubuntu.com/ubuntu/pool/universe/l/level-zero/level-zero_1.28.2-2.debian.tar.xz' level-zero_1.28.2-2.debian.tar.xz 2712 SHA256:ab550f96de546aab66cf3ee35bdd909f2a7c6891b51319b5dfba06d8bc920725
```

### `dpkg` source package: `libaec=1.1.5-1`

Binary Packages:

- `libaec-dev:amd64=1.1.5-1`
- `libaec0:amd64=1.1.5-1`
- `libsz2:amd64=1.1.5-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libaec=1.1.5-1
'http://archive.ubuntu.com/ubuntu/pool/universe/liba/libaec/libaec_1.1.5-1.dsc' libaec_1.1.5-1.dsc 2056 SHA256:b351cdb8fe7a0247ede00630d1f11cf54ee003b72589789464c7f94ac78ef2d9
'http://archive.ubuntu.com/ubuntu/pool/universe/liba/libaec/libaec_1.1.5.orig.tar.gz' libaec_1.1.5.orig.tar.gz 2786408 SHA256:3cd2011251ce51066a3480a906f1e328dd70af890e20cf991e2efb003328a222
'http://archive.ubuntu.com/ubuntu/pool/universe/liba/libaec/libaec_1.1.5-1.debian.tar.xz' libaec_1.1.5-1.debian.tar.xz 2012436 SHA256:0df8864c35ca0aad8ad30910d7c8c0b129ebe6f2b5309b0a61e197310f220dd7
```

### `dpkg` source package: `libarchive=3.8.5-1ubuntu2.2`

Binary Packages:

- `libarchive-dev:amd64=3.8.5-1ubuntu2.2`
- `libarchive13t64:amd64=3.8.5-1ubuntu2.2`

Licenses: (parsed from: `/usr/share/doc/libarchive-dev/copyright`, `/usr/share/doc/libarchive13t64/copyright`)

- `Apache-2.0`
- `BSD-1-clause-UCB`
- `BSD-124-clause-UCB`
- `BSD-2-clause`
- `BSD-3-clause-UCB`
- `BSD-4-clause-UCB`
- `CC0-1.0`
- `Expat`
- `OpenSSL+SSLeay`
- `PD`

Source:

```console
$ apt-get source -qq --print-uris libarchive=3.8.5-1ubuntu2.2
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libarchive/libarchive_3.8.5.orig.tar.xz' libarchive_3.8.5.orig.tar.xz 6009124 SHA512:b050ca8488143503bdec38ffcab7a5010af61f1b93c1207a3fa006d72d643b84aa8c1ab267e890eb39966ccaedd6e18db8fe5b02f2789bbd1b318a3c4cf138f3
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libarchive/libarchive_3.8.5.orig.tar.xz.asc' libarchive_3.8.5.orig.tar.xz.asc 833 SHA512:80b155e86d9f93efd3f2e65655c1fe66fb0b9b937888fd5b24e65b26418f01ee6fbd66c649079b8591c15ae593980ece3de49778bb1215eaecd9af0f2823fb71
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libarchive/libarchive_3.8.5-1ubuntu2.2.debian.tar.xz' libarchive_3.8.5-1ubuntu2.2.debian.tar.xz 33220 SHA512:2a96dde4f51331b5e67eb50d36fb2478aa12b3cf25184173b47a95fcd9651bc388befcbf0f10f9a8f4dfb5f07ec693ac820ad7d708b2bcfc4bb5ea957b25309c
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libarchive/libarchive_3.8.5-1ubuntu2.2.dsc' libarchive_3.8.5-1ubuntu2.2.dsc 2849 SHA512:6d429fec81cc8381dd95bcce34418c153e4b948ac8820c84d910ac341016eef4d216745e6e503e27fbe51c973312b401644ed4ebb800a857e11b2da31da5c6aa
```

### `dpkg` source package: `libassuan=3.0.2-2build1`

Binary Packages:

- `libassuan-dev=3.0.2-2build1`
- `libassuan9:amd64=3.0.2-2build1`

Licenses: (parsed from: `/usr/share/doc/libassuan-dev/copyright`, `/usr/share/doc/libassuan9/copyright`)

- `FSFULLR`
- `FSFULLRWD`
- `GPL-2`
- `GPL-2+ with Autoconf-data exception`
- `GPL-2+ with Libtool exception`
- `GPL-2.with.nonstandard.Autoconf-data.exception`
- `GPL-3`
- `GPL-3+`
- `GPL-3+ with Autoconf-2.0~Archive exception`
- `GPL-3+ with Autoconf-data exception`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris libassuan=3.0.2-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_3.0.2.orig.tar.bz2' libassuan_3.0.2.orig.tar.bz2 593917 SHA256:d2931cdad266e633510f9970e1a2f346055e351bb19f9b78912475b8074c36f6
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_3.0.2.orig.tar.bz2.asc' libassuan_3.0.2.orig.tar.bz2.asc 228 SHA256:3799b287fd7d48f750597bd9104621d2cbafd508de83303b1a5f5eef08f06072
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_3.0.2-2build1.debian.tar.xz' libassuan_3.0.2-2build1.debian.tar.xz 17596 SHA256:a9edacae7a9ff251093b3a7a2ab9d0f6674b2bafbe8c2ed1e60af1bd716bc98c
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_3.0.2-2build1.dsc' libassuan_3.0.2-2build1.dsc 2705 SHA256:027038c1c68f08e55a46e9a1764a7a8008cac38f8cdd02bf4aaa8a69dd0397e8
```

### `dpkg` source package: `libavif=1.3.0-1ubuntu4`

Binary Packages:

- `libavif-dev:amd64=1.3.0-1ubuntu4`
- `libavif16:amd64=1.3.0-1ubuntu4`

Licenses: (parsed from: `/usr/share/doc/libavif-dev/copyright`, `/usr/share/doc/libavif16/copyright`)

- `Apache-2.0`
- `BSD-2-Clause`
- `BSD-3-Clause`
- `CC0-1.0`
- `MIT`
- `custom-1`

Source:

```console
$ apt-get source -qq --print-uris libavif=1.3.0-1ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/universe/liba/libavif/libavif_1.3.0.orig-libargparse.tar.gz' libavif_1.3.0.orig-libargparse.tar.gz 22748 SHA256:5671faeda13789d19a228368c2004b2f3fb488a15a0718ae16e9ce0fdb74db67
'http://archive.ubuntu.com/ubuntu/pool/universe/liba/libavif/libavif_1.3.0.orig.tar.gz' libavif_1.3.0.orig.tar.gz 14062497 SHA256:0a545e953cc049bf5bcf4ee467306a2f113a75110edf59e61248873101cd26c1
'http://archive.ubuntu.com/ubuntu/pool/universe/liba/libavif/libavif_1.3.0-1ubuntu4.debian.tar.xz' libavif_1.3.0-1ubuntu4.debian.tar.xz 13152 SHA256:25bc4150d211781faf7a3081879f5572dfd63f7c5e0bc9104fc201454cba6d55
'http://archive.ubuntu.com/ubuntu/pool/universe/liba/libavif/libavif_1.3.0-1ubuntu4.dsc' libavif_1.3.0-1ubuntu4.dsc 3083 SHA256:87fe125ef40593d0c13f0c7f913c556104e383ede8590b7924f596696a900850
```

### `dpkg` source package: `libb2=0.98.1-1.1build2`

Binary Packages:

- `libb2-1:amd64=0.98.1-1.1build2`

Licenses: (parsed from: `/usr/share/doc/libb2-1/copyright`)

- `CC0`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libb2=0.98.1-1.1build2
'http://archive.ubuntu.com/ubuntu/pool/universe/libb/libb2/libb2_0.98.1.orig.tar.gz' libb2_0.98.1.orig.tar.gz 280759 SHA256:10053dbc2fa342516b780a6bbf6e7b2a2360b8d49c5ac426936bf3df82526732
'http://archive.ubuntu.com/ubuntu/pool/universe/libb/libb2/libb2_0.98.1-1.1build2.debian.tar.xz' libb2_0.98.1-1.1build2.debian.tar.xz 7220 SHA256:be45356a8db95aed9b2b2f788ef3fa12506603e7167ebb40d7ba27d91a37b744
'http://archive.ubuntu.com/ubuntu/pool/universe/libb/libb2/libb2_0.98.1-1.1build2.dsc' libb2_0.98.1-1.1build2.dsc 1965 SHA256:de1a3f79dc42a7562d79e06879097ca85777983644a4449d429d1ef5de5d38ce
```

### `dpkg` source package: `libbluray=1:1.4.1-1`

Binary Packages:

- `libbluray3:amd64=1:1.4.1-1`

Licenses: (parsed from: `/usr/share/doc/libbluray3/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MPL-1.0`

Source:

```console
$ apt-get source -qq --print-uris libbluray=1:1.4.1-1
'http://archive.ubuntu.com/ubuntu/pool/universe/libb/libbluray/libbluray_1.4.1-1.dsc' libbluray_1.4.1-1.dsc 1947 SHA256:d1175058a4d2aae34447640ed1412b3bc6a3da90d1b58684739ee7a7db7859d1
'http://archive.ubuntu.com/ubuntu/pool/universe/libb/libbluray/libbluray_1.4.1.orig.tar.xz' libbluray_1.4.1.orig.tar.xz 468052 SHA256:76b5dc40097f28dca4ebb009c98ed51321b2927453f75cc72cf74acd09b9f449
'http://archive.ubuntu.com/ubuntu/pool/universe/libb/libbluray/libbluray_1.4.1-1.debian.tar.xz' libbluray_1.4.1-1.debian.tar.xz 18132 SHA256:d9b350372028d3b4f360041f1ef6506178d371e12aabc70b128858078c075a72
```

### `dpkg` source package: `libbsd=0.12.2-2build2`

Binary Packages:

- `libbsd0:amd64=0.12.2-2build2`

Licenses: (parsed from: `/usr/share/doc/libbsd0/copyright`)

- `BSD-2-clause`
- `BSD-2-clause-NetBSD`
- `BSD-2-clause-author`
- `BSD-2-clause-verbatim`
- `BSD-3-clause`
- `BSD-3-clause-John-Birrell`
- `BSD-3-clause-Regents`
- `BSD-3-clause-author`
- `BSD-5-clause-Peter-Wemm`
- `Beerware`
- `Expat`
- `ISC`
- `ISC-Original`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libbsd=0.12.2-2build2
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.12.2.orig.tar.xz' libbsd_0.12.2.orig.tar.xz 446032 SHA256:b88cc9163d0c652aaf39a99991d974ddba1c3a9711db8f1b5838af2a14731014
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.12.2.orig.tar.xz.asc' libbsd_0.12.2.orig.tar.xz.asc 833 SHA256:620dc92f158ebe0a650c0e92214a8121b927276895dc9a1dcaa38f627fa0fcb0
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.12.2-2build2.debian.tar.xz' libbsd_0.12.2-2build2.debian.tar.xz 18852 SHA256:42be939c5d55d8cfa52a36bee6a15a87a0291a513f098c20d4c9d4e309df0fc0
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.12.2-2build2.dsc' libbsd_0.12.2-2build2.dsc 2371 SHA256:f56c9da7c4ed48adae604a1cf5441c16cb50a694a5261345d884ddacd19a753c
```

### `dpkg` source package: `libcap-ng=0.8.5-4build5`

Binary Packages:

- `libcap-ng0:amd64=0.8.5-4build5`

Licenses: (parsed from: `/usr/share/doc/libcap-ng0/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libcap-ng=0.8.5-4build5
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.8.5.orig.tar.gz' libcap-ng_0.8.5.orig.tar.gz 59265 SHA256:e4be07fdd234f10b866433f224d183626003c65634ed0552b02e654a380244c2
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.8.5-4build5.debian.tar.xz' libcap-ng_0.8.5-4build5.debian.tar.xz 8044 SHA256:3763a807fd8b323e22615a8696963c057994791fbd517d67a3078ae77e0fef94
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.8.5-4build5.dsc' libcap-ng_0.8.5-4build5.dsc 2307 SHA256:f9cbe799e173a176395d8ae4acf373480ef82d8ff67347d85713aba9ae717898
```

### `dpkg` source package: `libcap2=1:2.75-10ubuntu2`

Binary Packages:

- `libcap2:amd64=1:2.75-10ubuntu2`
- `libcap2-bin=1:2.75-10ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libcap2/copyright`, `/usr/share/doc/libcap2-bin/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libcap2=1:2.75-10ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.75.orig.tar.xz' libcap2_2.75.orig.tar.xz 197868 SHA512:229e9b62a1d54024107cbf321fffcb152c0071154554a3fcee6e09e19cc47fd1fd862575135a4fc589b79a043f760bf40d26ea9fd58638f26e809533c017d65f
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.75.orig.tar.xz.asc' libcap2_2.75.orig.tar.xz.asc 833 SHA512:6a6af52ef3a48356d8c205827aa039ed852ec4a1cfea44f00613457380478ebd4946caf933a8ebdf98899b14340b9a7ef9b7151c4659329e2fd80590667d59d9
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.75-10ubuntu2.debian.tar.xz' libcap2_2.75-10ubuntu2.debian.tar.xz 25444 SHA512:babf47a5f811414045053dce6f515480d771b248137fd0f9123c84b962922364902c51cf3ebc8409bfb17a7b3eddb449f0cac6a5881a47920b907805df094108
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.75-10ubuntu2.dsc' libcap2_2.75-10ubuntu2.dsc 2808 SHA512:c5b2dde2582c97d81052463d8f3a4c08d31a432ca833df6a93d6524d799e4efd2b1b837329ebad079d6716e607eb8653b449335674109de1b4467dc2d9decad0
```

### `dpkg` source package: `libcbor=0.10.2-2ubuntu3`

Binary Packages:

- `libcbor0.10:amd64=0.10.2-2ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libcbor0.10/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libcbor=0.10.2-2ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcbor/libcbor_0.10.2.orig.tar.gz' libcbor_0.10.2.orig.tar.gz 289450 SHA512:23c6177443778d4b4833ec7ed0d0e639a0d4863372e3a38d772fdce2673eae6d5cb2a31a2a021d1a699082ea53494977c907fd0e94149b97cb23a4b6d039228a
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcbor/libcbor_0.10.2-2ubuntu3.debian.tar.xz' libcbor_0.10.2-2ubuntu3.debian.tar.xz 7772 SHA512:814e6926305a70078c3783e8ad93defbeadb5e9e681e0869d2c7b1555f0658093f69b5b819fefe7ca3f121373d0dffdee469865bd40680e364c90ae7bc9806ee
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcbor/libcbor_0.10.2-2ubuntu3.dsc' libcbor_0.10.2-2ubuntu3.dsc 2238 SHA512:22053c29acc1d5bf7928fa2982eb94d0f9b57f8088a88d36ba263f296131c2ab6b14f73e378bf46b4205a65ca22fc9b31036b58dfe7e086c7040b3490f8cbcc7
```

### `dpkg` source package: `libdatrie=0.2.14-1`

Binary Packages:

- `libdatrie1:amd64=0.2.14-1`

Licenses: (parsed from: `/usr/share/doc/libdatrie1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libdatrie=0.2.14-1
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.14-1.dsc' libdatrie_0.2.14-1.dsc 2236 SHA256:ae0434bcde3663feaea221c5ac6539baa19152ca02dc80d7280aef8fa839a38d
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.14.orig.tar.xz' libdatrie_0.2.14.orig.tar.xz 325696 SHA256:f04095010518635b51c2313efa4f290b7db828d6273e39b2b8858f859dfe81d5
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.14-1.debian.tar.xz' libdatrie_0.2.14-1.debian.tar.xz 9792 SHA256:9cde71692c59f4b440b0524ff309c564571b0b515b0ae63b0cfc1af6d730c9c1
```

### `dpkg` source package: `libdc1394=2.2.6-6`

Binary Packages:

- `libdc1394-25:amd64=2.2.6-6`
- `libdc1394-dev:amd64=2.2.6-6`

Licenses: (parsed from: `/usr/share/doc/libdc1394-25/copyright`, `/usr/share/doc/libdc1394-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libdc1394=2.2.6-6
'http://archive.ubuntu.com/ubuntu/pool/universe/libd/libdc1394/libdc1394_2.2.6-6.dsc' libdc1394_2.2.6-6.dsc 1604 SHA256:4bf7d03a70711f31444c83643c53db9cdd8a59209150425eaa4cb83561735bea
'http://archive.ubuntu.com/ubuntu/pool/universe/libd/libdc1394/libdc1394_2.2.6.orig.tar.gz' libdc1394_2.2.6.orig.tar.gz 612067 SHA256:2b905fc9aa4eec6bdcf6a2ae5f5ba021232739f5be047dec8fe8dd6049c10fed
'http://archive.ubuntu.com/ubuntu/pool/universe/libd/libdc1394/libdc1394_2.2.6-6.debian.tar.xz' libdc1394_2.2.6-6.debian.tar.xz 8236 SHA256:29cae8482e0ee3d2280019330a6dbcd4c818671604a34f37b02208743d672407
```

### `dpkg` source package: `libdeflate=1.23-2ubuntu1`

Binary Packages:

- `libdeflate-dev:amd64=1.23-2ubuntu1`
- `libdeflate0:amd64=1.23-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libdeflate-dev/copyright`, `/usr/share/doc/libdeflate0/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libdeflate=1.23-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdeflate/libdeflate_1.23.orig.tar.gz' libdeflate_1.23.orig.tar.gz 197519 SHA256:1ab18349b9fb0ce8a0ca4116bded725be7dcbfa709e19f6f983d99df1fb8b25f
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdeflate/libdeflate_1.23-2ubuntu1.debian.tar.xz' libdeflate_1.23-2ubuntu1.debian.tar.xz 6276 SHA256:c4d9487a5a5594efb43485273b7a5cd90cf0792eeaa3846fc919e9899d0f07fa
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdeflate/libdeflate_1.23-2ubuntu1.dsc' libdeflate_1.23-2ubuntu1.dsc 2340 SHA256:0e5b9a06532fedc044833a6c10d7973a730b1777258560a2f7910e6b84b8286b
```

### `dpkg` source package: `libdrm=2.4.131-1`

Binary Packages:

- `libdrm-amdgpu1:amd64=2.4.131-1`
- `libdrm-common=2.4.131-1`
- `libdrm-intel1:amd64=2.4.131-1`
- `libdrm2:amd64=2.4.131-1`

Licenses: (parsed from: `/usr/share/doc/libdrm-amdgpu1/copyright`, `/usr/share/doc/libdrm-common/copyright`, `/usr/share/doc/libdrm-intel1/copyright`, `/usr/share/doc/libdrm2/copyright`)

- `Expat`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libdrm=2.4.131-1
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdrm/libdrm_2.4.131-1.dsc' libdrm_2.4.131-1.dsc 3181 SHA256:2745f7192c135869963a495ef93880a39eb080c180e5a53afc9226dbb5c1df60
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdrm/libdrm_2.4.131.orig.tar.xz' libdrm_2.4.131.orig.tar.xz 435808 SHA256:45ba9983b51c896406a3d654de81d313b953b76e6391e2797073d543c5f617d5
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdrm/libdrm_2.4.131.orig.tar.xz.asc' libdrm_2.4.131.orig.tar.xz.asc 833 SHA256:b2bb056fafc174a61878a81e1dd755eaa6d28f0ab6b8033fdbfa65fc6e0652bb
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdrm/libdrm_2.4.131-1.debian.tar.xz' libdrm_2.4.131-1.debian.tar.xz 75996 SHA256:7c68e7cd01686c6eaa596179abe8f9897f20558ff8df047e3259c5987642e8b6
```

### `dpkg` source package: `libdvdnav=7.0.0-2`

Binary Packages:

- `libdvdnav4:amd64=7.0.0-2`

Licenses: (parsed from: `/usr/share/doc/libdvdnav4/copyright`)

- `Expat`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libdvdnav=7.0.0-2
'http://archive.ubuntu.com/ubuntu/pool/universe/libd/libdvdnav/libdvdnav_7.0.0-2.dsc' libdvdnav_7.0.0-2.dsc 1990 SHA256:49fbcaa291bdf5fc4a54c016c8af6a0a0b25c313a99e315e02c7edbeb819befc
'http://archive.ubuntu.com/ubuntu/pool/universe/libd/libdvdnav/libdvdnav_7.0.0.orig.tar.xz' libdvdnav_7.0.0.orig.tar.xz 85132 SHA256:a2a18f5ad36d133c74bf9106b6445806fa253b09141a46392550394b647b221e
'http://archive.ubuntu.com/ubuntu/pool/universe/libd/libdvdnav/libdvdnav_7.0.0.orig.tar.xz.asc' libdvdnav_7.0.0.orig.tar.xz.asc 195 SHA256:a66cecca8de03524605482788c3d7734e089534b5b657e1ba6eb309a336c1588
'http://archive.ubuntu.com/ubuntu/pool/universe/libd/libdvdnav/libdvdnav_7.0.0-2.debian.tar.xz' libdvdnav_7.0.0-2.debian.tar.xz 9332 SHA256:38489d581f39b8a15b53bc6785332534dbd922fa47aaee43aaf5c6c6785d4478
```

### `dpkg` source package: `libdvdread=7.0.1-1`

Binary Packages:

- `libdvdread8t64:amd64=7.0.1-1`

Licenses: (parsed from: `/usr/share/doc/libdvdread8t64/copyright`)

- `Expat`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libdvdread=7.0.1-1
'http://archive.ubuntu.com/ubuntu/pool/universe/libd/libdvdread/libdvdread_7.0.1-1.dsc' libdvdread_7.0.1-1.dsc 1908 SHA256:86452ab5f398551b67317547423b6d229da767814b6a1e39b9117648bc07ceab
'http://archive.ubuntu.com/ubuntu/pool/universe/libd/libdvdread/libdvdread_7.0.1.orig.tar.xz' libdvdread_7.0.1.orig.tar.xz 90460 SHA256:2e3e04a305c15c3963aa03ae1b9a83c1d239880003fcf3dde986d3943355d407
'http://archive.ubuntu.com/ubuntu/pool/universe/libd/libdvdread/libdvdread_7.0.1.orig.tar.xz.asc' libdvdread_7.0.1.orig.tar.xz.asc 195 SHA256:961736a7ad9abb83a6bf86c32bf558c292787b17ad6de432113e37372c928c48
'http://archive.ubuntu.com/ubuntu/pool/universe/libd/libdvdread/libdvdread_7.0.1-1.debian.tar.xz' libdvdread_7.0.1-1.debian.tar.xz 12316 SHA256:31cc3df200720123a7d4817562bfbe37426956a2b563f87cac880d831305d160
```

### `dpkg` source package: `libedit=3.1-20251016-1`

Binary Packages:

- `libedit2:amd64=3.1-20251016-1`

Licenses: (parsed from: `/usr/share/doc/libedit2/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris libedit=3.1-20251016-1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20251016-1.dsc' libedit_3.1-20251016-1.dsc 2264 SHA256:82f4a6ba02d58128414520489537cd73d765c2ed3fb636cc6708f1c576f51bfe
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20251016.orig.tar.gz' libedit_3.1-20251016.orig.tar.gz 549005 SHA256:21362b00653bbfc1c71f71a7578da66b5b5203559d43134d2dd7719e313ce041
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20251016-1.debian.tar.xz' libedit_3.1-20251016-1.debian.tar.xz 16716 SHA256:f4044457a9648f00ea77e79069e0569f47d48c00b310150dcd070de689e4d8ed
```

### `dpkg` source package: `libepoxy=1.5.10-2build1`

Binary Packages:

- `libepoxy0:amd64=1.5.10-2build1`

Licenses: (parsed from: `/usr/share/doc/libepoxy0/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libepoxy=1.5.10-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libepoxy/libepoxy_1.5.10.orig.tar.gz' libepoxy_1.5.10.orig.tar.gz 332078 SHA256:a7ced37f4102b745ac86d6a70a9da399cc139ff168ba6b8002b4d8d43c900c15
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libepoxy/libepoxy_1.5.10-2build1.debian.tar.xz' libepoxy_1.5.10-2build1.debian.tar.xz 17648 SHA256:bf8ed4578aa15cbce2e67f1a1d735ee3388a13a50e4c9ace241a864cef640347
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libepoxy/libepoxy_1.5.10-2build1.dsc' libepoxy_1.5.10-2build1.dsc 2107 SHA256:1a110220397276bb6e0d0dbaa8718c9c87b11bf74a6804bc1d652a9153cb70e7
```

### `dpkg` source package: `liberror-perl=0.17030-1`

Binary Packages:

- `liberror-perl=0.17030-1`

Licenses: (parsed from: `/usr/share/doc/liberror-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`
- `MIT/X11`

Source:

```console
$ apt-get source -qq --print-uris liberror-perl=0.17030-1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17030-1.dsc' liberror-perl_0.17030-1.dsc 2337 SHA256:44590c5e4057ee2b2090b7ca661cdbead886528a2b5b5fa7ae708f8b9c1814bf
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17030.orig.tar.gz' liberror-perl_0.17030.orig.tar.gz 33488 SHA256:34d382276c0fb0d6b38355b94c96a30b12d834d5662eb53f088ee25e3e712924
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17030-1.debian.tar.xz' liberror-perl_0.17030-1.debian.tar.xz 4660 SHA256:6824b886f5068d9345279e2425b423fd47623c3ffe74732074b67c5863040ac7
```

### `dpkg` source package: `libevdev=1.13.6+dfsg-1`

Binary Packages:

- `libevdev2:amd64=1.13.6+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/libevdev2/copyright`)

- `Apache-2.0`
- `BSD-3`
- `GPL-2`
- `GPL-2+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libevdev=1.13.6+dfsg-1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevdev/libevdev_1.13.6%2bdfsg-1.dsc' libevdev_1.13.6+dfsg-1.dsc 2260 SHA256:73afc24754c335dd2b64c8a05f358f2c28a598d6e805dea57ed7b0b7b9a2cf61
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevdev/libevdev_1.13.6%2bdfsg.orig.tar.xz' libevdev_1.13.6+dfsg.orig.tar.xz 355852 SHA256:6643222f13cfbead0e30b8b74600f6d335f6ebb1ad8cbaf85783e36886689071
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevdev/libevdev_1.13.6%2bdfsg-1.debian.tar.xz' libevdev_1.13.6+dfsg-1.debian.tar.xz 8240 SHA256:ed8592316bc0f5ec35b4893b82618bec772524a42bb5c4f0aae01aeb3a0b1f83
```

### `dpkg` source package: `libevent=2.1.12-stable-10build2`

Binary Packages:

- `libevent-2.1-7t64:amd64=2.1.12-stable-10build2`
- `libevent-core-2.1-7t64:amd64=2.1.12-stable-10build2`
- `libevent-dev=2.1.12-stable-10build2`
- `libevent-extra-2.1-7t64:amd64=2.1.12-stable-10build2`
- `libevent-openssl-2.1-7t64:amd64=2.1.12-stable-10build2`
- `libevent-pthreads-2.1-7t64:amd64=2.1.12-stable-10build2`

Licenses: (parsed from: `/usr/share/doc/libevent-2.1-7t64/copyright`, `/usr/share/doc/libevent-core-2.1-7t64/copyright`, `/usr/share/doc/libevent-dev/copyright`, `/usr/share/doc/libevent-extra-2.1-7t64/copyright`, `/usr/share/doc/libevent-openssl-2.1-7t64/copyright`, `/usr/share/doc/libevent-pthreads-2.1-7t64/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `BSL`
- `Expat`
- `FSFUL`
- `FSFULLR`
- `FSFULLR-No-Warranty`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `ISC`
- `curl`

Source:

```console
$ apt-get source -qq --print-uris libevent=2.1.12-stable-10build2
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.1.12-stable.orig.tar.gz' libevent_2.1.12-stable.orig.tar.gz 1100847 SHA256:92e6de1be9ec176428fd2367677e61ceffc2ee1cb119035037a27d346b0403bb
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.1.12-stable-10build2.debian.tar.xz' libevent_2.1.12-stable-10build2.debian.tar.xz 18060 SHA256:840c7d725ba9897f7d6008cf67e45710fbba448dca1ccb34650f448b70e52621
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.1.12-stable-10build2.dsc' libevent_2.1.12-stable-10build2.dsc 2436 SHA256:f97bd6eb793f5ab34f929e712215b6803f0e29d855cf50c5c43a6d031d51fa7c
```

### `dpkg` source package: `libexif=0.6.25-2ubuntu0.1`

Binary Packages:

- `libexif-dev:amd64=0.6.25-2ubuntu0.1`
- `libexif12:amd64=0.6.25-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libexif-dev/copyright`, `/usr/share/doc/libexif12/copyright`)

- `BSD-3-Clause`
- `CC0-1.0`
- `GPL-2`
- `GPL-2.0`
- `LGPL-2.1`
- `LGPL-2.1-or-later`
- `LicenseRef-Wrobel`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libexif=0.6.25-2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.25.orig.tar.gz' libexif_0.6.25.orig.tar.gz 1253324 SHA512:9e42af0d898a9d832d7b146a2085fb08eafdbb5ae476184aee1b495632172749d910f581246d22a0c68382ea9d969de54bd9539d4d877ad4dd6ca989e1b6d8db
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.25-2ubuntu0.1.debian.tar.xz' libexif_0.6.25-2ubuntu0.1.debian.tar.xz 14292 SHA512:ce04d6aa8423dcf921036d8b679e7b9c292e51f5a2d0a887449a0eb9348ea1d41692673bc80e56eeb6aaef3620eb54438b3d54bcea1944e824f7927360ee5de6
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.25-2ubuntu0.1.dsc' libexif_0.6.25-2ubuntu0.1.dsc 2432 SHA512:d34afc3424f9bfd11d98de48cf28d718392e3a1dc4f4b448fc188b3b747269920280189020f3e559ec2a4e01aecc09792470483775c4fd4af5f50d2e5e29a926
```

### `dpkg` source package: `libfabric=2.1.0-1.1build1`

Binary Packages:

- `libfabric1:amd64=2.1.0-1.1build1`

Licenses: (parsed from: `/usr/share/doc/libfabric1/copyright`)

- `BSD-2-clause`
- `Expat`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libfabric=2.1.0-1.1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/libf/libfabric/libfabric_2.1.0.orig.tar.xz' libfabric_2.1.0.orig.tar.xz 3167432 SHA256:1a66369772d5bb151737214af1c478993e969cf298e8f9ed369e7a2ab8d8c6df
'http://archive.ubuntu.com/ubuntu/pool/universe/libf/libfabric/libfabric_2.1.0-1.1build1.debian.tar.xz' libfabric_2.1.0-1.1build1.debian.tar.xz 20440 SHA256:25187ab032952d2ec2b74d27635500daac764ebbd402094f5268db486723ddab
'http://archive.ubuntu.com/ubuntu/pool/universe/libf/libfabric/libfabric_2.1.0-1.1build1.dsc' libfabric_2.1.0-1.1build1.dsc 2191 SHA256:f09be7315e16ba1f2aeaebb2d0561445421e5eecac3a1532e76e08f9e86aaa34
```

### `dpkg` source package: `libffi=3.5.2-4`

Binary Packages:

- `libffi8:amd64=3.5.2-4`

Licenses: (parsed from: `/usr/share/doc/libffi8/copyright`)

- `Expat`
- `GPL`
- `GPL-2+`
- `GPL-3+`
- `LGPL-2.1+`
- `MPL-1.1`
- `X11`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.5.2-4
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.5.2-4.dsc' libffi_3.5.2-4.dsc 2093 SHA512:c42c1456aec913a0dc04ee54cbe30c4dc87b204b8d5ff550e5e4aeedb03ff1a485aef578ae2b77edc79e56b299875db60f5c74209cd6e91064c759407dffb118
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.5.2.orig.tar.gz' libffi_3.5.2.orig.tar.gz 598870 SHA512:4579932becbe33b2cb3c7a6327a9b47fee67f225ebb4677870ed4402bb7c186966a5b8645dc8a09128af51dcba27c23537e6a34567dbea4e3dc3728cfb51e038
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.5.2-4.debian.tar.xz' libffi_3.5.2-4.debian.tar.xz 11000 SHA512:494381871623a692e40089be90edb2cf2a4c5045cb8f7a5bd1b75849943b7ab2d950857378a975ce15371ac821ce984cbf1b6b84b3e075b3fd8bf9a95340135b
```

### `dpkg` source package: `libfido2=1.16.0-2build1`

Binary Packages:

- `libfido2-1:amd64=1.16.0-2build1`

Licenses: (parsed from: `/usr/share/doc/libfido2-1/copyright`)

- `BSD-2-clause`
- `ISC`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libfido2=1.16.0-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfido2/libfido2_1.16.0.orig.tar.xz' libfido2_1.16.0.orig.tar.xz 599884 SHA256:6a213ed99860107e457be476795df9589445d0be0741b17e7932e92768ee5813
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfido2/libfido2_1.16.0-2build1.debian.tar.xz' libfido2_1.16.0-2build1.debian.tar.xz 65876 SHA256:495e0101deb0d06a5c589ed937b47daff556f595c0ab9e2ab5395b73a04e1c68
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfido2/libfido2_1.16.0-2build1.dsc' libfido2_1.16.0-2build1.dsc 2246 SHA256:685405b7a6a363de7b60b74a970af62f7a9eb1fe5324aa9ae67696636ea84150
```

### `dpkg` source package: `libgav1=0.20.0-2build1`

Binary Packages:

- `libgav1-2:amd64=0.20.0-2build1`

Licenses: (parsed from: `/usr/share/doc/libgav1-2/copyright`)

- `Apache-2.0`
- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris libgav1=0.20.0-2build1
'http://archive.ubuntu.com/ubuntu/pool/universe/libg/libgav1/libgav1_0.20.0.orig.tar.xz' libgav1_0.20.0.orig.tar.xz 758912 SHA256:953f98a5147f556f358ef986601fda7804cfaaa634302aa9b842fea889aa7e6c
'http://archive.ubuntu.com/ubuntu/pool/universe/libg/libgav1/libgav1_0.20.0-2build1.debian.tar.xz' libgav1_0.20.0-2build1.debian.tar.xz 6972 SHA256:4b2e98ce1c5ceb53090d2237a04e4adf54c54296bc1fabdd85c83acfa056f3f4
'http://archive.ubuntu.com/ubuntu/pool/universe/libg/libgav1/libgav1_0.20.0-2build1.dsc' libgav1_0.20.0-2build1.dsc 2154 SHA256:9407cf8712a855315999e9e8e6514f902a471293391c8df11f972e59489f5389
```

### `dpkg` source package: `libgcrypt20=1.12.0-2ubuntu1`

Binary Packages:

- `libgcrypt20:amd64=1.12.0-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.12.0-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.12.0.orig.tar.bz2' libgcrypt20_1.12.0.orig.tar.bz2 4438947 SHA512:9421461297bd79b14f94d1ab275c3ed93b5d433531915c5cc7a718a94d32978a46feccb7a33fe63a60780ff00d465fbe1fe9ada5c250cf6d10a525c246c63d1c
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.12.0.orig.tar.bz2.asc' libgcrypt20_1.12.0.orig.tar.bz2.asc 265 SHA512:9861910a5a955e37b5c90dbb01e1fcf35cd573801004d3cf762fc33180b9bfed1db229827395b54fdb1c499004daece4b6201ec83e9ca214fff79855b691e9a9
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.12.0-2ubuntu1.debian.tar.xz' libgcrypt20_1.12.0-2ubuntu1.debian.tar.xz 46836 SHA512:aba5ad42c5f8be7ef8e86cb9cb56320ece65f4064475564be1905588fcf372d288ce4c753cb3582e5b59a759189bd5ea9cef57028686ba526afe9669bc29b446
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.12.0-2ubuntu1.dsc' libgcrypt20_1.12.0-2ubuntu1.dsc 3106 SHA512:02754ddea2e5519ec068b82b355aaddbbd3edec1931d1115d22563da271eb7d82c8f075c521d63df4153059edc1594f0d5000b46c300b37185c3f069025b92af
```

### `dpkg` source package: `libgd2=2.3.3-13ubuntu2`

Binary Packages:

- `libgd3:amd64=2.3.3-13ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libgd3/copyright`)

- `BSD-3-clause`
- `GAP~Makefile.in`
- `GAP~configure`
- `GD`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf exception`
- `HPND`
- `MIT`
- `WEBP`
- `XFIG`

Source:

```console
$ apt-get source -qq --print-uris libgd2=2.3.3-13ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgd2/libgd2_2.3.3.orig.tar.gz' libgd2_2.3.3.orig.tar.gz 3593182 SHA256:dd3f1f0bb016edcc0b2d082e8229c822ad1d02223511997c80461481759b1ed2
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgd2/libgd2_2.3.3-13ubuntu2.debian.tar.xz' libgd2_2.3.3-13ubuntu2.debian.tar.xz 33052 SHA256:32fbdc4c9e8e75ef43362b6176e15327051ff695394f9ce87e7cdf8288b86c22
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgd2/libgd2_2.3.3-13ubuntu2.dsc' libgd2_2.3.3-13ubuntu2.dsc 2298 SHA256:04dc178fdeb7e6d2df604efd5aaf51439d531b807a2505313117aecbb43ba1a4
```

### `dpkg` source package: `libgeotiff=1.7.4-1build1`

Binary Packages:

- `libgeotiff-dev:amd64=1.7.4-1build1`
- `libgeotiff5:amd64=1.7.4-1build1`

Licenses: (parsed from: `/usr/share/doc/libgeotiff-dev/copyright`, `/usr/share/doc/libgeotiff5/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `GPL-2`
- `GPL-2+`
- `HPND-sl-sgi`
- `MIT`
- `attribution`

Source:

```console
$ apt-get source -qq --print-uris libgeotiff=1.7.4-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/libg/libgeotiff/libgeotiff_1.7.4.orig.tar.gz' libgeotiff_1.7.4.orig.tar.gz 549848 SHA256:c598d04fdf2ba25c4352844dafa81dde3f7fd968daa7ad131228cd91e9d3dc47
'http://archive.ubuntu.com/ubuntu/pool/universe/libg/libgeotiff/libgeotiff_1.7.4-1build1.debian.tar.xz' libgeotiff_1.7.4-1build1.debian.tar.xz 9432 SHA256:e69cc9363e0f27253e4b0051fe409a9526b9374a03dd27a0a02e90fd8059b2f2
'http://archive.ubuntu.com/ubuntu/pool/universe/libg/libgeotiff/libgeotiff_1.7.4-1build1.dsc' libgeotiff_1.7.4-1build1.dsc 2259 SHA256:f7e88997f0e2714d624f2b934053059f493622dcfdce020b9116427337ac2e30
```

### `dpkg` source package: `libglu=9.0.2-1.1build2`

Binary Packages:

- `libglu1-mesa:amd64=9.0.2-1.1build2`
- `libglu1-mesa-dev:amd64=9.0.2-1.1build2`

Licenses: (parsed from: `/usr/share/doc/libglu1-mesa/copyright`, `/usr/share/doc/libglu1-mesa-dev/copyright`)

- `GPL-2`
- `SGI-1.1`
- `SGI-2`

Source:

```console
$ apt-get source -qq --print-uris libglu=9.0.2-1.1build2
'http://archive.ubuntu.com/ubuntu/pool/universe/libg/libglu/libglu_9.0.2.orig.tar.gz' libglu_9.0.2.orig.tar.gz 665822 SHA256:24effdfb952453cc00e275e1c82ca9787506aba0282145fff054498e60e19a65
'http://archive.ubuntu.com/ubuntu/pool/universe/libg/libglu/libglu_9.0.2-1.1build2.diff.gz' libglu_9.0.2-1.1build2.diff.gz 14918 SHA256:189d9305e8f6536015504a99087780dd9992a0e638cbf74e0609458eafd8db32
'http://archive.ubuntu.com/ubuntu/pool/universe/libg/libglu/libglu_9.0.2-1.1build2.dsc' libglu_9.0.2-1.1build2.dsc 1984 SHA256:dd1c0939a5ff163ab60368b225eb2e02f5cd6fbb6ef261f042fdc7439206b922
```

### `dpkg` source package: `libglvnd=1.7.0-3`

Binary Packages:

- `libegl1:amd64=1.7.0-3`
- `libgl-dev:amd64=1.7.0-3`
- `libgl1:amd64=1.7.0-3`
- `libglvnd0:amd64=1.7.0-3`
- `libglx-dev:amd64=1.7.0-3`
- `libglx0:amd64=1.7.0-3`
- `libopengl-dev:amd64=1.7.0-3`
- `libopengl0:amd64=1.7.0-3`

Licenses: (parsed from: `/usr/share/doc/libegl1/copyright`, `/usr/share/doc/libgl-dev/copyright`, `/usr/share/doc/libgl1/copyright`, `/usr/share/doc/libglvnd0/copyright`, `/usr/share/doc/libglx-dev/copyright`, `/usr/share/doc/libglx0/copyright`, `/usr/share/doc/libopengl-dev/copyright`, `/usr/share/doc/libopengl0/copyright`)

- `Apache-2.0`
- `BSD-1-clause`
- `GPL-3`
- `GPL-3+`
- `MIT`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libglvnd=1.7.0-3
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libglvnd/libglvnd_1.7.0-3.dsc' libglvnd_1.7.0-3.dsc 2715 SHA256:b4efcf015385c1e06052ac6e59f6c1bdbd4d2c5ff382970603f2f87ed6fb5205
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libglvnd/libglvnd_1.7.0.orig.tar.gz' libglvnd_1.7.0.orig.tar.gz 839809 SHA256:073e7292788d4d3eeb45ea6c7bdcce9bfdb3b3eef8d7dbd47f2f30dce046ef98
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libglvnd/libglvnd_1.7.0-3.debian.tar.xz' libglvnd_1.7.0-3.debian.tar.xz 22348 SHA256:c452e3f2a8b06941349652a3f28b95e112c5d41d48bfe2e271205f09a003ea6e
```

### `dpkg` source package: `libgpg-error=1.58-2`

Binary Packages:

- `libgpg-error-dev:amd64=1.58-2`
- `libgpg-error0:amd64=1.58-2`

Licenses: (parsed from: `/usr/share/doc/libgpg-error-dev/copyright`, `/usr/share/doc/libgpg-error0/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.58-2
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.58-2.dsc' libgpg-error_1.58-2.dsc 2961 SHA256:076b92cc3a6c7a8815a7772220544581e6cc79ecfd13573512403d8417f7e9b9
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.58.orig.tar.bz2' libgpg-error_1.58.orig.tar.bz2 1123899 SHA256:f943aea9a830a8bd938e5124b579efaece24a3225ff4c3d27611a80ce1260c27
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.58.orig.tar.bz2.asc' libgpg-error_1.58.orig.tar.bz2.asc 265 SHA256:400e445b7c6c52555033805f45b11a76fe4995675fdd4b0ff41ee7799cec1c3b
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.58-2.debian.tar.xz' libgpg-error_1.58-2.debian.tar.xz 19792 SHA256:2e4f501ba6b2375ce23492d65192bfaf4658b68daa9c03965720bb1bc3a52cac
```

### `dpkg` source package: `libgphoto2=2.5.33-1ubuntu1.1`

Binary Packages:

- `libgphoto2-6t64:amd64=2.5.33-1ubuntu1.1`
- `libgphoto2-dev:amd64=2.5.33-1ubuntu1.1`
- `libgphoto2-port12t64:amd64=2.5.33-1ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libgphoto2-6t64/copyright`, `/usr/share/doc/libgphoto2-dev/copyright`, `/usr/share/doc/libgphoto2-port12t64/copyright`)

- `BSD-3-Clause`
- `BSD-3-clause`
- `GPL-1`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `IJG`
- `LGPL-1.1+`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`
- `MIT`
- `other-2`
- `other-3`
- `public-domain`
- `public-domain-1`

Source:

```console
$ apt-get source -qq --print-uris libgphoto2=2.5.33-1ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgphoto2/libgphoto2_2.5.33.orig.tar.xz' libgphoto2_2.5.33.orig.tar.xz 6958144 SHA512:249338968d0cbe36a3a400719794a738f5c28ea4e5d9540e0c5b1ed27592071d5fdd499845ef7ef5826a9314c95e43b3a1ee5d5c92efa320729af6ec3f5cb925
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgphoto2/libgphoto2_2.5.33.orig.tar.xz.asc' libgphoto2_2.5.33.orig.tar.xz.asc 833 SHA512:3b6cb2beac8f03df47ff9f44aba6e8dfd7db2e5119b176eb84b723252fc37ff2f8482f37076be85794a9cbe00725525a727f86ca9248dda8d8ebdaa146e8a9ae
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgphoto2/libgphoto2_2.5.33-1ubuntu1.1.debian.tar.xz' libgphoto2_2.5.33-1ubuntu1.1.debian.tar.xz 105228 SHA512:a5d25227011d058838d7a41237d26444d8418e5c8d8a1c898910fed7d6ff5f3cacd8df92270ec122c51694d1c5c5a298ab26868804eed27f3ecbde4dbd8e73b7
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgphoto2/libgphoto2_2.5.33-1ubuntu1.1.dsc' libgphoto2_2.5.33-1ubuntu1.1.dsc 3005 SHA512:f2902198089b2d47911480c0fd75607a1f9533d8423f82ab58227126f37e0022dd6eea7e07f370124dee5c8ad3edf8f5c6e9b6e41abca9c16e4ad37cd80edf65
```

### `dpkg` source package: `libgsm=1.0.23-2`

Binary Packages:

- `libgsm1:amd64=1.0.23-2`

Licenses: (parsed from: `/usr/share/doc/libgsm1/copyright`)

- `TU-Berlin-2.0`

Source:

```console
$ apt-get source -qq --print-uris libgsm=1.0.23-2
'http://archive.ubuntu.com/ubuntu/pool/universe/libg/libgsm/libgsm_1.0.23-2.dsc' libgsm_1.0.23-2.dsc 2189 SHA256:a17e2b52167a3ade8aba028d9f1980ab893a04e8c257e141d336764307fef424
'http://archive.ubuntu.com/ubuntu/pool/universe/libg/libgsm/libgsm_1.0.23.orig.tar.gz' libgsm_1.0.23.orig.tar.gz 66158 SHA256:8b7591a85ac9adce858f2053005e6b2eb20c23b8b8a868dffb2969645fa323c0
'http://archive.ubuntu.com/ubuntu/pool/universe/libg/libgsm/libgsm_1.0.23-2.debian.tar.xz' libgsm_1.0.23-2.debian.tar.xz 10832 SHA256:667607a07a12d7d4c1285763d92ba4fc63117d35c17937ad8376317be2d1faf4
```

### `dpkg` source package: `libgudev=238-7build1`

Binary Packages:

- `libgudev-1.0-0:amd64=1:238-7build1`

Licenses: (parsed from: `/usr/share/doc/libgudev-1.0-0/copyright`)

- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libgudev=238-7build1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgudev/libgudev_238.orig.tar.xz' libgudev_238.orig.tar.xz 30548 SHA256:61266ab1afc9d73dbc60a8b2af73e99d2fdff47d99544d085760e4fa667b5dd1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgudev/libgudev_238-7build1.debian.tar.xz' libgudev_238-7build1.debian.tar.xz 4960 SHA256:8ea07a4ee5b4702dab5710180857570255d333ec83bd88c0794cd763ea708f76
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgudev/libgudev_238-7build1.dsc' libgudev_238-7build1.dsc 2410 SHA256:70ebb4f2a200ba74df0b7a04e3509c52af27dff6c196f9c420b1b0888e3cc243
```

### `dpkg` source package: `libhdf4=4.3.1-2`

Binary Packages:

- `libhdf4-0:amd64=4.3.1-2`
- `libhdf4-dev=4.3.1-2`

Licenses: (parsed from: `/usr/share/doc/libhdf4-0/copyright`, `/usr/share/doc/libhdf4-dev/copyright`)

- `Apache-2.0`
- `BSD-3-Clause`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+ with Bison exception`
- `HDF4`
- `HDF4Examples`
- `HPND-sl-gl-sgi`
- `NetCDF`

Source:

```console
$ apt-get source -qq --print-uris libhdf4=4.3.1-2
'http://archive.ubuntu.com/ubuntu/pool/universe/libh/libhdf4/libhdf4_4.3.1-2.dsc' libhdf4_4.3.1-2.dsc 2171 SHA256:c1ed0ddf6394ef2935b4105af490a270c0ed30a27dc106cad5dd894fc1c2ae7f
'http://archive.ubuntu.com/ubuntu/pool/universe/libh/libhdf4/libhdf4_4.3.1.orig.tar.gz' libhdf4_4.3.1.orig.tar.gz 9328847 SHA256:6dc3b8af610526788bf78fb3982b25a80abfc94e37ce0c3ae2929b5e9c937093
'http://archive.ubuntu.com/ubuntu/pool/universe/libh/libhdf4/libhdf4_4.3.1-2.debian.tar.xz' libhdf4_4.3.1-2.debian.tar.xz 37948 SHA256:95619ec1196a0771972a35e36ba34990b589d38b14981277f54f74679c8a051d
```

### `dpkg` source package: `libheif=1.21.2-3ubuntu0.3`

Binary Packages:

- `libheif-dev:amd64=1.21.2-3ubuntu0.3`
- `libheif-plugin-aomdec:amd64=1.21.2-3ubuntu0.3`
- `libheif1:amd64=1.21.2-3ubuntu0.3`

Licenses: (parsed from: `/usr/share/doc/libheif-dev/copyright`, `/usr/share/doc/libheif-plugin-aomdec/copyright`, `/usr/share/doc/libheif1/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-4-Clause-UC`
- `BSL-1.0`
- `Expat`
- `GPL-3`
- `GPL-3+`
- `LGPL-3`
- `LGPL-3+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libice=2:1.1.1-1build1`

Binary Packages:

- `libice-dev:amd64=2:1.1.1-1build1`
- `libice6:amd64=2:1.1.1-1build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libice=2:1.1.1-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.1.1.orig.tar.gz' libice_1.1.1.orig.tar.gz 489944 SHA256:04fbd34a11ba08b9df2e3cdb2055c2e3c1c51b3257f683d7fcf42dabcf8e1210
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.1.1-1build1.diff.gz' libice_1.1.1-1build1.diff.gz 7407 SHA256:1e60fbbf8a7aaf66c08251608ae8203a6c7e9709e97bb37aa24e40d7a541ca18
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.1.1-1build1.dsc' libice_1.1.1-1build1.dsc 2016 SHA256:962a510fab962b042108aa853090239bb09f3803b6b4609dd9d84b348923affa
```

### `dpkg` source package: `libidn2=2.3.8-4build1`

Binary Packages:

- `libidn2-0:amd64=2.3.8-4build1`
- `libidn2-dev:amd64=2.3.8-4build1`

Licenses: (parsed from: `/usr/share/doc/libidn2-0/copyright`, `/usr/share/doc/libidn2-dev/copyright`)

- `Expat`
- `FSFAP`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`
- `Unicode`

Source:

```console
$ apt-get source -qq --print-uris libidn2=2.3.8-4build1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.8.orig.tar.gz' libidn2_2.3.8.orig.tar.gz 718637 SHA256:bbad1678d35d28e2c62e6a2577083829461402d9e47b908791c55314a5cb5e04
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.8.orig.tar.gz.asc' libidn2_2.3.8.orig.tar.gz.asc 1223 SHA256:8995cab7db361d9d6989eab26d9b521c74236960a5d78250121c8d369b013bd8
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.8-4build1.debian.tar.xz' libidn2_2.3.8-4build1.debian.tar.xz 18192 SHA256:6db2bd9e3b127c10d19ab7bf7c3ff4074c847e7c36ed3ad62fa6299017084cb1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.8-4build1.dsc' libidn2_2.3.8-4build1.dsc 2566 SHA256:71c5ea4ac74a90f59a6c641a03b17f140c431aa02ca861ebd5897fde84d1fbe8
```

### `dpkg` source package: `libimagequant=4.4.1-1`

Binary Packages:

- `libimagequant0:amd64=4.4.1-1`

Licenses: (parsed from: `/usr/share/doc/libimagequant0/copyright`)

- `CC0`
- `GPL-3`
- `GPL-3.0+`

Source:

```console
$ apt-get source -qq --print-uris libimagequant=4.4.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libimagequant/libimagequant_4.4.1-1.dsc' libimagequant_4.4.1-1.dsc 2483 SHA256:f9abd51d553a172a2a8caff137d72788c2849c19f2a6123ef9cad2c6f7cd925a
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libimagequant/libimagequant_4.4.1.orig.tar.gz' libimagequant_4.4.1.orig.tar.gz 88873 SHA256:2464a3e922b5a220b633d674062b82f0670114f8f3dd30d1935a621c95965f1b
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libimagequant/libimagequant_4.4.1-1.debian.tar.xz' libimagequant_4.4.1-1.debian.tar.xz 4620 SHA256:71954a312667bf405cf0e4a9fe4f670d60f6aea8e7171b016b3161717301b82a
```

### `dpkg` source package: `libinput=1.31.1-1ubuntu1.1`

Binary Packages:

- `libinput-bin=1.31.1-1ubuntu1.1`
- `libinput10:amd64=1.31.1-1ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libinput-bin/copyright`, `/usr/share/doc/libinput10/copyright`)

- `Expat`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libinput=1.31.1-1ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libinput/libinput_1.31.1.orig.tar.gz' libinput_1.31.1.orig.tar.gz 1175300 SHA512:624530d5263976ab6b309947616fd9bf07a28142fa13c7d3a8c71ee036d3b5981346fb5241c7a94d6bc1708e0e5aaa491ab1c63b29badb303c06f8f5592a4d71
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libinput/libinput_1.31.1-1ubuntu1.1.debian.tar.xz' libinput_1.31.1-1ubuntu1.1.debian.tar.xz 12300 SHA512:71eca35d0c39e8b5bfad2e9ad8c9b242549a8411afa78c06bae0b47865c8a776ad70a6cd2f7bc2351ad020f82995af9996734106971c046a60c1d091436f3ffa
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libinput/libinput_1.31.1-1ubuntu1.1.dsc' libinput_1.31.1-1ubuntu1.1.dsc 2527 SHA512:96bc2942441c93981e3ca2bdee66e13a7e23fddcd6177742f6521528a0f77ae1dd6846a6aad19fe1279e363fd7108ec78af4533bd218afea5f65885c5c5c9f98
```

### `dpkg` source package: `libjpeg-turbo=2.1.5-4ubuntu4`

Binary Packages:

- `libjpeg-turbo8:amd64=2.1.5-4ubuntu4`
- `libjpeg-turbo8-dev:amd64=2.1.5-4ubuntu4`

Licenses: (parsed from: `/usr/share/doc/libjpeg-turbo8/copyright`, `/usr/share/doc/libjpeg-turbo8-dev/copyright`)

- `BSD-3-clause`
- `BSD-BY-LC-NE`
- `Expat`
- `NTP`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris libjpeg-turbo=2.1.5-4ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_2.1.5.orig.tar.gz' libjpeg-turbo_2.1.5.orig.tar.gz 2264471 SHA512:20036303fbe5703a5742dc3778cc5deb2eb98d00a9852e7e80ba73c195bba011ec206c090589c482f1153f74505c3fe06d96af00f6beaa65a7fcf7ffaf626fc2
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_2.1.5-4ubuntu4.debian.tar.xz' libjpeg-turbo_2.1.5-4ubuntu4.debian.tar.xz 109408 SHA512:fd708fe577397fca2518219ceed6bc7133112a55ff4757e2793f3676e8fe65c87dd0a163f5fce1257586a90ad2a4237afd7fcc8feb1a56388d2ddcbf4ba4c9ac
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_2.1.5-4ubuntu4.dsc' libjpeg-turbo_2.1.5-4ubuntu4.dsc 2523 SHA512:3a2e638e409e29976b9b2d7ce4e450ed87c7f325fc1bbedd637b9062fa3bfb9b5eb14cb8eefcfa17762ce1da94fc765cb1cab9a344b3c24841df3691c2538ac6
```

### `dpkg` source package: `libjpeg8-empty=8c-2ubuntu12`

Binary Packages:

- `libjpeg8:amd64=8c-2ubuntu12`

Licenses: (parsed from: `/usr/share/doc/libjpeg8/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libjpeg8-empty=8c-2ubuntu12
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg8-empty/libjpeg8-empty_8c-2ubuntu12.tar.gz' libjpeg8-empty_8c-2ubuntu12.tar.gz 2021 SHA256:71785e9a0081d45cd277426e2dc94dc45e6bcd3721199c6ae37956b4721ba3ed
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg8-empty/libjpeg8-empty_8c-2ubuntu12.dsc' libjpeg8-empty_8c-2ubuntu12.dsc 1579 SHA256:ef23a313872c672ff25d62bdff1707560bb1edb080fb7b764e76aae9a386d031
```

### `dpkg` source package: `libjsoncpp=1.9.6-5`

Binary Packages:

- `libjsoncpp-dev:amd64=1.9.6-5`
- `libjsoncpp26:amd64=1.9.6-5`

Licenses: (parsed from: `/usr/share/doc/libjsoncpp-dev/copyright`, `/usr/share/doc/libjsoncpp26/copyright`)

- `Expat_or_PublicDomain_or_DualExpatPD`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris libjsoncpp=1.9.6-5
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjsoncpp/libjsoncpp_1.9.6-5.dsc' libjsoncpp_1.9.6-5.dsc 2246 SHA256:a1132210f78ac8283d27d5dc6f39841d8daa7f9dfcd319885c8dc6e654905924
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjsoncpp/libjsoncpp_1.9.6.orig.tar.gz' libjsoncpp_1.9.6.orig.tar.gz 212682 SHA256:f93b6dd7ce796b13d02c108bc9f79812245a82e577581c4c9aabe57075c90ea2
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjsoncpp/libjsoncpp_1.9.6-5.debian.tar.xz' libjsoncpp_1.9.6-5.debian.tar.xz 8584 SHA256:fce1f86060c0cb3d3f21c0b9f11543299d83afebb9946e2872b46876e863a9a4
```

### `dpkg` source package: `libkml=1.3.0-13`

Binary Packages:

- `libkml-dev:amd64=1.3.0-13`
- `libkmlbase1t64:amd64=1.3.0-13`
- `libkmlconvenience1t64:amd64=1.3.0-13`
- `libkmldom1t64:amd64=1.3.0-13`
- `libkmlengine1t64:amd64=1.3.0-13`
- `libkmlregionator1t64:amd64=1.3.0-13`
- `libkmlxsd1t64:amd64=1.3.0-13`

Licenses: (parsed from: `/usr/share/doc/libkml-dev/copyright`, `/usr/share/doc/libkmlbase1t64/copyright`, `/usr/share/doc/libkmlconvenience1t64/copyright`, `/usr/share/doc/libkmldom1t64/copyright`, `/usr/share/doc/libkmlengine1t64/copyright`, `/usr/share/doc/libkmlregionator1t64/copyright`, `/usr/share/doc/libkmlxsd1t64/copyright`)

- `BSD-3-Clause`
- `GPL-3`
- `GPL-3+`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris libkml=1.3.0-13
'http://archive.ubuntu.com/ubuntu/pool/universe/libk/libkml/libkml_1.3.0-13.dsc' libkml_1.3.0-13.dsc 2543 SHA256:7717d6fc9da577089d2dfd91d227802b2db30697be4e462abe2f6798e3264c57
'http://archive.ubuntu.com/ubuntu/pool/universe/libk/libkml/libkml_1.3.0.orig.tar.gz' libkml_1.3.0.orig.tar.gz 6639857 SHA256:8892439e5570091965aaffe30b08631fdf7ca7f81f6495b4648f0950d7ea7963
'http://archive.ubuntu.com/ubuntu/pool/universe/libk/libkml/libkml_1.3.0-13.debian.tar.xz' libkml_1.3.0-13.debian.tar.xz 26372 SHA256:0e22bc95d04b906bce4bb6ad4ff5d4ececbf27147d1f6697525324fd8e586f60
```

### `dpkg` source package: `libksba=1.6.7-2build1`

Binary Packages:

- `libksba8:amd64=1.6.7-2build1`

Licenses: (parsed from: `/usr/share/doc/libksba8/copyright`)

- `FSFUL`
- `GPL-3`
- `LGPL-2.1-or-later`

Source:

```console
$ apt-get source -qq --print-uris libksba=1.6.7-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.6.7.orig.tar.bz2' libksba_1.6.7.orig.tar.bz2 706437 SHA256:cf72510b8ebb4eb6693eef765749d83677a03c79291a311040a5bfd79baab763
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.6.7.orig.tar.bz2.asc' libksba_1.6.7.orig.tar.bz2.asc 228 SHA256:cd704f8100151752b12776fa87dac42a3f99334ed155bcbcbaeda8e786581316
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.6.7-2build1.debian.tar.xz' libksba_1.6.7-2build1.debian.tar.xz 14928 SHA256:e344f55db870032948c26984b40c0d003db736e508b1355c218090df5a2bc479
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.6.7-2build1.dsc' libksba_1.6.7-2build1.dsc 2506 SHA256:f8a7f9354650608846e4f50ad1bc6f75ca15606ffb60a47ba3339b39ad4985cc
```

### `dpkg` source package: `libmd=1.1.0-2build4`

Binary Packages:

- `libmd0:amd64=1.1.0-2build4`

Licenses: (parsed from: `/usr/share/doc/libmd0/copyright`)

- `BSD-2-clause`
- `BSD-2-clause-NetBSD`
- `BSD-3-clause`
- `BSD-3-clause-Aaron-D-Gifford`
- `Beerware`
- `ISC`
- `public-domain-md4`
- `public-domain-md5`
- `public-domain-sha1`

Source:

```console
$ apt-get source -qq --print-uris libmd=1.1.0-2build4
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.1.0.orig.tar.xz' libmd_1.1.0.orig.tar.xz 271228 SHA256:1bd6aa42275313af3141c7cf2e5b964e8b1fd488025caf2f971f43b00776b332
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.1.0.orig.tar.xz.asc' libmd_1.1.0.orig.tar.xz.asc 833 SHA256:402fd3024e43ab975733d09e661804a58ca58697194e4b15216b1217cfe1dadb
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.1.0-2build4.debian.tar.xz' libmd_1.1.0-2build4.debian.tar.xz 8584 SHA256:12399d03a3d06fe481c9ca6cda0ae0e815882501f010c57cb9253dae93409efa
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.1.0-2build4.dsc' libmd_1.1.0-2build4.dsc 2383 SHA256:8c735703ff1b9699379c6cf538d07199d6f532dce3bcab4a1bde0ae5f7e25a21
```

### `dpkg` source package: `libnl3=3.12.0-2`

Binary Packages:

- `libnl-3-200:amd64=3.12.0-2`
- `libnl-3-dev:amd64=3.12.0-2`
- `libnl-route-3-200:amd64=3.12.0-2`
- `libnl-route-3-dev:amd64=3.12.0-2`

Licenses: (parsed from: `/usr/share/doc/libnl-3-200/copyright`, `/usr/share/doc/libnl-3-dev/copyright`, `/usr/share/doc/libnl-route-3-200/copyright`, `/usr/share/doc/libnl-route-3-dev/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libnl3=3.12.0-2
'http://archive.ubuntu.com/ubuntu/pool/main/libn/libnl3/libnl3_3.12.0-2.dsc' libnl3_3.12.0-2.dsc 3097 SHA256:31f4b005d48a859e5e26d03998a3953456baca3235eb9c5d728a627a36b45f15
'http://archive.ubuntu.com/ubuntu/pool/main/libn/libnl3/libnl3_3.12.0.orig.tar.gz' libnl3_3.12.0.orig.tar.gz 1191546 SHA256:fc51ca7196f1a3f5fdf6ffd3864b50f4f9c02333be28be4eeca057e103c0dd18
'http://archive.ubuntu.com/ubuntu/pool/main/libn/libnl3/libnl3_3.12.0-2.debian.tar.xz' libnl3_3.12.0-2.debian.tar.xz 12000 SHA256:76e1a6cc9202371636e93bedbf8475ba6127c8d39bd43aab149fc97c5845052a
```

### `dpkg` source package: `libogg=1.3.6-2`

Binary Packages:

- `libogg-dev:amd64=1.3.6-2`
- `libogg0:amd64=1.3.6-2`

Licenses: (parsed from: `/usr/share/doc/libogg-dev/copyright`, `/usr/share/doc/libogg0/copyright`)

- `BSD-3-clause`
- `rfc3533-license`
- `rfc5334-license`

Source:

```console
$ apt-get source -qq --print-uris libogg=1.3.6-2
'http://archive.ubuntu.com/ubuntu/pool/main/libo/libogg/libogg_1.3.6-2.dsc' libogg_1.3.6-2.dsc 2094 SHA256:967855d2d86d13e63a5f20f48176afedbf33ed12aeecae64b10526835e2865ea
'http://archive.ubuntu.com/ubuntu/pool/main/libo/libogg/libogg_1.3.6.orig.tar.xz' libogg_1.3.6.orig.tar.xz 439952 SHA256:5c8253428e181840cd20d41f3ca16557a9cc04bad4a3d04cce84808677fa1061
'http://archive.ubuntu.com/ubuntu/pool/main/libo/libogg/libogg_1.3.6-2.debian.tar.xz' libogg_1.3.6-2.debian.tar.xz 18384 SHA256:8a7a4b0468e29485df82b9109d1dfa8ba6b97649e3ebc1a08afa23b29d85fd4e
```

### `dpkg` source package: `libopenmpt=0.8.4-1`

Binary Packages:

- `libopenmpt0t64:amd64=0.8.4-1`

Licenses: (parsed from: `/usr/share/doc/libopenmpt0t64/copyright`)

- `BSD-3-clause`
- `BSL-1.0`
- `GNU-All-Permissive-License`
- `GNU-All-Permissive-License-FSF`
- `GPL-2`
- `GPL-2+ with Autoconf exception`
- `GPL-2+ with LibTool exception`
- `GPL-3`
- `GPL-3+ with AutoConf exception`
- `GPL-3+ with Autoconf Macros exception`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris libopenmpt=0.8.4-1
'http://archive.ubuntu.com/ubuntu/pool/universe/libo/libopenmpt/libopenmpt_0.8.4-1.dsc' libopenmpt_0.8.4-1.dsc 1950 SHA256:22bcd93fdbd1fdaed4f0bc866e56cdfd90c07e9b5e1b7cb82d7b242d6870f511
'http://archive.ubuntu.com/ubuntu/pool/universe/libo/libopenmpt/libopenmpt_0.8.4.orig.tar.gz' libopenmpt_0.8.4.orig.tar.gz 1765663 SHA256:627f9bf11aacae615a1f2c982c7e88cb21f11b2d6f0267946f7c82c5eae4943b
'http://archive.ubuntu.com/ubuntu/pool/universe/libo/libopenmpt/libopenmpt_0.8.4-1.debian.tar.xz' libopenmpt_0.8.4-1.debian.tar.xz 12000 SHA256:d130dc539c7fb0dd0c4f4de0bd845eb4e8bf18cd377f5f9158cbe5f853fce6f7
```

### `dpkg` source package: `libpcap=1.10.6-1ubuntu1`

Binary Packages:

- `libpcap0.8t64:amd64=1.10.6-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libpcap0.8t64/copyright`)

- `BSD-2-clause`
- `BSD-2-clause-var2`
- `BSD-3-clause`
- `BSD-3-clause-CACE`
- `BSD-3-clause-Juniper`
- `BSD-3-clause-NetGroup-CACE`
- `BSD-3-clause-Softweyr`
- `BSD-3-clause-Torino`
- `BSD-3-clause-enet`
- `BSD-3-clause-pcap-linux`
- `BSD-3-clause-var2`
- `BSD-3-clause-var3`
- `BSD-4-clause-CSEG-LBL`
- `BSD-4-clause-NDSU`
- `BSD-4-clause-UC-LBL`
- `BSD-4-clause-UCB`
- `BSD-4-clause-enet`
- `Expat`
- `FSFUL`
- `GPL-2`
- `GPL-3`
- `GPL-3+-with-Autoconf-exception`
- `ISC`
- `NTP-CM`
- `NTP-UCB`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris libpcap=1.10.6-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpcap/libpcap_1.10.6.orig.tar.xz' libpcap_1.10.6.orig.tar.xz 682312 SHA256:ec97d1206bdd19cb6bdd043eaa9f0037aa732262ec68e070fd7c7b5f834d5dfc
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpcap/libpcap_1.10.6.orig.tar.xz.asc' libpcap_1.10.6.orig.tar.xz.asc 667 SHA256:7705eca5ea9a489bc8217128934a6de6cbde0f77e3bc162d3b2c7eda3a13b8e7
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpcap/libpcap_1.10.6-1ubuntu1.debian.tar.xz' libpcap_1.10.6-1ubuntu1.debian.tar.xz 23860 SHA256:0d207b4206d82a799c394d4d2090d8c5303aa1f78ae0efbc70b9a4a05ca94b28
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpcap/libpcap_1.10.6-1ubuntu1.dsc' libpcap_1.10.6-1ubuntu1.dsc 2368 SHA256:d729b65f669acd04f9e9bb59e5431f10215857e4daef0979dd60669247d98ad3
```

### `dpkg` source package: `libpciaccess=0.18.1-1ubuntu4.1`

Binary Packages:

- `libpciaccess0:amd64=0.18.1-1ubuntu4.1`

Licenses: (parsed from: `/usr/share/doc/libpciaccess0/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libpciaccess=0.18.1-1ubuntu4.1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpciaccess/libpciaccess_0.18.1.orig.tar.gz' libpciaccess_0.18.1.orig.tar.gz 82957 SHA512:f08584aa1d11b78dd4c56fa52daf2fb4c0ff50a408c00781bf989a1e7ec082e816a12f7493778db634b553630ad23eaf11b2bb9c774142eaac133f05cdc08284
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpciaccess/libpciaccess_0.18.1-1ubuntu4.1.diff.gz' libpciaccess_0.18.1-1ubuntu4.1.diff.gz 47066 SHA512:fe1626763147f27114f86dbc7b944fb3fb2761feed6de91e45e105775fcce6b0a5fc39448b892b202b8884fb5550f50eb0bcd0d0ba1389c5069de0dc469b5f12
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpciaccess/libpciaccess_0.18.1-1ubuntu4.1.dsc' libpciaccess_0.18.1-1ubuntu4.1.dsc 2190 SHA512:ea26da3a567f40169e024933bcf9b7115fbb3f60d52cd459f4b273d4f5e6515ea8966bc52d158387d9f00ec3bdac0ed6a3887238c6dcb200b90e4ff03ca82418
```

### `dpkg` source package: `libpgm=5.3.128~dfsg-2.1build2`

Binary Packages:

- `libpgm-5.3-0t64:amd64=5.3.128~dfsg-2.1build2`

Licenses: (parsed from: `/usr/share/doc/libpgm-5.3-0t64/copyright`)

- `BSD-3-clause`
- `ISC`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libpgm=5.3.128~dfsg-2.1build2
'http://archive.ubuntu.com/ubuntu/pool/universe/libp/libpgm/libpgm_5.3.128%7edfsg.orig.tar.xz' libpgm_5.3.128~dfsg.orig.tar.xz 393292 SHA256:f81831dcb05fa57ba6346541372cc04e67e8bbe4ce5d7d9438c9767d31f358f2
'http://archive.ubuntu.com/ubuntu/pool/universe/libp/libpgm/libpgm_5.3.128%7edfsg-2.1build2.debian.tar.xz' libpgm_5.3.128~dfsg-2.1build2.debian.tar.xz 6564 SHA256:5144e8bffaf075eeaac56b13c42d6f8cda96d1e5c829c7d91ea4fdd1e09d5034
'http://archive.ubuntu.com/ubuntu/pool/universe/libp/libpgm/libpgm_5.3.128%7edfsg-2.1build2.dsc' libpgm_5.3.128~dfsg-2.1build2.dsc 1967 SHA256:4d0570932707d6561c74bffb716e0be489f551abb3a61d4f4f2cdb40ccc161d0
```

### `dpkg` source package: `libpng1.6=1.6.57-1`

Binary Packages:

- `libpng-dev:amd64=1.6.57-1`
- `libpng16-16t64:amd64=1.6.57-1`

Licenses: (parsed from: `/usr/share/doc/libpng-dev/copyright`, `/usr/share/doc/libpng16-16t64/copyright`)

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
$ apt-get source -qq --print-uris libpng1.6=1.6.57-1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.57-1.dsc' libpng1.6_1.6.57-1.dsc 2306 SHA512:46588883287894dbe0c5ba77bc500df0ba8d86f14a48d6253850d4e315396aec0f9165ec8d2ee6d491fb47a753a1fd1bd3b84bd84c33bf465cdc978037b2a9c4
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.57.orig.tar.gz' libpng1.6_1.6.57.orig.tar.gz 1591776 SHA512:cd20c278b04ac6275cea495c66472782c175bf431eb28afd3f529d5913179ac8cbf3a306e67fe9dc3ae09c87ad67b5d937b83f427e15d8364f513d95ff8b4649
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.57-1.debian.tar.xz' libpng1.6_1.6.57-1.debian.tar.xz 33420 SHA512:c9259e36eb22c973e8a067c87d5a8d01f520ea629c158679c8666e53c79eeae2ac3769b4bdd039cdf48c3ad37effdbce0f7a76821c55dc7bacea5587d7a76ce4
```

### `dpkg` source package: `libproxy=0.5.12-1`

Binary Packages:

- `libproxy1v5:amd64=0.5.12-1`

Licenses: (parsed from: `/usr/share/doc/libproxy1v5/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MPL-1.1`
- `NPL-1.1`

Source:

```console
$ apt-get source -qq --print-uris libproxy=0.5.12-1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libproxy/libproxy_0.5.12-1.dsc' libproxy_0.5.12-1.dsc 2680 SHA256:430fe4b6caa5afb3dccbf5a124b7b993602f34f4deea1bae5f5e99721aab6b69
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libproxy/libproxy_0.5.12.orig.tar.gz' libproxy_0.5.12.orig.tar.gz 60533 SHA256:fcbc3c58495983e5667344ce5ec1d64b34dedab632f43cc848e2a6ecc2bc2a91
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libproxy/libproxy_0.5.12-1.debian.tar.xz' libproxy_0.5.12-1.debian.tar.xz 15180 SHA256:b279738bcab693d333602b462dc1a1559ca403e3c6c63251fd667acea04ed8de
```

### `dpkg` source package: `libpsl=0.21.2-1.1build2`

Binary Packages:

- `libpsl-dev:amd64=0.21.2-1.1build2`
- `libpsl5t64:amd64=0.21.2-1.1build2`

Licenses: (parsed from: `/usr/share/doc/libpsl-dev/copyright`, `/usr/share/doc/libpsl5t64/copyright`)

- `Chromium`
- `MIT`
- `gnulib`

Source:

```console
$ apt-get source -qq --print-uris libpsl=0.21.2-1.1build2
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.21.2.orig.tar.xz' libpsl_0.21.2.orig.tar.xz 1870352 SHA256:11e34380f2c81d6e72c710464aae3b680df4ddcc1007826c630fb03c7ca6aa54
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.21.2-1.1build2.debian.tar.xz' libpsl_0.21.2-1.1build2.debian.tar.xz 12292 SHA256:d0d3412418d1bb95e34650ad9cf59fd0e189e824928b45875ff42388b93bd27f
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.21.2-1.1build2.dsc' libpsl_0.21.2-1.1build2.dsc 2388 SHA256:7c5b3688d51ffe733e61bb32fcfd8304acbf76583d21bce75ff5c3bf7e04042f
```

### `dpkg` source package: `libpsm2=11.2.185-2.1build1`

Binary Packages:

- `libpsm2-2=11.2.185-2.1build1`

Licenses: (parsed from: `/usr/share/doc/libpsm2-2/copyright`)

- `BSD-3-Clause/Intel`
- `BSD-3-Clause/TT`
- `BSD-3-Clause/zlib`
- `BSD-4-Clause/UC`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libpsm2=11.2.185-2.1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/libp/libpsm2/libpsm2_11.2.185.orig.tar.gz' libpsm2_11.2.185.orig.tar.gz 460259 SHA256:8c0446e989feb4a3822791e4a3687060916f7c4612d1e8e493879be66f10db09
'http://archive.ubuntu.com/ubuntu/pool/universe/libp/libpsm2/libpsm2_11.2.185-2.1build1.debian.tar.xz' libpsm2_11.2.185-2.1build1.debian.tar.xz 7948 SHA256:f2edf8860f5c4f4482a28290bb2c30ba94ff4c2e7d6ece6d7716d48164031bfc
'http://archive.ubuntu.com/ubuntu/pool/universe/libp/libpsm2/libpsm2_11.2.185-2.1build1.dsc' libpsm2_11.2.185-2.1build1.dsc 2145 SHA256:b1f4493d748443355440c7162dff8898b2ef0073569214b477a1e1baab7bbb8c
```

### `dpkg` source package: `librabbitmq=0.15.0-1ubuntu0.26.04.1`

Binary Packages:

- `librabbitmq4:amd64=0.15.0-1ubuntu0.26.04.1`

Licenses: (parsed from: `/usr/share/doc/librabbitmq4/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris librabbitmq=0.15.0-1ubuntu0.26.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librabbitmq/librabbitmq_0.15.0.orig.tar.gz' librabbitmq_0.15.0.orig.tar.gz 131818 SHA512:62b4e92fc270c5bdc5343cfaef5245e29a9b6d8983071a47391a93ae1b766ed7b98a6a546e8528befbc284f5ed17da4647595e94341380bfa76598569191e6c0
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librabbitmq/librabbitmq_0.15.0-1ubuntu0.26.04.1.debian.tar.xz' librabbitmq_0.15.0-1ubuntu0.26.04.1.debian.tar.xz 9136 SHA512:def6940cf245a929a3e2600e85ac8da719f44ca32276f3d4e4be365de240da144d3ed8702b4510682cb5871832fe987673e3ac89407c2def94259fd7f7177a17
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librabbitmq/librabbitmq_0.15.0-1ubuntu0.26.04.1.dsc' librabbitmq_0.15.0-1ubuntu0.26.04.1.dsc 2223 SHA512:1f97756be82e90cb24f3b33e3cc7ea610d0de48d2be659ce4641cbe23438c9986617a758775d094a35ab8143ffc5d8ddfc4e5feccfb362484d5625486043beff
```

### `dpkg` source package: `libraw1394=2.1.2-2build4`

Binary Packages:

- `libraw1394-11:amd64=2.1.2-2build4`
- `libraw1394-dev:amd64=2.1.2-2build4`

Licenses: (parsed from: `/usr/share/doc/libraw1394-11/copyright`, `/usr/share/doc/libraw1394-dev/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libraw1394=2.1.2-2build4
'http://archive.ubuntu.com/ubuntu/pool/main/libr/libraw1394/libraw1394_2.1.2.orig.tar.gz' libraw1394_2.1.2.orig.tar.gz 458134 SHA256:ddc4e32721cdfe680d964aaede68ac606a20cd17dd2ba70e2d7e0692086ab57c
'http://archive.ubuntu.com/ubuntu/pool/main/libr/libraw1394/libraw1394_2.1.2-2build4.debian.tar.xz' libraw1394_2.1.2-2build4.debian.tar.xz 7032 SHA256:6a8edb0da132065f3c36a54cfd3027e3ec1341e83e1156c109654b32070632cf
'http://archive.ubuntu.com/ubuntu/pool/main/libr/libraw1394/libraw1394_2.1.2-2build4.dsc' libraw1394_2.1.2-2build4.dsc 2097 SHA256:089049600333a4c230121f269ba5a890ed9aca7c26847b5680ceeb7222e63a02
```

### `dpkg` source package: `librist=0.2.11+dfsg-1build1`

Binary Packages:

- `librist4:amd64=0.2.11+dfsg-1build1`

Licenses: (parsed from: `/usr/share/doc/librist4/copyright`)

- `BSD-1-clause`
- `BSD-2-clause`
- `ISC`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris librist=0.2.11+dfsg-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/libr/librist/librist_0.2.11%2bdfsg.orig.tar.xz' librist_0.2.11+dfsg.orig.tar.xz 159460 SHA256:6fe86afe4ba847db7847fe42401d88daf4db9290f5dcfcba0fc29d552f9516bf
'http://archive.ubuntu.com/ubuntu/pool/universe/libr/librist/librist_0.2.11%2bdfsg-1build1.debian.tar.xz' librist_0.2.11+dfsg-1build1.debian.tar.xz 9248 SHA256:be92acaad26fd5756d7730b5fc802d8658af1eb552fe7d64f8b0df56276cf92e
'http://archive.ubuntu.com/ubuntu/pool/universe/libr/librist/librist_0.2.11%2bdfsg-1build1.dsc' librist_0.2.11+dfsg-1build1.dsc 2189 SHA256:84d421a9f729b33d702c4854727fa895ee51cdbe9c5d927c5471e2e302d76688
```

### `dpkg` source package: `librsvg=2.61.3+dfsg-3`

Binary Packages:

- `librsvg2-2:amd64=2.61.3+dfsg-3`

Licenses: (parsed from: `/usr/share/doc/librsvg2-2/copyright`)

- `0BSD`
- `0BSD,`
- `Apache-2.0`
- `Apache-2.0,`
- `BSD-2-clause`
- `BSD-2-clause,`
- `BSD-3-clause`
- `BSD-3-clause,`
- `Boost-1.0`
- `Boost-1.0,`
- `CC-zero-waive-1.0-us`
- `Expat`
- `Expat,`
- `LGPL-2`
- `LGPL-2+`
- `MPL-2.0`
- `MPL-2.0,`
- `OFL-1.1`
- `Sun-permissive`
- `Sun-permissive,`
- `Unlicense`
- `Unlicense,`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris librsvg=2.61.3+dfsg-3
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librsvg/librsvg_2.61.3%2bdfsg-3.dsc' librsvg_2.61.3+dfsg-3.dsc 3009 SHA256:428876fa5b4794843a79c091687c50b400fc3ba20931a81ec6c21075fe47dbfa
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librsvg/librsvg_2.61.3%2bdfsg.orig.tar.xz' librsvg_2.61.3+dfsg.orig.tar.xz 6753876 SHA256:60d36a7aed9a65cc0f664de33f2c663a7a0dbae8f5b3051b962ea7cdde0a3123
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librsvg/librsvg_2.61.3%2bdfsg-3.debian.tar.xz' librsvg_2.61.3+dfsg-3.debian.tar.xz 13147560 SHA256:936f6f3feb64c6f84029636a0aeeaf59b0d647171033b7deae15c9cb8ae0b01b
```

### `dpkg` source package: `librttopo=1.1.0-4build1`

Binary Packages:

- `librttopo-dev:amd64=1.1.0-4build1`
- `librttopo1:amd64=1.1.0-4build1`

Licenses: (parsed from: `/usr/share/doc/librttopo-dev/copyright`, `/usr/share/doc/librttopo1/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris librttopo=1.1.0-4build1
'http://archive.ubuntu.com/ubuntu/pool/universe/libr/librttopo/librttopo_1.1.0.orig.tar.gz' librttopo_1.1.0.orig.tar.gz 301077 SHA256:2e2fcabb48193a712a6c76ac9a9be2a53f82e32f91a2bc834d9f1b4fa9cd879f
'http://archive.ubuntu.com/ubuntu/pool/universe/libr/librttopo/librttopo_1.1.0-4build1.debian.tar.xz' librttopo_1.1.0-4build1.debian.tar.xz 7532 SHA256:931a076838d529dbee6c9004278d05f1578e5c492fa178b580825069ef2684ae
'http://archive.ubuntu.com/ubuntu/pool/universe/libr/librttopo/librttopo_1.1.0-4build1.dsc' librttopo_1.1.0-4build1.dsc 2036 SHA256:8a2bc48c3968c309d95f1a4c723236e8a1a57df8f99d8fe9789b77379965c8a1
```

### `dpkg` source package: `libseccomp=2.6.0-2ubuntu5`

Binary Packages:

- `libseccomp2:amd64=2.6.0-2ubuntu5`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.6.0-2ubuntu5
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.6.0.orig.tar.gz' libseccomp_2.6.0.orig.tar.gz 685655 SHA256:83b6085232d1588c379dc9b9cae47bb37407cf262e6e74993c61ba72d2a784dc
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.6.0.orig.tar.gz.asc' libseccomp_2.6.0.orig.tar.gz.asc 833 SHA256:52e338fa958128293cbd25d2be189e34da41c4f4abbb1b641cf58f373c001f94
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.6.0-2ubuntu5.debian.tar.xz' libseccomp_2.6.0-2ubuntu5.debian.tar.xz 27908 SHA256:13076780072032031635609c1d7df63c4a4ad33a04d3f751d286c20154dbf0d1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.6.0-2ubuntu5.dsc' libseccomp_2.6.0-2ubuntu5.dsc 2745 SHA256:0c74c8329d4febd0b5c74466dc418d104a49f61fd117c3f19465fca826797529
```

### `dpkg` source package: `libselinux=3.9-4build1`

Binary Packages:

- `libselinux1:amd64=3.9-4build1`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libselinux=3.9-4build1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.9.orig.tar.gz' libselinux_3.9.orig.tar.gz 205334 SHA256:e7ee2c01dba64a0c35c9d7c9c0e06209d8186b325b0638a0d83f915cc3c101e8
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.9.orig.tar.gz.asc' libselinux_3.9.orig.tar.gz.asc 833 SHA256:3529c5a905fdfa9e0a8e926ce0333f508213cccd9f6e35ca1011e37412042ca5
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.9-4build1.debian.tar.xz' libselinux_3.9-4build1.debian.tar.xz 38172 SHA256:7e32bfa1617f9ec5bca076d337a2495260cc56628a16813b910be7c81a4383be
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.9-4build1.dsc' libselinux_3.9-4build1.dsc 3079 SHA256:6649868ebdd0b235b8c50e2357055cb91da89b3c1b9805c1b7d8f345f22b3952
```

### `dpkg` source package: `libsemanage=3.9-1build1`

Binary Packages:

- `libsemanage-common=3.9-1build1`
- `libsemanage2:amd64=3.9-1build1`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage2/copyright`)

- `GPL-2`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=3.9-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.9.orig.tar.gz' libsemanage_3.9.orig.tar.gz 185278 SHA256:ec05850aef48bfb8e02135a7f4f3f7edba3670f63d5e67f2708d4bd80b9a4634
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.9.orig.tar.gz.asc' libsemanage_3.9.orig.tar.gz.asc 833 SHA256:af7644b29d7ae1f69f89444900b2e2b0eb0b4e71f10a2667c7820d10d55fa53f
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.9-1build1.debian.tar.xz' libsemanage_3.9-1build1.debian.tar.xz 38084 SHA256:6c281b929712b067ec757e3859076c1d319a73cefb149345819eabec26a711e8
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.9-1build1.dsc' libsemanage_3.9-1build1.dsc 2989 SHA256:5bdf2f5efd687142c290685dc04bf2c9f08dd8d8c805366108d40d4431d6cae7
```

### `dpkg` source package: `libsepol=3.9-2`

Binary Packages:

- `libsepol2:amd64=3.9-2`

Licenses: (parsed from: `/usr/share/doc/libsepol2/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris libsepol=3.9-2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.9-2.dsc' libsepol_3.9-2.dsc 2326 SHA256:fca98e9732bd9385e689f1b3bec87517a938217d5e3bf735cd88b9ee5c971850
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.9.orig.tar.gz' libsepol_3.9.orig.tar.gz 515726 SHA256:ba630b59e50c5fbf9e9dd45eb3734f373cf78d689d8c10c537114c9bd769fa2e
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.9.orig.tar.gz.asc' libsepol_3.9.orig.tar.gz.asc 833 SHA256:2059e9c2e195f8d4102f9868295b0a2c16e91082b236d510499dc27620b812fd
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.9-2.debian.tar.xz' libsepol_3.9-2.debian.tar.xz 21416 SHA256:f4f7f317fccf7dac9c72f1448a335edcf10ea7894f3492c475e76d404fcfb268
```

### `dpkg` source package: `libsm=2:1.2.6-1build1`

Binary Packages:

- `libsm-dev:amd64=2:1.2.6-1build1`
- `libsm6:amd64=2:1.2.6-1build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libsm=2:1.2.6-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.6.orig.tar.gz' libsm_1.2.6.orig.tar.gz 467497 SHA256:166b4b50d606cdd83f1ddc61b5b9162600034f848b3e32ccbb0e63536b7d6cdd
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.6.orig.tar.gz.asc' libsm_1.2.6.orig.tar.gz.asc 833 SHA256:b5e59abae8a79ae9901e73178dacf5af9d7c3b91704fd86de85d305fd7a17a7f
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.6-1build1.diff.gz' libsm_1.2.6-1build1.diff.gz 13398 SHA256:17234fdf77977bf1b07e469325a93df33f3ddbb4a8218307a1bd2cbb28f14539
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.6-1build1.dsc' libsm_1.2.6-1build1.dsc 2326 SHA256:b0f8ce6dd7c8c80730bbdfcc380944d47b2541eaa9fc8387073f4ec2cf97529c
```

### `dpkg` source package: `libsodium=1.0.18-2`

Binary Packages:

- `libsodium23:amd64=1.0.18-2`

Licenses: (parsed from: `/usr/share/doc/libsodium23/copyright`)

- `BSD-2-clause`
- `CC0`
- `CC0-1.0`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `MIT`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libsodium=1.0.18-2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsodium/libsodium_1.0.18-2.dsc' libsodium_1.0.18-2.dsc 1916 SHA256:77412ee7f09ae0c150276c8892bb18cec256b03b03cc1511664da5a21afcf9cc
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsodium/libsodium_1.0.18.orig.tar.gz' libsodium_1.0.18.orig.tar.gz 1619527 SHA256:d59323c6b712a1519a5daf710b68f5e7fde57040845ffec53850911f10a5d4f4
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsodium/libsodium_1.0.18-2.debian.tar.xz' libsodium_1.0.18-2.debian.tar.xz 8240 SHA256:fd160e05c94eb3f3171e795892415bffdc3545b6c467a6a8e552ebf195766fc0
```

### `dpkg` source package: `libsoxr=0.1.3-4.1`

Binary Packages:

- `libsoxr0:amd64=0.1.3-4.1`

Licenses: (parsed from: `/usr/share/doc/libsoxr0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`
- `Spherepack`
- `permissive1`
- `permissive2`

Source:

```console
$ apt-get source -qq --print-uris libsoxr=0.1.3-4.1
'http://archive.ubuntu.com/ubuntu/pool/universe/libs/libsoxr/libsoxr_0.1.3-4.1.dsc' libsoxr_0.1.3-4.1.dsc 2154 SHA256:b5fd9f7e7f6b3759d941d7b9cae22d4e910bc281e8058f648cc9fb62e1c4ed59
'http://archive.ubuntu.com/ubuntu/pool/universe/libs/libsoxr/libsoxr_0.1.3.orig.tar.xz' libsoxr_0.1.3.orig.tar.xz 94384 SHA256:b111c15fdc8c029989330ff559184198c161100a59312f5dc19ddeb9b5a15889
'http://archive.ubuntu.com/ubuntu/pool/universe/libs/libsoxr/libsoxr_0.1.3-4.1.debian.tar.xz' libsoxr_0.1.3-4.1.debian.tar.xz 5256 SHA256:9d611a3d8ef98d07f6ab03058ffd48236155a79ad9109a94f2bf7f3d2352a79e
```

### `dpkg` source package: `libssh2=1.11.1-1ubuntu0.26.04.3`

Binary Packages:

- `libssh2-1-dev:amd64=1.11.1-1ubuntu0.26.04.3`
- `libssh2-1t64:amd64=1.11.1-1ubuntu0.26.04.3`

Licenses: (parsed from: `/usr/share/doc/libssh2-1-dev/copyright`, `/usr/share/doc/libssh2-1t64/copyright`)

- `BSD3`
- `ISC`

Source:

```console
$ apt-get source -qq --print-uris libssh2=1.11.1-1ubuntu0.26.04.3
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh2/libssh2_1.11.1.orig.tar.gz' libssh2_1.11.1.orig.tar.gz 1093012 SHA512:8703636fc28f0b12c8171712f3d605e0466a5bb9ba06e136c3203548fc3408ab07defd71dc801d7009a337e1e02fd60e8933a2a526d5ef0ce53153058d201233
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh2/libssh2_1.11.1.orig.tar.gz.asc' libssh2_1.11.1.orig.tar.gz.asc 488 SHA512:83e600ddd676013932297c4f3d2cf2e65b5308f7700d818b34f30d760c7495180e6d8dae70579c8bea95ea2d7ccb12fc42641e545e11ec4b6630a0e6b350b282
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh2/libssh2_1.11.1-1ubuntu0.26.04.3.debian.tar.xz' libssh2_1.11.1-1ubuntu0.26.04.3.debian.tar.xz 24644 SHA512:de5ae68866c5c6e075042ab3662cdfcb81d7aa10049f4de01914d528181f47c713c376e2f438c131eb19971af7b1cfdebdd00d7fa1f4b7ebc14bfc62496ae646
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh2/libssh2_1.11.1-1ubuntu0.26.04.3.dsc' libssh2_1.11.1-1ubuntu0.26.04.3.dsc 2458 SHA512:cd85bc67ae7eb526593205a93bb1a416923f3027101f33f320f3b6e885e87cae5c3084e81af896b6caa8b53be6933dc213b9d9e982f89233551df399030db5b2
```

### `dpkg` source package: `libssh=0.11.3-1ubuntu1`

Binary Packages:

- `libssh-4:amd64=0.11.3-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libssh-4/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `ISC`
- `LGPL-2.1`
- `LGPL-2.1+~OpenSSL`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libssh=0.11.3-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.11.3.orig.tar.xz' libssh_0.11.3.orig.tar.xz 622776 SHA256:7d8a1361bb094ec3f511964e78a5a4dba689b5986e112afabe4f4d0d6c6125c3
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.11.3.orig.tar.xz.asc' libssh_0.11.3.orig.tar.xz.asc 833 SHA256:2710f8785d21717097ee042884683ea14dd1be95c77d64e940ef7e58a9c8ca88
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.11.3-1ubuntu1.debian.tar.xz' libssh_0.11.3-1ubuntu1.debian.tar.xz 39580 SHA256:b644f254e856829b9e316f4b938e107ec40cbde9cd6efafd8bba669cc0b6ca7d
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.11.3-1ubuntu1.dsc' libssh_0.11.3-1ubuntu1.dsc 2708 SHA256:24bdecd2fa5a9746c9af6316aa8b15202e020fb61b1a8ecd658afa25541ac8c7
```

### `dpkg` source package: `libtasn1-6=4.21.0-2`

Binary Packages:

- `libtasn1-6:amd64=4.21.0-2`
- `libtasn1-6-dev:amd64=4.21.0-2`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`, `/usr/share/doc/libtasn1-6-dev/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=4.21.0-2
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.21.0-2.dsc' libtasn1-6_4.21.0-2.dsc 2665 SHA256:781fb83a70d7e0357e6a70e54e11712b471ba11804e119d621682fc741376a4a
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.21.0.orig.tar.gz' libtasn1-6_4.21.0.orig.tar.gz 1816537 SHA256:1d8a444a223cc5464240777346e125de51d8e6abf0b8bac742ac84609167dc87
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.21.0.orig.tar.gz.asc' libtasn1-6_4.21.0.orig.tar.gz.asc 1223 SHA256:a81037649b953c9ecb2e8f8fa24cb5c79456fd9af31499d6b753fa6569656807
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.21.0-2.debian.tar.xz' libtasn1-6_4.21.0-2.debian.tar.xz 19408 SHA256:baeb1f6c25a1623e6b3834de85e2a69e81b82fdbd5bac9379fc5e699c83d9866
```

### `dpkg` source package: `libthai=0.1.30-1`

Binary Packages:

- `libthai-data=0.1.30-1`
- `libthai0:amd64=0.1.30-1`

Licenses: (parsed from: `/usr/share/doc/libthai-data/copyright`, `/usr/share/doc/libthai0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libthai=0.1.30-1
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.30-1.dsc' libthai_0.1.30-1.dsc 2301 SHA256:dd3e8be0d6afc47875cc554be7c0afe76448555e5d1bee1cb620219427699aa0
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.30.orig.tar.xz' libthai_0.1.30.orig.tar.xz 436044 SHA256:ddba8b53dfe584c3253766030218a88825488a51a7deef041d096e715af64bdd
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.30-1.debian.tar.xz' libthai_0.1.30-1.debian.tar.xz 12652 SHA256:820cc8bbaf8e032393c2ff8c8422264922c384ca6a2920f00516051e3f2d9f37
```

### `dpkg` source package: `libtheora=1.2.0+dfsg-6`

Binary Packages:

- `libtheora-dev:amd64=1.2.0+dfsg-6`
- `libtheora1:amd64=1.2.0+dfsg-6`
- `libtheoradec2:amd64=1.2.0+dfsg-6`
- `libtheoraenc2:amd64=1.2.0+dfsg-6`

Licenses: (parsed from: `/usr/share/doc/libtheora-dev/copyright`, `/usr/share/doc/libtheora1/copyright`, `/usr/share/doc/libtheoradec2/copyright`, `/usr/share/doc/libtheoraenc2/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libtheora=1.2.0+dfsg-6
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtheora/libtheora_1.2.0%2bdfsg-6.dsc' libtheora_1.2.0+dfsg-6.dsc 2072 SHA256:00d5143df66e497f335012467ba5c3dd07c3c74cb75e06942928e4059185dc9a
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtheora/libtheora_1.2.0%2bdfsg.orig.tar.gz' libtheora_1.2.0+dfsg.orig.tar.gz 2525524 SHA256:92a32e9c1d79984e6fc6abe325da05bf4ec97ee38d1a4d49d338545ed050a28f
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtheora/libtheora_1.2.0%2bdfsg-6.debian.tar.xz' libtheora_1.2.0+dfsg-6.debian.tar.xz 16808 SHA256:b10709c33861f2a2ca56e25d181349ffb8b7c60844cbad8a2250edb761b62dbf
```

### `dpkg` source package: `libtool=2.5.4-9`

Binary Packages:

- `libltdl-dev:amd64=2.5.4-9`
- `libltdl7:amd64=2.5.4-9`

Licenses: (parsed from: `/usr/share/doc/libltdl-dev/copyright`, `/usr/share/doc/libltdl7/copyright`)

- `GFDL-1.3`
- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libtool=2.5.4-9
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.5.4-9.dsc' libtool_2.5.4-9.dsc 2240 SHA256:664cbebe3b144fe1d4c1d59ab85879cc567d5e1f6987c6ccfa964ee073a763c3
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.5.4.orig.tar.xz' libtool_2.5.4.orig.tar.xz 1069572 SHA256:d9189031edeaa6aa74695b2aeb80a8c26df50b29d8b72c991667e01adecea42c
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.5.4-9.debian.tar.xz' libtool_2.5.4-9.debian.tar.xz 41704 SHA256:b1797d6b5d41cb13d40a3e28ce132ae8aa780d0dc7d0ff2fab06dab3122b6b4e
```

### `dpkg` source package: `libudfread=1.2.0-2`

Binary Packages:

- `libudfread3:amd64=1.2.0-2`

Licenses: (parsed from: `/usr/share/doc/libudfread3/copyright`)

- `Expat`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libudfread=1.2.0-2
'http://archive.ubuntu.com/ubuntu/pool/universe/libu/libudfread/libudfread_1.2.0-2.dsc' libudfread_1.2.0-2.dsc 1457 SHA256:4d692614b1d9e8f9a982c10b0b83a9342babbf94b69f03618350592a8c05fa2b
'http://archive.ubuntu.com/ubuntu/pool/universe/libu/libudfread/libudfread_1.2.0.orig.tar.xz' libudfread_1.2.0.orig.tar.xz 28732 SHA256:bb477cbd4cfbfc7787d9d05b71ee5e70430f5cfebf1297497f7e83547958050f
'http://archive.ubuntu.com/ubuntu/pool/universe/libu/libudfread/libudfread_1.2.0-2.debian.tar.xz' libudfread_1.2.0-2.debian.tar.xz 3136 SHA256:98876d8bba0e8c68fda5b61eaa34b24bba0af22086d9d513f59f679653c5ddbe
```

### `dpkg` source package: `libunistring=1.3-2build1`

Binary Packages:

- `libunistring5:amd64=1.3-2build1`

Licenses: (parsed from: `/usr/share/doc/libunistring5/copyright`)

- `BSD-3-clause`
- `FreeSoftware`
- `GFDL-1.2+`
- `GFDL-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with distribution exception`
- `GPL-2+ with distribution exception, Expat`
- `GPL-3`
- `GPL-3+`
- `ISC`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`
- `Unicode-DFS-2016`
- `X11`
- `bsd-3-clause`
- `gfdl-1.2+`
- `gfdl-1.3+`
- `isc`
- `public-domain`
- `unicode-dfs-2016`

Source:

```console
$ apt-get source -qq --print-uris libunistring=1.3-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_1.3.orig.tar.xz' libunistring_1.3.orig.tar.xz 2753448 SHA256:f245786c831d25150f3dfb4317cda1acc5e3f79a5da4ad073ddca58886569527
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_1.3.orig.tar.xz.asc' libunistring_1.3.orig.tar.xz.asc 833 SHA256:62201b5b7ce9c0b033c50cefa5d7769dff4b7cee8205572e0cf917653cae9e33
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_1.3-2build1.debian.tar.xz' libunistring_1.3-2build1.debian.tar.xz 28548 SHA256:532952853fc91014d1946bf6620761b3f145d0db854b9cb50e9fba67ca31a31b
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_1.3-2build1.dsc' libunistring_1.3-2build1.dsc 2210 SHA256:4421618798ca69760ab82a5ad3758636ffea6ca9df61a80416114d83fd0bb9f0
```

### `dpkg` source package: `liburcu=0.15.6-1`

Binary Packages:

- `liburcu-dev:amd64=0.15.6-1`
- `liburcu8t64:amd64=0.15.6-1`

Licenses: (parsed from: `/usr/share/doc/liburcu-dev/copyright`, `/usr/share/doc/liburcu8t64/copyright`)

- `BSD-2-Clause`
- `CC-BY-4.0`
- `CC0-1.0`
- `Expat`
- `Expat~Boehm`
- `FSFAP`
- `GPL-2`
- `GPL-2 with Autoconf-data exception`
- `GPL-2+`
- `GPL-2+ with Autoconf-2.0~Archive exception`
- `GPL-3`
- `GPL-3+`
- `GPL-3+ with Autoconf-2.0~Archive exception`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris liburcu=0.15.6-1
'http://archive.ubuntu.com/ubuntu/pool/main/libu/liburcu/liburcu_0.15.6-1.dsc' liburcu_0.15.6-1.dsc 2294 SHA256:876cfdbc091513a0e663d241413e2a472d925e2dedfc77bec5f4c2bd9219df6f
'http://archive.ubuntu.com/ubuntu/pool/main/libu/liburcu/liburcu_0.15.6.orig.tar.bz2' liburcu_0.15.6.orig.tar.bz2 686061 SHA256:850b192096eb11ebf2c70e8f97bc7da7479ee41da1bebeb44e3986908bac414f
'http://archive.ubuntu.com/ubuntu/pool/main/libu/liburcu/liburcu_0.15.6.orig.tar.bz2.asc' liburcu_0.15.6.orig.tar.bz2.asc 488 SHA256:7b485bc469de21587b6b6e37b97f55c1a6405b81ded19260fce70e707db18ae9
'http://archive.ubuntu.com/ubuntu/pool/main/libu/liburcu/liburcu_0.15.6-1.debian.tar.xz' liburcu_0.15.6-1.debian.tar.xz 19952 SHA256:8e0908af3a881cd2402939d0868f848ebffcd516a8ae6f0c820c0436985da918
```

### `dpkg` source package: `libusb-1.0=2:1.0.29-2build1`

Binary Packages:

- `libusb-1.0-0:amd64=2:1.0.29-2build1`
- `libusb-1.0-0-dev:amd64=2:1.0.29-2build1`

Licenses: (parsed from: `/usr/share/doc/libusb-1.0-0/copyright`, `/usr/share/doc/libusb-1.0-0-dev/copyright`)

- `FSFAP`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libusb-1.0=2:1.0.29-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libusb-1.0/libusb-1.0_1.0.29.orig.tar.bz2' libusb-1.0_1.0.29.orig.tar.bz2 645381 SHA256:5977fc950f8d1395ccea9bd48c06b3f808fd3c2c961b44b0c2e6e29fc3a70a85
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libusb-1.0/libusb-1.0_1.0.29.orig.tar.bz2.asc' libusb-1.0_1.0.29.orig.tar.bz2.asc 833 SHA256:68b3a09c2581547d7ff6708bc62a089de8dd7d463bec875614f98e1b1044b3ea
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libusb-1.0/libusb-1.0_1.0.29-2build1.debian.tar.xz' libusb-1.0_1.0.29-2build1.debian.tar.xz 18240 SHA256:781c26d0d5e7e7617a79053f0a1dba6cb9803f476e40907694f9e0dad7fd8293
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libusb-1.0/libusb-1.0_1.0.29-2build1.dsc' libusb-1.0_1.0.29-2build1.dsc 2667 SHA256:30d81501446794bcd97a761565274ed78c571dc7736499e476695fcf55131f1f
```

### `dpkg` source package: `libuv1=1.51.0-2ubuntu1`

Binary Packages:

- `libuv1t64:amd64=1.51.0-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libuv1t64/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `CC-BY-4.0`
- `Expat`
- `GPL3+ with autoconf exception`
- `ISC`

Source:

```console
$ apt-get source -qq --print-uris libuv1=1.51.0-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libuv1/libuv1_1.51.0.orig.tar.gz' libuv1_1.51.0.orig.tar.gz 1352309 SHA256:c6e84ceea0ae4e7649f8cf482280e78bbd9c2dad859b63567b9d4cc0845b88e7
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libuv1/libuv1_1.51.0-2ubuntu1.debian.tar.xz' libuv1_1.51.0-2ubuntu1.debian.tar.xz 23460 SHA256:817682a083e1b8389592eb6f0017a4da9acd8ee7a95ef9e2cfa9666aae7a9297
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libuv1/libuv1_1.51.0-2ubuntu1.dsc' libuv1_1.51.0-2ubuntu1.dsc 2223 SHA256:aacd895b13f3f098f1a84db70dd2eddacae39cbfa99cf067c0f65c65dfdc1390
```

### `dpkg` source package: `libva=2.23.0-1ubuntu1`

Binary Packages:

- `libva-drm2:amd64=2.23.0-1ubuntu1`
- `libva-x11-2:amd64=2.23.0-1ubuntu1`
- `libva2:amd64=2.23.0-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libva-drm2/copyright`, `/usr/share/doc/libva-x11-2/copyright`, `/usr/share/doc/libva2/copyright`)

- `Expat`
- `Expat-advertising`
- `GPL-2`
- `GPL-2+`
- `other`

Source:

```console
$ apt-get source -qq --print-uris libva=2.23.0-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libva/libva_2.23.0.orig.tar.gz' libva_2.23.0.orig.tar.gz 304617 SHA256:b10aceb30e93ddf13b2030eb70079574ba437be9b3b76065caf28a72c07e23e7
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libva/libva_2.23.0-1ubuntu1.debian.tar.xz' libva_2.23.0-1ubuntu1.debian.tar.xz 12928 SHA256:157843dc8f3431da82b59d4851141145137bcd16cff181ddd3ef8e48eb5be1ff
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libva/libva_2.23.0-1ubuntu1.dsc' libva_2.23.0-1ubuntu1.dsc 2555 SHA256:4ea6a794cef9425f242ce7c5ad4ad220e5c9792bd264402fe5ce9f33ba1e5f56
```

### `dpkg` source package: `libvdpau=1.5-4`

Binary Packages:

- `libvdpau1:amd64=1.5-4`

Licenses: (parsed from: `/usr/share/doc/libvdpau1/copyright`)

- `Expat`
- `other`

Source:

```console
$ apt-get source -qq --print-uris libvdpau=1.5-4
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvdpau/libvdpau_1.5-4.dsc' libvdpau_1.5-4.dsc 2239 SHA256:84e1052a4659119d4d01c04833f6863ca3793079610bee4073ec8cc31f092b41
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvdpau/libvdpau_1.5.orig.tar.bz2' libvdpau_1.5.orig.tar.bz2 143279 SHA256:a5d50a42b8c288febc07151ab643ac8de06a18446965c7241f89b4e810821913
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvdpau/libvdpau_1.5-4.debian.tar.xz' libvdpau_1.5-4.debian.tar.xz 9184 SHA256:5a816f2822036944157b252009e347760193b705f22c94a2be56672dcec521cb
```

### `dpkg` source package: `libvorbis=1.3.7-3build2`

Binary Packages:

- `libvorbis0a:amd64=1.3.7-3build2`
- `libvorbisenc2:amd64=1.3.7-3build2`
- `libvorbisfile3:amd64=1.3.7-3build2`

Licenses: (parsed from: `/usr/share/doc/libvorbis0a/copyright`, `/usr/share/doc/libvorbisenc2/copyright`, `/usr/share/doc/libvorbisfile3/copyright`)

- `BSD-3-Clause`
- `RFC-special`

Source:

```console
$ apt-get source -qq --print-uris libvorbis=1.3.7-3build2
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvorbis/libvorbis_1.3.7.orig.tar.gz' libvorbis_1.3.7.orig.tar.gz 1658963 SHA256:0e982409a9c3fc82ee06e08205b1355e5c6aa4c36bca58146ef399621b0ce5ab
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvorbis/libvorbis_1.3.7-3build2.debian.tar.xz' libvorbis_1.3.7-3build2.debian.tar.xz 11924 SHA256:c7a05c3202b689517da33d23d9115a6a70f15d4f0e0ca54ef4a794698a04e81d
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvorbis/libvorbis_1.3.7-3build2.dsc' libvorbis_1.3.7-3build2.dsc 2380 SHA256:4e684b983fa74cf079962f413172cfb5fb81ba4c2acdb0d164d29001f776675d
```

### `dpkg` source package: `libvpl=1:2.16.0-1`

Binary Packages:

- `libvpl2=1:2.16.0-1`

Licenses: (parsed from: `/usr/share/doc/libvpl2/copyright`)

- `Apache-2.0`
- `BSD-3-clause`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libvpl=1:2.16.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/libv/libvpl/libvpl_2.16.0-1.dsc' libvpl_2.16.0-1.dsc 1975 SHA256:c4efe89160b51d45018bb4a9c8e8a1fa08c04252ce87da15d5d84506e2621da5
'http://archive.ubuntu.com/ubuntu/pool/universe/libv/libvpl/libvpl_2.16.0.orig.tar.xz' libvpl_2.16.0.orig.tar.xz 5491872 SHA256:f864b0c797950df03377510f19a545a7639c5265b11668f8d69a0f745feca4f9
'http://archive.ubuntu.com/ubuntu/pool/universe/libv/libvpl/libvpl_2.16.0-1.debian.tar.xz' libvpl_2.16.0-1.debian.tar.xz 4712 SHA256:866d5f347791885edf5e32b8ffcd6663b108dd89374ac430c9f07466989ad7f6
```

### `dpkg` source package: `libvpx=1.16.0-3`

Binary Packages:

- `libvpx12:amd64=1.16.0-3`

Licenses: (parsed from: `/usr/share/doc/libvpx12/copyright`)

- `BSD-3-Clause`
- `Expat`
- `ISC`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libvpx=1.16.0-3
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvpx/libvpx_1.16.0-3.dsc' libvpx_1.16.0-3.dsc 1719 SHA256:a6fad12dd11a8123ee5dbe7573731a7ab1014b556f14522c1b0ca36481c2107e
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvpx/libvpx_1.16.0.orig.tar.gz' libvpx_1.16.0.orig.tar.gz 5635379 SHA256:7a479a3c66b9f5d5542a4c6a1b7d3768a983b1e5c14c60a9396edc9b649e015c
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvpx/libvpx_1.16.0-3.debian.tar.xz' libvpx_1.16.0-3.debian.tar.xz 14804 SHA256:897e880f51a65f66fcb0678d433fae693c77692b828470c39070668001c4dfbc
```

### `dpkg` source package: `libwacom=2.18.0-1`

Binary Packages:

- `libwacom-common=2.18.0-1`
- `libwacom9:amd64=2.18.0-1`

Licenses: (parsed from: `/usr/share/doc/libwacom-common/copyright`, `/usr/share/doc/libwacom9/copyright`)

- `MIT`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris libwacom=2.18.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwacom/libwacom_2.18.0-1.dsc' libwacom_2.18.0-1.dsc 2226 SHA256:4deb6193cd901d6bd5bfbd39f2f4775aa18d431f5c642a815a7ddf988fa98e6d
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwacom/libwacom_2.18.0.orig.tar.gz' libwacom_2.18.0.orig.tar.gz 245742 SHA256:9038d27d9b6290d460d7c97376826adf181bfa2a8e25877ce1bc6595a604cb68
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwacom/libwacom_2.18.0-1.debian.tar.xz' libwacom_2.18.0-1.debian.tar.xz 6304 SHA256:68e121c4c910edbd5a203882ca283f49fae56e0e980f5306db65ef5f0ec6d914
```

### `dpkg` source package: `libwebp=1.5.0-0.1build1`

Binary Packages:

- `libsharpyuv-dev:amd64=1.5.0-0.1build1`
- `libsharpyuv0:amd64=1.5.0-0.1build1`
- `libwebp-dev:amd64=1.5.0-0.1build1`
- `libwebp7:amd64=1.5.0-0.1build1`
- `libwebpdecoder3:amd64=1.5.0-0.1build1`
- `libwebpdemux2:amd64=1.5.0-0.1build1`
- `libwebpmux3:amd64=1.5.0-0.1build1`

Licenses: (parsed from: `/usr/share/doc/libsharpyuv-dev/copyright`, `/usr/share/doc/libsharpyuv0/copyright`, `/usr/share/doc/libwebp-dev/copyright`, `/usr/share/doc/libwebp7/copyright`, `/usr/share/doc/libwebpdecoder3/copyright`, `/usr/share/doc/libwebpdemux2/copyright`, `/usr/share/doc/libwebpmux3/copyright`)

- `Apache-2.0`
- `BSD-3-Clause`

Source:

```console
$ apt-get source -qq --print-uris libwebp=1.5.0-0.1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_1.5.0.orig.tar.gz' libwebp_1.5.0.orig.tar.gz 4267494 SHA256:7d6fab70cf844bf6769077bd5d7a74893f8ffd4dfb42861745750c63c2a5c92c
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_1.5.0.orig.tar.gz.asc' libwebp_1.5.0.orig.tar.gz.asc 833 SHA256:1383ff0b093f57d65f5a902e1bc51c550795ce4713b38712c60bb9151e15dcd6
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_1.5.0-0.1build1.debian.tar.xz' libwebp_1.5.0-0.1build1.debian.tar.xz 11356 SHA256:035f119997380bb5119033270f8e6b263ddebb0bb7dd989b88870d64fbcc9814
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_1.5.0-0.1build1.dsc' libwebp_1.5.0-0.1build1.dsc 2889 SHA256:e2022160126aec63ee4c30a1616bcd8906d29f8f21d96c1e12ef3edfa84a9abe
```

### `dpkg` source package: `libx11=2:1.8.13-1`

Binary Packages:

- `libx11-6:amd64=2:1.8.13-1`
- `libx11-data=2:1.8.13-1`
- `libx11-dev:amd64=2:1.8.13-1`
- `libx11-xcb1:amd64=2:1.8.13-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libx11=2:1.8.13-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.8.13-1.dsc' libx11_1.8.13-1.dsc 2490 SHA256:59a024bc689876cafcdd6532e074ae1daa7b7198e102187685224b0793696f56
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.8.13.orig.tar.gz' libx11_1.8.13.orig.tar.gz 3217264 SHA256:acf0e7cd7541110e6330ecb539441a2d53061f386ec7be6906dfde0de2598470
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.8.13.orig.tar.gz.asc' libx11_1.8.13.orig.tar.gz.asc 833 SHA256:391221d291778f72b600104fb7907e8fb0ee61813ca5ab443bf0a0dcc3a1ce65
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.8.13-1.diff.gz' libx11_1.8.13-1.diff.gz 76915 SHA256:571b7234db455a649a8ffe6599eaebb8f31e47528f21ec3caa2e255da75dd699
```

### `dpkg` source package: `libxau=1:1.0.11-1build2`

Binary Packages:

- `libxau-dev:amd64=1:1.0.11-1build2`
- `libxau6:amd64=1:1.0.11-1build2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxau=1:1.0.11-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.11.orig.tar.gz' libxau_1.0.11.orig.tar.gz 404973 SHA256:3a321aaceb803577a4776a5efe78836eb095a9e44bbc7a465d29463e1a14f189
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.11.orig.tar.gz.asc' libxau_1.0.11.orig.tar.gz.asc 358 SHA256:72320a0c036cc2d36bebdd7d279c402620e2f3553f639581dfb23736803ce258
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.11-1build2.diff.gz' libxau_1.0.11-1build2.diff.gz 22840 SHA256:18957318b721c1c0d82da7788452ad4c0af72d3ff38ca8646e9e8c2758fd1ec7
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.11-1build2.dsc' libxau_1.0.11-1build2.dsc 2208 SHA256:d72615e4b8258d57d2a5f99c6af07e543f48ee4de352288804eb1ea12e0e2621
```

### `dpkg` source package: `libxcb=1.17.0-2ubuntu1`

Binary Packages:

- `libxcb-dri3-0:amd64=1.17.0-2ubuntu1`
- `libxcb-glx0:amd64=1.17.0-2ubuntu1`
- `libxcb-present0:amd64=1.17.0-2ubuntu1`
- `libxcb-randr0:amd64=1.17.0-2ubuntu1`
- `libxcb-render0:amd64=1.17.0-2ubuntu1`
- `libxcb-shape0:amd64=1.17.0-2ubuntu1`
- `libxcb-shm0:amd64=1.17.0-2ubuntu1`
- `libxcb-sync1:amd64=1.17.0-2ubuntu1`
- `libxcb-xfixes0:amd64=1.17.0-2ubuntu1`
- `libxcb-xinerama0:amd64=1.17.0-2ubuntu1`
- `libxcb-xinput0:amd64=1.17.0-2ubuntu1`
- `libxcb-xkb1:amd64=1.17.0-2ubuntu1`
- `libxcb1:amd64=1.17.0-2ubuntu1`
- `libxcb1-dev:amd64=1.17.0-2ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcb=1.17.0-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.17.0.orig.tar.gz' libxcb_1.17.0.orig.tar.gz 661593 SHA256:2c69287424c9e2128cb47ffe92171e10417041ec2963bceafb65cb3fcf8f0b85
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.17.0-2ubuntu1.diff.gz' libxcb_1.17.0-2ubuntu1.diff.gz 28420 SHA256:46de9f8ac632740414a9ac96f4262b43bb33292cbdcc972236342ded9e025f15
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.17.0-2ubuntu1.dsc' libxcb_1.17.0-2ubuntu1.dsc 5425 SHA256:fd2bcc9d51fd2f4397f8e3940b615dab53038cab5f0b5c7ca69aeae56068061a
```

### `dpkg` source package: `libxcomposite=1:0.4.6-1build1`

Binary Packages:

- `libxcomposite1:amd64=1:0.4.6-1build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcomposite=1:0.4.6-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcomposite/libxcomposite_0.4.6.orig.tar.gz' libxcomposite_0.4.6.orig.tar.gz 395552 SHA256:3599dfcd96cd48d45e6aeb08578aa27636fa903f480f880c863622c2b352d076
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcomposite/libxcomposite_0.4.6.orig.tar.gz.asc' libxcomposite_0.4.6.orig.tar.gz.asc 801 SHA256:5774dceebd9cfd3c609f96a9ca3b86b31a333318932f4e3afb6f9c93837e2483
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcomposite/libxcomposite_0.4.6-1build1.diff.gz' libxcomposite_0.4.6-1build1.diff.gz 10635 SHA256:c8aeb17c7bebfce1f191e45ae9c899bfc05eee1367377ea151e73cf76b621837
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcomposite/libxcomposite_0.4.6-1build1.dsc' libxcomposite_0.4.6-1build1.dsc 2356 SHA256:e77d5f62f9df3899197e3fa7c0cdfa21f8677cd82e3b18f92c84ca5db064c457
```

### `dpkg` source package: `libxcrypt=1:4.5.1-1`

Binary Packages:

- `libcrypt-dev:amd64=1:4.5.1-1`
- `libcrypt1:amd64=1:4.5.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcrypt=1:4.5.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcrypt/libxcrypt_4.5.1-1.dsc' libxcrypt_4.5.1-1.dsc 2434 SHA256:c9051653fc74d9209e8a3f8b496c359cfecdf7992b0a73f69c090973bae90e4b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcrypt/libxcrypt_4.5.1.orig.tar.xz' libxcrypt_4.5.1.orig.tar.xz 433264 SHA256:bddf278d44e2ecdbf1439a52ddc0bb292921dd9f3013030a2a8461c32a45533f
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcrypt/libxcrypt_4.5.1-1.debian.tar.xz' libxcrypt_4.5.1-1.debian.tar.xz 8684 SHA256:b6096f6498adf5a94d727c9065ed33b784190e8c2cd3eda5f073e435708293ae
```

### `dpkg` source package: `libxcursor=1:1.2.3-1build1`

Binary Packages:

- `libxcursor-dev:amd64=1:1.2.3-1build1`
- `libxcursor1:amd64=1:1.2.3-1build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcursor=1:1.2.3-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcursor/libxcursor_1.2.3.orig.tar.gz' libxcursor_1.2.3.orig.tar.gz 433030 SHA256:74e72da27e61cc2cfd2e267c14f500ea47775850048ee0b00362a55c9b60ee9b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcursor/libxcursor_1.2.3-1build1.debian.tar.xz' libxcursor_1.2.3-1build1.debian.tar.xz 9232 SHA256:8a00f0652079d0318c16636951601e7fcb32d13eb7917b992fe71bd44e707bce
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcursor/libxcursor_1.2.3-1build1.dsc' libxcursor_1.2.3-1build1.dsc 2172 SHA256:38947a4b583a0b0a7c816609e221c11904e98d5551469e69ae19831b0356d5d3
```

### `dpkg` source package: `libxdamage=1:1.1.7-1`

Binary Packages:

- `libxdamage1:amd64=1:1.1.7-1`

Licenses: (parsed from: `/usr/share/doc/libxdamage1/copyright`)

- `Xorg`

Source:

```console
$ apt-get source -qq --print-uris libxdamage=1:1.1.7-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdamage/libxdamage_1.1.7-1.dsc' libxdamage_1.1.7-1.dsc 2114 SHA256:9bed743753b843ad8466a1109d023e4adacd3a668e2c6568eca6963116987a1d
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdamage/libxdamage_1.1.7.orig.tar.xz' libxdamage_1.1.7.orig.tar.xz 265336 SHA256:127067f521d3ee467b97bcb145aeba1078e2454d448e8748eb984d5b397bde24
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdamage/libxdamage_1.1.7-1.debian.tar.xz' libxdamage_1.1.7-1.debian.tar.xz 6448 SHA256:25611c18c9369598357f5aabc12e1b7948ab36dd15da0c6bec7df85d878911fb
```

### `dpkg` source package: `libxdmcp=1:1.1.5-2`

Binary Packages:

- `libxdmcp-dev:amd64=1:1.1.5-2`
- `libxdmcp6:amd64=1:1.1.5-2`

Licenses: (parsed from: `/usr/share/doc/libxdmcp-dev/copyright`, `/usr/share/doc/libxdmcp6/copyright`)

- `OpenGroup-MIT`

Source:

```console
$ apt-get source -qq --print-uris libxdmcp=1:1.1.5-2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.5-2.dsc' libxdmcp_1.1.5-2.dsc 2269 SHA256:c69bdf96d80bdaa2759bf32131e6ec60a5d3e397963f3b13370789dfe8704cdc
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.5.orig.tar.gz' libxdmcp_1.1.5.orig.tar.gz 442597 SHA256:31a7abc4f129dcf6f27ae912c3eedcb94d25ad2e8f317f69df6eda0bc4e4f2f3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.5.orig.tar.gz.asc' libxdmcp_1.1.5.orig.tar.gz.asc 833 SHA256:0c7666da02d66ab785584cd16a6f9324f0d949555734e70b3b1385e525c7860b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.5-2.diff.gz' libxdmcp_1.1.5-2.diff.gz 10201 SHA256:c64245c976c5e54214c43936aa73a7186c417f549fb0d10ee396fe34d6115196
```

### `dpkg` source package: `libxext=2:1.3.4-1build3`

Binary Packages:

- `libxext-dev:amd64=2:1.3.4-1build3`
- `libxext6:amd64=2:1.3.4-1build3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxext=2:1.3.4-1build3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.4.orig.tar.gz' libxext_1.3.4.orig.tar.gz 494434 SHA256:8ef0789f282826661ff40a8eef22430378516ac580167da35cc948be9041aac1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.4-1build3.diff.gz' libxext_1.3.4-1build3.diff.gz 12746 SHA256:3396fd89de84e412bb191029872b7142ebd25044e4ddea7597f92adec956d6a9
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.4-1build3.dsc' libxext_1.3.4-1build3.dsc 2221 SHA256:9384eeeebb3b39b130f98b75776b9cea69815f2476a032f4c3aa9ef79e9034b7
```

### `dpkg` source package: `libxfixes=1:6.0.0-2build2`

Binary Packages:

- `libxfixes-dev:amd64=1:6.0.0-2build2`
- `libxfixes3:amd64=1:6.0.0-2build2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxfixes=1:6.0.0-2build2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxfixes/libxfixes_6.0.0.orig.tar.gz' libxfixes_6.0.0.orig.tar.gz 387810 SHA256:82045da5625350838390c9440598b90d69c882c324ca92f73af9f0e992cb57c7
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxfixes/libxfixes_6.0.0.orig.tar.gz.asc' libxfixes_6.0.0.orig.tar.gz.asc 195 SHA256:e5598f42aa32140936c7772ab4d99ba35ecb859c29adc1703bb51440e7a54928
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxfixes/libxfixes_6.0.0-2build2.diff.gz' libxfixes_6.0.0-2build2.diff.gz 17496 SHA256:d5e53994d7e42af810927740ed5d66c72c64379f47aab3d993122f4568211896
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxfixes/libxfixes_6.0.0-2build2.dsc' libxfixes_6.0.0-2build2.dsc 2343 SHA256:b6efb125ef7de85b396b106f231ec4123c3337da78136cba8a477a58ce4948a1
```

### `dpkg` source package: `libxi=2:1.8.2-2`

Binary Packages:

- `libxi6:amd64=2:1.8.2-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxi=2:1.8.2-2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxi/libxi_1.8.2-2.dsc' libxi_1.8.2-2.dsc 2280 SHA256:89ee35b62fcfc94749f22bf1cafd97cc1eac401db2d2ce0c740f49a9ef4b1579
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxi/libxi_1.8.2.orig.tar.gz' libxi_1.8.2.orig.tar.gz 611246 SHA256:5542daec66febfeb6f51d57abfa915826efe2e3af57534f4105b82240ea3188d
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxi/libxi_1.8.2.orig.tar.gz.asc' libxi_1.8.2.orig.tar.gz.asc 195 SHA256:acfaf42beee3690980632c5ec4d9948276da969f07beea6bd09312d63fa7fb45
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxi/libxi_1.8.2-2.diff.gz' libxi_1.8.2-2.diff.gz 28551 SHA256:b1dbd22fac83e329ea0f1082575b80310871aaa21aa9ebe23fe31dd6104a6c59
```

### `dpkg` source package: `libxinerama=2:1.1.4-3build2`

Binary Packages:

- `libxinerama1:amd64=2:1.1.4-3build2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxinerama=2:1.1.4-3build2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxinerama/libxinerama_1.1.4.orig.tar.gz' libxinerama_1.1.4.orig.tar.gz 380740 SHA256:64de45e18cc76b8e703cb09b3c9d28bd16e3d05d5cd99f2d630de2d62c3acc18
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxinerama/libxinerama_1.1.4-3build2.diff.gz' libxinerama_1.1.4-3build2.diff.gz 8624 SHA256:aa4fc03307d77c0d99817c66698f38274475c8586f843bb317216c891e1811ad
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxinerama/libxinerama_1.1.4-3build2.dsc' libxinerama_1.1.4-3build2.dsc 2191 SHA256:2a0e5748d0845299a68b1664cd31562b7b82d60fb9085af58c3d6d8afd176b0a
```

### `dpkg` source package: `libxkbcommon=1.13.1-1`

Binary Packages:

- `libxkbcommon-x11-0:amd64=1.13.1-1`
- `libxkbcommon0:amd64=1.13.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxkbcommon=1.13.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxkbcommon/libxkbcommon_1.13.1-1.dsc' libxkbcommon_1.13.1-1.dsc 2812 SHA256:c91012642eaa49c35e630be3be1cc56b96d25eeb20a06dbe4bdbf529c19e7913
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxkbcommon/libxkbcommon_1.13.1.orig.tar.gz' libxkbcommon_1.13.1.orig.tar.gz 1234757 SHA256:6802621c81b674e468d2346a8f6d9a48ba5c154b72434a1c9e1a3eaa29f36fb5
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxkbcommon/libxkbcommon_1.13.1-1.debian.tar.xz' libxkbcommon_1.13.1-1.debian.tar.xz 8628 SHA256:7fd4bf7ebfc4c0c8f5bf75b59f9ad8c697618f07ed52feff135113c4ab2d56c9
```

### `dpkg` source package: `libxml2=2.15.2+dfsg-0.1ubuntu0.1`

Binary Packages:

- `libxml2-16:amd64=2.15.2+dfsg-0.1ubuntu0.1`
- `libxml2-dev:amd64=2.15.2+dfsg-0.1ubuntu0.1`
- `libxml2-utils=2.15.2+dfsg-0.1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libxml2-16/copyright`, `/usr/share/doc/libxml2-dev/copyright`, `/usr/share/doc/libxml2-utils/copyright`)

- `ISC`
- `MIT-1`

Source:

```console
$ apt-get source -qq --print-uris libxml2=2.15.2+dfsg-0.1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.15.2%2bdfsg.orig.tar.xz' libxml2_2.15.2+dfsg.orig.tar.xz 2154608 SHA512:d7f79a6c9435477a6b8b85e7eab8d5c69b253e2a7fbec073418ecbbd721a2feb4ebf8e04bd21ccde499d3620238fb343789cacaa6b175d9ca64a031ae07be933
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.15.2%2bdfsg-0.1ubuntu0.1.debian.tar.xz' libxml2_2.15.2+dfsg-0.1ubuntu0.1.debian.tar.xz 37664 SHA512:6a14210cfa15e187fcde9090a08bb7e91547d4dc1ac1e61f6455f6d0eb6ca3c52b79541db392fffda88a786886354cf356f748c49b904ddd8803b9eed20b8cb4
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.15.2%2bdfsg-0.1ubuntu0.1.dsc' libxml2_2.15.2+dfsg-0.1ubuntu0.1.dsc 3262 SHA512:988b6f5f97d8d8ed1ee55c92dc5d1b978dbd663e37655e1f29a4a50a6263e86a537dbec0edabf4964eaf212a262d4f7d49de358e1e69d063aa7fbddc6122e923
```

### `dpkg` source package: `libxpm=1:3.5.17-1ubuntu0.26.04.1`

Binary Packages:

- `libxpm4:amd64=1:3.5.17-1ubuntu0.26.04.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxpm=1:3.5.17-1ubuntu0.26.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxpm/libxpm_3.5.17.orig.tar.gz' libxpm_3.5.17.orig.tar.gz 687199 SHA512:01d1b2dcbdd0c7927add19852ec1e68575d5957f043471b0aa6e2b3deb4df397e68a616e6d257ac5a38f60a836eacaae3dc0de5c4c312050673032edbc30f077
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxpm/libxpm_3.5.17.orig.tar.gz.asc' libxpm_3.5.17.orig.tar.gz.asc 833 SHA512:a14af9338551fdb37e8c6e3ac75971e173d4b6a2dbce00295e94519542063019392073d08e3f1e8105783815d9853284170bd84bb423bc40fa113f76a2b813a4
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxpm/libxpm_3.5.17-1ubuntu0.26.04.1.diff.gz' libxpm_3.5.17-1ubuntu0.26.04.1.diff.gz 51390 SHA512:99616c4f91c7ca937a4417b332518b212d42c6277860a0b906050c5088a0506ccdf6f0d526b46c89dbad6d02512159974524d1f7f1124aa75f6f5d649f375211
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxpm/libxpm_3.5.17-1ubuntu0.26.04.1.dsc' libxpm_3.5.17-1ubuntu0.26.04.1.dsc 2381 SHA512:fdba2da9098cacc5b05d6f53a5355ebc23d543eb03d66960c82d0ebd065bd0a2dd588339abae9f04f3feb2819395dca6a530c5ee8678c22a4c1cbeef8ef3586c
```

### `dpkg` source package: `libxrandr=2:1.5.4-1build1`

Binary Packages:

- `libxrandr2:amd64=2:1.5.4-1build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrandr=2:1.5.4-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrandr/libxrandr_1.5.4.orig.tar.gz' libxrandr_1.5.4.orig.tar.gz 421566 SHA256:c72c94dc3373512ceb67f578952c5d10915b38cc9ebb0fd176a49857b8048e22
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrandr/libxrandr_1.5.4.orig.tar.gz.asc' libxrandr_1.5.4.orig.tar.gz.asc 833 SHA256:2444694037ee4dc16f1886962a429516682011bbe12e3ca2c59342cbe91fa400
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrandr/libxrandr_1.5.4-1build1.diff.gz' libxrandr_1.5.4-1build1.diff.gz 21406 SHA256:5020cd3e92a586cebf7b3eeb8f5776841356283c3c3b57612bba7cc4e53a08b6
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrandr/libxrandr_1.5.4-1build1.dsc' libxrandr_1.5.4-1build1.dsc 2346 SHA256:cb18c554ec6aba14a67ea8e41581ab8d34765a7e77e2a1ec6c0dd07490d128c3
```

### `dpkg` source package: `libxrender=1:0.9.12-1build1`

Binary Packages:

- `libxrender-dev:amd64=1:0.9.12-1build1`
- `libxrender1:amd64=1:0.9.12-1build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrender=1:0.9.12-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.12.orig.tar.gz' libxrender_0.9.12.orig.tar.gz 450034 SHA256:0fff64125819c02d1102b6236f3d7d861a07b5216d8eea336c3811d31494ecf7
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.12.orig.tar.gz.asc' libxrender_0.9.12.orig.tar.gz.asc 833 SHA256:0bbd310ac3974ef398cf4d8a4b362b0b4d60ceb43e6eba393c3cc740b03816fc
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.12-1build1.diff.gz' libxrender_0.9.12-1build1.diff.gz 21468 SHA256:473c174d5df6c9378e52d092909acf42bdbd453af419893df6414294619649ac
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.12-1build1.dsc' libxrender_0.9.12-1build1.dsc 2282 SHA256:84d74d1d04750e0742521f453635b0b092b5fb13cdf3aa00c1360c6db2d68e42
```

### `dpkg` source package: `libxres=2:1.2.1-1build2`

Binary Packages:

- `libxres1:amd64=2:1.2.1-1build2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxres=2:1.2.1-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxres/libxres_1.2.1.orig.tar.gz' libxres_1.2.1.orig.tar.gz 381173 SHA256:918fb33c3897b389a1fbb51571c5c04c6b297058df286d8b48faa5af85e88bcc
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxres/libxres_1.2.1-1build2.debian.tar.xz' libxres_1.2.1-1build2.debian.tar.xz 6348 SHA256:047e7db08f326acda55e48917fe35d657f1f5d597bfd26be095e19534b149d20
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxres/libxres_1.2.1-1build2.dsc' libxres_1.2.1-1build2.dsc 2181 SHA256:d6378ff3fe30133a9cdac1fec44ce1ff879ceb02be9337be0b2b932d78d2400d
```

### `dpkg` source package: `libxshmfence=1.3.3-1build1`

Binary Packages:

- `libxshmfence1:amd64=1.3.3-1build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxshmfence=1.3.3-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxshmfence/libxshmfence_1.3.3.orig.tar.gz' libxshmfence_1.3.3.orig.tar.gz 402414 SHA256:6233ccd9fa80198835efc3039cdf8086ab2b218b17e77ebdb0a19913fcee58d3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxshmfence/libxshmfence_1.3.3.orig.tar.gz.asc' libxshmfence_1.3.3.orig.tar.gz.asc 833 SHA256:38d8dea031c58aee780117d8c1ab17569580b7ee4de2876ce3753dc7526da67d
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxshmfence/libxshmfence_1.3.3-1build1.diff.gz' libxshmfence_1.3.3-1build1.diff.gz 18903 SHA256:3fce24dfd1de07065b3b8c3d03fffdea58ff52dbff7e73ce79233d8a33d2ad2a
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxshmfence/libxshmfence_1.3.3-1build1.dsc' libxshmfence_1.3.3-1build1.dsc 2440 SHA256:75b256bae639ee146b92fcc1d62918c2f91a027f52230152454132f6a38a5351
```

### `dpkg` source package: `libxslt=1.1.45-0.1`

Binary Packages:

- `libxslt1.1:amd64=1.1.45-0.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxslt=1.1.45-0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.45-0.1.dsc' libxslt_1.1.45-0.1.dsc 2181 SHA256:1a986a081fa5e01fb0033a93395cf9617a9e589f84b8894a5f15a39a398c5f49
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.45.orig.tar.xz' libxslt_1.1.45.orig.tar.xz 1519992 SHA256:9acfe68419c4d06a45c550321b3212762d92f41465062ca4ea19e632ee5d216e
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.45-0.1.debian.tar.xz' libxslt_1.1.45-0.1.debian.tar.xz 26428 SHA256:89a7eb1d86dad60b429c75c640197d91add0dd45acd06db485769837eee8930e
```

### `dpkg` source package: `libxss=1:1.2.3-1build4`

Binary Packages:

- `libxss-dev:amd64=1:1.2.3-1build4`
- `libxss1:amd64=1:1.2.3-1build4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxss=1:1.2.3-1build4
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxss/libxss_1.2.3.orig.tar.gz' libxss_1.2.3.orig.tar.gz 385215 SHA256:4f74e7e412144591d8e0616db27f433cfc9f45aae6669c6c4bb03e6bf9be809a
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxss/libxss_1.2.3.orig.tar.gz.asc' libxss_1.2.3.orig.tar.gz.asc 705 SHA256:4e900524d56c8e7263365267efa91bb3671110c9eb28ccab58f70e2188f0b91b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxss/libxss_1.2.3-1build4.diff.gz' libxss_1.2.3-1build4.diff.gz 7452 SHA256:16eb456980adf2b0073f2eb766b086db70cca3f88b2ae73a3d78c87dc33c6b93
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxss/libxss_1.2.3-1build4.dsc' libxss_1.2.3-1build4.dsc 2306 SHA256:1dced19a1c020ef94e9894efbf0595b85f2f4bd24b1f88c20b42382258e19696
```

### `dpkg` source package: `libxt=1:1.2.1-1.3build1`

Binary Packages:

- `libxt-dev:amd64=1:1.2.1-1.3build1`
- `libxt6t64:amd64=1:1.2.1-1.3build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxt=1:1.2.1-1.3build1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.2.1.orig.tar.gz' libxt_1.2.1.orig.tar.gz 1024473 SHA256:6da1bfa9dd0ed87430a5ce95b129485086394df308998ebe34d98e378e3dfb33
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.2.1.orig.tar.gz.asc' libxt_1.2.1.orig.tar.gz.asc 358 SHA256:da406cc94c25ca6773bb37c2055e2eb5665491f7ca6dfc9ea04f0f30ea3fd098
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.2.1-1.3build1.diff.gz' libxt_1.2.1-1.3build1.diff.gz 46528 SHA256:0f06ed1421b13a868e11aff64e54ab2b50c60ab8c46e729fada99ec9d7d5b04d
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.2.1-1.3build1.dsc' libxt_1.2.1-1.3build1.dsc 2383 SHA256:84f556ef23caa97914ac7b10e2bade0dc81a017b169d72f438fd9d023a670d4e
```

### `dpkg` source package: `libxtst=2:1.2.5-1build1`

Binary Packages:

- `libxtst6:amd64=2:1.2.5-1build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxtst=2:1.2.5-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxtst/libxtst_1.2.5.orig.tar.gz' libxtst_1.2.5.orig.tar.gz 441257 SHA256:244ba6e1c5ffa44f1ba251affdfa984d55d99c94bb925a342657e5e7aaf6d39c
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxtst/libxtst_1.2.5.orig.tar.gz.asc' libxtst_1.2.5.orig.tar.gz.asc 833 SHA256:d2d8a029e6fbe2c1ebacafd6ee78bc2f41ea04440327011891145a088e0bc64e
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxtst/libxtst_1.2.5-1build1.diff.gz' libxtst_1.2.5-1build1.diff.gz 16774 SHA256:bbfde030eeee5d81e13c138ea3f9633a973b065991a4bea3a1a4b78678ff6120
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxtst/libxtst_1.2.5-1build1.dsc' libxtst_1.2.5-1build1.dsc 2357 SHA256:bb6a6d9dbbb77d182e2f629df9f45748a2e8a19dc619dbc5f9de4f392ce2e240
```

### `dpkg` source package: `libxxf86vm=1:1.1.4-2`

Binary Packages:

- `libxxf86vm1:amd64=1:1.1.4-2`

Licenses: (parsed from: `/usr/share/doc/libxxf86vm1/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libxxf86vm=1:1.1.4-2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxxf86vm/libxxf86vm_1.1.4-2.dsc' libxxf86vm_1.1.4-2.dsc 2033 SHA256:9a5cd7d902e445ae2e5ff9e5491a188bf2fff53420ee6e6a49546f697eac9f11
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxxf86vm/libxxf86vm_1.1.4.orig.tar.gz' libxxf86vm_1.1.4.orig.tar.gz 363146 SHA256:5108553c378a25688dcb57dca383664c36e293d60b1505815f67980ba9318a99
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxxf86vm/libxxf86vm_1.1.4-2.debian.tar.xz' libxxf86vm_1.1.4-2.debian.tar.xz 10188 SHA256:120e8168c269d030d2c02fcaad1ae3b80227df2474289dab6cf2c1c22a1c1983
```

### `dpkg` source package: `libyaml=0.2.5-2build3`

Binary Packages:

- `libyaml-0-2:amd64=0.2.5-2build3`
- `libyaml-dev:amd64=0.2.5-2build3`

Licenses: (parsed from: `/usr/share/doc/libyaml-0-2/copyright`, `/usr/share/doc/libyaml-dev/copyright`)

- `Expat`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris libyaml=0.2.5-2build3
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.2.5.orig.tar.gz' libyaml_0.2.5.orig.tar.gz 85055 SHA256:fa240dbf262be053f3898006d502d514936c818e422afdcf33921c63bed9bf2e
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.2.5-2build3.debian.tar.xz' libyaml_0.2.5-2build3.debian.tar.xz 5860 SHA256:d872a2fae6ffca100c7f26ea73c3350278970a9794125f40a5032848d1b54ccb
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.2.5-2build3.dsc' libyaml_0.2.5-2build3.dsc 2064 SHA256:d2465e5dfdb415835f4bdf39141630016b7e3eff63e5f30126df097c5d96bb65
```

### `dpkg` source package: `libyuv=0.0.1922.20260106-1`

Binary Packages:

- `libyuv-dev:amd64=0.0.1922.20260106-1`
- `libyuv0:amd64=0.0.1922.20260106-1`

Licenses: (parsed from: `/usr/share/doc/libyuv-dev/copyright`, `/usr/share/doc/libyuv0/copyright`)

- `BSD-3-Clause`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libyuv=0.0.1922.20260106-1
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyuv/libyuv_0.0.1922.20260106-1.dsc' libyuv_0.0.1922.20260106-1.dsc 2322 SHA256:0c1b89d41c27972d9827656f03f125f35d9c7b4aa197d50753f4bc2ecff9f918
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyuv/libyuv_0.0.1922.20260106.orig.tar.xz' libyuv_0.0.1922.20260106.orig.tar.xz 383440 SHA256:1212f6fd9001d8c06d665416443f7f3cfae85ff34ad3642df179f035a4b69692
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyuv/libyuv_0.0.1922.20260106-1.debian.tar.xz' libyuv_0.0.1922.20260106-1.debian.tar.xz 7212 SHA256:c5919ebdd494fc86de6edb05ef32e8b58ecc61ba368b3de209eb8b8379c2c78b
```

### `dpkg` source package: `libzstd=1.5.7+dfsg-3`

Binary Packages:

- `libzstd-dev:amd64=1.5.7+dfsg-3`
- `libzstd1:amd64=1.5.7+dfsg-3`

Licenses: (parsed from: `/usr/share/doc/libzstd-dev/copyright`, `/usr/share/doc/libzstd1/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris libzstd=1.5.7+dfsg-3
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.5.7%2bdfsg-3.dsc' libzstd_1.5.7+dfsg-3.dsc 2490 SHA256:e32b7bb90ac7b312238add6abb77023cec6f59385b1c9a78b41b69ea2ef5001a
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.5.7%2bdfsg.orig.tar.xz' libzstd_1.5.7+dfsg.orig.tar.xz 1834780 SHA256:0c092ef267edce57ba7f3f2645c861f72eaf5e76273c6c3632869423464b90a5
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.5.7%2bdfsg-3.debian.tar.xz' libzstd_1.5.7+dfsg-3.debian.tar.xz 23164 SHA256:ada18b02a46878f2f0a845fd003179ab9591f7f96f0b984db06a024ab46ae81f
```

### `dpkg` source package: `linux=7.0.0-30.30`

Binary Packages:

- `linux-libc-dev:amd64=7.0.0-30.30`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris linux=7.0.0-30.30
'http://archive.ubuntu.com/ubuntu/pool/main/l/linux/linux_7.0.0.orig.tar.gz' linux_7.0.0.orig.tar.gz 254937830 SHA512:d7906686b560bf771c919278f44285e0d646baf20e7a794b17a1759b49c122d373bdfe2069fbe0baa5b57fe49d5b7eb534939cd3cce4ca71d975d1ed1551587a
'http://archive.ubuntu.com/ubuntu/pool/main/l/linux/linux_7.0.0-30.30.diff.gz' linux_7.0.0-30.30.diff.gz 2015294 SHA512:3d24178c972124af3ac31b5a876668ba545cfff69bb3fcedbbf8157d30216ba7d42c5752d1a6caa2cad1e6264074b45b7010d21863614559422d235c1fc4613a
'http://archive.ubuntu.com/ubuntu/pool/main/l/linux/linux_7.0.0-30.30.dsc' linux_7.0.0-30.30.dsc 7884 SHA512:63e23b31b4f749613f7ba3a8229540d5405eca3c0b7251950d7c0a8aa387aa6f011a145cc981d884ea1aa242d464f11909e42a417f518864fc18cc04c0ff3768
```

### `dpkg` source package: `llvm-toolchain-21=1:21.1.8-6ubuntu1`

Binary Packages:

- `libllvm21:amd64=1:21.1.8-6ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libllvm21/copyright`)

- `APACHE-2-LLVM-EXCEPTIONS`
- `Apache-2.0`
- `BSD-3-Clause`
- `BSD-3-clause`
- `MIT`
- `solar-public-domain`

Source:

```console
$ apt-get source -qq --print-uris llvm-toolchain-21=1:21.1.8-6ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/l/llvm-toolchain-21/llvm-toolchain-21_21.1.8.orig.tar.xz' llvm-toolchain-21_21.1.8.orig.tar.xz 184897296 SHA256:d983d6b6ffce1d413a1910a9fd00f794bb99a5ae4c4e7d23d18a99254640f4eb
'http://archive.ubuntu.com/ubuntu/pool/main/l/llvm-toolchain-21/llvm-toolchain-21_21.1.8-6ubuntu1.debian.tar.xz' llvm-toolchain-21_21.1.8-6ubuntu1.debian.tar.xz 175888 SHA256:4b569b7f7bbadb83e75e37bb810ffffffa0fcdc4e02a51d6ddf7d10162a05a7d
'http://archive.ubuntu.com/ubuntu/pool/main/l/llvm-toolchain-21/llvm-toolchain-21_21.1.8-6ubuntu1.dsc' llvm-toolchain-21_21.1.8-6ubuntu1.dsc 14530 SHA256:2c11b3229557161cf15054b30627765b274fda20c7294878b10eb3cc050bc6e9
```

### `dpkg` source package: `lm-sensors=1:3.6.2-2build1`

Binary Packages:

- `libsensors-config=1:3.6.2-2build1`
- `libsensors5:amd64=1:3.6.2-2build1`

Licenses: (parsed from: `/usr/share/doc/libsensors-config/copyright`, `/usr/share/doc/libsensors5/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `Linux-man-pages-copyleft`

Source:

```console
$ apt-get source -qq --print-uris lm-sensors=1:3.6.2-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lm-sensors/lm-sensors_3.6.2.orig.tar.gz' lm-sensors_3.6.2.orig.tar.gz 292327 SHA256:c6a0587e565778a40d88891928bf8943f27d353f382d5b745a997d635978a8f0
'http://archive.ubuntu.com/ubuntu/pool/main/l/lm-sensors/lm-sensors_3.6.2-2build1.debian.tar.xz' lm-sensors_3.6.2-2build1.debian.tar.xz 35016 SHA256:5687c29f5a5ac246e23007e3e9565c593723e7e69c67e243434eacbf7a21e72c
'http://archive.ubuntu.com/ubuntu/pool/main/l/lm-sensors/lm-sensors_3.6.2-2build1.dsc' lm-sensors_3.6.2-2build1.dsc 2189 SHA256:8c33e81e346088b3c89841d883ac3a28a8feb09b0223a04d568fddf747244437
```

### `dpkg` source package: `lsb-release-minimal=12.1-2build1`

Binary Packages:

- `lsb-release=12.1-2build1`

Licenses: (parsed from: `/usr/share/doc/lsb-release/copyright`)

- `0BSD`
- `ISC`

Source:

```console
$ apt-get source -qq --print-uris lsb-release-minimal=12.1-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb-release-minimal/lsb-release-minimal_12.1.orig.tar.gz' lsb-release-minimal_12.1.orig.tar.gz 5033 SHA256:1dcf4ba318203db771bd0f2e47442f84e36241c8aa4633f1e8431a6d74a49071
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb-release-minimal/lsb-release-minimal_12.1-2build1.debian.tar.xz' lsb-release-minimal_12.1-2build1.debian.tar.xz 3648 SHA256:95c03c7d87a611a1f78cf634591e4eb4920ac51ab8fa2c4920c36439945bfaf8
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb-release-minimal/lsb-release-minimal_12.1-2build1.dsc' lsb-release-minimal_12.1-2build1.dsc 2197 SHA256:da35450c05dd47adfc6463fadd3ec136e5698cc9fb6d5792572d17abfcb58970
```

### `dpkg` source package: `lto-disabled-list=79`

Binary Packages:

- `lto-disabled-list=79`

Licenses: (parsed from: `/usr/share/doc/lto-disabled-list/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lto-disabled-list=79
'http://archive.ubuntu.com/ubuntu/pool/main/l/lto-disabled-list/lto-disabled-list_79.tar.xz' lto-disabled-list_79.tar.xz 14576 SHA512:c5c0090d27777df78ce4217be67e960068ca020b59fa5a156408131436a2732e16ff3cbfd53653e3c6867bb53bada009dfc6b6f17d6dbbf81310fd8488d7ad01
'http://archive.ubuntu.com/ubuntu/pool/main/l/lto-disabled-list/lto-disabled-list_79.dsc' lto-disabled-list_79.dsc 1441 SHA512:e116038a4f5c85e0234c86d8b6d1e7b595cd9607a77cda60bbcbb6babf8f0d3b00fb76e3c0da5671e1a8f19c8896e69249a15adb36e05ce7f70f128027231f29
```

### `dpkg` source package: `ltt-control=2.14.1-1build1`

Binary Packages:

- `liblttng-ctl0t64:amd64=2.14.1-1build1`
- `lttng-tools=2.14.1-1build1`

Licenses: (parsed from: `/usr/share/doc/liblttng-ctl0t64/copyright`, `/usr/share/doc/lttng-tools/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `BSL-1.0`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris ltt-control=2.14.1-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/l/ltt-control/ltt-control_2.14.1.orig.tar.bz2' ltt-control_2.14.1.orig.tar.bz2 3261147 SHA256:0e68eb27923621c4bc127cfce40422d28cf7e473fedf6229ae6c32ba5c5b7c6d
'http://archive.ubuntu.com/ubuntu/pool/universe/l/ltt-control/ltt-control_2.14.1.orig.tar.bz2.asc' ltt-control_2.14.1.orig.tar.bz2.asc 833 SHA256:46b81781ffe172860dce1ac284b51c05000e13d6db24f5637f01c01a0a3d544e
'http://archive.ubuntu.com/ubuntu/pool/universe/l/ltt-control/ltt-control_2.14.1-1build1.debian.tar.xz' ltt-control_2.14.1-1build1.debian.tar.xz 29164 SHA256:bca63bf40a69c9ba2a1e93f5a85ad84c23e6fb8e074752103c4c692684babdd1
'http://archive.ubuntu.com/ubuntu/pool/universe/l/ltt-control/ltt-control_2.14.1-1build1.dsc' ltt-control_2.14.1-1build1.dsc 2766 SHA256:22d31c720d3e4c0c97074298832259d924cf23f018635184c759c9cfb5e374ed
```

### `dpkg` source package: `lxml=6.0.2-1build1`

Binary Packages:

- `python3-lxml:amd64=6.0.2-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-lxml/copyright`)

- `GPL`
- `GPL2`
- `later`

Source:

```console
$ apt-get source -qq --print-uris lxml=6.0.2-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lxml/lxml_6.0.2.orig.tar.gz' lxml_6.0.2.orig.tar.gz 4073426 SHA256:cd79f3367bd74b317dda655dc8fcfa304d9eb6e4fb06b7168c5cf27f96e0cd62
'http://archive.ubuntu.com/ubuntu/pool/main/l/lxml/lxml_6.0.2-1build1.debian.tar.xz' lxml_6.0.2-1build1.debian.tar.xz 8660 SHA256:cf022619cfadda335985045a24cae41c6f0623b60176afb2d83f5a9aee615da7
'http://archive.ubuntu.com/ubuntu/pool/main/l/lxml/lxml_6.0.2-1build1.dsc' lxml_6.0.2-1build1.dsc 1930 SHA256:f212a6b71b855631125860706b71d79fa4d323e6873d559687a5f68dda9b59c4
```

### `dpkg` source package: `lz4=1.10.0-8`

Binary Packages:

- `liblz4-1:amd64=1.10.0-8`
- `liblz4-dev:amd64=1.10.0-8`

Licenses: (parsed from: `/usr/share/doc/liblz4-1/copyright`, `/usr/share/doc/liblz4-dev/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lz4=1.10.0-8
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.10.0-8.dsc' lz4_1.10.0-8.dsc 2062 SHA256:4f8a893c7aeee9516aa35a95cbaa293a867d1c57811b2e80ac9a4dd0dc0c51d7
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.10.0.orig.tar.gz' lz4_1.10.0.orig.tar.gz 387114 SHA256:537512904744b35e232912055ccf8ec66d768639ff3abe5788d90d792ec5f48b
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.10.0-8.debian.tar.xz' lz4_1.10.0-8.debian.tar.xz 9676 SHA256:66d57e79483da61dee090b37b005fe43657846472c854709220621434df8e84c
```

### `dpkg` source package: `m4=1.4.21-1`

Binary Packages:

- `m4=1.4.21-1`

Licenses: (parsed from: `/usr/share/doc/m4/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris m4=1.4.21-1
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.21-1.dsc' m4_1.4.21-1.dsc 1783 SHA256:b2fcae1991d63b8cfd32f20937b0c2f956702e673b405f7c9fa46b8320b921ff
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.21.orig.tar.xz' m4_1.4.21.orig.tar.xz 2080016 SHA256:f25c6ab51548a73a75558742fb031e0625d6485fe5f9155949d6486a2408ab66
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.21.orig.tar.xz.asc' m4_1.4.21.orig.tar.xz.asc 488 SHA256:e8c5fb8a54f98c9f9504423ce99279a4e4365e30010a67e13e099a3e8242b8f2
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.21-1.debian.tar.xz' m4_1.4.21-1.debian.tar.xz 17296 SHA256:000df03068f06b7a475b4c2652bbd73a54b5df371687567d19b8a3728de726cd
```

### `dpkg` source package: `make-dfsg=4.4.1-3`

Binary Packages:

- `make=4.4.1-3`

Licenses: (parsed from: `/usr/share/doc/make/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris make-dfsg=4.4.1-3
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.4.1-3.dsc' make-dfsg_4.4.1-3.dsc 1976 SHA256:731cf705bc0d727ddd3c34d717e176d8713efecea83902534502c888edb59c85
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.4.1.orig.tar.xz' make-dfsg_4.4.1.orig.tar.xz 1125180 SHA256:3b16b00ea1079af9f8096bbc71ff7cc00c249fc6a862003da3c42308a0adb0fe
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.4.1-3.debian.tar.xz' make-dfsg_4.4.1-3.debian.tar.xz 44236 SHA256:315b591ae5ead58c9f904c532d939c7658073e38ff93f7c1694db83683796511
```

### `dpkg` source package: `mawk=1.3.4.20260129-1`

Binary Packages:

- `mawk=1.3.4.20260129-1`

Licenses: (parsed from: `/usr/share/doc/mawk/copyright`)

- `CC-BY-3.0`
- `GPL-2`
- `GPL-2.0-only`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris mawk=1.3.4.20260129-1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20260129-1.dsc' mawk_1.3.4.20260129-1.dsc 2969 SHA256:874701c6d96fdd5458a38a7ff532fdd299a154a67b3bdf29ea4c9648ddac2702
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20260129.orig.tar.gz' mawk_1.3.4.20260129.orig.tar.gz 436702 SHA256:a71fb7efea5a63770d8fb71321ef6ae7afe0592f1aa7f7e2b496c26ccbb392a4
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20260129.orig.tar.gz.asc' mawk_1.3.4.20260129.orig.tar.gz.asc 729 SHA256:ff191391d1132f1bff2f188e376e325c81052c4d5e5657805203afc4d88a56a0
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20260129-1.debian.tar.xz' mawk_1.3.4.20260129-1.debian.tar.xz 16116 SHA256:0174c58af8d10f6b985723976b49dcac07ba279fd54c358a703d464904be16c5
```

### `dpkg` source package: `mbedtls=3.6.5-0.1ubuntu2`

Binary Packages:

- `libmbedcrypto16:amd64=3.6.5-0.1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libmbedcrypto16/copyright`)

- `Apache-2.0`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mbedtls=3.6.5-0.1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mbedtls/mbedtls_3.6.5.orig.tar.bz2' mbedtls_3.6.5.orig.tar.bz2 5367178 SHA256:4a11f1777bb95bf4ad96721cac945a26e04bf19f57d905f241fe77ebeddf46d8
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mbedtls/mbedtls_3.6.5-0.1ubuntu2.debian.tar.xz' mbedtls_3.6.5-0.1ubuntu2.debian.tar.xz 20732 SHA256:c5dfbb9c1f344fc2f7548377e20a03ba597239fb5c6400c54af4d40481d44694
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mbedtls/mbedtls_3.6.5-0.1ubuntu2.dsc' mbedtls_3.6.5-0.1ubuntu2.dsc 2486 SHA256:6ccd5703166d133c2bef0d109a1f78b73c4d4b65a2c4912df0f758155d33c19e
```

### `dpkg` source package: `md4c=0.5.2-2build1`

Binary Packages:

- `libmd4c0:amd64=0.5.2-2build1`

Licenses: (parsed from: `/usr/share/doc/libmd4c0/copyright`)

- `BSD-2-clause`
- `CC-BY-SA-4.0`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris md4c=0.5.2-2build1
'http://archive.ubuntu.com/ubuntu/pool/universe/m/md4c/md4c_0.5.2.orig.tar.gz' md4c_0.5.2.orig.tar.gz 237973 SHA256:55d0111d48fb11883aaee91465e642b8b640775a4d6993c2d0e7a8092758ef21
'http://archive.ubuntu.com/ubuntu/pool/universe/m/md4c/md4c_0.5.2-2build1.debian.tar.xz' md4c_0.5.2-2build1.debian.tar.xz 9944 SHA256:3fbb1039a914a5fc5d0495647567fa42ad1f03721ea60950a94f56ee0c054b19
'http://archive.ubuntu.com/ubuntu/pool/universe/m/md4c/md4c_0.5.2-2build1.dsc' md4c_0.5.2-2build1.dsc 2274 SHA256:935928866b64fff1b0c21e79bbecf27cb190c4a22266f39e40353165c4885d79
```

### `dpkg` source package: `media-types=14.0.0build1`

Binary Packages:

- `media-types=14.0.0build1`

Licenses: (parsed from: `/usr/share/doc/media-types/copyright`)

- `ad-hoc`

Source:

```console
$ apt-get source -qq --print-uris media-types=14.0.0build1
'http://archive.ubuntu.com/ubuntu/pool/main/m/media-types/media-types_14.0.0build1.tar.xz' media-types_14.0.0build1.tar.xz 65280 SHA256:6fabdef904458a2d88a30851e9d85a0ba2302066576e10a91ec491af3ec0a24f
'http://archive.ubuntu.com/ubuntu/pool/main/m/media-types/media-types_14.0.0build1.dsc' media-types_14.0.0build1.dsc 1671 SHA256:274c82804a0267b72f2394c01d1d240fe47267350bb04adcbd4c646cd235d264
```

### `dpkg` source package: `mesa=26.0.3-1ubuntu1`

Binary Packages:

- `libegl-mesa0:amd64=26.0.3-1ubuntu1`
- `libgbm1:amd64=26.0.3-1ubuntu1`
- `libgl1-mesa-dri:amd64=26.0.3-1ubuntu1`
- `libglx-mesa0:amd64=26.0.3-1ubuntu1`
- `mesa-libgallium:amd64=26.0.3-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libegl-mesa0/copyright`, `/usr/share/doc/libgbm1/copyright`, `/usr/share/doc/libgl1-mesa-dri/copyright`, `/usr/share/doc/libglx-mesa0/copyright`, `/usr/share/doc/mesa-libgallium/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `BSD-3-google`
- `BSL`
- `GPL`
- `GPL-1`
- `GPL-1+`
- `GPL-2`
- `Khronos`
- `MIT`
- `MLAA`
- `SGI`

Source:

```console
$ apt-get source -qq --print-uris mesa=26.0.3-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mesa/mesa_26.0.3.orig.tar.xz' mesa_26.0.3.orig.tar.xz 43855948 SHA256:ddb7443d328e89aa45b4b6b80f077bf937f099daeca8ba48cabe32aab769e134
'http://archive.ubuntu.com/ubuntu/pool/main/m/mesa/mesa_26.0.3.orig.tar.xz.asc' mesa_26.0.3.orig.tar.xz.asc 488 SHA256:bd65d09b963df2acd5734d3a30c9084e86c4f41296bc07363fa99f976b07ab27
'http://archive.ubuntu.com/ubuntu/pool/main/m/mesa/mesa_26.0.3-1ubuntu1.debian.tar.xz' mesa_26.0.3-1ubuntu1.debian.tar.xz 106628 SHA256:010bb3c0beac97d1b298ae0943feb811445ab20c2b2e853c62bf515f72eb5960
'http://archive.ubuntu.com/ubuntu/pool/main/m/mesa/mesa_26.0.3-1ubuntu1.dsc' mesa_26.0.3-1ubuntu1.dsc 6043 SHA256:d55740730ed97a89c174dee72cc72353148831be9ea214fe4a8d473cd22de144
```

### `dpkg` source package: `more-itertools=10.8.0-1build1`

Binary Packages:

- `python3-more-itertools=10.8.0-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-more-itertools/copyright`)

- `MIT-style`

Source:

```console
$ apt-get source -qq --print-uris more-itertools=10.8.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/m/more-itertools/more-itertools_10.8.0.orig.tar.gz' more-itertools_10.8.0.orig.tar.gz 131587 SHA256:e273f2f096101b50f92b9107b2d3021b00ee0a3cb0a7c021f70d4ec358bb8b56
'http://archive.ubuntu.com/ubuntu/pool/main/m/more-itertools/more-itertools_10.8.0-1build1.debian.tar.xz' more-itertools_10.8.0-1build1.debian.tar.xz 3800 SHA256:dce36478734d89639add0d245ff602ccedff8a8a1eaf0652d0670b563caab755
'http://archive.ubuntu.com/ubuntu/pool/main/m/more-itertools/more-itertools_10.8.0-1build1.dsc' more-itertools_10.8.0-1build1.dsc 2134 SHA256:20c91eed97242a411848be298e152859641e0c78e597d135428c0a923c33500d
```

### `dpkg` source package: `mpclib3=1.3.1-3`

Binary Packages:

- `libmpc3:amd64=1.3.1-3`

Licenses: (parsed from: `/usr/share/doc/libmpc3/copyright`)

- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpclib3=1.3.1-3
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.3.1-3.dsc' mpclib3_1.3.1-3.dsc 2003 SHA512:561ed194930220d9a92b5d371a87d540582e3f7de26ee0227cb2edf9b9ae1f022d0f59d5cbaf4769dbd841dcba838951a57269cde7d81f762746425a15e4bdca
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.3.1.orig.tar.gz' mpclib3_1.3.1.orig.tar.gz 773573 SHA512:4bab4ef6076f8c5dfdc99d810b51108ced61ea2942ba0c1c932d624360a5473df20d32b300fc76f2ba4aa2a97e1f275c9fd494a1ba9f07c4cb2ad7ceaeb1ae97
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.3.1-3.debian.tar.xz' mpclib3_1.3.1-3.debian.tar.xz 4672 SHA512:4d14400df48308b3258d2f5df6879dffae0f969cc55ec9f8d4efd126b561dde431357c2f6b54e0fadbff02f917ad7038c15120dde13e4ec90b879d26605736d0
```

### `dpkg` source package: `mpfr4=4.2.2-3`

Binary Packages:

- `libmpfr6:amd64=4.2.2-3`

Licenses: (parsed from: `/usr/share/doc/libmpfr6/copyright`)

- `GFDL-1.2`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpfr4=4.2.2-3
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_4.2.2-3.dsc' mpfr4_4.2.2-3.dsc 2081 SHA512:c32081b29dfafe99ec2b9eec27e953772d456f1d913c900c6e604ddde553fbcec0908cb4349b66e79dcdc2f61dc9aa0b50f557809bdf061aaf1637d07f245271
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_4.2.2.orig.tar.xz' mpfr4_4.2.2.orig.tar.xz 1505596 SHA512:eb9e7f51b5385fb349cc4fba3a45ffdf0dd53be6dfc74932dc01258158a10514667960c530c47dd9dfc5aa18be2bd94859d80499844c5713710581e6ac6259a9
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_4.2.2-3.debian.tar.xz' mpfr4_4.2.2-3.debian.tar.xz 12652 SHA512:946f51555d13014ea9b80a57f2e9c7945e0877acbd1df599a8ec06a2852b4062b26660c5d5b6bb7ca7bb675343c9db3f5455c1a9ee5410903406f0b4addc17bd
```

### `dpkg` source package: `mpg123=1.33.3-2`

Binary Packages:

- `libmpg123-0t64:amd64=1.33.3-2`

Licenses: (parsed from: `/usr/share/doc/libmpg123-0t64/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris mpg123=1.33.3-2
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpg123/mpg123_1.33.3-2.dsc' mpg123_1.33.3-2.dsc 2047 SHA256:beebaa290a91ffb665898a53bc0cd11b8f614d2495958c687272469acfd2f6c7
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpg123/mpg123_1.33.3.orig.tar.bz2' mpg123_1.33.3.orig.tar.bz2 1121537 SHA256:6a0c6472dd156e213c2068f40115ebbb73978c2d873e66bae2a250e2d2198d26
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpg123/mpg123_1.33.3.orig.tar.bz2.asc' mpg123_1.33.3.orig.tar.bz2.asc 566 SHA256:4c0d9e6164ab293a294662b16972399bc4ad5e4ea383f10072e9eb5dd9cd57ca
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpg123/mpg123_1.33.3-2.debian.tar.xz' mpg123_1.33.3-2.debian.tar.xz 25752 SHA256:0c16070401230335d8a7a772feb3e642ec2856a8dfa9533716edf31a1e6579c8
```

### `dpkg` source package: `mpi-defaults=1.20`

Binary Packages:

- `mpi-default-bin=1.20`
- `mpi-default-dev=1.20`

Licenses: (parsed from: `/usr/share/doc/mpi-default-bin/copyright`, `/usr/share/doc/mpi-default-dev/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mpi-defaults=1.20
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mpi-defaults/mpi-defaults_1.20.dsc' mpi-defaults_1.20.dsc 2624 SHA256:7df83d9a07957adc4df00d337e260c688ac6d46d5ef7e592fa33b5ab453da437
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mpi-defaults/mpi-defaults_1.20.tar.xz' mpi-defaults_1.20.tar.xz 6744 SHA256:1c8876241babf74768cd0d3838752abd83dc2e4f2cb853bbf1bf1f84bf263cf9
```

### `dpkg` source package: `mpi4py=4.1.1-1ubuntu2`

Binary Packages:

- `python3-mpi4py=4.1.1-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/python3-mpi4py/copyright`)

- `BSD-2`
- `BSD-3`

Source:

```console
$ apt-get source -qq --print-uris mpi4py=4.1.1-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mpi4py/mpi4py_4.1.1.orig.tar.gz' mpi4py_4.1.1.orig.tar.gz 516833 SHA256:88ff8a8ae285097d2121604edaa332bacd9759cf716653bb69bbe18625b0bce2
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mpi4py/mpi4py_4.1.1-1ubuntu2.debian.tar.xz' mpi4py_4.1.1-1ubuntu2.debian.tar.xz 15176 SHA256:d4df23189003ee9b05f6ae6c53dbe47b15fcef3ef4d28246e90790d121c5d0a6
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mpi4py/mpi4py_4.1.1-1ubuntu2.dsc' mpi4py_4.1.1-1ubuntu2.dsc 2660 SHA256:a6b3ead7b0d64b07ce1a75f921bffcfba751b84eff364c6a202fe6cda45ca44d
```

### `dpkg` source package: `mtdev=1.1.7-1build1`

Binary Packages:

- `libmtdev1t64:amd64=1.1.7-1build1`

Licenses: (parsed from: `/usr/share/doc/libmtdev1t64/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris mtdev=1.1.7-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mtdev/mtdev_1.1.7.orig.tar.gz' mtdev_1.1.7.orig.tar.gz 369052 SHA256:a55bd02a9af4dd266c0042ec608744fff3a017577614c057da09f1f4566ea32c
'http://archive.ubuntu.com/ubuntu/pool/main/m/mtdev/mtdev_1.1.7-1build1.debian.tar.xz' mtdev_1.1.7-1build1.debian.tar.xz 6424 SHA256:0445d9a17ef20e21302ce5eaeb32149b17896fe8612a3e2dd9db665c35dfb80d
'http://archive.ubuntu.com/ubuntu/pool/main/m/mtdev/mtdev_1.1.7-1build1.dsc' mtdev_1.1.7-1build1.dsc 2059 SHA256:595d0c2592830e04031fba877fe219263a367e6bb81e5150a9d01f3b1a5387fa
```

### `dpkg` source package: `munge=0.5.16-1.1`

Binary Packages:

- `libmunge2:amd64=0.5.16-1.1`

Licenses: (parsed from: `/usr/share/doc/libmunge2/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+-and-LGPL-3+`
- `ISC`
- `LGPL`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris munge=0.5.16-1.1
'http://archive.ubuntu.com/ubuntu/pool/universe/m/munge/munge_0.5.16-1.1.dsc' munge_0.5.16-1.1.dsc 2132 SHA256:3951388777e5713e63f404602c4877aadc4e3f9f0ebfedfc13c96570dd7d989a
'http://archive.ubuntu.com/ubuntu/pool/universe/m/munge/munge_0.5.16.orig.tar.gz' munge_0.5.16.orig.tar.gz 264415 SHA256:fa27205d6d29ce015b0d967df8f3421067d7058878e75d0d5ec3d91f4d32bb57
'http://archive.ubuntu.com/ubuntu/pool/universe/m/munge/munge_0.5.16-1.1.debian.tar.xz' munge_0.5.16-1.1.debian.tar.xz 12292 SHA256:f6c7faf735ea94b7f5b58fb23f3000c394c0df74b3081ffe22269dfc266267d3
```

### `dpkg` source package: `muparser=2.3.4-2`

Binary Packages:

- `libmuparser-dev:amd64=2.3.4-2`
- `libmuparser2v5:amd64=2.3.4-2`

Licenses: (parsed from: `/usr/share/doc/libmuparser-dev/copyright`, `/usr/share/doc/libmuparser2v5/copyright`)

- `Expat`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris muparser=2.3.4-2
'http://archive.ubuntu.com/ubuntu/pool/universe/m/muparser/muparser_2.3.4-2.dsc' muparser_2.3.4-2.dsc 2189 SHA256:50d8c1f677751d66de084ff2e8929776d2ccadd820021aea7b4681b392cdef5e
'http://archive.ubuntu.com/ubuntu/pool/universe/m/muparser/muparser_2.3.4.orig.tar.gz' muparser_2.3.4.orig.tar.gz 112723 SHA256:b9aca98eabeb34458d272ff8f2dd3df7fbd61b4b612c49eb6dcc9468109aac88
'http://archive.ubuntu.com/ubuntu/pool/universe/m/muparser/muparser_2.3.4-2.debian.tar.xz' muparser_2.3.4-2.debian.tar.xz 7884 SHA256:11d13899ad2d4604b30ccdd7e1ee1f8f6a8c2b47fca2d6fd3073e78b54b4dd37
```

### `dpkg` source package: `mypy=1.19.1-5build1`

Binary Packages:

- `python3-mypy=1.19.1-5build1`

Licenses: (parsed from: `/usr/share/doc/python3-mypy/copyright`)

- `Apache-2.0`
- `BSD-3-clause`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris mypy=1.19.1-5build1
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mypy/mypy_1.19.1.orig.tar.gz' mypy_1.19.1.orig.tar.gz 3582404 SHA256:19d88bb05303fe63f71dd2c6270daca27cb9401c4ca8255fe50d1d920e0eb9ba
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mypy/mypy_1.19.1-5build1.debian.tar.xz' mypy_1.19.1-5build1.debian.tar.xz 19880 SHA256:be5105f05819f46c95717f49c719329392282a110fc30aa93de356309d7945f4
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mypy/mypy_1.19.1-5build1.dsc' mypy_1.19.1-5build1.dsc 3147 SHA256:4321c08e71c6cf9b7440b00939e9c51776716c2eb6fa43c3bb4db01588e63d9d
```

### `dpkg` source package: `mysql-8.4=8.4.10-0ubuntu0.26.04.1`

Binary Packages:

- `libmysqlclient-dev=8.4.10-0ubuntu0.26.04.1`
- `libmysqlclient24:amd64=8.4.10-0ubuntu0.26.04.1`

Licenses: (parsed from: `/usr/share/doc/libmysqlclient-dev/copyright`, `/usr/share/doc/libmysqlclient24/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `Boost-1.0`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `LGPL`
- `LGPL-2`
- `public-domain`
- `zlib/libpng`

Source:

```console
$ apt-get source -qq --print-uris mysql-8.4=8.4.10-0ubuntu0.26.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-8.4/mysql-8.4_8.4.10.orig.tar.gz' mysql-8.4_8.4.10.orig.tar.gz 479076067 SHA512:0e85b84bee32414959755a1f59c997bc4a7c81fe3a12267a7963cd2c6607ebccfd49ab23c872a429a80e319c65ba92c104f0b4445494e90c4aacab32b6cc6d9e
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-8.4/mysql-8.4_8.4.10.orig.tar.gz.asc' mysql-8.4_8.4.10.orig.tar.gz.asc 833 SHA512:ac206858786943bbe32b9f07bd893ae8d5d4a7528039aa0f0f2b17a1cc01a791c9fcadc1ad0626f26951e59b57a87431c6cce91a0496b629b9b10e1a0261b2ee
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-8.4/mysql-8.4_8.4.10-0ubuntu0.26.04.1.debian.tar.xz' mysql-8.4_8.4.10-0ubuntu0.26.04.1.debian.tar.xz 135996 SHA512:dd03a90f78f60b324f6581058951b5054e98248ce992bdce85dbbc980285008320877a1a47028e513cf03223a5495152f1ae7d2fe67424af22a9ed1a4c04db8e
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-8.4/mysql-8.4_8.4.10-0ubuntu0.26.04.1.dsc' mysql-8.4_8.4.10-0ubuntu0.26.04.1.dsc 3806 SHA512:080c9dfe7949344ab922089a79aaeec0e03b0a169a1f84a1252bd782ff9b620fb98b9dd67809c98fd92254a0a38e6c9b26b7e5f2211d02a8e72de84b49b68125
```

### `dpkg` source package: `mysql-defaults=1.1.1ubuntu2`

Binary Packages:

- `default-libmysqlclient-dev:amd64=1.1.1ubuntu2`
- `mysql-common=5.8+1.1.1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/default-libmysqlclient-dev/copyright`, `/usr/share/doc/mysql-common/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mysql-defaults=1.1.1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-defaults/mysql-defaults_1.1.1ubuntu2.tar.xz' mysql-defaults_1.1.1ubuntu2.tar.xz 7628 SHA256:df9cf9688888108320dda922aa598fadfca98f687c5353e78ec5e573c03fbc11
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-defaults/mysql-defaults_1.1.1ubuntu2.dsc' mysql-defaults_1.1.1ubuntu2.dsc 2309 SHA256:efe3d252d4481270f485ac155b0312bfab41b43f589991db8fe381caecc787ac
```

### `dpkg` source package: `ncurses=6.6+20251231-1`

Binary Packages:

- `libncursesw6:amd64=6.6+20251231-1`
- `libtinfo6:amd64=6.6+20251231-1`
- `ncurses-base=6.6+20251231-1`
- `ncurses-bin=6.6+20251231-1`

Licenses: (parsed from: `/usr/share/doc/libncursesw6/copyright`, `/usr/share/doc/libtinfo6/copyright`, `/usr/share/doc/ncurses-base/copyright`, `/usr/share/doc/ncurses-bin/copyright`)

- `BSD-3-clause`
- `MIT/X11`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris ncurses=6.6+20251231-1
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.6%2b20251231-1.dsc' ncurses_6.6+20251231-1.dsc 4163 SHA256:1c7b340d53b1fc75df31bc219e6395c7d6474348b2ec968098c1a0cc7cecfe0e
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.6%2b20251231.orig.tar.gz' ncurses_6.6+20251231.orig.tar.gz 3789898 SHA256:e280541f4f601b8586bec305976c873fd641607f9bc4254bf661034dcccac4e9
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.6%2b20251231.orig.tar.gz.asc' ncurses_6.6+20251231.orig.tar.gz.asc 729 SHA256:ccb61134c7ffd365aa1f7f3afc3dadaadbda3a46aee463b289c9d0dddb2e9bd3
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.6%2b20251231-1.debian.tar.xz' ncurses_6.6+20251231-1.debian.tar.xz 50852 SHA256:fd4a1fd7113e034175310bda8f4589854a0f66fe70482a6bd553de73d773303c
```

### `dpkg` source package: `netbase=6.5build1`

Binary Packages:

- `netbase=6.5build1`

Licenses: (parsed from: `/usr/share/doc/netbase/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris netbase=6.5build1
'http://archive.ubuntu.com/ubuntu/pool/main/n/netbase/netbase_6.5build1.tar.xz' netbase_6.5build1.tar.xz 32620 SHA256:72537146c8ca2f504405d49d1ec74ebbaff506a7651cf1a05f9c21167dfd71ae
'http://archive.ubuntu.com/ubuntu/pool/main/n/netbase/netbase_6.5build1.dsc' netbase_6.5build1.dsc 1527 SHA256:d3dd8a1f1ad9452191dac6eeb3acb304fe21f990ba25f31d653c7bf1b2f4727c
```

### `dpkg` source package: `netcdf=1:4.9.3-1build2`

Binary Packages:

- `libnetcdf-dev=1:4.9.3-1build2`
- `libnetcdf22:amd64=1:4.9.3-1build2`

Licenses: (parsed from: `/usr/share/doc/libnetcdf-dev/copyright`, `/usr/share/doc/libnetcdf22/copyright`)

- `BSD-3-Clause`
- `BSL-1.0`
- `CC-BY-4.0`
- `Expat`
- `GPL-3`
- `GPL-3+ with Bison exception`
- `HDF5`
- `NetCDF`
- `Unicode-data`
- `Zlib`
- `curl`
- `ncxml`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris netcdf=1:4.9.3-1build2
'http://archive.ubuntu.com/ubuntu/pool/universe/n/netcdf/netcdf_4.9.3.orig.tar.gz' netcdf_4.9.3.orig.tar.gz 25619216 SHA256:990f46d49525d6ab5dc4249f8684c6deeaf54de6fec63a187e9fb382cc0ffdff
'http://archive.ubuntu.com/ubuntu/pool/universe/n/netcdf/netcdf_4.9.3-1build2.debian.tar.xz' netcdf_4.9.3-1build2.debian.tar.xz 35540 SHA256:a12cb263ff4790c0e72aba8e868bc1d96e9129e26f27c71e9ac19a55309fc0e3
'http://archive.ubuntu.com/ubuntu/pool/universe/n/netcdf/netcdf_4.9.3-1build2.dsc' netcdf_4.9.3-1build2.dsc 2379 SHA256:167df8aa8c0e7afb0c60d1a8c95d83c169d4114b3c4d0b6c690b6f98a9c0b9ce
```

### `dpkg` source package: `nettle=3.10.2-1`

Binary Packages:

- `libhogweed6t64:amd64=3.10.2-1`
- `libnettle8t64:amd64=3.10.2-1`
- `nettle-dev:amd64=3.10.2-1`

Licenses: (parsed from: `/usr/share/doc/libhogweed6t64/copyright`, `/usr/share/doc/libnettle8t64/copyright`, `/usr/share/doc/nettle-dev/copyright`)

- `Expat`
- `GAP`
- `GPL`
- `GPL-2`
- `GPL-2+`
- `GPL-3+ with Autoconf exception`
- `LGPL`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-3+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris nettle=3.10.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.10.2-1.dsc' nettle_3.10.2-1.dsc 2297 SHA256:e2f713973191da5d021759173f2176c21abb5f9420df45cd93a8ff058d62493f
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.10.2.orig.tar.gz' nettle_3.10.2.orig.tar.gz 2644644 SHA256:fe9ff51cb1f2abb5e65a6b8c10a92da0ab5ab6eaf26e7fc2b675c45f1fb519b5
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.10.2.orig.tar.gz.asc' nettle_3.10.2.orig.tar.gz.asc 573 SHA256:3496de6ba5685733aaab2e4e611ea5860fdd76964c56c995f5a0b4c2ec5084ae
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.10.2-1.debian.tar.xz' nettle_3.10.2-1.debian.tar.xz 25052 SHA256:6f5be658d8bfbc5ffd3c75bd15b8a40fd51c5dd4ae10519d7835be135944f0a7
```

### `dpkg` source package: `nghttp2=1.68.0-2ubuntu0.2`

Binary Packages:

- `libnghttp2-14:amd64=1.68.0-2ubuntu0.2`
- `libnghttp2-dev:amd64=1.68.0-2ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/libnghttp2-14/copyright`, `/usr/share/doc/libnghttp2-dev/copyright`)

- `BSD-2-clause`
- `Expat`
- `GPL-3`
- `GPL-3+ with autoconf exception`
- `MIT`
- `all-permissive`

Source:

```console
$ apt-get source -qq --print-uris nghttp2=1.68.0-2ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.68.0.orig.tar.gz' nghttp2_1.68.0.orig.tar.gz 2638098 SHA512:5f9204463b7a97060ff8ca2edbb1576ec194cb8c545bd4b90a3a35d72eb2a1c39bb588f85f7e21bfb31396552e90a47c5c8ecada5273d49b7e81b23d08eb0fa5
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.68.0.orig.tar.gz.asc' nghttp2_1.68.0.orig.tar.gz.asc 833 SHA512:93eba11415c29789dac80874b2cb4f6341195f52d2b43ab9a00542bf7bf8c96d4ed776a0f91c8803998e6dea337a0635bc0a93835a5284e921867f6de1fa2581
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.68.0-2ubuntu0.2.debian.tar.xz' nghttp2_1.68.0-2ubuntu0.2.debian.tar.xz 18304 SHA512:005674d2bd3f4304e6e3bfc06cb3c6d4a139ff1911000b39fa82b5a5402c115fa9ebcce8619314861ca5c497624897816005705360ea44ae5acf8e4370c0783d
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.68.0-2ubuntu0.2.dsc' nghttp2_1.68.0-2ubuntu0.2.dsc 2868 SHA512:92a555c1d22c6fbf74e83f57f40238e5448759bd371a5b1fe1ae636bfdd8dda05fc2010cdf9fd0e74cbdf6dbe3c8e90f5620f66d1b4cf29251a3f3cf4cf56ffc
```

### `dpkg` source package: `nlohmann-json3=3.12.0.really.3.12.0.really.3.11.3-3build1`

Binary Packages:

- `nlohmann-json3-dev=3.12.0.really.3.12.0.really.3.11.3-3build1`

Licenses: (parsed from: `/usr/share/doc/nlohmann-json3-dev/copyright`)

- `BSD-3-clause`
- `Expat`
- `U-OF-I-BSD-LIKE`

Source:

```console
$ apt-get source -qq --print-uris nlohmann-json3=3.12.0.really.3.12.0.really.3.11.3-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/n/nlohmann-json3/nlohmann-json3_3.12.0.really.3.12.0.really.3.11.3.orig.tar.gz' nlohmann-json3_3.12.0.really.3.12.0.really.3.11.3.orig.tar.gz 8053705 SHA256:0d8ef5af7f9794e3263480193c491549b2ba6cc74bb018906202ada498a79406
'http://archive.ubuntu.com/ubuntu/pool/main/n/nlohmann-json3/nlohmann-json3_3.12.0.really.3.12.0.really.3.11.3-3build1.debian.tar.xz' nlohmann-json3_3.12.0.really.3.12.0.really.3.11.3-3build1.debian.tar.xz 26620 SHA256:3f99993a568af51398ec8a93f1ac04c300e8c302bcc5f866a789636e7b92ddd3
'http://archive.ubuntu.com/ubuntu/pool/main/n/nlohmann-json3/nlohmann-json3_3.12.0.really.3.12.0.really.3.11.3-3build1.dsc' nlohmann-json3_3.12.0.really.3.12.0.really.3.11.3-3build1.dsc 2300 SHA256:9562660a687be0c789750cd4731373e76fb47e53b325e9f5cf96c7e7f14eab1f
```

### `dpkg` source package: `node-jquery=3.7.1+dfsg+~3.5.33-1build1`

Binary Packages:

- `libjs-jquery=3.7.1+dfsg+~3.5.33-1build1`

Licenses: (parsed from: `/usr/share/doc/libjs-jquery/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris node-jquery=3.7.1+dfsg+~3.5.33-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/n/node-jquery/node-jquery_3.7.1%2bdfsg%2b%7e3.5.33.orig-types-jquery.tar.xz' node-jquery_3.7.1+dfsg+~3.5.33.orig-types-jquery.tar.xz 85256 SHA256:57514b16632a26cd908c9a6c9e09fe2989a936aec9342021082d8ab0fffb3236
'http://archive.ubuntu.com/ubuntu/pool/main/n/node-jquery/node-jquery_3.7.1%2bdfsg%2b%7e3.5.33.orig.tar.xz' node-jquery_3.7.1+dfsg+~3.5.33.orig.tar.xz 326132 SHA256:19edc237ca04e63cc788aced44dced5374b7318404b8ca9a0a99b6016c413545
'http://archive.ubuntu.com/ubuntu/pool/main/n/node-jquery/node-jquery_3.7.1%2bdfsg%2b%7e3.5.33-1build1.debian.tar.xz' node-jquery_3.7.1+dfsg+~3.5.33-1build1.debian.tar.xz 6032 SHA256:0d832e1b5e59efebed5048c4d928e8d132a05e8d546fec69addc7e85f16a691d
'http://archive.ubuntu.com/ubuntu/pool/main/n/node-jquery/node-jquery_3.7.1%2bdfsg%2b%7e3.5.33-1build1.dsc' node-jquery_3.7.1+dfsg+~3.5.33-1build1.dsc 2738 SHA256:9811ae21a46587af359bba3944ba763434a48e0e9f40bfe2a2f46b361a2d31a4
```

### `dpkg` source package: `norm=1.5.9+dfsg-4`

Binary Packages:

- `libnorm1t64:amd64=1.5.9+dfsg-4`

Licenses: (parsed from: `/usr/share/doc/libnorm1t64/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-4-clause-UC`
- `NRL-2-clause`
- `NRL-3-clause`

Source:

```console
$ apt-get source -qq --print-uris norm=1.5.9+dfsg-4
'http://archive.ubuntu.com/ubuntu/pool/universe/n/norm/norm_1.5.9%2bdfsg-4.dsc' norm_1.5.9+dfsg-4.dsc 2031 SHA256:ff9319de59b16202e5163a179ce8c68ab8ddae56a8f406f411fbee7ff642be56
'http://archive.ubuntu.com/ubuntu/pool/universe/n/norm/norm_1.5.9%2bdfsg.orig.tar.xz' norm_1.5.9+dfsg.orig.tar.xz 1526456 SHA256:603218491eaafddab44e6a5a5d6f57ff16558df9923fde0c2b21e6e17397394c
'http://archive.ubuntu.com/ubuntu/pool/universe/n/norm/norm_1.5.9%2bdfsg-4.debian.tar.xz' norm_1.5.9+dfsg-4.debian.tar.xz 9376 SHA256:a3c5babb77f1157c6c829b7dbac060053da69371bdfebff738125c78f67eac99
```

### `dpkg` source package: `npth=1.8-3build1`

Binary Packages:

- `libnpth0t64:amd64=1.8-3build1`

Licenses: (parsed from: `/usr/share/doc/libnpth0t64/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris npth=1.8-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.8.orig.tar.bz2' npth_1.8.orig.tar.bz2 317739 SHA256:8bd24b4f23a3065d6e5b26e98aba9ce783ea4fd781069c1b35d149694e90ca3e
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.8.orig.tar.bz2.asc' npth_1.8.orig.tar.bz2.asc 390 SHA256:1a2bd2f85ad832d5166e616cbf336b072c6bdc20335146c5adccd3e2795a24bc
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.8-3build1.debian.tar.xz' npth_1.8-3build1.debian.tar.xz 8752 SHA256:34f1190e49ce8e8038413cd5e733517bc4c8bebbbc233c6ec24c811ceedf9d05
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.8-3build1.dsc' npth_1.8-3build1.dsc 2212 SHA256:88dede80fb61ae0f6a022c6e580391c67f7bc437a2a9c12820c5c3cebef96582
```

### `dpkg` source package: `nspr=2:4.38.2-1ubuntu1`

Binary Packages:

- `libnspr4:amd64=2:4.38.2-1ubuntu1`
- `libnspr4-dev=2:4.38.2-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libnspr4/copyright`, `/usr/share/doc/libnspr4-dev/copyright`)

- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris nspr=2:4.38.2-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/n/nspr/nspr_4.38.2.orig.tar.gz' nspr_4.38.2.orig.tar.gz 1025394 SHA256:e4092faeab77bdc9b32db1113e4215948ee768e26c4666db3b5a60b35f2c9105
'http://archive.ubuntu.com/ubuntu/pool/main/n/nspr/nspr_4.38.2-1ubuntu1.debian.tar.xz' nspr_4.38.2-1ubuntu1.debian.tar.xz 11748 SHA256:8cef3df281edd88e12b914e50d5aafa387749ab64126f9c9727c89fa6c955a28
'http://archive.ubuntu.com/ubuntu/pool/main/n/nspr/nspr_4.38.2-1ubuntu1.dsc' nspr_4.38.2-1ubuntu1.dsc 2092 SHA256:c74a041ad94e51e734d4cf96b0f3ae19311fa55198e4880b990b0cd3c018e97a
```

### `dpkg` source package: `nss=2:3.120-1ubuntu2.1`

Binary Packages:

- `libnss3:amd64=2:3.120-1ubuntu2.1`
- `libnss3-dev:amd64=2:3.120-1ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/libnss3/copyright`, `/usr/share/doc/libnss3-dev/copyright`)

- `BSD-3`
- `MPL-2.0`
- `Zlib`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris nss=2:3.120-1ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/n/nss/nss_3.120.orig.tar.gz' nss_3.120.orig.tar.gz 77634611 SHA512:7ec5b6c94a5c7fde9c02c3f1a10964e9cf5fe99372c8fcdb2866d10ef4c9cd42abc26931574dbfc229c358e2615d7907136a595e3e17944369894c1201fc2c6e
'http://archive.ubuntu.com/ubuntu/pool/main/n/nss/nss_3.120-1ubuntu2.1.debian.tar.xz' nss_3.120-1ubuntu2.1.debian.tar.xz 21300 SHA512:b4a17295b5198d781673e8fcfdd12e970e52d927675352d037cc43a10850f2042b201405ab20cad12324fbf0aaa41a5c457caff2eb555bdce7d5a2fcf57289c9
'http://archive.ubuntu.com/ubuntu/pool/main/n/nss/nss_3.120-1ubuntu2.1.dsc' nss_3.120-1ubuntu2.1.dsc 2278 SHA512:198e6ba648baa3613678b2cc248bfabad0be1163739e9767498a587ed3700ae053a706701e001db4f3c4e798e1f59cdcefe0c9dfaf27a43da41fa0a65e7161c0
```

### `dpkg` source package: `numactl=2.0.19-1build1`

Binary Packages:

- `libnuma-dev:amd64=2.0.19-1build1`
- `libnuma1:amd64=2.0.19-1build1`

Licenses: (parsed from: `/usr/share/doc/libnuma-dev/copyright`, `/usr/share/doc/libnuma1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris numactl=2.0.19-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/n/numactl/numactl_2.0.19.orig.tar.gz' numactl_2.0.19.orig.tar.gz 218333 SHA256:8b84ffdebfa0d730fb2fc71bb7ec96bb2d38bf76fb67246fde416a68e04125e4
'http://archive.ubuntu.com/ubuntu/pool/main/n/numactl/numactl_2.0.19-1build1.debian.tar.xz' numactl_2.0.19-1build1.debian.tar.xz 7416 SHA256:b77519018f00d65440508f19d68270d8e14e35d49738d1ea27b80ab8d58f41eb
'http://archive.ubuntu.com/ubuntu/pool/main/n/numactl/numactl_2.0.19-1build1.dsc' numactl_2.0.19-1build1.dsc 1966 SHA256:733d41622c512d5db709ca6a0a521b60b25d3d5e5d0ee32b8762d7ddb39a5425
```

### `dpkg` source package: `numpy=1:2.3.5+ds-3ubuntu1`

Binary Packages:

- `python3-numpy=1:2.3.5+ds-3ubuntu1`
- `python3-numpy-dev:amd64=1:2.3.5+ds-3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/python3-numpy/copyright`, `/usr/share/doc/python3-numpy-dev/copyright`)

- `Apache-2`
- `Apache-2.0`
- `BSD-3-Clause`
- `BSD-3-clause`
- `CC0`
- `CC0-1.0`
- `Expat`
- `FSFAP`
- `ZLib`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris numpy=1:2.3.5+ds-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/n/numpy/numpy_2.3.5%2bds.orig.tar.xz' numpy_2.3.5+ds.orig.tar.xz 15391384 SHA512:be11030f1907818e6fb7948c23d3be6a2ffca9ce33d5707ee0c0f0a8e29a5f38ea4158d5567b4b11290e710a821cff52ad911984543d18340556a0f1dc149964
'http://archive.ubuntu.com/ubuntu/pool/main/n/numpy/numpy_2.3.5%2bds-3ubuntu1.debian.tar.xz' numpy_2.3.5+ds-3ubuntu1.debian.tar.xz 162404 SHA512:97143e31de8a696e33fe4acdd82b14be48076ec655e7eea1ace04233b67a032b460f7b3d41eb8fcf7a7dacf0dc3c451d3836740c767d8793edf54fb4f576767a
'http://archive.ubuntu.com/ubuntu/pool/main/n/numpy/numpy_2.3.5%2bds-3ubuntu1.dsc' numpy_2.3.5+ds-3ubuntu1.dsc 3608 SHA512:fbac5c3c17a627316d267f7554fd74dc65313ca8f72bfce1e89beaaa9a28cd45f83c6e3d02c7706c9d37a3d696e7c766db95d042cb266f8633260a36edeeea60
```

### `dpkg` source package: `nvidia-settings=510.47.03-0ubuntu7`

Binary Packages:

- `libxnvctrl0:amd64=510.47.03-0ubuntu7`

Licenses: (parsed from: `/usr/share/doc/libxnvctrl0/copyright`)

- `Expat`
- `Expat-NVIDIA`
- `Expat-Precision`
- `Expat-RedHat`
- `GPL-2`
- `other-MetroLink`
- `other-Metrolink`
- `other-XFree`

Source:

```console
$ apt-get source -qq --print-uris nvidia-settings=510.47.03-0ubuntu7
'http://archive.ubuntu.com/ubuntu/pool/main/n/nvidia-settings/nvidia-settings_510.47.03.orig.tar.bz2' nvidia-settings_510.47.03.orig.tar.bz2 1075444 SHA256:b6f0dc1b605fb6f158f4cbfdcaec5e60ec1aa1cd8036790fb8474096f947f404
'http://archive.ubuntu.com/ubuntu/pool/main/n/nvidia-settings/nvidia-settings_510.47.03-0ubuntu7.debian.tar.xz' nvidia-settings_510.47.03-0ubuntu7.debian.tar.xz 29028 SHA256:4484e96f3d9b2a6bfb30d6608fb3afffcd1595cd2544fe87e24702469e5288a5
'http://archive.ubuntu.com/ubuntu/pool/main/n/nvidia-settings/nvidia-settings_510.47.03-0ubuntu7.dsc' nvidia-settings_510.47.03-0ubuntu7.dsc 2504 SHA256:0edf87e2e78453f0e46ebc50a0e8876525194a5e9e6c93ac2015103081d01c70
```

### `dpkg` source package: `ocl-icd=2.3.4-1`

Binary Packages:

- `ocl-icd-libopencl1:amd64=2.3.4-1`

Licenses: (parsed from: `/usr/share/doc/ocl-icd-libopencl1/copyright`)

- `Apache-2.0`
- `BSD-2-Clause`

Source:

```console
$ apt-get source -qq --print-uris ocl-icd=2.3.4-1
'http://archive.ubuntu.com/ubuntu/pool/main/o/ocl-icd/ocl-icd_2.3.4-1.dsc' ocl-icd_2.3.4-1.dsc 2196 SHA256:f9c9d8260ce85b6b960bd1c613987de006a55475a2bf620fd064e8401f54e7d0
'http://archive.ubuntu.com/ubuntu/pool/main/o/ocl-icd/ocl-icd_2.3.4.orig.tar.gz' ocl-icd_2.3.4.orig.tar.gz 109915 SHA256:1a302b71b7304cca5a36f69d017b1af2b762cc4c2dd1c0c0e2fc1933db25c9cc
'http://archive.ubuntu.com/ubuntu/pool/main/o/ocl-icd/ocl-icd_2.3.4-1.debian.tar.xz' ocl-icd_2.3.4-1.debian.tar.xz 12488 SHA256:91d24b7b27abd6ad54abd2ccb3b29c122029c896adf5e656a79730b52823a971
```

### `dpkg` source package: `onetbb=2022.3.0-2`

Binary Packages:

- `libtbb-dev:amd64=2022.3.0-2`
- `libtbb12:amd64=2022.3.0-2`
- `libtbbbind-2-5:amd64=2022.3.0-2`
- `libtbbmalloc2:amd64=2022.3.0-2`

Licenses: (parsed from: `/usr/share/doc/libtbb-dev/copyright`, `/usr/share/doc/libtbb12/copyright`, `/usr/share/doc/libtbbbind-2-5/copyright`, `/usr/share/doc/libtbbmalloc2/copyright`)

- `Apache-2.0`
- `BSD-3-Clause`
- `BSD-like-bzip2`
- `GPL-1`
- `GPL-1+`
- `GPL-2`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris onetbb=2022.3.0-2
'http://archive.ubuntu.com/ubuntu/pool/universe/o/onetbb/onetbb_2022.3.0-2.dsc' onetbb_2022.3.0-2.dsc 2376 SHA256:24b2e2be39b8a54653162b5b4aa00ea5c76f5e51df913152865d1fa85c29c2d3
'http://archive.ubuntu.com/ubuntu/pool/universe/o/onetbb/onetbb_2022.3.0.orig.tar.xz' onetbb_2022.3.0.orig.tar.xz 5782256 SHA256:a59619b21e2e4b9f78e319faf16c0c2f5b0ee31b9527b6d1c0163de5322cab2b
'http://archive.ubuntu.com/ubuntu/pool/universe/o/onetbb/onetbb_2022.3.0-2.debian.tar.xz' onetbb_2022.3.0-2.debian.tar.xz 20088 SHA256:5124ee2aa220985d214cd686a2f08598f7064064c39e76becd2f06fe0263a1a2
```

### `dpkg` source package: `openblas=0.3.32+ds-5`

Binary Packages:

- `libopenblas0:amd64=0.3.32+ds-5`
- `libopenblas0-pthread:amd64=0.3.32+ds-5`

Licenses: (parsed from: `/usr/share/doc/libopenblas0/copyright`, `/usr/share/doc/libopenblas0-pthread/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `BSD-2-clause-texas`
- `BSD-3-clause`
- `BSD-3-clause-clear`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris openblas=0.3.32+ds-5
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openblas/openblas_0.3.32%2bds-5.dsc' openblas_0.3.32+ds-5.dsc 4655 SHA512:ac00991bc00ecae764d763c687917e8c1bca13f137f2b99100c995eedee68713835bcbd277f31f0d737696e91f9fec42842d2d355e9fb4fdc99ef5739222dc26
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openblas/openblas_0.3.32%2bds.orig.tar.xz' openblas_0.3.32+ds.orig.tar.xz 2418248 SHA512:d890411e7538981eb8edfb24703f5a71134d9558dbf953048841046d8d63ed195258a0fc5c54d85aa31d8e6d6224cbdbaa90dae46bbc0caf89050034cc6e6ad4
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openblas/openblas_0.3.32%2bds-5.debian.tar.xz' openblas_0.3.32+ds-5.debian.tar.xz 26800 SHA512:1abc2c87fd62523011a26edbb27518d1544b5de84152257a7392dc815e4c988052888dcf85975414b789edeac5133555350b5827d168d4cd43a8a07d845db32c
```

### `dpkg` source package: `opencv=4.10.0+dfsg-7ubuntu5`

Binary Packages:

- `libopencv-calib3d-dev:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-calib3d410:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-contrib-dev:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-contrib410:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-core-dev:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-core410:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-dev=4.10.0+dfsg-7ubuntu5`
- `libopencv-dnn-dev:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-dnn410:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-features2d-dev:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-features2d410:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-flann-dev:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-flann410:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-highgui-dev:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-highgui410:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-imgcodecs-dev:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-imgcodecs410:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-imgproc-dev:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-imgproc410:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-ml-dev:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-ml410:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-objdetect-dev:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-objdetect410:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-photo-dev:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-photo410:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-shape-dev:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-shape410:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-stitching-dev:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-stitching410:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-superres-dev:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-superres410:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-video-dev:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-video410:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-videoio-dev:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-videoio410:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-videostab-dev:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-videostab410:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-viz-dev:amd64=4.10.0+dfsg-7ubuntu5`
- `libopencv-viz410:amd64=4.10.0+dfsg-7ubuntu5`
- `python3-opencv=4.10.0+dfsg-7ubuntu5`

Licenses: (parsed from: `/usr/share/doc/libopencv-calib3d-dev/copyright`, `/usr/share/doc/libopencv-calib3d410/copyright`, `/usr/share/doc/libopencv-contrib-dev/copyright`, `/usr/share/doc/libopencv-contrib410/copyright`, `/usr/share/doc/libopencv-core-dev/copyright`, `/usr/share/doc/libopencv-core410/copyright`, `/usr/share/doc/libopencv-dev/copyright`, `/usr/share/doc/libopencv-dnn-dev/copyright`, `/usr/share/doc/libopencv-dnn410/copyright`, `/usr/share/doc/libopencv-features2d-dev/copyright`, `/usr/share/doc/libopencv-features2d410/copyright`, `/usr/share/doc/libopencv-flann-dev/copyright`, `/usr/share/doc/libopencv-flann410/copyright`, `/usr/share/doc/libopencv-highgui-dev/copyright`, `/usr/share/doc/libopencv-highgui410/copyright`, `/usr/share/doc/libopencv-imgcodecs-dev/copyright`, `/usr/share/doc/libopencv-imgcodecs410/copyright`, `/usr/share/doc/libopencv-imgproc-dev/copyright`, `/usr/share/doc/libopencv-imgproc410/copyright`, `/usr/share/doc/libopencv-ml-dev/copyright`, `/usr/share/doc/libopencv-ml410/copyright`, `/usr/share/doc/libopencv-objdetect-dev/copyright`, `/usr/share/doc/libopencv-objdetect410/copyright`, `/usr/share/doc/libopencv-photo-dev/copyright`, `/usr/share/doc/libopencv-photo410/copyright`, `/usr/share/doc/libopencv-shape-dev/copyright`, `/usr/share/doc/libopencv-shape410/copyright`, `/usr/share/doc/libopencv-stitching-dev/copyright`, `/usr/share/doc/libopencv-stitching410/copyright`, `/usr/share/doc/libopencv-superres-dev/copyright`, `/usr/share/doc/libopencv-superres410/copyright`, `/usr/share/doc/libopencv-video-dev/copyright`, `/usr/share/doc/libopencv-video410/copyright`, `/usr/share/doc/libopencv-videoio-dev/copyright`, `/usr/share/doc/libopencv-videoio410/copyright`, `/usr/share/doc/libopencv-videostab-dev/copyright`, `/usr/share/doc/libopencv-videostab410/copyright`, `/usr/share/doc/libopencv-viz-dev/copyright`, `/usr/share/doc/libopencv-viz410/copyright`, `/usr/share/doc/python3-opencv/copyright`)

- `Apache-2.0`
- `Apache-2.0 AND BSD-3-Clause`
- `BSD-2-Clause`
- `BSD-3-Clause`
- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `GPL-2.0+`
- `ISC`
- `STEREO_CALIB_PERMISSIVE`

Source:

```console
$ apt-get source -qq --print-uris opencv=4.10.0+dfsg-7ubuntu5
'http://archive.ubuntu.com/ubuntu/pool/universe/o/opencv/opencv_4.10.0%2bdfsg.orig-contrib.tar.xz' opencv_4.10.0+dfsg.orig-contrib.tar.xz 50001392 SHA512:ae3139f96b1e68cbb5fd3b7fdd8d7941ca033db3be284850256e9eaa910f7c9468634ad7d21b9a41a7fd4a71cb4b5fac1136d6488c1af0a7eb4547838effcdbc
'http://archive.ubuntu.com/ubuntu/pool/universe/o/opencv/opencv_4.10.0%2bdfsg.orig.tar.xz' opencv_4.10.0+dfsg.orig.tar.xz 77603312 SHA512:6414cbaeb00dcfa717a52bc536463e6bcfeaf161b2f0ccff0b3f4d65274ecddb94033f6564daa42822ca09687db80844aa2849683f395f392537240c5ee157e9
'http://archive.ubuntu.com/ubuntu/pool/universe/o/opencv/opencv_4.10.0%2bdfsg-7ubuntu5.debian.tar.xz' opencv_4.10.0+dfsg-7ubuntu5.debian.tar.xz 49616 SHA512:2c62697b87e001ba659939eb35c0f2e6a277d957994ccc6e97d830f764f13bd5cc28bdcfdf5b656f0053f7b9cecad4d4aff8ac3cc1155f277de7a83d98142537
'http://archive.ubuntu.com/ubuntu/pool/universe/o/opencv/opencv_4.10.0%2bdfsg-7ubuntu5.dsc' opencv_4.10.0+dfsg-7ubuntu5.dsc 7222 SHA512:08e280464cc6c65b6ee46d83f70e3b8c0603a1fd34189f62f3bfa3f7be68893ed34b71f36ddece676ffda70366641773509e2d62691875cd3197858a83fe2775
```

### `dpkg` source package: `openexr=3.1.13-2build1`

Binary Packages:

- `libopenexr-3-1-30:amd64=3.1.13-2build1`
- `libopenexr-dev=3.1.13-2build1`

Licenses: (parsed from: `/usr/share/doc/libopenexr-3-1-30/copyright`, `/usr/share/doc/libopenexr-dev/copyright`)

- `BSD-3-clause`
- `openexr`

Source:

```console
$ apt-get source -qq --print-uris openexr=3.1.13-2build1
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openexr/openexr_3.1.13.orig.tar.gz' openexr_3.1.13.orig.tar.gz 20542408 SHA256:26d265d8cf8df4dad115b066ba209118ca8832cda076ec704ce1a57f827c75c6
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openexr/openexr_3.1.13-2build1.debian.tar.xz' openexr_3.1.13-2build1.debian.tar.xz 19348 SHA256:da9265fd3973e9a68493090cb6c7c7b1dc2af4a5d41f952391733d482e0c3ca5
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openexr/openexr_3.1.13-2build1.dsc' openexr_3.1.13-2build1.dsc 2317 SHA256:1b424ad120c1fab9a1f758e649c35ff4777a68e8f66ac3abb1e8128fdc66124a
```

### `dpkg` source package: `openjdk-25=25.0.3+9-2~26.04.2`

Binary Packages:

- `openjdk-25-jdk:amd64=25.0.3+9-2~26.04.2`
- `openjdk-25-jdk-headless:amd64=25.0.3+9-2~26.04.2`
- `openjdk-25-jre:amd64=25.0.3+9-2~26.04.2`
- `openjdk-25-jre-headless:amd64=25.0.3+9-2~26.04.2`

Licenses: (parsed from: `/usr/share/doc/openjdk-25-jdk/copyright`, `/usr/share/doc/openjdk-25-jdk-headless/copyright`, `/usr/share/doc/openjdk-25-jre/copyright`, `/usr/share/doc/openjdk-25-jre-headless/copyright`)

- `BSD-C3`
- `GPL with Classpath exception`
- `GPL-2`
- `LGPL`
- `MIT`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `openjpeg2=2.5.4-1ubuntu0.1`

Binary Packages:

- `libopenjp2-7:amd64=2.5.4-1ubuntu0.1`
- `libopenjp2-7-dev:amd64=2.5.4-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libopenjp2-7/copyright`, `/usr/share/doc/libopenjp2-7-dev/copyright`)

- `BSD-2`
- `BSD-3`
- `LIBPNG`
- `LIBTIFF`
- `LIBTIFF-GLARSON`
- `LIBTIFF-PIXAR`
- `MIT`
- `ZLIB`

Source:

```console
$ apt-get source -qq --print-uris openjpeg2=2.5.4-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/o/openjpeg2/openjpeg2_2.5.4.orig.tar.xz' openjpeg2_2.5.4.orig.tar.xz 1395184 SHA512:343594a672429833389e2826456dd9800bb0118618ec9e84ea10f3846736bb32b46baa95a702e69b84c93cff70ddc7fa1baec78ae6a801c01b9cc723f072233b
'http://archive.ubuntu.com/ubuntu/pool/main/o/openjpeg2/openjpeg2_2.5.4-1ubuntu0.1.debian.tar.xz' openjpeg2_2.5.4-1ubuntu0.1.debian.tar.xz 16224 SHA512:c608f06a67b2440b133a6aef3aed7bd797ff905faa0f26efbbdc48a9058b77f4f0187918518925706cc6509ea28d30d76ac1c89bdae7cbf5cc14d44d4e1820c8
'http://archive.ubuntu.com/ubuntu/pool/main/o/openjpeg2/openjpeg2_2.5.4-1ubuntu0.1.dsc' openjpeg2_2.5.4-1ubuntu0.1.dsc 2713 SHA512:d32b6f85f9f9739dfeb1cd916ce2067e7ff964bfa67008bb41c41287cd602f8aa1788ff0dc646bf6f9911f21359187ee4ab57b7f92d4106a353f39be8732979f
```

### `dpkg` source package: `openldap=2.6.10+dfsg-1ubuntu5`

Binary Packages:

- `libldap-common=2.6.10+dfsg-1ubuntu5`
- `libldap-dev:amd64=2.6.10+dfsg-1ubuntu5`
- `libldap2:amd64=2.6.10+dfsg-1ubuntu5`

Licenses: (parsed from: `/usr/share/doc/libldap-common/copyright`, `/usr/share/doc/libldap-dev/copyright`, `/usr/share/doc/libldap2/copyright`)

- `BSD-3-clause`
- `BSD-3-clause-California`
- `BSD-3-clause-variant`
- `BSD-4-clause-California`
- `Beerware`
- `Expat`
- `Expat-ISC`
- `Expat-UNM`
- `F5`
- `FSF-unlimited`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf exception`
- `GPL-2+ with Libtool exception`
- `GPL-3`
- `GPL-3+`
- `GPL-3+ with Autoconf exception`
- `GPL-3+ with Libtool exception`
- `JCG`
- `MIT-XC`
- `NeoSoft-permissive`
- `OpenLDAP-2.8`
- `UMich`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris openldap=2.6.10+dfsg-1ubuntu5
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.6.10%2bdfsg.orig.tar.xz' openldap_2.6.10+dfsg.orig.tar.xz 3754560 SHA256:e871102bda1e42155fd4d6be4825a297e1c593cb0907b84fc7dde888dc847877
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.6.10%2bdfsg-1ubuntu5.debian.tar.xz' openldap_2.6.10+dfsg-1ubuntu5.debian.tar.xz 189056 SHA256:73927f8ff5e24076cbee78701c2ed6e5d5060b85c5f79f0341386c2790624c88
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.6.10%2bdfsg-1ubuntu5.dsc' openldap_2.6.10+dfsg-1ubuntu5.dsc 3426 SHA256:88dcaf31dac1a493430427d7d9ff2cb5c4138b1e0ab6c53c5be7c1d9c87f403c
```

### `dpkg` source package: `openmpi=5.0.10-1`

Binary Packages:

- `libopenmpi-dev=5.0.10-1`
- `libopenmpi40:amd64=5.0.10-1`
- `openmpi-bin=5.0.10-1`
- `openmpi-common=5.0.10-1`

Licenses: (parsed from: `/usr/share/doc/libopenmpi-dev/copyright`, `/usr/share/doc/libopenmpi40/copyright`, `/usr/share/doc/openmpi-bin/copyright`, `/usr/share/doc/openmpi-common/copyright`)

- `Apache-2.0`
- `BSD-2-Clause`
- `FSFULLR`
- `LGPL-2`
- `other`

Source:

```console
$ apt-get source -qq --print-uris openmpi=5.0.10-1
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openmpi/openmpi_5.0.10-1.dsc' openmpi_5.0.10-1.dsc 2835 SHA256:db4366d23f51e04626b43cdf6ba8148e12aca11298b5bf7d7d7616616a612396
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openmpi/openmpi_5.0.10.orig.tar.gz' openmpi_5.0.10.orig.tar.gz 43198417 SHA256:4a93caa03c62b5271ebe54078a1415ed810fc6b9d5e32d33fcb24cd0f7b233cf
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openmpi/openmpi_5.0.10-1.debian.tar.xz' openmpi_5.0.10-1.debian.tar.xz 72424 SHA256:205a5c7e48bf2d9e18ffb105f6ae37579b85fc47bdffe345cdd5390ff21f4f82
```

### `dpkg` source package: `openni2=2.2.0.33+dfsg-19`

Binary Packages:

- `libopenni2-0:amd64=2.2.0.33+dfsg-19`
- `libopenni2-dev:amd64=2.2.0.33+dfsg-19`

Licenses: (parsed from: `/usr/share/doc/libopenni2-0/copyright`, `/usr/share/doc/libopenni2-dev/copyright`)

- `APACHE-2.0`
- `BSD-3-clause-NVIDIA-LICENSE`
- `GPL-3`
- `GPL-3+`
- `Google`
- `LGPL-2.1`
- `LibJPEG`

Source:

```console
$ apt-get source -qq --print-uris openni2=2.2.0.33+dfsg-19
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openni2/openni2_2.2.0.33%2bdfsg-19.dsc' openni2_2.2.0.33+dfsg-19.dsc 2431 SHA256:2b329b362cee1d9e2dea53b0f066e181a62317b75783e1bbfa8845d18ebe5426
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openni2/openni2_2.2.0.33%2bdfsg.orig.tar.gz' openni2_2.2.0.33+dfsg.orig.tar.gz 8604362 SHA256:abc17f5e30d6799200c69a52d34aefaef4fd567be7921e0cb68cae353ac4495a
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openni2/openni2_2.2.0.33%2bdfsg-19.debian.tar.xz' openni2_2.2.0.33+dfsg-19.debian.tar.xz 18468 SHA256:f78eae32810c235efcb0a9cc56538727419c71506c1030c4cd56cd2770a5fb13
```

### `dpkg` source package: `openni=1.5.4.0+dfsg-8build1`

Binary Packages:

- `libopenni-dev:amd64=1.5.4.0+dfsg-8build1`
- `libopenni0t64=1.5.4.0+dfsg-8build1`

Licenses: (parsed from: `/usr/share/doc/libopenni-dev/copyright`, `/usr/share/doc/libopenni0t64/copyright`)

- `GPL-3`
- `GPL-3+`
- `Google`
- `LGPL-3`
- `LGPL-3+`
- `LibJPEG`
- `TinyXML`

Source:

```console
$ apt-get source -qq --print-uris openni=1.5.4.0+dfsg-8build1
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openni/openni_1.5.4.0%2bdfsg.orig.tar.xz' openni_1.5.4.0+dfsg.orig.tar.xz 9885380 SHA256:3e1dabf4fad5aaf67be6f4bfc161ce63b3e3a258f671ff9d65d84f5fadd3db1f
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openni/openni_1.5.4.0%2bdfsg-8build1.debian.tar.xz' openni_1.5.4.0+dfsg-8build1.debian.tar.xz 653364 SHA256:73e681375df8f99c4b1e83e8c47347492c41282b138b914de5070c0bf4a9b7e7
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openni/openni_1.5.4.0%2bdfsg-8build1.dsc' openni_1.5.4.0+dfsg-8build1.dsc 2349 SHA256:fd95a3e33daba9231ba30ea4822cbdaee4d2c55f70cc2c088e7c77048c8c6a08
```

### `dpkg` source package: `openssh=1:10.2p1-2ubuntu3.5`

Binary Packages:

- `openssh-client=1:10.2p1-2ubuntu3.5`

Licenses: (parsed from: `/usr/share/doc/openssh-client/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `Expat-with-advertising-restriction`
- `Mazieres-BSD-style`
- `OpenSSH`
- `Powell-BSD-style`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris openssh=1:10.2p1-2ubuntu3.5
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_10.2p1.orig.tar.gz' openssh_10.2p1.orig.tar.gz 1974519 SHA512:66f3dd646179e71aaf41c33b6f14a207dc873d71d24f11c130a89dee317ee45398b818e5b94887b5913240964a38630d7bca3e481e0f1eff2e41d9e1cfdbdfc5
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_10.2p1-2ubuntu3.5.debian.tar.xz' openssh_10.2p1-2ubuntu3.5.debian.tar.xz 224828 SHA512:f21564a11fd58ad95032e6d3a40444f2860672eb244981d812c7563577543f4915c6125fd5f4dffb266f64c06845b3479e026bd2fd426339326ee224e9308ca0
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_10.2p1-2ubuntu3.5.dsc' openssh_10.2p1-2ubuntu3.5.dsc 3328 SHA512:3a1b4eaf110844e665f5723d93560473f47b5355060bbd5ff16cb134924883e1cb452866b28e3909f44ebbadc5db5e6941dad835ad2a9dc6e198799ef63f6b0a
```

### `dpkg` source package: `openssl=3.5.5-1ubuntu3.3`

Binary Packages:

- `libssl-dev:amd64=3.5.5-1ubuntu3.3`
- `libssl3t64:amd64=3.5.5-1ubuntu3.3`
- `openssl=3.5.5-1ubuntu3.3`
- `openssl-provider-legacy=3.5.5-1ubuntu3.3`

Licenses: (parsed from: `/usr/share/doc/libssl-dev/copyright`, `/usr/share/doc/libssl3t64/copyright`, `/usr/share/doc/openssl/copyright`, `/usr/share/doc/openssl-provider-legacy/copyright`)

- `Apache-2.0`
- `Artistic`
- `GPL-1`
- `GPL-1+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `opus=1.6.1-1`

Binary Packages:

- `libopus0:amd64=1.6.1-1`

Licenses: (parsed from: `/usr/share/doc/libopus0/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris opus=1.6.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/o/opus/opus_1.6.1-1.dsc' opus_1.6.1-1.dsc 2436 SHA256:41d4a0cec7ee0abd138291090ccb896c4b521efa565ef4ca7795232fe92ce30f
'http://archive.ubuntu.com/ubuntu/pool/main/o/opus/opus_1.6.1.orig.tar.xz' opus_1.6.1.orig.tar.xz 8851016 SHA256:001ac615b9f8f8994b229ad2b1a5969ed12ab48b0d154d0af1016a5899cd6ba1
'http://archive.ubuntu.com/ubuntu/pool/main/o/opus/opus_1.6.1-1.debian.tar.xz' opus_1.6.1-1.debian.tar.xz 110512 SHA256:0613ffeffc0590c1ff2a621ecb408213d99f7de438e13b7d80c159e79eb303b8
```

### `dpkg` source package: `orc=1:0.4.42-2`

Binary Packages:

- `liborc-0.4-0t64:amd64=1:0.4.42-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris orc=1:0.4.42-2
'http://archive.ubuntu.com/ubuntu/pool/main/o/orc/orc_0.4.42-2.dsc' orc_0.4.42-2.dsc 2474 SHA256:0b056282fd4530bc7a9e5ebf24f456ed9ccd6d8cec43ce3ff97a7819b0c85086
'http://archive.ubuntu.com/ubuntu/pool/main/o/orc/orc_0.4.42.orig.tar.xz' orc_0.4.42.orig.tar.xz 280792 SHA256:7ec912ab59af3cc97874c456a56a8ae1eec520c385ec447e8a102b2bd122c90c
'http://archive.ubuntu.com/ubuntu/pool/main/o/orc/orc_0.4.42.orig.tar.xz.asc' orc_0.4.42.orig.tar.xz.asc 833 SHA256:06d8469e61de4a3cd3b27e3b0cd525a32aad4415dac09099438f7ab6a4c76046
'http://archive.ubuntu.com/ubuntu/pool/main/o/orc/orc_0.4.42-2.debian.tar.xz' orc_0.4.42-2.debian.tar.xz 14756 SHA256:edb2f0b79b7e0dbb23c2af8d7fff6b8a7794f0cb270e7f1baad9f2ab3478c543
```

### `dpkg` source package: `orocos-kdl=1.5.2-1`

Binary Packages:

- `liborocos-kdl-dev:amd64=1.5.2-1`
- `liborocos-kdl1.5:amd64=1.5.2-1`
- `python3-pykdl:amd64=1.5.2-1`

Licenses: (parsed from: `/usr/share/doc/liborocos-kdl-dev/copyright`, `/usr/share/doc/liborocos-kdl1.5/copyright`, `/usr/share/doc/python3-pykdl/copyright`)

- `BSD-2-clause`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris orocos-kdl=1.5.2-1
'http://archive.ubuntu.com/ubuntu/pool/universe/o/orocos-kdl/orocos-kdl_1.5.2-1.dsc' orocos-kdl_1.5.2-1.dsc 2418 SHA256:e93aa583e5978a669bb3996a538df3110e31ea4fbb53c66aa12bcd2965f83e42
'http://archive.ubuntu.com/ubuntu/pool/universe/o/orocos-kdl/orocos-kdl_1.5.2.orig.tar.gz' orocos-kdl_1.5.2.orig.tar.gz 254754 SHA256:7336cfb4238c4143f9f8a12dbd03a36116a6942d8b01522631d0cd2c42768d98
'http://archive.ubuntu.com/ubuntu/pool/universe/o/orocos-kdl/orocos-kdl_1.5.2-1.debian.tar.xz' orocos-kdl_1.5.2-1.debian.tar.xz 7508 SHA256:071e5fe81f1bad8ce4e37f83a00bdb8b77d899734a6de63c0858df1378b2dfc8
```

### `dpkg` source package: `p11-kit=0.26.2-2`

Binary Packages:

- `libp11-kit-dev:amd64=0.26.2-2`
- `libp11-kit0:amd64=0.26.2-2`

Licenses: (parsed from: `/usr/share/doc/libp11-kit-dev/copyright`, `/usr/share/doc/libp11-kit0/copyright`)

- `Apache-2.0`
- `BSD-3-clause`
- `FSFAP`
- `FSFULLR`
- `GPL-2+ with Autoconf-data exception`
- `GPL-3+ with Autoconf-data exception`
- `ISC`
- `LGPL-2.1`
- `LGPL-2.1+`
- `X11`
- `customFSFULLRWD`

Source:

```console
$ apt-get source -qq --print-uris p11-kit=0.26.2-2
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.26.2-2.dsc' p11-kit_0.26.2-2.dsc 2541 SHA256:066316279c279ca964caa83d92b0f9263914fbbe3c329419e3eec9ffb30540fb
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.26.2.orig.tar.xz' p11-kit_0.26.2.orig.tar.xz 1069216 SHA256:09fd9f44da4813a3141e73d5e7cf7008e5660d0405f13d56c15e1da9dcecf828
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.26.2.orig.tar.xz.asc' p11-kit_0.26.2.orig.tar.xz.asc 228 SHA256:a2c205bbac7857adc91eb2670304c2ac6649aa9eaf4aab81bf0e46e124f13d8b
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.26.2-2.debian.tar.xz' p11-kit_0.26.2-2.debian.tar.xz 24392 SHA256:1e0be1ac6c3f47a44305855b1c54e22064516a258eef911119c4944d5530b87f
```

### `dpkg` source package: `pam=1.7.0-5ubuntu3.1`

Binary Packages:

- `libpam-modules:amd64=1.7.0-5ubuntu3.1`
- `libpam-modules-bin=1.7.0-5ubuntu3.1`
- `libpam-runtime=1.7.0-5ubuntu3.1`
- `libpam0g:amd64=1.7.0-5ubuntu3.1`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `BSD-3-clause`
- `BSD-tcp_wrappers`
- `Beerware`
- `GPL`
- `GPL-1`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+ with Bison exception`
- `LGPL-2`
- `LGPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris pam=1.7.0-5ubuntu3.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.7.0.orig.tar.xz' pam_1.7.0.orig.tar.xz 507824 SHA512:ab5cadb0eb5e95e36146fdbbc77eef4e5e0f38aeee4e819b080a1316f69969c3c33e4a2daf3246ded4c2e58ce517d7f1acb0d8de02a4898ff753f4c3aeec51cf
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.7.0.orig.tar.xz.asc' pam_1.7.0.orig.tar.xz.asc 801 SHA512:573bef1d63c0ce4efb5d1efd71a582f6ff679f2e278c326f66e142175cf67e42404453d41b92c5ce201b7d41db7b0617695f0d0972a812f0ab19553dec37192e
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.7.0-5ubuntu3.1.debian.tar.xz' pam_1.7.0-5ubuntu3.1.debian.tar.xz 195564 SHA512:7ed3d2ab8a17940da7af912fed3b3feb2df7acf00e5106b51f800805911466fd36e145e6c557a11f9d91bf88845b85c6e461a08c963c6e99ceb9f62b45458ac0
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.7.0-5ubuntu3.1.dsc' pam_1.7.0-5ubuntu3.1.dsc 2934 SHA512:fbfa3baae8b3e9096a48bba9f092e58102c794cdd88d5df63dadc4b5029eec96eada3a404ac78dd105430a2294e2a2b0958ce7f1d718fdcc2d14c72347cef5e3
```

### `dpkg` source package: `pango1.0=1.57.0-1`

Binary Packages:

- `libpango-1.0-0:amd64=1.57.0-1`
- `libpangocairo-1.0-0:amd64=1.57.0-1`
- `libpangoft2-1.0-0:amd64=1.57.0-1`

Licenses: (parsed from: `/usr/share/doc/libpango-1.0-0/copyright`, `/usr/share/doc/libpangocairo-1.0-0/copyright`, `/usr/share/doc/libpangoft2-1.0-0/copyright`)

- `Apache-2`
- `Apache-2.0`
- `Bitstream-Vera`
- `Chromium-BSD-style`
- `Example`
- `ICU`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `OFL-1.1`
- `TCL`
- `Unicode`

Source:

```console
$ apt-get source -qq --print-uris pango1.0=1.57.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.57.0-1.dsc' pango1.0_1.57.0-1.dsc 3704 SHA256:d8a6e375236a70b7a84fb96b29c5f63b26a635beaa97ba2a19ec0e0c99430482
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.57.0.orig.tar.xz' pango1.0_1.57.0.orig.tar.xz 2566400 SHA256:890640c841dae77d3ae3d8fe8953784b930fa241b17423e6120c7bfdf8b891e7
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.57.0-1.debian.tar.xz' pango1.0_1.57.0-1.debian.tar.xz 44172 SHA256:640e0f81fa5623faf64a499a64d8cca65bb0155f04d7e702466934c4b622ebca
```

### `dpkg` source package: `patch=2.8-2build1`

Binary Packages:

- `patch=2.8-2build1`

Licenses: (parsed from: `/usr/share/doc/patch/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris patch=2.8-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.8.orig.tar.xz' patch_2.8.orig.tar.xz 907208 SHA256:f87cee69eec2b4fcbf60a396b030ad6aa3415f192aa5f7ee84cad5e11f7f5ae3
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.8-2build1.debian.tar.xz' patch_2.8-2build1.debian.tar.xz 9512 SHA256:8dac0e1a23863e98b5303898d574bd25a9efaeeaf1deb2ef8f877575deb333f8
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.8-2build1.dsc' patch_2.8-2build1.dsc 1713 SHA256:f54ca76cf72db489c59b385fd1a8478cee1a9b39af3f425c146bb52393ec18fd
```

### `dpkg` source package: `pcl=1.15.1+dfsg-2`

Binary Packages:

- `libpcl-apps1.15:amd64=1.15.1+dfsg-2`
- `libpcl-common1.15:amd64=1.15.1+dfsg-2`
- `libpcl-dev=1.15.1+dfsg-2`
- `libpcl-features1.15:amd64=1.15.1+dfsg-2`
- `libpcl-filters1.15:amd64=1.15.1+dfsg-2`
- `libpcl-io1.15:amd64=1.15.1+dfsg-2`
- `libpcl-kdtree1.15:amd64=1.15.1+dfsg-2`
- `libpcl-keypoints1.15:amd64=1.15.1+dfsg-2`
- `libpcl-ml1.15:amd64=1.15.1+dfsg-2`
- `libpcl-octree1.15:amd64=1.15.1+dfsg-2`
- `libpcl-outofcore1.15:amd64=1.15.1+dfsg-2`
- `libpcl-people1.15:amd64=1.15.1+dfsg-2`
- `libpcl-recognition1.15:amd64=1.15.1+dfsg-2`
- `libpcl-registration1.15:amd64=1.15.1+dfsg-2`
- `libpcl-sample-consensus1.15:amd64=1.15.1+dfsg-2`
- `libpcl-search1.15:amd64=1.15.1+dfsg-2`
- `libpcl-segmentation1.15:amd64=1.15.1+dfsg-2`
- `libpcl-stereo1.15:amd64=1.15.1+dfsg-2`
- `libpcl-surface1.15:amd64=1.15.1+dfsg-2`
- `libpcl-tracking1.15:amd64=1.15.1+dfsg-2`
- `libpcl-visualization1.15:amd64=1.15.1+dfsg-2`

Licenses: (parsed from: `/usr/share/doc/libpcl-apps1.15/copyright`, `/usr/share/doc/libpcl-common1.15/copyright`, `/usr/share/doc/libpcl-dev/copyright`, `/usr/share/doc/libpcl-features1.15/copyright`, `/usr/share/doc/libpcl-filters1.15/copyright`, `/usr/share/doc/libpcl-io1.15/copyright`, `/usr/share/doc/libpcl-kdtree1.15/copyright`, `/usr/share/doc/libpcl-keypoints1.15/copyright`, `/usr/share/doc/libpcl-ml1.15/copyright`, `/usr/share/doc/libpcl-octree1.15/copyright`, `/usr/share/doc/libpcl-outofcore1.15/copyright`, `/usr/share/doc/libpcl-people1.15/copyright`, `/usr/share/doc/libpcl-recognition1.15/copyright`, `/usr/share/doc/libpcl-registration1.15/copyright`, `/usr/share/doc/libpcl-sample-consensus1.15/copyright`, `/usr/share/doc/libpcl-search1.15/copyright`, `/usr/share/doc/libpcl-segmentation1.15/copyright`, `/usr/share/doc/libpcl-stereo1.15/copyright`, `/usr/share/doc/libpcl-surface1.15/copyright`, `/usr/share/doc/libpcl-tracking1.15/copyright`, `/usr/share/doc/libpcl-visualization1.15/copyright`)

- `BSD-2-clause`
- `BSD-2-clause-FreeBSD`
- `BSD-3-clause`
- `BSL-1`
- `CC-BY-SA-3`
- `Expat`
- `LGPL-3`
- `LGPL-3+`
- `Open-Source`
- `OpenNURBS`

Source:

```console
$ apt-get source -qq --print-uris pcl=1.15.1+dfsg-2
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pcl/pcl_1.15.1%2bdfsg-2.dsc' pcl_1.15.1+dfsg-2.dsc 4347 SHA512:06b9ce6b1380bd0e3378aee897a8739446a544f39e9c169429e9ec957e33ae1046b06084f3bf969653b2224a1d1871485825b84afdf8310790ebee831915ff8c
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pcl/pcl_1.15.1%2bdfsg.orig.tar.xz' pcl_1.15.1+dfsg.orig.tar.xz 59256204 SHA512:9b669440cf3222e941dfb62b7a687aa8ed4d55426b104110ad31bc829c619408e5c420d309eae916242f85c18b35d4edeea3fb9f94e0e888cda2d57413b15a27
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pcl/pcl_1.15.1%2bdfsg-2.debian.tar.xz' pcl_1.15.1+dfsg-2.debian.tar.xz 31860 SHA512:3c375abdd5f2aaf610ff9bf1033dc6b01b4ee9f8d1263b617479dac6ba9cf697bacca7290cf21409971f1e81954a5c797dd64d132b75faadcd9f672f76644c94
```

### `dpkg` source package: `pcre2=10.46-1build1`

Binary Packages:

- `libpcre2-16-0:amd64=10.46-1build1`
- `libpcre2-32-0:amd64=10.46-1build1`
- `libpcre2-8-0:amd64=10.46-1build1`
- `libpcre2-dev:amd64=10.46-1build1`
- `libpcre2-posix3:amd64=10.46-1build1`

Licenses: (parsed from: `/usr/share/doc/libpcre2-16-0/copyright`, `/usr/share/doc/libpcre2-32-0/copyright`, `/usr/share/doc/libpcre2-8-0/copyright`, `/usr/share/doc/libpcre2-dev/copyright`, `/usr/share/doc/libpcre2-posix3/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-3-clause-Cambridge with BINARY LIBRARY-LIKE PACKAGES exception`
- `X11`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris pcre2=10.46-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/pcre2_10.46.orig.tar.gz' pcre2_10.46.orig.tar.gz 2718545 SHA256:8d28d7f2c3b970c3a4bf3776bcbb5adfc923183ce74bc8df1ebaad8c1985bd07
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/pcre2_10.46-1build1.diff.gz' pcre2_10.46-1build1.diff.gz 8804 SHA256:3534c69dec410207e74bf9fd6ed334ad5827fb6de1d0715175b7a14257c5bc72
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/pcre2_10.46-1build1.dsc' pcre2_10.46-1build1.dsc 2221 SHA256:0e10c366d10e72b6940fcf37b61c2309d0136e05edff7adb1843030c0765f155
```

### `dpkg` source package: `pcsc-lite=2.4.1-1`

Binary Packages:

- `libpcsclite1:amd64=2.4.1-1`

Licenses: (parsed from: `/usr/share/doc/libpcsclite1/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `ISC`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris pcsc-lite=2.4.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcsc-lite/pcsc-lite_2.4.1-1.dsc' pcsc-lite_2.4.1-1.dsc 2394 SHA256:858cc6d2b501849dc50967d4658c89ffc18b08405c2647cb70dc9ad029761c80
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcsc-lite/pcsc-lite_2.4.1.orig.tar.xz' pcsc-lite_2.4.1.orig.tar.xz 212412 SHA256:afd3ba68c8000d2be048dc292df99a9812df9ad2efaf0a366eea22ac1faa19a7
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcsc-lite/pcsc-lite_2.4.1.orig.tar.xz.asc' pcsc-lite_2.4.1.orig.tar.xz.asc 833 SHA256:7db4bb5ff8248cea01a94ba443c5672b64d54d868ac1e026745f4c964d901c32
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcsc-lite/pcsc-lite_2.4.1-1.debian.tar.xz' pcsc-lite_2.4.1-1.debian.tar.xz 20096 SHA256:46e5398c9d00b4de884e0b055de6bfb56e07e928545ac904e187ae575e60610a
```

### `dpkg` source package: `perl=5.40.1-7ubuntu0.1`

Binary Packages:

- `libperl5.40:amd64=5.40.1-7ubuntu0.1`
- `perl=5.40.1-7ubuntu0.1`
- `perl-base=5.40.1-7ubuntu0.1`
- `perl-modules-5.40=5.40.1-7ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libperl5.40/copyright`, `/usr/share/doc/perl/copyright`, `/usr/share/doc/perl-base/copyright`, `/usr/share/doc/perl-modules-5.40/copyright`)

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
- `FSFAP`
- `GPL-1`
- `GPL-1+`
- `GPL-2`
- `GPL-2+`
- `GPL-3+-WITH-BISON-EXCEPTION`
- `LGPL-2.1`
- `REGCOMP`
- `REGCOMP,`
- `SDBM-PUBLIC-DOMAIN`
- `TEXT-TABS`
- `Unicode`
- `ZLIB`

Source:

```console
$ apt-get source -qq --print-uris perl=5.40.1-7ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.40.1.orig-regen-configure.tar.xz' perl_5.40.1.orig-regen-configure.tar.xz 421056 SHA512:933261779f476b0edda581270949c92e8e7dbe4bcaf1417398e708a321cdb748fe329acb703b2e74446cdfb03c20cefcab1eb972b852418ed3ea9b870db1fa86
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.40.1.orig.tar.xz' perl_5.40.1.orig.tar.xz 13930924 SHA512:3ff16b3462ce43ff38dab21b3dfc20f81772b8c9eac19ab96ba2d5e6cbb390e2302fa76c4879f915249357cd11c7ec0d548bcbf3ab2c156df1b9fca95da3f545
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.40.1-7ubuntu0.1.debian.tar.xz' perl_5.40.1-7ubuntu0.1.debian.tar.xz 174800 SHA512:6e7c2f3a580366b9303161465fdb9ad2cbf58bc602ab9d86fd9aad454d3d3b1ff312912e3bf694b36d23309492bdc2013a3c6e092d6cae3c4accf0e6cafa8c8f
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.40.1-7ubuntu0.1.dsc' perl_5.40.1-7ubuntu0.1.dsc 2893 SHA512:c4822a4d84cab4fe29b6b4c7e881fb985eea1cff87ae133848df58f1af07de8d4fdd6a86f0e3bcacc5631c46e650a38feabf03b06453c4368c3e89004d5e4f7d
```

### `dpkg` source package: `pinentry=1.3.2-3ubuntu1`

Binary Packages:

- `pinentry-curses=1.3.2-3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/pinentry-curses/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-3`
- `LGPL-3+`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris pinentry=1.3.2-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.3.2.orig.tar.bz2' pinentry_1.3.2.orig.tar.bz2 612858 SHA256:8e986ed88561b4da6e9efe0c54fa4ca8923035c99264df0b0464497c5fb94e9e
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.3.2.orig.tar.bz2.asc' pinentry_1.3.2.orig.tar.bz2.asc 427 SHA256:b95fc1c5ed983ca6c3376477d328010dce4a494fce491be02d4c5a1e018a516f
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.3.2-3ubuntu1.debian.tar.xz' pinentry_1.3.2-3ubuntu1.debian.tar.xz 20348 SHA256:ea01fa08cdaca07e00210d0eca2cd11c173abde31c6084274483e9d93c4b4be4
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.3.2-3ubuntu1.dsc' pinentry_1.3.2-3ubuntu1.dsc 3373 SHA256:f5f582130fbf76f55019dfc07f0d6e4d127ec33c1bab12617a3fd766b3242a86
```

### `dpkg` source package: `pixman=0.46.4-1`

Binary Packages:

- `libpixman-1-0:amd64=0.46.4-1`

Licenses: (parsed from: `/usr/share/doc/libpixman-1-0/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris pixman=0.46.4-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.46.4-1.dsc' pixman_0.46.4-1.dsc 2019 SHA256:cb83e2f57bff31103db1d6248cacf07862cf060fcbd651b03bdd4cafb61df62c
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.46.4.orig.tar.gz' pixman_0.46.4.orig.tar.gz 827198 SHA256:d09c44ebc3bd5bee7021c79f922fe8fb2fb57f7320f55e97ff9914d2346a591c
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.46.4-1.diff.gz' pixman_0.46.4-1.diff.gz 9639 SHA256:6e642aa9ca3c9e36d66ac3680a7b63daa73991f8e04429be45841109ddd996b4
```

### `dpkg` source package: `pkgconf=2.5.1-4`

Binary Packages:

- `libpkgconf7:amd64=2.5.1-4`
- `pkg-config:amd64=2.5.1-4`
- `pkgconf:amd64=2.5.1-4`
- `pkgconf-bin=2.5.1-4`

Licenses: (parsed from: `/usr/share/doc/libpkgconf7/copyright`, `/usr/share/doc/pkg-config/copyright`, `/usr/share/doc/pkgconf/copyright`, `/usr/share/doc/pkgconf-bin/copyright`)

- `BSD-2`
- `BSD-4`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris pkgconf=2.5.1-4
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkgconf/pkgconf_2.5.1-4.dsc' pkgconf_2.5.1-4.dsc 1772 SHA256:8c5d2e4fed77764804cd20309bb9f8589bb39b52d215e3318e2e2c0dffd7982f
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkgconf/pkgconf_2.5.1.orig.tar.xz' pkgconf_2.5.1.orig.tar.xz 328064 SHA256:cd05c9589b9f86ecf044c10a2269822bc9eb001eced2582cfffd658b0a50c243
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkgconf/pkgconf_2.5.1-4.debian.tar.xz' pkgconf_2.5.1-4.debian.tar.xz 11116 SHA256:8bcd8fcbcfaceeb7ae2519247dfab0b4f422b56782b48060ec39085abc93eeef
```

### `dpkg` source package: `pmix=6.0.0+really5.0.9-3build1`

Binary Packages:

- `libpmix2t64:amd64=6.0.0+really5.0.9-3build1`

Licenses: (parsed from: `/usr/share/doc/libpmix2t64/copyright`)

- `GPL-2`
- `LGPL-2`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris pmix=6.0.0+really5.0.9-3build1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pmix/pmix_6.0.0%2breally5.0.9.orig.tar.xz' pmix_6.0.0+really5.0.9.orig.tar.xz 1330456 SHA256:b03cecaeca15cf1c640b79ef4fe95ab4d4c24da776e5f0d821d9be72507bc216
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pmix/pmix_6.0.0%2breally5.0.9-3build1.debian.tar.xz' pmix_6.0.0+really5.0.9-3build1.debian.tar.xz 28324 SHA256:f281674117a9d051c75843a168b757e2f8f3fb68e6c176e7dda5a835bfe67a7c
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pmix/pmix_6.0.0%2breally5.0.9-3build1.dsc' pmix_6.0.0+really5.0.9-3build1.dsc 2631 SHA256:b633808516634bc085ddafd463aa70ec8c11142cecfa1688ea175a1306c62b28
```

### `dpkg` source package: `poppler=26.01.0-2ubuntu0.1`

Binary Packages:

- `libpoppler-dev:amd64=26.01.0-2ubuntu0.1`
- `libpoppler-private-dev:amd64=26.01.0-2ubuntu0.1`
- `libpoppler156:amd64=26.01.0-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libpoppler-dev/copyright`, `/usr/share/doc/libpoppler-private-dev/copyright`, `/usr/share/doc/libpoppler156/copyright`)

- `Apache-2.0`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris poppler=26.01.0-2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/poppler/poppler_26.01.0.orig.tar.xz' poppler_26.01.0.orig.tar.xz 2003516 SHA512:bf00f12eb73e164d7a73756aa03ea40f66d1b5c5677acef86b1bb450289e0aa0ab7a00cac4482e08e89dfa6fead71907bc36a70ba4b0c47e30a9fd9e61451921
'http://archive.ubuntu.com/ubuntu/pool/main/p/poppler/poppler_26.01.0.orig.tar.xz.asc' poppler_26.01.0.orig.tar.xz.asc 833 SHA512:95535c31cd9ca53e5f9d94ac39d97e5b0d2be1e0790f698568fb51848ab253ff8b92f5d6c33498c518838cbb4d9c7733b4e63e3f2ca238686d59170cb6233abf
'http://archive.ubuntu.com/ubuntu/pool/main/p/poppler/poppler_26.01.0-2ubuntu0.1.debian.tar.xz' poppler_26.01.0-2ubuntu0.1.debian.tar.xz 41444 SHA512:94a63a52bcf5825303c707ae34dc7e151df9b439ea44967b12dae187801ea9ef62dc0e2cb01e6acb9b1e223fcf5dfd0ba886dd13974d9c541b6a14b1e2018dae
'http://archive.ubuntu.com/ubuntu/pool/main/p/poppler/poppler_26.01.0-2ubuntu0.1.dsc' poppler_26.01.0-2ubuntu0.1.dsc 4275 SHA512:cdef04a21167721c40d87396986726719a827d4909fa6f33a4d666286f5869bc939c8b32812476e18630d5fe7cc5293b0fcc8d83bad0629300c22ffe305b2df2
```

### `dpkg` source package: `popt=1.19+dfsg-2build1`

Binary Packages:

- `libpopt0:amd64=1.19+dfsg-2build1`

Licenses: (parsed from: `/usr/share/doc/libpopt0/copyright`)

- `GPL-2`
- `GPL-2+`
- `expat`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris popt=1.19+dfsg-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/popt/popt_1.19%2bdfsg.orig.tar.xz' popt_1.19+dfsg.orig.tar.xz 353032 SHA256:4cd0cd2963d0c4078f65949599d97135c15ee6c09cf3a36a9a1b2753025bb06b
'http://archive.ubuntu.com/ubuntu/pool/main/p/popt/popt_1.19%2bdfsg-2build1.debian.tar.xz' popt_1.19+dfsg-2build1.debian.tar.xz 12376 SHA256:da7cc022ba36984beaf61cf8af9a95cceba069c6eb7de804204cee173736cd17
'http://archive.ubuntu.com/ubuntu/pool/main/p/popt/popt_1.19%2bdfsg-2build1.dsc' popt_1.19+dfsg-2build1.dsc 2084 SHA256:ef57ca18061956b0f184ee90f8dddfd47e9c1f77c438e67b787e60830e14466b
```

### `dpkg` source package: `postgresql-18=18.4-0ubuntu0.26.04.1`

Binary Packages:

- `libpq-dev=18.4-0ubuntu0.26.04.1`
- `libpq5:amd64=18.4-0ubuntu0.26.04.1`

Licenses: (parsed from: `/usr/share/doc/libpq-dev/copyright`, `/usr/share/doc/libpq5/copyright`)

- `Artistic`
- `BSD-2-clause`
- `BSD-3-Clause`
- `BSD-3-clause`
- `Custom-Unicode`
- `Custom-pg_dump`
- `Custom-regex`
- `GPL-1`
- `PostgreSQL`
- `Tcl`
- `double-metaphone`
- `nagaysau-ishii`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `procps=2:4.0.4-9ubuntu1`

Binary Packages:

- `libproc2-0:amd64=2:4.0.4-9ubuntu1`
- `procps=2:4.0.4-9ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libproc2-0/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris procps=2:4.0.4-9ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_4.0.4.orig.tar.xz' procps_4.0.4.orig.tar.xz 1401540 SHA256:22870d6feb2478adb617ce4f09a787addaf2d260c5a8aa7b17d889a962c5e42e
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_4.0.4-9ubuntu1.debian.tar.xz' procps_4.0.4-9ubuntu1.debian.tar.xz 62072 SHA256:19855f80f8e98f98ef503a6412df0cea6a13cb39052daa81621965221a80f419
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_4.0.4-9ubuntu1.dsc' procps_4.0.4-9ubuntu1.dsc 2247 SHA256:02942f7296bb9f0db5177ee4d88909583b0eeb751b2ef9a675116c09d2ef176b
```

### `dpkg` source package: `proj=9.7.1-1`

Binary Packages:

- `libproj-dev:amd64=9.7.1-1`
- `libproj25:amd64=9.7.1-1`
- `proj-data=9.7.1-1`

Licenses: (parsed from: `/usr/share/doc/libproj-dev/copyright`, `/usr/share/doc/libproj25/copyright`, `/usr/share/doc/proj-data/copyright`)

- `Apache-2.0`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+ with Bison exception`
- `LRUCache11`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris proj=9.7.1-1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/proj/proj_9.7.1-1.dsc' proj_9.7.1-1.dsc 2254 SHA256:a1385ce8fc7cc7f043e9bcb9c485c897091c19026ae826045e14394ef5f4c317
'http://archive.ubuntu.com/ubuntu/pool/universe/p/proj/proj_9.7.1.orig.tar.gz' proj_9.7.1.orig.tar.gz 5915221 SHA256:6c097dc803c561929cdfcc46e4bf9945ea977611fb31493ad14e88edaeae260f
'http://archive.ubuntu.com/ubuntu/pool/universe/p/proj/proj_9.7.1-1.debian.tar.xz' proj_9.7.1-1.debian.tar.xz 10212256 SHA256:36fd7e8927a05280fd73243e11eb2d8648db10757cba9193dee5751e5219d9ba
```

### `dpkg` source package: `protobuf=3.21.12-15ubuntu1`

Binary Packages:

- `libprotobuf32t64:amd64=3.21.12-15ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libprotobuf32t64/copyright`)

- `Apache-2.0`
- `BSD-3-Clause`
- `BSD-3-Clause~Google`
- `Expat`
- `GPL-2`
- `GPL-3`
- `GPLWithACException`
- `Public-Domain`

Source:

```console
$ apt-get source -qq --print-uris protobuf=3.21.12-15ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/protobuf/protobuf_3.21.12.orig.tar.gz' protobuf_3.21.12.orig.tar.gz 5141502 SHA256:930c2c3b5ecc6c9c12615cf5ad93f1cd6e12d0aba862b572e076259970ac3a53
'http://archive.ubuntu.com/ubuntu/pool/main/p/protobuf/protobuf_3.21.12-15ubuntu1.debian.tar.xz' protobuf_3.21.12-15ubuntu1.debian.tar.xz 48312 SHA256:90b71e0772dbc5ee490bdeb268037997f4cf6523d8e2a4a93ccdc63822b8bdc1
'http://archive.ubuntu.com/ubuntu/pool/main/p/protobuf/protobuf_3.21.12-15ubuntu1.dsc' protobuf_3.21.12-15ubuntu1.dsc 3180 SHA256:619b4139400723ebdb7736f9d715d556a4e01809a81c7dfda10851b3ebaedb7e
```

### `dpkg` source package: `prrte=3.0.13-2`

Binary Packages:

- `libprrte-bin=3.0.13-2`
- `libprrte-dev:amd64=3.0.13-2`
- `libprrte3:amd64=3.0.13-2`

Licenses: (parsed from: `/usr/share/doc/libprrte-bin/copyright`, `/usr/share/doc/libprrte-dev/copyright`, `/usr/share/doc/libprrte3/copyright`)

- `BSD-2-Clause`
- `BSD-3-Clause`
- `GPL-2`
- `GPL-2+ with Autoconf-data exception`
- `GPL-3`
- `GPL-3+ with Autoconf-data exception`

Source:

```console
$ apt-get source -qq --print-uris prrte=3.0.13-2
'http://archive.ubuntu.com/ubuntu/pool/universe/p/prrte/prrte_3.0.13-2.dsc' prrte_3.0.13-2.dsc 2290 SHA256:9ef6de0d68e6809da3f9a3aadf7642f370facce5648359197bc0b0576f6ea08e
'http://archive.ubuntu.com/ubuntu/pool/universe/p/prrte/prrte_3.0.13.orig.tar.gz' prrte_3.0.13.orig.tar.gz 1247408 SHA256:235fd854dafd06c6187a51db25d0ec77f92912a04d6bf68e32920dd2569794ad
'http://archive.ubuntu.com/ubuntu/pool/universe/p/prrte/prrte_3.0.13-2.debian.tar.xz' prrte_3.0.13-2.debian.tar.xz 27596 SHA256:d478374378404b83fdcd537a34c10464b3ebc7a96ab22c19ec4543ac9e6dfc24
```

### `dpkg` source package: `pugixml=1.14-2build1`

Binary Packages:

- `libpugixml1v5:amd64=1.14-2build1`

Licenses: (parsed from: `/usr/share/doc/libpugixml1v5/copyright`)

- `Expat`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris pugixml=1.14-2build1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pugixml/pugixml_1.14.orig.tar.gz' pugixml_1.14.orig.tar.gz 576683 SHA256:610f98375424b5614754a6f34a491adbddaaec074e9044577d965160ec103d2e
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pugixml/pugixml_1.14-2build1.debian.tar.xz' pugixml_1.14-2build1.debian.tar.xz 10580 SHA256:08278fa63e12e8c065c45984ecf8eec72ffa7bd03899595448c8ca4235ea413b
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pugixml/pugixml_1.14-2build1.dsc' pugixml_1.14-2build1.dsc 2470 SHA256:af80918a99a0c739a08ee0515fc438a8390a61febbbdfc0180d90237bbbd6f54
```

### `dpkg` source package: `pycodestyle=2.14.0-1`

Binary Packages:

- `python3-pycodestyle=2.14.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-pycodestyle/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris pycodestyle=2.14.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pycodestyle/pycodestyle_2.14.0-1.dsc' pycodestyle_2.14.0-1.dsc 2512 SHA256:45532a665e6e23d970556509c3314df68760a67010847c170e68e4651a7f9b9a
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pycodestyle/pycodestyle_2.14.0.orig.tar.gz' pycodestyle_2.14.0.orig.tar.gz 81116 SHA256:ef1b128ca60d19a255a75e64294ca941ddca7aa79784a4a9d9bc08a923b94f56
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pycodestyle/pycodestyle_2.14.0-1.debian.tar.xz' pycodestyle_2.14.0-1.debian.tar.xz 5900 SHA256:151787b0e893231f78e3bec36d32762228f3762374ef3c00df58e5b16ab7e9fc
```

### `dpkg` source package: `pydocstyle=6.3.0-3`

Binary Packages:

- `pydocstyle=6.3.0-3`
- `python3-pydocstyle=6.3.0-3`

Licenses: (parsed from: `/usr/share/doc/pydocstyle/copyright`, `/usr/share/doc/python3-pydocstyle/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris pydocstyle=6.3.0-3
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pydocstyle/pydocstyle_6.3.0-3.dsc' pydocstyle_6.3.0-3.dsc 1661 SHA256:c4dfbadf874d4309436cc400260c756f6aaf0043094874edfce6eb81c784f967
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pydocstyle/pydocstyle_6.3.0.orig.tar.gz' pydocstyle_6.3.0.orig.tar.gz 78058 SHA256:29ed0e8b1abe5f4590132f456b6f9cbf0866b89fabf836bc9474fde706e2e13e
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pydocstyle/pydocstyle_6.3.0-3.debian.tar.xz' pydocstyle_6.3.0-3.debian.tar.xz 6504 SHA256:950dfa653d7786b7ad5a14bd6308fb3b03a67ccd943a6c79a7bf92ebe7b77513
```

### `dpkg` source package: `pyflakes=3.4.0-1`

Binary Packages:

- `python3-pyflakes=3.4.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-pyflakes/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris pyflakes=3.4.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pyflakes/pyflakes_3.4.0-1.dsc' pyflakes_3.4.0-1.dsc 2277 SHA256:4a1bdfe65f8efd49f8a73ea384f0fb66d4dc6ff5b817fffcf946c1a676c5c7cb
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pyflakes/pyflakes_3.4.0.orig.tar.gz' pyflakes_3.4.0.orig.tar.gz 64669 SHA256:b24f96fafb7d2ab0ec5075b7350b3d2d2218eab42003821c06344973d3ea2f58
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pyflakes/pyflakes_3.4.0-1.debian.tar.xz' pyflakes_3.4.0-1.debian.tar.xz 8120 SHA256:feb1e7d68748274815aaad3c6de174cb95d94c146f4ae8927c5a11a2df8dffb0
```

### `dpkg` source package: `pygments=2.19.2+dfsg-1`

Binary Packages:

- `python3-pygments=2.19.2+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/python3-pygments/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `ISO-1986`

Source:

```console
$ apt-get source -qq --print-uris pygments=2.19.2+dfsg-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pygments/pygments_2.19.2%2bdfsg-1.dsc' pygments_2.19.2+dfsg-1.dsc 2486 SHA256:e1c0ef835cb5a54eaf2e56e3a68226aaf04660f3c645926369a55307d90fe003
'http://archive.ubuntu.com/ubuntu/pool/main/p/pygments/pygments_2.19.2%2bdfsg.orig.tar.xz' pygments_2.19.2+dfsg.orig.tar.xz 1272792 SHA256:dddfbe504bfd50914f77ba7fa6ceb34e5f7716c19de9a3d5ca640e8ba688bf5d
'http://archive.ubuntu.com/ubuntu/pool/main/p/pygments/pygments_2.19.2%2bdfsg-1.debian.tar.xz' pygments_2.19.2+dfsg-1.debian.tar.xz 10396 SHA256:111314af1ec694fe2b603831cc3e64be085d3881eae356950724492615ee9714
```

### `dpkg` source package: `pyparsing=3.3.2-2`

Binary Packages:

- `python3-pyparsing=3.3.2-2`

Licenses: (parsed from: `/usr/share/doc/python3-pyparsing/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `Expat`
- `MIT/X11`
- `ellis-and-grant`
- `salvolainen`

Source:

```console
$ apt-get source -qq --print-uris pyparsing=3.3.2-2
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyparsing/pyparsing_3.3.2-2.dsc' pyparsing_3.3.2-2.dsc 2335 SHA256:48db3dea6b12c08057910605067f87011460b58ec85c13cf7c81c7f7e043b4e9
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyparsing/pyparsing_3.3.2.orig.tar.gz' pyparsing_3.3.2.orig.tar.gz 6851574 SHA256:c777f4d763f140633dcb6d8a3eda953bf7a214dc4eff598413c070bcdc117cbc
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyparsing/pyparsing_3.3.2-2.debian.tar.xz' pyparsing_3.3.2-2.debian.tar.xz 8648 SHA256:4cc104baa5dd432a12a16904a02faae255e1e195feea9cc46782eae08fd1a139
```

### `dpkg` source package: `pytest=9.0.2-4`

Binary Packages:

- `python3-pytest=9.0.2-4`

Licenses: (parsed from: `/usr/share/doc/python3-pytest/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris pytest=9.0.2-4
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pytest/pytest_9.0.2-4.dsc' pytest_9.0.2-4.dsc 2844 SHA256:58cd909aea6141a7887555d368906515341689ce15f40decccf9e375f31b0cd6
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pytest/pytest_9.0.2.orig.tar.gz' pytest_9.0.2.orig.tar.gz 1568901 SHA256:75186651a92bd89611d1d9fc20f0b4345fd827c41ccd5c299a868a05d70edf11
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pytest/pytest_9.0.2-4.debian.tar.xz' pytest_9.0.2-4.debian.tar.xz 12156 SHA256:5793dd4bc6c4ae2527da6696ff6de00e5a028c57611d83a2c61f9b6c436c506e
```

### `dpkg` source package: `python-argcomplete=3.6.3-1`

Binary Packages:

- `python3-argcomplete=3.6.3-1`

Licenses: (parsed from: `/usr/share/doc/python3-argcomplete/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris python-argcomplete=3.6.3-1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-argcomplete/python-argcomplete_3.6.3-1.dsc' python-argcomplete_3.6.3-1.dsc 2429 SHA256:30e0e4a994e1947f4c097eb21b09a61a4f8fcfe253eb8c0620f15680f596483a
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-argcomplete/python-argcomplete_3.6.3.orig.tar.gz' python-argcomplete_3.6.3.orig.tar.gz 73754 SHA256:62e8ed4fd6a45864acc8235409461b72c9a28ee785a2011cc5eb78318786c89c
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-argcomplete/python-argcomplete_3.6.3-1.debian.tar.xz' python-argcomplete_3.6.3-1.debian.tar.xz 7452 SHA256:c28fb424663529d43551d3b055bd834ee39b04c873ffafc4f76a00e81aaec3c1
```

### `dpkg` source package: `python-autocommand=2.2.2-4`

Binary Packages:

- `python3-autocommand=2.2.2-4`

Licenses: (parsed from: `/usr/share/doc/python3-autocommand/copyright`)

- `LGPL-3`
- `LGPL-3+`

Source:

```console
$ apt-get source -qq --print-uris python-autocommand=2.2.2-4
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-autocommand/python-autocommand_2.2.2-4.dsc' python-autocommand_2.2.2-4.dsc 2101 SHA256:882f1150d5233025750db18ab7d2451cd74d97ccfe583f567f5184aa9eb2de3c
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-autocommand/python-autocommand_2.2.2.orig.tar.gz' python-autocommand_2.2.2.orig.tar.gz 22188 SHA256:44da8e23d4ddef4c8dd8f3e8a9566c7e3365f8961ada3ce164ec0418fe107bb9
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-autocommand/python-autocommand_2.2.2-4.debian.tar.xz' python-autocommand_2.2.2-4.debian.tar.xz 2752 SHA256:2b4f34c39f97b2b948b42c5ac66532e20e3fbb1ab6ef98fffa7fa77f61185003
```

### `dpkg` source package: `python-bcrypt=5.0.0-3build1`

Binary Packages:

- `python3-bcrypt=5.0.0-3build1`

Licenses: (parsed from: `/usr/share/doc/python3-bcrypt/copyright`)

- `Apache-2.0`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris python-bcrypt=5.0.0-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-bcrypt/python-bcrypt_5.0.0.orig.tar.xz' python-bcrypt_5.0.0.orig.tar.xz 16336 SHA256:a5f8f26c89c360ed8076e639f3a42ac3a402870f0b476856e1a471657708644d
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-bcrypt/python-bcrypt_5.0.0-3build1.debian.tar.xz' python-bcrypt_5.0.0-3build1.debian.tar.xz 12440 SHA256:f75adde10c39ac282111cac241eadc6f413a2484a2cef38f2ed41f94718cf3f9
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-bcrypt/python-bcrypt_5.0.0-3build1.dsc' python-bcrypt_5.0.0-3build1.dsc 2372 SHA256:662ec7cc295b724971c815e5a8558e8fd65860f9c4bb2e26c2004774f2505db1
```

### `dpkg` source package: `python-cffi=2.0.0-3build1`

Binary Packages:

- `python3-cffi-backend:amd64=2.0.0-3build1`

Licenses: (parsed from: `/usr/share/doc/python3-cffi-backend/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-cffi=2.0.0-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cffi/python-cffi_2.0.0.orig.tar.gz' python-cffi_2.0.0.orig.tar.gz 523588 SHA256:44d1b5909021139fe36001ae048dbdde8214afa20200eda0f64c068cac5d5529
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cffi/python-cffi_2.0.0-3build1.debian.tar.xz' python-cffi_2.0.0-3build1.debian.tar.xz 9464 SHA256:816fc99349e60a18c58025ac45cbad305729d381ef4daaf94cc7cf4ef87de8ce
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cffi/python-cffi_2.0.0-3build1.dsc' python-cffi_2.0.0-3build1.dsc 2589 SHA256:74d9e2d022e44088b3cf6e0081dacb2c62b8380d912cab3c62f46c7000c7675b
```

### `dpkg` source package: `python-cryptography=46.0.5-1ubuntu2`

Binary Packages:

- `python3-cryptography=46.0.5-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/python3-cryptography/copyright`)

- `Apache`
- `Apache-2.0`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-cryptography=46.0.5-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cryptography/python-cryptography_46.0.5.orig-rust-vendor.tar.xz' python-cryptography_46.0.5.orig-rust-vendor.tar.xz 2294960 SHA512:fe8f2cc5175af3f01838750694a91af0ef30670bdbbf521d9ef61df707ce5ab64b577245d0fb5a65616d4a789ed4d198cac8f90d0cca2c910d8c2973331be3e5
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cryptography/python-cryptography_46.0.5.orig.tar.gz' python-cryptography_46.0.5.orig.tar.gz 750064 SHA512:5bc5ea5b85c600504c46e2376a45cee749f41e2b4a6eb639b05d289370dcdc82b2ace423532f5591da16ca56ea32919e47ec154cb72bf7e1f5f3f923c744a185
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cryptography/python-cryptography_46.0.5-1ubuntu2.debian.tar.xz' python-cryptography_46.0.5-1ubuntu2.debian.tar.xz 16044 SHA512:3c1124116966f324801ab1856d00e927fdea27d3a9f658ace750a4b0b1de2328a80956bd1535a04a15e3292995c3382b643a33827b8c7098ba768d7f90cae6ca
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cryptography/python-cryptography_46.0.5-1ubuntu2.dsc' python-cryptography_46.0.5-1ubuntu2.dsc 3927 SHA512:80b2095b38a71b4a4737f658d9f7007b89c79ff16f80572289df8db1b3b5b1877f703b757e3c44c88e9095bf939061f91816ad1024a56deefa8c9518504d7040
```

### `dpkg` source package: `python-dateutil=2.9.0-4build1`

Binary Packages:

- `python3-dateutil=2.9.0-4build1`

Licenses: (parsed from: `/usr/share/doc/python3-dateutil/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris python-dateutil=2.9.0-4build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-dateutil/python-dateutil_2.9.0.orig.tar.gz' python-dateutil_2.9.0.orig.tar.gz 342990 SHA256:78e73e19c63f5b20ffa567001531680d939dc042bf7850431877645523c66709
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-dateutil/python-dateutil_2.9.0-4build1.debian.tar.xz' python-dateutil_2.9.0-4build1.debian.tar.xz 12408 SHA256:493f699926331d64928ad44afb562c1cddb1d95caf76a2000c7c363b4e05a5c8
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-dateutil/python-dateutil_2.9.0-4build1.dsc' python-dateutil_2.9.0-4build1.dsc 2296 SHA256:c829fddd28930c77f16b7b6e53ac217fdee7db5ec0083d043df5b5a94e647c72
```

### `dpkg` source package: `python-deprecated=1.3.1-1`

Binary Packages:

- `python3-deprecated=1.3.1-1`

Licenses: (parsed from: `/usr/share/doc/python3-deprecated/copyright`)

- `Expat`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris python-deprecated=1.3.1-1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-deprecated/python-deprecated_1.3.1-1.dsc' python-deprecated_1.3.1-1.dsc 2216 SHA256:b444a2645ea7238b0ef40ae6fb3e1174c024e2cb67df5b4b3ac33b94e879c466
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-deprecated/python-deprecated_1.3.1.orig.tar.gz' python-deprecated_1.3.1.orig.tar.gz 2929505 SHA256:5bfaa49b1edadd5599b2117baf2bf037f493eeda686d6b2c004d55e8ace6f988
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-deprecated/python-deprecated_1.3.1-1.debian.tar.xz' python-deprecated_1.3.1-1.debian.tar.xz 3984 SHA256:22af65f6f984ec34ca69960510504706db8121ebaff22b9b6a8be3929cf6c085
```

### `dpkg` source package: `python-distro=1.9.0-1build1`

Binary Packages:

- `python3-distro=1.9.0-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-distro/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris python-distro=1.9.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-distro/python-distro_1.9.0.orig.tar.gz' python-distro_1.9.0.orig.tar.gz 54793 SHA256:6ede051357868ed427ea71d16fc27f4d63cc0d9c8a32788aa11c450ecefcc76f
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-distro/python-distro_1.9.0-1build1.debian.tar.xz' python-distro_1.9.0-1build1.debian.tar.xz 3532 SHA256:0aeae9c138c9b0202c978d0edf06aa8f00eccd68c2ce322806c12eb586946c29
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-distro/python-distro_1.9.0-1build1.dsc' python-distro_1.9.0-1build1.dsc 2198 SHA256:e74be629c502f15fbf33034b39c35f152a349572bf08cd650a2382fd26399726
```

### `dpkg` source package: `python-docutils=0.22.4+dfsg-1`

Binary Packages:

- `docutils-common=0.22.4+dfsg-1`
- `python3-docutils=0.22.4+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/docutils-common/copyright`, `/usr/share/doc/python3-docutils/copyright`)

- `0BSD`
- `BSD-2-clause`
- `BSD-3-clause`
- `CC0-1.0`
- `Expat`
- `GPL-3`
- `GPL-3+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris python-docutils=0.22.4+dfsg-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-docutils/python-docutils_0.22.4%2bdfsg-1.dsc' python-docutils_0.22.4+dfsg-1.dsc 2397 SHA256:7516a49834b862a9e642fa066514943d74f29c695bc5d24889db88449a9a7b68
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-docutils/python-docutils_0.22.4%2bdfsg.orig.tar.xz' python-docutils_0.22.4+dfsg.orig.tar.xz 1679608 SHA256:409e1db46b932a4e440fa42666bfb3c9549325d47d4a3c96af13893b65566bdc
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-docutils/python-docutils_0.22.4%2bdfsg-1.debian.tar.xz' python-docutils_0.22.4+dfsg-1.debian.tar.xz 30716 SHA256:d494a895a2736421f1f3c0cbe9c8889ed014749b6d80d6876d95c178a11eaaae
```

### `dpkg` source package: `python-flake8=7.3.0-1`

Binary Packages:

- `python3-flake8=7.3.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-flake8/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-flake8=7.3.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-flake8/python-flake8_7.3.0-1.dsc' python-flake8_7.3.0-1.dsc 2519 SHA256:5e471e1dbb469876590a2ae9b598144a55588aedbcb945678529e1a8910cccfb
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-flake8/python-flake8_7.3.0.orig.tar.gz' python-flake8_7.3.0.orig.tar.gz 139551 SHA256:6ec337dc5f2d3d607c384a46fc414f1ba778ee725437775ac2f5b3cd63268654
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-flake8/python-flake8_7.3.0-1.debian.tar.xz' python-flake8_7.3.0-1.debian.tar.xz 8900 SHA256:94c10a136d473bae828f56375299eb148edf53fca519347982364505710d47ae
```

### `dpkg` source package: `python-inflect=7.5.0-1build1`

Binary Packages:

- `python3-inflect=7.5.0-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-inflect/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-inflect=7.5.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-inflect/python-inflect_7.5.0.orig.tar.gz' python-inflect_7.5.0.orig.tar.gz 73751 SHA256:faf19801c3742ed5a05a8ce388e0d8fe1a07f8d095c82201eb904f5d27ad571f
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-inflect/python-inflect_7.5.0-1build1.debian.tar.xz' python-inflect_7.5.0-1build1.debian.tar.xz 3044 SHA256:eba173b8fcc97b8ed4f09dc9be931f62a56a1edff92ecfe062bc6fe10533f835
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-inflect/python-inflect_7.5.0-1build1.dsc' python-inflect_7.5.0-1build1.dsc 2189 SHA256:9fff270e33b9d4efec144ab2197b020f0e1723c2c84b6769f87355b746147d4a
```

### `dpkg` source package: `python-iniconfig=2.1.0-2`

Binary Packages:

- `python3-iniconfig=2.1.0-2`

Licenses: (parsed from: `/usr/share/doc/python3-iniconfig/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-iniconfig=2.1.0-2
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-iniconfig/python-iniconfig_2.1.0-2.dsc' python-iniconfig_2.1.0-2.dsc 2234 SHA256:df2de7e7fe81a332d670a685413cb7a85d23e20500683de681fe1c8d59a96e5e
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-iniconfig/python-iniconfig_2.1.0.orig.tar.gz' python-iniconfig_2.1.0.orig.tar.gz 8195 SHA256:8bbd2d27f7fc26cb01bf52bc99e7efd56a5a3f4e62c551aed2c9fb0cf4226153
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-iniconfig/python-iniconfig_2.1.0-2.debian.tar.xz' python-iniconfig_2.1.0-2.debian.tar.xz 2904 SHA256:24b1db411e4185390ed24eb9c17459ea491e2d8f394ab4c1156403347019a484
```

### `dpkg` source package: `python-jaraco.functools=4.1.0-1build1`

Binary Packages:

- `python3-jaraco.functools=4.1.0-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-jaraco.functools/copyright`)

- `Expat`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris python-jaraco.functools=4.1.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-jaraco.functools/python-jaraco.functools_4.1.0.orig.tar.gz' python-jaraco.functools_4.1.0.orig.tar.gz 16421 SHA256:b3c6c10eca73c1f1b7d110a4340f1e0359f78734c610da1472b485260b5f2da0
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-jaraco.functools/python-jaraco.functools_4.1.0-1build1.debian.tar.xz' python-jaraco.functools_4.1.0-1build1.debian.tar.xz 3540 SHA256:f5945e8875408c997521d6ddfdb29fd807cd9e2ef537117f1e7df110bd137af7
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-jaraco.functools/python-jaraco.functools_4.1.0-1build1.dsc' python-jaraco.functools_4.1.0-1build1.dsc 2212 SHA256:f831834cf00ba9efd5a5560c0e4de040bc921cb20289415256100be89f37a4f4
```

### `dpkg` source package: `python-lark=1.3.1-1`

Binary Packages:

- `python3-lark=1.3.1-1`

Licenses: (parsed from: `/usr/share/doc/python3-lark/copyright`)

- `GPL-2`
- `GPL-2+-with-bootloader-exception`
- `MIT`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris python-lark=1.3.1-1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-lark/python-lark_1.3.1-1.dsc' python-lark_1.3.1-1.dsc 2430 SHA256:baac8a848ec87c819757b93f1da4349c7a932835c43737023a8f51ee3023fd53
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-lark/python-lark_1.3.1.orig.tar.gz' python-lark_1.3.1.orig.tar.gz 420060 SHA256:409a50fec2e0dee15f6527526d3c5474847d8aeb631f32cc36ff5eb912f386e4
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-lark/python-lark_1.3.1-1.debian.tar.xz' python-lark_1.3.1-1.debian.tar.xz 6004 SHA256:2f38a9eed8711c58edd57657d2303c0e144922de2d72cf5b765ecb9f32c9ba21
```

### `dpkg` source package: `python-librt=0.7.3-1build1`

Binary Packages:

- `python3-librt=0.7.3-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-librt/copyright`)

- `0BSD`
- `BSD-2-clause`
- `Python`
- `expat`

Source:

```console
$ apt-get source -qq --print-uris python-librt=0.7.3-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-librt/python-librt_0.7.3.orig.tar.gz' python-librt_0.7.3.orig.tar.gz 144549 SHA256:3ec50cf65235ff5c02c5b747748d9222e564ad48597122a361269dd3aa808798
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-librt/python-librt_0.7.3-1build1.debian.tar.xz' python-librt_0.7.3-1build1.debian.tar.xz 5780 SHA256:64b9d82ec53eca3a8089995b150739f952141deb8c9f84a4d19a1c874723bd5e
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-librt/python-librt_0.7.3-1build1.dsc' python-librt_0.7.3-1build1.dsc 2166 SHA256:b3447ec229a0a0c3a33f249f56dcd6da948aebac9b9312ee115aa1fbd03ad954
```

### `dpkg` source package: `python-mccabe=0.7.0-1build1`

Binary Packages:

- `python3-mccabe=0.7.0-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-mccabe/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-mccabe=0.7.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-mccabe/python-mccabe_0.7.0.orig.tar.gz' python-mccabe_0.7.0.orig.tar.gz 9326 SHA256:f4f7fa5ed8b7f77601fea3e748d6238928323a291fcde0fddbbe6cb2d0cb2da2
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-mccabe/python-mccabe_0.7.0-1build1.debian.tar.xz' python-mccabe_0.7.0-1build1.debian.tar.xz 5776 SHA256:193c1f082be801172097473f787e925585db5eee15bb6a145be8e539a33586d4
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-mccabe/python-mccabe_0.7.0-1build1.dsc' python-mccabe_0.7.0-1build1.dsc 2175 SHA256:882f58c2ac169b42f0bb13f405aadb5ce106d152051e8950b80ed7102257ceef
```

### `dpkg` source package: `python-mypy-extensions=1.1.0-1`

Binary Packages:

- `python3-mypy-extensions=1.1.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-mypy-extensions/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-mypy-extensions=1.1.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-mypy-extensions/python-mypy-extensions_1.1.0-1.dsc' python-mypy-extensions_1.1.0-1.dsc 2505 SHA256:f861c09df7ad47616860353208016896a44299c228b2c221fb3454ad11817bcc
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-mypy-extensions/python-mypy-extensions_1.1.0.orig.tar.xz' python-mypy-extensions_1.1.0.orig.tar.xz 6056 SHA256:f18961538512fae3cc364f14e0f21208c0522bcb1cd3f9a824d9f1995509f1c8
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-mypy-extensions/python-mypy-extensions_1.1.0-1.debian.tar.xz' python-mypy-extensions_1.1.0-1.debian.tar.xz 2872 SHA256:16eb0d055f702f77c3620a811c6573139efe47054526daba45eb556d31373175
```

### `dpkg` source package: `python-notify2=0.3.1-2`

Binary Packages:

- `python3-notify2=0.3.1-2`

Licenses: (parsed from: `/usr/share/doc/python3-notify2/copyright`)

- `BSD-3-Clause`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris python-notify2=0.3.1-2
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-notify2/python-notify2_0.3.1-2.dsc' python-notify2_0.3.1-2.dsc 2448 SHA256:b269848461962970a23c46a574e7afbc6a24252c6c035318ec12767c3f8ac82a
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-notify2/python-notify2_0.3.1.orig.tar.gz' python-notify2_0.3.1.orig.tar.gz 17792 SHA256:33fa108d50c42f3cd3407cc437518ad3f6225d1bb237011f16393c9dd3ce197d
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-notify2/python-notify2_0.3.1-2.debian.tar.xz' python-notify2_0.3.1-2.debian.tar.xz 3696 SHA256:03b1cce7e7a612dbd27a9acaddba40618048828f26fd617e28dae66878c864b1
```

### `dpkg` source package: `python-packaging=26.0-1`

Binary Packages:

- `python3-packaging=26.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-packaging/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `BSD-3-clause`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-packaging=26.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-packaging/python-packaging_26.0-1.dsc' python-packaging_26.0-1.dsc 2372 SHA256:4257ec9305aa4157e5e38b6290b22d99e4ad1dfcee3c1e317b60430dc2605717
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-packaging/python-packaging_26.0.orig.tar.gz' python-packaging_26.0.orig.tar.gz 143416 SHA256:00243ae351a257117b6a241061796684b084ed1c516a08c48a3f7e147a9d80b4
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-packaging/python-packaging_26.0-1.debian.tar.xz' python-packaging_26.0-1.debian.tar.xz 4264 SHA256:1c840e26f4d52565544130629668090c058c904c00f03cb626d28b47a0089b0e
```

### `dpkg` source package: `python-pathspec=1.0.4-1`

Binary Packages:

- `python3-pathspec=1.0.4-1`

Licenses: (parsed from: `/usr/share/doc/python3-pathspec/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris python-pathspec=1.0.4-1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-pathspec/python-pathspec_1.0.4-1.dsc' python-pathspec_1.0.4-1.dsc 2181 SHA256:7f9374f2717f0de47fe63a1bf9108c171eb9d6ece327f610efee3bd72fdb279d
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-pathspec/python-pathspec_1.0.4.orig.tar.gz' python-pathspec_1.0.4.orig.tar.gz 131200 SHA256:0210e2ae8a21a9137c0d470578cb0e595af87edaa6ebf12ff176f14a02e0e645
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-pathspec/python-pathspec_1.0.4-1.debian.tar.xz' python-pathspec_1.0.4-1.debian.tar.xz 2716 SHA256:3ed6a0e62ecd2195eb843d543652ccb9aa3be831550fd55c4158b557b7bc8f44
```

### `dpkg` source package: `python-pluggy=1.6.0-2`

Binary Packages:

- `python3-pluggy=1.6.0-2`

Licenses: (parsed from: `/usr/share/doc/python3-pluggy/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-pluggy=1.6.0-2
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-pluggy/python-pluggy_1.6.0-2.dsc' python-pluggy_1.6.0-2.dsc 3007 SHA256:f62c832bad85a5228c85168b6061dfa0a73f7a615253a9dc935526ef1f16ff10
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-pluggy/python-pluggy_1.6.0.orig.tar.gz' python-pluggy_1.6.0.orig.tar.gz 64449 SHA256:d35ec78be56dae9fd736e1378a2c3c176fd2aefd9daefc209abeab569c2732ee
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-pluggy/python-pluggy_1.6.0-2.debian.tar.xz' python-pluggy_1.6.0-2.debian.tar.xz 3952 SHA256:abc86a1f94f473be8301681d768c7c1656da508d598027d231aa9da8a1599926
```

### `dpkg` source package: `python-psutil=7.1.0-1ubuntu1`

Binary Packages:

- `python3-psutil=7.1.0-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/python3-psutil/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris python-psutil=7.1.0-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-psutil/python-psutil_7.1.0.orig.tar.xz' python-psutil_7.1.0.orig.tar.xz 1856752 SHA256:2b801aa6b37123fe6a22eef88728eed9b34153d4974e67c49fcb79f0360adf9a
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-psutil/python-psutil_7.1.0-1ubuntu1.debian.tar.xz' python-psutil_7.1.0-1ubuntu1.debian.tar.xz 7340 SHA256:33f872bce56578af0e5239259b9b3fc88207a2c96b9ef4f7f18323875fd58c46
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-psutil/python-psutil_7.1.0-1ubuntu1.dsc' python-psutil_7.1.0-1ubuntu1.dsc 2226 SHA256:ea39b208ba4fe31a5aa80c00024ab1a8db4c6cbca4317992b93dbdbd86249f78
```

### `dpkg` source package: `python-semver=3.0.2-1`

Binary Packages:

- `python3-semver=3.0.2-1`

Licenses: (parsed from: `/usr/share/doc/python3-semver/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris python-semver=3.0.2-1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-semver/python-semver_3.0.2-1.dsc' python-semver_3.0.2-1.dsc 2168 SHA256:85d98bac776d158078cc4f3e234dcd2104e6c3c33b0bfd52a0d4471fc9be1122
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-semver/python-semver_3.0.2.orig.tar.xz' python-semver_3.0.2.orig.tar.xz 196556 SHA256:e6f4d94fa22672b259dd31592807faacf9cc0bb6d772ce2a6cc98af23203a962
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-semver/python-semver_3.0.2-1.debian.tar.xz' python-semver_3.0.2-1.debian.tar.xz 3436 SHA256:def2ed4c8433bcaa17ac5d41ad0bb0a0f43d4bfbf417cd05eb7b881a81096b2a
```

### `dpkg` source package: `python-typeguard=4.4.4-2`

Binary Packages:

- `python3-typeguard=4.4.4-2`

Licenses: (parsed from: `/usr/share/doc/python3-typeguard/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-typeguard=4.4.4-2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-typeguard/python-typeguard_4.4.4-2.dsc' python-typeguard_4.4.4-2.dsc 2478 SHA256:7179175870199c689c6229f1fda08a754157603380636f776ddd8ff49f8ba469
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-typeguard/python-typeguard_4.4.4.orig.tar.gz' python-typeguard_4.4.4.orig.tar.gz 71834 SHA256:97e071dea3507d41f10d6254ee41893c3e5e264570f0dc860a3dde95763dee97
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-typeguard/python-typeguard_4.4.4-2.debian.tar.xz' python-typeguard_4.4.4-2.debian.tar.xz 2920 SHA256:e357892890d3009b1b0865bdc64978bb36e085ce3f658994453169b9c0292f2c
```

### `dpkg` source package: `python-typing-extensions=4.15.0-2`

Binary Packages:

- `python3-typing-extensions=4.15.0-2`

Licenses: (parsed from: `/usr/share/doc/python3-typing-extensions/copyright`)

- `PSF`

Source:

```console
$ apt-get source -qq --print-uris python-typing-extensions=4.15.0-2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-typing-extensions/python-typing-extensions_4.15.0-2.dsc' python-typing-extensions_4.15.0-2.dsc 2567 SHA256:f3cb4cfd2cc58a2739735d140063e71554926f0a7b27280c92d4408dabe0f836
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-typing-extensions/python-typing-extensions_4.15.0.orig.tar.gz' python-typing-extensions_4.15.0.orig.tar.gz 109391 SHA256:0cea48d173cc12fa28ecabc3b837ea3cf6f38c6d1136f85cbaaf598984861466
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-typing-extensions/python-typing-extensions_4.15.0-2.debian.tar.xz' python-typing-extensions_4.15.0-2.debian.tar.xz 5144 SHA256:745b4e675eecf758929ac570599422eeb0f1546536f82f486b4193523e8043da
```

### `dpkg` source package: `python-wrapt=2.1.1-1`

Binary Packages:

- `python3-wrapt=2.1.1-1`

Licenses: (parsed from: `/usr/share/doc/python3-wrapt/copyright`)

- `BSD-2-clause`
- `PSF-License`

Source:

```console
$ apt-get source -qq --print-uris python-wrapt=2.1.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-wrapt/python-wrapt_2.1.1-1.dsc' python-wrapt_2.1.1-1.dsc 2255 SHA256:9c5d1f8663e5b9a232bc7798ee559d5d6ff75ea73143c03878f776562dc1eff6
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-wrapt/python-wrapt_2.1.1.orig.tar.xz' python-wrapt_2.1.1.orig.tar.xz 144632 SHA256:76d3dac3e05b59c3837dfa0486d077e3fd5b5641e289db0de57236b0b7c8c244
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-wrapt/python-wrapt_2.1.1-1.debian.tar.xz' python-wrapt_2.1.1-1.debian.tar.xz 6148 SHA256:1be8294706e96b2ab9690a9310b9feaf493db8782121ae96d666bfb217f5e1e1
```

### `dpkg` source package: `python-zipp=3.23.0-1build1`

Binary Packages:

- `python3-zipp=3.23.0-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-zipp/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-zipp=3.23.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-zipp/python-zipp_3.23.0.orig.tar.gz' python-zipp_3.23.0.orig.tar.gz 25547 SHA256:a07157588a12518c9d4034df3fbbee09c814741a33ff63c05fa29d26a2404166
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-zipp/python-zipp_3.23.0-1build1.debian.tar.xz' python-zipp_3.23.0-1build1.debian.tar.xz 3752 SHA256:72e86f140b988daadd5309093721fdced6c269f2f821feafaaaa3d2f055b09f6
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-zipp/python-zipp_3.23.0-1build1.dsc' python-zipp_3.23.0-1build1.dsc 2198 SHA256:f2a4f78b7aff75ac5c894c341ca2990b326c5db66544b3af11922151724ae0e1
```

### `dpkg` source package: `python3-catkin-pkg-modules=1.1.0-2`

Binary Packages:

- `python3-catkin-pkg-modules=1.1.0-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-argcomplete=0.3.3+upstream-1`

Binary Packages:

- `python3-colcon-argcomplete=0.3.3+upstream-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-bash=0.5.0-100`

Binary Packages:

- `python3-colcon-bash=0.5.0-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-cmake=0.2.30+upstream-1`

Binary Packages:

- `python3-colcon-cmake=0.2.30+upstream-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-common-extensions=0.3.0-100`

Binary Packages:

- `python3-colcon-common-extensions=0.3.0-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-core=0.21.0+upstream-1`

Binary Packages:

- `python3-colcon-core=0.21.0+upstream-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-defaults=0.2.9+upstream-1`

Binary Packages:

- `python3-colcon-defaults=0.2.9+upstream-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-library-path=0.2.1-100`

Binary Packages:

- `python3-colcon-library-path=0.2.1-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-metadata=0.2.5-100`

Binary Packages:

- `python3-colcon-metadata=0.2.5-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-mixin=0.2.3-100`

Binary Packages:

- `python3-colcon-mixin=0.2.3-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-notification=0.3.1+upstream-1`

Binary Packages:

- `python3-colcon-notification=0.3.1+upstream-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-output=0.2.14+upstream-1`

Binary Packages:

- `python3-colcon-output=0.2.14+upstream-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-package-information=0.4.1+upstream-1`

Binary Packages:

- `python3-colcon-package-information=0.4.1+upstream-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-package-selection=0.2.10-100`

Binary Packages:

- `python3-colcon-package-selection=0.2.10-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-pkg-config=0.1.0-100`

Binary Packages:

- `python3-colcon-pkg-config=0.1.0-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-powershell=0.5.0+upstream-1`

Binary Packages:

- `python3-colcon-powershell=0.5.0+upstream-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-recursive-crawl=0.2.3-100`

Binary Packages:

- `python3-colcon-recursive-crawl=0.2.3-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-ros=0.5.0+upstream-1`

Binary Packages:

- `python3-colcon-ros=0.5.0+upstream-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-test-result=0.3.8-100`

Binary Packages:

- `python3-colcon-test-result=0.3.8-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-zsh=0.5.0-100`

Binary Packages:

- `python3-colcon-zsh=0.5.0-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-defaults=3.14.3-0ubuntu2`

Binary Packages:

- `libpython3-dev:amd64=3.14.3-0ubuntu2`
- `libpython3-stdlib:amd64=3.14.3-0ubuntu2`
- `python3=3.14.3-0ubuntu2`
- `python3-dev=3.14.3-0ubuntu2`
- `python3-minimal=3.14.3-0ubuntu2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-defaults=3.14.3-0ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.14.3-0ubuntu2.tar.gz' python3-defaults_3.14.3-0ubuntu2.tar.gz 147194 SHA256:8d2534456e1b1abb062222a11700b4a6a9a16d2980f803ddac1a6abaca9a3d83
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.14.3-0ubuntu2.dsc' python3-defaults_3.14.3-0ubuntu2.dsc 3081 SHA256:9049cdf51732dd772dd84eb6b632bef12fee4328f6329407df514121386818ad
```

### `dpkg` source package: `python3-rosdep-modules=0.26.0-1`

Binary Packages:

- `python3-rosdep-modules=0.26.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-rosdep=0.26.0-1`

Binary Packages:

- `python3-rosdep=0.26.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-rosdistro-modules=1.0.1-1`

Binary Packages:

- `python3-rosdistro-modules=1.0.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-rospkg-modules=1.6.1-1`

Binary Packages:

- `python3-rospkg-modules=1.6.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-vcstool=0.3.0-1`

Binary Packages:

- `python3-vcstool=0.3.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3.14=3.14.4-1ubuntu0.1`

Binary Packages:

- `libpython3.14:amd64=3.14.4-1ubuntu0.1`
- `libpython3.14-dev:amd64=3.14.4-1ubuntu0.1`
- `libpython3.14-minimal:amd64=3.14.4-1ubuntu0.1`
- `libpython3.14-stdlib:amd64=3.14.4-1ubuntu0.1`
- `python3.14=3.14.4-1ubuntu0.1`
- `python3.14-dev=3.14.4-1ubuntu0.1`
- `python3.14-minimal=3.14.4-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libpython3.14/copyright`, `/usr/share/doc/libpython3.14-dev/copyright`, `/usr/share/doc/libpython3.14-minimal/copyright`, `/usr/share/doc/libpython3.14-stdlib/copyright`, `/usr/share/doc/python3.14/copyright`, `/usr/share/doc/python3.14-dev/copyright`, `/usr/share/doc/python3.14-minimal/copyright`)

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
$ apt-get source -qq --print-uris python3.14=3.14.4-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.14/python3.14_3.14.4.orig.tar.xz' python3.14_3.14.4.orig.tar.xz 23855332 SHA512:89a7f8b8a31f48d150badb4751df137d47d9014c9c422649a1a55aef5618aa7f0259dd18c151e6804fa8312c6a21544332a9f630ee81150dc00505637e62bb8c
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.14/python3.14_3.14.4-1ubuntu0.1.debian.tar.xz' python3.14_3.14.4-1ubuntu0.1.debian.tar.xz 237260 SHA512:6c64ab7d1c35046d7d2bbb447d0ab020ebc3d7345939f2b2760357f8e70ef3a06c5b038227c3371af70d126676a067d998d6adfbddbc1daa47d65f1bc1356a13
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.14/python3.14_3.14.4-1ubuntu0.1.dsc' python3.14_3.14.4-1ubuntu0.1.dsc 4189 SHA512:85aeeb6ad31d1706e851f96b74de676cf4b954cc38c3ed80f41b04a07cbb0d5459bd9aa5df6341bbbc1d1d7be1abbc1ac4cdc09b4b71aa4eb788feacdc8b1359
```

### `dpkg` source package: `pyyaml=6.0.3-1build1`

Binary Packages:

- `python3-yaml=6.0.3-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-yaml/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris pyyaml=6.0.3-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyyaml/pyyaml_6.0.3.orig.tar.gz' pyyaml_6.0.3.orig.tar.gz 130960 SHA256:d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyyaml/pyyaml_6.0.3-1build1.debian.tar.xz' pyyaml_6.0.3-1build1.debian.tar.xz 7824 SHA256:1e1d06a59006388427476394a2556100bd6e599c34a32c02304af7a8b3fceff6
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyyaml/pyyaml_6.0.3-1build1.dsc' pyyaml_6.0.3-1build1.dsc 2130 SHA256:07f232d47bc5c2ae76988f8fbbbd2cf1f2c048501b709dee45a89c2b9c1a879d
```

### `dpkg` source package: `qhull=2020.2-8`

Binary Packages:

- `libqhull-dev:amd64=2020.2-8`
- `libqhull-r8.0:amd64=2020.2-8`
- `libqhull8.0:amd64=2020.2-8`
- `libqhullcpp8.0:amd64=2020.2-8`

Licenses: (parsed from: `/usr/share/doc/libqhull-dev/copyright`, `/usr/share/doc/libqhull-r8.0/copyright`, `/usr/share/doc/libqhull8.0/copyright`, `/usr/share/doc/libqhullcpp8.0/copyright`)

- `GPL-3`
- `GPL-3+`
- `Qhull`

Source:

```console
$ apt-get source -qq --print-uris qhull=2020.2-8
'http://archive.ubuntu.com/ubuntu/pool/universe/q/qhull/qhull_2020.2-8.dsc' qhull_2020.2-8.dsc 2376 SHA256:c133337d3fec69256a7ec22a17383cadfb759534181f35d5b23d9b78a47de352
'http://archive.ubuntu.com/ubuntu/pool/universe/q/qhull/qhull_2020.2.orig.tar.gz' qhull_2020.2.orig.tar.gz 1298874 SHA256:b5c2d7eb833278881b952c8a52d20179eab87766b00b865000469a45c1838b7e
'http://archive.ubuntu.com/ubuntu/pool/universe/q/qhull/qhull_2020.2-8.debian.tar.xz' qhull_2020.2-8.debian.tar.xz 18780 SHA256:2b7db33ef44276de9b667f4200d3b18ccf7d6a9e266ef21e8663ad18d0381f84
```

### `dpkg` source package: `qt6-base=6.10.2+dfsg-7`

Binary Packages:

- `libqt6concurrent6:amd64=6.10.2+dfsg-7`
- `libqt6core6t64:amd64=6.10.2+dfsg-7`
- `libqt6dbus6:amd64=6.10.2+dfsg-7`
- `libqt6gui6:amd64=6.10.2+dfsg-7`
- `libqt6network6:amd64=6.10.2+dfsg-7`
- `libqt6opengl6:amd64=6.10.2+dfsg-7`
- `libqt6openglwidgets6:amd64=6.10.2+dfsg-7`
- `libqt6printsupport6:amd64=6.10.2+dfsg-7`
- `libqt6sql6:amd64=6.10.2+dfsg-7`
- `libqt6test6:amd64=6.10.2+dfsg-7`
- `libqt6waylandclient6:amd64=6.10.2+dfsg-7`
- `libqt6widgets6:amd64=6.10.2+dfsg-7`
- `libqt6wlshellintegration6:amd64=6.10.2+dfsg-7`
- `libqt6xml6:amd64=6.10.2+dfsg-7`
- `qmake6:amd64=6.10.2+dfsg-7`
- `qmake6-bin=6.10.2+dfsg-7`
- `qt6-base-dev:amd64=6.10.2+dfsg-7`
- `qt6-base-dev-tools=6.10.2+dfsg-7`
- `qt6-qpa-plugins:amd64=6.10.2+dfsg-7`

Licenses: (parsed from: `/usr/share/doc/libqt6concurrent6/copyright`, `/usr/share/doc/libqt6core6t64/copyright`, `/usr/share/doc/libqt6dbus6/copyright`, `/usr/share/doc/libqt6gui6/copyright`, `/usr/share/doc/libqt6network6/copyright`, `/usr/share/doc/libqt6opengl6/copyright`, `/usr/share/doc/libqt6openglwidgets6/copyright`, `/usr/share/doc/libqt6printsupport6/copyright`, `/usr/share/doc/libqt6sql6/copyright`, `/usr/share/doc/libqt6test6/copyright`, `/usr/share/doc/libqt6waylandclient6/copyright`, `/usr/share/doc/libqt6widgets6/copyright`, `/usr/share/doc/libqt6wlshellintegration6/copyright`, `/usr/share/doc/libqt6xml6/copyright`, `/usr/share/doc/qmake6/copyright`, `/usr/share/doc/qmake6-bin/copyright`, `/usr/share/doc/qt6-base-dev/copyright`, `/usr/share/doc/qt6-base-dev-tools/copyright`, `/usr/share/doc/qt6-qpa-plugins/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `BSD-3-clause`
- `Bitstream`
- `Boost-1.0`
- `CC0-1.0`
- `Expat`
- `FTL`
- `GFDL-1.3`
- `GFDL-NIV-1.3`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3 with Qt-1.0 exception`
- `Harfbuzz`
- `Hybrid-BSD`
- `ICC`
- `ISC`
- `LGPL-3`
- `Unicode`
- `W3C`
- `Zlib`
- `brg-endian`
- `libjpeg`
- `libpng`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris qt6-base=6.10.2+dfsg-7
'http://archive.ubuntu.com/ubuntu/pool/universe/q/qt6-base/qt6-base_6.10.2%2bdfsg-7.dsc' qt6-base_6.10.2+dfsg-7.dsc 5686 SHA512:812249044e4307e9a448a3d6c8b600c4238301e8756f3fb4dc83b026d07f0ed3eab320778de98bd40775801dc26f76db63bd35762a12480b6d9d8590c335a6f0
'http://archive.ubuntu.com/ubuntu/pool/universe/q/qt6-base/qt6-base_6.10.2%2bdfsg.orig.tar.xz' qt6-base_6.10.2+dfsg.orig.tar.xz 48516624 SHA512:9c1568b484f0845b7ce8e6344e408738dcb647ab907c7ba348ff2fce3b3290d0690e94dadb7e29a251adfe9964f27a7013a9c47664da4ab773b8593e60345378
'http://archive.ubuntu.com/ubuntu/pool/universe/q/qt6-base/qt6-base_6.10.2%2bdfsg-7.debian.tar.xz' qt6-base_6.10.2+dfsg-7.debian.tar.xz 205464 SHA512:d5dd829e97e1887657821d2e80810d4b1fb76a2f8ab21791b323e6a1af0d8ce1ee91f233ea04a898684db6bef546a57ec41cf90c5efabf27046e39524c7dd70c
```

### `dpkg` source package: `qtbase-opensource-src=5.15.18+dfsg-1ubuntu1`

Binary Packages:

- `libqt5core5t64:amd64=5.15.18+dfsg-1ubuntu1`
- `libqt5dbus5t64:amd64=5.15.18+dfsg-1ubuntu1`
- `libqt5gui5t64:amd64=5.15.18+dfsg-1ubuntu1`
- `libqt5network5t64:amd64=5.15.18+dfsg-1ubuntu1`
- `libqt5opengl5t64:amd64=5.15.18+dfsg-1ubuntu1`
- `libqt5test5t64:amd64=5.15.18+dfsg-1ubuntu1`
- `libqt5widgets5t64:amd64=5.15.18+dfsg-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libqt5core5t64/copyright`, `/usr/share/doc/libqt5dbus5t64/copyright`, `/usr/share/doc/libqt5gui5t64/copyright`, `/usr/share/doc/libqt5network5t64/copyright`, `/usr/share/doc/libqt5opengl5t64/copyright`, `/usr/share/doc/libqt5test5t64/copyright`, `/usr/share/doc/libqt5widgets5t64/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `BSD-3-clause`
- `BSL-1.0`
- `Bitstream`
- `CC0-1.0`
- `Expat`
- `FTL`
- `GFDL-1.3`
- `GFDL-NIV-1.3`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3 with Qt-1.0 exception`
- `Harfbuzz`
- `Hybrid-BSD`
- `ICC`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `MPL-2.0`
- `Unicode`
- `W3C`
- `Zlib`
- `brg-endian`
- `libjpeg`
- `libpng`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris qtbase-opensource-src=5.15.18+dfsg-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/universe/q/qtbase-opensource-src/qtbase-opensource-src_5.15.18%2bdfsg.orig.tar.xz' qtbase-opensource-src_5.15.18+dfsg.orig.tar.xz 49200288 SHA256:2db9dde2b8eb78bafe8428516d6a871872d1642d532c9bd87aa936e902f2c878
'http://archive.ubuntu.com/ubuntu/pool/universe/q/qtbase-opensource-src/qtbase-opensource-src_5.15.18%2bdfsg-1ubuntu1.debian.tar.xz' qtbase-opensource-src_5.15.18+dfsg-1ubuntu1.debian.tar.xz 227900 SHA256:c491fd6f184efa7ac6ea253c7956c1392f89463db9aee33e055dc63ca88d638a
'http://archive.ubuntu.com/ubuntu/pool/universe/q/qtbase-opensource-src/qtbase-opensource-src_5.15.18%2bdfsg-1ubuntu1.dsc' qtbase-opensource-src_5.15.18+dfsg-1ubuntu1.dsc 5589 SHA256:f9f1a3a72efbba8dc3892b3f319ceb92b04971551f455ccda5d7643898d982c2
```

### `dpkg` source package: `rdma-core=61.0-2ubuntu3`

Binary Packages:

- `ibverbs-providers:amd64=61.0-2ubuntu3`
- `libibmad5:amd64=61.0-2ubuntu3`
- `libibumad3:amd64=61.0-2ubuntu3`
- `libibverbs-dev:amd64=61.0-2ubuntu3`
- `libibverbs1:amd64=61.0-2ubuntu3`
- `librdmacm1t64:amd64=61.0-2ubuntu3`

Licenses: (parsed from: `/usr/share/doc/ibverbs-providers/copyright`, `/usr/share/doc/libibmad5/copyright`, `/usr/share/doc/libibumad3/copyright`, `/usr/share/doc/libibverbs-dev/copyright`, `/usr/share/doc/libibverbs1/copyright`, `/usr/share/doc/librdmacm1t64/copyright`)

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
$ apt-get source -qq --print-uris rdma-core=61.0-2ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/r/rdma-core/rdma-core_61.0.orig.tar.gz' rdma-core_61.0.orig.tar.gz 2089708 SHA256:340be509137103677ea30798d6ffe64a991148dae333b79a5bc0744e219fde2f
'http://archive.ubuntu.com/ubuntu/pool/main/r/rdma-core/rdma-core_61.0-2ubuntu3.debian.tar.xz' rdma-core_61.0-2ubuntu3.debian.tar.xz 25772 SHA256:75418d1a85757045e3d6bbf01a21315c9e3f487dc24919efc590cad9f169eb9c
'http://archive.ubuntu.com/ubuntu/pool/main/r/rdma-core/rdma-core_61.0-2ubuntu3.dsc' rdma-core_61.0-2ubuntu3.dsc 3075 SHA256:61420d113dd0a84389d1b91635e64fa204078f1ed747f0c904d51fdbfe199c21
```

### `dpkg` source package: `readline=8.3-4`

Binary Packages:

- `libreadline8t64:amd64=8.3-4`
- `readline-common=8.3-4`

Licenses: (parsed from: `/usr/share/doc/libreadline8t64/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GFDL`
- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `ISC-no-attribution`

Source:

```console
$ apt-get source -qq --print-uris readline=8.3-4
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.3-4.dsc' readline_8.3-4.dsc 2957 SHA256:fce5107e62911aa84c18d6049469cb34c31db7fd35ab9f8182e4da7fb6959527
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.3.orig.tar.gz' readline_8.3.orig.tar.gz 3419642 SHA256:fe5383204467828cd495ee8d1d3c037a7eba1389c22bc6a041f627976f9061cc
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.3-4.debian.tar.xz' readline_8.3-4.debian.tar.xz 28644 SHA256:506ec377afd3688752554271e6d9a69c12a4d19ec1c002116fc70967ca6a5bdf
```

### `dpkg` source package: `rhash=1.4.6-1.1`

Binary Packages:

- `librhash1:amd64=1.4.6-1.1`

Licenses: (parsed from: `/usr/share/doc/librhash1/copyright`)

- `0BSD`

Source:

```console
$ apt-get source -qq --print-uris rhash=1.4.6-1.1
'http://archive.ubuntu.com/ubuntu/pool/main/r/rhash/rhash_1.4.6-1.1.dsc' rhash_1.4.6-1.1.dsc 2289 SHA256:a82cf404f096943b1d13010dc9b7f5c4c73b01e350abe17561852a69bb61c625
'http://archive.ubuntu.com/ubuntu/pool/main/r/rhash/rhash_1.4.6.orig.tar.gz' rhash_1.4.6.orig.tar.gz 465103 SHA256:a72b92ef5b7941d96c7a2d66e6e3b618bfd8c452e20b0fdaaa6988defca7e9bf
'http://archive.ubuntu.com/ubuntu/pool/main/r/rhash/rhash_1.4.6.orig.tar.gz.asc' rhash_1.4.6.orig.tar.gz.asc 833 SHA256:cbd73b528320e233d9afa752406a47d8344beb8cb5fbb94db75a939319a28a4c
'http://archive.ubuntu.com/ubuntu/pool/main/r/rhash/rhash_1.4.6-1.1.debian.tar.xz' rhash_1.4.6-1.1.debian.tar.xz 10516 SHA256:d295fd94007805e5f10f1fd31529a05a45104aa67a0fc75aa46c190847a71e39
```

### `dpkg` source package: `rocm-hipamd=7.1.0-0ubuntu2`

Binary Packages:

- `libamdhip64-7:amd64=7.1.0-0ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libamdhip64-7/copyright`)

- `Apache-2`
- `Apache-2.0`
- `Expat`
- `Khronos`

Source:

```console
$ apt-get source -qq --print-uris rocm-hipamd=7.1.0-0ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/universe/r/rocm-hipamd/rocm-hipamd_7.1.0.orig-hip.tar.xz' rocm-hipamd_7.1.0.orig-hip.tar.xz 1069652 SHA256:6e52652014719758c0db458b4a4fd6e3701e325e2378f73fd7d2091ac2eb6e7e
'http://archive.ubuntu.com/ubuntu/pool/universe/r/rocm-hipamd/rocm-hipamd_7.1.0.orig.tar.xz' rocm-hipamd_7.1.0.orig.tar.xz 1265280 SHA256:89b902cdcc1574302c058289c6b10d7cb4d32e2dd57dd9a4a56e9688bb5dc368
'http://archive.ubuntu.com/ubuntu/pool/universe/r/rocm-hipamd/rocm-hipamd_7.1.0-0ubuntu2.debian.tar.xz' rocm-hipamd_7.1.0-0ubuntu2.debian.tar.xz 25844 SHA256:8c29e0d5b07ada8216b9fe7ee6e68bd0d170f93132f24bdc38c2a516c9ec4749
'http://archive.ubuntu.com/ubuntu/pool/universe/r/rocm-hipamd/rocm-hipamd_7.1.0-0ubuntu2.dsc' rocm-hipamd_7.1.0-0ubuntu2.dsc 3290 SHA256:49a8671db3b2e536fcf27b67cb8f519a9f256bc2346ed149e547738d641ffc8e
```

### `dpkg` source package: `rocm-llvm=7.1.1+dfsg-0ubuntu1`

Binary Packages:

- `libamd-comgr3:amd64=7.1.1+dfsg-0ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libamd-comgr3/copyright`)

- `APACHE-2-LLVM-EXCEPTIONS`
- `Apache-2.0`
- `Expat`
- `NCSA`
- `NCSA-AMD`

Source:

```console
$ apt-get source -qq --print-uris rocm-llvm=7.1.1+dfsg-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/universe/r/rocm-llvm/rocm-llvm_7.1.1%2bdfsg.orig.tar.xz' rocm-llvm_7.1.1+dfsg.orig.tar.xz 326252 SHA512:1a5da850e5fb88f1ea724c7f7829a7e0744c5479b4fafee2763f5a55da0ef0007e760b6342a22334a4e8e94d244f5f5b3b989a6697319157bfd551d93c48fd0e
'http://archive.ubuntu.com/ubuntu/pool/universe/r/rocm-llvm/rocm-llvm_7.1.1%2bdfsg-0ubuntu1.debian.tar.xz' rocm-llvm_7.1.1+dfsg-0ubuntu1.debian.tar.xz 14744 SHA512:6af9029c6920ccbaa7bcd56992727ac9cae6c7e0cb7d285a972b53a1afdc861db5ae7d7d1ad5254a3bba08ecaf14419d15faf35264788194fd88193c0af50c50
'http://archive.ubuntu.com/ubuntu/pool/universe/r/rocm-llvm/rocm-llvm_7.1.1%2bdfsg-0ubuntu1.dsc' rocm-llvm_7.1.1+dfsg-0ubuntu1.dsc 2722 SHA512:9a8e5ddfb8344ecdc15fb126f98653b4b474ebe5708d4f56d1adb87f1e8fe546eda967172a0e88d36f713e6e22d4d828a42252566b04bfaf4282e20d43e008a5
```

### `dpkg` source package: `rocr-runtime=7.1.0+dfsg-0ubuntu9`

Binary Packages:

- `libhsa-runtime64-1:amd64=7.1.0+dfsg-0ubuntu9`
- `libhsakmt1:amd64=7.1.0+dfsg-0ubuntu9`

Licenses: (parsed from: `/usr/share/doc/libhsa-runtime64-1/copyright`, `/usr/share/doc/libhsakmt1/copyright`)

- `APACHE-2-LLVM-EXCEPTIONS`
- `Apache-2.0`
- `BSD-2-clause`
- `BSD-3-clause`
- `Expat`
- `NCSA`

Source:

```console
$ apt-get source -qq --print-uris rocr-runtime=7.1.0+dfsg-0ubuntu9
'http://archive.ubuntu.com/ubuntu/pool/universe/r/rocr-runtime/rocr-runtime_7.1.0%2bdfsg.orig.tar.xz' rocr-runtime_7.1.0+dfsg.orig.tar.xz 1092884 SHA512:7206a52d5b9ad0dc845bf3946b37b001817ae38876520939dddf52c57c556a4c5eacc9db3623593d0c25ef363ae879176b4f0f6a9cb572b2907e0d08dbf2a517
'http://archive.ubuntu.com/ubuntu/pool/universe/r/rocr-runtime/rocr-runtime_7.1.0%2bdfsg-0ubuntu9.debian.tar.xz' rocr-runtime_7.1.0+dfsg-0ubuntu9.debian.tar.xz 25424 SHA512:63ccc20001622079ca248e40672c520fe97415243d924bb0482c69f371ee133d34cf2ac0a63337b2ff776b852440294061b1db063ed4f191c6609b72f6ff29d5
'http://archive.ubuntu.com/ubuntu/pool/universe/r/rocr-runtime/rocr-runtime_7.1.0%2bdfsg-0ubuntu9.dsc' rocr-runtime_7.1.0+dfsg-0ubuntu9.dsc 3034 SHA512:f6af34d12413c1ec0404eb849139146cc2d091a893df5127ca9006d8284e0f0b6b771149ab93b73cef7f9612de044b8b6d8203cf5eb757bfa3beda5c5ab5d258
```

### `dpkg` source package: `roman-numerals=4.1.0-1`

Binary Packages:

- `python3-roman-numerals=4.1.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-roman-numerals/copyright`)

- `0BSD`
- `CC0-1.0`

Source:

```console
$ apt-get source -qq --print-uris roman-numerals=4.1.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/r/roman-numerals/roman-numerals_4.1.0-1.dsc' roman-numerals_4.1.0-1.dsc 2226 SHA256:42871fea60cc6324b794d22112f212c8e5c17880e09182e6edcf360f4b8fce66
'http://archive.ubuntu.com/ubuntu/pool/main/r/roman-numerals/roman-numerals_4.1.0.orig.tar.gz' roman-numerals_4.1.0.orig.tar.gz 19658 SHA256:c12d098de0c0befa3de91be3f456f272978f481411fb22441a6b9fe386c24f80
'http://archive.ubuntu.com/ubuntu/pool/main/r/roman-numerals/roman-numerals_4.1.0-1.debian.tar.xz' roman-numerals_4.1.0-1.debian.tar.xz 4736 SHA256:2d5f2ce66ad500cd63b74bfa52533516e1863a7c8778594cfd1e2b5acc59360b
```

### `dpkg` source package: `ros-apt-source=1.2.0~resolute`

Binary Packages:

- `ros2-apt-source=1.2.0~resolute`

Licenses: (parsed from: `/usr/share/doc/ros2-apt-source/copyright`)

- `Apache-2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-action-msgs=2.4.5-1resolute.20260728.213744`

Binary Packages:

- `ros-lyrical-action-msgs=2.4.5-1resolute.20260728.213744`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-action-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-auto=2.8.8-1resolute.20260728.210738`

Binary Packages:

- `ros-lyrical-ament-cmake-auto=2.8.8-1resolute.20260728.210738`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-auto/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-copyright=0.20.6-1resolute.20260728.204014`

Binary Packages:

- `ros-lyrical-ament-cmake-copyright=0.20.6-1resolute.20260728.204014`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-copyright/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-core=2.8.8-1resolute.20260728.162608`

Binary Packages:

- `ros-lyrical-ament-cmake-core=2.8.8-1resolute.20260728.162608`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-core/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-cppcheck=0.20.6-1resolute.20260728.204151`

Binary Packages:

- `ros-lyrical-ament-cmake-cppcheck=0.20.6-1resolute.20260728.204151`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-cppcheck/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-cpplint=0.20.6-1resolute.20260728.204159`

Binary Packages:

- `ros-lyrical-ament-cmake-cpplint=0.20.6-1resolute.20260728.204159`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-cpplint/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-export-definitions=2.8.8-1resolute.20260728.173325`

Binary Packages:

- `ros-lyrical-ament-cmake-export-definitions=2.8.8-1resolute.20260728.173325`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-export-definitions/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-export-dependencies=2.8.8-1resolute.20260728.173500`

Binary Packages:

- `ros-lyrical-ament-cmake-export-dependencies=2.8.8-1resolute.20260728.173500`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-export-dependencies/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-export-include-directories=2.8.8-1resolute.20260728.172444`

Binary Packages:

- `ros-lyrical-ament-cmake-export-include-directories=2.8.8-1resolute.20260728.172444`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-export-include-directories/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-export-libraries=2.8.8-1resolute.20260728.173328`

Binary Packages:

- `ros-lyrical-ament-cmake-export-libraries=2.8.8-1resolute.20260728.173328`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-export-libraries/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-export-link-flags=2.8.8-1resolute.20260728.173334`

Binary Packages:

- `ros-lyrical-ament-cmake-export-link-flags=2.8.8-1resolute.20260728.173334`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-export-link-flags/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-export-targets=2.8.8-1resolute.20260728.173432`

Binary Packages:

- `ros-lyrical-ament-cmake-export-targets=2.8.8-1resolute.20260728.173432`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-export-targets/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-flake8=0.20.6-1resolute.20260728.204007`

Binary Packages:

- `ros-lyrical-ament-cmake-flake8=0.20.6-1resolute.20260728.204007`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-flake8/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-gen-version-h=2.8.8-1resolute.20260728.173325`

Binary Packages:

- `ros-lyrical-ament-cmake-gen-version-h=2.8.8-1resolute.20260728.173325`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-gen-version-h/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-gmock=2.8.8-1resolute.20260728.175747`

Binary Packages:

- `ros-lyrical-ament-cmake-gmock=2.8.8-1resolute.20260728.175747`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-gmock/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-gtest=2.8.8-1resolute.20260728.175609`

Binary Packages:

- `ros-lyrical-ament-cmake-gtest=2.8.8-1resolute.20260728.175609`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-gtest/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-include-directories=2.8.8-1resolute.20260728.173227`

Binary Packages:

- `ros-lyrical-ament-cmake-include-directories=2.8.8-1resolute.20260728.173227`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-include-directories/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-libraries=2.8.8-1resolute.20260728.173352`

Binary Packages:

- `ros-lyrical-ament-cmake-libraries=2.8.8-1resolute.20260728.173352`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-libraries/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-lint-cmake=0.20.6-1resolute.20260728.204241`

Binary Packages:

- `ros-lyrical-ament-cmake-lint-cmake=0.20.6-1resolute.20260728.204241`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-lint-cmake/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-mypy=0.20.6-1resolute.20260728.204152`

Binary Packages:

- `ros-lyrical-ament-cmake-mypy=0.20.6-1resolute.20260728.204152`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-mypy/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-pep257=0.20.6-1resolute.20260728.204012`

Binary Packages:

- `ros-lyrical-ament-cmake-pep257=0.20.6-1resolute.20260728.204012`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-pep257/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-pytest=2.8.8-1resolute.20260728.175653`

Binary Packages:

- `ros-lyrical-ament-cmake-pytest=2.8.8-1resolute.20260728.175653`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-pytest/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-python=2.8.8-1resolute.20260728.173021`

Binary Packages:

- `ros-lyrical-ament-cmake-python=2.8.8-1resolute.20260728.173021`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-python/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-ros-core=0.15.8-1resolute.20260728.173607`

Binary Packages:

- `ros-lyrical-ament-cmake-ros-core=0.15.8-1resolute.20260728.173607`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-ros-core/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-ros=0.15.8-1resolute.20260730.180608`

Binary Packages:

- `ros-lyrical-ament-cmake-ros=0.15.8-1resolute.20260730.180608`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-ros/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-target-dependencies=2.8.8-1resolute.20260728.173503`

Binary Packages:

- `ros-lyrical-ament-cmake-target-dependencies=2.8.8-1resolute.20260728.173503`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-target-dependencies/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-test=2.8.8-1resolute.20260728.175319`

Binary Packages:

- `ros-lyrical-ament-cmake-test=2.8.8-1resolute.20260728.175319`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-test/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-uncrustify=0.20.6-1resolute.20260728.210813`

Binary Packages:

- `ros-lyrical-ament-cmake-uncrustify=0.20.6-1resolute.20260728.210813`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-uncrustify/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-version=2.8.8-1resolute.20260728.173013`

Binary Packages:

- `ros-lyrical-ament-cmake-version=2.8.8-1resolute.20260728.173013`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-version/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-xmllint=0.20.6-1resolute.20260728.204019`

Binary Packages:

- `ros-lyrical-ament-cmake-xmllint=0.20.6-1resolute.20260728.204019`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-xmllint/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake=2.8.8-1resolute.20260728.175713`

Binary Packages:

- `ros-lyrical-ament-cmake=2.8.8-1resolute.20260728.175713`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-copyright=0.20.6-1resolute.20260728.172704`

Binary Packages:

- `ros-lyrical-ament-copyright=0.20.6-1resolute.20260728.172704`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-copyright/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cppcheck=0.20.6-1resolute.20260728.173125`

Binary Packages:

- `ros-lyrical-ament-cppcheck=0.20.6-1resolute.20260728.173125`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cppcheck/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cpplint=0.20.6-1resolute.20260728.173508`

Binary Packages:

- `ros-lyrical-ament-cpplint=0.20.6-1resolute.20260728.173508`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cpplint/copyright`)

- `Apache License 2.0`
- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-flake8=0.20.6-1resolute.20260728.172702`

Binary Packages:

- `ros-lyrical-ament-flake8=0.20.6-1resolute.20260728.172702`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-flake8/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-index-cpp=1.13.3-3resolute.20260728.204744`

Binary Packages:

- `ros-lyrical-ament-index-cpp=1.13.3-3resolute.20260728.204744`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-index-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-index-python=1.13.3-3resolute.20260728.172618`

Binary Packages:

- `ros-lyrical-ament-index-python=1.13.3-3resolute.20260728.172618`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-index-python/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-lint-auto=0.20.6-1resolute.20260728.204247`

Binary Packages:

- `ros-lyrical-ament-lint-auto=0.20.6-1resolute.20260728.204247`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-lint-auto/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-lint-cmake=0.20.6-1resolute.20260728.173508`

Binary Packages:

- `ros-lyrical-ament-lint-cmake=0.20.6-1resolute.20260728.173508`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-lint-cmake/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-lint-common=0.20.6-1resolute.20260728.211054`

Binary Packages:

- `ros-lyrical-ament-lint-common=0.20.6-1resolute.20260728.211054`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-lint-common/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-lint=0.20.6-1resolute.20260728.172451`

Binary Packages:

- `ros-lyrical-ament-lint=0.20.6-1resolute.20260728.172451`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-lint/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-mypy=0.20.6-1resolute.20260728.173532`

Binary Packages:

- `ros-lyrical-ament-mypy=0.20.6-1resolute.20260728.173532`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-mypy/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-package=0.18.3-3resolute.20260430.010336`

Binary Packages:

- `ros-lyrical-ament-package=0.18.3-3resolute.20260430.010336`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-package/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-pep257=0.20.6-1resolute.20260728.172706`

Binary Packages:

- `ros-lyrical-ament-pep257=0.20.6-1resolute.20260728.172706`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-pep257/copyright`)

- `Apache License 2.0`
- `MIT`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-uncrustify=0.20.6-1resolute.20260728.210701`

Binary Packages:

- `ros-lyrical-ament-uncrustify=0.20.6-1resolute.20260728.210701`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-uncrustify/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-xmllint=0.20.6-1resolute.20260728.172708`

Binary Packages:

- `ros-lyrical-ament-xmllint=0.20.6-1resolute.20260728.172708`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-xmllint/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-angles=1.16.1-3resolute.20260728.204755`

Binary Packages:

- `ros-lyrical-angles=1.16.1-3resolute.20260728.204755`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-angles/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-builtin-interfaces=2.4.5-1resolute.20260728.212832`

Binary Packages:

- `ros-lyrical-builtin-interfaces=2.4.5-1resolute.20260728.212832`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-builtin-interfaces/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-camera-calibration-parsers=6.4.10-1resolute.20260804.064301`

Binary Packages:

- `ros-lyrical-camera-calibration-parsers=6.4.10-1resolute.20260804.064301`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-camera-calibration-parsers/copyright`)

- `BSD-3-Clause`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-camera-calibration=7.1.7-1resolute.20260804.072154`

Binary Packages:

- `ros-lyrical-camera-calibration=7.1.7-1resolute.20260804.072154`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-camera-calibration/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-camera-info-manager=6.4.10-1resolute.20260804.072005`

Binary Packages:

- `ros-lyrical-camera-info-manager=6.4.10-1resolute.20260804.072005`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-camera-info-manager/copyright`)

- `BSD-3-Clause`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-class-loader=2.9.4-3resolute.20260728.211940`

Binary Packages:

- `ros-lyrical-class-loader=2.9.4-3resolute.20260728.211940`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-class-loader/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-common-interfaces=5.9.3-1resolute.20260729.000033`

Binary Packages:

- `ros-lyrical-common-interfaces=5.9.3-1resolute.20260729.000033`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-common-interfaces/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-composition-interfaces=2.4.5-1resolute.20260728.225733`

Binary Packages:

- `ros-lyrical-composition-interfaces=2.4.5-1resolute.20260728.225733`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-composition-interfaces/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-compressed-depth-image-transport=6.2.6-1resolute.20260804.072546`

Binary Packages:

- `ros-lyrical-compressed-depth-image-transport=6.2.6-1resolute.20260804.072546`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-compressed-depth-image-transport/copyright`)

- `BSD`
- `MIT`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-compressed-image-transport=6.2.6-1resolute.20260804.072209`

Binary Packages:

- `ros-lyrical-compressed-image-transport=6.2.6-1resolute.20260804.072209`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-compressed-image-transport/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-console-bridge-vendor=1.9.1-3resolute.20260728.205113`

Binary Packages:

- `ros-lyrical-console-bridge-vendor=1.9.1-3resolute.20260728.205113`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-console-bridge-vendor/copyright`)

- `Apache License 2.0`
- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-cv-bridge=4.1.0-3resolute.20260804.064311`

Binary Packages:

- `ros-lyrical-cv-bridge=4.1.0-3resolute.20260804.064311`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-cv-bridge/copyright`)

- `Apache License 2.0`
- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-depth-image-proc=7.1.7-1resolute.20260804.073312`

Binary Packages:

- `ros-lyrical-depth-image-proc=7.1.7-1resolute.20260804.073312`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-depth-image-proc/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-diagnostic-msgs=5.9.3-1resolute.20260728.232313`

Binary Packages:

- `ros-lyrical-diagnostic-msgs=5.9.3-1resolute.20260728.232313`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-diagnostic-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-diagnostic-updater=4.4.7-1resolute.20260730.202920`

Binary Packages:

- `ros-lyrical-diagnostic-updater=4.4.7-1resolute.20260730.202920`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-diagnostic-updater/copyright`)

- `BSD-3-Clause`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-eigen3-cmake-module=0.5.1-3resolute.20260728.205221`

Binary Packages:

- `ros-lyrical-eigen3-cmake-module=0.5.1-3resolute.20260728.205221`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-eigen3-cmake-module/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-fastcdr=2.3.6-1resolute.20260728.172850`

Binary Packages:

- `ros-lyrical-fastcdr=2.3.6-1resolute.20260728.172850`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-fastcdr/copyright`)

- `Apache 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-fastdds=3.6.2-1resolute.20260728.174239`

Binary Packages:

- `ros-lyrical-fastdds=3.6.2-1resolute.20260728.174239`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-fastdds/copyright`)

- `Apache 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-filters=2.2.2-3resolute.20260804.064856`

Binary Packages:

- `ros-lyrical-filters=2.2.2-3resolute.20260804.064856`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-filters/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-foonathan-memory-vendor=1.4.1-1resolute.20260728.173726`

Binary Packages:

- `ros-lyrical-foonathan-memory-vendor=1.4.1-1resolute.20260728.173726`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-foonathan-memory-vendor/copyright`)

- `Apache License 2.0`
- `zlib License`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-geometry-msgs=5.9.3-1resolute.20260728.231241`

Binary Packages:

- `ros-lyrical-geometry-msgs=5.9.3-1resolute.20260728.231241`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-geometry-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-geometry2=0.45.9-1resolute.20260805.065025`

Binary Packages:

- `ros-lyrical-geometry2=0.45.9-1resolute.20260805.065025`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-geometry2/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-image-common=6.4.10-1resolute.20260804.072428`

Binary Packages:

- `ros-lyrical-image-common=6.4.10-1resolute.20260804.072428`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-image-common/copyright`)

- `BSD-3-Clause`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-image-geometry=4.1.0-3resolute.20260730.181019`

Binary Packages:

- `ros-lyrical-image-geometry=4.1.0-3resolute.20260730.181019`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-image-geometry/copyright`)

- `Apache License 2.0`
- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-image-pipeline=7.1.7-1resolute.20260804.075136`

Binary Packages:

- `ros-lyrical-image-pipeline=7.1.7-1resolute.20260804.075136`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-image-pipeline/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-image-proc=7.1.7-1resolute.20260804.072007`

Binary Packages:

- `ros-lyrical-image-proc=7.1.7-1resolute.20260804.072007`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-image-proc/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-image-publisher=7.1.7-1resolute.20260804.072432`

Binary Packages:

- `ros-lyrical-image-publisher=7.1.7-1resolute.20260804.072432`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-image-publisher/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-image-rotate=7.1.7-1resolute.20260804.072128`

Binary Packages:

- `ros-lyrical-image-rotate=7.1.7-1resolute.20260804.072128`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-image-rotate/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-image-transport-plugins=6.2.6-1resolute.20260804.073911`

Binary Packages:

- `ros-lyrical-image-transport-plugins=6.2.6-1resolute.20260804.073911`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-image-transport-plugins/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-image-transport=6.4.10-1resolute.20260730.203525`

Binary Packages:

- `ros-lyrical-image-transport=6.4.10-1resolute.20260730.203525`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-image-transport/copyright`)

- `BSD-3-Clause`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-image-view=7.1.7-1resolute.20260804.072002`

Binary Packages:

- `ros-lyrical-image-view=7.1.7-1resolute.20260804.072002`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-image-view/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-kdl-parser=3.0.1-3resolute.20260730.201826`

Binary Packages:

- `ros-lyrical-kdl-parser=3.0.1-3resolute.20260730.201826`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-kdl-parser/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-keyboard-handler=0.5.1-1resolute.20260728.205547`

Binary Packages:

- `ros-lyrical-keyboard-handler=0.5.1-1resolute.20260728.205547`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-keyboard-handler/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-laser-filters=2.3.2-3resolute.20260804.073019`

Binary Packages:

- `ros-lyrical-laser-filters=2.3.2-3resolute.20260804.073019`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-laser-filters/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-laser-geometry=2.11.3-6resolute.20260730.193951`

Binary Packages:

- `ros-lyrical-laser-geometry=2.11.3-6resolute.20260730.193951`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-laser-geometry/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-launch-ros=0.29.9-1resolute.20260730.202345`

Binary Packages:

- `ros-lyrical-launch-ros=0.29.9-1resolute.20260730.202345`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-launch-ros/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-launch-testing-ament-cmake=3.9.8-1resolute.20260728.205136`

Binary Packages:

- `ros-lyrical-launch-testing-ament-cmake=3.9.8-1resolute.20260728.205136`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-launch-testing-ament-cmake/copyright`)

- `Apache License 2.0`
- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-launch-testing-ros=0.29.9-1resolute.20260730.202453`

Binary Packages:

- `ros-lyrical-launch-testing-ros=0.29.9-1resolute.20260730.202453`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-launch-testing-ros/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-launch-testing=3.9.8-1resolute.20260728.175423`

Binary Packages:

- `ros-lyrical-launch-testing=3.9.8-1resolute.20260728.175423`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-launch-testing/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-launch-xml=3.9.8-1resolute.20260728.175211`

Binary Packages:

- `ros-lyrical-launch-xml=3.9.8-1resolute.20260728.175211`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-launch-xml/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-launch-yaml=3.9.8-1resolute.20260728.172929`

Binary Packages:

- `ros-lyrical-launch-yaml=3.9.8-1resolute.20260728.172929`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-launch-yaml/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-launch=3.9.8-1resolute.20260728.172811`

Binary Packages:

- `ros-lyrical-launch=3.9.8-1resolute.20260728.172811`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-launch/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-libstatistics-collector=2.1.2-1resolute.20260730.191931`

Binary Packages:

- `ros-lyrical-libstatistics-collector=2.1.2-1resolute.20260730.191931`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-libstatistics-collector/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-libyaml-vendor=1.8.1-3resolute.20260728.205613`

Binary Packages:

- `ros-lyrical-libyaml-vendor=1.8.1-3resolute.20260728.205613`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-libyaml-vendor/copyright`)

- `Apache License 2.0`
- `MIT`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-lifecycle-msgs=2.4.5-1resolute.20260728.225031`

Binary Packages:

- `ros-lyrical-lifecycle-msgs=2.4.5-1resolute.20260728.225031`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-lifecycle-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-lz4-cmake-module=0.33.3-1resolute.20260728.205656`

Binary Packages:

- `ros-lyrical-lz4-cmake-module=0.33.3-1resolute.20260728.205656`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-lz4-cmake-module/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-mcap-vendor=0.33.3-1resolute.20260728.210724`

Binary Packages:

- `ros-lyrical-mcap-vendor=0.33.3-1resolute.20260728.210724`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-mcap-vendor/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-message-filters=7.4.2-1resolute.20260730.203000`

Binary Packages:

- `ros-lyrical-message-filters=7.4.2-1resolute.20260730.203000`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-message-filters/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-nav-msgs=5.9.3-1resolute.20260728.232559`

Binary Packages:

- `ros-lyrical-nav-msgs=5.9.3-1resolute.20260728.232559`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-nav-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-pcl-conversions=2.10.0-1resolute.20260804.070004`

Binary Packages:

- `ros-lyrical-pcl-conversions=2.10.0-1resolute.20260804.070004`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-pcl-conversions/copyright`)

- `BSD-3-Clause`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-pcl-msgs=1.0.0-10resolute.20260728.234931`

Binary Packages:

- `ros-lyrical-pcl-msgs=1.0.0-10resolute.20260728.234931`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-pcl-msgs/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-pcl-ros=2.10.0-1resolute.20260805.074035`

Binary Packages:

- `ros-lyrical-pcl-ros=2.10.0-1resolute.20260805.074035`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-pcl-ros/copyright`)

- `BSD-3-Clause`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-perception-pcl=2.10.0-1resolute.20260805.080949`

Binary Packages:

- `ros-lyrical-perception-pcl=2.10.0-1resolute.20260805.080949`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-perception-pcl/copyright`)

- `BSD-3-Clause`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-perception=0.13.0-3resolute.20260805.151014`

Binary Packages:

- `ros-lyrical-perception=0.13.0-3resolute.20260805.151014`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-perception/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-pluginlib=5.8.4-3resolute.20260728.212925`

Binary Packages:

- `ros-lyrical-pluginlib=5.8.4-3resolute.20260728.212925`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-pluginlib/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rcl-action=10.4.4-1resolute.20260730.191914`

Binary Packages:

- `ros-lyrical-rcl-action=10.4.4-1resolute.20260730.191914`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rcl-action/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rcl-interfaces=2.4.5-1resolute.20260728.225214`

Binary Packages:

- `ros-lyrical-rcl-interfaces=2.4.5-1resolute.20260728.225214`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rcl-interfaces/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rcl-lifecycle=10.4.4-1resolute.20260730.192251`

Binary Packages:

- `ros-lyrical-rcl-lifecycle=10.4.4-1resolute.20260730.192251`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rcl-lifecycle/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rcl-logging-implementation=3.4.1-3resolute.20260730.191158`

Binary Packages:

- `ros-lyrical-rcl-logging-implementation=3.4.1-3resolute.20260730.191158`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rcl-logging-implementation/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rcl-logging-interface=3.4.1-3resolute.20260730.181332`

Binary Packages:

- `ros-lyrical-rcl-logging-interface=3.4.1-3resolute.20260730.181332`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rcl-logging-interface/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rcl-logging-spdlog=3.4.1-3resolute.20260730.190853`

Binary Packages:

- `ros-lyrical-rcl-logging-spdlog=3.4.1-3resolute.20260730.190853`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rcl-logging-spdlog/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rcl-yaml-param-parser=10.4.4-1resolute.20260730.190918`

Binary Packages:

- `ros-lyrical-rcl-yaml-param-parser=10.4.4-1resolute.20260730.190918`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rcl-yaml-param-parser/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rcl=10.4.4-1resolute.20260730.191417`

Binary Packages:

- `ros-lyrical-rcl=10.4.4-1resolute.20260730.191417`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rcl/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rclcpp-action=32.0.2-1resolute.20260730.202907`

Binary Packages:

- `ros-lyrical-rclcpp-action=32.0.2-1resolute.20260730.202907`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rclcpp-action/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rclcpp-components=32.0.2-1resolute.20260730.203016`

Binary Packages:

- `ros-lyrical-rclcpp-components=32.0.2-1resolute.20260730.203016`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rclcpp-components/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rclcpp-lifecycle=32.0.2-1resolute.20260804.070252`

Binary Packages:

- `ros-lyrical-rclcpp-lifecycle=32.0.2-1resolute.20260804.070252`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rclcpp-lifecycle/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rclcpp=32.0.2-1resolute.20260730.192517`

Binary Packages:

- `ros-lyrical-rclcpp=32.0.2-1resolute.20260730.192517`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rclcpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rclpy=10.0.10-1resolute.20260730.192836`

Binary Packages:

- `ros-lyrical-rclpy=10.0.10-1resolute.20260730.192836`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rclpy/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rcpputils=2.14.5-1resolute.20260728.210316`

Binary Packages:

- `ros-lyrical-rcpputils=2.14.5-1resolute.20260728.210316`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rcpputils/copyright`)

- `Apache License 2.0`
- `BSD-3-Clause`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rcutils=7.1.2-1resolute.20260728.210016`

Binary Packages:

- `ros-lyrical-rcutils=7.1.2-1resolute.20260728.210016`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rcutils/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rmw-dds-common=6.0.0-3resolute.20260728.222534`

Binary Packages:

- `ros-lyrical-rmw-dds-common=6.0.0-3resolute.20260728.222534`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rmw-dds-common/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rmw-fastrtps-cpp=9.4.9-1resolute.20260730.174616`

Binary Packages:

- `ros-lyrical-rmw-fastrtps-cpp=9.4.9-1resolute.20260730.174616`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rmw-fastrtps-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rmw-fastrtps-shared-cpp=9.4.9-1resolute.20260730.173726`

Binary Packages:

- `ros-lyrical-rmw-fastrtps-shared-cpp=9.4.9-1resolute.20260730.173726`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rmw-fastrtps-shared-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rmw-implementation-cmake=7.10.1-5resolute.20260728.210014`

Binary Packages:

- `ros-lyrical-rmw-implementation-cmake=7.10.1-5resolute.20260728.210014`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rmw-implementation-cmake/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rmw-implementation=3.1.6-1resolute.20260730.175459`

Binary Packages:

- `ros-lyrical-rmw-implementation=3.1.6-1resolute.20260730.175459`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rmw-implementation/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rmw-security-common=7.10.1-5resolute.20260728.211356`

Binary Packages:

- `ros-lyrical-rmw-security-common=7.10.1-5resolute.20260728.211356`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rmw-security-common/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rmw-test-fixture-implementation=0.15.8-1resolute.20260730.180217`

Binary Packages:

- `ros-lyrical-rmw-test-fixture-implementation=0.15.8-1resolute.20260730.180217`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rmw-test-fixture-implementation/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rmw-test-fixture=0.15.8-1resolute.20260728.211417`

Binary Packages:

- `ros-lyrical-rmw-test-fixture=0.15.8-1resolute.20260728.211417`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rmw-test-fixture/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rmw=7.10.1-5resolute.20260728.210946`

Binary Packages:

- `ros-lyrical-rmw=7.10.1-5resolute.20260728.210946`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rmw/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-robot-state-publisher=3.5.5-3resolute.20260804.070441`

Binary Packages:

- `ros-lyrical-robot-state-publisher=3.5.5-3resolute.20260804.070441`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-robot-state-publisher/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros-base=0.13.0-3resolute.20260805.075139`

Binary Packages:

- `ros-lyrical-ros-base=0.13.0-3resolute.20260805.075139`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros-base/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros-core=0.13.0-3resolute.20260804.073816`

Binary Packages:

- `ros-lyrical-ros-core=0.13.0-3resolute.20260804.073816`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros-core/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros-environment=4.5.1-1resolute.20260728.172811`

Binary Packages:

- `ros-lyrical-ros-environment=4.5.1-1resolute.20260728.172811`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros-environment/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros-workspace=1.0.3-9resolute.20260728.162902`

Binary Packages:

- `ros-lyrical-ros-workspace=1.0.3-9resolute.20260728.162902`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros-workspace/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2action=0.40.8-1resolute.20260730.202751`

Binary Packages:

- `ros-lyrical-ros2action=0.40.8-1resolute.20260730.202751`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2action/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2bag=0.33.3-1resolute.20260805.074823`

Binary Packages:

- `ros-lyrical-ros2bag=0.33.3-1resolute.20260805.074823`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2bag/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2cli-common-extensions=0.5.2-3resolute.20260804.073555`

Binary Packages:

- `ros-lyrical-ros2cli-common-extensions=0.5.2-3resolute.20260804.073555`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2cli-common-extensions/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2cli=0.40.8-1resolute.20260730.202602`

Binary Packages:

- `ros-lyrical-ros2cli=0.40.8-1resolute.20260730.202602`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2cli/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2component=0.40.8-1resolute.20260804.073324`

Binary Packages:

- `ros-lyrical-ros2component=0.40.8-1resolute.20260804.073324`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2component/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2doctor=0.40.8-1resolute.20260730.202847`

Binary Packages:

- `ros-lyrical-ros2doctor=0.40.8-1resolute.20260730.202847`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2doctor/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2interface=0.40.8-1resolute.20260804.070528`

Binary Packages:

- `ros-lyrical-ros2interface=0.40.8-1resolute.20260804.070528`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2interface/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2launch=0.29.9-1resolute.20260804.073318`

Binary Packages:

- `ros-lyrical-ros2launch=0.29.9-1resolute.20260804.073318`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2launch/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2lifecycle=0.40.8-1resolute.20260730.202924`

Binary Packages:

- `ros-lyrical-ros2lifecycle=0.40.8-1resolute.20260730.202924`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2lifecycle/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2multicast=0.40.8-1resolute.20260804.070659`

Binary Packages:

- `ros-lyrical-ros2multicast=0.40.8-1resolute.20260804.070659`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2multicast/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2node=0.40.8-1resolute.20260730.202822`

Binary Packages:

- `ros-lyrical-ros2node=0.40.8-1resolute.20260730.202822`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2node/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2param=0.40.8-1resolute.20260730.202934`

Binary Packages:

- `ros-lyrical-ros2param=0.40.8-1resolute.20260730.202934`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2param/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2pkg=0.40.8-1resolute.20260804.070707`

Binary Packages:

- `ros-lyrical-ros2pkg=0.40.8-1resolute.20260804.070707`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2pkg/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2plugin=5.8.4-3resolute.20260804.073335`

Binary Packages:

- `ros-lyrical-ros2plugin=5.8.4-3resolute.20260804.073335`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2plugin/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2run=0.40.8-1resolute.20260804.073346`

Binary Packages:

- `ros-lyrical-ros2run=0.40.8-1resolute.20260804.073346`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2run/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2service=0.40.8-1resolute.20260730.202815`

Binary Packages:

- `ros-lyrical-ros2service=0.40.8-1resolute.20260730.202815`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2service/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2topic=0.40.8-1resolute.20260730.202809`

Binary Packages:

- `ros-lyrical-ros2topic=0.40.8-1resolute.20260730.202809`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2topic/copyright`)

- `Apache License 2.0`
- `BSD-3-Clause`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosbag2-compression-zstd=0.33.3-1resolute.20260805.073553`

Binary Packages:

- `ros-lyrical-rosbag2-compression-zstd=0.33.3-1resolute.20260805.073553`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosbag2-compression-zstd/copyright`)

- `Apache 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosbag2-compression=0.33.3-1resolute.20260805.072712`

Binary Packages:

- `ros-lyrical-rosbag2-compression=0.33.3-1resolute.20260805.072712`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosbag2-compression/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosbag2-cpp=0.33.3-1resolute.20260805.070730`

Binary Packages:

- `ros-lyrical-rosbag2-cpp=0.33.3-1resolute.20260805.070730`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosbag2-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosbag2-interfaces=0.33.3-1resolute.20260728.225544`

Binary Packages:

- `ros-lyrical-rosbag2-interfaces=0.33.3-1resolute.20260728.225544`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosbag2-interfaces/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosbag2-py=0.33.3-1resolute.20260805.073943`

Binary Packages:

- `ros-lyrical-rosbag2-py=0.33.3-1resolute.20260805.073943`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosbag2-py/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosbag2-storage-default-plugins=0.33.3-1resolute.20260805.072538`

Binary Packages:

- `ros-lyrical-rosbag2-storage-default-plugins=0.33.3-1resolute.20260805.072538`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosbag2-storage-default-plugins/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosbag2-storage-mcap=0.33.3-1resolute.20260804.073759`

Binary Packages:

- `ros-lyrical-rosbag2-storage-mcap=0.33.3-1resolute.20260804.073759`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosbag2-storage-mcap/copyright`)

- `Apache-2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosbag2-storage-sqlite3=0.33.3-1resolute.20260805.070729`

Binary Packages:

- `ros-lyrical-rosbag2-storage-sqlite3=0.33.3-1resolute.20260805.070729`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosbag2-storage-sqlite3/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosbag2-storage=0.33.3-1resolute.20260804.070717`

Binary Packages:

- `ros-lyrical-rosbag2-storage=0.33.3-1resolute.20260804.070717`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosbag2-storage/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosbag2-transport=0.33.3-1resolute.20260805.073129`

Binary Packages:

- `ros-lyrical-rosbag2-transport=0.33.3-1resolute.20260805.073129`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosbag2-transport/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosbag2=0.33.3-1resolute.20260805.075033`

Binary Packages:

- `ros-lyrical-rosbag2=0.33.3-1resolute.20260805.075033`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosbag2/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosgraph-msgs=2.4.5-1resolute.20260728.225747`

Binary Packages:

- `ros-lyrical-rosgraph-msgs=2.4.5-1resolute.20260728.225747`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosgraph-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-adapter=5.2.1-1resolute.20260728.204010`

Binary Packages:

- `ros-lyrical-rosidl-adapter=5.2.1-1resolute.20260728.204010`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-adapter/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-buffer-backend-registry=5.2.1-1resolute.20260728.213234`

Binary Packages:

- `ros-lyrical-rosidl-buffer-backend-registry=5.2.1-1resolute.20260728.213234`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-buffer-backend-registry/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-buffer-backend=5.2.1-1resolute.20260728.211422`

Binary Packages:

- `ros-lyrical-rosidl-buffer-backend=5.2.1-1resolute.20260728.211422`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-buffer-backend/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-buffer-py=5.2.1-1resolute.20260728.210209`

Binary Packages:

- `ros-lyrical-rosidl-buffer-py=5.2.1-1resolute.20260728.210209`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-buffer-py/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-buffer=5.2.1-1resolute.20260728.210115`

Binary Packages:

- `ros-lyrical-rosidl-buffer=5.2.1-1resolute.20260728.210115`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-buffer/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-cli=5.2.1-1resolute.20260728.173046`

Binary Packages:

- `ros-lyrical-rosidl-cli=5.2.1-1resolute.20260728.173046`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-cli/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-cmake=5.2.1-1resolute.20260728.210427`

Binary Packages:

- `ros-lyrical-rosidl-cmake=5.2.1-1resolute.20260728.210427`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-cmake/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-core-generators=0.4.3-3resolute.20260728.212256`

Binary Packages:

- `ros-lyrical-rosidl-core-generators=0.4.3-3resolute.20260728.212256`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-core-generators/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-core-runtime=0.4.3-3resolute.20260728.212309`

Binary Packages:

- `ros-lyrical-rosidl-core-runtime=0.4.3-3resolute.20260728.212309`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-core-runtime/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-default-generators=1.8.1-3resolute.20260728.214153`

Binary Packages:

- `ros-lyrical-rosidl-default-generators=1.8.1-3resolute.20260728.214153`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-default-generators/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-default-runtime=1.8.1-3resolute.20260728.214245`

Binary Packages:

- `ros-lyrical-rosidl-default-runtime=1.8.1-3resolute.20260728.214245`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-default-runtime/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-dynamic-typesupport-fastrtps=0.5.1-3resolute.20260728.210954`

Binary Packages:

- `ros-lyrical-rosidl-dynamic-typesupport-fastrtps=0.5.1-3resolute.20260728.210954`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-dynamic-typesupport-fastrtps/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-dynamic-typesupport=0.4.1-3resolute.20260728.210642`

Binary Packages:

- `ros-lyrical-rosidl-dynamic-typesupport=0.4.1-3resolute.20260728.210642`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-dynamic-typesupport/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-generator-c=5.2.1-1resolute.20260728.210700`

Binary Packages:

- `ros-lyrical-rosidl-generator-c=5.2.1-1resolute.20260728.210700`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-generator-c/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-generator-cpp=5.2.1-1resolute.20260728.210943`

Binary Packages:

- `ros-lyrical-rosidl-generator-cpp=5.2.1-1resolute.20260728.210943`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-generator-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-generator-py=0.27.2-3resolute.20260728.211553`

Binary Packages:

- `ros-lyrical-rosidl-generator-py=0.27.2-3resolute.20260728.211553`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-generator-py/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-generator-rs=0.4.12-3resolute.20260728.211549`

Binary Packages:

- `ros-lyrical-rosidl-generator-rs=0.4.12-3resolute.20260728.211549`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-generator-rs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-generator-type-description=5.2.1-1resolute.20260728.210206`

Binary Packages:

- `ros-lyrical-rosidl-generator-type-description=5.2.1-1resolute.20260728.210206`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-generator-type-description/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-parser=5.2.1-1resolute.20260728.210114`

Binary Packages:

- `ros-lyrical-rosidl-parser=5.2.1-1resolute.20260728.210114`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-parser/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-pycommon=5.2.1-1resolute.20260728.210228`

Binary Packages:

- `ros-lyrical-rosidl-pycommon=5.2.1-1resolute.20260728.210228`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-pycommon/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-runtime-c=5.2.1-1resolute.20260728.210328`

Binary Packages:

- `ros-lyrical-rosidl-runtime-c=5.2.1-1resolute.20260728.210328`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-runtime-c/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-runtime-cpp=5.2.1-1resolute.20260728.210648`

Binary Packages:

- `ros-lyrical-rosidl-runtime-cpp=5.2.1-1resolute.20260728.210648`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-runtime-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-runtime-py=0.15.2-3resolute.20260728.210536`

Binary Packages:

- `ros-lyrical-rosidl-runtime-py=0.15.2-3resolute.20260728.210536`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-runtime-py/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-typesupport-c=3.4.2-3resolute.20260728.211303`

Binary Packages:

- `ros-lyrical-rosidl-typesupport-c=3.4.2-3resolute.20260728.211303`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-typesupport-c/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-typesupport-cpp=3.4.2-3resolute.20260728.211628`

Binary Packages:

- `ros-lyrical-rosidl-typesupport-cpp=3.4.2-3resolute.20260728.211628`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-typesupport-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-typesupport-fastrtps-c=3.9.5-3resolute.20260728.211956`

Binary Packages:

- `ros-lyrical-rosidl-typesupport-fastrtps-c=3.9.5-3resolute.20260728.211956`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-typesupport-fastrtps-c/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-typesupport-fastrtps-cpp=3.9.5-3resolute.20260728.211709`

Binary Packages:

- `ros-lyrical-rosidl-typesupport-fastrtps-cpp=3.9.5-3resolute.20260728.211709`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-typesupport-fastrtps-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-typesupport-interface=5.2.1-1resolute.20260728.210128`

Binary Packages:

- `ros-lyrical-rosidl-typesupport-interface=5.2.1-1resolute.20260728.210128`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-typesupport-interface/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-typesupport-introspection-c=5.2.1-1resolute.20260728.210952`

Binary Packages:

- `ros-lyrical-rosidl-typesupport-introspection-c=5.2.1-1resolute.20260728.210952`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-typesupport-introspection-c/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-typesupport-introspection-cpp=5.2.1-1resolute.20260728.211325`

Binary Packages:

- `ros-lyrical-rosidl-typesupport-introspection-cpp=5.2.1-1resolute.20260728.211325`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-typesupport-introspection-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rpyutils=0.7.2-3resolute.20260728.174949`

Binary Packages:

- `ros-lyrical-rpyutils=0.7.2-3resolute.20260728.174949`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rpyutils/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-sensor-msgs-py=5.9.3-1resolute.20260728.235031`

Binary Packages:

- `ros-lyrical-sensor-msgs-py=5.9.3-1resolute.20260728.235031`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-sensor-msgs-py/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-sensor-msgs=5.9.3-1resolute.20260728.232831`

Binary Packages:

- `ros-lyrical-sensor-msgs=5.9.3-1resolute.20260728.232831`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-sensor-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-service-msgs=2.4.5-1resolute.20260728.213336`

Binary Packages:

- `ros-lyrical-service-msgs=2.4.5-1resolute.20260728.213336`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-service-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-shape-msgs=5.9.3-1resolute.20260728.232846`

Binary Packages:

- `ros-lyrical-shape-msgs=5.9.3-1resolute.20260728.232846`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-shape-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-spdlog-vendor=1.8.0-3resolute.20260728.210243`

Binary Packages:

- `ros-lyrical-spdlog-vendor=1.8.0-3resolute.20260728.210243`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-spdlog-vendor/copyright`)

- `Apache License 2.0`
- `MIT`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-sros2-cmake=0.16.6-1resolute.20260804.071151`

Binary Packages:

- `ros-lyrical-sros2-cmake=0.16.6-1resolute.20260804.071151`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-sros2-cmake/copyright`)

- `Apache 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-sros2=0.16.6-1resolute.20260730.202813`

Binary Packages:

- `ros-lyrical-sros2=0.16.6-1resolute.20260730.202813`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-sros2/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-statistics-msgs=2.4.5-1resolute.20260728.225733`

Binary Packages:

- `ros-lyrical-statistics-msgs=2.4.5-1resolute.20260728.225733`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-statistics-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-std-msgs=5.9.3-1resolute.20260728.225720`

Binary Packages:

- `ros-lyrical-std-msgs=5.9.3-1resolute.20260728.225720`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-std-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-std-srvs=5.9.3-1resolute.20260728.225742`

Binary Packages:

- `ros-lyrical-std-srvs=5.9.3-1resolute.20260728.225742`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-std-srvs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-stereo-image-proc=7.1.7-1resolute.20260804.073314`

Binary Packages:

- `ros-lyrical-stereo-image-proc=7.1.7-1resolute.20260804.073314`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-stereo-image-proc/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-stereo-msgs=5.9.3-1resolute.20260728.235052`

Binary Packages:

- `ros-lyrical-stereo-msgs=5.9.3-1resolute.20260728.235052`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-stereo-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tf2-bullet=0.45.9-1resolute.20260730.204907`

Binary Packages:

- `ros-lyrical-tf2-bullet=0.45.9-1resolute.20260730.204907`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tf2-bullet/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tf2-eigen-kdl=0.45.9-1resolute.20260730.192632`

Binary Packages:

- `ros-lyrical-tf2-eigen-kdl=0.45.9-1resolute.20260730.192632`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tf2-eigen-kdl/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tf2-eigen=0.45.9-1resolute.20260730.205014`

Binary Packages:

- `ros-lyrical-tf2-eigen=0.45.9-1resolute.20260730.205014`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tf2-eigen/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tf2-geometry-msgs=0.45.9-1resolute.20260802.062345`

Binary Packages:

- `ros-lyrical-tf2-geometry-msgs=0.45.9-1resolute.20260802.062345`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tf2-geometry-msgs/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tf2-kdl=0.45.9-1resolute.20260804.071222`

Binary Packages:

- `ros-lyrical-tf2-kdl=0.45.9-1resolute.20260804.071222`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tf2-kdl/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tf2-msgs=0.45.9-1resolute.20260728.233007`

Binary Packages:

- `ros-lyrical-tf2-msgs=0.45.9-1resolute.20260728.233007`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tf2-msgs/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tf2-py=0.45.9-1resolute.20260730.193951`

Binary Packages:

- `ros-lyrical-tf2-py=0.45.9-1resolute.20260730.193951`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tf2-py/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tf2-ros-py=0.45.9-1resolute.20260730.202704`

Binary Packages:

- `ros-lyrical-tf2-ros-py=0.45.9-1resolute.20260730.202704`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tf2-ros-py/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tf2-ros=0.45.9-1resolute.20260730.204143`

Binary Packages:

- `ros-lyrical-tf2-ros=0.45.9-1resolute.20260730.204143`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tf2-ros/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tf2-sensor-msgs=0.45.9-1resolute.20260804.071233`

Binary Packages:

- `ros-lyrical-tf2-sensor-msgs=0.45.9-1resolute.20260804.071233`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tf2-sensor-msgs/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tf2-tools=0.45.9-1resolute.20260730.202825`

Binary Packages:

- `ros-lyrical-tf2-tools=0.45.9-1resolute.20260730.202825`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tf2-tools/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tf2=0.45.9-1resolute.20260730.181029`

Binary Packages:

- `ros-lyrical-tf2=0.45.9-1resolute.20260730.181029`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tf2/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-theora-image-transport=6.2.6-1resolute.20260804.072546`

Binary Packages:

- `ros-lyrical-theora-image-transport=6.2.6-1resolute.20260804.072546`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-theora-image-transport/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tracetools-image-pipeline=7.1.7-1resolute.20260730.191124`

Binary Packages:

- `ros-lyrical-tracetools-image-pipeline=7.1.7-1resolute.20260730.191124`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tracetools-image-pipeline/copyright`)

- `Apache 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tracetools=8.10.2-1resolute.20260728.204752`

Binary Packages:

- `ros-lyrical-tracetools=8.10.2-1resolute.20260728.204752`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tracetools/copyright`)

- `Apache 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-trajectory-msgs=5.9.3-1resolute.20260728.233011`

Binary Packages:

- `ros-lyrical-trajectory-msgs=5.9.3-1resolute.20260728.233011`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-trajectory-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-type-description-interfaces=2.4.5-1resolute.20260728.213733`

Binary Packages:

- `ros-lyrical-type-description-interfaces=2.4.5-1resolute.20260728.213733`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-type-description-interfaces/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-uncrustify-vendor=3.2.0-3resolute.20260728.210418`

Binary Packages:

- `ros-lyrical-uncrustify-vendor=3.2.0-3resolute.20260728.210418`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-uncrustify-vendor/copyright`)

- `Apache License 2.0`
- `GNU General Public License v2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-unique-identifier-msgs=2.8.1-3resolute.20260728.212814`

Binary Packages:

- `ros-lyrical-unique-identifier-msgs=2.8.1-3resolute.20260728.212814`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-unique-identifier-msgs/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-urdf-parser-plugin=2.13.2-3resolute.20260730.191125`

Binary Packages:

- `ros-lyrical-urdf-parser-plugin=2.13.2-3resolute.20260730.191125`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-urdf-parser-plugin/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-urdf=2.13.2-3resolute.20260730.191422`

Binary Packages:

- `ros-lyrical-urdf=2.13.2-3resolute.20260730.191422`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-urdf/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-urdfdom-headers=3.0.0-3resolute.20260728.173048`

Binary Packages:

- `ros-lyrical-urdfdom-headers=3.0.0-3resolute.20260728.173048`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-urdfdom-headers/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-urdfdom=6.0.0-3resolute.20260728.205537`

Binary Packages:

- `ros-lyrical-urdfdom=6.0.0-3resolute.20260728.205537`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-urdfdom/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-vision-opencv=4.1.0-3resolute.20260804.072853`

Binary Packages:

- `ros-lyrical-vision-opencv=4.1.0-3resolute.20260804.072853`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-vision-opencv/copyright`)

- `Apache License 2.0`
- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-visualization-msgs=5.9.3-1resolute.20260728.235214`

Binary Packages:

- `ros-lyrical-visualization-msgs=5.9.3-1resolute.20260728.235214`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-visualization-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-yaml-cpp-vendor=9.2.1-3resolute.20260728.210605`

Binary Packages:

- `ros-lyrical-yaml-cpp-vendor=9.2.1-3resolute.20260728.210605`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-yaml-cpp-vendor/copyright`)

- `Apache License 2.0`
- `MIT`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-zstd-cmake-module=0.33.3-1resolute.20260728.210616`

Binary Packages:

- `ros-lyrical-zstd-cmake-module=0.33.3-1resolute.20260728.210616`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-zstd-cmake-module/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-zstd-image-transport=6.2.6-1resolute.20260804.071614`

Binary Packages:

- `ros-lyrical-zstd-image-transport=6.2.6-1resolute.20260804.071614`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-zstd-image-transport/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-osrf-pycommon=2.1.7-1`

Binary Packages:

- `python3-osrf-pycommon=2.1.7-1`

Licenses: (parsed from: `/usr/share/doc/python3-osrf-pycommon/copyright`)

- `Apache-2.0`
- `BSD-3-Clause`

Source:

```console
$ apt-get source -qq --print-uris ros-osrf-pycommon=2.1.7-1
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros-osrf-pycommon/ros-osrf-pycommon_2.1.7-1.dsc' ros-osrf-pycommon_2.1.7-1.dsc 2435 SHA256:b678edaa638e0a0b4ab13e883be8cff3cea948216821c35763e9f9ca08a9682d
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros-osrf-pycommon/ros-osrf-pycommon_2.1.7.orig.tar.gz' ros-osrf-pycommon_2.1.7.orig.tar.gz 47418 SHA256:441afd5c3476474a1e5760070fec18860992a4659e84a6a4b59e49217d7cc6af
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros-osrf-pycommon/ros-osrf-pycommon_2.1.7-1.debian.tar.xz' ros-osrf-pycommon_2.1.7-1.debian.tar.xz 3004 SHA256:a50d34563dfc7fb2d20b5c1c3c0eff5fdfef91129a096a8df033470c62abb534
```

### `dpkg` source package: `ros2-colcon-cd=0.2.1-1build1`

Binary Packages:

- `python3-colcon-cd=0.2.1-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-colcon-cd/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris ros2-colcon-cd=0.2.1-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros2-colcon-cd/ros2-colcon-cd_0.2.1.orig.tar.gz' ros2-colcon-cd_0.2.1.orig.tar.gz 9906 SHA256:91f14108b6f9db780fc5a579b9c809e9a8c62b688e81f2267788fd0e12f178dc
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros2-colcon-cd/ros2-colcon-cd_0.2.1-1build1.debian.tar.xz' ros2-colcon-cd_0.2.1-1build1.debian.tar.xz 2612 SHA256:582eb557d0538367b8dc4d8ae33d825994e641952396811ac8d06a1944755e90
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros2-colcon-cd/ros2-colcon-cd_0.2.1-1build1.dsc' ros2-colcon-cd_0.2.1-1build1.dsc 2154 SHA256:b4d95e0e0faf300c59244b3c3a373ee5a4d4ef981da22314329e871ce6eb4587
```

### `dpkg` source package: `ros2-colcon-devtools=0.3.0-1build1`

Binary Packages:

- `python3-colcon-devtools=0.3.0-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-colcon-devtools/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris ros2-colcon-devtools=0.3.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros2-colcon-devtools/ros2-colcon-devtools_0.3.0.orig.tar.gz' ros2-colcon-devtools_0.3.0.orig.tar.gz 9267 SHA256:8363080c03e41c1fe4c884955e32a5dbc2be34269d838a97146042b3af91a53d
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros2-colcon-devtools/ros2-colcon-devtools_0.3.0-1build1.debian.tar.xz' ros2-colcon-devtools_0.3.0-1build1.debian.tar.xz 2184 SHA256:05e53b9fd30e30cdcfc7a206cb5f24ecd4f358d3037fbd7b83512ed1111ec67d
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros2-colcon-devtools/ros2-colcon-devtools_0.3.0-1build1.dsc' ros2-colcon-devtools_0.3.0-1build1.dsc 2817 SHA256:1d37d5f7823af6b61b1ad261cca247b29a0a2e3ad7838b4c2b9295c04fc83b17
```

### `dpkg` source package: `ros2-colcon-parallel-executor=0.4.0-1`

Binary Packages:

- `python3-colcon-parallel-executor=0.4.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-colcon-parallel-executor/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris ros2-colcon-parallel-executor=0.4.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros2-colcon-parallel-executor/ros2-colcon-parallel-executor_0.4.0-1.dsc' ros2-colcon-parallel-executor_0.4.0-1.dsc 3052 SHA256:56f7b719c3e972a8727f5ad45267a416005a6a76a28a1df1ef75b77d6025eb9a
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros2-colcon-parallel-executor/ros2-colcon-parallel-executor_0.4.0.orig.tar.gz' ros2-colcon-parallel-executor_0.4.0.orig.tar.gz 11658 SHA256:28981dcbc72193ace62952431e8963656d708f93b86c43a4bb55f454cdeff860
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros2-colcon-parallel-executor/ros2-colcon-parallel-executor_0.4.0-1.debian.tar.xz' ros2-colcon-parallel-executor_0.4.0-1.debian.tar.xz 2168 SHA256:c4f500eda4072b77bb932fd718ec7b0cc9042200c89a594dc697673e728958e3
```

### `dpkg` source package: `ros2-colcon-python-setup-py=0.2.9-2`

Binary Packages:

- `python3-colcon-python-setup-py=0.2.9-2`

Licenses: (parsed from: `/usr/share/doc/python3-colcon-python-setup-py/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris ros2-colcon-python-setup-py=0.2.9-2
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros2-colcon-python-setup-py/ros2-colcon-python-setup-py_0.2.9-2.dsc' ros2-colcon-python-setup-py_0.2.9-2.dsc 2605 SHA256:dd794338b74b59a5c7eb21e7cd20103bb55e430219b7e12b27133d045e9db7b0
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros2-colcon-python-setup-py/ros2-colcon-python-setup-py_0.2.9.orig.tar.gz' ros2-colcon-python-setup-py_0.2.9.orig.tar.gz 11632 SHA256:7c944d9d2b688f14c4ef1b1d962dbaabd53dc05e3a04a89da62e2eece6a2ad5a
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros2-colcon-python-setup-py/ros2-colcon-python-setup-py_0.2.9-2.debian.tar.xz' ros2-colcon-python-setup-py_0.2.9-2.debian.tar.xz 2124 SHA256:fd91476e66b41f6f1543faa9c5b94d49ef823d3b563fcc3f40a1990cbfba3068
```

### `dpkg` source package: `rpcsvc-proto=1.4.3-1build1`

Binary Packages:

- `rpcsvc-proto=1.4.3-1build1`

Licenses: (parsed from: `/usr/share/doc/rpcsvc-proto/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+-autoconf-exception`
- `GPL-3`
- `GPL-3+-autoconf-exception`
- `MIT`
- `permissive-autoconf-m4`
- `permissive-autoconf-m4-no-warranty`
- `permissive-configure`
- `permissive-fsf`
- `permissive-makefile-in`

Source:

```console
$ apt-get source -qq --print-uris rpcsvc-proto=1.4.3-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/r/rpcsvc-proto/rpcsvc-proto_1.4.3.orig.tar.xz' rpcsvc-proto_1.4.3.orig.tar.xz 167964 SHA256:69315e94430f4e79c74d43422f4a36e6259e97e67e2677b2c7d7060436bd99b1
'http://archive.ubuntu.com/ubuntu/pool/main/r/rpcsvc-proto/rpcsvc-proto_1.4.3-1build1.debian.tar.xz' rpcsvc-proto_1.4.3-1build1.debian.tar.xz 4320 SHA256:6d047d3dfdebfe1030e7f27f52fc2ef0c28ce4e89a98b8ca5c2c927af26a015b
'http://archive.ubuntu.com/ubuntu/pool/main/r/rpcsvc-proto/rpcsvc-proto_1.4.3-1build1.dsc' rpcsvc-proto_1.4.3-1build1.dsc 2023 SHA256:ddfea3fbaadb6718a8d0fac4bd437831c09f7a1ec9144d0ebc112bc83bc2d77d
```

### `dpkg` source package: `rtmpdump=2.4+20151223.gitfa8646d.1-3`

Binary Packages:

- `librtmp-dev:amd64=2.4+20151223.gitfa8646d.1-3`
- `librtmp1:amd64=2.4+20151223.gitfa8646d.1-3`

Licenses: (parsed from: `/usr/share/doc/librtmp-dev/copyright`, `/usr/share/doc/librtmp1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris rtmpdump=2.4+20151223.gitfa8646d.1-3
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1-3.dsc' rtmpdump_2.4+20151223.gitfa8646d.1-3.dsc 2295 SHA256:8a593a016f6c816dac66ba78a49915af645056acf424146c3488edd27c52075c
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1.orig.tar.gz' rtmpdump_2.4+20151223.gitfa8646d.1.orig.tar.gz 142213 SHA256:5c032f5c8cc2937eb55a81a94effdfed3b0a0304b6376147b86f951e225e3ab5
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1-3.debian.tar.xz' rtmpdump_2.4+20151223.gitfa8646d.1-3.debian.tar.xz 8180 SHA256:8b1d25a5942e762d792ea1beacb0fda0f9761331fd46ce3874fe24c2360485e2
```

### `dpkg` source package: `rust-coreutils=0.8.0-0ubuntu3`

Binary Packages:

- `rust-coreutils=0.8.0-0ubuntu3`

Licenses: (parsed from: `/usr/share/doc/rust-coreutils/copyright`)

- `Apache-2.0`
- `MIT`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris rust-coreutils=0.8.0-0ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/r/rust-coreutils/rust-coreutils_0.8.0.orig-l10n.tar.gz' rust-coreutils_0.8.0.orig-l10n.tar.gz 740364 SHA512:f322d1b77ff6ef0945b08aa4237dd0b1db8da5c3e32de5e86bd22a60b5a56dd6f4828c90a4758c562ca560e6588b6e61af4507e0b6c6d8bde7d8e587010ca1e3
'http://archive.ubuntu.com/ubuntu/pool/main/r/rust-coreutils/rust-coreutils_0.8.0.orig-rust-vendor.tar.xz' rust-coreutils_0.8.0.orig-rust-vendor.tar.xz 13213352 SHA512:a66ba2f98a544fea37ace0774244dda1a7b2477536df90301765819b9bb9f0f27831df2349b7fc1cbf712ba5b9bd8c7cc9a9e900714e51b6c226f0fc2d50b250
'http://archive.ubuntu.com/ubuntu/pool/main/r/rust-coreutils/rust-coreutils_0.8.0.orig.tar.gz' rust-coreutils_0.8.0.orig.tar.gz 3189640 SHA512:0c35cfb31d7810701cf5c639cbafb2be3870f4abd0f08fbade291d2534f576e067599e1b53ff228d9d2bd126210225d09bcd559761623f645883d4dd68e8f39b
'http://archive.ubuntu.com/ubuntu/pool/main/r/rust-coreutils/rust-coreutils_0.8.0-0ubuntu3.debian.tar.xz' rust-coreutils_0.8.0-0ubuntu3.debian.tar.xz 22812 SHA512:4058834e3899825b60f5db483f532e72f85b27f2bcb7bc2f2680f45d82c19b3d2d414e99bf17d5f7f0509d404819c28e16686fd6283db253ae841b23effcdb07
'http://archive.ubuntu.com/ubuntu/pool/main/r/rust-coreutils/rust-coreutils_0.8.0-0ubuntu3.dsc' rust-coreutils_0.8.0-0ubuntu3.dsc 8878 SHA512:2c91bd122fa1c56c387f5e1133b508667568afee17e598ac3c1dfbea8327012bbf7115b323f77166dc5bbb36415a1aa98960c639d504d1b0026c79e40c31e295
```

### `dpkg` source package: `rust-rav1e=0.8.1-7`

Binary Packages:

- `librav1e0.8:amd64=0.8.1-7`

Licenses: (parsed from: `/usr/share/doc/librav1e0.8/copyright`)

- `BSD-2-Clause`
- `BSD-2-clause`
- `ISC`

Source:

```console
$ apt-get source -qq --print-uris rust-rav1e=0.8.1-7
'http://archive.ubuntu.com/ubuntu/pool/universe/r/rust-rav1e/rust-rav1e_0.8.1-7.dsc' rust-rav1e_0.8.1-7.dsc 3811 SHA256:d9488eff4b609ce5f404acd93b0f7e200d0ae436265754fb1335e99eff61e6ec
'http://archive.ubuntu.com/ubuntu/pool/universe/r/rust-rav1e/rust-rav1e_0.8.1.orig.tar.gz' rust-rav1e_0.8.1.orig.tar.gz 1465215 SHA256:43b6dd56e85d9483277cde964fd1bdb0428de4fec5ebba7540995639a21cb32b
'http://archive.ubuntu.com/ubuntu/pool/universe/r/rust-rav1e/rust-rav1e_0.8.1-7.debian.tar.xz' rust-rav1e_0.8.1-7.debian.tar.xz 19800 SHA256:9e46f158f6fe1569e60cbe15efa0da29ec873b8ee104941ef3d80425670d7bbe
```

### `dpkg` source package: `sed=4.9-2ubuntu1`

Binary Packages:

- `sed=4.9-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `BSD-4-clause-UC`
- `BSL-1`
- `GFDL-1.3`
- `GFDL-NIV-1.3+`
- `GPL-3`
- `GPL-3+`
- `ISC`
- `X11`
- `pcre`

Source:

```console
$ apt-get source -qq --print-uris sed=4.9-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.9.orig.tar.xz' sed_4.9.orig.tar.xz 1397092 SHA512:36157a4b4a2430cf421b7bd07f1675d680d9f1616be96cf6ad6ee74a9ec0fe695f8d0b1e1f0b008bbb33cc7fcde5e1c456359bbbc63f8aebdd4fedc3982cf6dc
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.9-2ubuntu1.debian.tar.xz' sed_4.9-2ubuntu1.debian.tar.xz 63408 SHA512:2c3bfcea14e891805776280476bad1007bccb92b1e0ce1a2cfd009517a0de9da67f6ada6cdf9ecd78e892ebf9e49f2d69ac7ef4c93f29f6e4fcde2e95bad4914
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.9-2ubuntu1.dsc' sed_4.9-2ubuntu1.dsc 1967 SHA512:75262a520fb9e17b65a98b87d8316d2ef533979ba454d8046557ad51be76420a6e87e34329db346ea2a8bc4b99e865ce3e7957b7332be615300e16915b319520
```

### `dpkg` source package: `sensible-utils=0.0.26build1`

Binary Packages:

- `sensible-utils=0.0.26build1`

Licenses: (parsed from: `/usr/share/doc/sensible-utils/copyright`)

- `All-permissive`
- `GPL-2`
- `GPL-2+`
- `configure`
- `installsh`

Source:

```console
$ apt-get source -qq --print-uris sensible-utils=0.0.26build1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.26build1.tar.xz' sensible-utils_0.0.26build1.tar.xz 76808 SHA256:41f0e2b45ec42c61f2c2a8244ea3749f103341246bd004571b03e5f060390765
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.26build1.dsc' sensible-utils_0.0.26build1.dsc 1730 SHA256:1740891cfa69aa344c6ce951be7421bffe6743190880e1a48a0c4b40fc841144
```

### `dpkg` source package: `setuptools=78.1.1-0.1build1`

Binary Packages:

- `python3-pkg-resources=78.1.1-0.1build1`
- `python3-setuptools=78.1.1-0.1build1`

Licenses: (parsed from: `/usr/share/doc/python3-pkg-resources/copyright`, `/usr/share/doc/python3-setuptools/copyright`)

- `Apache-2.0`
- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris setuptools=78.1.1-0.1build1
'http://archive.ubuntu.com/ubuntu/pool/main/s/setuptools/setuptools_78.1.1.orig.tar.gz' setuptools_78.1.1.orig.tar.gz 1368163 SHA256:fcc17fd9cd898242f6b4adfaca46137a9edef687f43e6f78469692a5e70d851d
'http://archive.ubuntu.com/ubuntu/pool/main/s/setuptools/setuptools_78.1.1-0.1build1.debian.tar.xz' setuptools_78.1.1-0.1build1.debian.tar.xz 15608 SHA256:e7122ec5ff1edffb08ae63af88ceb9e4181cfd48380342e5f6ab3f5f1f149548
'http://archive.ubuntu.com/ubuntu/pool/main/s/setuptools/setuptools_78.1.1-0.1build1.dsc' setuptools_78.1.1-0.1build1.dsc 2172 SHA256:a3d60566ce2c43c67e0e95f9bf0ffdd4bd3da911b2a51770d1e653d05e1e533f
```

### `dpkg` source package: `sgml-base=1.31+nmu1build1`

Binary Packages:

- `sgml-base=1.31+nmu1build1`

Licenses: (parsed from: `/usr/share/doc/sgml-base/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris sgml-base=1.31+nmu1build1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sgml-base/sgml-base_1.31%2bnmu1build1.tar.xz' sgml-base_1.31+nmu1build1.tar.xz 12848 SHA256:facf70694bf8db759e0cee9d0ad2d4e6e38fe88267ff8d4660ccf25ba551c6df
'http://archive.ubuntu.com/ubuntu/pool/main/s/sgml-base/sgml-base_1.31%2bnmu1build1.dsc' sgml-base_1.31+nmu1build1.dsc 1585 SHA256:23d5f7f279495033acdd54f7c33e4d2d9e840a9c19751f180d8189fc50c16dee
```

### `dpkg` source package: `shadow=1:4.17.4-2ubuntu3`

Binary Packages:

- `login.defs=1:4.17.4-2ubuntu3`
- `passwd=1:4.17.4-2ubuntu3`

Licenses: (parsed from: `/usr/share/doc/login.defs/copyright`, `/usr/share/doc/passwd/copyright`)

- `BSD-3-clause`
- `GPL-1`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.17.4-2ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.17.4.orig.tar.xz' shadow_4.17.4.orig.tar.xz 2326584 SHA256:554801054694ff7d8a7abdf0d6ece34e2f16e111673cc01b8c9ee1278451181e
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.17.4.orig.tar.xz.asc' shadow_4.17.4.orig.tar.xz.asc 488 SHA256:82437d2b54790b3a6734c526b757e693cd0c734ec6afd69f9a9cf0eb1dad8dc4
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.17.4-2ubuntu3.debian.tar.xz' shadow_4.17.4-2ubuntu3.debian.tar.xz 181748 SHA256:43373dc0d4f9728185723dfeb798c6cda06221bd9f5d653af4c0349e225eeb22
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.17.4-2ubuntu3.dsc' shadow_4.17.4-2ubuntu3.dsc 2991 SHA256:5c7ebf6e7e9894c91df3474212a6e21bc5b6da82bbcef760bad495a0b5f48c87
```

### `dpkg` source package: `shared-mime-info=2.4-5build3`

Binary Packages:

- `shared-mime-info=2.4-5build3`

Licenses: (parsed from: `/usr/share/doc/shared-mime-info/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris shared-mime-info=2.4-5build3
'http://archive.ubuntu.com/ubuntu/pool/main/s/shared-mime-info/shared-mime-info_2.4.orig.tar.bz2' shared-mime-info_2.4.orig.tar.bz2 7096347 SHA256:32dc32ae39ff1c1bf8434dd3b36770b48538a1772bc0298509d034f057005992
'http://archive.ubuntu.com/ubuntu/pool/main/s/shared-mime-info/shared-mime-info_2.4-5build3.debian.tar.xz' shared-mime-info_2.4-5build3.debian.tar.xz 10972 SHA256:da4f6a06c7c3687e35da1a4b2f9a0b6ddc1a9615960c6d6d74e7d1a9a41955ce
'http://archive.ubuntu.com/ubuntu/pool/main/s/shared-mime-info/shared-mime-info_2.4-5build3.dsc' shared-mime-info_2.4-5build3.dsc 2261 SHA256:efd953eee1c09c7c7a4b97ac0fd7a436b34e016a43c72c8cb4dacf9223ddc9a5
```

### `dpkg` source package: `shine=3.1.1-3build1`

Binary Packages:

- `libshine3:amd64=3.1.1-3build1`

Licenses: (parsed from: `/usr/share/doc/libshine3/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris shine=3.1.1-3build1
'http://archive.ubuntu.com/ubuntu/pool/universe/s/shine/shine_3.1.1.orig.tar.gz' shine_3.1.1.orig.tar.gz 940443 SHA256:565b87867d6f8e6616a236445d194e36f4daa9b4e7af823fcf5010af7610c49e
'http://archive.ubuntu.com/ubuntu/pool/universe/s/shine/shine_3.1.1-3build1.debian.tar.xz' shine_3.1.1-3build1.debian.tar.xz 4124 SHA256:2f60f64ec523eeaa1f1fc8b1e0ea2b1993cca603987284b38e328ed2a0da6395
'http://archive.ubuntu.com/ubuntu/pool/universe/s/shine/shine_3.1.1-3build1.dsc' shine_3.1.1-3build1.dsc 2029 SHA256:0af8a635e4c996c10fe9955e291709aa9ff4d84e2bb327db9103735dc3b88469
```

### `dpkg` source package: `snappy=1.2.2-2`

Binary Packages:

- `libsnappy1v5:amd64=1.2.2-2`

Licenses: (parsed from: `/usr/share/doc/libsnappy1v5/copyright`)

- `BSD-3-Clause`
- `CC-BY-3.0`
- `CC-BY-4.0`
- `MIT`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris snappy=1.2.2-2
'http://archive.ubuntu.com/ubuntu/pool/main/s/snappy/snappy_1.2.2-2.dsc' snappy_1.2.2-2.dsc 1842 SHA256:90a8cc4b919bb0825504b539e59ce45aa5027996bb6aa405a205ba3e7aa582a2
'http://archive.ubuntu.com/ubuntu/pool/main/s/snappy/snappy_1.2.2.orig.tar.gz' snappy_1.2.2.orig.tar.gz 1108618 SHA256:90f74bc1fbf78a6c56b3c4a082a05103b3a56bb17bca1a27e052ea11723292dc
'http://archive.ubuntu.com/ubuntu/pool/main/s/snappy/snappy_1.2.2-2.debian.tar.xz' snappy_1.2.2-2.debian.tar.xz 16204 SHA256:cd9ae1374a661a68e3af7d916eaaaf9b969fe2dcd327032fc84d36028a791925
```

### `dpkg` source package: `snowball=3.0.1-1`

Binary Packages:

- `python3-snowballstemmer=3.0.1-1`

Licenses: (parsed from: `/usr/share/doc/python3-snowballstemmer/copyright`)

- `BSD-3-snowball`

Source:

```console
$ apt-get source -qq --print-uris snowball=3.0.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/s/snowball/snowball_3.0.1-1.dsc' snowball_3.0.1-1.dsc 1645 SHA256:865035c6f24fecde57d17910d369cf9f3026d8bdc50e088d0389d711723913b1
'http://archive.ubuntu.com/ubuntu/pool/main/s/snowball/snowball_3.0.1.orig.tar.gz' snowball_3.0.1.orig.tar.gz 256065 SHA256:80ac10ce40dc4fcfbfed8d085c457b5613da0e86a73611a3d5527d044a142d60
'http://archive.ubuntu.com/ubuntu/pool/main/s/snowball/snowball_3.0.1-1.debian.tar.xz' snowball_3.0.1-1.debian.tar.xz 8632 SHA256:a574b0c7e34eafb333ee592c17cb6672be6f612eac717e58eb8e6329909f3bd2
```

### `dpkg` source package: `socket++=1.12.13+git20131030.5d039ba-2`

Binary Packages:

- `libsocket++1:amd64=1.12.13+git20131030.5d039ba-2`

Licenses: (parsed from: `/usr/share/doc/libsocket++1/copyright`)

- `AS_IS`
- `PD`

Source:

```console
$ apt-get source -qq --print-uris socket++=1.12.13+git20131030.5d039ba-2
'http://archive.ubuntu.com/ubuntu/pool/universe/s/socket%2b%2b/socket%2b%2b_1.12.13%2bgit20131030.5d039ba-2.dsc' socket++_1.12.13+git20131030.5d039ba-2.dsc 1827 SHA256:145188927a2d35676eca067c5a292cc275228cc7631f4ca97da6094078906ce8
'http://archive.ubuntu.com/ubuntu/pool/universe/s/socket%2b%2b/socket%2b%2b_1.12.13%2bgit20131030.5d039ba.orig.tar.xz' socket++_1.12.13+git20131030.5d039ba.orig.tar.xz 54076 SHA256:9329f32980ac407f6bea7b4fd14c16b517ec359f454f8c366f2e85fe2665cc1f
'http://archive.ubuntu.com/ubuntu/pool/universe/s/socket%2b%2b/socket%2b%2b_1.12.13%2bgit20131030.5d039ba-2.debian.tar.xz' socket++_1.12.13+git20131030.5d039ba-2.debian.tar.xz 4920 SHA256:8ecea01840243bae346eecf1d5c4fff00c9c693edf892460705cd85dbfe9ca89
```

### `dpkg` source package: `spatialite=5.1.0-3ubuntu2`

Binary Packages:

- `libspatialite-dev:amd64=5.1.0-3ubuntu2`
- `libspatialite8t64:amd64=5.1.0-3ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libspatialite-dev/copyright`, `/usr/share/doc/libspatialite8t64/copyright`)

- `BSD-4-Clause`
- `GPL-2`
- `GPL-2+`
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
$ apt-get source -qq --print-uris spatialite=5.1.0-3ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/universe/s/spatialite/spatialite_5.1.0.orig.tar.gz' spatialite_5.1.0.orig.tar.gz 6517377 SHA256:43be2dd349daffe016dd1400c5d11285828c22fea35ca5109f21f3ed50605080
'http://archive.ubuntu.com/ubuntu/pool/universe/s/spatialite/spatialite_5.1.0-3ubuntu2.debian.tar.xz' spatialite_5.1.0-3ubuntu2.debian.tar.xz 26864 SHA256:cf4cc6e0225d03f1e93c48f77be87739d815672fa6b195b216f6786d518f9c94
'http://archive.ubuntu.com/ubuntu/pool/universe/s/spatialite/spatialite_5.1.0-3ubuntu2.dsc' spatialite_5.1.0-3ubuntu2.dsc 2482 SHA256:bdcbd906cdc122656b3f1d81d51242e0f24db74a20416c4337deb59b0e28ccc8
```

### `dpkg` source package: `spdlog=1:1.15.3+ds-1build1`

Binary Packages:

- `libspdlog-dev:amd64=1:1.15.3+ds-1build1`
- `libspdlog1.15:amd64=1:1.15.3+ds-1build1`

Licenses: (parsed from: `/usr/share/doc/libspdlog-dev/copyright`, `/usr/share/doc/libspdlog1.15/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris spdlog=1:1.15.3+ds-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/s/spdlog/spdlog_1.15.3%2bds.orig.tar.xz' spdlog_1.15.3+ds.orig.tar.xz 106804 SHA256:f41541b61f6b3a78afeb2b355596a75fdb267e8caa2dba3906459fbde5e081dc
'http://archive.ubuntu.com/ubuntu/pool/universe/s/spdlog/spdlog_1.15.3%2bds-1build1.debian.tar.xz' spdlog_1.15.3+ds-1build1.debian.tar.xz 7740 SHA256:2c4585dbe532b14510e1fa78caa5217b2afc38bbc916d716a30e66ad50c9943a
'http://archive.ubuntu.com/ubuntu/pool/universe/s/spdlog/spdlog_1.15.3%2bds-1build1.dsc' spdlog_1.15.3+ds-1build1.dsc 2254 SHA256:adb6c3ba3c2821b5b463ade94237edd2889e99f9401bbc6abab69ef1c7a9542e
```

### `dpkg` source package: `speex=1.2.1-3build1`

Binary Packages:

- `libspeex1:amd64=1.2.1-3build1`

Licenses: (parsed from: `/usr/share/doc/libspeex1/copyright`)

- `BSD-3-Clause`
- `GFDL-1.1-or-later`
- `GFDL-1.2`
- `LGPL-2`
- `LGPL-2.0-or-later`
- `custom-1`

Source:

```console
$ apt-get source -qq --print-uris speex=1.2.1-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/s/speex/speex_1.2.1.orig.tar.gz' speex_1.2.1.orig.tar.gz 1043278 SHA256:4b44d4f2b38a370a2d98a78329fefc56a0cf93d1c1be70029217baae6628feea
'http://archive.ubuntu.com/ubuntu/pool/main/s/speex/speex_1.2.1.orig.tar.gz.asc' speex_1.2.1.orig.tar.gz.asc 488 SHA256:7d0457864f7dc83f05749b8ebeeafb1192b15f1643b08c38e8084e856a0d7b7f
'http://archive.ubuntu.com/ubuntu/pool/main/s/speex/speex_1.2.1-3build1.debian.tar.xz' speex_1.2.1-3build1.debian.tar.xz 10344 SHA256:e7ef2d1c08c4be3b90912c9386fec126d5cb5488218c9642b5ecb3e04407d157
'http://archive.ubuntu.com/ubuntu/pool/main/s/speex/speex_1.2.1-3build1.dsc' speex_1.2.1-3build1.dsc 2645 SHA256:17aed3688d8b1f29e5d7bd23a53a73c88f5dd86c812468bd456936050089ef06
```

### `dpkg` source package: `sphinx=8.2.3-12`

Binary Packages:

- `libjs-sphinxdoc=8.2.3-12`

Licenses: (parsed from: `/usr/share/doc/libjs-sphinxdoc/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris sphinx=8.2.3-12
'http://archive.ubuntu.com/ubuntu/pool/main/s/sphinx/sphinx_8.2.3-12.dsc' sphinx_8.2.3-12.dsc 3874 SHA256:a9cb79690afc59527136d61f30049a16b42074e2e8227e7b429be5ff99134886
'http://archive.ubuntu.com/ubuntu/pool/main/s/sphinx/sphinx_8.2.3.orig.tar.gz' sphinx_8.2.3.orig.tar.gz 8321876 SHA256:398ad29dee7f63a75888314e9424d40f52ce5a6a87ae88e7071e80af296ec348
'http://archive.ubuntu.com/ubuntu/pool/main/s/sphinx/sphinx_8.2.3-12.debian.tar.xz' sphinx_8.2.3-12.debian.tar.xz 39400 SHA256:44f0e218adbec64ed0e3ec0e688587f899f571a43dcb908c9e52b71bd183c663
```

### `dpkg` source package: `sqlite3=3.46.1-9ubuntu0.2`

Binary Packages:

- `libsqlite3-0:amd64=3.46.1-9ubuntu0.2`
- `libsqlite3-dev:amd64=3.46.1-9ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`, `/usr/share/doc/libsqlite3-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.46.1-9ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.46.1.orig-www.tar.xz' sqlite3_3.46.1.orig-www.tar.xz 5861820 SHA512:a5ec0f57d014b2f33d679cfbae0ca1935eb84871376b29216ffcc286a92a363a823ca0ec729a000d702054ee90b2fcc1887c1fb4bebfabcd14894f8ef91b7ad6
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.46.1.orig.tar.xz' sqlite3_3.46.1.orig.tar.xz 8456776 SHA512:47d3c900d95641c89d5d807881e20e97f3b7889cf44c76d48715066ba5c1860defcd17498440d79bcc49b15c2ea28e81ed4b5b159f9e947941e5c1ee27de06ba
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.46.1-9ubuntu0.2.debian.tar.xz' sqlite3_3.46.1-9ubuntu0.2.debian.tar.xz 37792 SHA512:0883f1c15042ccab5035ebcbf992c3f40bfdfbd082756cd2dd913d882efab7ac6fc37093ff7cc3d7d7cb8c2e7a0af509d0f85570269a0f601b760431a62ce600
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.46.1-9ubuntu0.2.dsc' sqlite3_3.46.1-9ubuntu0.2.dsc 2756 SHA512:e2cd292f2acd4f990292436e9985b5ee9c3c9500c85a599d9bd8983cadc0b33da8f375db79e5be5ed8b2e4096244f45bded91e82283041ae943ae558255c39d0
```

### `dpkg` source package: `srt=1.5.4-3`

Binary Packages:

- `libsrt1.5-gnutls:amd64=1.5.4-3`

Licenses: (parsed from: `/usr/share/doc/libsrt1.5-gnutls/copyright`)

- `BSD-3-clause`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MPL-2.0`
- `Zlib`
- `unlicense`

Source:

```console
$ apt-get source -qq --print-uris srt=1.5.4-3
'http://archive.ubuntu.com/ubuntu/pool/universe/s/srt/srt_1.5.4-3.dsc' srt_1.5.4-3.dsc 2328 SHA256:a88f51a125a3e681e49b3a15a07376691fe2394cbcea60adf097311a55219ce8
'http://archive.ubuntu.com/ubuntu/pool/universe/s/srt/srt_1.5.4.orig.tar.gz' srt_1.5.4.orig.tar.gz 1743040 SHA256:d0a8b600fe1b4eaaf6277530e3cfc8f15b8ce4035f16af4a5eb5d4b123640cdd
'http://archive.ubuntu.com/ubuntu/pool/universe/s/srt/srt_1.5.4-3.debian.tar.xz' srt_1.5.4-3.debian.tar.xz 16576 SHA256:c3bd288666684f7c4a5b639e6753cb26d00ffefbe3a0691bb98a77d4575a679f
```

### `dpkg` source package: `sudo-common=1.2ubuntu`

Binary Packages:

- `sudo-common=1.2ubuntu`

Licenses: (parsed from: `/usr/share/doc/sudo-common/copyright`)

- `GPL-2`
- `GPL-2+`
- `ISC`

Source:

```console
$ apt-get source -qq --print-uris sudo-common=1.2ubuntu
'http://archive.ubuntu.com/ubuntu/pool/main/s/sudo-common/sudo-common_1.2ubuntu.tar.xz' sudo-common_1.2ubuntu.tar.xz 3684 SHA256:64dec6d95d2d75624a60a668f5bd748b44f5107cfd74d41ce0a49e6859bd7f7a
'http://archive.ubuntu.com/ubuntu/pool/main/s/sudo-common/sudo-common_1.2ubuntu.dsc' sudo-common_1.2ubuntu.dsc 1566 SHA256:db86d809fb3e9824364d4fea473e896080a01539a8017b85f87a2705abac2cf3
```

### `dpkg` source package: `sudo=1.9.17p2-1ubuntu3`

Binary Packages:

- `sudo=1.9.17p2-1ubuntu3`

Licenses: (parsed from: `/usr/share/doc/sudo/copyright`)

- `BSD-2-Clause`
- `BSD-3-Clause`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `Zlib`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sudo=1.9.17p2-1ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/s/sudo/sudo_1.9.17p2.orig.tar.gz' sudo_1.9.17p2.orig.tar.gz 5451682 SHA256:4a38a1ab3adb1199257edc2a7c4a2bd714665eb605b04368843b06dada2cfcfb
'http://archive.ubuntu.com/ubuntu/pool/main/s/sudo/sudo_1.9.17p2.orig.tar.gz.asc' sudo_1.9.17p2.orig.tar.gz.asc 566 SHA256:4605f51763a083ab1732da1ae8b28a28ddf8007f4d79d0de51b691a9fe4195ec
'http://archive.ubuntu.com/ubuntu/pool/main/s/sudo/sudo_1.9.17p2-1ubuntu3.debian.tar.xz' sudo_1.9.17p2-1ubuntu3.debian.tar.xz 58952 SHA256:bc0a69796de7e23fa27bcaf1e810ca653e345c1d7627787e55ae12ca0ef15eea
'http://archive.ubuntu.com/ubuntu/pool/main/s/sudo/sudo_1.9.17p2-1ubuntu3.dsc' sudo_1.9.17p2-1ubuntu3.dsc 2727 SHA256:c213d0bfa2d87c0aecaaf193ae3e98f413a03661351e46f60cf9916ef0cd6950
```

### `dpkg` source package: `superlu=7.0.1+dfsg1-2build1`

Binary Packages:

- `libsuperlu-dev:amd64=7.0.1+dfsg1-2build1`
- `libsuperlu7:amd64=7.0.1+dfsg1-2build1`

Licenses: (parsed from: `/usr/share/doc/libsuperlu-dev/copyright`, `/usr/share/doc/libsuperlu7/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `permissive`
- `permissive-colamd`

Source:

```console
$ apt-get source -qq --print-uris superlu=7.0.1+dfsg1-2build1
'http://archive.ubuntu.com/ubuntu/pool/universe/s/superlu/superlu_7.0.1%2bdfsg1.orig.tar.xz' superlu_7.0.1+dfsg1.orig.tar.xz 723168 SHA256:50b896aa4991397b6a3587a14125819ab2649a59097b31015edfff7b2605f468
'http://archive.ubuntu.com/ubuntu/pool/universe/s/superlu/superlu_7.0.1%2bdfsg1-2build1.debian.tar.xz' superlu_7.0.1+dfsg1-2build1.debian.tar.xz 7552 SHA256:f3b395133a555bf5fa08308a137ba3b9fba024a9bb1a73e40c2764198dfb8b66
'http://archive.ubuntu.com/ubuntu/pool/universe/s/superlu/superlu_7.0.1%2bdfsg1-2build1.dsc' superlu_7.0.1+dfsg1-2build1.dsc 2250 SHA256:065e463c68a9259b4945e5189f9714e45fc77ac1a6d66c2c39e1a4675462cb69
```

### `dpkg` source package: `svt-av1=2.3.0+dfsg-1build1`

Binary Packages:

- `libsvtav1enc2:amd64=2.3.0+dfsg-1build1`

Licenses: (parsed from: `/usr/share/doc/libsvtav1enc2/copyright`)

- `BSD-2-clause`
- `BSD-3-Clause-Clear`
- `BSD-3-clause`
- `Expat`
- `ISC`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris svt-av1=2.3.0+dfsg-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/s/svt-av1/svt-av1_2.3.0%2bdfsg.orig.tar.xz' svt-av1_2.3.0+dfsg.orig.tar.xz 9017580 SHA256:815e88cc539c41b8ebd1a6f362f82ab510147635fc6c3edfa35edcfbed302cd8
'http://archive.ubuntu.com/ubuntu/pool/universe/s/svt-av1/svt-av1_2.3.0%2bdfsg-1build1.debian.tar.xz' svt-av1_2.3.0+dfsg-1build1.debian.tar.xz 7492 SHA256:81c0f62ac17f81d981b70b7532b455991c0aeee94d915acafab7402df089f2f5
'http://archive.ubuntu.com/ubuntu/pool/universe/s/svt-av1/svt-av1_2.3.0%2bdfsg-1build1.dsc' svt-av1_2.3.0+dfsg-1build1.dsc 2117 SHA256:3154e3d02f06e6be223a9fb0ee22f86510b987330cfbd7642c952640097977d5
```

### `dpkg` source package: `systemd=259.5-0ubuntu3.4`

Binary Packages:

- `libpam-systemd:amd64=259.5-0ubuntu3.4`
- `libsystemd-shared:amd64=259.5-0ubuntu3.4`
- `libsystemd0:amd64=259.5-0ubuntu3.4`
- `libudev1:amd64=259.5-0ubuntu3.4`
- `systemd=259.5-0ubuntu3.4`
- `systemd-sysv=259.5-0ubuntu3.4`

Licenses: (parsed from: `/usr/share/doc/libpam-systemd/copyright`, `/usr/share/doc/libsystemd-shared/copyright`, `/usr/share/doc/libsystemd0/copyright`, `/usr/share/doc/libudev1/copyright`, `/usr/share/doc/systemd/copyright`, `/usr/share/doc/systemd-sysv/copyright`)

- `CC0-1.0`
- `Expat`
- `GPL-2`
- `GPL-2 with Linux-syscall-note exception`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris systemd=259.5-0ubuntu3.4
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_259.5.orig.tar.gz' systemd_259.5.orig.tar.gz 17336729 SHA512:cb76b3a11b400fea94de2be74bcd9178b2e986c1965cbc19824114fe14fdd9b6aed43ae325cf5bc505efa1333adc71e131e0a8b54519e6741baa090392bf0a98
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_259.5-0ubuntu3.4.debian.tar.xz' systemd_259.5-0ubuntu3.4.debian.tar.xz 267032 SHA512:8b446ab051d47ae14e3633bfe388fd309dc96c438db5ac568ac7c68da4cd258eeaeaf231c41f9b5b55ce16445f7164e47887cbe53755af470415cbff2196e358
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_259.5-0ubuntu3.4.dsc' systemd_259.5-0ubuntu3.4.dsc 8779 SHA512:92ab82be5174bb0b79bb2c25cfb400b23c817edf662c4c34f6e7b68bef308b6815ffb86d21439ccf27a83eec19854b90537119628ecb3ebafa205759cd9927ea
```

### `dpkg` source package: `sysvinit=3.15-5ubuntu1`

Binary Packages:

- `sysvinit-utils=3.15-5ubuntu1`

Licenses: (parsed from: `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`
- `GPL-2.0`
- `GPL-2.0+`
- `GPL-3`
- `GPL-3.0`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=3.15-5ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_3.15.orig.tar.gz' sysvinit_3.15.orig.tar.gz 516469 SHA256:0979dd582056130a45bf70738260fb7f3da5cca989509b1e37ad5ad1d4cbe0bf
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_3.15-5ubuntu1.debian.tar.xz' sysvinit_3.15-5ubuntu1.debian.tar.xz 124244 SHA256:fc3930cc9515c174927b4b63150b8cd2b48fd156e033dcd80238f67e157681fd
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_3.15-5ubuntu1.dsc' sysvinit_3.15-5ubuntu1.dsc 2489 SHA256:48e604576ae74c4c66e7c23992f0a6a89cdaa86b475d3c64da985506a5ad5e88
```

### `dpkg` source package: `tar=1.35+dfsg-4ubuntu0.4`

Binary Packages:

- `tar=1.35+dfsg-4ubuntu0.4`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `GPL-3+ with Bison exception`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`

Source:

```console
$ apt-get source -qq --print-uris tar=1.35+dfsg-4ubuntu0.4
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.35%2bdfsg.orig.tar.xz' tar_1.35+dfsg.orig.tar.xz 2111608 SHA512:3aea32b5c8de229131308420d8a7aa57f7fd1b376980456dd1aa66f97509572750c3833ab9cc2edc6fdea51f802033598c83a0d6e7f18680b1638996f0acaae7
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.35%2bdfsg-4ubuntu0.4.debian.tar.xz' tar_1.35+dfsg-4ubuntu0.4.debian.tar.xz 52824 SHA512:44493db9d25f2bebf7c65c7e44eedec35efcc7e07c41f0c45833b4f11d9712b64002f8d611fe5390d03f4a436142b18fe769d6f8d8da7c289e0cd5724fbdb280
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.35%2bdfsg-4ubuntu0.4.dsc' tar_1.35+dfsg-4ubuntu0.4.dsc 2124 SHA512:e07a3f1d08e737f295ab61ae81e3e80fd26b14ca7e809d321a2df037a8498f36fa230017f3db395cbeeac112a482550242310f69c9b40695c8bd467584e57d60
```

### `dpkg` source package: `tesseract=5.5.0-1build1`

Binary Packages:

- `libtesseract5:amd64=5.5.0-1build1`

Licenses: (parsed from: `/usr/share/doc/libtesseract5/copyright`)

- `Apache-2.0`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris tesseract=5.5.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tesseract/tesseract_5.5.0.orig-test.tar.gz' tesseract_5.5.0.orig-test.tar.gz 14949199 SHA256:2788d27de6e448f8ffa7dd19a22c5781768440dee60a34607099f0c66d44b911
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tesseract/tesseract_5.5.0.orig.tar.gz' tesseract_5.5.0.orig.tar.gz 1905018 SHA256:f2fb34ca035b6d087a42875a35a7a5c4155fa9979c6132365b1e5a28ebc3fc11
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tesseract/tesseract_5.5.0-1build1.debian.tar.xz' tesseract_5.5.0-1build1.debian.tar.xz 55300 SHA256:fcea290dd282cfef5e785f0280b4502d5183c08578cd81570e72b0090ab5fb8c
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tesseract/tesseract_5.5.0-1build1.dsc' tesseract_5.5.0-1build1.dsc 2482 SHA256:db2b39934b8271fdad9b8913d977e4b3c1e2a47cc34e088f86359540311d0da9
```

### `dpkg` source package: `tiff=4.7.0-3ubuntu4`

Binary Packages:

- `libtiff-dev:amd64=4.7.0-3ubuntu4`
- `libtiff6:amd64=4.7.0-3ubuntu4`
- `libtiffxx6:amd64=4.7.0-3ubuntu4`

Licenses: (parsed from: `/usr/share/doc/libtiff-dev/copyright`, `/usr/share/doc/libtiff6/copyright`, `/usr/share/doc/libtiffxx6/copyright`)

- `Hylafax`

Source:

```console
$ apt-get source -qq --print-uris tiff=4.7.0-3ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.7.0.orig.tar.bz2' tiff_4.7.0.orig.tar.bz2 2111254 SHA256:2b8b5c4e79cb2a4651796602e45d6179b7f18bc283feab417b8e881ef7e81862
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.7.0-3ubuntu4.debian.tar.xz' tiff_4.7.0-3ubuntu4.debian.tar.xz 27680 SHA256:11ccad8fdc7a0113357c926d1c03d36e2ffcbb226e35a03bd8a27adc75a442f0
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.7.0-3ubuntu4.dsc' tiff_4.7.0-3ubuntu4.dsc 2368 SHA256:7f2fb0aaa616ca4362119acaa7798d053617aaf03aef3c9757aac70d0978f8d8
```

### `dpkg` source package: `tinyxml2=11.0.0+dfsg-1build1`

Binary Packages:

- `libtinyxml2-11:amd64=11.0.0+dfsg-1build1`
- `libtinyxml2-dev:amd64=11.0.0+dfsg-1build1`

Licenses: (parsed from: `/usr/share/doc/libtinyxml2-11/copyright`, `/usr/share/doc/libtinyxml2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `zlib/libpng`

Source:

```console
$ apt-get source -qq --print-uris tinyxml2=11.0.0+dfsg-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml2/tinyxml2_11.0.0%2bdfsg.orig.tar.xz' tinyxml2_11.0.0+dfsg.orig.tar.xz 336092 SHA256:1346241d0891464c44ce6838527bdc616f96da308d128d6e9a6ec6987db2ac8a
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml2/tinyxml2_11.0.0%2bdfsg-1build1.debian.tar.xz' tinyxml2_11.0.0+dfsg-1build1.debian.tar.xz 9240 SHA256:cbf47fe68eeef3d4c0670618de5fc43d243bfc8a68d9c2c98b77575369a1b977
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml2/tinyxml2_11.0.0%2bdfsg-1build1.dsc' tinyxml2_11.0.0+dfsg-1build1.dsc 2021 SHA256:ef20aeca3e2efc4082364238d1cdb2d419fcd9792365a44c8b90a5f9a37691d1
```

### `dpkg` source package: `tinyxml=2.6.2-7build1`

Binary Packages:

- `libtinyxml2.6.2v5:amd64=2.6.2-7build1`

Licenses: (parsed from: `/usr/share/doc/libtinyxml2.6.2v5/copyright`)

- `ZLIB`

Source:

```console
$ apt-get source -qq --print-uris tinyxml=2.6.2-7build1
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml/tinyxml_2.6.2.orig.tar.gz' tinyxml_2.6.2.orig.tar.gz 210124 SHA256:15bdfdcec58a7da30adc87ac2b078e4417dbe5392f3afb719f9ba6d062645593
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml/tinyxml_2.6.2-7build1.debian.tar.xz' tinyxml_2.6.2-7build1.debian.tar.xz 5784 SHA256:85726fefd02cca3e34e852914e403cdf23e38acc45d8e3ecc9cb8176f99d477a
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml/tinyxml_2.6.2-7build1.dsc' tinyxml_2.6.2-7build1.dsc 1984 SHA256:ec2db761c95f7756194cad3ab04bef3fb25bacb90f5765f087711741a49a8ce7
```

### `dpkg` source package: `tslib=1.22-1.1build2`

Binary Packages:

- `libts0t64:amd64=1.22-1.1build2`

Licenses: (parsed from: `/usr/share/doc/libts0t64/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris tslib=1.22-1.1build2
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tslib/tslib_1.22.orig.tar.xz' tslib_1.22.orig.tar.xz 351192 SHA256:aaf0aed410a268d7b51385d07fe4d9d64312038e87c447ec8a24c8db0a15617a
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tslib/tslib_1.22.orig.tar.xz.asc' tslib_1.22.orig.tar.xz.asc 833 SHA256:a411e3aef80e6856eb047afd357b476744279a7f0f4aeb5403eb6c8429b86f05
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tslib/tslib_1.22-1.1build2.debian.tar.xz' tslib_1.22-1.1build2.debian.tar.xz 62260 SHA256:9c6bcf44b61304faf302808776ad442af1c81de565111ca01256889061c04f0d
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tslib/tslib_1.22-1.1build2.dsc' tslib_1.22-1.1build2.dsc 2295 SHA256:60f99bf51bb1175326f94b8c9f845a6b39513616246508f2b91c3d8302b3d15b
```

### `dpkg` source package: `twolame=0.4.0-2build4`

Binary Packages:

- `libtwolame0:amd64=0.4.0-2build4`

Licenses: (parsed from: `/usr/share/doc/libtwolame0/copyright`)

- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris twolame=0.4.0-2build4
'http://archive.ubuntu.com/ubuntu/pool/main/t/twolame/twolame_0.4.0.orig.tar.gz' twolame_0.4.0.orig.tar.gz 890908 SHA256:cc35424f6019a88c6f52570b63e1baf50f62963a3eac52a03a800bb070d7c87d
'http://archive.ubuntu.com/ubuntu/pool/main/t/twolame/twolame_0.4.0-2build4.debian.tar.xz' twolame_0.4.0-2build4.debian.tar.xz 5056 SHA256:9cbab7f68b01f02c770dd57b8eba54c3002da3175e51b26c3932519de192ec87
'http://archive.ubuntu.com/ubuntu/pool/main/t/twolame/twolame_0.4.0-2build4.dsc' twolame_0.4.0-2build4.dsc 2151 SHA256:288ef2dc53dc36c8c65ea60c652a6310c8984abe38af75c4674fb66d60b024f7
```

### `dpkg` source package: `tzdata=2026c-0ubuntu0.26.04.1`

Binary Packages:

- `tzdata=2026c-0ubuntu0.26.04.1`

Licenses: (parsed from: `/usr/share/doc/tzdata/copyright`)

- `ICU`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris tzdata=2026c-0ubuntu0.26.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2026c.orig.tar.gz' tzdata_2026c.orig.tar.gz 475694 SHA512:e0b4b7044b66fbc27bc21d13d18063abcdf78ab58d5ba5fd64bd1a88d86e9d495f45add4d8e65bb6c40249f9c94ca29b72c8ebba8d0e4c468f2965ac77932ef0
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2026c.orig.tar.gz.asc' tzdata_2026c.orig.tar.gz.asc 833 SHA512:e1d44216608666bfb8a1855caacc9e6d30a1576f302c4db59faf8ec6aa2f7d5ae299c4c9b17b255b9612c30582358ca2a48f5fea82ab9b7d77d030e713c9010d
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2026c-0ubuntu0.26.04.1.debian.tar.xz' tzdata_2026c-0ubuntu0.26.04.1.debian.tar.xz 189872 SHA512:21685b2bcc0620c6743ec618b1367162dc726a0a36157db4e57145ab3be85187f52868a1936c6150e0bef4beaf50e2703d3250aa61089b114e02556eebc056fe
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2026c-0ubuntu0.26.04.1.dsc' tzdata_2026c-0ubuntu0.26.04.1.dsc 2712 SHA512:635f4cf83acfb7d30c5f356587d9cfe5465619c760e486f9a55a5a394d750d53ffe9195fad62063fc3c7d2565bf21f7d52e1eb42c23fe463c2cabab91255169d
```

### `dpkg` source package: `ubuntu-keyring=2023.11.28.1build1`

Binary Packages:

- `ubuntu-keyring=2023.11.28.1build1`

Licenses: (parsed from: `/usr/share/doc/ubuntu-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris ubuntu-keyring=2023.11.28.1build1
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2023.11.28.1build1.tar.xz' ubuntu-keyring_2023.11.28.1build1.tar.xz 20300 SHA256:8b65bbb2a7aeb35c7fa6db11bf814ae42873cc6ee6f28e468885c0f8596ad6fb
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2023.11.28.1build1.dsc' ubuntu-keyring_2023.11.28.1build1.dsc 1896 SHA256:eb90085feabf493676a7d42900581691ab179f048c746b38e940dd6f0f27b29b
```

### `dpkg` source package: `ucc=1.7.0~rc1-1`

Binary Packages:

- `libucc1:amd64=1.7.0~rc1-1`

Licenses: (parsed from: `/usr/share/doc/libucc1/copyright`)

- `BSD-3-Clause`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris ucc=1.7.0~rc1-1
'http://archive.ubuntu.com/ubuntu/pool/universe/u/ucc/ucc_1.7.0%7erc1-1.dsc' ucc_1.7.0~rc1-1.dsc 2412 SHA256:73052a011e26c363c43519b132a305f92fbb03eeb5afe5755242760d08e2779f
'http://archive.ubuntu.com/ubuntu/pool/universe/u/ucc/ucc_1.7.0%7erc1.orig.tar.gz' ucc_1.7.0~rc1.orig.tar.gz 5263583 SHA256:6c88915c4a1e27c8fb230205c1313078d92e52ca0dfe88448051b0dfe5256be0
'http://archive.ubuntu.com/ubuntu/pool/universe/u/ucc/ucc_1.7.0%7erc1-1.debian.tar.xz' ucc_1.7.0~rc1-1.debian.tar.xz 5360 SHA256:780c4b21b8126d59da757cf611be65d9e0d9cd38bff436f7b2d62b9afab0370b
```

### `dpkg` source package: `ucx=1.20.0+ds-4ubuntu2`

Binary Packages:

- `libucx0:amd64=1.20.0+ds-4ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libucx0/copyright`)

- `BSD-3-Clause`

Source:

```console
$ apt-get source -qq --print-uris ucx=1.20.0+ds-4ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/universe/u/ucx/ucx_1.20.0%2bds.orig.tar.xz' ucx_1.20.0+ds.orig.tar.xz 2177296 SHA256:a2cc3db6ea8f7388f5b0614bcf250b48e8b032d28a2a4aff91694514b15a0716
'http://archive.ubuntu.com/ubuntu/pool/universe/u/ucx/ucx_1.20.0%2bds-4ubuntu2.debian.tar.xz' ucx_1.20.0+ds-4ubuntu2.debian.tar.xz 13048 SHA256:da62c6f9ca7176b3cef403778b430e7f6e8fc546c799e6af44ca620ff4ab542a
'http://archive.ubuntu.com/ubuntu/pool/universe/u/ucx/ucx_1.20.0%2bds-4ubuntu2.dsc' ucx_1.20.0+ds-4ubuntu2.dsc 2179 SHA256:e7449e872ddffce812aa43bac873d89a04b1fcbc7c25478ac71eaee2456d2f44
```

### `dpkg` source package: `unbound=1.24.2-1ubuntu2.1`

Binary Packages:

- `libunbound8:amd64=1.24.2-1ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/libunbound8/copyright`)

- `BSD-2-VUT`
- `BSD-3-ADG`
- `BSD-3-CZ.NIC`
- `BSD-3-Farsight`
- `BSD-3-NLnetLabs`
- `BSD-3-NLnetLabs-Mekking`
- `BSD-3-Regents-DEC`
- `BSD-3-Todd-Miller`
- `BSD-3-VUT`
- `BSD-3-Viagénie`
- `BSD-3-WIDE`
- `GPL-3`
- `GPL-3+ with Bison exception`
- `ISC`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris unbound=1.24.2-1ubuntu2.1
'http://security.ubuntu.com/ubuntu/pool/main/u/unbound/unbound_1.24.2.orig.tar.gz' unbound_1.24.2.orig.tar.gz 6905018 SHA512:655d63ec5305323e84d82691425d74d98c332d0028517bd729d191e5f968ce9481b49ec7447d4c4906dce7997a998a115db36e911a59d2d877da5840c2080261
'http://security.ubuntu.com/ubuntu/pool/main/u/unbound/unbound_1.24.2-1ubuntu2.1.debian.tar.xz' unbound_1.24.2-1ubuntu2.1.debian.tar.xz 45564 SHA512:8cf71f548cc249bc431af02b5a0caad4ecaef7cf2ad6b0f2b11eb4e2cb1f5863a2451501ab0d4b8f6fbdbc943082d3ca32e319c83e47aa1e1165f83e5f2ccc4a
'http://security.ubuntu.com/ubuntu/pool/main/u/unbound/unbound_1.24.2-1ubuntu2.1.dsc' unbound_1.24.2-1ubuntu2.1.dsc 3171 SHA512:2cfec04923a6ed767246fa1cbfb594f12a2db557bca3a1a16dd382c7ff5b03cea07f1dd9b3db489d848fb5952783baa179fbc1443877c4473c00b094a7339222
```

### `dpkg` source package: `uncrustify=0.78.1+dfsg1-1build1`

Binary Packages:

- `uncrustify=0.78.1+dfsg1-1build1`

Licenses: (parsed from: `/usr/share/doc/uncrustify/copyright`)

- `Artistic`
- `GPL`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris uncrustify=0.78.1+dfsg1-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/u/uncrustify/uncrustify_0.78.1%2bdfsg1.orig.tar.xz' uncrustify_0.78.1+dfsg1.orig.tar.xz 1008184 SHA256:23694024d80fa2b56abc3d164d9ee8bb095fda4f51b397412e3a29715e2a2f59
'http://archive.ubuntu.com/ubuntu/pool/universe/u/uncrustify/uncrustify_0.78.1%2bdfsg1-1build1.debian.tar.xz' uncrustify_0.78.1+dfsg1-1build1.debian.tar.xz 5600 SHA256:a57053ef6af8e4e806772aabe33a412fd15351811b4ae2108c1fb435b937c325
'http://archive.ubuntu.com/ubuntu/pool/universe/u/uncrustify/uncrustify_0.78.1%2bdfsg1-1build1.dsc' uncrustify_0.78.1+dfsg1-1build1.dsc 1946 SHA256:fb9a4b151837bc9dd67adfcd28c5fb31124c5159ad0c2fa756e969af98eda713
```

### `dpkg` source package: `unixodbc=2.3.14-1`

Binary Packages:

- `libodbc2:amd64=2.3.14-1`
- `libodbccr2:amd64=2.3.14-1`
- `libodbcinst2:amd64=2.3.14-1`
- `unixodbc-common=2.3.14-1`
- `unixodbc-dev:amd64=2.3.14-1`

Licenses: (parsed from: `/usr/share/doc/libodbc2/copyright`, `/usr/share/doc/libodbccr2/copyright`, `/usr/share/doc/libodbcinst2/copyright`, `/usr/share/doc/unixodbc-common/copyright`, `/usr/share/doc/unixodbc-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `ppowell`

Source:

```console
$ apt-get source -qq --print-uris unixodbc=2.3.14-1
'http://archive.ubuntu.com/ubuntu/pool/main/u/unixodbc/unixodbc_2.3.14-1.dsc' unixodbc_2.3.14-1.dsc 2461 SHA256:62757d59795ceba3c198538f3d3f92804cb40f672162031cc2053071e39d0b43
'http://archive.ubuntu.com/ubuntu/pool/main/u/unixodbc/unixodbc_2.3.14.orig.tar.gz' unixodbc_2.3.14.orig.tar.gz 855689 SHA256:3bd23171aca274820ef5cb4961b191adf2cf98509bea4d1b1b0a8630359ee2fb
'http://archive.ubuntu.com/ubuntu/pool/main/u/unixodbc/unixodbc_2.3.14-1.debian.tar.xz' unixodbc_2.3.14-1.debian.tar.xz 16932 SHA256:48c7702fcefaf45433098aa4d17183f92165976814b809f8b6b67cc83d7559cd
```

### `dpkg` source package: `uriparser=0.9.8+dfsg-2build1`

Binary Packages:

- `liburiparser-dev=0.9.8+dfsg-2build1`
- `liburiparser1:amd64=0.9.8+dfsg-2build1`

Licenses: (parsed from: `/usr/share/doc/liburiparser-dev/copyright`, `/usr/share/doc/liburiparser1/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris uriparser=0.9.8+dfsg-2build1
'http://archive.ubuntu.com/ubuntu/pool/universe/u/uriparser/uriparser_0.9.8%2bdfsg.orig.tar.xz' uriparser_0.9.8+dfsg.orig.tar.xz 91600 SHA256:cccb1fc1184b0f79fe164131dc73634997ecaf225186691bda3af84dee7809be
'http://archive.ubuntu.com/ubuntu/pool/universe/u/uriparser/uriparser_0.9.8%2bdfsg-2build1.debian.tar.xz' uriparser_0.9.8+dfsg-2build1.debian.tar.xz 8136 SHA256:af5b11158f2f97c83de9fd1d968d2468a110b7d6b66ec52b72b4ad0bec42f176
'http://archive.ubuntu.com/ubuntu/pool/universe/u/uriparser/uriparser_0.9.8%2bdfsg-2build1.dsc' uriparser_0.9.8+dfsg-2build1.dsc 2116 SHA256:244bcbf6fd05bc09ccc21797593cb6146672d4520c19b955002ceca54c58ad61
```

### `dpkg` source package: `ust=2.14.0-1.1`

Binary Packages:

- `liblttng-ust-common1t64:amd64=2.14.0-1.1`
- `liblttng-ust-ctl6:amd64=2.14.0-1.1`
- `liblttng-ust-dev:amd64=2.14.0-1.1`
- `liblttng-ust-python-agent1t64:amd64=2.14.0-1.1`
- `liblttng-ust1t64:amd64=2.14.0-1.1`

Licenses: (parsed from: `/usr/share/doc/liblttng-ust-common1t64/copyright`, `/usr/share/doc/liblttng-ust-ctl6/copyright`, `/usr/share/doc/liblttng-ust-dev/copyright`, `/usr/share/doc/liblttng-ust-python-agent1t64/copyright`, `/usr/share/doc/liblttng-ust1t64/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `CC-BY-4.0`
- `Expat`
- `FSFAP`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris ust=2.14.0-1.1
'http://archive.ubuntu.com/ubuntu/pool/main/u/ust/ust_2.14.0-1.1.dsc' ust_2.14.0-1.1.dsc 3198 SHA256:c20f1121edb6d217defc0bd8cd3c17f0d19178dcb890a74cfa3d7c12d1682b7c
'http://archive.ubuntu.com/ubuntu/pool/main/u/ust/ust_2.14.0.orig.tar.bz2' ust_2.14.0.orig.tar.bz2 1391236 SHA256:82cdfd304bbb2b2b7d17cc951a6756b37a9f73868ec0ba7db448a0d5ca51b763
'http://archive.ubuntu.com/ubuntu/pool/main/u/ust/ust_2.14.0.orig.tar.bz2.asc' ust_2.14.0.orig.tar.bz2.asc 488 SHA256:0651fbf2b10c8f69ef3ca3adb7cbc457e4a1327de4b3fc79861d46849f6b042a
'http://archive.ubuntu.com/ubuntu/pool/main/u/ust/ust_2.14.0-1.1.debian.tar.xz' ust_2.14.0-1.1.debian.tar.xz 24692 SHA256:dabeafc8da5721b3a3e5b75e1bff8e1bd7e75f3a34b94c4ebcf4b15c88198441
```

### `dpkg` source package: `utfcpp=4.0.9-1`

Binary Packages:

- `libutfcpp-dev=4.0.9-1`

Licenses: (parsed from: `/usr/share/doc/libutfcpp-dev/copyright`)

- `BSL-1.0`

Source:

```console
$ apt-get source -qq --print-uris utfcpp=4.0.9-1
'http://archive.ubuntu.com/ubuntu/pool/universe/u/utfcpp/utfcpp_4.0.9-1.dsc' utfcpp_4.0.9-1.dsc 1802 SHA256:3897510da879b1404d67203b024d79d3e7fdfdb8c438d2c3305f18d97299b87e
'http://archive.ubuntu.com/ubuntu/pool/universe/u/utfcpp/utfcpp_4.0.9.orig.tar.gz' utfcpp_4.0.9.orig.tar.gz 35363 SHA256:61068c9d5a16aba70d68dab11f25a965d1d0e79a1304171d023ad9dfacf32f6f
'http://archive.ubuntu.com/ubuntu/pool/universe/u/utfcpp/utfcpp_4.0.9-1.debian.tar.xz' utfcpp_4.0.9-1.debian.tar.xz 5484 SHA256:b955d61591d3e8c3afc27e757becbf082475a6ad32b7129addca31d27d7696fa
```

### `dpkg` source package: `util-linux=2.41.3-3ubuntu2`

Binary Packages:

- `bsdutils=1:2.41.3-3ubuntu2`
- `libblkid1:amd64=2.41.3-3ubuntu2`
- `libmount1:amd64=2.41.3-3ubuntu2`
- `libsmartcols1:amd64=2.41.3-3ubuntu2`
- `libuuid1:amd64=2.41.3-3ubuntu2`
- `login=1:4.16.0-2+really2.41.3-3ubuntu2`
- `mount=2.41.3-3ubuntu2`
- `util-linux=2.41.3-3ubuntu2`
- `uuid-dev:amd64=2.41.3-3ubuntu2`

Licenses: (parsed from: `/usr/share/doc/bsdutils/copyright`, `/usr/share/doc/libblkid1/copyright`, `/usr/share/doc/libmount1/copyright`, `/usr/share/doc/libsmartcols1/copyright`, `/usr/share/doc/libuuid1/copyright`, `/usr/share/doc/login/copyright`, `/usr/share/doc/mount/copyright`, `/usr/share/doc/util-linux/copyright`, `/usr/share/doc/uuid-dev/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-4-clause`
- `BSLA`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `ISC`
- `LGPL`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris util-linux=2.41.3-3ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.41.3.orig.tar.xz' util-linux_2.41.3.orig.tar.xz 9467224 SHA256:3330d873f0fceb5560b89a7dc14e4f3288bbd880e96903ed9b50ec2b5799e58b
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.41.3-3ubuntu2.debian.tar.xz' util-linux_2.41.3-3ubuntu2.debian.tar.xz 116776 SHA256:d6a1d3b69f716f5aed7366d12d903dec20e0f98744e87cb41488944cb7bb4247
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.41.3-3ubuntu2.dsc' util-linux_2.41.3-3ubuntu2.dsc 5439 SHA256:4b87e555cfa77a3301e0fc92b77f2f2fc119d7ff27b229af259793103e7674e2
```

### `dpkg` source package: `vtk9=9.5.2+dfsg4-3ubuntu1`

Binary Packages:

- `libvtk9-dev:amd64=9.5.2+dfsg4-3ubuntu1`
- `libvtk9-java=9.5.2+dfsg4-3ubuntu1`
- `libvtk9-qt-dev:amd64=9.5.2+dfsg4-3ubuntu1`
- `libvtk9.5:amd64=9.5.2+dfsg4-3ubuntu1`
- `libvtk9.5-qt:amd64=9.5.2+dfsg4-3ubuntu1`
- `python3-vtk9=9.5.2+dfsg4-3ubuntu1`
- `vtk9=9.5.2+dfsg4-3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libvtk9-dev/copyright`, `/usr/share/doc/libvtk9-java/copyright`, `/usr/share/doc/libvtk9-qt-dev/copyright`, `/usr/share/doc/libvtk9.5/copyright`, `/usr/share/doc/libvtk9.5-qt/copyright`, `/usr/share/doc/python3-vtk9/copyright`, `/usr/share/doc/vtk9/copyright`)

- `Apache-2.0`
- `Apache-2.0 AND BSL-1.0`
- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-3-clause-LBNL`
- `BSD-3-clause-notice`
- `BSD-3-clause-notice-2`
- `BSD-like`
- `BSL-1.0`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `MIT`
- `MIT-exception`
- `Viskores-1.0`
- `Zlib`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris vtk9=9.5.2+dfsg4-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/universe/v/vtk9/vtk9_9.5.2%2bdfsg4.orig.tar.xz' vtk9_9.5.2+dfsg4.orig.tar.xz 25263980 SHA256:bf8a707286f82bac96bd10ef8cfaffea585f76c5d08bd0991bfca271cd26bb76
'http://archive.ubuntu.com/ubuntu/pool/universe/v/vtk9/vtk9_9.5.2%2bdfsg4-3ubuntu1.debian.tar.xz' vtk9_9.5.2+dfsg4-3ubuntu1.debian.tar.xz 25464 SHA256:e01927bc0d512da72254959085f0e860022d1982f92ad091afc4140cf920933b
'http://archive.ubuntu.com/ubuntu/pool/universe/v/vtk9/vtk9_9.5.2%2bdfsg4-3ubuntu1.dsc' vtk9_9.5.2+dfsg4-3ubuntu1.dsc 3832 SHA256:f94d9d3cdd7644d7197d9c869143da9f891539459f9f87399b7e35b8ec252ffe
```

### `dpkg` source package: `vulkan-loader=1.4.341.0-1`

Binary Packages:

- `libvulkan-dev:amd64=1.4.341.0-1`
- `libvulkan1:amd64=1.4.341.0-1`

Licenses: (parsed from: `/usr/share/doc/libvulkan-dev/copyright`, `/usr/share/doc/libvulkan1/copyright`)

- `Apache-2.0`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris vulkan-loader=1.4.341.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/v/vulkan-loader/vulkan-loader_1.4.341.0-1.dsc' vulkan-loader_1.4.341.0-1.dsc 2243 SHA256:d7dc15bff3e96ba8a486141f377709c23dcec8ff56130b70fd6b7f8b135e6ad8
'http://archive.ubuntu.com/ubuntu/pool/main/v/vulkan-loader/vulkan-loader_1.4.341.0.orig.tar.xz' vulkan-loader_1.4.341.0.orig.tar.xz 3192216 SHA256:a022ed880ae99c91ed6aca34c2e6551a163617666034f0eeb9b9efdd54a272a6
'http://archive.ubuntu.com/ubuntu/pool/main/v/vulkan-loader/vulkan-loader_1.4.341.0-1.debian.tar.xz' vulkan-loader_1.4.341.0-1.debian.tar.xz 9592 SHA256:f82f05c90483ac619c89be664ca79cfd75c8c9746db4cb50398e14a907aa86c8
```

### `dpkg` source package: `wayland=1.24.0-2`

Binary Packages:

- `libwayland-client0:amd64=1.24.0-2`
- `libwayland-cursor0:amd64=1.24.0-2`
- `libwayland-egl1:amd64=1.24.0-2`

Licenses: (parsed from: `/usr/share/doc/libwayland-client0/copyright`, `/usr/share/doc/libwayland-cursor0/copyright`, `/usr/share/doc/libwayland-egl1/copyright`)

- `X11`

Source:

```console
$ apt-get source -qq --print-uris wayland=1.24.0-2
'http://archive.ubuntu.com/ubuntu/pool/main/w/wayland/wayland_1.24.0-2.dsc' wayland_1.24.0-2.dsc 2650 SHA256:b8423e8a1c51b18eadab45961bd625cadecf240dc02150c91f6f5e3218867f24
'http://archive.ubuntu.com/ubuntu/pool/main/w/wayland/wayland_1.24.0.orig.tar.gz' wayland_1.24.0.orig.tar.gz 376855 SHA256:c6d416e207d4d80d2577c316ce1554062b37f6e8776f81f25fb4f5a3515590f7
'http://archive.ubuntu.com/ubuntu/pool/main/w/wayland/wayland_1.24.0-2.diff.gz' wayland_1.24.0-2.diff.gz 16592 SHA256:0947ab20c285766c217d7ede8de0242796250eb98b690b22cae8e7103295fd81
```

### `dpkg` source package: `x264=2:0.165.3222+gitb35605ac-3build1`

Binary Packages:

- `libx264-165:amd64=2:0.165.3222+gitb35605ac-3build1`

Licenses: (parsed from: `/usr/share/doc/libx264-165/copyright`)

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
$ apt-get source -qq --print-uris x264=2:0.165.3222+gitb35605ac-3build1
'http://archive.ubuntu.com/ubuntu/pool/universe/x/x264/x264_0.165.3222%2bgitb35605ac.orig.tar.gz' x264_0.165.3222+gitb35605ac.orig.tar.gz 1038624 SHA256:4672fb415c34bf16e2ed9cd43d1ab865158f586c7f1406d507f7f44516fb5ec8
'http://archive.ubuntu.com/ubuntu/pool/universe/x/x264/x264_0.165.3222%2bgitb35605ac-3build1.debian.tar.xz' x264_0.165.3222+gitb35605ac-3build1.debian.tar.xz 23292 SHA256:28bb2b111c288cbcbd844da4577203e87653b769190a10ab078b5b8c1c58612f
'http://archive.ubuntu.com/ubuntu/pool/universe/x/x264/x264_0.165.3222%2bgitb35605ac-3build1.dsc' x264_0.165.3222+gitb35605ac-3build1.dsc 2510 SHA256:78723292c1b72d1210fbb7d75cd9f73ae984b1cb52081de0e54c77a9788c2669
```

### `dpkg` source package: `x265=4.1-4`

Binary Packages:

- `libx265-215:amd64=4.1-4`

Licenses: (parsed from: `/usr/share/doc/libx265-215/copyright`)

- `Expat`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris x265=4.1-4
'http://archive.ubuntu.com/ubuntu/pool/universe/x/x265/x265_4.1-4.dsc' x265_4.1-4.dsc 1765 SHA256:e09abfb816efecdae32f9030d24492ff71edd805341c0fb8b706e0d00bd5026a
'http://archive.ubuntu.com/ubuntu/pool/universe/x/x265/x265_4.1.orig.tar.xz' x265_4.1.orig.tar.xz 1113508 SHA256:85abb8a850000bf693947459c42a666a3ecd6de10a2ac6b3c6647554b14d3270
'http://archive.ubuntu.com/ubuntu/pool/universe/x/x265/x265_4.1-4.debian.tar.xz' x265_4.1-4.debian.tar.xz 14508 SHA256:956aacde00fb9a57a5ba3a650086049b066ca33b023ebef4e808fded0ee9407f
```

### `dpkg` source package: `xcb-util-cursor=0.1.6-1`

Binary Packages:

- `libxcb-cursor0:amd64=0.1.6-1`

Licenses: (parsed from: `/usr/share/doc/libxcb-cursor0/copyright`)

- `MIT/X`

Source:

```console
$ apt-get source -qq --print-uris xcb-util-cursor=0.1.6-1
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xcb-util-cursor/xcb-util-cursor_0.1.6-1.dsc' xcb-util-cursor_0.1.6-1.dsc 2340 SHA256:cc3661196eb789aab7d46c1c7f91a7634c4636e44b2b49c420370c2678376c5f
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xcb-util-cursor/xcb-util-cursor_0.1.6.orig.tar.gz' xcb-util-cursor_0.1.6.orig.tar.gz 406499 SHA256:eae38b2dfc5c529a886e507ef576b12d2a20aa1f149608e4853af760f31be60b
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xcb-util-cursor/xcb-util-cursor_0.1.6.orig.tar.gz.asc' xcb-util-cursor_0.1.6.orig.tar.gz.asc 833 SHA256:e1ef1b70d8efb9b766256650d930bd133067e46c13e1b86763efe0e2d8a29a54
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xcb-util-cursor/xcb-util-cursor_0.1.6-1.debian.tar.xz' xcb-util-cursor_0.1.6-1.debian.tar.xz 9608 SHA256:fdec6738e9b87d1236dace3cea3a8088a5e3f7f260bdf544859edd4670326933
```

### `dpkg` source package: `xcb-util-image=0.4.0-2build2`

Binary Packages:

- `libxcb-image0:amd64=0.4.0-2build2`

Licenses: (parsed from: `/usr/share/doc/libxcb-image0/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT/X11`

Source:

```console
$ apt-get source -qq --print-uris xcb-util-image=0.4.0-2build2
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xcb-util-image/xcb-util-image_0.4.0.orig.tar.bz2' xcb-util-image_0.4.0.orig.tar.bz2 327891 SHA256:2db96a37d78831d643538dd1b595d7d712e04bdccf8896a5e18ce0f398ea2ffc
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xcb-util-image/xcb-util-image_0.4.0-2build2.debian.tar.xz' xcb-util-image_0.4.0-2build2.debian.tar.xz 4696 SHA256:40a2cadaaf682c5436402537e54f7c344abb49095ea9a4492e11974dfc637f89
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xcb-util-image/xcb-util-image_0.4.0-2build2.dsc' xcb-util-image_0.4.0-2build2.dsc 2224 SHA256:3d64fe8ce45a4be2bb8f707faeacd01d6f8cf1dbcb76c602339e902d2663c4a4
```

### `dpkg` source package: `xcb-util-keysyms=0.4.1-1build1`

Binary Packages:

- `libxcb-keysyms1:amd64=0.4.1-1build1`

Licenses: (parsed from: `/usr/share/doc/libxcb-keysyms1/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT/X11`

Source:

```console
$ apt-get source -qq --print-uris xcb-util-keysyms=0.4.1-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xcb-util-keysyms/xcb-util-keysyms_0.4.1.orig.tar.xz' xcb-util-keysyms_0.4.1.orig.tar.xz 259860 SHA256:7c260a5294412aed429df1da2f8afd3bd07b7cba3fec772fba15a613a6d5c638
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xcb-util-keysyms/xcb-util-keysyms_0.4.1-1build1.debian.tar.xz' xcb-util-keysyms_0.4.1-1build1.debian.tar.xz 4452 SHA256:12bd8938c55f976ccfbccb5306445c42835b3f128f350d6e265c0a7a8484d5cb
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xcb-util-keysyms/xcb-util-keysyms_0.4.1-1build1.dsc' xcb-util-keysyms_0.4.1-1build1.dsc 2121 SHA256:d259963934e72438978e8f56815a4eb9e13f5a0ba696017e7ca66b02e4774629
```

### `dpkg` source package: `xcb-util-renderutil=0.3.10-1build1`

Binary Packages:

- `libxcb-render-util0:amd64=0.3.10-1build1`

Licenses: (parsed from: `/usr/share/doc/libxcb-render-util0/copyright`)

- `Expat`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris xcb-util-renderutil=0.3.10-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xcb-util-renderutil/xcb-util-renderutil_0.3.10.orig.tar.xz' xcb-util-renderutil_0.3.10.orig.tar.xz 262028 SHA256:3e15d4f0e22d8ddbfbb9f5d77db43eacd7a304029bf25a6166cc63caa96d04ba
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xcb-util-renderutil/xcb-util-renderutil_0.3.10-1build1.debian.tar.xz' xcb-util-renderutil_0.3.10-1build1.debian.tar.xz 4548 SHA256:de041966b73f3ad006048e724a1c3972c3783b810186975b7c7afce7a641b9f7
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xcb-util-renderutil/xcb-util-renderutil_0.3.10-1build1.dsc' xcb-util-renderutil_0.3.10-1build1.dsc 2177 SHA256:26e87757cc3d0687592ecd8eb8460cf2d80ebbb36613c1413f031f6317dfbf10
```

### `dpkg` source package: `xcb-util-wm=0.4.2-1build1`

Binary Packages:

- `libxcb-icccm4:amd64=0.4.2-1build1`

Licenses: (parsed from: `/usr/share/doc/libxcb-icccm4/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT/X Consortium License`

Source:

```console
$ apt-get source -qq --print-uris xcb-util-wm=0.4.2-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xcb-util-wm/xcb-util-wm_0.4.2.orig.tar.xz' xcb-util-wm_0.4.2.orig.tar.xz 285152 SHA256:62c34e21d06264687faea7edbf63632c9f04d55e72114aa4a57bb95e4f888a0b
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xcb-util-wm/xcb-util-wm_0.4.2-1build1.debian.tar.xz' xcb-util-wm_0.4.2-1build1.debian.tar.xz 4572 SHA256:bb094d6815fd208e8d2d65cbe123d38f8c90a1038b5c96006d0c41360ae56e3b
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xcb-util-wm/xcb-util-wm_0.4.2-1build1.dsc' xcb-util-wm_0.4.2-1build1.dsc 2197 SHA256:8a7eb51805614974a431a9974351775e37672c3e97c6f4f5f63bb14d2ca168ad
```

### `dpkg` source package: `xcb-util=0.4.1-1build1`

Binary Packages:

- `libxcb-util1:amd64=0.4.1-1build1`

Licenses: (parsed from: `/usr/share/doc/libxcb-util1/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris xcb-util=0.4.1-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util/xcb-util_0.4.1.orig.tar.gz' xcb-util_0.4.1.orig.tar.gz 393791 SHA256:21c6e720162858f15fe686cef833cf96a3e2a79875f84007d76f6d00417f593a
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util/xcb-util_0.4.1-1build1.debian.tar.xz' xcb-util_0.4.1-1build1.debian.tar.xz 4492 SHA256:16108efb7f64881f1ae80ffa061c083354d678fff04d43e6ba5356906d4acd7b
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util/xcb-util_0.4.1-1build1.dsc' xcb-util_0.4.1-1build1.dsc 2106 SHA256:3fd4a558c8bad2192182ca422c31737137b2def2a0a242d3fd802e88cc02f688
```

### `dpkg` source package: `xerces-c=3.2.4+debian-1.3build2`

Binary Packages:

- `libxerces-c-dev:amd64=3.2.4+debian-1.3build2`
- `libxerces-c3.2t64:amd64=3.2.4+debian-1.3build2`

Licenses: (parsed from: `/usr/share/doc/libxerces-c-dev/copyright`, `/usr/share/doc/libxerces-c3.2t64/copyright`)

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
$ apt-get source -qq --print-uris xerces-c=3.2.4+debian-1.3build2
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xerces-c/xerces-c_3.2.4%2bdebian.orig.tar.xz' xerces-c_3.2.4+debian.orig.tar.xz 1566760 SHA256:cf5b5d5fda86061a49bd5f58ef778aa9d7caba30c6b152a5d57c5ff545f50f2c
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xerces-c/xerces-c_3.2.4%2bdebian-1.3build2.debian.tar.xz' xerces-c_3.2.4+debian-1.3build2.debian.tar.xz 26652 SHA256:fa763927d587615a3842923be451e57369be99ef00f2a8dcf03a4c06ee54b1e4
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xerces-c/xerces-c_3.2.4%2bdebian-1.3build2.dsc' xerces-c_3.2.4+debian-1.3build2.dsc 2371 SHA256:67cdfdd007328dd1a615b9c36d67fdf273586b29ca972080107cae5d98924149
```

### `dpkg` source package: `xft=2.3.6-1build2`

Binary Packages:

- `libxft-dev:amd64=2.3.6-1build2`
- `libxft2:amd64=2.3.6-1build2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xft=2.3.6-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/x/xft/xft_2.3.6.orig.tar.gz' xft_2.3.6.orig.tar.gz 447498 SHA256:b7e59f69e0bbabe9438088775f7e5a7c16a572e58b11f9722519385d38192df5
'http://archive.ubuntu.com/ubuntu/pool/main/x/xft/xft_2.3.6-1build2.diff.gz' xft_2.3.6-1build2.diff.gz 18148 SHA256:ab35fc74ea56bc36beccc5ddd27adf0f1dd2e43558de63485b3e611faff64cde
'http://archive.ubuntu.com/ubuntu/pool/main/x/xft/xft_2.3.6-1build2.dsc' xft_2.3.6-1build2.dsc 2109 SHA256:25277cde23739054675925aded435d9f8d9030c902b8abfbaab48253ebdd050b
```

### `dpkg` source package: `xkeyboard-config=2.46-2`

Binary Packages:

- `xkb-data=2.46-2`

Licenses: (parsed from: `/usr/share/doc/xkb-data/copyright`)

- `Expat`
- `Expat-Open-Group`
- `Expat-open-group`
- `HPND-sell-variant`

Source:

```console
$ apt-get source -qq --print-uris xkeyboard-config=2.46-2
'http://archive.ubuntu.com/ubuntu/pool/main/x/xkeyboard-config/xkeyboard-config_2.46-2.dsc' xkeyboard-config_2.46-2.dsc 2437 SHA256:57f32bc82d0c1da09464a09f3a704e32510177484097e1166468b907072a8677
'http://archive.ubuntu.com/ubuntu/pool/main/x/xkeyboard-config/xkeyboard-config_2.46.orig.tar.xz' xkeyboard-config_2.46.orig.tar.xz 931044 SHA256:10c58218fb60d08fb1f7b30304deb3ba47613195aa8a08a81f1972775ccc3640
'http://archive.ubuntu.com/ubuntu/pool/main/x/xkeyboard-config/xkeyboard-config_2.46.orig.tar.xz.asc' xkeyboard-config_2.46.orig.tar.xz.asc 488 SHA256:1e9a21335d8c32218c2c71568931d932c3afb35143455752824bf7e29af6acec
'http://archive.ubuntu.com/ubuntu/pool/main/x/xkeyboard-config/xkeyboard-config_2.46-2.debian.tar.xz' xkeyboard-config_2.46-2.debian.tar.xz 16632 SHA256:4430a00eba637eea6503a52606838346eea14becec51c0bcee24872dfd56699c
```

### `dpkg` source package: `xml-core=0.19build1`

Binary Packages:

- `xml-core=0.19build1`

Licenses: (parsed from: `/usr/share/doc/xml-core/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris xml-core=0.19build1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xml-core/xml-core_0.19build1.tar.xz' xml-core_0.19build1.tar.xz 24136 SHA256:bdc3dfab9e92fbd3afe4c510e94f2e13ec6b32c84d22f4d11b987fa102a46929
'http://archive.ubuntu.com/ubuntu/pool/main/x/xml-core/xml-core_0.19build1.dsc' xml-core_0.19build1.dsc 1574 SHA256:04f46bc7a67a7385698ae51528dbd4c58e6b42a82f74a3929cb075b8d958345d
```

### `dpkg` source package: `xorg-sgml-doctools=1:1.11-1.1build1`

Binary Packages:

- `xorg-sgml-doctools=1:1.11-1.1build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xorg-sgml-doctools=1:1.11-1.1build1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11.orig.tar.gz' xorg-sgml-doctools_1.11.orig.tar.gz 150367 SHA256:986326d7b4dd2ad298f61d8d41fe3929ac6191c6000d6d7e47a8ffc0c34e7426
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11-1.1build1.diff.gz' xorg-sgml-doctools_1.11-1.1build1.diff.gz 3420 SHA256:190365efab38ac0376f5bbd92dcd088d58ef694fc264b50f2fb4fad8db5a4a0b
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11-1.1build1.dsc' xorg-sgml-doctools_1.11-1.1build1.dsc 2011 SHA256:3ea355f7a9ee1a3f8329e163cccc6abaf2cc0610606b49824ea6c50e572d9bed
```

### `dpkg` source package: `xorg=1:7.7+26ubuntu1`

Binary Packages:

- `x11-common=1:7.7+26ubuntu1`

Licenses: (parsed from: `/usr/share/doc/x11-common/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris xorg=1:7.7+26ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg/xorg_7.7%2b26ubuntu1.tar.xz' xorg_7.7+26ubuntu1.tar.xz 241928 SHA256:d717a18530248d8d90e1ac850a8d39d2e1ba6eded0cc1288f74fa606ffd929d1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg/xorg_7.7%2b26ubuntu1.dsc' xorg_7.7+26ubuntu1.dsc 2047 SHA256:988f673a4ca56463796a3b31ec9a3c11b9eeae1c38a1e31d51f171168c4d3abe
```

### `dpkg` source package: `xorgproto=2025.1-1`

Binary Packages:

- `x11proto-dev=2025.1-1`

Licenses: (parsed from: `/usr/share/doc/x11proto-dev/copyright`)

- `MIT`
- `SGI`

Source:

```console
$ apt-get source -qq --print-uris xorgproto=2025.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorgproto/xorgproto_2025.1-1.dsc' xorgproto_2025.1-1.dsc 3336 SHA256:4cca414a1b9ba8d6e04c2ca8182b0157a0667de0387057e62dd847f57b7f1fd2
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorgproto/xorgproto_2025.1.orig.tar.gz' xorgproto_2025.1.orig.tar.gz 1127613 SHA256:d6f89f65bafb8c9b735e0515882b8a1511e8e864dde5e9513e191629369f2256
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorgproto/xorgproto_2025.1.orig.tar.gz.asc' xorgproto_2025.1.orig.tar.gz.asc 195 SHA256:4eabb8638b2c8f185b61317413276cc60a005d1d422f25b663b11bea7fd48a79
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorgproto/xorgproto_2025.1-1.diff.gz' xorgproto_2025.1-1.diff.gz 25174 SHA256:02d5e529287954c172727ed83b79c2a8537c36ac520cd7f48fb0d4bd57a0186f
```

### `dpkg` source package: `xtrans=1.6.0-1build1`

Binary Packages:

- `xtrans-dev=1.6.0-1build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xtrans=1.6.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.6.0.orig.tar.gz' xtrans_1.6.0.orig.tar.gz 239113 SHA256:936b74c60b19c317c3f3cb1b114575032528dbdaf428740483200ea874c2ca0a
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.6.0-1build1.diff.gz' xtrans_1.6.0-1build1.diff.gz 18591 SHA256:e38937ed43fb46fe2598e6553659b00dcbe93a1c4b24d4cab10c33e875cc0cb3
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.6.0-1build1.dsc' xtrans_1.6.0-1build1.dsc 1907 SHA256:7d2baf697af954903c159d87d260e4648164f65437832b8dd913890a52977dfd
```

### `dpkg` source package: `xvidcore=2:1.3.7-3`

Binary Packages:

- `libxvidcore4:amd64=2:1.3.7-3`

Licenses: (parsed from: `/usr/share/doc/libxvidcore4/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris xvidcore=2:1.3.7-3
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xvidcore/xvidcore_1.3.7-3.dsc' xvidcore_1.3.7-3.dsc 2120 SHA256:048b498f6cd3d65ae78e9a9ec8643829713ef285479c0b51e01f2eee3c15f2b7
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xvidcore/xvidcore_1.3.7.orig.tar.bz2' xvidcore_1.3.7.orig.tar.bz2 698615 SHA256:aeeaae952d4db395249839a3bd03841d6844843f5a4f84c271ff88f7aa1acff7
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xvidcore/xvidcore_1.3.7-3.debian.tar.xz' xvidcore_1.3.7-3.debian.tar.xz 7004 SHA256:19e77044233dbc24d39123366bb073d17987a73b26aac904428bb3edabd8fae3
```

### `dpkg` source package: `xxhash=0.8.3-2build1`

Binary Packages:

- `libxxhash-dev:amd64=0.8.3-2build1`
- `libxxhash0:amd64=0.8.3-2build1`

Licenses: (parsed from: `/usr/share/doc/libxxhash-dev/copyright`, `/usr/share/doc/libxxhash0/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris xxhash=0.8.3-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xxhash/xxhash_0.8.3.orig.tar.gz' xxhash_0.8.3.orig.tar.gz 1147630 SHA256:aae608dfe8213dfd05d909a57718ef82f30722c392344583d3f39050c7f29a80
'http://archive.ubuntu.com/ubuntu/pool/main/x/xxhash/xxhash_0.8.3-2build1.debian.tar.xz' xxhash_0.8.3-2build1.debian.tar.xz 5224 SHA256:98c020a7627a93090c72dece774b1fff0cee76e4f59a65dbd1facb266431fcc5
'http://archive.ubuntu.com/ubuntu/pool/main/x/xxhash/xxhash_0.8.3-2build1.dsc' xxhash_0.8.3-2build1.dsc 1968 SHA256:2428b6123da0fa2e2b948474faa829657dc682d741d10a341c9c348c09ea720a
```

### `dpkg` source package: `xz-utils=5.8.3-1`

Binary Packages:

- `liblzma-dev:amd64=5.8.3-1`
- `liblzma5:amd64=5.8.3-1`
- `xz-utils=5.8.3-1`

Licenses: (parsed from: `/usr/share/doc/liblzma-dev/copyright`, `/usr/share/doc/liblzma5/copyright`, `/usr/share/doc/xz-utils/copyright`)

- `0BSD`
- `FSFUL`
- `FSFULLR`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3.0-or-later-WITH-Autoconf-exception-macro`
- `LGPL-2.1`
- `LGPL-2.1+`
- `PD`
- `PD-debian`
- `none`
- `permissive-nowarranty`

Source:

```console
$ apt-get source -qq --print-uris xz-utils=5.8.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.8.3-1.dsc' xz-utils_5.8.3-1.dsc 2494 SHA512:2c78a287be77ac1c84f6ede8c4d9b8333f78ca8aea9ed7beecdbb232bde98700cce4c06586182c3c16a4b764b163036c83f3b6d913ea34424e8abc7790cfcc9b
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.8.3.orig.tar.xz' xz-utils_5.8.3.orig.tar.xz 1548064 SHA512:c288f436b211031ca122e9169d85403d4ab8b0500a6542b2d9ba101587e04a4358ab5509f5d15cc7899f1ab3e0118567866ca0508f880007b4af802dedd7068d
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.8.3-1.debian.tar.xz' xz-utils_5.8.3-1.debian.tar.xz 27344 SHA512:acaf62ccbe85eee2f5d489f3d3c358184bbaf814f9c77239de522ea419e5276c0adcba1efb39479f2a580cf8cd84d3ecf6d4ff99bb5e3052439d207b02573e08
```

### `dpkg` source package: `yaml-cpp=0.8.0+dfsg-9`

Binary Packages:

- `libyaml-cpp-dev:amd64=0.8.0+dfsg-9`
- `libyaml-cpp0.8:amd64=0.8.0+dfsg-9`

Licenses: (parsed from: `/usr/share/doc/libyaml-cpp-dev/copyright`, `/usr/share/doc/libyaml-cpp0.8/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris yaml-cpp=0.8.0+dfsg-9
'http://archive.ubuntu.com/ubuntu/pool/main/y/yaml-cpp/yaml-cpp_0.8.0%2bdfsg-9.dsc' yaml-cpp_0.8.0+dfsg-9.dsc 2081 SHA256:5c6317cd044f0ad57be89506f5615eee84b23d1cb256a7c1c7eb3f5a4e44d72b
'http://archive.ubuntu.com/ubuntu/pool/main/y/yaml-cpp/yaml-cpp_0.8.0%2bdfsg.orig.tar.xz' yaml-cpp_0.8.0+dfsg.orig.tar.xz 106072 SHA256:32c85a5f36633a9005b20261b35fccb0d8ec69e9ef16c67de7d5d007944e3709
'http://archive.ubuntu.com/ubuntu/pool/main/y/yaml-cpp/yaml-cpp_0.8.0%2bdfsg-9.debian.tar.xz' yaml-cpp_0.8.0+dfsg-9.debian.tar.xz 14864 SHA256:75f6510b1c10761ef4996cd8171e6c6ad5fe3d05228a225cff3cfa51abfb5604
```

### `dpkg` source package: `zeromq3=4.3.5-1build3`

Binary Packages:

- `libzmq5:amd64=4.3.5-1build3`

Licenses: (parsed from: `/usr/share/doc/libzmq5/copyright`)

- `LGPL-2`
- `LGPL-2.0+`
- `MIT`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris zeromq3=4.3.5-1build3
'http://archive.ubuntu.com/ubuntu/pool/universe/z/zeromq3/zeromq3_4.3.5.orig.tar.gz' zeromq3_4.3.5.orig.tar.gz 875547 SHA256:6c972d1e6a91a0ecd79c3236f04cf0126f2f4dfbbad407d72b4606a7ba93f9c6
'http://archive.ubuntu.com/ubuntu/pool/universe/z/zeromq3/zeromq3_4.3.5-1build3.debian.tar.xz' zeromq3_4.3.5-1build3.debian.tar.xz 11068 SHA256:1f1283e03e3492f9660561b4509c445cb170db8e1599f4002248d05a11cb29f6
'http://archive.ubuntu.com/ubuntu/pool/universe/z/zeromq3/zeromq3_4.3.5-1build3.dsc' zeromq3_4.3.5-1build3.dsc 1973 SHA256:7f878b28fc45d29e9b3d22a4b0ce74057c7996ac0f5df7b454717923b2ea36b6
```

### `dpkg` source package: `zfp=1.0.1-4build5`

Binary Packages:

- `libzfp1t64:amd64=1.0.1-4build5`

Licenses: (parsed from: `/usr/share/doc/libzfp1t64/copyright`)

- `Apache-2.0`
- `BSD-2-Clause`
- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris zfp=1.0.1-4build5
'http://archive.ubuntu.com/ubuntu/pool/universe/z/zfp/zfp_1.0.1.orig.tar.gz' zfp_1.0.1.orig.tar.gz 508016 SHA256:4984db6a55bc919831966dd17ba5e47ca7ac58668f4fd278ebd98cd2200da66f
'http://archive.ubuntu.com/ubuntu/pool/universe/z/zfp/zfp_1.0.1-4build5.debian.tar.xz' zfp_1.0.1-4build5.debian.tar.xz 8836 SHA256:692d116ebb42520ea4f0110ab8ba57b679f9da7ec10f483265c6022762831aac
'http://archive.ubuntu.com/ubuntu/pool/universe/z/zfp/zfp_1.0.1-4build5.dsc' zfp_1.0.1-4build5.dsc 2765 SHA256:39fb03cc8efd17f22383a99d8dead73d592176ae9cade0c0ef817939460ff678
```

### `dpkg` source package: `zlib=1:1.3.dfsg+really1.3.1-1ubuntu3`

Binary Packages:

- `libminizip-dev:amd64=1:1.3.dfsg+really1.3.1-1ubuntu3`
- `libminizip1t64:amd64=1:1.3.dfsg+really1.3.1-1ubuntu3`
- `zlib1g:amd64=1:1.3.dfsg+really1.3.1-1ubuntu3`
- `zlib1g-dev:amd64=1:1.3.dfsg+really1.3.1-1ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libminizip-dev/copyright`, `/usr/share/doc/libminizip1t64/copyright`, `/usr/share/doc/zlib1g/copyright`, `/usr/share/doc/zlib1g-dev/copyright`)

- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.3.dfsg+really1.3.1-1ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.3.dfsg%2breally1.3.1.orig.tar.gz' zlib_1.3.dfsg+really1.3.1.orig.tar.gz 1325737 SHA256:60dd315c07f616887caa029408308a018ace66e3d142726a97db164b3b8f69fb
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.3.dfsg%2breally1.3.1-1ubuntu3.debian.tar.xz' zlib_1.3.dfsg+really1.3.1-1ubuntu3.debian.tar.xz 59872 SHA256:a6423c4aef541dece2df954808b99aa6736a2df63b8a5f5102678afe88c15ddb
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.3.dfsg%2breally1.3.1-1ubuntu3.dsc' zlib_1.3.dfsg+really1.3.1-1ubuntu3.dsc 3167 SHA256:eb49c63c462dff1aae7a52badf30ea09777bed4478317240a17cf6c586cbc607
```

### `dpkg` source package: `zvbi=0.2.44-1ubuntu2`

Binary Packages:

- `libzvbi-common=0.2.44-1ubuntu2`
- `libzvbi0t64:amd64=0.2.44-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libzvbi-common/copyright`, `/usr/share/doc/libzvbi0t64/copyright`)

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
$ apt-get source -qq --print-uris zvbi=0.2.44-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/universe/z/zvbi/zvbi_0.2.44.orig.tar.gz' zvbi_0.2.44.orig.tar.gz 942350 SHA256:bca620ab670328ad732d161e4ce8d9d9fc832533cb7440e98c50e112b805ac5e
'http://archive.ubuntu.com/ubuntu/pool/universe/z/zvbi/zvbi_0.2.44.orig.tar.gz.asc' zvbi_0.2.44.orig.tar.gz.asc 833 SHA256:9f6dc9a991d6b8b90913eb92aed52e40f3ef96f5272fa5380a141bb1cab0f29f
'http://archive.ubuntu.com/ubuntu/pool/universe/z/zvbi/zvbi_0.2.44-1ubuntu2.debian.tar.xz' zvbi_0.2.44-1ubuntu2.debian.tar.xz 20540 SHA256:efb0f447b9539b82b3f3fc5506ad77e3b6c7b82c67c5adba3f80cacbea8cbee7
'http://archive.ubuntu.com/ubuntu/pool/universe/z/zvbi/zvbi_0.2.44-1ubuntu2.dsc' zvbi_0.2.44-1ubuntu2.dsc 2420 SHA256:58026a2e341eed5a0431a90d33ff18129237a3ba29c17ee11552d22e7a3e29e7
```
