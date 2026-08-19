# `mariadb:10.11.18-jammy`

## Docker Metadata

- Image ID: `sha256:b5077e20185da2defdc68763c9f87e9ce6c449207f9e8de120dee346b54ce696`
- Created: `2026-08-18T01:19:25.621743673Z`
- Virtual Size: ~ 326.08 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-entrypoint.sh"]`
- Command: `["mariadbd"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `GOSU_VERSION=1.19`
  - `LANG=C.UTF-8`
  - `MARIADB_VERSION=1:10.11.18+maria~ubu2204`
- Labels:
  - `org.opencontainers.image.authors=MariaDB Community`
  - `org.opencontainers.image.base.name=docker.io/library/ubuntu:jammy`
  - `org.opencontainers.image.description=MariaDB Database for relational SQL`
  - `org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/`
  - `org.opencontainers.image.licenses=GPL-2.0`
  - `org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker`
  - `org.opencontainers.image.title=MariaDB Database`
  - `org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker`
  - `org.opencontainers.image.vendor=MariaDB Community`
  - `org.opencontainers.image.version=10.11.18`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `acl=2.3.1-1`

Binary Packages:

- `libacl1:amd64=2.3.1-1`

Licenses: (parsed from: `/usr/share/doc/libacl1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris acl=2.3.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.3.1-1.dsc' acl_2.3.1-1.dsc 2486 SHA512:8eb7f71030d7c4d355886390f12ffd7f66605bb2082a9a9de2eea0918aefe7b7cf1c26a3f8872681f5b3074df1cf07c4d01ae564bcba5b400b048b0e34b233c2
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.3.1.orig.tar.xz' acl_2.3.1.orig.tar.xz 355676 SHA512:7d02f05d17305f8587ab485395b00c7fdb8e44c1906d0d04b70a43a3020803e8b2b8c707abb6147f794867dfa87bd51769c2d3e11a3db55ecbd2006a6e6231dc
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.3.1.orig.tar.xz.asc' acl_2.3.1.orig.tar.xz.asc 833 SHA512:be046f3bf1ac7e21d2a07bf6ea87c1fedeed2f9d370d8bf3de1aa0c448de5484b1523697415849b6b7ca23e48e3df5353f6aebe850eb20fc2044d2681c71f298
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.3.1-1.debian.tar.xz' acl_2.3.1-1.debian.tar.xz 27732 SHA512:2fdfcd8daa1919e850cd3ed634b4141d65bbf7847eaf0a7899b6e8ae52fe2fa15de3378f6487a9224d00eb530cf5b285cc3b6272af66fcdcf1f29f2838648083
```

### `dpkg` source package: `adduser=3.118ubuntu5`

Binary Packages:

- `adduser=3.118ubuntu5`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.118ubuntu5
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.118ubuntu5.dsc' adduser_3.118ubuntu5.dsc 1766 SHA512:8d6e9894549dc9dd53db8480cb18ee9b012bc70ea7b53d72b0ad8ad713a1672d2e94750e1cde44d2b8f9fd7e66b1ea7c2ad20202fc7bcd90e2fba5cee63d5b5d
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.118ubuntu5.tar.xz' adduser_3.118ubuntu5.tar.xz 222904 SHA512:ded568a5a3f5a5ac1acc2098e37160194f8c4622e90c7044d599286a321fe8fd701c8554a4517e4d72a6089b8e3b5592b92d46668032bda81de64cc736bf0a75
```

### `dpkg` source package: `apt=2.4.14`

Binary Packages:

- `apt=2.4.14`
- `libapt-pkg6.0:amd64=2.4.14`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg6.0/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=2.4.14
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_2.4.14.tar.xz' apt_2.4.14.tar.xz 2323176 SHA256:8d1b2748a6b5c99c9fd56dfadde280b85616dd67d22f7ca44f86225fa688a98c
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_2.4.14.dsc' apt_2.4.14.dsc 2801 SHA256:317040c4ab15f20cc77460126fd78745814a81d73a6c37d0559876977a7dfe35
```

### `dpkg` source package: `attr=1:2.5.1-1build1`

Binary Packages:

- `libattr1:amd64=1:2.5.1-1build1`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris attr=1:2.5.1-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.5.1-1build1.dsc' attr_2.5.1-1build1.dsc 2134 SHA512:4beeec510cf7976a3b2c0de3b90974ef03886b3a98ccb2b74f6278ed988727af3a0fa432d86aefd3bdb4bc50e29b3351f11fd892512407203f3e61636290ae15
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.5.1.orig.tar.xz' attr_2.5.1.orig.tar.xz 318188 SHA512:9e5555260189bb6ef2440c76700ebb813ff70582eb63d446823874977307d13dfa3a347dfae619f8866943dfa4b24ccf67dadd7e3ea2637239fdb219be5d2932
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.5.1.orig.tar.xz.asc' attr_2.5.1.orig.tar.xz.asc 833 SHA512:be4f3629ef66bd400bcdeaf8b6b1564dc729472a514d59fb4909a30f3269711dedea16002283e9aabbf83c374e0a3d70bc00f1136da0fed66a8184acdfd7e78f
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.5.1-1build1.debian.tar.xz' attr_2.5.1-1build1.debian.tar.xz 28032 SHA512:c9d0869a3bb9f8019e6764fee3a78d8b1b9a3cdb37968aac19a9a7e7bbeeaadcbad86d5363ce3b0e26b5a178a4d446e4097d095e17b7a6d7f3e595d07176675c
```

### `dpkg` source package: `audit=1:3.0.7-1build1`

Binary Packages:

- `libaudit-common=1:3.0.7-1build1`
- `libaudit1:amd64=1:3.0.7-1build1`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-1`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:3.0.7-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_3.0.7-1build1.dsc' audit_3.0.7-1build1.dsc 2771 SHA512:beb14e23239ab9c87dd4a57821d7d557a14a3e67f66306110ef87cd77cd2c07426f3bc8413d757618f886c5059e9bf624347753170708e0ad39b90f96fd51053
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_3.0.7.orig.tar.gz' audit_3.0.7.orig.tar.gz 1180226 SHA512:b5662b32082fc2ac54e247aa0db5442d76afa30134ebba1d624a17004e9ccf6856bb75344af4ce9d9a0a66c03e1c6f18b7d45658d7df13ea71af0c8362e08d70
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_3.0.7-1build1.debian.tar.xz' audit_3.0.7-1build1.debian.tar.xz 17772 SHA512:cdf346fc7dc04e42b44a9089fb7c01e68ea54ccd20d3eef8100d0cd8eed8ebd0764d8fd6ceab133faa0bfeee18e3cfe7625d230600b0e34ed0c19a7b739ec783
```

### `dpkg` source package: `base-files=12ubuntu4.7`

Binary Packages:

- `base-files=12ubuntu4.7`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=12ubuntu4.7
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_12ubuntu4.7.tar.xz' base-files_12ubuntu4.7.tar.xz 81888 SHA256:000a3d5f46f1e1cc5379a8cb1b6461cff55f150b4847576d4f1f6e4ad628fdce
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_12ubuntu4.7.dsc' base-files_12ubuntu4.7.dsc 1277 SHA256:cb8a669fec06f514fef89be1df6ef2e8b439197a6a962c3e1675be1fbe90dc3e
```

### `dpkg` source package: `base-passwd=3.5.52build1`

Binary Packages:

- `base-passwd=3.5.52build1`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.5.52build1
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.5.52build1.dsc' base-passwd_3.5.52build1.dsc 1320 SHA512:2071171adf14d276664526662fab08d34a45a259ebcdbee7ae57bb004d3d12793e629006a37b649f16c0f04856e9f7bb79fb92fe304525167f48e73dec0cc4fd
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.5.52build1.tar.xz' base-passwd_3.5.52build1.tar.xz 54252 SHA512:699ffe50f4a7fbdea2c0b25d3b2452d538598870cf39b84668d9b7efa20ec41284c331513e89c966e7248732b1ec1abdfdb871e31f8e9efa026c691e89236ffe
```

### `dpkg` source package: `bash=5.1-6ubuntu1.1`

Binary Packages:

- `bash=5.1-6ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris bash=5.1-6ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_5.1.orig.tar.xz' bash_5.1.orig.tar.xz 5802740 SHA256:d5eeee4f953c09826409d572e2e8996a2140d67eb8f382ce1f3a9d23883ad696
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_5.1-6ubuntu1.1.debian.tar.xz' bash_5.1-6ubuntu1.1.debian.tar.xz 99944 SHA256:32332a77dedfbeee4deae3a435e07a9377a117d8326120abe0b26b92c60f5404
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_5.1-6ubuntu1.1.dsc' bash_5.1-6ubuntu1.1.dsc 2409 SHA256:5c35c7efb7cfb6cfcaaaa4825ca7227151d434b4ff18b0ca88441c9f6dc9ba4e
```

### `dpkg` source package: `bzip2=1.0.8-5build1`

Binary Packages:

- `libbz2-1.0:amd64=1.0.8-5build1`

Licenses: (parsed from: `/usr/share/doc/libbz2-1.0/copyright`)

- `BSD-variant`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.8-5build1
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8-5build1.dsc' bzip2_1.0.8-5build1.dsc 1860 SHA512:dfb9cd3a99f8c80a27e088b6ba7f06f50bc2bdbc61f574ed8f77d0fa58ff07fa1c34a060351fd4b601537181143dd934caadd7a00eb97aea5933febb7b61743d
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8.orig.tar.gz' bzip2_1.0.8.orig.tar.gz 810029 SHA512:083f5e675d73f3233c7930ebe20425a533feedeaaa9d8cc86831312a6581cefbe6ed0d08d2fa89be81082f2a5abdabca8b3c080bf97218a1bd59dc118a30b9f3
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8-5build1.debian.tar.bz2' bzip2_1.0.8-5build1.debian.tar.bz2 26870 SHA512:e030c257c3458d780fd0ffc6f328efd69d0e875e81acd7441a7c6651194ebded61017c96aad7c99061f93d50dfc33056abe98c9a599abc900f49d51c4a1eed6f
```

### `dpkg` source package: `ca-certificates=20260601~22.04.1`

Binary Packages:

- `ca-certificates=20260601~22.04.1`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20260601~22.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20260601%7e22.04.1.tar.xz' ca-certificates_20260601~22.04.1.tar.xz 266492 SHA512:a06f67c74305ad876aa84bf41d594ac902f58143d7d5998fb494630453573e6606ddae5c462ebeeb255c9c94b89fe44af79f59ddcf8b0bd369a9353bfce709d6
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20260601%7e22.04.1.dsc' ca-certificates_20260601~22.04.1.dsc 1850 SHA512:af78747c137e3d0fb7ba55c278792d4c028f177b3c4af49b92c835301371477eb54c2a73120e75611f9f4b8ced331d5d6bcea37f7bba41f0b3f27fcd9871ca29
```

### `dpkg` source package: `cdebconf=0.261ubuntu1`

Binary Packages:

- `libdebconfclient0:amd64=0.261ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.261ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.261ubuntu1.dsc' cdebconf_0.261ubuntu1.dsc 2941 SHA512:18554e0d66831166d01e199612aa1cd43ed56e00995d62329f2c951143860bc413870acf71f4d0e72e228ce70e6a09c97d87750e5ada1a48beaf4b39d675084c
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.261ubuntu1.tar.xz' cdebconf_0.261ubuntu1.tar.xz 297016 SHA512:6c2c8e2dccdb923ae6dc6a6b3873e6a56f6bdc4a6298c0576f60cb8d5c63bd06c4b9dac4ada4abd0d672a4e54509ad558fc9d1424a8029568d8d86cb54926390
```

### `dpkg` source package: `coreutils=8.32-4.1ubuntu1.3`

Binary Packages:

- `coreutils=8.32-4.1ubuntu1.3`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils=8.32-4.1ubuntu1.3
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.32.orig.tar.xz' coreutils_8.32.orig.tar.xz 5547836 SHA256:4458d8de7849df44ccab15e16b1548b285224dbba5f08fac070c1c0e0bcc4cfa
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.32-4.1ubuntu1.3.debian.tar.xz' coreutils_8.32-4.1ubuntu1.3.debian.tar.xz 45556 SHA256:5ff54161038e479c904042f8848e40b40f5330bc4e4f2df9a474974f3d466061
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.32-4.1ubuntu1.3.dsc' coreutils_8.32-4.1ubuntu1.3.dsc 2027 SHA256:26959de3887a535d7929e5f3ac18eab6eaba5f221cdcf3b4cf7b43c68d32f92b
```

### `dpkg` source package: `dash=0.5.11+git20210903+057cd650a4ed-3build1`

Binary Packages:

- `dash=0.5.11+git20210903+057cd650a4ed-3build1`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `BSD-3-Clause`
- `BSD-3-clause`
- `Expat`
- `FSFUL`
- `FSFULLR`
- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.11+git20210903+057cd650a4ed-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.11%2bgit20210903%2b057cd650a4ed-3build1.dsc' dash_0.5.11+git20210903+057cd650a4ed-3build1.dsc 1834 SHA512:380a677ef7fcd2060f7806e4e552891393adb43bfba82498d143cd2ed4fa0cc7681e573a27bcb0991025a8323f6eb8b113aa1519cf455645556fad968cd26232
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.11%2bgit20210903%2b057cd650a4ed.orig.tar.xz' dash_0.5.11+git20210903+057cd650a4ed.orig.tar.xz 133320 SHA512:eced6bc60ca6ba4394a2ee65d8c6b88eca729c43e47053fc01dec5500ebe002a12f536c128c3fd821a2eb61b97e92c8a0be6d4532926479ce4b7d986be109cb7
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.11%2bgit20210903%2b057cd650a4ed-3build1.debian.tar.xz' dash_0.5.11+git20210903+057cd650a4ed-3build1.debian.tar.xz 42744 SHA512:7dd5b1bcaf76d8de19ad1647862e1140de59822c25d9ab1b42423f16de1e4c606ea393adac12f16a2ce9498d8f9553b8787fc31e5f93feefe36ab84b83402e1e
```

### `dpkg` source package: `db5.3=5.3.28+dfsg1-0.8ubuntu3`

Binary Packages:

- `libdb5.3:amd64=5.3.28+dfsg1-0.8ubuntu3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28+dfsg1-0.8ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg1-0.8ubuntu3.dsc' db5.3_5.3.28+dfsg1-0.8ubuntu3.dsc 2875 SHA512:8743931f44f980d7be9ae77f5ce4b14ea260b780f33c8c6da66eb2fe4dba45a9c6b93237e91e2898ae0a76754ee789d67dd4efba7111f1360cb073ba633e1389
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg1.orig.tar.xz' db5.3_5.3.28+dfsg1.orig.tar.xz 19723860 SHA512:50cb87bc3f24065839ee2932e82af032b236b290ebe89983076f503c6c62c5f36ff93d7847a3f68b2b19f35088fbab5d3ac6a34553d07e8148e68e9a3f079a12
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg1-0.8ubuntu3.debian.tar.xz' db5.3_5.3.28+dfsg1-0.8ubuntu3.debian.tar.xz 32028 SHA512:9034be98df6c753b5f3faee9cbd1886e3e3c3d15c5840bc1c269a5034f6bfe9c4926c20591150b543618816051be218e6f00c3602b8b4325b0fcb193ddba804c
```

### `dpkg` source package: `debconf=1.5.79ubuntu1`

Binary Packages:

- `debconf=1.5.79ubuntu1`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.79ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.79ubuntu1.dsc' debconf_1.5.79ubuntu1.dsc 2077 SHA512:0aac451b347a5f6758ab2e468c25ea8061840519412210861a13ced479d5e6bb2a3abd469cb0cf68d80f1f9c4debba28501141055eb2eb1ac1701f800cdd83ba
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.79ubuntu1.tar.xz' debconf_1.5.79ubuntu1.tar.xz 570660 SHA512:1bf6de4d1cec7475f64d9bdaa47ef6dcb3d1181bcb3b97076ec60213534aa344ca49d552fdcb5c6fde4d42c364b8242bb4880de0a787493868383e6db36f9e5f
```

### `dpkg` source package: `debianutils=5.5-1ubuntu2`

Binary Packages:

- `debianutils=5.5-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris debianutils=5.5-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_5.5-1ubuntu2.dsc' debianutils_5.5-1ubuntu2.dsc 1667 SHA512:333b9087e56e8f9a9ab95db556783a582b2855042e3dee292767decc4e4ad366bf32b4a30e60f5000a3ccced20ec613649fcd84563dae8e552a31273b42a170b
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_5.5.orig.tar.xz' debianutils_5.5.orig.tar.xz 104448 SHA512:230310428ee7c145c74bb666ae729754352295230f38ef4e22f7566970c5186d607cd827a5603a678815bd48d4a1eb2716f55c32494ec75eb665651da6a56e6a
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_5.5-1ubuntu2.debian.tar.xz' debianutils_5.5-1ubuntu2.debian.tar.xz 68420 SHA512:62fca780251fdb3b434abe840683385d3187699cf0466333fc1894a225f256ab1f912e818bbb4b564b1083c2e05a7a199bb9cdcc56307e60ba68cacef72644cf
```

### `dpkg` source package: `diffutils=1:3.8-0ubuntu2`

Binary Packages:

- `diffutils=1:3.8-0ubuntu2`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris diffutils=1:3.8-0ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.8-0ubuntu2.dsc' diffutils_3.8-0ubuntu2.dsc 1821 SHA512:645b14680e3669261eb372ce523d8258ee65b010b4e290650f8a0a4c922a26f80ee381e3711b2bf01249d64e248c184f8898abc6e0e50cb9f64cbd647ab1f684
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.8.orig.tar.xz' diffutils_3.8.orig.tar.xz 1585120 SHA512:279441270987e70d5ecfaf84b6285a4866929c43ec877e50f154a788858d548a8a316f2fc26ad62f7348c8d289cb29a09d06dfadce1806e3d8b4ea88c8b1aa7c
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.8.orig.tar.xz.asc' diffutils_3.8.orig.tar.xz.asc 833 SHA512:0464ac89209411993800666b45ff90243d22fbda53bf1d71c6870d565b39cc8d9c54c141b9d297a181ce74ad8fb5313953f416bced179ff7728a52a3e9a4f5a5
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.8-0ubuntu2.debian.tar.xz' diffutils_3.8-0ubuntu2.debian.tar.xz 11692 SHA512:fab99ca407c3b1bbc427ebf14595d540e6ad2957e9b43065005efd9d5b423e6a4d6d460cccd05faf5786193a5bf1cf46721743e580161d5004167eca15fc405b
```

### `dpkg` source package: `dpkg=1.21.1ubuntu2.6`

Binary Packages:

- `dpkg=1.21.1ubuntu2.6`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.21.1ubuntu2.6
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.21.1ubuntu2.6.tar.xz' dpkg_1.21.1ubuntu2.6.tar.xz 5017128 SHA256:f66de0b3430a5545699361168824976acfa85f1308f00dde5bc35f39e15e2d02
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.21.1ubuntu2.6.dsc' dpkg_1.21.1ubuntu2.6.dsc 2254 SHA256:45e8b9e16206bc27ebe1d6a0363c36135dd40c40d6105a8bb92258693f6822e8
```

### `dpkg` source package: `e2fsprogs=1.46.5-2ubuntu1.2`

Binary Packages:

- `e2fsprogs=1.46.5-2ubuntu1.2`
- `libcom-err2:amd64=1.46.5-2ubuntu1.2`
- `libext2fs2:amd64=1.46.5-2ubuntu1.2`
- `libss2:amd64=1.46.5-2ubuntu1.2`
- `logsave=1.46.5-2ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcom-err2/copyright`, `/usr/share/doc/libext2fs2/copyright`, `/usr/share/doc/libss2/copyright`, `/usr/share/doc/logsave/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.46.5-2ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.46.5.orig.tar.gz' e2fsprogs_1.46.5.orig.tar.gz 9530158 SHA256:b7430d1e6b7b5817ce8e36d7c8c7c3249b3051d0808a96ffd6e5c398e4e2fbb9
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.46.5.orig.tar.gz.asc' e2fsprogs_1.46.5.orig.tar.gz.asc 488 SHA256:b1e248ed73d4d67ac0cf7760e780e0a5cd2db85bbb9a5dcc235538b596128916
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.46.5-2ubuntu1.2.debian.tar.xz' e2fsprogs_1.46.5-2ubuntu1.2.debian.tar.xz 86604 SHA256:b04fad2b12787628497127e6fab76de11c54229e08a406eba126df13f5224fdf
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.46.5-2ubuntu1.2.dsc' e2fsprogs_1.46.5-2ubuntu1.2.dsc 3190 SHA256:6f41e832d3e69bff96374f20e886a286f6dd8cfff68c1f0fc902281ed365560a
```

### `dpkg` source package: `elfutils=0.186-1ubuntu0.1`

Binary Packages:

- `libelf1:amd64=0.186-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libelf1/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris elfutils=0.186-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.186.orig.tar.bz2' elfutils_0.186.orig.tar.bz2 9230491 SHA256:7f6fb9149b1673d38d9178a0d3e0fb8a1ec4f53a9f4c2ff89469609879641177
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.186-1ubuntu0.1.debian.tar.xz' elfutils_0.186-1ubuntu0.1.debian.tar.xz 39200 SHA256:01eae51a051c8fae1d2acc3a70dc6b06282448e9d5dc45adedf902f8e381d9f6
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.186-1ubuntu0.1.dsc' elfutils_0.186-1ubuntu0.1.dsc 3349 SHA256:d43ad325a63e52375fe807ce2c78b29a8bdfc6ae1a1879628fd13b461696824a
```

### `dpkg` source package: `findutils=4.8.0-1ubuntu3`

Binary Packages:

- `findutils=4.8.0-1ubuntu3`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.8.0-1ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.8.0-1ubuntu3.dsc' findutils_4.8.0-1ubuntu3.dsc 2064 SHA512:3f0f5195138342ce515ff83f5e653457d78158c8b871ef04002adb4cc69cab6023c71f7d1032db7032d25806c22a8ad33dbf3007018d382968863521a33af2cd
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.8.0.orig.tar.xz' findutils_4.8.0.orig.tar.xz 1983096 SHA512:eaa2da304dbeb2cd659b9210ac37da1bde4cd665c12a818eca98541c5ed5cba1050641fc0c39c0a446a5a7a87a8d654df0e0e6b0cee21752ea485188c9f1071e
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.8.0.orig.tar.xz.asc' findutils_4.8.0.orig.tar.xz.asc 488 SHA512:e6ea8bd9a58ac4f787a9cc7dad9f75fab9e0623e7cda463bef60651c9319574ac7c8ba06f7d33cbead0ecb8788db71eb39f50550deb066d6d6baa625b0374a45
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.8.0-1ubuntu3.debian.tar.xz' findutils_4.8.0-1ubuntu3.debian.tar.xz 27716 SHA512:f0ce8b61f4e0beabad3178424c804468dc4c57f37794887954df28c36227ce77f00383903274a1995a104f9def44270070b9e033eb46d52f5aaaedb1f5883587
```

### `dpkg` source package: `galera-4=26.4.27-ubu2204`

Binary Packages:

- `galera-4=26.4.27-ubu2204`

Licenses: (parsed from: `/usr/share/doc/galera-4/copyright`)

- `CC-BY-SA-3.0`
- `GFDL-1.1+`
- `GFDL-1.2`
- `GPL-2`
- `other`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `gawk=1:5.1.0-1ubuntu0.2`

Binary Packages:

- `gawk=1:5.1.0-1ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/gawk/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gawk=1:5.1.0-1ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gawk/gawk_5.1.0.orig.tar.xz' gawk_5.1.0.orig.tar.xz 2539124 SHA512:bf3686cbafe6f283a68d93ec83a4e36c4edb9e04b5511b0d6bd6ee2abf7a7b81f6fb0f8b8cb13a45c76432db1d36c88717307c1c7844521ab5506cd4c612db64
'http://archive.ubuntu.com/ubuntu/pool/main/g/gawk/gawk_5.1.0-1ubuntu0.2.debian.tar.xz' gawk_5.1.0-1ubuntu0.2.debian.tar.xz 14800 SHA512:f2010e17b7bd3f19acf4c44c6bf9673e4557a5fac8860eca134c24fa0a2b02f8abafec67980f13e155f222a9909c8dcbb9390f4d0a7d63179c256af6dd3b823c
'http://archive.ubuntu.com/ubuntu/pool/main/g/gawk/gawk_5.1.0-1ubuntu0.2.dsc' gawk_5.1.0-1ubuntu0.2.dsc 1923 SHA512:f6d49ff6fe67c9f0af9bd03c4729340405d1ffbc4c5f0c89a8f983a06e4cb7518c5ff872c4ec928a4be1d08c248c492426690b0d2395f72e8b52b32b9e256934
```

### `dpkg` source package: `gcc-12=12.3.0-1ubuntu1~22.04.3`

Binary Packages:

- `gcc-12-base:amd64=12.3.0-1ubuntu1~22.04.3`
- `libgcc-s1:amd64=12.3.0-1ubuntu1~22.04.3`
- `libstdc++6:amd64=12.3.0-1ubuntu1~22.04.3`

Licenses: (parsed from: `/usr/share/doc/gcc-12-base/copyright`, `/usr/share/doc/libgcc-s1/copyright`, `/usr/share/doc/libstdc++6/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-12=12.3.0-1ubuntu1~22.04.3
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-12/gcc-12_12.3.0.orig.tar.gz' gcc-12_12.3.0.orig.tar.gz 91555468 SHA256:62b0fc89b6d41f9df2470d0fb4995f6ff5885f910518a2c6a44a6888ea5a9ea1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-12/gcc-12_12.3.0-1ubuntu1%7e22.04.3.debian.tar.xz' gcc-12_12.3.0-1ubuntu1~22.04.3.debian.tar.xz 587456 SHA256:44074c3d5e7d97365f1f7b45291ade2ee40ed6300176530d912e7cc0ceba77ab
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-12/gcc-12_12.3.0-1ubuntu1%7e22.04.3.dsc' gcc-12_12.3.0-1ubuntu1~22.04.3.dsc 27845 SHA256:ec040a1fa94186bd53535f7156e086e67863bb55836ae7fd7fef64f1ab66b04d
```

### `dpkg` source package: `gdbm=1.23-1`

Binary Packages:

- `libgdbm-compat4:amd64=1.23-1`
- `libgdbm6:amd64=1.23-1`

Licenses: (parsed from: `/usr/share/doc/libgdbm-compat4/copyright`, `/usr/share/doc/libgdbm6/copyright`)

- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.23-1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.23-1.dsc' gdbm_1.23-1.dsc 2583 SHA512:f931348ff659e5f9485fe92734b02c426b6428e41e2abc180b131183e8ca437c5287a7f88854f788e5111efbed114b5eda2b66c24318b39e88661ddbbb39ce15
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.23.orig.tar.gz' gdbm_1.23.orig.tar.gz 1115854 SHA512:918080cb0225b221c11eb7339634a95e00c526072395f7a3d46ccf42ef020dea7c4c5bec34aff2c4f16033e1fff6583252b7e978f68b8d7f8736b0e025838e10
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.23.orig.tar.gz.asc' gdbm_1.23.orig.tar.gz.asc 181 SHA512:6653751c04584f10aa3325bd1cb5b9f7970a786dd2a99602ea620c11a86a9ba5c342aa52627bd06c03da822e9e1600dc034d9a8f42856a287fd67f6b9f161c71
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.23-1.debian.tar.xz' gdbm_1.23-1.debian.tar.xz 18484 SHA512:e7ca0a608da94e5b5bc5949e27b794c87e032202eb09359ad55f6c1a7a6e895f01126781a4e0fbfdb8fef3de7c4a312b9d5a653aaf55ce8c5afbceb945945253
```

### `dpkg` source package: `glibc=2.35-0ubuntu3.14`

Binary Packages:

- `libc-bin=2.35-0ubuntu3.14`
- `libc6:amd64=2.35-0ubuntu3.14`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc6/copyright`)

- `GFDL-1.3`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.35-0ubuntu3.14
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.35.orig.tar.xz' glibc_2.35.orig.tar.xz 18165952 SHA512:e7336ce27561be5d7c217832a1136fb327e057bd8d3f92925b35c97e3e9f9e486948b5a1e03e5e4090772ef06437a074d10b82e68f17f1ad8f22077ee39e1b66
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.35.orig.tar.xz.asc' glibc_2.35.orig.tar.xz.asc 833 SHA512:2a1c152511dac05f9b4e48f7e7a6b59dbf2d8b71fea54f128173113357be26e86216e13c9865f617049e6858396a221a5abc704f65a786b22453945fd80265e9
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.35-0ubuntu3.14.debian.tar.xz' glibc_2.35-0ubuntu3.14.debian.tar.xz 954688 SHA512:d91bfbada69d69d984958dcd99c5e6304fb3bb2d2304b0e027fa9ea2cf0efd53340531c56bcc718ca0dc1c4d397e62b41438e499dc8c0ec97be97a5333ac2337
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.35-0ubuntu3.14.dsc' glibc_2.35-0ubuntu3.14.dsc 8888 SHA512:d065177dd1d1196bc96c635f31aee799b278c56dff447da3b5535877c2304c6ebc52c78d535826e070623f6b139555769cc20687c5110aa69676c6f269a584f8
```

### `dpkg` source package: `gmp=2:6.2.1+dfsg-3ubuntu1`

Binary Packages:

- `libgmp10:amd64=2:6.2.1+dfsg-3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libgmp10/copyright`)

- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris gmp=2:6.2.1+dfsg-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.2.1%2bdfsg-3ubuntu1.dsc' gmp_6.2.1+dfsg-3ubuntu1.dsc 2355 SHA512:b41211a64cba1afee1ea7924d38581b26b36f0495ad42be6d25b7175d5fa1e000378a5d36dd80087b0e7d4495620edb1e7e1b32d6c1085a8cdf0a4cb460a0558
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.2.1%2bdfsg.orig.tar.xz' gmp_6.2.1+dfsg.orig.tar.xz 1853476 SHA512:801948b7dcf592959ea387a86bee34dfb4e02c5e93815a785fc46174899ba22129853a3e34109a6df86048a144765c5f39e65fddfcecba879cc60da62f32fea0
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.2.1%2bdfsg-3ubuntu1.debian.tar.xz' gmp_6.2.1+dfsg-3ubuntu1.debian.tar.xz 40996 SHA512:d7e0a1165a42b11a26a0f9232193db41ce2e7b1f5ea50d258e156fc9d80f9a74b6739491ec73cc1e909a3d09e029f90c3be1460c993690c5081ef8c6a169a4c3
```

### `dpkg` source package: `gnupg2=2.2.27-3ubuntu2.5`

Binary Packages:

- `gpg=2.2.27-3ubuntu2.5`
- `gpgconf=2.2.27-3ubuntu2.5`
- `gpgv=2.2.27-3ubuntu2.5`

Licenses: (parsed from: `/usr/share/doc/gpg/copyright`, `/usr/share/doc/gpgconf/copyright`, `/usr/share/doc/gpgv/copyright`)

- `BSD-3-clause`
- `CC0-1.0`
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
$ apt-get source -qq --print-uris gnupg2=2.2.27-3ubuntu2.5
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.27.orig.tar.bz2' gnupg2_2.2.27.orig.tar.bz2 7191555 SHA256:34e60009014ea16402069136e0a5f63d9b65f90096244975db5cea74b3d02399
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.27-3ubuntu2.5.debian.tar.xz' gnupg2_2.2.27-3ubuntu2.5.debian.tar.xz 76672 SHA256:63239842abfe155bf3b0be202446a807a202a25f85257bc0331292602eb39666
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.27-3ubuntu2.5.dsc' gnupg2_2.2.27-3ubuntu2.5.dsc 3763 SHA256:1fb5930a84f846fec8322e6c32544ebb8118d618bbb175c1d38722def6f0d461
```

### `dpkg` source package: `gnutls28=3.7.3-4ubuntu1.9`

Binary Packages:

- `libgnutls30:amd64=3.7.3-4ubuntu1.9`

Licenses: (parsed from: `/usr/share/doc/libgnutls30/copyright`)

- `Apache-2.0`
- `BSD-3-Clause`
- `CC0 license`
- `Expat`
- `GFDL-1.3`
- `GPL`
- `GPL-3`
- `GPLv3+`
- `LGPL`
- `LGPL-3`
- `LGPLv2.1+`
- `LGPLv3+_or_GPLv2+`
- `The main library is licensed under GNU Lesser`

Source:

```console
$ apt-get source -qq --print-uris gnutls28=3.7.3-4ubuntu1.9
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.7.3.orig.tar.xz' gnutls28_3.7.3.orig.tar.xz 6119292 SHA512:3ace744affe23e284342658d6d2d2de49dd50065489cbc8be18fc7d38187253e5268ca54027ce5cd517056c249ac039a7481e4548cec04325de37ae85617d077
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.7.3.orig.tar.xz.asc' gnutls28_3.7.3.orig.tar.xz.asc 833 SHA512:cd0d30298377deddf20a835863b71e3f119588061f659906ad2684004758943179531508b1c77c730e930e2131148095e60ad9be365353cce772472d5f5345df
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.7.3-4ubuntu1.9.debian.tar.xz' gnutls28_3.7.3-4ubuntu1.9.debian.tar.xz 127136 SHA512:3d86d6fa9c395f41714866d621a9442af1b1b1722cf21f6d337b0eed2cd9c895eb0e9d3e8b728a0a4e1e7642dedf53a4e4f822a90bf4bd822106475b6191441d
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.7.3-4ubuntu1.9.dsc' gnutls28_3.7.3-4ubuntu1.9.dsc 3575 SHA512:738492979bbcc7a424b202ce54fbec6cc974f096016f1857615fe699fdef081f670038caa8dafd51a081f1f7047c26af59818abd5970800cbd16887c94e7a26e
```

### `dpkg` source package: `google-perftools=2.9.1-0ubuntu3`

Binary Packages:

- `libtcmalloc-minimal4:amd64=2.9.1-0ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libtcmalloc-minimal4/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris google-perftools=2.9.1-0ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/g/google-perftools/google-perftools_2.9.1-0ubuntu3.dsc' google-perftools_2.9.1-0ubuntu3.dsc 2019 SHA512:f215a41e2d6104d6bbf123c8f9de7a1b89ce7894c885683626ed3e23829d221c6506d16af7f0853f2db60e9114e6f8f648ccac46ace18da8aacf0ab9c578b983
'http://archive.ubuntu.com/ubuntu/pool/main/g/google-perftools/google-perftools_2.9.1.orig.tar.gz' google-perftools_2.9.1.orig.tar.gz 924910 SHA512:5e07f28da9afc5f1ba3df7f06ad0e146c171d33e1779bbaab21547ed234aaced02e5278c1eb8f92fc45480abd2474d6a2d4c71644fb9378f41088c56cc1bc8ab
'http://archive.ubuntu.com/ubuntu/pool/main/g/google-perftools/google-perftools_2.9.1-0ubuntu3.debian.tar.xz' google-perftools_2.9.1-0ubuntu3.debian.tar.xz 8256 SHA512:6748ad8faccf33557088f17cb8acf782d3c04a3ca0825371601799c6795b49776d1036a6fcf02ac429eb1758356fbd119e2084cf93063197cb127f9f7a1a4437
```

### `dpkg` source package: `grep=3.7-1build1`

Binary Packages:

- `grep=3.7-1build1`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=3.7-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.7-1build1.dsc' grep_3.7-1build1.dsc 1900 SHA512:3345c289bc163924615d3bc9ac3138e35870715d38223ef9d38a90ab17160fc415f8c0c9a5da1939143e2701e46fc854b27b45c280c4af686db2208f2becbe4f
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.7.orig.tar.xz' grep_3.7.orig.tar.xz 1641196 SHA512:e9e45dcd40af8367f819f2b93c5e1b4e98a251a9aa251841fa67a875380fae52cfa27c68c6dbdd6a4dde1b1017ee0f6b9833ef6dd6e419d32d71b6df5e972b82
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.7.orig.tar.xz.asc' grep_3.7.orig.tar.xz.asc 833 SHA512:9db28883b696fbbb0fad32f4ecd168954dc475d5f0a8f2b4f960ff615ef7dd8348a7caaee85a96287824472a29485ff921af121c582083ca5ad5c30960f99cf4
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.7-1build1.debian.tar.xz' grep_3.7-1build1.debian.tar.xz 18184 SHA512:cbefc3635a0b0acc33d8a052d3ca7d583adbd1bcfc384559076b5e4f5508b4a8301b0dd54a029aecbab925a6f916c99a2d5bebe0a6936fe5ffeb5a07a0d9a917
```

### `dpkg` source package: `gzip=1.10-4ubuntu4.2`

Binary Packages:

- `gzip=1.10-4ubuntu4.2`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `FSF-manpages`
- `GFDL-1.3+-no-invariant`
- `GFDL-3`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.10-4ubuntu4.2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.10.orig.tar.gz' gzip_1.10.orig.tar.gz 1201421 SHA512:7939043e74554ced0c1c05d354ab4eb36cd6dce89ad79d02ccdc5ed6b7ee390759689b2d47c07227b9b44a62851afe7c76c4cae9f92527d999f3f1b4df1cccff
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.10.orig.tar.gz.asc' gzip_1.10.orig.tar.gz.asc 833 SHA512:74727fb3a8b64f81b4dd2d941fa750a789c482d7ae604d0ecfbe5ec623780efc7c5f0e51d65e7b99c2f097c5cd6585cc3a0f1b31abb03306156e0d410d9f0186
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.10-4ubuntu4.2.debian.tar.xz' gzip_1.10-4ubuntu4.2.debian.tar.xz 40852 SHA512:e9a21d53e98c1dc78da7ec4925e049ccbbe1a019b4e629037035ef018e6c6286ebc73564c3dfbda5716df54ec7c00f22b76bea3586f767b3c55d65f615b22132
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.10-4ubuntu4.2.dsc' gzip_1.10-4ubuntu4.2.dsc 2277 SHA512:2dbe37cc33fcbc31071f27066fc05f8a9332e6eff19d00be15d52c33d164ded19e9826d8b178361164522e210c8826fae80d9f0c8e442daffa2482a38c3db914
```

### `dpkg` source package: `hostname=3.23ubuntu2`

Binary Packages:

- `hostname=3.23ubuntu2`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.23ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.23ubuntu2.dsc' hostname_3.23ubuntu2.dsc 1085 SHA512:5e7f690bb67fcbc7521df55b69ce899ff005d24fb511c017d60ff5e4c9d9fc51271422bb81fc4998d90149cb814d2a209dc61db4d5073f72a37fb22af59827a0
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.23ubuntu2.tar.gz' hostname_3.23ubuntu2.tar.gz 13854 SHA512:28b80ea23cbde63af91912aef2773ce83d7f4d1c2c82beb59a86c0e6b11e276019c610a0a60e69947af2b9bc5f86e4f8f6d13c1cb1a9ce35f1e5cfb03e0dd582
```

### `dpkg` source package: `init-system-helpers=1.62`

Binary Packages:

- `init-system-helpers=1.62`

Licenses: (parsed from: `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.62
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.62.dsc' init-system-helpers_1.62.dsc 1993 SHA512:f706cf5841877ccabe6f5a8e62d44ce5b312c09776d7fb7fd841f39c2d841b3f7f19bcb63cf94073f853165ae44def8f171a0abce658d05c76a48bf1e91697eb
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.62.tar.xz' init-system-helpers_1.62.tar.xz 42144 SHA512:d90f12e642d086bd0d560ece87d119079c164b90ddbb77b2f804979540095b655715febbc2a5b0d50d7f94434d1ff7c0f4044d5d5411916fbca8300f3f88da7f
```

### `dpkg` source package: `iproute2=5.15.0-1ubuntu2.2`

Binary Packages:

- `iproute2=5.15.0-1ubuntu2.2`

Licenses: (parsed from: `/usr/share/doc/iproute2/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris iproute2=5.15.0-1ubuntu2.2
'http://archive.ubuntu.com/ubuntu/pool/main/i/iproute2/iproute2_5.15.0.orig.tar.xz' iproute2_5.15.0.orig.tar.xz 858068 SHA512:e94918fa10e523224b965c7cb5303a101745e89c90d149d2d9876a002b2a894b1c689c519dc22168f3d334c3ee0810c59ec43223baab3d5f4c56f017d6281f22
'http://archive.ubuntu.com/ubuntu/pool/main/i/iproute2/iproute2_5.15.0-1ubuntu2.2.debian.tar.xz' iproute2_5.15.0-1ubuntu2.2.debian.tar.xz 46036 SHA512:52db3e9a7aa12c38a7ded6e3319ecfbea927f1d4ba1cfe2c7cf9708b375cacfb16c6be9c5a00bc3e9ddca9daa4138fcccc5fdab29bb0b472bc5a3301e5a10f8d
'http://archive.ubuntu.com/ubuntu/pool/main/i/iproute2/iproute2_5.15.0-1ubuntu2.2.dsc' iproute2_5.15.0-1ubuntu2.2.dsc 2384 SHA512:407a81008ff3f675e748af2e49f7a6b2bca49b493395156232518a2f98ac5995909bf9293c3493c88cc61a76eb989ae74b1b1763309b9246d7873b19c4562858
```

### `dpkg` source package: `iptables=1.8.7-1ubuntu5.2`

Binary Packages:

- `libxtables12:amd64=1.8.7-1ubuntu5.2`

Licenses: (parsed from: `/usr/share/doc/libxtables12/copyright`)

- `Artistic`
- `GPL-2`
- `GPL-2+`
- `custom`

Source:

```console
$ apt-get source -qq --print-uris iptables=1.8.7-1ubuntu5.2
'http://archive.ubuntu.com/ubuntu/pool/main/i/iptables/iptables_1.8.7.orig.tar.bz2' iptables_1.8.7.orig.tar.bz2 717862 SHA256:c109c96bb04998cd44156622d36f8e04b140701ec60531a10668cfdff5e8d8f0
'http://archive.ubuntu.com/ubuntu/pool/main/i/iptables/iptables_1.8.7-1ubuntu5.2.debian.tar.xz' iptables_1.8.7-1ubuntu5.2.debian.tar.xz 88180 SHA256:5defc79effea0d1f0276d0cd4e711551b9431f45e00ab88a898f78ee5133dfab
'http://archive.ubuntu.com/ubuntu/pool/main/i/iptables/iptables_1.8.7-1ubuntu5.2.dsc' iptables_1.8.7-1ubuntu5.2.dsc 2850 SHA256:9dd07b52c43d44213f18b05fb7f73326d8d7a3a1b5c03a9725c5734f933669b0
```

### `dpkg` source package: `jemalloc=5.2.1-4ubuntu1`

Binary Packages:

- `libjemalloc2:amd64=5.2.1-4ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libjemalloc2/copyright`)

- `BSD-2-Clause`
- `BSD-2-Clause-Chemeris`
- `BSD-3-Clause`
- `BSD-3-Clause-Google`
- `BSD-3-Clause-Hiroshima-University`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris jemalloc=5.2.1-4ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/universe/j/jemalloc/jemalloc_5.2.1-4ubuntu1.dsc' jemalloc_5.2.1-4ubuntu1.dsc 1739 SHA512:3beae352290395c716270f05c5e30de52b7ba3911990f3ecadacf551643ef59ad16d8e0c77de1ca4264f0f199244e5c072d543e74a2f2685535eea29c2ce2677
'http://archive.ubuntu.com/ubuntu/pool/universe/j/jemalloc/jemalloc_5.2.1.orig.tar.bz2' jemalloc_5.2.1.orig.tar.bz2 554279 SHA512:0bbb77564d767cef0c6fe1b97b705d368ddb360d55596945aea8c3ba5889fbce10479d85ad492c91d987caacdbbdccc706aa3688e321460069f00c05814fae02
'http://archive.ubuntu.com/ubuntu/pool/universe/j/jemalloc/jemalloc_5.2.1-4ubuntu1.debian.tar.xz' jemalloc_5.2.1-4ubuntu1.debian.tar.xz 15152 SHA512:45525f3f6d9ba3c5d4c046246940d9defbfbbc6749744746fbb0119aa554a774d7bb670c545bb0a151b5298d32f58dc7698364a7ba9828a2635a95375ed83899
```

### `dpkg` source package: `keyutils=1.6.1-2ubuntu3`

Binary Packages:

- `libkeyutils1:amd64=1.6.1-2ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.6.1-2ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6.1-2ubuntu3.dsc' keyutils_1.6.1-2ubuntu3.dsc 2203 SHA512:7e9c3266bf707b3553758ab89f815542edca6d7ed0ca069986bee3dda75b534f5b275b786e246232b3234c6ccbaf4c67ff60f68bba73b0a3e2ec1bbfa00b295e
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6.1.orig.tar.bz2' keyutils_1.6.1.orig.tar.bz2 97232 SHA512:ea6e20b2594234c7f51581eef2b8fd19c109fa9eacaaef8dfbb4f237bd1d6fdf071ec23b4ff334cb22a46461d09d17cf499987fd1f00e66f27506888876961e1
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6.1-2ubuntu3.debian.tar.xz' keyutils_1.6.1-2ubuntu3.debian.tar.xz 18936 SHA512:16f390f0fc3154a77c8ca3666d44881a6ca2f0d11cfe0398cd82b57b6f552af85c156de358d0b87e39f301331897d72de058050e3cb53720a76b5b5ebf07aa3d
```

### `dpkg` source package: `krb5=1.19.2-2ubuntu0.8`

Binary Packages:

- `libgssapi-krb5-2:amd64=1.19.2-2ubuntu0.8`
- `libk5crypto3:amd64=1.19.2-2ubuntu0.8`
- `libkrb5-3:amd64=1.19.2-2ubuntu0.8`
- `libkrb5support0:amd64=1.19.2-2ubuntu0.8`

Licenses: (parsed from: `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.19.2-2ubuntu0.8
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.19.2.orig.tar.gz' krb5_1.19.2.orig.tar.gz 8741053 SHA512:b90d6ed0e1e8a87eb5cb2c36d88b823a6a6caabf85e5d419adb8a930f7eea09a5f8491464e7e454cca7ba88be09d19415962fe0036ad2e31fc584f9fc0bbd470
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.19.2-2ubuntu0.8.debian.tar.xz' krb5_1.19.2-2ubuntu0.8.debian.tar.xz 125888 SHA512:5b50675962f63f2e25c5782d9ea049a9c97220d3822f45e7c731702391d9cc1dca52f4cdf856dbab6cbd7d1796794caf374215ef229d29af42648e875b38e0c0
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.19.2-2ubuntu0.8.dsc' krb5_1.19.2-2ubuntu0.8.dsc 3652 SHA512:0623b673bf84d48cb04a1c18d787baa406ce86c2b9b0784edbc3313d60700ffcff7684e3e94a2802a7039879e5fe6b9a3d7d54dea89f1fb7d63b5810bef6d76c
```

### `dpkg` source package: `libaio=0.3.112-13build1`

Binary Packages:

- `libaio1:amd64=0.3.112-13build1`

Licenses: (parsed from: `/usr/share/doc/libaio1/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libaio=0.3.112-13build1
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libaio/libaio_0.3.112-13build1.dsc' libaio_0.3.112-13build1.dsc 2169 SHA512:5aa2c239a4d47f5409565e8ad912ab74c859035677475793caa07ab9d3e39a429f8bea2acab479d4dc88142acd1366d06c0a453113b2d0da45b170e2a7eb4598
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libaio/libaio_0.3.112.orig.tar.xz' libaio_0.3.112.orig.tar.xz 38196 SHA512:612f0adeea4926ced914b43ec550bf821bef348e6c787f9e3c1a545e5667121692a9af7ebaab14744aca7132a071083a1120bd01e31726932f3ceb9be51891a7
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libaio/libaio_0.3.112-13build1.debian.tar.xz' libaio_0.3.112-13build1.debian.tar.xz 35324 SHA512:fa60b86df84cd6c1560a1120efd61031c673c0a5b834e4b3622a00e4fd89fa5f741586a497792d7abb7a618ae0acb1abff88bb84aa9682d11dc8a6db839d2499
```

### `dpkg` source package: `libassuan=2.5.5-1build1`

Binary Packages:

- `libassuan0:amd64=2.5.5-1build1`

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
$ apt-get source -qq --print-uris libassuan=2.5.5-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.5-1build1.dsc' libassuan_2.5.5-1build1.dsc 2753 SHA512:6aa8147a85858f8e0c6ce17083c605fa92c65bcc810a0c1c5c8c5ef08332d359795ad77129bead9f7b216d7893c305e34f653ab29941b008f2bd1178e81587f5
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.5.orig.tar.bz2' libassuan_2.5.5.orig.tar.bz2 572263 SHA512:70117f77aa43bbbe0ed28da5ef23834c026780a74076a92ec775e30f851badb423e9a2cb9e8d142c94e4f6f8a794988c1b788fd4bd2271e562071adf0ab16403
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.5.orig.tar.bz2.asc' libassuan_2.5.5.orig.tar.bz2.asc 228 SHA512:343336ea5dffa113cd934167f548faf4e85d31bf64a46541ee6828b4d0995a8cc9d0668995812d9c4d3ab73347d5b1bbfff0d6ed586fbf4bbc57ac42e828e8d5
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.5-1build1.debian.tar.xz' libassuan_2.5.5-1build1.debian.tar.xz 14448 SHA512:590d52fa0d3e7fde9747cb164b08a60ae3372eff60ac80f4de809289f86a83c2b7361e65bbb20e1b68a27960e7478a78031b57d7e9784d6d2dc407f1c8530217
```

### `dpkg` source package: `libbpf=0.5.0-1ubuntu22.04.1`

Binary Packages:

- `libbpf0:amd64=1:0.5.0-1ubuntu22.04.1`

Licenses: (parsed from: `/usr/share/doc/libbpf0/copyright`)

- `BSD-2-Clause`
- `GPL-2`
- `GPL-2 with Linux-syscall-note exception`
- `GPL-2+`
- `GPL-2.0`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libbpf=0.5.0-1ubuntu22.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbpf/libbpf_0.5.0.orig.tar.gz' libbpf_0.5.0.orig.tar.gz 815083 SHA512:3c578d3e6e93a306a1f182978e54f35fec8acfa51fad5d7de72c5003f10c266d7474e82d6dd045311fcaf8c18aa8cebe64a3336a458a9ea477e5a58e5111dd85
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbpf/libbpf_0.5.0-1ubuntu22.04.1.debian.tar.xz' libbpf_0.5.0-1ubuntu22.04.1.debian.tar.xz 8228 SHA512:0377f0a7313deb0e73e171a50055e7540c978d1196f234ebd0f69d7e59348d836b8ce2eaf27588f1b045c26b007c0f1d3eb51384b9f3e25b19d956ba6536ccb3
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbpf/libbpf_0.5.0-1ubuntu22.04.1.dsc' libbpf_0.5.0-1ubuntu22.04.1.dsc 1887 SHA512:e8308327200b848ebd113afb233e7615e236a8cf1ed24b35ecd1a80fafa2e2e0f7c7afcec591c21c10e8511fea6b8f4e4c18758eebed4c31ac8e0a8f5827a57f
```

### `dpkg` source package: `libbsd=0.11.5-1`

Binary Packages:

- `libbsd0:amd64=0.11.5-1`

Licenses: (parsed from: `/usr/share/doc/libbsd0/copyright`)

- `BSD-2-clause`
- `BSD-2-clause-NetBSD`
- `BSD-2-clause-author`
- `BSD-2-clause-verbatim`
- `BSD-3-clause`
- `BSD-3-clause-John-Birrell`
- `BSD-3-clause-Regents`
- `BSD-3-clause-author`
- `BSD-4-clause-Christopher-G-Demetriou`
- `BSD-4-clause-Niels-Provos`
- `BSD-5-clause-Peter-Wemm`
- `Beerware`
- `Expat`
- `ISC`
- `ISC-Original`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libbsd=0.11.5-1
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.11.5-1.dsc' libbsd_0.11.5-1.dsc 2292 SHA512:635f85618e9bcf22abbe73a6864b87d34c4e9d75bc619cab4e487d0ccbb52e1c006258cb47c8b892869adb5d645303fbff3eb57618f2dc862120f741cfbe175c
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.11.5.orig.tar.xz' libbsd_0.11.5.orig.tar.xz 409972 SHA512:c52c19eddd53630aca14f9f6221f7b84aa9cc798b4bb91e867822b161793313aab872ac1c0350d29312a72fee6e2061f3910ff918b724ec171d8c9de5837c841
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.11.5.orig.tar.xz.asc' libbsd_0.11.5.orig.tar.xz.asc 833 SHA512:24a3fb414a3a354284c76724d65225619820f3f6b597ed8d163ed99f19ec433465f909fe047758f83a7cd6fc8ee2676478420c77cb2f0b8b69ffa7a690c8c17f
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.11.5-1.debian.tar.xz' libbsd_0.11.5-1.debian.tar.xz 17604 SHA512:438911ae479952b00aa81cdf2f12863b82a01bc2abf3acb4bf22223f4c851504a77217087b2e2edabf6cf61187314f1c3061f2794de7a38abd953451e2f0d931
```

### `dpkg` source package: `libcap-ng=0.7.9-2.2build3`

Binary Packages:

- `libcap-ng0:amd64=0.7.9-2.2build3`

Licenses: (parsed from: `/usr/share/doc/libcap-ng0/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libcap-ng=0.7.9-2.2build3
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.9-2.2build3.dsc' libcap-ng_0.7.9-2.2build3.dsc 2105 SHA512:50d7c66eea7dbadcd2314f3eb5ae9f4464e9a2a82a36004efd841bc092f6c4787dd9856aa14bef85035ae9db115b3a9aee78436b790a373e935d98f7fd761cd5
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.9.orig.tar.gz' libcap-ng_0.7.9.orig.tar.gz 449038 SHA512:095edabaf76a943aab0645b843b14e20b1733ba1d47a8e34d82f6586ca9a1512ba2677d232b13dd3900b913837401bb58bf74481970e967ba19041959dc43259
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.9-2.2build3.debian.tar.xz' libcap-ng_0.7.9-2.2build3.debian.tar.xz 6432 SHA512:9ce3f52dc0c89739f0117ba7c1b8fdfcdb51ceb7cea7c00aa55522ba733efdb7a37a7f21a9bfd106e453a8477a759af0aaf4688e4b18c3c9cc659657aeb2c0bb
```

### `dpkg` source package: `libcap2=1:2.44-1ubuntu0.22.04.3`

Binary Packages:

- `libcap2:amd64=1:2.44-1ubuntu0.22.04.3`
- `libcap2-bin=1:2.44-1ubuntu0.22.04.3`

Licenses: (parsed from: `/usr/share/doc/libcap2/copyright`, `/usr/share/doc/libcap2-bin/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libcap2=1:2.44-1ubuntu0.22.04.3
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.44.orig.tar.xz' libcap2_2.44.orig.tar.xz 125568 SHA512:1bb323ca362923bd6bd0e2e4639cf8726975165a620a243b31e797056439eb7efb2bfbc8e5521636783a86c7415b2037b1638c98747b79183ca7d3d42a04ff20
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.44-1ubuntu0.22.04.3.debian.tar.xz' libcap2_2.44-1ubuntu0.22.04.3.debian.tar.xz 24880 SHA512:203d0b8e88640d809d1a5436cf21781dfa12731891b6b494c83bb872df1643050a9e1205916f4125e9c3a773daaaff23b26232b1c5eecfac1105ac4e04732e21
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.44-1ubuntu0.22.04.3.dsc' libcap2_2.44-1ubuntu0.22.04.3.dsc 2318 SHA512:40430604b718fe1359a0cc1d7f880464b0d5d89b16f05be730061164f4e275f90570f281ee656b35f320b66aa43545e592c6c9f5fa569620d1da5fafefe30001
```

### `dpkg` source package: `libconfig-inifiles-perl=3.000003-1ubuntu0.1`

Binary Packages:

- `libconfig-inifiles-perl=3.000003-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libconfig-inifiles-perl/copyright`)

- `Artistic`
- `Expat`
- `GPL-1`
- `GPL-1+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris libconfig-inifiles-perl=3.000003-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libconfig-inifiles-perl/libconfig-inifiles-perl_3.000003.orig.tar.gz' libconfig-inifiles-perl_3.000003.orig.tar.gz 70024 SHA512:29278b7f6aaf9ffcc0cd8b48ca0e1f1084b10278e50764b2b93e3e9b156ef13d6e54f779f41d0a6cbf6e0b23da1b73a3bb83fbf873add0a604693a41312b91f5
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libconfig-inifiles-perl/libconfig-inifiles-perl_3.000003-1ubuntu0.1.debian.tar.xz' libconfig-inifiles-perl_3.000003-1ubuntu0.1.debian.tar.xz 11024 SHA512:22da1c0dd4d8138c104b2f136a1f95533decc353b9501ffa7c61194a4c68fefd896b43059c1fb13a98051506f13fd2f78cf0f8f82656727122ffdbd07acd61e7
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libconfig-inifiles-perl/libconfig-inifiles-perl_3.000003-1ubuntu0.1.dsc' libconfig-inifiles-perl_3.000003-1ubuntu0.1.dsc 2380 SHA512:adf305bc28df6f1b4bac8333505dec9122b241fb50732d72e59d08276411c94476166295734c6c0e92712551c85d4f936d52137a09d018ae9918eb5e648b5d7e
```

### `dpkg` source package: `libdbi-perl=1.643-3ubuntu0.1`

Binary Packages:

- `libdbi-perl:amd64=1.643-3ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libdbi-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris libdbi-perl=1.643-3ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdbi-perl/libdbi-perl_1.643.orig.tar.gz' libdbi-perl_1.643.orig.tar.gz 612372 SHA512:03812f3eb1e43c8290dadb8cb14bbced9ec6e237228ea2a2ba91f22e52143906a91a7e82945dab30b1d1b9fc925073721111adafd9a09fac070808ab88f908b8
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdbi-perl/libdbi-perl_1.643-3ubuntu0.1.debian.tar.xz' libdbi-perl_1.643-3ubuntu0.1.debian.tar.xz 15908 SHA512:6313c6bd481d373ae340a56237f4cb0972bcc83569726a8d69ecafb2828d6246640cadb9f957bc7a00e3d69cf31261786b27be79dd565c1ffe6f62ede4c71631
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdbi-perl/libdbi-perl_1.643-3ubuntu0.1.dsc' libdbi-perl_1.643-3ubuntu0.1.dsc 2202 SHA512:7608e70a71b87368a66ab7501f34982b480b56ed86c48d7b0b1a16e14b097c0bc307a76d331ca53a4bb3c25c3f3aee0febf815303c8678f4f0d17adef50e9051
```

### `dpkg` source package: `libedit=3.1-20210910-1build1`

Binary Packages:

- `libedit2:amd64=3.1-20210910-1build1`

Licenses: (parsed from: `/usr/share/doc/libedit2/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris libedit=3.1-20210910-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20210910-1build1.dsc' libedit_3.1-20210910-1build1.dsc 2340 SHA512:67cfd7c36cfb575a49a919968710841a19a9f523c6138c3f8bc56de3e546a90adad72f25c1bb4753d83a6d09634c873b3c636613f6d223041f00c7d18ecb7790
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20210910.orig.tar.gz' libedit_3.1-20210910.orig.tar.gz 524722 SHA512:b7361c277f971ebe87e0e539e5e1fb01a4ca1bbab61e199eb97774d8b60dddeb9e35796faf9cc68eb86d1890e8aac11db13b44b57ccc8302d559741fbe9d979e
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20210910-1build1.debian.tar.xz' libedit_3.1-20210910-1build1.debian.tar.xz 15200 SHA512:23ca0f62bf73e9fd1537c599b689807834db6b657c8f0dc448947db49fa3fe0de498ad96ea3d24515f0875fb3f50c4839f1bba25bf9bc48fe23de5fc780f3542
```

### `dpkg` source package: `libffi=3.4.2-4`

Binary Packages:

- `libffi8:amd64=3.4.2-4`

Licenses: (parsed from: `/usr/share/doc/libffi8/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.4.2-4
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.4.2-4.dsc' libffi_3.4.2-4.dsc 1948 SHA512:a3a3ada71f82d244f8cb54f1cac30ae6be7c4305696700fb6ffb96783f4f9f788c943bc8ba0d7474c9fd31f04453875e1da341240707711e4eff10cd8023e8d1
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.4.2.orig.tar.gz' libffi_3.4.2.orig.tar.gz 1351355 SHA512:31bad35251bf5c0adb998c88ff065085ca6105cf22071b9bd4b5d5d69db4fadf16cadeec9baca944c4bb97b619b035bb8279de8794b922531fddeb0779eb7fb1
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.4.2-4.debian.tar.xz' libffi_3.4.2-4.debian.tar.xz 8164 SHA512:eecf83971847b78aae0c2cfe3b546a858c93462b7d1d2473c96f5b43de47e1d5fc4663b524e4c5792630d7a6d1796e8bdf83f55addc669d0ce3810643924a07f
```

### `dpkg` source package: `libgcrypt20=1.9.4-3ubuntu3.2`

Binary Packages:

- `libgcrypt20:amd64=1.9.4-3ubuntu3.2`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.9.4-3ubuntu3.2
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.9.4.orig.tar.bz2' libgcrypt20_1.9.4.orig.tar.bz2 3239704 SHA512:d0e117ac73c94d70e9521ee1e6328691498cc8328f8c4e21338096908f5c04c7b838966eb63d59494565f4e19f506c07dab4f4d922150d75610d9f7b57abbf60
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.9.4.orig.tar.bz2.asc' libgcrypt20_1.9.4.orig.tar.bz2.asc 228 SHA512:5fbc2f52ff8a9f2b254791a0d127b012a3648a03d26e043af2ab63d05f69045492581462ba485ecf005a171ea391175bdc73350aa0e76f8b5f75c64a4d685d49
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.9.4-3ubuntu3.2.debian.tar.xz' libgcrypt20_1.9.4-3ubuntu3.2.debian.tar.xz 35680 SHA512:6c4b618df4b748e4d75958d70321b459d64c8e8337bbc37b7823bb07f032ff4b5d91e4fa89f7ad9a01cd5e6c52b37d117320f16d908570ebc5dd4281f403b1c1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.9.4-3ubuntu3.2.dsc' libgcrypt20_1.9.4-3ubuntu3.2.dsc 2915 SHA512:110a7f5629aa506c3b48a9d4aef4e33087fd0252d01f7424b3ac582e9c7a3d4d9c5edd8bdc50897028153910ad9736fe68c4cb76a136e452789316fbe5f17186
```

### `dpkg` source package: `libgpg-error=1.43-3`

Binary Packages:

- `libgpg-error0:amd64=1.43-3`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.43-3
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.43-3.dsc' libgpg-error_1.43-3.dsc 2270 SHA512:c0cf8b16d720d89b69b5eb5cf22bf7bb0605892ba110100d3b30370fc93c167bda2f501e53e70a2599024bc40c1e509d06e39f68f3be63312967e4308249f0b8
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.43.orig.tar.bz2' libgpg-error_1.43.orig.tar.bz2 999006 SHA512:36769a62d0b4b219a6d58195bed692e34d3b0313f628b1036055ca34b69332edbe6bcdace9855a60d06e7be5998dc13bf1305d0b2bb211a4d8f701e85040961c
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.43.orig.tar.bz2.asc' libgpg-error_1.43.orig.tar.bz2.asc 238 SHA512:1bd12acc57bb394947dec51b70fe067f717e591484be164cafff3ac47a6bacc101f7ac64fbae350233bc76a0002981fb3fbe53db73dc914db52694b8588cecc1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.43-3.debian.tar.xz' libgpg-error_1.43-3.debian.tar.xz 19264 SHA512:bbd7615b02707405efddd4bb1dee355024bb7089770453a2addf7e722c15c2cfbebc3012c9db848f3f55eb4c66f5b9487877e8d94322d8dc1d2731876b4d8281
```

### `dpkg` source package: `libidn2=2.3.2-2build1`

Binary Packages:

- `libidn2-0:amd64=2.3.2-2build1`

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
$ apt-get source -qq --print-uris libidn2=2.3.2-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.2-2build1.dsc' libidn2_2.3.2-2build1.dsc 2655 SHA512:bc84158420d526a0f9bca79ca2a8291c55588e2773ded66d7c4b86ad33b370f9d8723cfc3a2b278660de7060687fff5448912e802d7fb63a8ff7876b38440f32
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.2.orig.tar.gz' libidn2_2.3.2.orig.tar.gz 2169556 SHA512:958dbf49a47a84c7627ac182f4cc8ea452696cec3f0d1ff102a6c48e89893e772b2aa81f75da8223dfc6326515cca3ae085268fbf997828de9330c3a351152f1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.2.orig.tar.gz.asc' libidn2_2.3.2.orig.tar.gz.asc 488 SHA512:0559b51b37c7937f3e1f8bf9de9b193f137f16b79d6673f85691a4f4a12ec132568e913848a70136f8522118817f7ecaa8432d353a5eff6b99a7be8719421fe0
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.2-2build1.debian.tar.xz' libidn2_2.3.2-2build1.debian.tar.xz 15972 SHA512:d5af028cc405d326c31e67e577ef16d9b8b81e433171220fda2c2a6f8fc982a63b6d1d85c6595f5ce01a5005768d935aeeaa5de8a552990f4e070bc541e78570
```

### `dpkg` source package: `libmd=1.0.4-1build1`

Binary Packages:

- `libmd0:amd64=1.0.4-1build1`

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
$ apt-get source -qq --print-uris libmd=1.0.4-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.0.4-1build1.dsc' libmd_1.0.4-1build1.dsc 2380 SHA512:778b562e6b3860fe6a6d5ddf4d7cce381126be77d151ac7c2a619d57737080f2adc07ff8e01fcafd98b3ace157fc72ab77a572362b56e79e5abb79a99fdacd6c
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.0.4.orig.tar.xz' libmd_1.0.4.orig.tar.xz 264472 SHA512:731553ecc5e0e1eb228cced8fccd531fe31fb5c7627ca30013d287e1aeb8222959cf7498fbb7414bbabb967b25d4e8b0edd54fc47f6ccf55fc91087db0725ce3
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.0.4.orig.tar.xz.asc' libmd_1.0.4.orig.tar.xz.asc 833 SHA512:ec4b60a721da1f315fad73daa8ee620f44a53f17a30506c4d63b154b3abde19bb248b2ce6b83b989589e2a9184ebbe1b870e83181e18a4147d75617579d10504
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.0.4-1build1.debian.tar.xz' libmd_1.0.4-1build1.debian.tar.xz 10264 SHA512:0e287498326a5aa3bc95cb0c576df7d0bb289bfb9db3a1f812d0e202c61af9dc78ecfa4b6b26c2dee3c5ccbefad877919f44ec849b3300f0f30878080eb5cb13
```

### `dpkg` source package: `libmnl=1.0.4-3build2`

Binary Packages:

- `libmnl0:amd64=1.0.4-3build2`

Licenses: (parsed from: `/usr/share/doc/libmnl0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libmnl=1.0.4-3build2
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmnl/libmnl_1.0.4-3build2.dsc' libmnl_1.0.4-3build2.dsc 2203 SHA512:9c52fb84656907381c9bee84d4e4695412785a177ea2f8b217bc7c0a1f062ed2325030fff7febd9cb45499ffabcc2b22489e5e5c3f25e32c3a3ca2b1ff2c1118
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmnl/libmnl_1.0.4.orig.tar.bz2' libmnl_1.0.4.orig.tar.bz2 301270 SHA512:e2bbfb688fe41913d53c74ba7ec95b4e88ee2c52b556b8608185f2fcbd629665423a3b37f877f84426ba257cf6040fa701539d67166b00b8e3e2dfde6831a2f9
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmnl/libmnl_1.0.4-3build2.debian.tar.xz' libmnl_1.0.4-3build2.debian.tar.xz 7936 SHA512:c3074df17ae535bd0752b80057841c9656bbac7ecfefe76c0ee1776720e6ca2c1d7aa0512c8f50827ef1e3ed441f2f168648f5d56cde1e523edf098bba56a034
```

### `dpkg` source package: `libnsl=1.3.0-2build2`

Binary Packages:

- `libnsl2:amd64=1.3.0-2build2`

Licenses: (parsed from: `/usr/share/doc/libnsl2/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+-autoconf-exception`
- `GPL-2+-libtool-exception`
- `GPL-3`
- `GPL-3+-autoconf-exception`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MIT`
- `permissive-autoconf-m4`
- `permissive-autoconf-m4-no-warranty`
- `permissive-configure`
- `permissive-fsf`
- `permissive-makefile-in`

Source:

```console
$ apt-get source -qq --print-uris libnsl=1.3.0-2build2
'http://archive.ubuntu.com/ubuntu/pool/main/libn/libnsl/libnsl_1.3.0-2build2.dsc' libnsl_1.3.0-2build2.dsc 2087 SHA512:f13d28f34b0e71b04b5a0313b1cc79cdbe7d5e7f910d649af63b42824654e3cf01c02caa0e68309cb03350a17506e034800af1b1e3ab9af99fb64121c119215c
'http://archive.ubuntu.com/ubuntu/pool/main/libn/libnsl/libnsl_1.3.0.orig.tar.xz' libnsl_1.3.0.orig.tar.xz 321488 SHA512:a5a6c3ccb2d1e724c8c1f65e55dcd09383eb1ae019c55f4c09441eadf23ffbc2196cfad259805b0ac40ddf3a10af0da453e4d739d67d46829c64d0995dab4e55
'http://archive.ubuntu.com/ubuntu/pool/main/libn/libnsl/libnsl_1.3.0-2build2.debian.tar.xz' libnsl_1.3.0-2build2.debian.tar.xz 4868 SHA512:367904106ba925eaa667cc273b37afd052ba795b7ed004cdb501c13dd26b469df971ac10acec2bf57d91fa4839f356c7dcbcd4969914891152588365844ced9a
```

### `dpkg` source package: `libseccomp=2.5.3-2ubuntu3~22.04.1`

Binary Packages:

- `libseccomp2:amd64=2.5.3-2ubuntu3~22.04.1`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.5.3-2ubuntu3~22.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.3.orig.tar.gz' libseccomp_2.5.3.orig.tar.gz 637572 SHA256:59065c8733364725e9721ba48c3a99bbc52af921daf48df4b1e012fbc7b10a76
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.3.orig.tar.gz.asc' libseccomp_2.5.3.orig.tar.gz.asc 833 SHA256:cc1cbe9d9eb6a67b78de107eb37b2bc8d7599e3c1d36699ae2528db489cb5d44
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.3-2ubuntu3%7e22.04.1.debian.tar.xz' libseccomp_2.5.3-2ubuntu3~22.04.1.debian.tar.xz 24328 SHA256:cd582c847ced99c97f487b3f4a851bc1f2bed9065f90729d90dc8721b6dc483e
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.3-2ubuntu3%7e22.04.1.dsc' libseccomp_2.5.3-2ubuntu3~22.04.1.dsc 2860 SHA256:e7f514056a28794c6a7067cd0881b5bf03e918578df3418eea6752cbfa83fd13
```

### `dpkg` source package: `libselinux=3.3-1build2`

Binary Packages:

- `libselinux1:amd64=3.3-1build2`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=3.3-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.3-1build2.dsc' libselinux_3.3-1build2.dsc 2644 SHA512:e6f6744aeef21f3acf9c36fc6251515e6be8caf1b4953ed20d2346897c72bc919ae7e26ab8dfd0c2cf24029bd39da073e57ea19df15af106ce86ab4537c691aa
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.3.orig.tar.gz' libselinux_3.3.orig.tar.gz 206826 SHA512:9a89c05ea4b17453168a985ece93ba6d6c4127916e657c46d4135eb59a1f6408faa0802cc2e49187defbde5247d659037beee089877affbab3eab6af3433696c
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.3-1build2.debian.tar.xz' libselinux_3.3-1build2.debian.tar.xz 24052 SHA512:75e344ef0d123659105774a0fe941f5821d230bd3f4db0453918407325f6c08246db2cd609ec0ba51090b2942cd1a9a1865245a18834fa1b234d730103799c0c
```

### `dpkg` source package: `libsemanage=3.3-1build2`

Binary Packages:

- `libsemanage-common=3.3-1build2`
- `libsemanage2:amd64=3.3-1build2`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage2/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=3.3-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.3-1build2.dsc' libsemanage_3.3-1build2.dsc 2690 SHA512:6337e23938be6ebe18321ce9e67802ceaa2637e37bdc0940c4a4501e73f25235c662de1ec85807062327d2d5c5e7078ad0fb20d660e075710726cd0ede51e2fc
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.3.orig.tar.gz' libsemanage_3.3.orig.tar.gz 178890 SHA512:6026d9773c0886436ad801bc0c8beac888b6fb62034edeb863192dea4b6ef34a88e080758820fe635a20e048ac666beee505a0f946258f18571709cca5228aad
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.3-1build2.debian.tar.xz' libsemanage_3.3-1build2.debian.tar.xz 17920 SHA512:b23e000956a6fc96c7609a749d1974874834b6a463b0f5b42b3e4bde75f560789f7ef7f385a3a7297e97f7c610cd0c2899986b3a228671a57e051310441b0c90
```

### `dpkg` source package: `libsepol=3.3-1build1`

Binary Packages:

- `libsepol2:amd64=3.3-1build1`

Licenses: (parsed from: `/usr/share/doc/libsepol2/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=3.3-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.3-1build1.dsc' libsepol_3.3-1build1.dsc 2217 SHA512:91f9c8436df88aa898f2e3ea4a8bbb0cb21de84153bc88b9fff30b2aa3f0e6b11d5b9f506b81d0266e8a4881ea86d6590abe64b8eacc2d8cdeaf1a0f5f2784bf
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.3.orig.tar.gz' libsepol_3.3.orig.tar.gz 482546 SHA512:fb6bb69f8e43a911a1a9cbd791593215386e93cb9292e003f5d8efe6e86e0ce5d0287e95d52fe2fbce518a618beaf9b1135aea0d04eaebcdbd8c6d07ee67b500
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.3-1build1.debian.tar.xz' libsepol_3.3-1build1.debian.tar.xz 15068 SHA512:adb210e2dab83baa49cee624dc5ae44e9f2dff6eb4a0a7bee4b958e99871580df159d0ca339feca31d9c4cdd92d0022a841c35d615436278046379eeb766f1f2
```

### `dpkg` source package: `libsigsegv=2.13-1ubuntu3`

Binary Packages:

- `libsigsegv2:amd64=2.13-1ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libsigsegv2/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf exception`
- `permissive-fsf`
- `permissive-other`

Source:

```console
$ apt-get source -qq --print-uris libsigsegv=2.13-1ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsigsegv/libsigsegv_2.13-1ubuntu3.dsc' libsigsegv_2.13-1ubuntu3.dsc 2474 SHA512:74d424b26794088d5227b7539d3b7f0764a3dc23099f2a7ad0c3a274baf5cbda54f0a46400fe0132cf1b05523f8eb4fdd723691e447d549a9599fdc17a4fc6b9
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsigsegv/libsigsegv_2.13.orig.tar.gz' libsigsegv_2.13.orig.tar.gz 460736 SHA512:9c0cf01ee2a39f77f2e42eb06a2aa60644e10fe2cd39089de58f6206baf7fe7d61fe0ec6bf187276fcfccf61585154ce904fe374b474b7ba9fa050a61a2f3918
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsigsegv/libsigsegv_2.13.orig.tar.gz.asc' libsigsegv_2.13.orig.tar.gz.asc 819 SHA512:92d8c651557a7cd0ba0a9e0f45f75f5ee7508041e014c8438aa0d84065b5a343867346acbf007fd0d8b3a120e6bde993935f66d1cbd62583bc763ecdde359640
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsigsegv/libsigsegv_2.13-1ubuntu3.debian.tar.xz' libsigsegv_2.13-1ubuntu3.debian.tar.xz 8960 SHA512:fe9c70156c8ed3568b8e1e349afb33eb18b9802a1dbe470bd67079cf053f3883ef24582c316477680983a65aff071a2e32c8996848995fc21fc74a43b567fb6d
```

### `dpkg` source package: `libtasn1-6=4.18.0-4ubuntu0.2`

Binary Packages:

- `libtasn1-6:amd64=4.18.0-4ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=4.18.0-4ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.18.0.orig.tar.gz' libtasn1-6_4.18.0.orig.tar.gz 1724441 SHA256:4365c154953563d64c67a024b607d1ee75c6db76e0d0f65709ea80a334cd1898
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.18.0.orig.tar.gz.asc' libtasn1-6_4.18.0.orig.tar.gz.asc 228 SHA256:68edccaf988071e0c0154495e82be0b783553a49762381435accc79f2fdb463d
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.18.0-4ubuntu0.2.debian.tar.xz' libtasn1-6_4.18.0-4ubuntu0.2.debian.tar.xz 25324 SHA256:450340a2e588e4fcbfcbf2eece3c516a3fc25f6606e0fa341155326ab72137a0
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.18.0-4ubuntu0.2.dsc' libtasn1-6_4.18.0-4ubuntu0.2.dsc 2777 SHA256:959cc5799f608a5ddc7aba7fcc765588b5dc82c7d987bd17a4274222a5171d41
```

### `dpkg` source package: `libtirpc=1.3.2-2ubuntu0.1`

Binary Packages:

- `libtirpc-common=1.3.2-2ubuntu0.1`
- `libtirpc3:amd64=1.3.2-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libtirpc-common/copyright`, `/usr/share/doc/libtirpc3/copyright`)

- `BSD-2-Clause`
- `BSD-3-Clause`
- `BSD-4-Clause`
- `GPL-2`
- `LGPL-2.1`
- `LGPL-2.1+`
- `PERMISSIVE`
- `__AUTO_PERMISSIVE__`

Source:

```console
$ apt-get source -qq --print-uris libtirpc=1.3.2-2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtirpc/libtirpc_1.3.2.orig.tar.bz2' libtirpc_1.3.2.orig.tar.bz2 513151 SHA512:8664d5c4f842ee5acf83b9c1cadb7871f17b8157a7c4500e2236dcfb3a25768cab39f7c5123758dcd7381e30eb028ddfa26a28f458283f2dcea3426c9878c255
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtirpc/libtirpc_1.3.2-2ubuntu0.1.debian.tar.xz' libtirpc_1.3.2-2ubuntu0.1.debian.tar.xz 18364 SHA512:5440c46e49837b176b8087d82762002766e48a7d487e101049079637ebb93c21fbb1dccd63a319f72ee11d7964873c00dc98a7b5b320355d640df7f9e16ab1c7
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtirpc/libtirpc_1.3.2-2ubuntu0.1.dsc' libtirpc_1.3.2-2ubuntu0.1.dsc 2201 SHA512:da9e64904445de59217c2bfa55ca9739e0b08ac4693a45a813b7fc67273e106a11e7076d39d24e5f62d242af4e2eaac9e5503072b57f4cf7bdfa579a82920e77
```

### `dpkg` source package: `libunistring=1.0-1`

Binary Packages:

- `libunistring2:amd64=1.0-1`

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
$ apt-get source -qq --print-uris libunistring=1.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_1.0-1.dsc' libunistring_1.0-1.dsc 1928 SHA512:630d20ef6dd19be991147131d38acae2db15d1df34403264a15a373fcd4b661efffc1ae3916c52448f05cafb93bf1266527efa6630a02def88b86495d688a0c3
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_1.0.orig.tar.xz' libunistring_1.0.orig.tar.xz 2367800 SHA512:70d5ad82722844dbeacdfcb4d7593358e4a00a9222a98537add4b7f0bf4a2bb503dfb3cd627e52e2a5ca1d3da9e5daf38a6bd521197f92002e11e715fb1662d1
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_1.0-1.debian.tar.xz' libunistring_1.0-1.debian.tar.xz 42004 SHA512:f9208e7ab38cc742bb46dc1a871ddb03847b99b6169e20e8d8660dd9cdf22bffb27f9b329dcbd025ad9b26aee5a2aab01337f36d8ab3020d2e752f9c2d4368ce
```

### `dpkg` source package: `liburing=2.1-2build1`

Binary Packages:

- `liburing2:amd64=2.1-2build1`

Licenses: (parsed from: `/usr/share/doc/liburing2/copyright`)

- `GPL-2`
- `GPL-2 with Linux-syscall-note exception`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris liburing=2.1-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/libu/liburing/liburing_2.1-2build1.dsc' liburing_2.1-2build1.dsc 2373 SHA512:46beaea08e6168e3f3cc15fc053669658a215d3c8843638a4e6bf4185b6d8a0962acc701f453bba8cc0c0c5eb8a66a714121350cbf9a443cb09784029e517668
'http://archive.ubuntu.com/ubuntu/pool/main/libu/liburing/liburing_2.1.orig.tar.gz' liburing_2.1.orig.tar.gz 161846 SHA512:d0e3e8596b29aab30b0ac2f046d9884b55c22a07b3eea225edfccca3eb3d2b51bf5a2168d4ce5ed814dc8cecbe9beceee4bbd2fe390a068404754e6ad35a0a96
'http://archive.ubuntu.com/ubuntu/pool/main/libu/liburing/liburing_2.1.orig.tar.gz.asc' liburing_2.1.orig.tar.gz.asc 858 SHA512:f2952a34cfed56b8d768d0133aeb09cf8e804f0819975fcb6636c6027e95d90744f54e790bd14ee47d3da36ff0fcd7f4edade0e1f45e357a83ed6839e6783a37
'http://archive.ubuntu.com/ubuntu/pool/main/libu/liburing/liburing_2.1-2build1.debian.tar.xz' liburing_2.1-2build1.debian.tar.xz 14576 SHA512:0bd3e2d8d9db8b0e83a26887f9e474d10ce937f8ccea87cea32f2d73a1db756f5134a733946bdd94d09267d09eacf826a8a41d828e8a1b93c5913371570ad37c
```

### `dpkg` source package: `libxcrypt=1:4.4.27-1`

Binary Packages:

- `libcrypt1:amd64=1:4.4.27-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcrypt=1:4.4.27-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcrypt/libxcrypt_4.4.27-1.dsc' libxcrypt_4.4.27-1.dsc 1525 SHA512:1335a2ab3f7b519022af13c18dca9ea1c2de3007c07f120d53fbb7eb834ac7e0ece120681c1ee1dd92771469104dccedef3a7e85ec51fc1ca64b52c9447558c0
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcrypt/libxcrypt_4.4.27.orig.tar.xz' libxcrypt_4.4.27.orig.tar.xz 391772 SHA512:9d194066ab7eefd3e568b2478d58aa378da8571abf4c37ddcde2c01114a4aa69f0edfb4e3d13d951feac5955336f9b02046d9b1fd1b9fbfbc556aad31cf64d7e
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcrypt/libxcrypt_4.4.27-1.debian.tar.xz' libxcrypt_4.4.27-1.debian.tar.xz 7764 SHA512:02e38ba06f3555dd930fc7ed44602dc816ce48f4c29fdc085249948596d5e7e96600cb81c8c9fb2e1dc33574d5136d08feeff3eb1dd3522aa8e5cdc9037c1ae0
```

### `dpkg` source package: `libzstd=1.4.8+dfsg-3build1`

Binary Packages:

- `libzstd1:amd64=1.4.8+dfsg-3build1`
- `zstd=1.4.8+dfsg-3build1`

Licenses: (parsed from: `/usr/share/doc/libzstd1/copyright`, `/usr/share/doc/zstd/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris libzstd=1.4.8+dfsg-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.4.8%2bdfsg-3build1.dsc' libzstd_1.4.8+dfsg-3build1.dsc 2398 SHA512:cdd444b0258f1effd998781dd058c8ab37fb8aabb10b94cc5741b0fd2c4c948085cd1b919533ded2f30c5a871c68a81dacef3c3d0640b8514d5d3a9d375647f6
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.4.8%2bdfsg.orig.tar.xz' libzstd_1.4.8+dfsg.orig.tar.xz 1331996 SHA512:07fabe431367eea4badae7b1e46ac73e0b33aad5b67361bc7b67d5f9aef249c51db5b560f1cf59233255cc49db341a8d8440fed87745026fca7a7c5c14448cd8
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.4.8%2bdfsg-3build1.debian.tar.xz' libzstd_1.4.8+dfsg-3build1.debian.tar.xz 12316 SHA512:8123965a6e73c5ddd8d535e78ed1074e2eabd7f8ed090d215a89feedffae9391cf472d2395242d3cb0351cbf76603448dae93ad70d0989806b42b03c65b22db0
```

### `dpkg` source package: `lsb=11.1.0ubuntu4`

Binary Packages:

- `lsb-base=11.1.0ubuntu4`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`)

- `BSD-3-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lsb=11.1.0ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb_11.1.0ubuntu4.dsc' lsb_11.1.0ubuntu4.dsc 2222 SHA512:2b5375ca5938f497f9211d9b85eaf60858c2d59c80ec40a3a04bec6ef47e6685661589f22514f8b2e4a325038feb0375d99e1f905aa93b4a13c3d474e3b86677
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb_11.1.0ubuntu4.tar.xz' lsb_11.1.0ubuntu4.tar.xz 46152 SHA512:03469c3b85facd88fb4c24b85eb42d6aeab171aa6e5860147ad947e2bbc2f2fe5f78ebd4a457f6af194d33173dccec4f672d1b9d460c070765377d9456bc73da
```

### `dpkg` source package: `lsof=4.93.2+dfsg-1.1build2`

Binary Packages:

- `lsof=4.93.2+dfsg-1.1build2`

Licenses: (parsed from: `/usr/share/doc/lsof/copyright`)

- `BSD-4-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `Purdue`
- `sendmail`

Source:

```console
$ apt-get source -qq --print-uris lsof=4.93.2+dfsg-1.1build2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsof/lsof_4.93.2%2bdfsg-1.1build2.dsc' lsof_4.93.2+dfsg-1.1build2.dsc 1902 SHA512:6f3e0b912cd9b95d6ceb9e87511715df389855d0036b9abb9b3153f352bb90bc96a93756bc5c7605b5ea9200148713096f6ce7d88bbc8b238ab9afc05f0e6e83
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsof/lsof_4.93.2%2bdfsg.orig.tar.xz' lsof_4.93.2+dfsg.orig.tar.xz 743412 SHA512:4c85e9e9a104fa73e2054dd5b03d45f340a8de59928ef49906bae9619707941f1a629baf3288d580beed5194ced2eaed92fbbe19872494ce9c206fce314309d3
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsof/lsof_4.93.2%2bdfsg-1.1build2.debian.tar.xz' lsof_4.93.2+dfsg-1.1build2.debian.tar.xz 18776 SHA512:c6325b0e715bb41dda4bb68334f17db5338e666281408dda589310bc9b85d9456d5ddd226e1ba09e165ed3ef8a15b6d74a8543f903c06ed9dd1db21dad349757
```

### `dpkg` source package: `lz4=1.9.3-2build2`

Binary Packages:

- `liblz4-1:amd64=1.9.3-2build2`

Licenses: (parsed from: `/usr/share/doc/liblz4-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lz4=1.9.3-2build2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.9.3-2build2.dsc' lz4_1.9.3-2build2.dsc 2091 SHA512:a8f802737139536f8a9c0a3483635ff4dd8a3eba2e0d9d0d27f4f91c17592d1797929d491183dc25de4100a7aa924edefa8ca45eed4968c0e1b7e817f1ae9e1c
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.9.3.orig.tar.gz' lz4_1.9.3.orig.tar.gz 320958 SHA512:c246b0bda881ee9399fa1be490fa39f43b291bb1d9db72dba8a85db1a50aad416a97e9b300eee3d2a4203c2bd88bda2762e81bc229c3aa409ad217eb306a454c
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.9.3-2build2.debian.tar.xz' lz4_1.9.3-2build2.debian.tar.xz 14088 SHA512:9f61516a672186299a96aee5b7a71d9cb1ad3db2697fa10b802fef14a63587bb3459281f7300726711a116893c10858914f558aece1d224876e287020a23dde6
```

### `dpkg` source package: `mariadb=1:10.11.18+maria~ubu2204`

Binary Packages:

- `libmariadb3:amd64=1:10.11.18+maria~ubu2204`
- `mariadb-backup=1:10.11.18+maria~ubu2204`
- `mariadb-client=1:10.11.18+maria~ubu2204`
- `mariadb-client-core=1:10.11.18+maria~ubu2204`
- `mariadb-common=1:10.11.18+maria~ubu2204`
- `mariadb-server=1:10.11.18+maria~ubu2204`
- `mariadb-server-core=1:10.11.18+maria~ubu2204`
- `mysql-common=1:10.11.18+maria~ubu2204`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris mariadb=1:10.11.18+maria~ubu2204
'http://archive.mariadb.org/mariadb-10.11.18/repo/ubuntu/pool/main/m/mariadb/mariadb_10.11.18%2bmaria%7eubu2204.dsc' mariadb_10.11.18+maria~ubu2204.dsc 4276 SHA256:f98d5deaaf0dc7309907f4ac3baf4dbaa03904abbe48c376680f024c72600fdb
'http://archive.mariadb.org/mariadb-10.11.18/repo/ubuntu/pool/main/m/mariadb/mariadb_10.11.18%2bmaria%7eubu2204.tar.xz' mariadb_10.11.18+maria~ubu2204.tar.xz 183900548 SHA256:2bb982d8c69c923bb5fa92982f925c0e780e7368a2b1bb953fd1cd528dc7052a
```

### `dpkg` source package: `mawk=1.3.4.20200120-3`

Binary Packages:

- `mawk=1.3.4.20200120-3`

Licenses: (parsed from: `/usr/share/doc/mawk/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris mawk=1.3.4.20200120-3
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20200120-3.dsc' mawk_1.3.4.20200120-3.dsc 1915 SHA512:f51dae1f342769e4fc0b8d5faf4e988433a0e74912ba0777fbafdf058900c973087c267756f5c2b74298bfc31a36c8bbc99c6c0edcc850710b646d0d24fa1305
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20200120.orig.tar.gz' mawk_1.3.4.20200120.orig.tar.gz 468855 SHA512:14d9a6642ce931bf6457d248fc2d6da4f0ea7541976ca282ea708b26df048f86fdf92c27f72d497501ccd43a244d1d1a606f1a2f266a7558306fea35dcc3041b
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20200120-3.debian.tar.xz' mawk_1.3.4.20200120-3.debian.tar.xz 7520 SHA512:bc4f5401de313108595ba91b17f44b5c67d7650b5557eef8a6c63c75e2ccee5dfd8900576d7e81f0ab1ac2e570f64fa75f38f56f6d4535437c803029216501af
```

### `dpkg` source package: `mpfr4=4.1.0-3build3`

Binary Packages:

- `libmpfr6:amd64=4.1.0-3build3`

Licenses: (parsed from: `/usr/share/doc/libmpfr6/copyright`)

- `GFDL-1.2`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpfr4=4.1.0-3build3
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_4.1.0-3build3.dsc' mpfr4_4.1.0-3build3.dsc 2066 SHA512:60ea156f6c4a56320ecfb2fefb226b5083363710eacbdec48f36f77bd5265c91548ef28ba775a88c7e927314e5dd757de851001bc7697f863195510047eaf0a3
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_4.1.0.orig.tar.xz' mpfr4_4.1.0.orig.tar.xz 1525476 SHA512:1bd1c349741a6529dfa53af4f0da8d49254b164ece8a46928cdb13a99460285622d57fe6f68cef19c6727b3f9daa25ddb3d7d65c201c8f387e421c7f7bee6273
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_4.1.0-3build3.debian.tar.xz' mpfr4_4.1.0-3build3.debian.tar.xz 12580 SHA512:1126a59104a9556f7ebd622b050b52899bd92442673e6ecbb04e80bc873107b4b61a356373d14b1fff5681090b177e0d3a9a4f212b0f38c347d01ac408222bd0
```

### `dpkg` source package: `ncurses=6.3-2ubuntu0.2`

Binary Packages:

- `libncurses6:amd64=6.3-2ubuntu0.2`
- `libncursesw6:amd64=6.3-2ubuntu0.2`
- `libtinfo6:amd64=6.3-2ubuntu0.2`
- `ncurses-base=6.3-2ubuntu0.2`
- `ncurses-bin=6.3-2ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/libncurses6/copyright`, `/usr/share/doc/libncursesw6/copyright`, `/usr/share/doc/libtinfo6/copyright`, `/usr/share/doc/ncurses-base/copyright`, `/usr/share/doc/ncurses-bin/copyright`)

- `BSD-3-clause`
- `MIT/X11`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris ncurses=6.3-2ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.3.orig.tar.gz' ncurses_6.3.orig.tar.gz 3583550 SHA512:5373f228cba6b7869210384a607a2d7faecfcbfef6dbfcd7c513f4e84fbd8bcad53ac7db2e7e84b95582248c1039dcfc7c4db205a618f7da22a166db482f0105
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.3.orig.tar.gz.asc' ncurses_6.3.orig.tar.gz.asc 729 SHA512:5673088e7d6af580e8f1e163687146adb51261cd3c75be9ea61368c7590efc0e5e4bc1c2ae76d717f289ff6609089c5ca1f7e4a572266d7b6c5daba98eabed2e
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.3-2ubuntu0.2.debian.tar.xz' ncurses_6.3-2ubuntu0.2.debian.tar.xz 56728 SHA512:9c1cbdc0f7fccb3688d5c5213c6a517b2b48e20c69ef943a8d1f2bf991c601f0c10868bf8e429d614a243869fb94bada2a650af500f17a98b73163b56d1fa96c
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.3-2ubuntu0.2.dsc' ncurses_6.3-2ubuntu0.2.dsc 4251 SHA512:b13bc6afea012563fadc86fd4b22bf27b6ad849a46dc2ecf1d5c3931355f89dd7048ad12bcf01a47f045ef1d79f701bfd4eec40cef3730caf3ca48e484693dbf
```

### `dpkg` source package: `nettle=3.7.3-1build2`

Binary Packages:

- `libhogweed6:amd64=3.7.3-1build2`
- `libnettle8:amd64=3.7.3-1build2`

Licenses: (parsed from: `/usr/share/doc/libhogweed6/copyright`, `/usr/share/doc/libnettle8/copyright`)

- `Expat`
- `GAP`
- `GPL`
- `GPL-2`
- `GPL-2+`
- `GPL-3+`
- `GPL-3+ with Autoconf exception`
- `LGPL`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-3+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris nettle=3.7.3-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.7.3-1build2.dsc' nettle_3.7.3-1build2.dsc 2165 SHA512:3f774011dd48205720ac7e6aa9a44b5afa64c24fce825d6583b58c02f3c8f500ecafa265d18d5deb1ab65d6e938dd76a7917f1d5c3dab0aea28148d531fa26cd
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.7.3.orig.tar.gz' nettle_3.7.3.orig.tar.gz 2383985 SHA512:9901eba305421adff6d551ac7f478dff3f68a339d444c776724ab0b977fe6be792b1d2950c8705acbe76bd924fd6d898a65eded546777884be3b436d0e052437
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.7.3-1build2.debian.tar.xz' nettle_3.7.3-1build2.debian.tar.xz 22100 SHA512:c1935d35e9f04798273053ab92c7405ec225a5d72ba6c2869b0f2bf54b459ac428e113bc149796e91834a8b56082f8bbfbb906a6cd6787142b8932bd1dd83cec
```

### `dpkg` source package: `openssl=3.0.2-0ubuntu1.26`

Binary Packages:

- `libssl3:amd64=3.0.2-0ubuntu1.26`
- `openssl=3.0.2-0ubuntu1.26`

Licenses: (parsed from: `/usr/share/doc/libssl3/copyright`, `/usr/share/doc/openssl/copyright`)

- `Apache-2.0`
- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris openssl=3.0.2-0ubuntu1.26
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_3.0.2.orig.tar.gz' openssl_3.0.2.orig.tar.gz 15038141 SHA512:f986850d5be908b4d6b5fd7091bc4652d7378c9bccebfbc5becd7753843c04c1eb61a1749c432139d263dfac33df0b1f6c773664b485cad47542266823a4eb03
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_3.0.2.orig.tar.gz.asc' openssl_3.0.2.orig.tar.gz.asc 488 SHA512:4303391a58107c76ad9b05510f5bfc95f687f4cb2f9ff5b03fb262ba99b573423ab83f0437471199954496799b343191b889ad9ef8fabdd7ee4ec3ec9b5f1d81
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_3.0.2-0ubuntu1.26.debian.tar.xz' openssl_3.0.2-0ubuntu1.26.debian.tar.xz 293340 SHA512:ad719686887f4755dca3e747723c8222e6a0f019e056e96d0b6d22c92e640b83901a2a3e32af79f288cf72097aca510259b733dffb64d3a777461034244b54c1
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_3.0.2-0ubuntu1.26.dsc' openssl_3.0.2-0ubuntu1.26.dsc 2730 SHA512:fe4685066cac1cf41f5cbfb6f9db7669d0654b746c3a6aaeb8e4598e1a88e6bf7437f23c03732112c5c24135cf98de4e7c951f1a04fc54f2a2b6740a100d551a
```

### `dpkg` source package: `p11-kit=0.24.0-6build1`

Binary Packages:

- `libp11-kit0:amd64=0.24.0-6build1`

Licenses: (parsed from: `/usr/share/doc/libp11-kit0/copyright`)

- `Apache-2.0`
- `BSD-3-Clause`
- `ISC`
- `ISC+IBM`
- `LGPL-2.1`
- `LGPL-2.1+`
- `permissive-like-automake-output`
- `same-as-rest-of-p11kit`

Source:

```console
$ apt-get source -qq --print-uris p11-kit=0.24.0-6build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.24.0-6build1.dsc' p11-kit_0.24.0-6build1.dsc 2633 SHA512:510edf53bc83deef34737f3607995e814695930eacb2257013262023d0c21c3180ac782595bbdc530ea89e8dba567d2f44748a9c6713befb3a3e98245896f179
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.24.0.orig.tar.xz' p11-kit_0.24.0.orig.tar.xz 834392 SHA512:48369d6fdae79b8c5a255c821fbdb982f0c649cce07c0d92f0ff0c16322fea8919faa94067cae2efede2da3646c0e69a71a3e399b769dc2327f247bcb113eb3c
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.24.0.orig.tar.xz.asc' p11-kit_0.24.0.orig.tar.xz.asc 833 SHA512:f802c6f42f437d466b008d0c62aedc2f466bcf5bec93a5fbeec183057d22eacd28184198f624972d9df684a663820e77ebdc8d8c0d14533707691b9d69cb9f69
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.24.0-6build1.debian.tar.xz' p11-kit_0.24.0-6build1.debian.tar.xz 23264 SHA512:a858251688a0655411907d5ac2d122efab057c7bc28dcb3970c68412ca699b00234b74373cbd44472e21cd3f43eab239ddd8411f188e4c214c587052bebedd4c
```

### `dpkg` source package: `pam=1.4.0-11ubuntu2.7`

Binary Packages:

- `libpam-modules:amd64=1.4.0-11ubuntu2.7`
- `libpam-modules-bin=1.4.0-11ubuntu2.7`
- `libpam-runtime=1.4.0-11ubuntu2.7`
- `libpam0g:amd64=1.4.0-11ubuntu2.7`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pam=1.4.0-11ubuntu2.7
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.4.0.orig.tar.xz' pam_1.4.0.orig.tar.xz 988908 SHA512:26eda95c45598a500bc142da4d1abf93d03b3bbb0f2390fa87c72dcbffa208dbfa115c0b411095c31ee9955e36422ccf3e2df3bd486818fafffef8c4310798c4
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.4.0-11ubuntu2.7.debian.tar.xz' pam_1.4.0-11ubuntu2.7.debian.tar.xz 189436 SHA512:82e18faa2478af16dd11705b827bb691c92cc956f31c55c0b414e6397e503c350a7ac641d1e76c4c8130c4cb8324d00f023e93d8f86e4972629757e8dd4a7a1d
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.4.0-11ubuntu2.7.dsc' pam_1.4.0-11ubuntu2.7.dsc 2728 SHA512:7bbd2aef254332c62770e9e110cea4b1544f607e882992b779e69a1625ebb705c2d384f41f58f8eabb4e79de5e5e6aad8d89800f2d49ac2c9202f98a093e5810
```

### `dpkg` source package: `pcre2=10.39-3ubuntu0.1`

Binary Packages:

- `libpcre2-8-0:amd64=10.39-3ubuntu0.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre2=10.39-3ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/pcre2_10.39.orig.tar.gz' pcre2_10.39.orig.tar.gz 2309964 SHA512:fe17ea0191a91d4e4fe88a44a07883db594941376a6e38556e03ff3b594820596fd3e43be2d73b700ca68cd0c44e38c33cc891a57b8ed65e34cd832196bc09b2
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/pcre2_10.39-3ubuntu0.1.diff.gz' pcre2_10.39-3ubuntu0.1.diff.gz 11214 SHA512:7b8848adbd237351d14e68cf13d26fe0330718d2e807c69b091d2eefdd4c5f4ebde9e3b403d898b52ffcff674eb6bd0ff6995190c1fc42668e4bf8173ded7f14
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/pcre2_10.39-3ubuntu0.1.dsc' pcre2_10.39-3ubuntu0.1.dsc 2142 SHA512:8f062a4ba129491e0ec755f945b84e6e6d252e4d87b87ae0dc46156320095557093f7c3305a31cbca9252a2cbc172d701606030ebdae147eef3fbd5616b4ed99
```

### `dpkg` source package: `pcre3=2:8.39-13ubuntu0.22.04.1`

Binary Packages:

- `libpcre3:amd64=2:8.39-13ubuntu0.22.04.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre3=2:8.39-13ubuntu0.22.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39.orig.tar.bz2' pcre3_8.39.orig.tar.bz2 1560758 SHA256:b858099f82483031ee02092711689e7245586ada49e534a06e678b8ea9549e8b
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39-13ubuntu0.22.04.1.debian.tar.gz' pcre3_8.39-13ubuntu0.22.04.1.debian.tar.gz 28251 SHA256:b6542e9adae20f212637f133e892c1d6874d9a21af928ed4cbd94fb77133916e
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39-13ubuntu0.22.04.1.dsc' pcre3_8.39-13ubuntu0.22.04.1.dsc 2101 SHA256:f9c1a08a5856eee3644a4f5bbffe62ff04d21940ebd7798e7b15f48463571867
```

### `dpkg` source package: `perl=5.34.0-3ubuntu1.7`

Binary Packages:

- `libperl5.34:amd64=5.34.0-3ubuntu1.7`
- `perl=5.34.0-3ubuntu1.7`
- `perl-base=5.34.0-3ubuntu1.7`
- `perl-modules-5.34=5.34.0-3ubuntu1.7`

Licenses: (parsed from: `/usr/share/doc/libperl5.34/copyright`, `/usr/share/doc/perl/copyright`, `/usr/share/doc/perl-base/copyright`, `/usr/share/doc/perl-modules-5.34/copyright`)

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
- `SDBM-PUBLIC-DOMAIN`
- `TEXT-TABS`
- `Unicode`
- `ZLIB`

Source:

```console
$ apt-get source -qq --print-uris perl=5.34.0-3ubuntu1.7
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.34.0.orig-regen-configure.tar.xz' perl_5.34.0.orig-regen-configure.tar.xz 415412 SHA512:2581152e0747105314c4fa4167f1f97d286436b996341b9b75e4099ba18f15eb0d2b42888622fbe9b5499d3fe304bc8aa9ad207a945f590135beccfb68ea28b0
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.34.0.orig.tar.xz' perl_5.34.0.orig.tar.xz 12881416 SHA512:691b4b31eacec357191fba777612b4e3eae59e946a22998a50766697c0d61db1d42a9b3bc1e41abf0d1ca1893e4a7c06d7bf3290480cf03d7f79befd7a8a3267
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.34.0-3ubuntu1.7.debian.tar.xz' perl_5.34.0-3ubuntu1.7.debian.tar.xz 202360 SHA512:113a4ac142c5d29a98aac9403e1641a27e06ab6c0472dc6d1063a5b4d643739def16bdef2b441f5d657cf54fe1c82f916034d2d75dc30849839e453540870b6c
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.34.0-3ubuntu1.7.dsc' perl_5.34.0-3ubuntu1.7.dsc 2846 SHA512:b519fc33f507a36e2ba06df6a7df4ffb28f26d8f3977b88b8dd958ac5fd9333c94fa15acfa887f73365b27abbc32caf8b2e337ec48285ac019fd575bab8b2664
```

### `dpkg` source package: `popt=1.18-3build1`

Binary Packages:

- `libpopt0:amd64=1.18-3build1`

Licenses: (parsed from: `/usr/share/doc/libpopt0/copyright`)

- `GPL-2`
- `GPL-2+`
- `X-Consortium`

Source:

```console
$ apt-get source -qq --print-uris popt=1.18-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/popt/popt_1.18-3build1.dsc' popt_1.18-3build1.dsc 2137 SHA512:676aee4a3b3e6cb704f23636af65425f136f232fa3eca7c929d037900abb620b7e192142278841c862ab75c77ea2173c6d8853c883b1a916096ea6e988aa632f
'http://archive.ubuntu.com/ubuntu/pool/main/p/popt/popt_1.18.orig.tar.gz' popt_1.18.orig.tar.gz 580569 SHA512:86422e8762adda3d02d46c20ac74ffe389d4f991d552b6fea729f007345b6426cbeb71160284e2deaa2ce44ce754a9e6cf6ccbd64bff9bc2253df40cdc2f79a5
'http://archive.ubuntu.com/ubuntu/pool/main/p/popt/popt_1.18-3build1.debian.tar.xz' popt_1.18-3build1.debian.tar.xz 13800 SHA512:7f3c894201ccd29df62387d2fcd9db615a92315c695b32aa0ce95416c47de5c08412f42b4e619ebc2014c2c678e4f516d831ee3da24defbca793420b94b7997e
```

### `dpkg` source package: `procps=2:3.3.17-6ubuntu2.1`

Binary Packages:

- `libprocps8:amd64=2:3.3.17-6ubuntu2.1`
- `procps=2:3.3.17-6ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/libprocps8/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris procps=2:3.3.17-6ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.17.orig.tar.xz' procps_3.3.17.orig.tar.xz 1008428 SHA512:59e9a5013430fd9da508c4655d58375dc32e025bb502bb28fb9a92a48e4f2838b3355e92b4648f7384b2050064d17079bf4595d889822ebb5030006bc154a1a7
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.17-6ubuntu2.1.debian.tar.xz' procps_3.3.17-6ubuntu2.1.debian.tar.xz 35488 SHA512:720a52d14be82aecd59e2456fbb19574c99cc5281660a36994ef4aa619c14bbec43fd30b5e949446e5db6b6bebf8003a5f173298fe8bf56ac949d61ad0225a79
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.17-6ubuntu2.1.dsc' procps_3.3.17-6ubuntu2.1.dsc 2111 SHA512:585933efef8d8e93b4187c65b678d146960480386ac3172097c790723ffadbf1d5347e05cc6de2682adcb96dd5b45ec1f98a3e00cff33ad2b30f729939896aca
```

### `dpkg` source package: `psmisc=23.4-2build3`

Binary Packages:

- `psmisc=23.4-2build3`

Licenses: (parsed from: `/usr/share/doc/psmisc/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris psmisc=23.4-2build3
'http://archive.ubuntu.com/ubuntu/pool/main/p/psmisc/psmisc_23.4-2build3.dsc' psmisc_23.4-2build3.dsc 1964 SHA512:483b266d4008e3a1b00f858b14a7a214f2e883da943da542f550760a858f703685383720ce7daf9afc20e71eabe120d2903523a07f440954df81e5a4dc1345b8
'http://archive.ubuntu.com/ubuntu/pool/main/p/psmisc/psmisc_23.4.orig.tar.xz' psmisc_23.4.orig.tar.xz 365480 SHA512:9f9e2b00808f964548a2aff7edaf2e0916e00b4a295021d71e2af4a2dfb06be19537a4160acb10047364c49213059985ffad10cb61973e78a91aaaf52aca4a1d
'http://archive.ubuntu.com/ubuntu/pool/main/p/psmisc/psmisc_23.4-2build3.debian.tar.xz' psmisc_23.4-2build3.debian.tar.xz 7484 SHA512:e0fa5d78528d12b4fe9da260d9312bf7bb3042c96989f23d12fa96e50697cc358e74b8ed2b20f5075bde640b3077281a7f57bf8c1dc473647f048c224524ef0f
```

### `dpkg` source package: `pwgen=2.08-2build1`

Binary Packages:

- `pwgen=2.08-2build1`

Licenses: (parsed from: `/usr/share/doc/pwgen/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris pwgen=2.08-2build1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pwgen/pwgen_2.08-2build1.dsc' pwgen_2.08-2build1.dsc 2102 SHA512:27453f479223b0094ff4a7bc8040732cfcad035dd4a0d9842de7808668a05cea1a120e7ca0b7e00e1d3d85aa2b63964adbdf5f559cb5b1f881beaef67006267f
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pwgen/pwgen_2.08.orig.tar.gz' pwgen_2.08.orig.tar.gz 54884 SHA512:4a930dc7d4c58a4434209db30c54629d76fce57d0fd5767cd7894168bb1a5b85eaae6734a982b0f4e0640540c366ce27ad84860ff2c406dea3f5902b5bb54255
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pwgen/pwgen_2.08.orig.tar.gz.asc' pwgen_2.08.orig.tar.gz.asc 488 SHA512:5f8fec054d6453b2a3ab4157321d7dab456282148f193c589f4d22b1ba9d2c1198a45ccabc19092ecbf2b466f943a0eb995f013de18ff26547d846bf4abc0d78
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pwgen/pwgen_2.08-2build1.debian.tar.xz' pwgen_2.08-2build1.debian.tar.xz 5928 SHA512:50b66319cfbbe843125d769e7dbb8592dbed832b4d013c9ec5bbf677b8388395288b85e517f82aef53158093a4c0c0fe9f56418b8638a09ffe54e82fe166e48b
```

### `dpkg` source package: `readline=8.1.2-1`

Binary Packages:

- `libreadline8:amd64=8.1.2-1`
- `readline-common=8.1.2-1`

Licenses: (parsed from: `/usr/share/doc/libreadline8/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GFDL`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris readline=8.1.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.1.2-1.dsc' readline_8.1.2-1.dsc 2432 SHA512:3166229d2ac183a46455c7d8cf17ef1d509ca8651ffa7887f654d87bbe1d00a08f9a9f73f14e652ac067d89e5d1128998f8f09f6a1128c56049338ace65ed773
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.1.2.orig.tar.gz' readline_8.1.2.orig.tar.gz 2993073 SHA512:b512275c8aa8b3b3178366c6d681f867676fc1c881e375134a88e9c860a448535e04ca43df727817fd0048261e48203e88bd1c086e86572022d1d65fb0350e4d
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.1.2-1.debian.tar.xz' readline_8.1.2-1.debian.tar.xz 29292 SHA512:a64621c93975bc42ba171c9298c932f9515025513911e744183092e0ef9873db474c4ec27a21f310f40e7b970ba6300edb057552f7e90fc469897ffa2eb706f0
```

### `dpkg` source package: `rsync=3.2.7-0ubuntu0.22.04.7`

Binary Packages:

- `rsync=3.2.7-0ubuntu0.22.04.7`

Licenses: (parsed from: `/usr/share/doc/rsync/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris rsync=3.2.7-0ubuntu0.22.04.7
'http://archive.ubuntu.com/ubuntu/pool/main/r/rsync/rsync_3.2.7.orig.tar.gz' rsync_3.2.7.orig.tar.gz 1149787 SHA512:c2afba11a352fd88133f9e96e19d6df80eb864450c83eced13a7faa23df947bccf2ef093f2101df6ee30abff4cbbd39ac802e9aa5f726e42c9caff274fad8377
'http://archive.ubuntu.com/ubuntu/pool/main/r/rsync/rsync_3.2.7.orig.tar.gz.asc' rsync_3.2.7.orig.tar.gz.asc 195 SHA512:bad9f48e033966566c6abf8cd485d35c0d9cf130eafb0c5fff9bcb928882283bbcdd2375e7c2880cf71cf81496ba6b743b61adca3d4678421c32915a2464acc3
'http://archive.ubuntu.com/ubuntu/pool/main/r/rsync/rsync_3.2.7-0ubuntu0.22.04.7.debian.tar.xz' rsync_3.2.7-0ubuntu0.22.04.7.debian.tar.xz 117112 SHA512:101a127700ecfe11bd909431456be8f74567351d53ff2f836d489a58f89870ae5b6751071581ca6c371ca46f4aca528a645be37a0e9ce44d9de02ce59f09a5cb
'http://archive.ubuntu.com/ubuntu/pool/main/r/rsync/rsync_3.2.7-0ubuntu0.22.04.7.dsc' rsync_3.2.7-0ubuntu0.22.04.7.dsc 2402 SHA512:f86c75b7e087fd901bb3d815a09d9a501e0dd3dffd797c2d1a1a7797a5f5bd4ea6403c53806c24b59e32bbcad1698104d51bc48bb5be6c45f3ae65fd1149aef3
```

### `dpkg` source package: `sed=4.8-1ubuntu2.1`

Binary Packages:

- `sed=4.8-1ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris sed=4.8-1ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.8.orig.tar.xz' sed_4.8.orig.tar.xz 1348048 SHA512:7de25d9bc2981c63321c2223f3fbcab61d7b0df4fcf7d4394b72400b91993e1288d8bf53948ed5fffcf5a98c75265726a68ad4fb98e1d571bf768603a108c1c8
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.8.orig.tar.xz.asc' sed_4.8.orig.tar.xz.asc 833 SHA512:9b886bdbd18ee2d60608cee3fd2b4193a1b6c3309d887ee05828c14b89b7b515dbf042a9e0ebdd13e6ccfa42e3cd217a408c796d68c4ebedaaa64f795000f095
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.8-1ubuntu2.1.debian.tar.xz' sed_4.8-1ubuntu2.1.debian.tar.xz 61312 SHA512:f99f3eb1f1121ae234afdd189b6795c4c6e0fcd8c7c25db280f20c4e99e7dd464c6d93306d8b64e9956b03aeb653fb2a4a5d4e5548b87e3d7ec2b1ed88904502
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.8-1ubuntu2.1.dsc' sed_4.8-1ubuntu2.1.dsc 2196 SHA512:d62a76d7256b4c2a95541a3bbba904129129d33a2b70e563c98913770208bad64e056470bcda33b455439bfed1ec7bedc28e1d4d00ad9f7227b30a528920bd29
```

### `dpkg` source package: `sensible-utils=0.0.17`

Binary Packages:

- `sensible-utils=0.0.17`

Licenses: (parsed from: `/usr/share/doc/sensible-utils/copyright`)

- `All-permissive`
- `GPL-2`
- `GPL-2+`
- `configure`
- `installsh`

Source:

```console
$ apt-get source -qq --print-uris sensible-utils=0.0.17
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.17.dsc' sensible-utils_0.0.17.dsc 1733 SHA512:33e94cbe40fbcb083564b4e4f5947f7c4dc0da0724245d19290667cf8a56eb60ba5b94c0c85e8eee2ae7c988a25a094e7edff3159bbe4339dcf9136a6336f2f7
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.17.tar.xz' sensible-utils_0.0.17.tar.xz 66648 SHA512:fb7803cacc4222f232f64850e5559aca0b56ad98b6fd31f36c89740d72f7a235e7f2934ebce1d788882bff7196d59a2ed6cc3584f31e1c1c9e3593cedca2382b
```

### `dpkg` source package: `shadow=1:4.8.1-2ubuntu2.2`

Binary Packages:

- `login=1:4.8.1-2ubuntu2.2`
- `passwd=1:4.8.1-2ubuntu2.2`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.8.1-2ubuntu2.2
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.8.1.orig.tar.xz' shadow_4.8.1.orig.tar.xz 1611196 SHA256:a3ad4630bdc41372f02a647278a8c3514844295d36eefe68ece6c3a641c1ae62
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.8.1-2ubuntu2.2.debian.tar.xz' shadow_4.8.1-2ubuntu2.2.debian.tar.xz 98488 SHA256:7ea89214714f06a15925f6fb89de4d96a61ad5fc18bbd2ed210e7c4568f63391
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.8.1-2ubuntu2.2.dsc' shadow_4.8.1-2ubuntu2.2.dsc 2060 SHA256:09708d1e384f6b9d3ff1f65aa6c05db9260050e523c9e7a99331f60a42880d61
```

### `dpkg` source package: `socat=1.7.4.1-3ubuntu4`

Binary Packages:

- `socat=1.7.4.1-3ubuntu4`

Licenses: (parsed from: `/usr/share/doc/socat/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris socat=1.7.4.1-3ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/s/socat/socat_1.7.4.1-3ubuntu4.dsc' socat_1.7.4.1-3ubuntu4.dsc 1967 SHA512:d68c0b0d60d52d00adef721f8306c3fe9559340bb174596beac4bc9f0e8513ce66a0edb04ad29dee0f1c9892aa5e76fdbdbdb0931a9c09ddb06841569b21405b
'http://archive.ubuntu.com/ubuntu/pool/main/s/socat/socat_1.7.4.1.orig.tar.gz' socat_1.7.4.1.orig.tar.gz 648888 SHA512:e43c8b23a841aea5ecc3ac324185ee4ada552a8284ec41b99245def2d8b493bca9caea1af6f646f434a7eda67a1dd71e4e037eea65fce0444840236eadb126a6
'http://archive.ubuntu.com/ubuntu/pool/main/s/socat/socat_1.7.4.1-3ubuntu4.debian.tar.xz' socat_1.7.4.1-3ubuntu4.debian.tar.xz 11020 SHA512:2f7e9f726991b1bf7c93a20a5869cb43db167dfccb3e67aa459e81e0d28d90b121bd596abbdc59e70a413eeef1125551e93dc1d1aa814661faf685ba8f8ff785
```

### `dpkg` source package: `sqlite3=3.37.2-2ubuntu0.7`

Binary Packages:

- `libsqlite3-0:amd64=3.37.2-2ubuntu0.7`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.37.2-2ubuntu0.7
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.37.2.orig-www.tar.xz' sqlite3_3.37.2.orig-www.tar.xz 5694016 SHA512:577e34b4ae18a3c73be6d955a2e2321e993f61decefbcca5112170072ea556eca93dcf55f3059fbcd96147124442b368150de7f68c603e84b80cbe0228ae78f8
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.37.2.orig.tar.xz' sqlite3_3.37.2.orig.tar.xz 7623768 SHA512:dfa51b0a32ab0597cd00ae7abdb53bb255102f397ff8409f3fdbefaad17bc7d5a25f53db90bed47feb1bf4a9a1a4707bc40440c6c5303f3ef5c49ded61558fed
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.37.2-2ubuntu0.7.debian.tar.xz' sqlite3_3.37.2-2ubuntu0.7.debian.tar.xz 35636 SHA512:429a023d4091e462e5d8fd72058ae1cf6a62f72f9b6e8d719e689a407b1d7821615549303caa9923929b0ace22aee5aa72cbeaa0df052c7c244c0bfc265fbf7b
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.37.2-2ubuntu0.7.dsc' sqlite3_3.37.2-2ubuntu0.7.dsc 2602 SHA512:d61457ec1210cc5ec0fe94ff343d071bd851b38482223d1f53c81dea045d2571136a885aeb49d8e44041b7444506f31e9874bd67ef18687a7fbf8b74b17d464a
```

### `dpkg` source package: `systemd=249.11-0ubuntu3.22`

Binary Packages:

- `libsystemd0:amd64=249.11-0ubuntu3.22`
- `libudev1:amd64=249.11-0ubuntu3.22`

Licenses: (parsed from: `/usr/share/doc/libsystemd0/copyright`, `/usr/share/doc/libudev1/copyright`)

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
$ apt-get source -qq --print-uris systemd=249.11-0ubuntu3.22
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_249.11.orig.tar.gz' systemd_249.11.orig.tar.gz 10622702 SHA512:fed7f81933648945a4bfac9fb12150ecd84d32181f79be0e14e0b3a789343a87569f868670e0b8dfc2801fab39f7490f95ee8c29ba831d7611f78c14ace5ddd8
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_249.11-0ubuntu3.22.debian.tar.xz' systemd_249.11-0ubuntu3.22.debian.tar.xz 275816 SHA512:54dbb3c8a8ae9e41a8fe1ee3ea2d76d8c7ca03aa0b9a0ffd8b26fc2cd068ef82ac5d30d4b2dda00e36c2ff517d79ef99aa5128cf185bc99ea2f30f6b4e356f20
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_249.11-0ubuntu3.22.dsc' systemd_249.11-0ubuntu3.22.dsc 5907 SHA512:ad316eccb5926c87ce9f9c113beac8ecc49acc0a2879fc98666f4f9cacdb111eb8e43e8ebc4b97c98a0eaea4a5675caf2eb8e6cbca5f3fb26eb07acd6af226df
```

### `dpkg` source package: `sysvinit=3.01-1ubuntu1`

Binary Packages:

- `sysvinit-utils=3.01-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=3.01-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_3.01-1ubuntu1.dsc' sysvinit_3.01-1ubuntu1.dsc 2138 SHA512:650c939b7af5189cddf6509dd2b6a995c7b389ab4ee33bdad267d8c2b5b5506716b03e512563ed3e3265b32d2d1a9119ee0193f3dc82354896029ae124d2a276
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_3.01.orig.tar.xz' sysvinit_3.01.orig.tar.xz 126400 SHA512:d3b197fcfccfbc2ad95fe208fb37ed1fcc8173a7a0254528c0d8c6800b054d96e20b48274c55137f19305c105700c35974d454b4bbf5e51fbbf5c082d562167b
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_3.01-1ubuntu1.debian.tar.xz' sysvinit_3.01-1ubuntu1.debian.tar.xz 131304 SHA512:4c835855b58742480284b17959d54b8ac734466fc87321ddf021b61bb3e38b58aab6d07a7f27f09c0b109b4e442c0dce4d797feccce2884f5b401e13abf73554
```

### `dpkg` source package: `tar=1.34+dfsg-1ubuntu0.1.22.04.6`

Binary Packages:

- `tar=1.34+dfsg-1ubuntu0.1.22.04.6`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris tar=1.34+dfsg-1ubuntu0.1.22.04.6
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.34%2bdfsg.orig.tar.xz' tar_1.34+dfsg.orig.tar.xz 1981736 SHA512:ec5553c53c4a5f523f872a8095f699c17bf41400fbe2f0f8b45291ccbaf9ac51dea8445c81bd95697f8853c95dcad3250071d23dbbcab857a428ee92e647bde9
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.34%2bdfsg-1ubuntu0.1.22.04.6.debian.tar.xz' tar_1.34+dfsg-1ubuntu0.1.22.04.6.debian.tar.xz 56112 SHA512:7d6b0fb0ba6a108b0dd6391a3fee149def427546ed3211fa66f66856c5c38951f7bb66f5c266a3c1dc94b67a80c01dca66ccb931fee097770659c33c605ec8f2
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.34%2bdfsg-1ubuntu0.1.22.04.6.dsc' tar_1.34+dfsg-1ubuntu0.1.22.04.6.dsc 2137 SHA512:241abe5448d21d179d971acb8be6aa39c9efbab8fa2e54bc16acb12fd4ffa520971e35124024f5ea410ab3ebf437448fa7394f0785c5f189eb31a5b2d35ba9a6
```

### `dpkg` source package: `tcp-wrappers=7.6.q-31build2`

Binary Packages:

- `libwrap0:amd64=7.6.q-31build2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris tcp-wrappers=7.6.q-31build2
'http://archive.ubuntu.com/ubuntu/pool/main/t/tcp-wrappers/tcp-wrappers_7.6.q-31build2.dsc' tcp-wrappers_7.6.q-31build2.dsc 2068 SHA512:febbe1cbc39643aad1498002df568c22778d9f0abe1e06a164233615d7550bd56ebedb38cdbc2a427b5efbe7fa724e24751c812186472fecd7a0323382a67b11
'http://archive.ubuntu.com/ubuntu/pool/main/t/tcp-wrappers/tcp-wrappers_7.6.q.orig.tar.gz' tcp-wrappers_7.6.q.orig.tar.gz 99438 SHA512:2d9d003791f8d00912a36ae00579e2b8dd7ad8a7bf8eae259659bcaf5365b150540ff6c93c91765872c76041579b7a02b6e3c64528fb7f8235680399ba1d9dac
'http://archive.ubuntu.com/ubuntu/pool/main/t/tcp-wrappers/tcp-wrappers_7.6.q-31build2.debian.tar.xz' tcp-wrappers_7.6.q-31build2.debian.tar.xz 36420 SHA512:7b6cadfbbbfc653234fdc24ee2b4818897efda54221eae61ae32e0d5161544408bf4de28a27eddaa2d1cb8338608300c212bf4479fdcaac74b2e0416b2846e18
```

### `dpkg` source package: `tzdata=2026c-0ubuntu0.22.04.1`

Binary Packages:

- `tzdata=2026c-0ubuntu0.22.04.1`

Licenses: (parsed from: `/usr/share/doc/tzdata/copyright`)

- `ICU`

Source:

```console
$ apt-get source -qq --print-uris tzdata=2026c-0ubuntu0.22.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2026c.orig.tar.gz' tzdata_2026c.orig.tar.gz 475694 SHA512:e0b4b7044b66fbc27bc21d13d18063abcdf78ab58d5ba5fd64bd1a88d86e9d495f45add4d8e65bb6c40249f9c94ca29b72c8ebba8d0e4c468f2965ac77932ef0
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2026c.orig.tar.gz.asc' tzdata_2026c.orig.tar.gz.asc 833 SHA512:e1d44216608666bfb8a1855caacc9e6d30a1576f302c4db59faf8ec6aa2f7d5ae299c4c9b17b255b9612c30582358ca2a48f5fea82ab9b7d77d030e713c9010d
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2026c-0ubuntu0.22.04.1.debian.tar.xz' tzdata_2026c-0ubuntu0.22.04.1.debian.tar.xz 181592 SHA512:27f9c5b13dea3747eca6211e4a9625e7c34cbe87120c200bca53da73428afe8efd9995747c7615a29d3ec0ad73fd4c0fdb390aacafe8d3e2f0e1e9fa82766453
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2026c-0ubuntu0.22.04.1.dsc' tzdata_2026c-0ubuntu0.22.04.1.dsc 2541 SHA512:885f4f4ae09e8d0b60288a55a11fe54b4cc83069ec795f6deea52bbc0846ecb236eefe854ebdb7a000f776a002e5ebb8f96571815103053ce944d79322d3d20a
```

### `dpkg` source package: `ubuntu-keyring=2021.03.26`

Binary Packages:

- `ubuntu-keyring=2021.03.26`

Licenses: (parsed from: `/usr/share/doc/ubuntu-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris ubuntu-keyring=2021.03.26
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2021.03.26.dsc' ubuntu-keyring_2021.03.26.dsc 1855 SHA512:7502f4f4d9a288fab9fb84b6ae5f8500cb3f14c68ed586b489dee95f12087b232bcecd9369e98258bb710afda50e5672dfbc6422b1436e896fb529dec8832252
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2021.03.26.tar.gz' ubuntu-keyring_2021.03.26.tar.gz 34529 SHA512:04a76e2bfa88fb428face9e01976ff98a3a26fe2b555340c14200fc6099ee3b474a6733486cedfe933933c0a6826ee3550660499d7b26bda8a27a620b1d6a35f
```

### `dpkg` source package: `usrmerge=25ubuntu2`

Binary Packages:

- `usrmerge=25ubuntu2`

Licenses: (parsed from: `/usr/share/doc/usrmerge/copyright`)

- `GPL v2`
- `GPL-2`
- `later (please see /usr/share/common-licenses/GPL-2)`

Source:

```console
$ apt-get source -qq --print-uris usrmerge=25ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/u/usrmerge/usrmerge_25ubuntu2.dsc' usrmerge_25ubuntu2.dsc 1614 SHA512:2f0ea8dbed8277d1fef2f2c70c0075ce509579161fe2dc3a161919d3015c67caff01aa14ba3df7fa7d6b45ce63dbad48389c418781334d83e308ee16988fa9bc
'http://archive.ubuntu.com/ubuntu/pool/main/u/usrmerge/usrmerge_25ubuntu2.tar.xz' usrmerge_25ubuntu2.tar.xz 12812 SHA512:dac8ccc7e2b75c424990713869f80d62d22e1cd86cb35c1784c7e76a12096b8c3f3000cefb406456f6f5c459d14858e710d426ee11714d1a5e342e04186f8353
```

### `dpkg` source package: `util-linux=2.37.2-4ubuntu3.5`

Binary Packages:

- `bsdutils=1:2.37.2-4ubuntu3.5`
- `libblkid1:amd64=2.37.2-4ubuntu3.5`
- `libmount1:amd64=2.37.2-4ubuntu3.5`
- `libsmartcols1:amd64=2.37.2-4ubuntu3.5`
- `libuuid1:amd64=2.37.2-4ubuntu3.5`
- `mount=2.37.2-4ubuntu3.5`
- `util-linux=2.37.2-4ubuntu3.5`

Licenses: (parsed from: `/usr/share/doc/bsdutils/copyright`, `/usr/share/doc/libblkid1/copyright`, `/usr/share/doc/libmount1/copyright`, `/usr/share/doc/libsmartcols1/copyright`, `/usr/share/doc/libuuid1/copyright`, `/usr/share/doc/mount/copyright`, `/usr/share/doc/util-linux/copyright`)

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
$ apt-get source -qq --print-uris util-linux=2.37.2-4ubuntu3.5
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.37.2.orig.tar.xz' util-linux_2.37.2.orig.tar.xz 5621624 SHA256:6a0764c1aae7fb607ef8a6dd2c0f6c47d5e5fd27aa08820abaad9ec14e28e9d9
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.37.2-4ubuntu3.5.debian.tar.xz' util-linux_2.37.2-4ubuntu3.5.debian.tar.xz 115268 SHA256:fe69a2cc84ddcfb17a47f57b8c39c3919844bd92ef8868b40676656025f391c8
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.37.2-4ubuntu3.5.dsc' util-linux_2.37.2-4ubuntu3.5.dsc 4550 SHA256:024c983405cf31b5ba1230c99d27fd340552c0f59e05b4d94f222d9e399ac522
```

### `dpkg` source package: `xxhash=0.8.1-1`

Binary Packages:

- `libxxhash0:amd64=0.8.1-1`

Licenses: (parsed from: `/usr/share/doc/libxxhash0/copyright`)

- `BSD-2-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris xxhash=0.8.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xxhash/xxhash_0.8.1-1.dsc' xxhash_0.8.1-1.dsc 1966 SHA512:645799311fdf21568b23134cdf586a54bb32b58639adb8ebc1f5ad26fdfdc485506c87d763133163fde705b2f904d6f01f50e4d13ebec2b476d38e66ded2bf22
'http://archive.ubuntu.com/ubuntu/pool/main/x/xxhash/xxhash_0.8.1.orig.tar.gz' xxhash_0.8.1.orig.tar.gz 171552 SHA512:12feedd6a1859ef55e27218dbd6dcceccbb5a4da34cd80240d2f7d44cd246c7afdeb59830c2d5b90189bb5159293532208bf5bb622250102e12d6e1bad14a193
'http://archive.ubuntu.com/ubuntu/pool/main/x/xxhash/xxhash_0.8.1-1.debian.tar.xz' xxhash_0.8.1-1.debian.tar.xz 4572 SHA512:e59d4fc6f736d3af6f7be3ec64fc1ee4382e917a942e4000159652082e2f73f52ae0f72adb98505ac9bd8894a89800e21c0913ba4b511959f07a2bc84c341920
```

### `dpkg` source package: `xz-utils=5.2.5-2ubuntu1.1`

Binary Packages:

- `liblzma5:amd64=5.2.5-2ubuntu1.1`
- `xz-utils=5.2.5-2ubuntu1.1`

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
$ apt-get source -qq --print-uris xz-utils=5.2.5-2ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.5.orig.tar.xz' xz-utils_5.2.5.orig.tar.xz 1148824 SHA512:59266068a51cb616eb31b67cd8f07ffeb2288d1391c61665ae2ec6814465afac80fec69248f6a2f2db45b44475af001296a99af6a32287226a9c41419173ccbb
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.5.orig.tar.xz.asc' xz-utils_5.2.5.orig.tar.xz.asc 833 SHA512:582864ae306861ede34074ebfd23ab161ad3340ab4a068f727583de2bd2058da70dfe73019f4e70b8267e0e0c62f275da1e23f47d40c0b80038449b0ac335020
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.5-2ubuntu1.1.debian.tar.xz' xz-utils_5.2.5-2ubuntu1.1.debian.tar.xz 36020 SHA512:2baca5944d2af4f31e3f41d0e3a4c9e0fe03963210947347d0abcb28775165be1097f5b8c195162eb0c6a0a85694588ef0c7bb6a8315dc6c984f2320964c24a5
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.5-2ubuntu1.1.dsc' xz-utils_5.2.5-2ubuntu1.1.dsc 2467 SHA512:ce7120ae2e0320d6ff5d13419fc8b77cd368cc6f7c258d7ffde97e4522eb1e5595f6c418efe88dff2b67ebac9976e89dccfff0961b4912ac63d129dd2bb8b47f
```

### `dpkg` source package: `zlib=1:1.2.11.dfsg-2ubuntu9.2`

Binary Packages:

- `zlib1g:amd64=1:1.2.11.dfsg-2ubuntu9.2`

Licenses: (parsed from: `/usr/share/doc/zlib1g/copyright`)

- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.11.dfsg-2ubuntu9.2
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg.orig.tar.gz' zlib_1.2.11.dfsg.orig.tar.gz 370248 SHA256:80c481411a4fe8463aeb8270149a0e80bb9eaf7da44132b6e16f2b5af01bc899
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg-2ubuntu9.2.debian.tar.xz' zlib_1.2.11.dfsg-2ubuntu9.2.debian.tar.xz 60140 SHA256:5678d0b3d1e609297e5a3dedfcb3474bab1cafe82c0c29aec2cef01e49a88d39
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg-2ubuntu9.2.dsc' zlib_1.2.11.dfsg-2ubuntu9.2.dsc 2649 SHA256:ac50a5e5803c128eaef7eceda71fa13ffab3ed1e949008be244d8754d9c59e47
```
