# `xwiki:18`

## Docker Metadata

- Image ID: `sha256:e35857bac9e1d1932e44795e35f0d976b1f393c76a16c03990cd4db2011dfeba`
- Created: `2026-07-08T17:03:24.878522665Z`
- Virtual Size: ~ 1.33 Gb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-entrypoint.sh"]`
- Command: `["xwiki"]`
- Environment:
  - `PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `JAVA_HOME=/opt/java/openjdk`
  - `LANG=en_US.UTF-8`
  - `LANGUAGE=en_US:en`
  - `LC_ALL=en_US.UTF-8`
  - `JAVA_VERSION=jdk-21.0.11+10`
  - `CATALINA_HOME=/usr/local/tomcat`
  - `TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib`
  - `LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib`
  - `TOMCAT_MAJOR=10`
  - `TOMCAT_VERSION=10.1.57`
  - `TOMCAT_SHA512=2fa1866ec647d4222b07ea937a4cc266adee219a1a8870107e72fc2349248dd1e32b157fa18108451f4c6e3b162f0fdfbdd11dd7855d4e49a2f0f609004a77f3`
  - `XWIKI_VERSION=18.5.0`
  - `XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/18.5.0`
  - `XWIKI_DOWNLOAD_SHA256=649a5c53bc7ca02d80b3a3dcd1c03a7534ff868b6fe4f6eafa198602bc31c6df`
  - `MYSQL_JDBC_VERSION=9.7.0`
  - `MYSQL_JDBC_SHA256=0353648eaa1c91e0f4020c959abf756bc866ffd583df22ae6b6f6e0cbd43eb44`
  - `MYSQL_JDBC_PREFIX=https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/9.7.0`
  - `MYSQL_JDBC_ARTIFACT=mysql-connector-j-9.7.0.jar`
  - `MYSQL_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mysql-connector-j-9.7.0.jar`
- Labels:
  - `org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>`
  - `org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki`
  - `org.opencontainers.image.licenses=LGPL-2.1`
  - `org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git`
  - `org.opencontainers.image.url=https://hub.docker.com/_/xwiki`
  - `org.opencontainers.image.vendor=xwiki.org`
  - `org.opencontainers.image.version=24.04`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `abseil=20220623.1-3.1ubuntu3.2`

Binary Packages:

- `libabsl20220623t64:amd64=20220623.1-3.1ubuntu3.2`

Licenses: (parsed from: `/usr/share/doc/libabsl20220623t64/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris abseil=20220623.1-3.1ubuntu3.2
'http://archive.ubuntu.com/ubuntu/pool/main/a/abseil/abseil_20220623.1.orig.tar.gz' abseil_20220623.1.orig.tar.gz 1957272 SHA256:abfe2897f3a30edaa74bc34365afe3c2a3cd012091a97dc7e008f7016adcd5fe
'http://archive.ubuntu.com/ubuntu/pool/main/a/abseil/abseil_20220623.1-3.1ubuntu3.2.debian.tar.xz' abseil_20220623.1-3.1ubuntu3.2.debian.tar.xz 10380 SHA256:10cd95eb3664eeee653789488662aa9dfd8c185c1892fe759f073bfe15db055a
'http://archive.ubuntu.com/ubuntu/pool/main/a/abseil/abseil_20220623.1-3.1ubuntu3.2.dsc' abseil_20220623.1-3.1ubuntu3.2.dsc 2683 SHA256:a16ea209397a9b8605e2b688ff6aab4e1c889e6cd2e9070095d1236062998e20
```

### `dpkg` source package: `acl=2.3.2-1build1.1`

Binary Packages:

- `libacl1:amd64=2.3.2-1build1.1`

Licenses: (parsed from: `/usr/share/doc/libacl1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris acl=2.3.2-1build1.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.3.2.orig.tar.xz' acl_2.3.2.orig.tar.xz 371680 SHA256:97203a72cae99ab89a067fe2210c1cbf052bc492b479eca7d226d9830883b0bd
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.3.2.orig.tar.xz.asc' acl_2.3.2.orig.tar.xz.asc 833 SHA256:184c6a903490885a096095db67b433a04542c6569f167cbe8115268c0f227273
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.3.2-1build1.1.debian.tar.xz' acl_2.3.2-1build1.1.debian.tar.xz 23472 SHA256:0d324adb403a50aa2889a11e098d34ce5adecd1cb89f83799f66dbb1d8b71280
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.3.2-1build1.1.dsc' acl_2.3.2-1build1.1.dsc 2616 SHA256:da831b979338d324df2adcedd5a06f9a5f303e83be2b43d58ee39288dde8fc88
```

### `dpkg` source package: `adduser=3.137ubuntu1`

Binary Packages:

- `adduser=3.137ubuntu1`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.137ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.137ubuntu1.dsc' adduser_3.137ubuntu1.dsc 1862 SHA512:4e32edd8d12689bc8f6fb2b5280b0504bbd19bdd963cebb32a016d87fbeb837cbfb9c4c544b37943adf346d33137c684936591ccbf5c89856a91f2777f00ae49
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.137ubuntu1.tar.xz' adduser_3.137ubuntu1.tar.xz 280408 SHA512:46979160ef2f6b85097958cd11e549ae48efa24e1719155fd90ae7b322c0adac087cac7d0a709cd084ee11557575b05dfde89a9d63bcfd80fb47779c41098d48
```

### `dpkg` source package: `apr=1.7.2-3.1ubuntu0.1`

Binary Packages:

- `libapr1t64:amd64=1.7.2-3.1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libapr1t64/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr=1.7.2-3.1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.7.2.orig.tar.bz2' apr_1.7.2.orig.tar.bz2 890218 SHA256:75e77cc86776c030c0a5c408dfbd0bf2a0b75eed5351e52d5439fa1e5509a43e
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.7.2.orig.tar.bz2.asc' apr_1.7.2.orig.tar.bz2.asc 833 SHA256:3e45e804041cfd112d3710db11424e861a6f96e5b8908fcb73bc558f7d480f37
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.7.2-3.1ubuntu0.1.debian.tar.xz' apr_1.7.2-3.1ubuntu0.1.debian.tar.xz 55364 SHA256:a5f73cc386d86cd8488bfaeb30afb2b5b20e57040feb389053322d30feb6c0c8
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.7.2-3.1ubuntu0.1.dsc' apr_1.7.2-3.1ubuntu0.1.dsc 1808 SHA256:fd1f3064e8e1eb6b38b2d8189857acc76af4d09cc4a04cb6ad545fdb9f3bb622
```

### `dpkg` source package: `apt=2.8.3`

Binary Packages:

- `apt=2.8.3`
- `libapt-pkg6.0t64:amd64=2.8.3`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg6.0t64/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris apt=2.8.3
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_2.8.3.tar.xz' apt_2.8.3.tar.xz 2354680 SHA256:088522b3613b28fdbcfa61f1f7e476bf6dc6b0120a8f74409e9527580c9f9d3b
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_2.8.3.dsc' apt_2.8.3.dsc 2973 SHA256:1d41cd04115e1a79f0fa4d738e5c34603ae8a4f40122d8a18a622fd6d20a5523
```

### `dpkg` source package: `argon2=0~20190702+dfsg-4build1`

Binary Packages:

- `libargon2-1:amd64=0~20190702+dfsg-4build1`

Licenses: (parsed from: `/usr/share/doc/libargon2-1/copyright`)

- `Apache-2.0`
- `CC0`

Source:

```console
$ apt-get source -qq --print-uris argon2=0~20190702+dfsg-4build1
'http://archive.ubuntu.com/ubuntu/pool/main/a/argon2/argon2_0%7e20190702%2bdfsg-4build1.dsc' argon2_0~20190702+dfsg-4build1.dsc 2362 SHA512:0d3516c851183381bb73d7b2a12e604282f7ca6ed0d4cca28335c656deb5430cb9131de99de3069b89f5f5ae76415fb9f780d1e1aa3bf89c4d1fed8232f9d14e
'http://archive.ubuntu.com/ubuntu/pool/main/a/argon2/argon2_0%7e20190702%2bdfsg.orig.tar.xz' argon2_0~20190702+dfsg.orig.tar.xz 725424 SHA512:724c8f03b64830c0d66b5835dc2172f49ad7b351d4902303b73788ff1c6946717c64fe342b3e18831924fdb838e4d7bd06ec8061b8aa5bff08bb7bc28f326b0a
'http://archive.ubuntu.com/ubuntu/pool/main/a/argon2/argon2_0%7e20190702%2bdfsg-4build1.debian.tar.xz' argon2_0~20190702+dfsg-4build1.debian.tar.xz 9392 SHA512:95838bafde0cf099e55426bac0b147218abfdd7348380988efec88d2edb9a01dbdbcd8813ec9534c868addd4ce141db14b0ab34605f1fd52d6617366d6837991
```

### `dpkg` source package: `attr=1:2.5.2-1build1.1`

Binary Packages:

- `libattr1:amd64=1:2.5.2-1build1.1`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris attr=1:2.5.2-1build1.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.5.2.orig.tar.xz' attr_2.5.2.orig.tar.xz 334180 SHA256:f2e97b0ab7ce293681ab701915766190d607a1dba7fae8a718138150b700a70b
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.5.2.orig.tar.xz.asc' attr_2.5.2.orig.tar.xz.asc 833 SHA256:eeac729088d3c6379e91b7596cb3582e46b047c47f0fa3c5c77f9c9e84dc3a4c
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.5.2-1build1.1.debian.tar.xz' attr_2.5.2-1build1.1.debian.tar.xz 26032 SHA256:9d020c0d557c8a932da9e330683e2cfaa8afc932bd9181b96dfda23077901e7f
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.5.2-1build1.1.dsc' attr_2.5.2-1build1.1.dsc 2588 SHA256:0397ea8ae0991bbf21ca031e5312439f3b050f185c3016ef52ba4c627493debe
```

### `dpkg` source package: `audit=1:3.1.2-2.1build1.1`

Binary Packages:

- `libaudit-common=1:3.1.2-2.1build1.1`
- `libaudit1:amd64=1:3.1.2-2.1build1.1`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-1`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:3.1.2-2.1build1.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_3.1.2.orig.tar.gz' audit_3.1.2.orig.tar.gz 1219860 SHA256:c0b1792d1f0a88c6f1828710509cbb987059fc68712c97669ca90eae103d287d
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_3.1.2-2.1build1.1.debian.tar.xz' audit_3.1.2-2.1build1.1.debian.tar.xz 18860 SHA256:ed9d8bb3ff1194b6c8943c7768596383f995b1d45dbc57b8f5ca5868a7b22558
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_3.1.2-2.1build1.1.dsc' audit_3.1.2-2.1build1.1.dsc 2848 SHA256:3df86dee4b6d645173901fad492776add35f82c4e7c58cd8a4f82931a2588324
```

### `dpkg` source package: `avahi=0.8-13ubuntu6.2`

Binary Packages:

- `libavahi-client3:amd64=0.8-13ubuntu6.2`
- `libavahi-common-data:amd64=0.8-13ubuntu6.2`
- `libavahi-common3:amd64=0.8-13ubuntu6.2`

Licenses: (parsed from: `/usr/share/doc/libavahi-client3/copyright`, `/usr/share/doc/libavahi-common-data/copyright`, `/usr/share/doc/libavahi-common3/copyright`)

- `GPL`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris avahi=0.8-13ubuntu6.2
'http://archive.ubuntu.com/ubuntu/pool/main/a/avahi/avahi_0.8.orig.tar.gz' avahi_0.8.orig.tar.gz 1591458 SHA512:c6ba76feb6e92f70289f94b3bf12e5f5c66c11628ce0aeb3cadfb72c13a5d1a9bd56d71bdf3072627a76cd103b9b056d9131aa49ffe11fa334c24ab3b596c7de
'http://archive.ubuntu.com/ubuntu/pool/main/a/avahi/avahi_0.8-13ubuntu6.2.debian.tar.xz' avahi_0.8-13ubuntu6.2.debian.tar.xz 52976 SHA512:91bb304e4796ff40670283194b31582d0009e8ae7b4a40bf1b2ac4884a84b7bf4c192576fd414e62ca58f540ad59c7b1f0c4e03dae94df0fe99ee755c8eec135
'http://archive.ubuntu.com/ubuntu/pool/main/a/avahi/avahi_0.8-13ubuntu6.2.dsc' avahi_0.8-13ubuntu6.2.dsc 4231 SHA512:8d33efa977c297b1aea7e2ad27f6362c2f2c149371e040e0e992959ba9472cf356a0257c05c123f15639c6795892f7a7b66243f3a9a6d09c8dd810ca40a9ae82
```

### `dpkg` source package: `base-files=13ubuntu10.4`

Binary Packages:

- `base-files=13ubuntu10.4`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=13ubuntu10.4
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_13ubuntu10.4.tar.xz' base-files_13ubuntu10.4.tar.xz 94240 SHA256:3656f87d5a7ed92ac53cece416f918099e7e4f90281c3effcc346e2ce09c653d
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_13ubuntu10.4.dsc' base-files_13ubuntu10.4.dsc 1642 SHA256:db0386e7111a5e0b1f9d473b1fdae76f421f0df4e66edfdbc8060cf3dc92a561
```

### `dpkg` source package: `base-passwd=3.6.3build1`

Binary Packages:

- `base-passwd=3.6.3build1`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.6.3build1
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.6.3build1.dsc' base-passwd_3.6.3build1.dsc 1779 SHA512:b22ef01978e2b6aed82e54c28b7f06550cc0a41518f1561054148df9d3adb567e203b793e532924a9ae27201c5a2a31fef149f77217d06d8b12f8fce05e2f34d
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.6.3build1.tar.xz' base-passwd_3.6.3build1.tar.xz 58252 SHA512:981b05acb6727b32fe343e761eeacee2a2061da3802999de7e10f95dfae3fdb0bd52b96001e13bf302f7be137ac6b85d6d36041ee29b9eb62f6fa21622a00ac9
```

### `dpkg` source package: `bash=5.2.21-2ubuntu4`

Binary Packages:

- `bash=5.2.21-2ubuntu4`

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
$ apt-get source -qq --print-uris bash=5.2.21-2ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_5.2.21-2ubuntu4.dsc' bash_5.2.21-2ubuntu4.dsc 2437 SHA512:7e783b1a20b339b2c15070e1cf3419a10e94a17c9dda520025b6eeb07f285dcbe8455aa1647254fc422cb314dd1382ef97c65cab088793de699d4714f65eaa0d
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_5.2.21.orig.tar.xz' bash_5.2.21.orig.tar.xz 5598816 SHA512:ccfd5201ebc32feb302db324868bec42a525a6b08176c77e16feb191fcd6ee4240182dcad783e6e3f010c6d33f356b2c628758f0387ef488ab8b3f932e54babb
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_5.2.21-2ubuntu4.debian.tar.xz' bash_5.2.21-2ubuntu4.debian.tar.xz 94124 SHA512:cbe580880995984a6ceb6c980d2fa87bbb1ace85d834a147ce39eaf44692af654c2c537716a19c8ed21b20e8abad9240d3f3349cc51020aeba2cd6e490802725
```

### `dpkg` source package: `boost1.83=1.83.0-2.1ubuntu3.2`

Binary Packages:

- `libboost-iostreams1.83.0:amd64=1.83.0-2.1ubuntu3.2`
- `libboost-locale1.83.0:amd64=1.83.0-2.1ubuntu3.2`
- `libboost-thread1.83.0:amd64=1.83.0-2.1ubuntu3.2`

Licenses: (parsed from: `/usr/share/doc/libboost-iostreams1.83.0/copyright`, `/usr/share/doc/libboost-locale1.83.0/copyright`, `/usr/share/doc/libboost-thread1.83.0/copyright`)

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
$ apt-get source -qq --print-uris boost1.83=1.83.0-2.1ubuntu3.2
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost1.83/boost1.83_1.83.0.orig.tar.xz' boost1.83_1.83.0.orig.tar.xz 77376520 SHA256:404df4b4072fc7f2d4483d4fc2d61ff6f554dd80c9a812652684d5952e881c91
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost1.83/boost1.83_1.83.0-2.1ubuntu3.2.debian.tar.xz' boost1.83_1.83.0-2.1ubuntu3.2.debian.tar.xz 380048 SHA256:2928da323658936427908c055a9f5f2eddb1a48d60a58d6e161985d36abdc5dc
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost1.83/boost1.83_1.83.0-2.1ubuntu3.2.dsc' boost1.83_1.83.0-2.1ubuntu3.2.dsc 10382 SHA256:ac3ec418c2af36e3ba409b3f3014413d6948c556328b10c684a712d48442ce4b
```

### `dpkg` source package: `brotli=1.1.0-2build2`

Binary Packages:

- `libbrotli1:amd64=1.1.0-2build2`

Licenses: (parsed from: `/usr/share/doc/libbrotli1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris brotli=1.1.0-2build2
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.1.0-2build2.dsc' brotli_1.1.0-2build2.dsc 2401 SHA512:74b6f53c8917622cf69f3a5ec7d2032a5ffaf3673700efa7c0f1a095280024a48bee2518c17329d0d23a0c54d1868d0fa247e663aeca9b4587883b5f88eea1b6
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.1.0.orig.tar.gz' brotli_1.1.0.orig.tar.gz 512036 SHA512:7a94f8b1ca1d3a411c6b5681bd2ed66183468f7b37a24741601d77ed4353577805de84c810dd26086d4afe6b11bfc4791db3ba7f6f9986bc7acbb8e9b43f488b
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.1.0-2build2.debian.tar.xz' brotli_1.1.0-2build2.debian.tar.xz 5644 SHA512:d7f430be5228cfb92ccc2908b915ab817d6165291671721112c1b5511949e92a2bfd1017f7ad44afd00fa0a133c3724c02e9d22f81e2a726d9958bbdae9f44f0
```

### `dpkg` source package: `bzip2=1.0.8-5.1build0.1`

Binary Packages:

- `libbz2-1.0:amd64=1.0.8-5.1build0.1`

Licenses: (parsed from: `/usr/share/doc/libbz2-1.0/copyright`)

- `BSD-variant`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.8-5.1build0.1
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8.orig.tar.gz' bzip2_1.0.8.orig.tar.gz 810029 SHA256:ab5a03176ee106d3f0fa90e381da478ddae405918153cca248e682cd0c4a2269
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8-5.1build0.1.debian.tar.bz2' bzip2_1.0.8-5.1build0.1.debian.tar.bz2 26927 SHA256:0ac0bd78fc0a7f6311a0bb62e81037ec920eb29e315261032ee84c4018e600f3
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8-5.1build0.1.dsc' bzip2_1.0.8-5.1build0.1.dsc 2220 SHA256:edf9f297ccfba3fc6f89d64fb6c63d866527498d21d0f0771a60f2fb7bc9b16a
```

### `dpkg` source package: `ca-certificates=20260601~24.04.1`

Binary Packages:

- `ca-certificates=20260601~24.04.1`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20260601~24.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20260601%7e24.04.1.tar.xz' ca-certificates_20260601~24.04.1.tar.xz 266460 SHA512:9323be57f3f5fd6214320f164e8167384d312bfa77e63bccc986634804faa4ff6a1012fa4a05901b7e69775b5680c3deb6bbf74af521b13eff0987659cd0889d
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20260601%7e24.04.1.dsc' ca-certificates_20260601~24.04.1.dsc 1769 SHA512:724bb7a5cab786bbaa07d63f36e66ff4cde72d1248f515ff3d44b369cec0b69320bbcf92e7282fab45e1ad2239973f2be755a3b04d68c3e62df03ebceb430e60
```

### `dpkg` source package: `cairo=1.18.0-3build1`

Binary Packages:

- `libcairo2:amd64=1.18.0-3build1`

Licenses: (parsed from: `/usr/share/doc/libcairo2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris cairo=1.18.0-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.18.0-3build1.dsc' cairo_1.18.0-3build1.dsc 2780 SHA512:c128d3701258e805a082d0366f274087c02d978bc030acbb814023831d5844170d73a1a05dafcfee5dcdc70731e6b4e986784222edf9c1e3ff98f07343d47049
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.18.0.orig.tar.xz' cairo_1.18.0.orig.tar.xz 33761148 SHA512:6366c7d5e3fd3e12df2edc43aa4ed4c3a517de2ef0b1b3b30dfa8b69a7cae1dd55765801228cec308d2e9792037d0704ae49d95b7b12c06f20df092fa0534e1c
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.18.0-3build1.debian.tar.xz' cairo_1.18.0-3build1.debian.tar.xz 29880 SHA512:afedd81be380b7da33f60da05faf8f39b3dc84b6932c092410adf3f0bae9ef43eb60adec2cd67fa9ec119fc560e9f050fe1213dfd3c61a86d6bd13f83680b671
```

### `dpkg` source package: `cdebconf=0.271ubuntu3`

Binary Packages:

- `libdebconfclient0:amd64=0.271ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libdebconfclient0/copyright`)

- `BSD-2-Clause`
- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.271ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.271ubuntu3.dsc' cdebconf_0.271ubuntu3.dsc 2910 SHA512:1c3864532126b71702307dfa4385e844363dcb8faf3f30009073dc0ebf6167ed97dd225679c3f6fb9650c5c41be8f5309668f2e4fe2d8ba798bd2cfc9dd18f36
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.271ubuntu3.tar.xz' cdebconf_0.271ubuntu3.tar.xz 285500 SHA512:f9a3204842db5e0f0e042c9df72dee17692422bc4c745bc0c332317ec87dc219e26eda94404c1d7b0a6d5d6c2105da0b9ebe615c4897f012883bc8222f9ac85d
```

### `dpkg` source package: `clucene-core=2.3.3.4+dfsg-1.2ubuntu2`

Binary Packages:

- `libclucene-contribs1t64:amd64=2.3.3.4+dfsg-1.2ubuntu2`
- `libclucene-core1t64:amd64=2.3.3.4+dfsg-1.2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libclucene-contribs1t64/copyright`, `/usr/share/doc/libclucene-core1t64/copyright`)

- `Apache-2.0`
- `LGPL-2.1`
- `Reuters-21578 - Distribution 1.0`

Source:

```console
$ apt-get source -qq --print-uris clucene-core=2.3.3.4+dfsg-1.2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/c/clucene-core/clucene-core_2.3.3.4%2bdfsg-1.2ubuntu2.dsc' clucene-core_2.3.3.4+dfsg-1.2ubuntu2.dsc 2200 SHA512:710303505f3dfd75d0f564edb8c7e8354db3c77ca457c5c4ee87b68893846c243eea16979d5b66e3e81339613429da4705d333ed2562d512cab794d7f23ba0d4
'http://archive.ubuntu.com/ubuntu/pool/main/c/clucene-core/clucene-core_2.3.3.4%2bdfsg.orig.tar.xz' clucene-core_2.3.3.4+dfsg.orig.tar.xz 826688 SHA512:3b9fa81eb40f8c8e14c4a1bca8e48bbc62248163f7460ddd3f5f71410958ad6248b0f20215a691f70d96536039a63b300880f1aec29d2f785d9baf5be80c2a5a
'http://archive.ubuntu.com/ubuntu/pool/main/c/clucene-core/clucene-core_2.3.3.4%2bdfsg-1.2ubuntu2.debian.tar.xz' clucene-core_2.3.3.4+dfsg-1.2ubuntu2.debian.tar.xz 11184 SHA512:0a8d0c582c6a90b72ea294c053d1842c23091d944f8241a0cf8bc42cfb555f09b6c3ea538cdefd7e2151c96e071829ea4ab73bb25f6745b86daf9930b13ebb93
```

### `dpkg` source package: `coreutils=9.4-3ubuntu6.2`

Binary Packages:

- `coreutils=9.4-3ubuntu6.2`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `BSD-4-clause-UC`
- `FSFULLR`
- `GFDL-1.3`
- `GFDL-NIV-1.3`
- `GPL-3`
- `GPL-3+`
- `ISC`

Source:

```console
$ apt-get source -qq --print-uris coreutils=9.4-3ubuntu6.2
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_9.4.orig.tar.xz' coreutils_9.4.orig.tar.xz 5979200 SHA256:ea613a4cf44612326e917201bbbcdfbd301de21ffc3b59b6e5c07e040b275e52
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_9.4-3ubuntu6.2.debian.tar.xz' coreutils_9.4-3ubuntu6.2.debian.tar.xz 42032 SHA256:6cd2ec4b6af4c52d5aa7bf6b5843bbb9b878be42d91b279de8b7afae843c8fa0
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_9.4-3ubuntu6.2.dsc' coreutils_9.4-3ubuntu6.2.dsc 2030 SHA256:a16ffb435f38507bea51474f5e40a26e4c8191d2190da8770e8e4726c18e37ba
```

### `dpkg` source package: `cups=2.4.7-1.2ubuntu7.14`

Binary Packages:

- `libcups2t64:amd64=2.4.7-1.2ubuntu7.14`

Licenses: (parsed from: `/usr/share/doc/libcups2t64/copyright`)

- `Apache-2.0`
- `Apache-2.0-with-GPL2-LGPL2-Exception`
- `BSD-2-Clause`
- `BSD-2-clause`
- `FSFUL`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris cups=2.4.7-1.2ubuntu7.14
'http://archive.ubuntu.com/ubuntu/pool/main/c/cups/cups_2.4.7.orig.tar.gz' cups_2.4.7.orig.tar.gz 8134809 SHA512:914b574ff6d85de9f3471528b52d4a436c484c441f47651846e1bdfa00aec26774efd416ff466216d2bccf468f8a797b1e0d666b5c82abc87e77550ce8b00d39
'http://archive.ubuntu.com/ubuntu/pool/main/c/cups/cups_2.4.7-1.2ubuntu7.14.debian.tar.xz' cups_2.4.7-1.2ubuntu7.14.debian.tar.xz 431720 SHA512:abbeb535b12daa452d1be4cec6a4604eae1940e1ce9d9521627e1d6dce2c78eb347c95fd5377d04e6d1439372438ce7b5b89e6cccbec46ce9401c3e104209bdc
'http://archive.ubuntu.com/ubuntu/pool/main/c/cups/cups_2.4.7-1.2ubuntu7.14.dsc' cups_2.4.7-1.2ubuntu7.14.dsc 3192 SHA512:b6cb7fe704a497194b488219d08fade046966f90126cff65d5d43d35a740dc8d21c5247f658b924a7e8cfe1a92be676c07c38a5ca6f9d9c1a8e51c56cde9e18f
```

### `dpkg` source package: `curl=8.5.0-2ubuntu10.10`

Binary Packages:

- `curl=8.5.0-2ubuntu10.10`
- `libcurl3t64-gnutls:amd64=8.5.0-2ubuntu10.10`
- `libcurl4t64:amd64=8.5.0-2ubuntu10.10`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3t64-gnutls/copyright`, `/usr/share/doc/libcurl4t64/copyright`)

- `BSD-3-Clause`
- `BSD-3-clause`
- `BSD-4-Clause-UC`
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


### `dpkg` source package: `cyrus-sasl2=2.1.28+dfsg1-5ubuntu3.1`

Binary Packages:

- `libsasl2-2:amd64=2.1.28+dfsg1-5ubuntu3.1`
- `libsasl2-modules-db:amd64=2.1.28+dfsg1-5ubuntu3.1`

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
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.28+dfsg1-5ubuntu3.1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.28%2bdfsg1.orig.tar.xz' cyrus-sasl2_2.1.28+dfsg1.orig.tar.xz 794540 SHA256:e796a5d85d1a85e1b433d43504e467f9075c7ebc0b45730a3996cf11b1deada4
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.28%2bdfsg1-5ubuntu3.1.debian.tar.xz' cyrus-sasl2_2.1.28+dfsg1-5ubuntu3.1.debian.tar.xz 98324 SHA256:a1017cf9d4fd098325338d1d7f1f71cb87102934e7b35c8f5e726d246360689e
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.28%2bdfsg1-5ubuntu3.1.dsc' cyrus-sasl2_2.1.28+dfsg1-5ubuntu3.1.dsc 3501 SHA256:6ede2d7122c4ea1e807f45b647edbdf9fb1521ad09b0ca0b9b48f220ef33f23f
```

### `dpkg` source package: `dash=0.5.12-6ubuntu5`

Binary Packages:

- `dash=0.5.12-6ubuntu5`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `BSD-3-Clause`
- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.12-6ubuntu5
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.12-6ubuntu5.dsc' dash_0.5.12-6ubuntu5.dsc 2124 SHA512:f29c60c6d01fdf8d5c12b2924fcb2ba7a9e27025976b3158900c3e33eba7100dfe3158a1efb641177527b672fff0e9b1659ace0711063decca17e4e6f3d6dada
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.12.orig.tar.gz' dash_0.5.12.orig.tar.gz 246054 SHA512:13bd262be0089260cbd13530a9cf34690c0abeb2f1920eb5e61be7951b716f9f335b86279d425dbfae56cbd49231a8fdffdff70601a5177da3d543be6fc5eb17
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.12-6ubuntu5.debian.tar.xz' dash_0.5.12-6ubuntu5.debian.tar.xz 39616 SHA512:2524c1aaf0cf2f86a5fa87de998c8324a247760b59c86ef1b02ef6af298648842b1b467d3f8c6beda31bed3cc0db17fa189f20aab8305503b67df4f0c25a23d1
```

### `dpkg` source package: `db5.3=5.3.28+dfsg2-7`

Binary Packages:

- `libdb5.3t64:amd64=5.3.28+dfsg2-7`

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
$ apt-get source -qq --print-uris db5.3=5.3.28+dfsg2-7
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg2-7.dsc' db5.3_5.3.28+dfsg2-7.dsc 2374 SHA512:3877ed17196ea9d9bac87112b81461ba3bfa02fd5017043baf277728cc151bed2238a90f707464d0a4e24aab865bf5f6c0c6ee6d0eb5ec866efe4cea91f7b93c
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg2.orig.tar.xz' db5.3_5.3.28+dfsg2.orig.tar.xz 21287688 SHA512:f9c9d042702ef3fcfdd4b4859583048f3396b161009dc24b6d3a2c53533d58214239fc80e2c42db17e9f092df44d531502737f3b368b956bff49ef057b6b51ef
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg2-7.debian.tar.xz' db5.3_5.3.28+dfsg2-7.debian.tar.xz 35232 SHA512:9e91cdf98925d94c7f318e534474e208ce8796113867f290bcaf8ca9c3f35d309266a35e17eb5624246c5e0bf94e5893c203f5154d7d0ba50b13babf53339156
```

### `dpkg` source package: `dbus=1.14.10-4ubuntu4.1`

Binary Packages:

- `libdbus-1-3:amd64=1.14.10-4ubuntu4.1`

Licenses: (parsed from: `/usr/share/doc/libdbus-1-3/copyright`)

- `AFL-2.1`
- `AFL-2.1,`
- `BSD-3-clause`
- `BSD-3-clause-generic`
- `Expat`
- `FSF-unlimited-permission`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `Tcl-BSDish`
- `autoconf-archive-permissive`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris dbus=1.14.10-4ubuntu4.1
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.14.10.orig.tar.xz' dbus_1.14.10.orig.tar.xz 1372328 SHA256:ba1f21d2bd9d339da2d4aa8780c09df32fea87998b73da24f49ab9df1e36a50f
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.14.10.orig.tar.xz.asc' dbus_1.14.10.orig.tar.xz.asc 833 SHA256:5f292cd0603c3d736026ed3f4d1c1937847981669c1f0a389083518f013e1081
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.14.10-4ubuntu4.1.debian.tar.xz' dbus_1.14.10-4ubuntu4.1.debian.tar.xz 69668 SHA256:c28e0e4840bf3c3f3cbdacae9b7228bb4694dd234f325535942dde76af3c322e
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.14.10-4ubuntu4.1.dsc' dbus_1.14.10-4ubuntu4.1.dsc 3746 SHA256:3d9037176550657a3584f7640027a6d970c85b0cd158a2be7e8051aab1349edb
```

### `dpkg` source package: `dconf=0.40.0-4ubuntu0.1`

Binary Packages:

- `libdconf1:amd64=0.40.0-4ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libdconf1/copyright`)

- `GPL-3`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris dconf=0.40.0-4ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/d/dconf/dconf_0.40.0.orig.tar.xz' dconf_0.40.0.orig.tar.xz 117764 SHA256:cf7f22a4c9200421d8d3325c5c1b8b93a36843650c9f95d6451e20f0bcb24533
'http://archive.ubuntu.com/ubuntu/pool/main/d/dconf/dconf_0.40.0-4ubuntu0.1.debian.tar.xz' dconf_0.40.0-4ubuntu0.1.debian.tar.xz 12104 SHA256:5ff0fb472fd6a451142c052ebe06df43444a57a42c305af89036c7c5265776d6
'http://archive.ubuntu.com/ubuntu/pool/main/d/dconf/dconf_0.40.0-4ubuntu0.1.dsc' dconf_0.40.0-4ubuntu0.1.dsc 2810 SHA256:fc203d2c4d398304eeed43ba53292e6e4fc952bb4259c7ffc6dc41b2f237711b
```

### `dpkg` source package: `debconf=1.5.86ubuntu1`

Binary Packages:

- `debconf=1.5.86ubuntu1`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.86ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.86ubuntu1.dsc' debconf_1.5.86ubuntu1.dsc 2030 SHA512:d06dc6bfa5e60ddb38839b25437641dcbd06acabc59dfa46955db87bf47370b381906916bde881de51a8dc4beaf1be9c3288bb25292718e608077c755a491988
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.86ubuntu1.tar.xz' debconf_1.5.86ubuntu1.tar.xz 574112 SHA512:e63b3d4241e8b347fcd71f7ae838e6b0c40123bea65298a9492ae6dabb24e54d31176c11a8b1870edb5a96ea346080d2f9ca8821cef74e73f20c03265aafd95d
```

### `dpkg` source package: `debianutils=5.17build1`

Binary Packages:

- `debianutils=5.17build1`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL-2`
- `GPL-2+`
- `SMAIL-GPL`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris debianutils=5.17build1
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_5.17build1.dsc' debianutils_5.17build1.dsc 1771 SHA512:4303221ace648a071b5de66dd570e334579cae327c5ad4f1bda10c957fca2f8f023f9ef6a0e1bf852ed378405a83106e85a76daf6fe9870b8f48655f1d15e8fe
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_5.17build1.tar.xz' debianutils_5.17build1.tar.xz 80468 SHA512:a076c0457c2e8423ecbf2ea01c4ba029feb8eacadb5c2622422a22b24ed1d52b785fc7e651406b533e7f1e26466d6570a3719852885d5270ee058fde1d336742
```

### `dpkg` source package: `diffutils=1:3.10-1build1`

Binary Packages:

- `diffutils=1:3.10-1build1`

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
$ apt-get source -qq --print-uris diffutils=1:3.10-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.10-1build1.dsc' diffutils_3.10-1build1.dsc 2192 SHA512:60bfa2bb6c9316393e21d03863c0f7a837280bccd4bf20818ca6bc749328172f4dd433603c231d5ce17b6ed68d4070c7e5037546a94f71d8bc50b81578b9645f
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.10.orig.tar.xz' diffutils_3.10.orig.tar.xz 1624240 SHA512:219d2c815a120690c6589846271e43aee5c96c61a7ee4abbef97dfcdb3d6416652ed494b417de0ab6688c4322540d48be63b5e617beb6d20530b5d55d723ccbb
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.10.orig.tar.xz.asc' diffutils_3.10.orig.tar.xz.asc 833 SHA512:91aa1fcfca224454e292540ea7813f4a0eb348f06a4374017326d524949775359fc833de597cc201c97f357eb6c675800828a6e3332572376f3554f1f2e1aca1
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.10-1build1.debian.tar.xz' diffutils_3.10-1build1.debian.tar.xz 14068 SHA512:36cb15f987cfd57dbe5bfe347a990887ffe52f8ba3756c4f806e78ba702d2b1acc2f316292bf1096a1a7db158358b4cd6261cabe70a77fd292945e07d5808cb5
```

### `dpkg` source package: `dpkg=1.22.6ubuntu6.6`

Binary Packages:

- `dpkg=1.22.6ubuntu6.6`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.22.6ubuntu6.6
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.22.6ubuntu6.6.tar.xz' dpkg_1.22.6ubuntu6.6.tar.xz 5548716 SHA512:e934e50a46a65b015982ad69dc4eca8bd514fbbd48aeeb5a84a66ab93c1e64b6d4d9429d08c2d8097ba0a3e96e27c205ab2142bb6e33659c96e32bdee477b6c3
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.22.6ubuntu6.6.dsc' dpkg_1.22.6ubuntu6.6.dsc 3156 SHA512:99f857ee029f720f79414a3ae85d857d06f30f57ff6ce259710a33d1de2a02d9398e511af46b689d4b9819b4c3f76d877d50d8da961fb7b6b9ecae621d1c562c
```

### `dpkg` source package: `e2fsprogs=1.47.0-2.4~exp1ubuntu4.1`

Binary Packages:

- `e2fsprogs=1.47.0-2.4~exp1ubuntu4.1`
- `libcom-err2:amd64=1.47.0-2.4~exp1ubuntu4.1`
- `libext2fs2t64:amd64=1.47.0-2.4~exp1ubuntu4.1`
- `libss2:amd64=1.47.0-2.4~exp1ubuntu4.1`
- `logsave=1.47.0-2.4~exp1ubuntu4.1`

Licenses: (parsed from: `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcom-err2/copyright`, `/usr/share/doc/libext2fs2t64/copyright`, `/usr/share/doc/libss2/copyright`, `/usr/share/doc/logsave/copyright`)

- `Apache-2`
- `Apache-2.0`
- `BSD-3-Clause`
- `GPL`
- `GPL-2`
- `GPL-2+ with Texinfo exception`
- `ISC`
- `Kazlib`
- `LGPL-2`
- `Latex2e`
- `MIT-US-export`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.47.0-2.4~exp1ubuntu4.1
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.47.0.orig.tar.gz' e2fsprogs_1.47.0.orig.tar.gz 9637717 SHA256:6667afde56eef0c6af26684974400e4d2288ea49e9441bf5e6229195d51a3578
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.47.0.orig.tar.gz.asc' e2fsprogs_1.47.0.orig.tar.gz.asc 488 SHA256:704928204a52ddaa0ac8ef549c1bfba3c38e66c361d3853c8a4c38e6082b90f1
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.47.0-2.4%7eexp1ubuntu4.1.debian.tar.xz' e2fsprogs_1.47.0-2.4~exp1ubuntu4.1.debian.tar.xz 90580 SHA256:26b381ec175ff52d1cc2fd1b217f84b9e1d7d33a58dcbaf8942115dd27a03f84
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.47.0-2.4%7eexp1ubuntu4.1.dsc' e2fsprogs_1.47.0-2.4~exp1ubuntu4.1.dsc 3294 SHA256:215fe7b95c246894654c59a01514dfdc16ec17a0dcb09dc7a7c1ec1246ed4964
```

### `dpkg` source package: `elfutils=0.190-1.1ubuntu0.1`

Binary Packages:

- `libdw1t64:amd64=0.190-1.1ubuntu0.1`
- `libelf1t64:amd64=0.190-1.1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libdw1t64/copyright`, `/usr/share/doc/libelf1t64/copyright`)

- `BSD-2-clause`
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
$ apt-get source -qq --print-uris elfutils=0.190-1.1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.190.orig.tar.bz2' elfutils_0.190.orig.tar.bz2 9162766 SHA256:8e00a3a9b5f04bc1dc273ae86281d2d26ed412020b391ffcc23198f10231d692
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.190-1.1ubuntu0.1.debian.tar.xz' elfutils_0.190-1.1ubuntu0.1.debian.tar.xz 46976 SHA256:4c3130951f7b865d50ff57379a258926a66bcd2753e3c12301bbb110fbb417fa
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.190-1.1ubuntu0.1.dsc' elfutils_0.190-1.1ubuntu0.1.dsc 3410 SHA256:7852785ce5ce51a6dad0f6b67188d94ffedaffa6d0128fecabeb6a1ccc2aabea
```

### `dpkg` source package: `expat=2.6.1-2ubuntu0.4`

Binary Packages:

- `libexpat1:amd64=2.6.1-2ubuntu0.4`

Licenses: (parsed from: `/usr/share/doc/libexpat1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris expat=2.6.1-2ubuntu0.4
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.6.1.orig.tar.gz' expat_2.6.1.orig.tar.gz 8414649 SHA256:14113ed69357172a0bf5a268793c8b5b01afc77c7a2e5fb8dd0b06cb87c02c4a
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.6.1-2ubuntu0.4.debian.tar.xz' expat_2.6.1-2ubuntu0.4.debian.tar.xz 31092 SHA256:8a24bd6c87fe292a2f00a2df71f7d2bbe3713fa63b1952c8552cdac4288d10fd
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.6.1-2ubuntu0.4.dsc' expat_2.6.1-2ubuntu0.4.dsc 1945 SHA256:a25d3fde103454ad5d34d4770bd5adb60bb5872da775df74cad193b5c4de1dff
```

### `dpkg` source package: `findutils=4.9.0-5build1`

Binary Packages:

- `findutils=4.9.0-5build1`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `BSD-3-clause`
- `BSD-3-clause and/or GPL-3+`
- `FSFAP`
- `FSFULLR`
- `GFDL-1.3`
- `GFDL-NIV-1.3+`
- `GPL with automake exception`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf-data exception`
- `GPL-3`
- `GPL-3+`
- `GPL-3+ with Autoconf-data exception`
- `GPL-3+ with Bison-2.2 exception`
- `ISC`
- `ISC and/or LGPL-2.1+`
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
$ apt-get source -qq --print-uris findutils=4.9.0-5build1
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.9.0-5build1.dsc' findutils_4.9.0-5build1.dsc 2404 SHA512:5cf7d85b815176d007607c61b6220ed1b9f921e1292b6ebe8603dcdc51c132040831b664c1da5a9e5c41afe350c7d9a6f6765b7f1404e36ed47aaa3735960680
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.9.0.orig.tar.xz' findutils_4.9.0.orig.tar.xz 2046252 SHA512:ba4844f4403de0148ad14b46a3dbefd5a721f6257c864bf41a6789b11705408524751c627420b15a52af95564d8e5b52f0978474f640a62ab86a41d20cf14be9
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.9.0.orig.tar.xz.asc' findutils_4.9.0.orig.tar.xz.asc 488 SHA512:b8e0b5471242912a20b9e468fa27b7f27339af5f7be8918173105262dee0152183bf4cf516844d348b206a694e028490d5d3b190f3aed8c698ba5444941f8dfc
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.9.0-5build1.debian.tar.xz' findutils_4.9.0-5build1.debian.tar.xz 32864 SHA512:501c6e0100ac4a7b304700518c9d45c2f8a1f76bd5f12914c9b136e3b3d117115090177d5e6c863333982ca8ded70d188bbde2ff98d51c1d3c51ff247f5eb95b
```

### `dpkg` source package: `fontconfig=2.15.0-1.1ubuntu2`

Binary Packages:

- `fontconfig=2.15.0-1.1ubuntu2`
- `fontconfig-config=2.15.0-1.1ubuntu2`
- `libfontconfig1:amd64=2.15.0-1.1ubuntu2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris fontconfig=2.15.0-1.1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.15.0-1.1ubuntu2.dsc' fontconfig_2.15.0-1.1ubuntu2.dsc 2817 SHA512:cd0eff27460c679b9d7db384bba94d4468f9cbf9d7bec41db6b12965f3d4ed48af35e73d3739d8ad8f5575bbc769379582e5e92e676dbe229260340f479c6d40
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.15.0.orig.tar.xz' fontconfig_2.15.0.orig.tar.xz 1447820 SHA512:754cd5fffa198fc07a39cf7df683e9adfa7f54ab41fdff8c0eacc078fd35d3e01069ba343f2b045e0b40df88d9f1fc1ee0f7565799f9cb194a59cf95b64c4417
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.15.0-1.1ubuntu2.debian.tar.xz' fontconfig_2.15.0-1.1ubuntu2.debian.tar.xz 30556 SHA512:a09fe533b6a684bc6e2bfc25eda89cad9f1020c3ba5738ff9799d770a3b6c09d6a12edfeeacffe38a73d8a3f28313e7108fa6f6acff70ba1eb346007f4bc73cb
```

### `dpkg` source package: `fonts-dejavu=2.37-8`

Binary Packages:

- `fonts-dejavu-core=2.37-8`
- `fonts-dejavu-mono=2.37-8`

Licenses: (parsed from: `/usr/share/doc/fonts-dejavu-core/copyright`, `/usr/share/doc/fonts-dejavu-mono/copyright`)

- `GPL-2`
- `GPL-2+`
- `bitstream-vera`

Source:

```console
$ apt-get source -qq --print-uris fonts-dejavu=2.37-8
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.37-8.dsc' fonts-dejavu_2.37-8.dsc 2156 SHA512:c5632f8cf1fa690efc292e7ae8239265ac3a04e13423601d9a151b200ea36ae5242a0867428e3c7148c0cd5fa6b4ff3c368b53451f3234e20634f2fc6fe5c1fa
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.37.orig.tar.bz2' fonts-dejavu_2.37.orig.tar.bz2 12050109 SHA512:e61fc8c675ef76edb49dd9a8caee62087280929bb8144b52aca2f8def30025c56246589ad8a6a806b9574e6876eedd16d57c70a6ce9c86817a2dfe39d8a2bb2b
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.37-8.debian.tar.xz' fonts-dejavu_2.37-8.debian.tar.xz 13176 SHA512:7a19189a106a1243c64d43b050f87cba6f6c32d070f246aceb5ccc687401366825a31a653e45fa700e1593f7ed32340581988cfc1a489b5f8b705e80c2a891ee
```

### `dpkg` source package: `freetype=2.13.2+dfsg-1ubuntu0.1`

Binary Packages:

- `libfreetype6:amd64=2.13.2+dfsg-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libfreetype6/copyright`)

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
$ apt-get source -qq --print-uris freetype=2.13.2+dfsg-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.13.2%2bdfsg.orig-ft2demos.tar.xz' freetype_2.13.2+dfsg.orig-ft2demos.tar.xz 341140 SHA256:99ee2ed8b98bcfad17bc57c2d9699d764f20fe29ad304c69b8eb28834ca3b48e
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.13.2%2bdfsg.orig-ft2demos.tar.xz.asc' freetype_2.13.2+dfsg.orig-ft2demos.tar.xz.asc 833 SHA256:e58ba462f7bdcdc5899f777d33453c1ce6f6e46b080047580f45c9fd9f2dc08c
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.13.2%2bdfsg.orig-ft2docs.tar.xz' freetype_2.13.2+dfsg.orig-ft2docs.tar.xz 2173920 SHA256:685c25e1035a5076e5097186b3143b9c06878f3f9087d0a81e4d8538d5d15424
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.13.2%2bdfsg.orig-ft2docs.tar.xz.asc' freetype_2.13.2+dfsg.orig-ft2docs.tar.xz.asc 833 SHA256:d7e17c8a3bce50181530ebe06346f506cbfc92ecc5ca7cc395c7dbb24a71a5c0
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.13.2%2bdfsg.orig.tar.xz' freetype_2.13.2+dfsg.orig.tar.xz 2220368 SHA256:48c78a4194adfcd15a4d089f3206dab8454c311f5577f3ef7eaef95f777f86e6
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.13.2%2bdfsg-1ubuntu0.1.debian.tar.xz' freetype_2.13.2+dfsg-1ubuntu0.1.debian.tar.xz 44692 SHA256:41371d9748c0e6f407c44c52c7fe5fbd4fbc2276a168ae528404731ae2e95b31
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.13.2%2bdfsg-1ubuntu0.1.dsc' freetype_2.13.2+dfsg-1ubuntu0.1.dsc 3606 SHA256:05368dead2fd8739fb2aa3a11e6ffd4376039b57536cc1c5cdadceb75496f385
```

### `dpkg` source package: `gcc-14=14.2.0-4ubuntu2~24.04.1`

Binary Packages:

- `gcc-14-base:amd64=14.2.0-4ubuntu2~24.04.1`
- `libgcc-s1:amd64=14.2.0-4ubuntu2~24.04.1`
- `libgomp1:amd64=14.2.0-4ubuntu2~24.04.1`
- `libstdc++6:amd64=14.2.0-4ubuntu2~24.04.1`

Licenses: (parsed from: `/usr/share/doc/gcc-14-base/copyright`, `/usr/share/doc/libgcc-s1/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libstdc++6/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-14=14.2.0-4ubuntu2~24.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-14/gcc-14_14.2.0.orig.tar.gz' gcc-14_14.2.0.orig.tar.gz 97158172 SHA256:768c314c11eeab56ccebb91eb42ec4a41122fa94f0d83400126401942622197b
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-14/gcc-14_14.2.0-4ubuntu2%7e24.04.1.debian.tar.xz' gcc-14_14.2.0-4ubuntu2~24.04.1.debian.tar.xz 1950432 SHA256:cfece214c2fb790ef5f3baffb9a53e40618e7ae12d053610b251e94d77d08ade
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-14/gcc-14_14.2.0-4ubuntu2%7e24.04.1.dsc' gcc-14_14.2.0-4ubuntu2~24.04.1.dsc 46930 SHA256:50950080874a6ec6780dd60c243e21d9cda9d736bb32bca98d16095d27cc01b5
```

### `dpkg` source package: `glib2.0=2.80.0-6ubuntu3.8`

Binary Packages:

- `libglib2.0-0t64:amd64=2.80.0-6ubuntu3.8`

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
$ apt-get source -qq --print-uris glib2.0=2.80.0-6ubuntu3.8
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.80.0.orig-unicode-data.tar.xz' glib2.0_2.80.0.orig-unicode-data.tar.xz 263364 SHA256:38680f78a0ae6258826418cb5096c19ae3566ba8fee0a2112a0ec40056e58729
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.80.0.orig.tar.xz' glib2.0_2.80.0.orig.tar.xz 5510536 SHA256:8228a92f92a412160b139ae68b6345bd28f24434a7b5af150ebe21ff587a561d
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.80.0-6ubuntu3.8.debian.tar.xz' glib2.0_2.80.0-6ubuntu3.8.debian.tar.xz 166540 SHA256:3ee18682434b0213fbc7f5892527f748810a657aba2353d660c5eb30ed1656f0
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.80.0-6ubuntu3.8.dsc' glib2.0_2.80.0-6ubuntu3.8.dsc 4542 SHA256:d44112b09956f61ffd5790a1a40e42558dca287052a945078cffff9b2490ee84
```

### `dpkg` source package: `glibc=2.39-0ubuntu8.7`

Binary Packages:

- `libc-bin=2.39-0ubuntu8.7`
- `libc6:amd64=2.39-0ubuntu8.7`
- `locales=2.39-0ubuntu8.7`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/locales/copyright`)

- `GFDL-1.3`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.39-0ubuntu8.7
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.39.orig.tar.xz' glibc_2.39.orig.tar.xz 18520988 SHA256:f77bd47cf8170c57365ae7bf86696c118adb3b120d3259c64c502d3dc1e2d926
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.39.orig.tar.xz.asc' glibc_2.39.orig.tar.xz.asc 833 SHA256:2cce427ef7933c17379f5514e4f0ccf8dffae5bf8c72f0f7e0bf8b8401f34be5
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.39-0ubuntu8.7.debian.tar.xz' glibc_2.39-0ubuntu8.7.debian.tar.xz 469880 SHA256:9642284fbb90ca3b56af777e3e5d6989bf3f80ba5d0c37c4ec0c94fb37912b70
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.39-0ubuntu8.7.dsc' glibc_2.39-0ubuntu8.7.dsc 9257 SHA256:1d210efa9b492a2c340c709714abced58ef843009009b1fe4d1282796e0719d9
```

### `dpkg` source package: `gmp=2:6.3.0+dfsg-2ubuntu6.1`

Binary Packages:

- `libgmp10:amd64=2:6.3.0+dfsg-2ubuntu6.1`

Licenses: (parsed from: `/usr/share/doc/libgmp10/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `GPL-3+ with Bison exception`
- `LGPL-3`
- `LGPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gmp=2:6.3.0+dfsg-2ubuntu6.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.3.0%2bdfsg.orig.tar.xz' gmp_6.3.0+dfsg.orig.tar.xz 1870556 SHA256:bd2966e6d277f79328e894a5a9f3ba3fbf2ed2be81def5f48623e30c23fb1572
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.3.0%2bdfsg-2ubuntu6.1.debian.tar.xz' gmp_6.3.0+dfsg-2ubuntu6.1.debian.tar.xz 38908 SHA256:0a7592ee94876fcc0dba60c9a9fba806a72752c104c04d553803e1b7a97026a3
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.3.0%2bdfsg-2ubuntu6.1.dsc' gmp_6.3.0+dfsg-2ubuntu6.1.dsc 2345 SHA256:7fdd2464ee453296e33598dad6f84dd489640c08f50552389469bcf90537582e
```

### `dpkg` source package: `gnupg2=2.4.4-2ubuntu17.4`

Binary Packages:

- `dirmngr=2.4.4-2ubuntu17.4`
- `gnupg=2.4.4-2ubuntu17.4`
- `gnupg-utils=2.4.4-2ubuntu17.4`
- `gpg=2.4.4-2ubuntu17.4`
- `gpg-agent=2.4.4-2ubuntu17.4`
- `gpgconf=2.4.4-2ubuntu17.4`
- `gpgsm=2.4.4-2ubuntu17.4`
- `gpgv=2.4.4-2ubuntu17.4`
- `keyboxd=2.4.4-2ubuntu17.4`

Licenses: (parsed from: `/usr/share/doc/dirmngr/copyright`, `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gnupg-utils/copyright`, `/usr/share/doc/gpg/copyright`, `/usr/share/doc/gpg-agent/copyright`, `/usr/share/doc/gpgconf/copyright`, `/usr/share/doc/gpgsm/copyright`, `/usr/share/doc/gpgv/copyright`, `/usr/share/doc/keyboxd/copyright`)

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
$ apt-get source -qq --print-uris gnupg2=2.4.4-2ubuntu17.4
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.4.4.orig.tar.bz2' gnupg2_2.4.4.orig.tar.bz2 7886036 SHA256:67ebe016ca90fa7688ce67a387ebd82c6261e95897db7b23df24ff335be85bc6
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.4.4.orig.tar.bz2.asc' gnupg2_2.4.4.orig.tar.bz2.asc 386 SHA256:47986167998b2cb6be4e4cdeef0c468139e06580ed65ce2cf241c527d74e54db
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.4.4-2ubuntu17.4.debian.tar.xz' gnupg2_2.4.4-2ubuntu17.4.debian.tar.xz 97376 SHA256:234250d6e9288ddb8e481f2da515ffa2bb384be0d9edd818487a82f15e8f307c
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.4.4-2ubuntu17.4.dsc' gnupg2_2.4.4-2ubuntu17.4.dsc 3984 SHA256:81a51e04b3b4ae3da32314cca791c9872cc8ca1600d859feb7c8d43536c05f54
```

### `dpkg` source package: `gnutls28=3.8.3-1.1ubuntu3.6`

Binary Packages:

- `libgnutls30t64:amd64=3.8.3-1.1ubuntu3.6`

Licenses: (parsed from: `/usr/share/doc/libgnutls30t64/copyright`)

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
$ apt-get source -qq --print-uris gnutls28=3.8.3-1.1ubuntu3.6
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.8.3.orig.tar.xz' gnutls28_3.8.3.orig.tar.xz 6463720 SHA512:74eddba01ce4c2ffdca781c85db3bb52c85f1db3c09813ee2b8ceea0608f92ca3912fd9266f55deb36a8ba4d01802895ca5d5d219e7d9caec45e1a8534e45a84
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.8.3.orig.tar.xz.asc' gnutls28_3.8.3.orig.tar.xz.asc 854 SHA512:8a13a834b57172b9504313eeb7d733d2c3d72971dd8adaa837bbd9d73b12fe2a67f7d07fbbaf643a34ff95acaa82458a88ce4118152ede8ece9be5a089b693c8
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.8.3-1.1ubuntu3.6.debian.tar.xz' gnutls28_3.8.3-1.1ubuntu3.6.debian.tar.xz 124984 SHA512:90e6613ac130915f66046526fb8043fece53aabc922f35aedcfd581df6d31824c3308685c0775683184e1af6d76216dd0790bfff842c224492e7273f1306b46e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.8.3-1.1ubuntu3.6.dsc' gnutls28_3.8.3-1.1ubuntu3.6.dsc 3397 SHA512:2a7f9a92718d972738e92345de4dd68da4ede8e3e5aba311626b6d1b3b53e9e5d8c8a470524b6fe76624141a77e5223208854e13cc96d4ba3d7a24cfdd1a4d59
```

### `dpkg` source package: `gpgme1.0=1.18.0-4.1ubuntu4`

Binary Packages:

- `libgpgme11t64:amd64=1.18.0-4.1ubuntu4`
- `libgpgmepp6t64:amd64=1.18.0-4.1ubuntu4`

Licenses: (parsed from: `/usr/share/doc/libgpgme11t64/copyright`, `/usr/share/doc/libgpgmepp6t64/copyright`)

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
$ apt-get source -qq --print-uris gpgme1.0=1.18.0-4.1ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/g/gpgme1.0/gpgme1.0_1.18.0-4.1ubuntu4.dsc' gpgme1.0_1.18.0-4.1ubuntu4.dsc 3114 SHA512:0f0c878125b8951b74c2be769d0284ec99e1f3677328024db84364bdad7b8581b40bd3a25f9b314b7dae048a2bff18ae6a3c5c38cd9b592b023b5d53f5a89eff
'http://archive.ubuntu.com/ubuntu/pool/main/g/gpgme1.0/gpgme1.0_1.18.0.orig.tar.bz2' gpgme1.0_1.18.0.orig.tar.bz2 1762323 SHA512:c0cb0b337d017793a15dd477a7f5eaef24587fcda3d67676bf746bb342398d04792c51abe3c26ae496e799c769ce667d4196d91d86e8a690d02c6718c8f6b4ac
'http://archive.ubuntu.com/ubuntu/pool/main/g/gpgme1.0/gpgme1.0_1.18.0.orig.tar.bz2.asc' gpgme1.0_1.18.0.orig.tar.bz2.asc 390 SHA512:0a54530a65e3ba42ca4d00fea212529f2fc57746602382961f88d99a2c6c460a1e0ce028d877710c7339025850a9ebc92ab289a4455b44889c6fe50af68e6dea
'http://archive.ubuntu.com/ubuntu/pool/main/g/gpgme1.0/gpgme1.0_1.18.0-4.1ubuntu4.debian.tar.xz' gpgme1.0_1.18.0-4.1ubuntu4.debian.tar.xz 29380 SHA512:bb5d01ec5ff09c917418a3d28887dad8b011e4e9ccbd538f462f97f08c7f6b8714f97314b5faf607a039847ab129973c913349edefdf1893ff2165cc5f958080
```

### `dpkg` source package: `graphite2=1.3.14-2ubuntu0.24.04.1`

Binary Packages:

- `libgraphite2-3:amd64=1.3.14-2ubuntu0.24.04.1`

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
$ apt-get source -qq --print-uris graphite2=1.3.14-2ubuntu0.24.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.14.orig.tar.gz' graphite2_1.3.14.orig.tar.gz 6629829 SHA512:49d127964d3f5c9403c7aecbfb5b18f32f25fe4919a81c49e0534e7123fe845423e16b0b8c8baaae21162b1150ab3e0f1c22c344e07d4364b6b8473c40a0822c
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.14-2ubuntu0.24.04.1.debian.tar.xz' graphite2_1.3.14-2ubuntu0.24.04.1.debian.tar.xz 15004 SHA512:41252c18dc437a43235113c8d73b4b0d4e5ae5a79b5792b4e3031f5ff2b7e81f3c34aef69dac7717bd7918ec76608a375c32cafcbd9908e09ebfb65962fd9c9e
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.14-2ubuntu0.24.04.1.dsc' graphite2_1.3.14-2ubuntu0.24.04.1.dsc 2682 SHA512:be50be00243d3dca61c2ba58e3f13ee38e6925fa04c1dd076dc4a16c30d480be992c3f02dfd5edea0ec3a38273896ef15cc5b1c880fdbca7ac1b803e3a04c35f
```

### `dpkg` source package: `grep=3.11-4build1`

Binary Packages:

- `grep=3.11-4build1`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=3.11-4build1
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.11-4build1.dsc' grep_3.11-4build1.dsc 2379 SHA512:5106f25775f36ba92fd7d73634d8c271fcea7dc9defef2f84d6080eb6a47dd0b1194272807267413807aa35d945c9bb66f076162d3eba539cc35eca5d255d2f9
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.11.orig.tar.xz' grep_3.11.orig.tar.xz 1703776 SHA512:f254a1905a08c8173e12fbdd4fd8baed9a200217fba9d7641f0d78e4e002c1f2a621152d67027d9b25f0bb2430898f5233dc70909d8464fd13d7dd9298e65c42
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.11.orig.tar.xz.asc' grep_3.11.orig.tar.xz.asc 833 SHA512:487aba063373ca0594c519991f19b2a6a33b3da0d74735c890f3828fd0880e7e6f64495d2c8f9efa5da53d1eb2d446609bab2399a4b89dcb4510a632e31ffb54
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.11-4build1.debian.tar.xz' grep_3.11-4build1.debian.tar.xz 20584 SHA512:212c903c240071dda1d8e966991908730af26746558078262aa32b6b0683487cb510d9b9a2c40cafb31024e78e2c74d17eb5681e329aa142b0921b88cacef7eb
```

### `dpkg` source package: `gst-plugins-base1.0=1.24.2-1ubuntu0.4`

Binary Packages:

- `libgstreamer-plugins-base1.0-0:amd64=1.24.2-1ubuntu0.4`

Licenses: (parsed from: `/usr/share/doc/libgstreamer-plugins-base1.0-0/copyright`)

- `BSD (2 clause)`
- `BSD (3 clause)`
- `GPL-2+`
- `LGPL`
- `LGPL-2+`
- `MIT/X11 (BSD like) LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris gst-plugins-base1.0=1.24.2-1ubuntu0.4
'http://archive.ubuntu.com/ubuntu/pool/main/g/gst-plugins-base1.0/gst-plugins-base1.0_1.24.2.orig.tar.xz' gst-plugins-base1.0_1.24.2.orig.tar.xz 2421032 SHA512:8b4ffbbf427859c4d8ba889034b00ea8314e4357645c788f6b52d65a512ce76fa1840f2a4fd562d92b213ad9dc9636db44de289bc56600ae19bce39e156b1579
'http://archive.ubuntu.com/ubuntu/pool/main/g/gst-plugins-base1.0/gst-plugins-base1.0_1.24.2.orig.tar.xz.asc' gst-plugins-base1.0_1.24.2.orig.tar.xz.asc 833 SHA512:996a9c50facd6d6b4e9496874320fcb1aa374b0ec0a14b9945238b7e233f933856f3b91cc332da2f1e246c870f51373b3d1b9de455bd3d70e51b5a32be429f70
'http://archive.ubuntu.com/ubuntu/pool/main/g/gst-plugins-base1.0/gst-plugins-base1.0_1.24.2-1ubuntu0.4.debian.tar.xz' gst-plugins-base1.0_1.24.2-1ubuntu0.4.debian.tar.xz 57620 SHA512:d644ae71ab83c8a02b3d7c7a98a7aae8d0cab74b5aea4a2de79b42db9b4824d0d6d13f82f985df17bfb43f7cb087a922ba2803f83fc7bd797f64ed8f41697afa
'http://archive.ubuntu.com/ubuntu/pool/main/g/gst-plugins-base1.0/gst-plugins-base1.0_1.24.2-1ubuntu0.4.dsc' gst-plugins-base1.0_1.24.2-1ubuntu0.4.dsc 4113 SHA512:d17cbafc3563b4ca4cb14df70dc13acdd5463872d6a84fae35c4773119f090c15869375e11ca7c16146e6ff965621d8cd9298fe6fcfce72fcfe8cd3e6034513b
```

### `dpkg` source package: `gstreamer1.0=1.24.2-1ubuntu0.1`

Binary Packages:

- `libgstreamer1.0-0:amd64=1.24.2-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libgstreamer1.0-0/copyright`)

- `GPL-2+`
- `GPL-3+`
- `LGPL`
- `LGPL-2+`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris gstreamer1.0=1.24.2-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gstreamer1.0/gstreamer1.0_1.24.2.orig.tar.xz' gstreamer1.0_1.24.2.orig.tar.xz 1850672 SHA256:9cafdd23bd180f1681c56cd3a6879a8497ccf24da6f422a6b6f356fa074a8481
'http://archive.ubuntu.com/ubuntu/pool/main/g/gstreamer1.0/gstreamer1.0_1.24.2.orig.tar.xz.asc' gstreamer1.0_1.24.2.orig.tar.xz.asc 833 SHA256:360f2173830a1624f6eb09fae72d5487f2cbd99b2cf83174890607e1eda96ec4
'http://archive.ubuntu.com/ubuntu/pool/main/g/gstreamer1.0/gstreamer1.0_1.24.2-1ubuntu0.1.debian.tar.xz' gstreamer1.0_1.24.2-1ubuntu0.1.debian.tar.xz 50960 SHA256:a2e8ac4ff91003ca640e62c2d29afa1cee706ecc0988a28aa3c3e23e12e1591b
'http://archive.ubuntu.com/ubuntu/pool/main/g/gstreamer1.0/gstreamer1.0_1.24.2-1ubuntu0.1.dsc' gstreamer1.0_1.24.2-1ubuntu0.1.dsc 3161 SHA256:b3ae9fe0ed9ccb3e5745f09b65a9b2ab0b7a0dadefcb2d17c60f0a28dd3db381
```

### `dpkg` source package: `gzip=1.12-1ubuntu3.1`

Binary Packages:

- `gzip=1.12-1ubuntu3.1`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `FSF-manpages`
- `GFDL-1.3+-no-invariant`
- `GFDL-3`
- `GPL-3`
- `GPL-3+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `harfbuzz=8.3.0-2build2`

Binary Packages:

- `libharfbuzz-icu0:amd64=8.3.0-2build2`
- `libharfbuzz0b:amd64=8.3.0-2build2`

Licenses: (parsed from: `/usr/share/doc/libharfbuzz-icu0/copyright`, `/usr/share/doc/libharfbuzz0b/copyright`)

- `Apache-2.0`
- `CC0-1.0`
- `Expat`
- `FSFAP`
- `FSFUL`
- `FSFULLR`
- `GPL-2`
- `GPL-2+ with AutoConf exception`
- `GPL-2+ with Font exception`
- `GPL-2+ with LibTool exception`
- `GPL-3`
- `GPL-3+`
- `GPL-3+ with AutoConf exception`
- `ISC`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MIT`
- `Monotype`
- `OFL-1.1`
- `UFL-1.0`
- `Unicode`

Source:

```console
$ apt-get source -qq --print-uris harfbuzz=8.3.0-2build2
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_8.3.0-2build2.dsc' harfbuzz_8.3.0-2build2.dsc 3032 SHA512:7d99c24b6c03e0b201d6eec8f6c7214756330468b0b40996f68f172ca9fb1bb755991d1d774e5e7bfd7702c5c8e6d9668ce75100eda80db3e2154cb32d7f2204
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_8.3.0.orig.tar.xz' harfbuzz_8.3.0.orig.tar.xz 19002808 SHA512:6b8753c0b55d34a1a46a64466b9b0de8bc4748c42b29fa9463616a5f48db08ceb4a80cce416e10861778b98dc96d0638d9dd8d7204e404662154f419f3f61f21
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_8.3.0-2build2.debian.tar.xz' harfbuzz_8.3.0-2build2.debian.tar.xz 19928 SHA512:c68ac1d147a288fcf2b3f6e7fb102f046e3f7775985737741f2d1027a14e344de3f06791e99fe7f2c82415f91458b6167849d1d180b342f6ac987b42010f0438
```

### `dpkg` source package: `hostname=3.23+nmu2ubuntu2`

Binary Packages:

- `hostname=3.23+nmu2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.23+nmu2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.23%2bnmu2ubuntu2.dsc' hostname_3.23+nmu2ubuntu2.dsc 1567 SHA512:a61538c601492aaba10aafc2b181f3db3f7f0ef768ce5fe4da1c4dece8655247627a77df89a7700938c665792cd134a46bfa8dd20ae59e7d0ccc199bd43b06a6
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.23%2bnmu2ubuntu2.tar.xz' hostname_3.23+nmu2ubuntu2.tar.xz 13276 SHA512:ce7606f7bd3be9a2a2089955c1510244c8b5ef76d9e1978547870f2ff6e5fbb6cd12c040f38dc5473c46a2d77e7e7257da5787638cf5619adcced206c2c34419
```

### `dpkg` source package: `hunspell=1.7.2+really1.7.2-10build3`

Binary Packages:

- `libhunspell-1.7-0:amd64=1.7.2+really1.7.2-10build3`

Licenses: (parsed from: `/usr/share/doc/libhunspell-1.7-0/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris hunspell=1.7.2+really1.7.2-10build3
'http://archive.ubuntu.com/ubuntu/pool/main/h/hunspell/hunspell_1.7.2%2breally1.7.2-10build3.dsc' hunspell_1.7.2+really1.7.2-10build3.dsc 2540 SHA512:a86778d45e18b82fc7b2fce93a0f6c6c24c13690bb6dcc23ac761c2ff6895a85b4972f5a9939a2a0a3691a7d09664759ce661b69959fa7d813f428d473ca32a0
'http://archive.ubuntu.com/ubuntu/pool/main/h/hunspell/hunspell_1.7.2%2breally1.7.2.orig.tar.gz' hunspell_1.7.2+really1.7.2.orig.tar.gz 1536202 SHA512:49b3619bff12e111b6cc3f3d9463612b116f9b2a976896718e65f5bc4a83ece11100aaf56a4d18127ea39107446c495e12affe5ff3c9159ae8aba70e512f44ac
'http://archive.ubuntu.com/ubuntu/pool/main/h/hunspell/hunspell_1.7.2%2breally1.7.2-10build3.debian.tar.xz' hunspell_1.7.2+really1.7.2-10build3.debian.tar.xz 25136 SHA512:28903b472e70fdc333e600afd07df851a529330f8fea621493daa5b1f0352d34ff0594bfb0f9d639f6e2f2556d5dcd836cc35e37a8b2e31745c952d60151e3f6
```

### `dpkg` source package: `hyphen=2.8.8-7build3`

Binary Packages:

- `libhyphen0:amd64=2.8.8-7build3`

Licenses: (parsed from: `/usr/share/doc/libhyphen0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MPL-1.1+`

Source:

```console
$ apt-get source -qq --print-uris hyphen=2.8.8-7build3
'http://archive.ubuntu.com/ubuntu/pool/main/h/hyphen/hyphen_2.8.8-7build3.dsc' hyphen_2.8.8-7build3.dsc 2218 SHA512:a4e02d6c8fa8fc3c263e2e2b786fd9757a68430699bd6f50ddf55ccb8942b2bb61d15e2cb095ea7796cfbf6b8fa79958d014f12ff28a3bf7d49bf4ffb38ad421
'http://archive.ubuntu.com/ubuntu/pool/main/h/hyphen/hyphen_2.8.8.orig.tar.gz' hyphen_2.8.8.orig.tar.gz 638369 SHA512:ee514952be56869840b70fb74f60eba14dc4de246733ff8705492367e8cf00c485f8778a9d5a7ba374c988d4ac9fedbe75826dc559e1b62465dbfba21f6ce7de
'http://archive.ubuntu.com/ubuntu/pool/main/h/hyphen/hyphen_2.8.8-7build3.debian.tar.xz' hyphen_2.8.8-7build3.debian.tar.xz 12800 SHA512:866193b2b0650c06f0066e3123fff9ede13f8c001f37916ec56ab2e2b98cdcc6672686d06f567ba3c7b8ab7bb9c135434fb97501068e6fc8fbac63062c8c4c18
```

### `dpkg` source package: `icu=74.2-1ubuntu3.1`

Binary Packages:

- `libicu74:amd64=74.2-1ubuntu3.1`

Licenses: (parsed from: `/usr/share/doc/libicu74/copyright`)

- `GPL-3`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris icu=74.2-1ubuntu3.1
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_74.2.orig.tar.gz' icu_74.2.orig.tar.gz 26618071 SHA256:5e4fb11d6a3e6b85afb55de8da8a71538f1d8fd64fce893986b37d60e5bb0091
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_74.2.orig.tar.gz.asc' icu_74.2.orig.tar.gz.asc 659 SHA256:1ca528b0017bae639fec7e89e3f988d0fa7def3e2436e5f7f5f9ec7dec2d9ece
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_74.2-1ubuntu3.1.debian.tar.xz' icu_74.2-1ubuntu3.1.debian.tar.xz 64432 SHA256:45c74f50709547b0bfe3de020fd77be92c44d55e7020e718b0a47a0d0382f074
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_74.2-1ubuntu3.1.dsc' icu_74.2-1ubuntu3.1.dsc 2350 SHA256:6cbf2e7018b5d16d634994e32af96f4d60f4468c36674c57f897b68812bbd883
```

### `dpkg` source package: `init-system-helpers=1.66ubuntu1`

Binary Packages:

- `init-system-helpers=1.66ubuntu1`

Licenses: (parsed from: `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.66ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.66ubuntu1.dsc' init-system-helpers_1.66ubuntu1.dsc 2353 SHA512:f6aafcef04d63b54d6ff273312ff2a9194345b8725bfbbaac69793a3d016cbda730f2de8de9862d8038c36ca0fba39b868d6d640701ccf8db417094816d0e9db
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.66ubuntu1.tar.xz' init-system-helpers_1.66ubuntu1.tar.xz 45100 SHA512:222f73347b0ce9eb137c8ce5dc36e9fedbc8dc5ed3f1fde7fbf52258a5437d0a10d3d610ca1d1b206646bb92a5355d1061705440b2d22d9109b5de6d1cb92e98
```

### `dpkg` source package: `iso-codes=4.16.0-1`

Binary Packages:

- `iso-codes=4.16.0-1`

Licenses: (parsed from: `/usr/share/doc/iso-codes/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris iso-codes=4.16.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/i/iso-codes/iso-codes_4.16.0-1.dsc' iso-codes_4.16.0-1.dsc 1957 SHA512:d1c619ae40b7721d3f5f367fab77d49d445123c076726124ea645bd18b623a505bec46d9c9f362ded4aeed3fbe34906aa14d26b46797356e0a37a6cb5fc5fc76
'http://archive.ubuntu.com/ubuntu/pool/main/i/iso-codes/iso-codes_4.16.0.orig.tar.xz' iso-codes_4.16.0.orig.tar.xz 3892348 SHA512:07577f6f0b224c19a089c6c287ee2c03a5bf54376d0e80581633df577ac81490eb3f8d217a6b959c31b6444514a1329ab759d2b30908755f8046106d8807eb1d
'http://archive.ubuntu.com/ubuntu/pool/main/i/iso-codes/iso-codes_4.16.0-1.debian.tar.xz' iso-codes_4.16.0-1.debian.tar.xz 24472 SHA512:2cd2a63cbaf97f5ba5d70fbdd62d6a9f5329d573a49f7a20acf0b9bee94cadd426b7748a36070ef42752fc26f8a61ba8bf3b1895e085c21402f38ba381c1f897
```

### `dpkg` source package: `jbigkit=2.1-6.1ubuntu2`

Binary Packages:

- `libjbig0:amd64=2.1-6.1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libjbig0/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris jbigkit=2.1-6.1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1-6.1ubuntu2.dsc' jbigkit_2.1-6.1ubuntu2.dsc 2199 SHA512:6c5e2f89ed58fd018e27fa73352952192a347c19f8c0a454a2c9e3f9ab90d06bc578f522b32d074100f5de44a8d9d62b3d096fbb7f5f01e2bd803b37a8104de3
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1.orig.tar.gz' jbigkit_2.1.orig.tar.gz 438710 SHA512:c4127480470ef90db1ef3bd2caa444df10b50ed8df0bc9997db7612cb48b49278baf44965028f1807a21028eb965d677e015466306b44683c4ec75a23e1922cf
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1-6.1ubuntu2.debian.tar.xz' jbigkit_2.1-6.1ubuntu2.debian.tar.xz 11172 SHA512:1ecf331f4e530f5f3105c57c2d7b366591f113220745f143b9335f3e383bf04dd963d61aecc4c8eb16ef4ecc74a2f5e2743779d95dcd8626dc6eaea8b2824c18
```

### `dpkg` source package: `keyutils=1.6.3-3build1`

Binary Packages:

- `libkeyutils1:amd64=1.6.3-3build1`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.6.3-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6.3-3build1.dsc' keyutils_1.6.3-3build1.dsc 2211 SHA512:8a40b63e5c4ef4ae645ffdfc865ed91192a7dfc65c8271e59388e63d867b43ac0da90ca1f5e85682886e4561681b83f3bf8bc6a3d90f205dd0feea116f7a30b8
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6.3.orig.tar.gz' keyutils_1.6.3.orig.tar.gz 137022 SHA512:f65965b8566037078b8eeffa66c6fdbe121c8c2bea7fa5bce04cf7ba5ccc50d5b48e51f4a67ca91e4d5d9a12469e7e3eb3036c920ab25e3feba6e93b4c149cf9
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6.3-3build1.debian.tar.xz' keyutils_1.6.3-3build1.debian.tar.xz 13456 SHA512:ef729447f8f4adebdb986d115e227bd908b346e26115eb7a0385a084ad69f6772c914744d8c24928587247cd5fc329ed1305e9b006db276d0445b9614f20603f
```

### `dpkg` source package: `krb5=1.20.1-6ubuntu2.6`

Binary Packages:

- `libgssapi-krb5-2:amd64=1.20.1-6ubuntu2.6`
- `libk5crypto3:amd64=1.20.1-6ubuntu2.6`
- `libkrb5-3:amd64=1.20.1-6ubuntu2.6`
- `libkrb5support0:amd64=1.20.1-6ubuntu2.6`

Licenses: (parsed from: `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `lcms2=2.14-2ubuntu0.1`

Binary Packages:

- `liblcms2-2:amd64=2.14-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/liblcms2-2/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `IJG`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris lcms2=2.14-2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.14.orig.tar.gz' lcms2_2.14.orig.tar.gz 7406694 SHA512:92fba0a457ea81590eba0b8d98b7b621da6a83e3857948585e0b524235954954f9ac1670cf6a19b457c0fce22a87899ea4c5810db1ff2acf7c6b6e0dc4b61a1b
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.14-2ubuntu0.1.debian.tar.xz' lcms2_2.14-2ubuntu0.1.debian.tar.xz 12760 SHA512:d56bd933a8c054d3a43174c9fa148a8c6ff60dbdd39485b4a05bfca2ea69ca888c4fd15fb727e1fd52ad65340eb14f501cb173fe4c3ac83741d182a1c26d4c34
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.14-2ubuntu0.1.dsc' lcms2_2.14-2ubuntu0.1.dsc 2059 SHA512:48cc08cd8988b4e1206f1d3ba5bad185e45df814816574778259357de39134b2f921d4f7c31a79ed9950b8dc4da17782a0577004a822fc5d254b8928d0a4ba7c
```

### `dpkg` source package: `lerc=4.0.0+ds-4ubuntu2`

Binary Packages:

- `liblerc4:amd64=4.0.0+ds-4ubuntu2`

Licenses: (parsed from: `/usr/share/doc/liblerc4/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris lerc=4.0.0+ds-4ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lerc/lerc_4.0.0%2bds-4ubuntu2.dsc' lerc_4.0.0+ds-4ubuntu2.dsc 2733 SHA512:b9fcf936ebc688ac277f11bc4a1233460d4745269c69d26a71867fc92c06ad7540a81c9275c235b66a9623e7360b03db6a9e1ea7aa668aaa084cae22b174edfc
'http://archive.ubuntu.com/ubuntu/pool/main/l/lerc/lerc_4.0.0%2bds.orig.tar.xz' lerc_4.0.0+ds.orig.tar.xz 348140 SHA512:d5539360fa92f40319466fea73a66d0d03aedff886fb75985bfcaeeb77ef516b9fa24b8d83da09c114bf6090bbd68e64d9ac2649a19315895134fa86023478e1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lerc/lerc_4.0.0%2bds-4ubuntu2.debian.tar.xz' lerc_4.0.0+ds-4ubuntu2.debian.tar.xz 7344 SHA512:61f8c1a0b20e3c3016a7787307325e0a56549ff13f88af815bbdfa5e24285e0a090c05ae51b9c9b068b917a64e808cd329c7204e81273169489ba0727e59d1c7
```

### `dpkg` source package: `libabw=0.1.3-1build4`

Binary Packages:

- `libabw-0.1-1:amd64=0.1.3-1build4`

Licenses: (parsed from: `/usr/share/doc/libabw-0.1-1/copyright`)

- `GPL-3`
- `LGPL-3`
- `MPL-1.1 | GPL-3 | LGPL-3`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris libabw=0.1.3-1build4
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libabw/libabw_0.1.3-1build4.dsc' libabw_0.1.3-1build4.dsc 2095 SHA512:3c18597ca1fa0055ad7b081f303e2106c32721efc24149aa33936206330f9fd5bb4f600c2ea65963eddef4e433b32f3d681919ddbb47a3016892b4af448899d1
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libabw/libabw_0.1.3.orig.tar.xz' libabw_0.1.3.orig.tar.xz 318808 SHA512:0d2646e1bad1e11b3da43714ac5931fc67ffdbc4e7a25a44ef5b6e6a41de1e0ae14596b4a87cceb07bf56dbbe9344622b3d60afcb054ee0ab8577ca8e9b5c289
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libabw/libabw_0.1.3-1build4.debian.tar.xz' libabw_0.1.3-1build4.debian.tar.xz 13272 SHA512:7a2f0b62809a4972924eb127779c729e9ff2c959323b2235463ebd47e9008fd146e4dc7b0542f3e6e3c82848e828d886100126609260df37ea6320a7cdb99934
```

### `dpkg` source package: `libassuan=2.5.6-1build1`

Binary Packages:

- `libassuan0:amd64=2.5.6-1build1`

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
$ apt-get source -qq --print-uris libassuan=2.5.6-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.6-1build1.dsc' libassuan_2.5.6-1build1.dsc 2734 SHA512:5a430eef8b98b19d7750ab96717a36749fd586533290ae3ab0129d4d7236f34c524e5fcdb7cc1105cf1fa16c64f604956ef36af0eb952cbf1308b61819364f57
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.6.orig.tar.bz2' libassuan_2.5.6.orig.tar.bz2 577012 SHA512:dcca942d222a2c226a7e34ba7988ee0c3c55bd6032166eb472caf2053db89aeeea7a40e93d8c2887c7ee73c5f838e8b0725e8cfb595accc1606646559362f7ee
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.6.orig.tar.bz2.asc' libassuan_2.5.6.orig.tar.bz2.asc 228 SHA512:aaa1222607320c260d7339a95cca6532947782520b07df3198a5a228129e0247b87f6f3b6fea17590147fbc7345ea36bfa8da45116d3d85c6fc2d4a3df0f629b
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.6-1build1.debian.tar.xz' libassuan_2.5.6-1build1.debian.tar.xz 14412 SHA512:a09775ff7ab780566ec1385cacb7dcd34b8b418f4472b5285b57d442ab21a4482fa720c43fdd81dda7e042300ff7ff97efa0bdb0ebdf7aa29d71b83ae3ee7b00
```

### `dpkg` source package: `libbsd=0.12.1-1build1.1`

Binary Packages:

- `libbsd0:amd64=0.12.1-1build1.1`

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
$ apt-get source -qq --print-uris libbsd=0.12.1-1build1.1
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.12.1.orig.tar.xz' libbsd_0.12.1.orig.tar.xz 444048 SHA256:d7747f8ec1baa6ff5c096a9dd587c061233dec90da0f1aedd66d830f6db6996a
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.12.1.orig.tar.xz.asc' libbsd_0.12.1.orig.tar.xz.asc 833 SHA256:04a4b66da93ea3c761e15fcedd705a969b67597d0619c3ebc5fe3cf72d477f1f
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.12.1-1build1.1.debian.tar.xz' libbsd_0.12.1-1build1.1.debian.tar.xz 18732 SHA256:4086dc52ae53f0d7625a593c331460377868edc2a5606f4d8a341565aa94b2be
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.12.1-1build1.1.dsc' libbsd_0.12.1-1build1.1.dsc 2458 SHA256:a44c2a70dbb9703c342ae49525507d22795b37308302c6167d72c3cbd3e76236
```

### `dpkg` source package: `libcap-ng=0.8.4-2build2`

Binary Packages:

- `libcap-ng0:amd64=0.8.4-2build2`

Licenses: (parsed from: `/usr/share/doc/libcap-ng0/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libcap-ng=0.8.4-2build2
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.8.4-2build2.dsc' libcap-ng_0.8.4-2build2.dsc 2351 SHA512:bbe5c806e1495dbdd84b80217db334517f792caff349575687e181371c81b2ab503bc120d73eb91bdd084d2a86bec16c852f800fec60ef3ae5c237776f5122f7
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.8.4.orig.tar.gz' libcap-ng_0.8.4.orig.tar.gz 59317 SHA512:3e640ba4bfa2d5b5d0eb463abca3b2c745b10e929571c0ec32eb068bdc41fd95e19f7131893a22ceebb4d1f1083d3d87d9a32f0808442d594ac5940791152acf
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.8.4-2build2.debian.tar.xz' libcap-ng_0.8.4-2build2.debian.tar.xz 7384 SHA512:c21cf4b7df670034773ab883e5149bc28606d11416a5f075c85106395a6d46ea529227e270f9342c910631059b8cf94a55dc5cfa5ec908a6f57d6a8c0a32277e
```

### `dpkg` source package: `libcap2=1:2.66-5ubuntu2.4`

Binary Packages:

- `libcap2:amd64=1:2.66-5ubuntu2.4`
- `libcap2-bin=1:2.66-5ubuntu2.4`

Licenses: (parsed from: `/usr/share/doc/libcap2/copyright`, `/usr/share/doc/libcap2-bin/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libcap2=1:2.66-5ubuntu2.4
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.66.orig.tar.xz' libcap2_2.66.orig.tar.xz 181592 SHA512:ac005b622f6e065f30ce282a5c87240e7b9da75366ee537aa4835bc501b44bc242c10a4ba4dc070e2415fc7f635d1c3c4e45fbeeaf962cf7973dda82bf6377f0
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.66-5ubuntu2.4.debian.tar.xz' libcap2_2.66-5ubuntu2.4.debian.tar.xz 24724 SHA512:d8e7c11b8457de7606d007d8e447c2569a43d937096153b95e7702c4adef8031b0adb89be6d534896c93cb2e9a469eafbd6681d02a5567c33ed35bd2f94b1762
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.66-5ubuntu2.4.dsc' libcap2_2.66-5ubuntu2.4.dsc 2319 SHA512:4792efe7caeecddd81aed675be95828fdc03140484303be3548b7f55f0ffcd2fe039c87b4b4cd0f5ef30222adb3bb1baedb8a38f6418b64bd9816f9a318d60c9
```

### `dpkg` source package: `libcdr=0.1.7-1build2`

Binary Packages:

- `libcdr-0.1-1:amd64=0.1.7-1build2`

Licenses: (parsed from: `/usr/share/doc/libcdr-0.1-1/copyright`)

- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris libcdr=0.1.7-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcdr/libcdr_0.1.7-1build2.dsc' libcdr_0.1.7-1build2.dsc 2250 SHA512:69f0e791e3dfd2a1bebeead979e09656b5a2f10ecf82b53f32da6a4dfd726a841098441950beb30646729df22910d92c7c6b0e3a307a103625dca5ee71a65b6e
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcdr/libcdr_0.1.7.orig.tar.xz' libcdr_0.1.7.orig.tar.xz 618528 SHA512:9af327fcf9f3f3ef1c446e92f4d2ff06ebaccb54d4c65b021960a212bf416f7098006324625f3e1c00500597eaa9da39832cc27b83a6cd593e97b76b1eb63d38
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcdr/libcdr_0.1.7-1build2.debian.tar.xz' libcdr_0.1.7-1build2.debian.tar.xz 8232 SHA512:3c78b863563e24d71c1693a54ae130312d7ba19fcb82e404c398cc8e5432553d8bf63d9a3024afb90b112cea2d1d8123438b06c1d98e9a499026af3a25f2a4b9
```

### `dpkg` source package: `libdeflate=1.19-1build1.1`

Binary Packages:

- `libdeflate0:amd64=1.19-1build1.1`

Licenses: (parsed from: `/usr/share/doc/libdeflate0/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libdeflate=1.19-1build1.1
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdeflate/libdeflate_1.19.orig.tar.gz' libdeflate_1.19.orig.tar.gz 187684 SHA256:27bf62d71cd64728ff43a9feb92f2ac2f2bf748986d856133cc1e51992428c25
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdeflate/libdeflate_1.19-1build1.1.debian.tar.xz' libdeflate_1.19-1build1.1.debian.tar.xz 5004 SHA256:58f866e842d3d8cf6735e6a2cf7be887c712f8c07f8352a94e2fc4fed9d008bf
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdeflate/libdeflate_1.19-1build1.1.dsc' libdeflate_1.19-1build1.1.dsc 2306 SHA256:3a2552cdace2cae2b98b81b64d225f4247bc2ed4409dc0ff9eff1db9843d79d0
```

### `dpkg` source package: `libdrm=2.4.125-1ubuntu0.1~24.04.2`

Binary Packages:

- `libdrm-common=2.4.125-1ubuntu0.1~24.04.2`
- `libdrm2:amd64=2.4.125-1ubuntu0.1~24.04.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libdrm=2.4.125-1ubuntu0.1~24.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdrm/libdrm_2.4.125.orig.tar.xz' libdrm_2.4.125.orig.tar.xz 485592 SHA512:faad141f48a49915c0312eb635df76968f0f4d41bb6851be625a7ae0e24826e7283b5ec9ec3b09ead9a96297bf42221c411288f9b000c3dbc159ed8dde93a7e4
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdrm/libdrm_2.4.125.orig.tar.xz.asc' libdrm_2.4.125.orig.tar.xz.asc 833 SHA512:e6bf22220e0a5212164f2c1ed0dd4dbbd3c535ac9856af7e3098778a9c0ada2accd955165dc04f48386a0f006b57145399381a4e9fc0d0e6365c6239810be147
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdrm/libdrm_2.4.125-1ubuntu0.1%7e24.04.2.debian.tar.xz' libdrm_2.4.125-1ubuntu0.1~24.04.2.debian.tar.xz 77556 SHA512:e17919e5a33ca4d6c6518f8ec81f30cd31a38f9b1da072c0e846929bf13e1621319d7147c60d51b92c3d22ac0ab59f8a07c3c794cc2ea187c119091263061077
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdrm/libdrm_2.4.125-1ubuntu0.1%7e24.04.2.dsc' libdrm_2.4.125-1ubuntu0.1~24.04.2.dsc 3328 SHA512:4e5fcde5b02e6a79b984d16b4dd92d8f60fa95c619db2b1e5a6ce8e7a0389938a4c7a6be94bc3ee503dea2fc3fdc4467825142f574af7ab46e8a2225ed561605
```

### `dpkg` source package: `libe-book=0.1.3-2build6`

Binary Packages:

- `libe-book-0.1-1:amd64=0.1.3-2build6`

Licenses: (parsed from: `/usr/share/doc/libe-book-0.1-1/copyright`)

- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris libe-book=0.1.3-2build6
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libe-book/libe-book_0.1.3-2build6.dsc' libe-book_0.1.3-2build6.dsc 2183 SHA512:394392e8e3e64618ac12c4dae4a59f76ebe830f45345ab347084591d3677c5cff7e8714114c029961f50a0b9be2a955faa4f17713cf1b9b28782e2f3b188d564
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libe-book/libe-book_0.1.3.orig.tar.xz' libe-book_0.1.3.orig.tar.xz 416268 SHA512:56dfa93816b8a1b7e223bda517ff81547fd7b311c3fe2bea64b12c4290642d4b9ed3778df06c4ee7a65f2b9db57702c00c32aec819efb7820115165af3d5ebdc
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libe-book/libe-book_0.1.3-2build6.debian.tar.xz' libe-book_0.1.3-2build6.debian.tar.xz 7888 SHA512:fea895138f33a9d8931b25740344b8cac98b9fafbe5b9cb62f316beb44b13c5d14ac835b39aa606a6f2d9bf7e7258fa8a2e34c617c9adba5c3e2ee97c172ab93
```

### `dpkg` source package: `libeot=0.01-5build3`

Binary Packages:

- `libeot0:amd64=0.01-5build3`

Licenses: (parsed from: `/usr/share/doc/libeot0/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`
- `other`

Source:

```console
$ apt-get source -qq --print-uris libeot=0.01-5build3
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libeot/libeot_0.01-5build3.dsc' libeot_0.01-5build3.dsc 2081 SHA512:6f0f46f3c44a34c61e58d8885502140ce70d6e8bacdf4d7d786283e2f30183f3c80b979bbab47704d22982ae15625148720e8a3d12cafc2041677251cfa3fd6f
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libeot/libeot_0.01.orig.tar.bz2' libeot_0.01.orig.tar.bz2 260288 SHA512:897b3d62fdf327bcc4f3033c7b2013c1e89c7e4d98e321eee6470a9b4cf738021deea4fb3c08a7fa1bc1fb4b733ff49e822161dc68d38aef01f7eb1b2fdebc31
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libeot/libeot_0.01-5build3.debian.tar.xz' libeot_0.01-5build3.debian.tar.xz 7736 SHA512:6a2e491fa5248a2c662b98c02b27dd37dd7c9282b3616c1e0e1a57587eb59bab2fd4a11956a3f63f8a4eb15964581c4ef8550661ab9bd8e62a1750eac32e6726
```

### `dpkg` source package: `libepoxy=1.5.10-1build1`

Binary Packages:

- `libepoxy0:amd64=1.5.10-1build1`

Licenses: (parsed from: `/usr/share/doc/libepoxy0/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libepoxy=1.5.10-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libepoxy/libepoxy_1.5.10-1build1.dsc' libepoxy_1.5.10-1build1.dsc 2227 SHA512:d6b5352b19e8563affa4444c4bcbaeeb495b4345250add456723940bfc7796c8f5cb0bb07e0853ff9c84d97a061116ef9170b2f99d531594ebee246851598dcd
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libepoxy/libepoxy_1.5.10.orig.tar.gz' libepoxy_1.5.10.orig.tar.gz 332078 SHA512:6786f31c6e2865e68a90eb912900a86bf56fd3df4d78a477356886ac3b6ef52ac887b9c7a77aa027525f868ae9e88b12e5927ba56069c2e115acd631fca3abee
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libepoxy/libepoxy_1.5.10-1build1.debian.tar.xz' libepoxy_1.5.10-1build1.debian.tar.xz 17596 SHA512:2e5035f86fb009318551c864338c79a31eedd76f330f63da065fb99ac24e82de8bf428e311f36fab0965f4e2e9a66d9a16947b39a3c0bdc065754c22889835ac
```

### `dpkg` source package: `libepubgen=0.1.1-1ubuntu6`

Binary Packages:

- `libepubgen-0.1-1:amd64=0.1.1-1ubuntu6`

Licenses: (parsed from: `/usr/share/doc/libepubgen-0.1-1/copyright`)

- `MPL-2.0`
- `other`

Source:

```console
$ apt-get source -qq --print-uris libepubgen=0.1.1-1ubuntu6
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libepubgen/libepubgen_0.1.1-1ubuntu6.dsc' libepubgen_0.1.1-1ubuntu6.dsc 2177 SHA512:5e9f9c567fe23e81ddd29213989971ea1b1cd15daba87478a8953e0f96845216cf69eb926a9105b05c6e8f47d20b67d6d6a11404c1d7f51581ca33fa63835669
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libepubgen/libepubgen_0.1.1.orig.tar.xz' libepubgen_0.1.1.orig.tar.xz 324380 SHA512:9d911384672b5394ff1df3280a5c9fe12888530c41f177aa100f135954e2ec279b64193f8388f12c96f6a6e587483ce853e74fe45b29fb748a930512dd011c2b
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libepubgen/libepubgen_0.1.1-1ubuntu6.debian.tar.xz' libepubgen_0.1.1-1ubuntu6.debian.tar.xz 6404 SHA512:8111eec8b2042dcfadfb0281703c4c2158fb766a5b1f8878dfc967a29e584a701217cae0986ef803d6179818e04f73420152c665a25730243e8e02a6c665237e
```

### `dpkg` source package: `libetonyek=0.1.10-5build1`

Binary Packages:

- `libetonyek-0.1-1:amd64=0.1.10-5build1`

Licenses: (parsed from: `/usr/share/doc/libetonyek-0.1-1/copyright`)

- `MPL 2.0`

Source:

```console
$ apt-get source -qq --print-uris libetonyek=0.1.10-5build1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libetonyek/libetonyek_0.1.10-5build1.dsc' libetonyek_0.1.10-5build1.dsc 2399 SHA512:4113f31dee824df227a8bf74fb04095f72cbc5668ce4f45c060c701632ade813df3d12cf5c3cc21e52f21f6c560510821c1a478b893b856bff9c3c7e71d25189
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libetonyek/libetonyek_0.1.10.orig.tar.xz' libetonyek_0.1.10.orig.tar.xz 1494000 SHA512:516a14fcb7b7b5898484a4263d593a036ac728b90144da9d1c22a5d0fdffc879839e19a7b390f99d924c390d433e64433fb08939b1e04ca24359315571c5772b
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libetonyek/libetonyek_0.1.10-5build1.debian.tar.xz' libetonyek_0.1.10-5build1.debian.tar.xz 42652 SHA512:5288aa0a3d36d596cbd37af07d5a020ac115939d505610f9f8a0d9756a9f36222294725faa607065a76b2444ffe81d1f327911dcf153e408c891f7d9e2dbb617
```

### `dpkg` source package: `libexttextcat=3.4.7-1build1`

Binary Packages:

- `libexttextcat-2.0-0:amd64=3.4.7-1build1`
- `libexttextcat-data=3.4.7-1build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libexttextcat=3.4.7-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexttextcat/libexttextcat_3.4.7-1build1.dsc' libexttextcat_3.4.7-1build1.dsc 2231 SHA512:00371787a63467abb25b31e49dbc668d0b0a12fb4416913e1d227dc8b8ad5ff78a5127c5699abe86e575d11b0ca3d0814409968bf57b3a1eabd5cf3d1e74c619
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexttextcat/libexttextcat_3.4.7.orig.tar.xz' libexttextcat_3.4.7.orig.tar.xz 1122804 SHA512:ccd95061419aedd651c3b899fade6d3cc8ebf87ddfea622edecacd810798de8257829255e3cb3325fa2a0b9f54bc20d4e24b6596ae37891ed3fbe7c0425ff864
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexttextcat/libexttextcat_3.4.7-1build1.debian.tar.xz' libexttextcat_3.4.7-1build1.debian.tar.xz 7380 SHA512:9768837b5a8df67ad0cc921d09aa62bac5468d824e07af981522c8c1d3286a606398be026b5a890ce50f43ddcfd08beec87b30f59c8d224179cbe77993314269
```

### `dpkg` source package: `libffi=3.4.6-1build1`

Binary Packages:

- `libffi8:amd64=3.4.6-1build1`

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
$ apt-get source -qq --print-uris libffi=3.4.6-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.4.6-1build1.dsc' libffi_3.4.6-1build1.dsc 2055 SHA512:21cc7b6880fac7c143e88a81c47e5144d38bea3fd66f71182d1408f56bfc6801d39481638e04c02bb29dfc2429e3d968b65591cf95d20cfeca6769684d3c86ac
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.4.6.orig.tar.gz' libffi_3.4.6.orig.tar.gz 598175 SHA512:cbacde8911aa6a9fae5c0a8d5959221a25bf8a3310c44a7f4ef755e6676f5226b9f2d1c6cfb36c117ebed10d379aa24b4b7516c3e0dca3bf73f9439057463eb8
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.4.6-1build1.debian.tar.xz' libffi_3.4.6-1build1.debian.tar.xz 10736 SHA512:432e6e7ddb9aecca508f982293112b2bf86f5da2d6d646437b10b2857dadaf2c8aecb1646d2e592c259df26a5240f69cc1411155cbad8c3d942748d6856e587c
```

### `dpkg` source package: `libfreehand=0.1.2-3build3`

Binary Packages:

- `libfreehand-0.1-1=0.1.2-3build3`

Licenses: (parsed from: `/usr/share/doc/libfreehand-0.1-1/copyright`)

- `GPL-3`
- `LGPL-3`
- `MPL-1.1 | GPL-3+ | LGPL-3+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris libfreehand=0.1.2-3build3
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfreehand/libfreehand_0.1.2-3build3.dsc' libfreehand_0.1.2-3build3.dsc 2171 SHA512:ce07d9671fbf74c2c01c62ccf232b5d16017dfe19b5b67b3ff84cf46fb65f1a626c385ffaa3dc9e1ece54f7db47af9253c8b6da89e595d8e3fbf90ac63c9e68c
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfreehand/libfreehand_0.1.2.orig.tar.xz' libfreehand_0.1.2.orig.tar.xz 516132 SHA512:4112a76ac99999801d97d1b282596d631d8496a5bf65778ab26aa06da86637b1e2b630648a67ea01bf3316ecec9f2715546baff27af090b900267c87a011b963
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfreehand/libfreehand_0.1.2-3build3.debian.tar.xz' libfreehand_0.1.2-3build3.debian.tar.xz 13732 SHA512:fe6e88b3a1afe9b81ab6e096d1bb7dfb040e08943bccc9bc848bb4895c617f811d4b6a309048677114f2dadaf1544f77b5b895d281d10e0f1f0f90d81decd2a5
```

### `dpkg` source package: `libgcrypt20=1.10.3-2ubuntu0.1`

Binary Packages:

- `libgcrypt20:amd64=1.10.3-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.10.3-2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.10.3.orig.tar.bz2' libgcrypt20_1.10.3.orig.tar.bz2 3783827 SHA512:8a8d4c61a6622d8481ceb9edc88ec43f58da32e316f79f8d4775325a48f8936aaa9eb355923b39e2c267b784e9c390600daeb62e0c94f00e30bbadb0d8c0865d
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.10.3.orig.tar.bz2.asc' libgcrypt20_1.10.3.orig.tar.bz2.asc 390 SHA512:9b176a7bca3b8521fe03c3f771a3d039c4e1da98f6ce61f6c1bbb485e5785ca58e191c4eb54d6c69a1ae79e82d786c22836bef96d30d7b9852b508f3b65fb15a
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.10.3-2ubuntu0.1.debian.tar.xz' libgcrypt20_1.10.3-2ubuntu0.1.debian.tar.xz 37276 SHA512:3eb924b608a62a28bd023aaccf8f9f2e64054eae476990c814d07eeb2a9ec237b8794676f833fd40bbfea9de0f26eee486d9a7413b7ad12d3d0ac0397595ac19
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.10.3-2ubuntu0.1.dsc' libgcrypt20_1.10.3-2ubuntu0.1.dsc 2914 SHA512:9065ceb36be17ea49836524078ea1ffd24391785851259894324f1f340af14d85b11ee1511c6376987d63542d8d338c4538d1cfff16e2d11a6cb595a2a3f5e99
```

### `dpkg` source package: `libgpg-error=1.47-3build2.1`

Binary Packages:

- `libgpg-error0:amd64=1.47-3build2.1`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.47-3build2.1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.47.orig.tar.bz2' libgpg-error_1.47.orig.tar.bz2 1020862 SHA256:9e3c670966b96ecc746c28c2c419541e3bcb787d1a73930f5e5f5e1bcbbb9bdb
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.47.orig.tar.bz2.asc' libgpg-error_1.47.orig.tar.bz2.asc 228 SHA256:6ab547bf020761e1df80b08335773a91c345ff2c1344f15b1f7d195293ab21a5
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.47-3build2.1.debian.tar.xz' libgpg-error_1.47-3build2.1.debian.tar.xz 18776 SHA256:f02a079a6ddf9930659c3402820b6bd190687e8f1c223f340c965a9da74abcd5
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.47-3build2.1.dsc' libgpg-error_1.47-3build2.1.dsc 3007 SHA256:3c8abf463c9ade945fe2e9d87c4aa2bff0026964207b07e99432d9ef6d9436d8
```

### `dpkg` source package: `libice=2:1.0.10-1build3`

Binary Packages:

- `libice6:amd64=2:1.0.10-1build3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libice=2:1.0.10-1build3
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.10-1build3.dsc' libice_1.0.10-1build3.dsc 2181 SHA512:7f380aeae73731a89a717a8374072b7beb2bfcccc89086b2e1f5d3f9e790783e318c337c4282f7fb73b6512d04667c1a66818617b6089548032bcd226aee58aa
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.10.orig.tar.gz' libice_1.0.10.orig.tar.gz 481960 SHA512:2d4757f7325eb01180b5d7433cc350eb9606bd3afe82dabc8aa164feda75ef03a0624d74786e655c536c24a80d0ccb2f1e3ecbb04d3459b23f85455006ca8a91
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.10-1build3.diff.gz' libice_1.0.10-1build3.diff.gz 11722 SHA512:a643009809766e385b9eaf7fddbf4ff4acdc5dc98b5a8a8bb940c4ead4e635d13123494e5cbecad487cb7b7d1cf4ae826f957ef1e552362f2efe483057cb9916
```

### `dpkg` source package: `libidn2=2.3.7-2build1.1`

Binary Packages:

- `libidn2-0:amd64=2.3.7-2build1.1`

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
$ apt-get source -qq --print-uris libidn2=2.3.7-2build1.1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.7.orig.tar.gz' libidn2_2.3.7.orig.tar.gz 2155214 SHA256:4c21a791b610b9519b9d0e12b8097bf2f359b12f8dd92647611a929e6bfd7d64
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.7.orig.tar.gz.asc' libidn2_2.3.7.orig.tar.gz.asc 228 SHA256:d4e78fc1c5a5c35980be3a04dd864574f450d55921360b0aa19326c75ada4a98
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.7-2build1.1.debian.tar.xz' libidn2_2.3.7-2build1.1.debian.tar.xz 16468 SHA256:50d3154a3a5b3506aa340c1784f96bfe0f4c5608e2a1a9dd265aa204da4ef327
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.7-2build1.1.dsc' libidn2_2.3.7-2build1.1.dsc 2651 SHA256:fa2970145d391578511ef78bc74a9ba7a57cff510d9e5fba39520f63b023986c
```

### `dpkg` source package: `libjpeg-turbo=2.1.5-2ubuntu2`

Binary Packages:

- `libjpeg-turbo8:amd64=2.1.5-2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libjpeg-turbo8/copyright`)

- `BSD-3-clause`
- `BSD-BY-LC-NE`
- `Expat`
- `NTP`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris libjpeg-turbo=2.1.5-2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_2.1.5-2ubuntu2.dsc' libjpeg-turbo_2.1.5-2ubuntu2.dsc 2535 SHA512:aaf83542c31e42beb369561f0eee167e6bbb117d535f145a82c029926ba8cbc66a4e2593a608375d63e5aa0fd5d3d0bfa0d4d638168918afd9a62959e3a38079
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_2.1.5.orig.tar.gz' libjpeg-turbo_2.1.5.orig.tar.gz 2264471 SHA512:20036303fbe5703a5742dc3778cc5deb2eb98d00a9852e7e80ba73c195bba011ec206c090589c482f1153f74505c3fe06d96af00f6beaa65a7fcf7ffaf626fc2
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_2.1.5-2ubuntu2.debian.tar.xz' libjpeg-turbo_2.1.5-2ubuntu2.debian.tar.xz 108492 SHA512:52a61609f8aa4397be2ff97f40fe8429543d82a1a0bd3bcdee43e79640a0342b537ce7a2d31268172760d9de75683a534609db9ce66874fb20eac3dcb9419038
```

### `dpkg` source package: `libjpeg8-empty=8c-2ubuntu11`

Binary Packages:

- `libjpeg8:amd64=8c-2ubuntu11`

Licenses: (parsed from: `/usr/share/doc/libjpeg8/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libjpeg8-empty=8c-2ubuntu11
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg8-empty/libjpeg8-empty_8c-2ubuntu11.dsc' libjpeg8-empty_8c-2ubuntu11.dsc 1579 SHA512:345994a54ea05e741e0e6d35f0a7fc39f45c3fc34a995e972ae6b2843baf0b2fcc0bf4726aa7bb86249e39f46a7e23a273d2430d0fcb9bb88f03c6e9d3c912aa
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg8-empty/libjpeg8-empty_8c-2ubuntu11.tar.gz' libjpeg8-empty_8c-2ubuntu11.tar.gz 1959 SHA512:eb9cec5b6f3fa5e65950b72c14709d33e638b52a2bd2ac2f2297e0edb9e9e224e6da9bbe355e082026b92d980614e8fe40196e4a3ed7cdd560a65f03b138782b
```

### `dpkg` source package: `libksba=1.6.6-1build1`

Binary Packages:

- `libksba8:amd64=1.6.6-1build1`

Licenses: (parsed from: `/usr/share/doc/libksba8/copyright`)

- `FSFUL`
- `GPL-3`
- `LGPL-2.1-or-later`

Source:

```console
$ apt-get source -qq --print-uris libksba=1.6.6-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.6.6-1build1.dsc' libksba_1.6.6-1build1.dsc 2622 SHA512:9905b22e5b0cdce554951103b8fe95a259aca936f96e90380538f05065d3f1b27a7eee8f54f9372731413c245aa2506614baa8567cdba1a56850765dfb8572fd
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.6.6.orig.tar.bz2' libksba_1.6.6.orig.tar.bz2 708510 SHA512:3b30bef9452ae0c52b4a52e9145fbd6dc57cf7a2b59302e3af063db6b45384e8ed7af62604efd7939b9e0cb5931e946b15609888e9699fafe4acbb0cbf138087
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.6.6.orig.tar.bz2.asc' libksba_1.6.6.orig.tar.bz2.asc 228 SHA512:5bfd9441b3e46b24391c5d9360747c9eaabf9d645ceae27af241d4ed1f7e9cc0fb538dc6d8db757d444eefa8d45b2082fd055256160c59d97bf5121f05d750ef
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.6.6-1build1.debian.tar.xz' libksba_1.6.6-1build1.debian.tar.xz 14816 SHA512:12251deb546de2d2ba6dc2a7f8c01a22218579de7e9a16ae6ecf728e07404fc601bd85f43ce907c056dfdbe9c584887acef9f9a5a7090c75a3fb2c8d2e50d0c3
```

### `dpkg` source package: `liblangtag=0.6.7-1build2`

Binary Packages:

- `liblangtag-common=0.6.7-1build2`
- `liblangtag1:amd64=0.6.7-1build2`

Licenses: (parsed from: `/usr/share/doc/liblangtag-common/copyright`, `/usr/share/doc/liblangtag1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL | MPL`

Source:

```console
$ apt-get source -qq --print-uris liblangtag=0.6.7-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblangtag/liblangtag_0.6.7-1build2.dsc' liblangtag_0.6.7-1build2.dsc 2504 SHA512:61f589f34aa34ddd168ecb80ac8f98f1d2b849b4ea0152499fc0ddaabef6deaae8686c60ebfc78f5564e4cab83e81d5aa0a2ca2903c3751bdb5df3beed39e92f
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblangtag/liblangtag_0.6.7.orig.tar.bz2' liblangtag_0.6.7.orig.tar.bz2 757041 SHA512:3628728f46865507d8794c1e7286c6ca04fc49f905594ab76db7bd2c8d8f9fac1e33693314d56bca6fdd8f99b8d207e6e6d2f751474832ceb60a4cdbf10fed68
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblangtag/liblangtag_0.6.7-1build2.debian.tar.xz' liblangtag_0.6.7-1build2.debian.tar.xz 6472 SHA512:f1486f0cbf7b8222ee79a65dab7e6492d2e940dbae31e5fbe341773ce527e38bd796e7807ce69392bde2ad464bfa6769703c526bafe5e0db9d60237919013533
```

### `dpkg` source package: `libmd=1.1.0-2build1.1`

Binary Packages:

- `libmd0:amd64=1.1.0-2build1.1`

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
$ apt-get source -qq --print-uris libmd=1.1.0-2build1.1
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.1.0.orig.tar.xz' libmd_1.1.0.orig.tar.xz 271228 SHA256:1bd6aa42275313af3141c7cf2e5b964e8b1fd488025caf2f971f43b00776b332
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.1.0.orig.tar.xz.asc' libmd_1.1.0.orig.tar.xz.asc 833 SHA256:402fd3024e43ab975733d09e661804a58ca58697194e4b15216b1217cfe1dadb
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.1.0-2build1.1.debian.tar.xz' libmd_1.1.0-2build1.1.debian.tar.xz 8448 SHA256:ed337af7e336b7dbb6b246c339baa34c9e832bf614a44d06158238259df12307
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.1.0-2build1.1.dsc' libmd_1.1.0-2build1.1.dsc 2391 SHA256:11dfd22bba97a4c4ca6c09f34743ac6c72a34eb81344e3a1681c45e2d60ce239
```

### `dpkg` source package: `libmspub=0.1.4-3build7`

Binary Packages:

- `libmspub-0.1-1:amd64=0.1.4-3build7`

Licenses: (parsed from: `/usr/share/doc/libmspub-0.1-1/copyright`)

- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris libmspub=0.1.4-3build7
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmspub/libmspub_0.1.4-3build7.dsc' libmspub_0.1.4-3build7.dsc 2237 SHA512:e719927d58bdfdec06e5f99963ffa554004bf315b0947005a730bdb476c14390d700f9747e4ea55242f6710276943017e49096d3eb1facb273b5f5a08998e70f
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmspub/libmspub_0.1.4.orig.tar.xz' libmspub_0.1.4.orig.tar.xz 377472 SHA512:7275f890645961b3fd56df4584788962e8c064fe3f99f5834c6ba6177ce76d00d544fbe9a25b7ab2f4180d2f3a90c609fe0bb68d61ea24e95b086190390fff31
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmspub/libmspub_0.1.4-3build7.debian.tar.xz' libmspub_0.1.4-3build7.debian.tar.xz 7808 SHA512:424c7bf059fd6bd963f8affc014f97f462727839dd43a21310e44fdb28b3b7013fca9dda489666dbd4f004091e31a99e37d68a8a4d96e3daf475d70fd9ace15f
```

### `dpkg` source package: `libmwaw=0.3.22-1build1`

Binary Packages:

- `libmwaw-0.3-3:amd64=0.3.22-1build1`

Licenses: (parsed from: `/usr/share/doc/libmwaw-0.3-3/copyright`)

- `BSD`
- `LGPL`
- `MPL2.0 | LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libmwaw=0.3.22-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmwaw/libmwaw_0.3.22-1build1.dsc' libmwaw_0.3.22-1build1.dsc 2204 SHA512:ff43475cff4ef15c080a0e77d4cb9e039d722e5adbc6255a61c49d9b777f1ad374367510095cc8b71ad7a6b2730addd40193f6dcb5373ab3e20af25c18005e79
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmwaw/libmwaw_0.3.22.orig.tar.xz' libmwaw_0.3.22.orig.tar.xz 1476620 SHA512:8682e7006430764cb825cd0bf4822ff42ea3035606e13a804afb9fa3c6dc583f34ae24cea226c1d31eae95224525289801c0afa3853adc6ab396bb9df34a60b4
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmwaw/libmwaw_0.3.22-1build1.debian.tar.xz' libmwaw_0.3.22-1build1.debian.tar.xz 8444 SHA512:5cb8715187227c4a1ff63fc9bb7a9a877b2d67ff9b56b2c898ac12334ed3aa4d0139953f19d18a32923a1afbc48076b69440bcfaa2e1057e9b8a0d0ed20ec149
```

### `dpkg` source package: `libodfgen=0.1.8-2build3`

Binary Packages:

- `libodfgen-0.1-1:amd64=0.1.8-2build3`

Licenses: (parsed from: `/usr/share/doc/libodfgen-0.1-1/copyright`)

- `LGPL`
- `MPL-2.0 | LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libodfgen=0.1.8-2build3
'http://archive.ubuntu.com/ubuntu/pool/main/libo/libodfgen/libodfgen_0.1.8-2build3.dsc' libodfgen_0.1.8-2build3.dsc 2083 SHA512:4bfb756e68dac725ea370006becc9a0c6a4bcdcb4af800c648a0f2cb8996ce82566018994fcbfd50ad68d615bcb90963375158e4efb2d6a334dfa86428e74089
'http://archive.ubuntu.com/ubuntu/pool/main/libo/libodfgen/libodfgen_0.1.8.orig.tar.xz' libodfgen_0.1.8.orig.tar.xz 386156 SHA512:e4a15aa7f1db483cdbb9c531bfb234b4794890cc583c70e8aa3374771be8928e7917105d48dab80d1ab6d57e43fa78415097d9b897cb12fb2a609f4647ee99d6
'http://archive.ubuntu.com/ubuntu/pool/main/libo/libodfgen/libodfgen_0.1.8-2build3.debian.tar.xz' libodfgen_0.1.8-2build3.debian.tar.xz 7200 SHA512:fc2ab590919bf8dbe8486d696266d02516328c7ac1f3a2dbb62f2d1518393b5d39af52d51d1ae172c2dcaa1b1bc9d41fea0c250d1c02838c5a3ea10846e7adfe
```

### `dpkg` source package: `liborcus=0.19.2-3build3`

Binary Packages:

- `liborcus-0.18-0:amd64=0.19.2-3build3`
- `liborcus-parser-0.18-0:amd64=0.19.2-3build3`

Licenses: (parsed from: `/usr/share/doc/liborcus-0.18-0/copyright`, `/usr/share/doc/liborcus-parser-0.18-0/copyright`)

- `Expat`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+ with autoconf exception`
- `MIT`
- `MPL-2.0`
- `other`

Source:

```console
$ apt-get source -qq --print-uris liborcus=0.19.2-3build3
'http://archive.ubuntu.com/ubuntu/pool/main/libo/liborcus/liborcus_0.19.2-3build3.dsc' liborcus_0.19.2-3build3.dsc 2972 SHA512:bddf5e78e551851f3add8ba607a94de39ec8b5725a8964352f6ed33ecb16f69bad5f32d9a7b9cc21389bd607455799a6ef015587946f333ed1798684e5f6cb03
'http://archive.ubuntu.com/ubuntu/pool/main/libo/liborcus/liborcus_0.19.2.orig.tar.bz2' liborcus_0.19.2.orig.tar.bz2 2533444 SHA512:7d723b9788d97a9d42ad72522fb920f120a34e2dc06a08779176a5a18840d2e8f3838f11ded20fa1fe5838e207c201017566b5a098960e9aa7c67128453f3863
'http://archive.ubuntu.com/ubuntu/pool/main/libo/liborcus/liborcus_0.19.2-3build3.debian.tar.xz' liborcus_0.19.2-3build3.debian.tar.xz 9668 SHA512:863ccfa7ffec262e18d838666100be9958945bd0c230a612c4a275262eb1085ec60dec4776abb5784b383c8d9dfe6d5c5205c57aaa7dea9f9318d5d29d88795c
```

### `dpkg` source package: `libpagemaker=0.0.4-1build4`

Binary Packages:

- `libpagemaker-0.0-0:amd64=0.0.4-1build4`

Licenses: (parsed from: `/usr/share/doc/libpagemaker-0.0-0/copyright`)

- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris libpagemaker=0.0.4-1build4
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpagemaker/libpagemaker_0.0.4-1build4.dsc' libpagemaker_0.0.4-1build4.dsc 2140 SHA512:7b1323cbc8bdeaa5d594048326d33397124ab302fd622a17093b03d90ac07670713bb3a23765f055a657a02561b8d8363f48adc4a6b1842282700e924b9ff852
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpagemaker/libpagemaker_0.0.4.orig.tar.xz' libpagemaker_0.0.4.orig.tar.xz 306496 SHA512:d9d9436622ae378da2a3c8e50a35b6133582a595c9ff0fe0e3b124fd0b83f1f12afdfc6a27d16b509ca9bab33067215d7300e505d4bf6b280be7e4bf46da6c64
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpagemaker/libpagemaker_0.0.4-1build4.debian.tar.xz' libpagemaker_0.0.4-1build4.debian.tar.xz 6920 SHA512:a952441ee460ca2ac97845b841227517605a98cddb45086854a649e6e7d4e66446730eea87d0a8aae97ea9b6ccf940afaa6a7677aaa03809aeaba298ba55b4e5
```

### `dpkg` source package: `libpng1.6=1.6.43-5ubuntu0.6`

Binary Packages:

- `libpng16-16t64:amd64=1.6.43-5ubuntu0.6`

Licenses: (parsed from: `/usr/share/doc/libpng16-16t64/copyright`)

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
$ apt-get source -qq --print-uris libpng1.6=1.6.43-5ubuntu0.6
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.43.orig.tar.gz' libpng1.6_1.6.43.orig.tar.gz 1554715 SHA512:3bb2a7b73113be42b09c2116e6c6f5a7ddb4e2ab06e0b13e10b7314acdccc4bb624ff602e16140c0484f6cde80efa190296226be3da195c6926819f07c723c12
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.43-5ubuntu0.6.debian.tar.xz' libpng1.6_1.6.43-5ubuntu0.6.debian.tar.xz 50432 SHA512:ae0b6ce1f99d1c5a9d5ab5c1aa75f48f657796938b14733410c824242cc1ffcb40b50fcdb57d7a84ad9c5392388417746ea9110d4e2d2f67e6c111c26ab9915e
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.43-5ubuntu0.6.dsc' libpng1.6_1.6.43-5ubuntu0.6.dsc 2384 SHA512:1874607dce51f4d068e883e8ef95689e116e03bfa7a80809936b3825818b08850127b77fbdee36db5cd933cfd51713a2f528dff41156c2bb9602dcd1ce88cfa6
```

### `dpkg` source package: `libpsl=0.21.2-1.1build1`

Binary Packages:

- `libpsl5t64:amd64=0.21.2-1.1build1`

Licenses: (parsed from: `/usr/share/doc/libpsl5t64/copyright`)

- `Chromium`
- `MIT`
- `gnulib`

Source:

```console
$ apt-get source -qq --print-uris libpsl=0.21.2-1.1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.21.2-1.1build1.dsc' libpsl_0.21.2-1.1build1.dsc 2425 SHA512:f6036e1386802ab44ad0d65b81f4e81dd2ac084da738752f058d58f8d96074b2ab7b00e8275cdd73bedb18d5ae6ba1fc4b19fb95d4b61e58df5695225629ef7c
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.21.2.orig.tar.xz' libpsl_0.21.2.orig.tar.xz 1870352 SHA512:5308feee863b84705246ce303c093e0c9fecd948ab382fd7480e9ea1ca5f72de42fc2c8f70472a97603580a3fd1eb2b552b093d79756e9fe93effba9f25b6aa4
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.21.2-1.1build1.debian.tar.xz' libpsl_0.21.2-1.1build1.debian.tar.xz 12244 SHA512:316b41dc3611a45c0b7ab0ec7fc617d2c710f8e11d943daefa524fc92155b63e777504a11dbe1b8427e1ad6d15f98095c90cd115df71fb8f90449a461dc9cd3d
```

### `dpkg` source package: `libreoffice=4:24.2.7-0ubuntu0.24.04.5`

Binary Packages:

- `fonts-opensymbol=4:102.12+LibO24.2.7-0ubuntu0.24.04.5`
- `libreoffice=4:24.2.7-0ubuntu0.24.04.5`
- `libreoffice-base=4:24.2.7-0ubuntu0.24.04.5`
- `libreoffice-base-core=4:24.2.7-0ubuntu0.24.04.5`
- `libreoffice-base-drivers=4:24.2.7-0ubuntu0.24.04.5`
- `libreoffice-calc=4:24.2.7-0ubuntu0.24.04.5`
- `libreoffice-common=4:24.2.7-0ubuntu0.24.04.5`
- `libreoffice-core=4:24.2.7-0ubuntu0.24.04.5`
- `libreoffice-draw=4:24.2.7-0ubuntu0.24.04.5`
- `libreoffice-impress=4:24.2.7-0ubuntu0.24.04.5`
- `libreoffice-math=4:24.2.7-0ubuntu0.24.04.5`
- `libreoffice-report-builder-bin=4:24.2.7-0ubuntu0.24.04.5`
- `libreoffice-style-colibre=4:24.2.7-0ubuntu0.24.04.5`
- `libreoffice-uiconfig-base=4:24.2.7-0ubuntu0.24.04.5`
- `libreoffice-uiconfig-calc=4:24.2.7-0ubuntu0.24.04.5`
- `libreoffice-uiconfig-common=4:24.2.7-0ubuntu0.24.04.5`
- `libreoffice-uiconfig-draw=4:24.2.7-0ubuntu0.24.04.5`
- `libreoffice-uiconfig-impress=4:24.2.7-0ubuntu0.24.04.5`
- `libreoffice-uiconfig-math=4:24.2.7-0ubuntu0.24.04.5`
- `libreoffice-uiconfig-writer=4:24.2.7-0ubuntu0.24.04.5`
- `libreoffice-writer=4:24.2.7-0ubuntu0.24.04.5`
- `libuno-cppu3t64=4:24.2.7-0ubuntu0.24.04.5`
- `libuno-cppuhelpergcc3-3t64=4:24.2.7-0ubuntu0.24.04.5`
- `libuno-purpenvhelpergcc3-3t64=4:24.2.7-0ubuntu0.24.04.5`
- `libuno-sal3t64=4:24.2.7-0ubuntu0.24.04.5`
- `libuno-salhelpergcc3-3t64=4:24.2.7-0ubuntu0.24.04.5`
- `python3-uno=4:24.2.7-0ubuntu0.24.04.5`
- `uno-libs-private=4:24.2.7-0ubuntu0.24.04.5`
- `ure=4:24.2.7-0ubuntu0.24.04.5`

Licenses: (parsed from: `/usr/share/doc/fonts-opensymbol/copyright`, `/usr/share/doc/libreoffice/copyright`, `/usr/share/doc/libreoffice-base/copyright`, `/usr/share/doc/libreoffice-base-core/copyright`, `/usr/share/doc/libreoffice-base-drivers/copyright`, `/usr/share/doc/libreoffice-calc/copyright`, `/usr/share/doc/libreoffice-common/copyright`, `/usr/share/doc/libreoffice-core/copyright`, `/usr/share/doc/libreoffice-draw/copyright`, `/usr/share/doc/libreoffice-impress/copyright`, `/usr/share/doc/libreoffice-math/copyright`, `/usr/share/doc/libreoffice-report-builder-bin/copyright`, `/usr/share/doc/libreoffice-style-colibre/copyright`, `/usr/share/doc/libreoffice-uiconfig-base/copyright`, `/usr/share/doc/libreoffice-uiconfig-calc/copyright`, `/usr/share/doc/libreoffice-uiconfig-common/copyright`, `/usr/share/doc/libreoffice-uiconfig-draw/copyright`, `/usr/share/doc/libreoffice-uiconfig-impress/copyright`, `/usr/share/doc/libreoffice-uiconfig-math/copyright`, `/usr/share/doc/libreoffice-uiconfig-writer/copyright`, `/usr/share/doc/libreoffice-writer/copyright`, `/usr/share/doc/libuno-cppu3t64/copyright`, `/usr/share/doc/libuno-cppuhelpergcc3-3t64/copyright`, `/usr/share/doc/libuno-purpenvhelpergcc3-3t64/copyright`, `/usr/share/doc/libuno-sal3t64/copyright`, `/usr/share/doc/libuno-salhelpergcc3-3t64/copyright`, `/usr/share/doc/python3-uno/copyright`, `/usr/share/doc/uno-libs-private/copyright`, `/usr/share/doc/ure/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `BSD-3-clause`
- `CC-BY-SA-3.0`
- `CC0-1.0`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-2`
- `LGPL-3`
- `LGPL-3+`
- `MIT`
- `MPL-1.1`
- `MPL-2.0`
- `other`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `librevenge=0.0.5-3build1`

Binary Packages:

- `librevenge-0.0-0:amd64=0.0.5-3build1`

Licenses: (parsed from: `/usr/share/doc/librevenge-0.0-0/copyright`)

- `LGPL-2.1`
- `MPL-1.1 | GPL-3+ | LGPL-3+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris librevenge=0.0.5-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librevenge/librevenge_0.0.5-3build1.dsc' librevenge_0.0.5-3build1.dsc 2147 SHA512:87dcdc1ef3d4943246fe9eeaaa56ff18305f3006752ee3a5534b1ebc08c4b4f7fb45d5edb2f1ada3e2ccfc903658577893da8a8422de8cfb7848866b5bfa0848
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librevenge/librevenge_0.0.5.orig.tar.bz2' librevenge_0.0.5.orig.tar.bz2 534079 SHA512:45e084583501cffe4a3358a5b7c32f72d9796ac9aa41fea9b02842e73e432915f894f31298bbd22667d4c14a1aea5458ee9860e5ed83dd7b6d94fd28b579350f
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librevenge/librevenge_0.0.5-3build1.debian.tar.xz' librevenge_0.0.5-3build1.debian.tar.xz 13676 SHA512:5d94635d2ff386c35077417550bc3970034cc0543a388d4abd7c5df5388d62c0f95aa2afc33b9cdb64b7de7ebecd2e4db6a370c589b9d363d92df846cf7d834c
```

### `dpkg` source package: `libseccomp=2.5.5-1ubuntu3.1`

Binary Packages:

- `libseccomp2:amd64=2.5.5-1ubuntu3.1`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.5.5-1ubuntu3.1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.5.orig.tar.gz' libseccomp_2.5.5.orig.tar.gz 642445 SHA256:248a2c8a4d9b9858aa6baf52712c34afefcf9c9e94b76dce02c1c9aa25fb3375
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.5.orig.tar.gz.asc' libseccomp_2.5.5.orig.tar.gz.asc 833 SHA256:f3bf8a946020d3047581f11fe6ac71971a842115ddb362562b193861ef57d97b
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.5-1ubuntu3.1.debian.tar.xz' libseccomp_2.5.5-1ubuntu3.1.debian.tar.xz 24484 SHA256:ee1e79bc46f18a992ac80f349fdd5cfa0b5f2f6b298473b587c7cf5af89a8df6
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.5-1ubuntu3.1.dsc' libseccomp_2.5.5-1ubuntu3.1.dsc 2838 SHA256:8039579c8cd02819d8246b40483d69e2113979b5acc5900d7206e0b4bebff392
```

### `dpkg` source package: `libselinux=3.5-2ubuntu2.1`

Binary Packages:

- `libselinux1:amd64=3.5-2ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libselinux=3.5-2ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.5.orig.tar.gz' libselinux_3.5.orig.tar.gz 211453 SHA256:9a3a3705ac13a2ccca2de6d652b6356fead10f36fb33115c185c5ccdf29eec19
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.5.orig.tar.gz.asc' libselinux_3.5.orig.tar.gz.asc 981 SHA256:fd37d441e0c08cabe9ac8f7815f52355bab2011549ec5792424fe18be9e1e015
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.5-2ubuntu2.1.debian.tar.xz' libselinux_3.5-2ubuntu2.1.debian.tar.xz 38112 SHA256:13e47e0983f59235e34f5abe07a2a0d1af3dd2d255962c6a50fac4698c3fe891
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.5-2ubuntu2.1.dsc' libselinux_3.5-2ubuntu2.1.dsc 3098 SHA256:96134581a745ed85b3d5f1c24cdd88fa7d3e29548c0f80a683094ed886b7f150
```

### `dpkg` source package: `libsemanage=3.5-1build5`

Binary Packages:

- `libsemanage-common=3.5-1build5`
- `libsemanage2:amd64=3.5-1build5`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage2/copyright`)

- `GPL-2`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=3.5-1build5
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.5-1build5.dsc' libsemanage_3.5-1build5.dsc 3105 SHA512:310dd2c109462b4f44ddaef331f6a72758efd42d31591daba762fc629e2915c6dc6a16fccbb933089a406aea65b886e3408e10b49e2471abbad37a30c260ed0d
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.5.orig.tar.gz' libsemanage_3.5.orig.tar.gz 185060 SHA512:959fbd0d6bc6849da6caa13dc41c3f8818cbbd29f04b5d2ac7246c4b395b4f370f113a04cc9cfcb52be2afebfa636013ac4ad4011384c58c7ce066a45cae2751
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.5.orig.tar.gz.asc' libsemanage_3.5.orig.tar.gz.asc 981 SHA512:c0a5ddb69c32ddefa26b3d1ec676bcc373e959dd8b4a7fcf6e1f74a3ca8e9af22af851ca66d3c43a704215ff79d27244e33d23038ef2f52ccc321aeb5f0c2790
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.5-1build5.debian.tar.xz' libsemanage_3.5-1build5.debian.tar.xz 30188 SHA512:13561dae7133d128bc5db3528e38be2e9469e35a4796e92f192af3c95c29abb3934542244777d0f0754cc1f652ea816334b7fc5fe94d637fb35bf76a399059cd
```

### `dpkg` source package: `libsepol=3.5-2build1`

Binary Packages:

- `libsepol2:amd64=3.5-2build1`

Licenses: (parsed from: `/usr/share/doc/libsepol2/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris libsepol=3.5-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.5-2build1.dsc' libsepol_3.5-2build1.dsc 2458 SHA512:d28b899278cfcb721f13e512142e2540c2ec064458d6d5bee607b3b313b260a2a19e5d5131fc7dcde6edfbf24d73eaede6597444770d6be31011d861a1d72676
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.5.orig.tar.gz' libsepol_3.5.orig.tar.gz 497522 SHA512:66f45a9f4951589855961955db686b006b4c0cddead6ac49ad238a0e4a34775905bd10fb8cf0c0ff2ab64f9b7d8366b97fcd5b19c382dec39971a2835cc765c8
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.5.orig.tar.gz.asc' libsepol_3.5.orig.tar.gz.asc 981 SHA512:5aa46c3a7a5d7fa0d4376766b9444cdea1b14f3ec61725950a24fcb5ba2caae271a415c613807d06e4d9b04b40cda1525c12c442eed8a7e60fb5e5beacdaba3b
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.5-2build1.debian.tar.xz' libsepol_3.5-2build1.debian.tar.xz 27716 SHA512:9b2b126368c5e4f80d80940f7611103745b1da92bec6319f43f64cc3f6a5e13bab25758bad645e973773a4aab74fa3600694061a8368ca2176252320c0d9ebf6
```

### `dpkg` source package: `libsm=2:1.2.3-1build3`

Binary Packages:

- `libsm6:amd64=2:1.2.3-1build3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libsm=2:1.2.3-1build3
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.3-1build3.dsc' libsm_1.2.3-1build3.dsc 2170 SHA512:8a520e3ffb431799786f69aecf52ad9ebd54d0c2146aa9ba79cd7c7d301aff12da18fa10cb3c9abdab3a6ff7f36f08c3ebf3625312ec306453bf54a5e370f704
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.3.orig.tar.gz' libsm_1.2.3.orig.tar.gz 445362 SHA512:03b77d86b33cdb3df4f9d65131a0025182f3cb0c17b33a90d236e8563b3011d225b9d006186302d07850edafa5b899aec6a086b8d437d357cd69fedd5f22d94b
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.3-1build3.diff.gz' libsm_1.2.3-1build3.diff.gz 9110 SHA512:9d091a10e743ee293094e270865b4499e77d0cee4815dfb21d42a53832d50ea82a599e6bf8945bfd1c51add353de20d77eb672dc666400c98b5c8a390b6dec2c
```

### `dpkg` source package: `libssh=0.10.6-2ubuntu0.4`

Binary Packages:

- `libssh-4:amd64=0.10.6-2ubuntu0.4`

Licenses: (parsed from: `/usr/share/doc/libssh-4/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `LGPL-2.1`
- `LGPL-2.1+~OpenSSL`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libssh=0.10.6-2ubuntu0.4
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.10.6.orig.tar.xz' libssh_0.10.6.orig.tar.xz 561036 SHA256:1861d498f5b6f1741b6abc73e608478491edcf9c9d4b6630eef6e74596de9dc1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.10.6.orig.tar.xz.asc' libssh_0.10.6.orig.tar.xz.asc 833 SHA256:140420406d7796548b0beaf736e73864c32291787cf2bd3983fdbc41741494ae
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.10.6-2ubuntu0.4.debian.tar.xz' libssh_0.10.6-2ubuntu0.4.debian.tar.xz 56400 SHA256:13cb7f1a5b294bf5b0a9970acf22a7ccdfca5be546495b930960f0508725e4b9
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.10.6-2ubuntu0.4.dsc' libssh_0.10.6-2ubuntu0.4.dsc 2723 SHA256:dec8669834a233aa336e7607395dbd8c5946f1f83cb6792772bf0c2e09825f7b
```

### `dpkg` source package: `libtasn1-6=4.19.0-3ubuntu0.24.04.2`

Binary Packages:

- `libtasn1-6:amd64=4.19.0-3ubuntu0.24.04.2`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=4.19.0-3ubuntu0.24.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.19.0.orig.tar.gz' libtasn1-6_4.19.0.orig.tar.gz 1786576 SHA256:1613f0ac1cf484d6ec0ce3b8c06d56263cc7242f1c23b30d82d23de345a63f7a
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.19.0.orig.tar.gz.asc' libtasn1-6_4.19.0.orig.tar.gz.asc 228 SHA256:8410c0c004f3509c218a98b276b3308b9c46f48068e8b1a6d9ebfd61ea9f357a
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.19.0-3ubuntu0.24.04.2.debian.tar.xz' libtasn1-6_4.19.0-3ubuntu0.24.04.2.debian.tar.xz 25112 SHA256:23e6e79b1be16c247e0d3b152a5838d5d182a788ba053c640b2a120b8b00adad
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.19.0-3ubuntu0.24.04.2.dsc' libtasn1-6_4.19.0-3ubuntu0.24.04.2.dsc 2801 SHA256:a322b48ad14f13ef24ccebcc1feab975817c67000382096146a281d0b4354e7e
```

### `dpkg` source package: `libtool=2.4.7-7build1`

Binary Packages:

- `libltdl7:amd64=2.4.7-7build1`

Licenses: (parsed from: `/usr/share/doc/libltdl7/copyright`)

- `GFDL-1.3`
- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libtool=2.4.7-7build1
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.7-7build1.dsc' libtool_2.4.7-7build1.dsc 2389 SHA512:7617c6e809ba2cd2be45b5da2142386214c7c3badd4655efe135032706e285655a407eba20615e59173b36cf437039fbc2819e865a973a93fc2664b43cf0fa8a
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.7.orig.tar.xz' libtool_2.4.7.orig.tar.xz 1026028 SHA512:424f4549aa713917859dc31e62153934c67b8b9d5718452f0e50bb8f6ef48ae6274cc4d4ddd905b15858d19c60daf8c194471e6ed0c8f76e7d55e7ef932a8d3a
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.7-7build1.debian.tar.xz' libtool_2.4.7-7build1.debian.tar.xz 41052 SHA512:a96fff303067f7e0bb71534f5ec2777c737127cb6540a196a5cdad7dc1731a83d006b13addf0d4c422a4b2a7526df65a5f19ae52aa2063518871c6b04d7ece29
```

### `dpkg` source package: `libunistring=1.1-2build1.1`

Binary Packages:

- `libunistring5:amd64=1.1-2build1.1`

Licenses: (parsed from: `/usr/share/doc/libunistring5/copyright`)

- `FreeSoftware`
- `GFDL-1.2`
- `GFDL-NIV-1.2+`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with distribution exception`
- `GPL-2+ with distribution exception, Expat`
- `GPL-3`
- `GPL-3+`
- `LGPL-3`
- `LGPL-3+`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris libunistring=1.1-2build1.1
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_1.1.orig.tar.xz' libunistring_1.1.orig.tar.xz 2397676 SHA256:827c1eb9cb6e7c738b171745dac0888aa58c5924df2e59239318383de0729b98
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_1.1.orig.tar.xz.asc' libunistring_1.1.orig.tar.xz.asc 833 SHA256:dadae6c38f85f9e8776231436c601c386924ceb44d511456c61c9be73608933d
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_1.1-2build1.1.debian.tar.xz' libunistring_1.1-2build1.1.debian.tar.xz 14188 SHA256:06254c8f2ad989bd8ff267fd921d6711fbc0390ff10b99bc3be09fe870baab5e
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_1.1-2build1.1.dsc' libunistring_1.1-2build1.1.dsc 2292 SHA256:496ec65625b57a9c5cd0577843814cbd4701ab123a6146a56053dcc9463ae09e
```

### `dpkg` source package: `libunwind=1.6.2-3build1.1`

Binary Packages:

- `libunwind8:amd64=1.6.2-3build1.1`

Licenses: (parsed from: `/usr/share/doc/libunwind8/copyright`)

- `Expat`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libunwind=1.6.2-3build1.1
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunwind/libunwind_1.6.2.orig.tar.gz' libunwind_1.6.2.orig.tar.gz 901392 SHA256:4a6aec666991fb45d0889c44aede8ad6eb108071c3554fcdff671f9c94794976
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunwind/libunwind_1.6.2.orig.tar.gz.asc' libunwind_1.6.2.orig.tar.gz.asc 659 SHA256:f064387f5505fff34735a72dcaf190d2ea8a87569ef50c539cfb154986bbd4d2
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunwind/libunwind_1.6.2-3build1.1.debian.tar.xz' libunwind_1.6.2-3build1.1.debian.tar.xz 16904 SHA256:1f267fd37c1a1eff97a002a0f96ce2e76bd8fa6f01c033da0d81ab715ed8f266
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunwind/libunwind_1.6.2-3build1.1.dsc' libunwind_1.6.2-3build1.1.dsc 2919 SHA256:b598f97992f100e452d4766617a16275cb67674bb77731d649854729dc5b728a
```

### `dpkg` source package: `libvisio=0.1.7-1build9`

Binary Packages:

- `libvisio-0.1-1:amd64=0.1.7-1build9`

Licenses: (parsed from: `/usr/share/doc/libvisio-0.1-1/copyright`)

- `MIT | GPL-2`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris libvisio=0.1.7-1build9
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvisio/libvisio_0.1.7-1build9.dsc' libvisio_0.1.7-1build9.dsc 2320 SHA512:fc8fcaedb3061b697ddac03f26f01d6ddce7c1a317fc2f59b8b6b4763faeedc1d78e67c738004742113bcba4ba71dc0c27e3b9cef39c51afe44ea55f7a09fa8e
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvisio/libvisio_0.1.7.orig.tar.xz' libvisio_0.1.7.orig.tar.xz 854296 SHA512:c26f67a09fa6a6d0bf6f3fff5590d5cf16983630d4f7cfcf86d9461baec58dbdf7989fd934be6db0639ca043c160aac2d008275afb9e047766bc878ac579a9ea
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvisio/libvisio_0.1.7-1build9.debian.tar.xz' libvisio_0.1.7-1build9.debian.tar.xz 8504 SHA512:ef9716b3a46f9d83bba13393408e24d67d526e9e2b781ee34ceaa431f4aceccd08ee1cec28dabe88f93b3d68297ce989d0c1bfab9f1fb1bd299d7decaad92908
```

### `dpkg` source package: `libwebp=1.3.2-0.4build3`

Binary Packages:

- `libsharpyuv0:amd64=1.3.2-0.4build3`
- `libwebp7:amd64=1.3.2-0.4build3`

Licenses: (parsed from: `/usr/share/doc/libsharpyuv0/copyright`, `/usr/share/doc/libwebp7/copyright`)

- `Apache-2.0`
- `BSD-3-Clause`

Source:

```console
$ apt-get source -qq --print-uris libwebp=1.3.2-0.4build3
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_1.3.2-0.4build3.dsc' libwebp_1.3.2-0.4build3.dsc 2468 SHA512:6ff5c7d8eb701dbf23e729287e65b20c0d1140f2a7b0054d30e1fd51545796f1b4dda83e8e6ca62e44ee96f8ebb42d4a7521931526ecd5ff49d7cfa43e868843
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_1.3.2.orig.tar.gz' libwebp_1.3.2.orig.tar.gz 4162949 SHA512:2b624d2ecfbff6b4db2719e38f146722638ae262acd96327073a04451dd05fb27ef70c5681187821d251df728a6be7e89209c861c561a13bfb786495a830bc20
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_1.3.2-0.4build3.debian.tar.xz' libwebp_1.3.2-0.4build3.debian.tar.xz 15816 SHA512:67796f091daf95214880955c3c6a430b6622d525e2db65d52cc4072364a253fb0263e5faa0307cd50e59c62ed3dbfbc3ea234134d3ffac3967fb45da9c9546fd
```

### `dpkg` source package: `libwpd=0.10.3-2build2`

Binary Packages:

- `libwpd-0.10-10:amd64=0.10.3-2build2`

Licenses: (parsed from: `/usr/share/doc/libwpd-0.10-10/copyright`)

- `LGPL`
- `MPL-2.0 | LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libwpd=0.10.3-2build2
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwpd/libwpd_0.10.3-2build2.dsc' libwpd_0.10.3-2build2.dsc 2181 SHA512:257ce6784134d46760f5a4a3617610700113c2eb582fbd0fd258c7a23c4bf3a7a608124d4853a93c93c896610d3583a441f064bb43fefa1144552ab9832fcead
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwpd/libwpd_0.10.3.orig.tar.xz' libwpd_0.10.3.orig.tar.xz 534712 SHA512:df14f11e885a583218afdb0aafe8a15d01890289af8b316cd1d225e4a83996c82907fbfdde83257dc71d99bfbc5b21b2c96536f5a783748388659155dbdb8949
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwpd/libwpd_0.10.3-2build2.debian.tar.xz' libwpd_0.10.3-2build2.debian.tar.xz 11984 SHA512:d4904ffc0f036ede114089170cc14633e64ba4a081c51877cf7f04129656016aab854ff011ee711f1cf24e51f756910464a8d912604e252ee89d213791ee6a55
```

### `dpkg` source package: `libwpg=0.3.4-3build1`

Binary Packages:

- `libwpg-0.3-3:amd64=0.3.4-3build1`

Licenses: (parsed from: `/usr/share/doc/libwpg-0.3-3/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libwpg=0.3.4-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwpg/libwpg_0.3.4-3build1.dsc' libwpg_0.3.4-3build1.dsc 2170 SHA512:25524283347328c59ad66911deaf2ed91071093ca4aae450f1ac38337bede8ba3b4e73a02fca10594491083db9e86c60312c1fac0e7bfb9384a5157b49ee28d8
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwpg/libwpg_0.3.4.orig.tar.bz2' libwpg_0.3.4.orig.tar.bz2 411695 SHA512:3d300388624933006fa84e86cc2800e4565179c638c26ed652ca04553366a4291c4a396809111de5f0139d26baaf7dc09b66259d7b17275268603e3582731ecb
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwpg/libwpg_0.3.4-3build1.debian.tar.xz' libwpg_0.3.4-3build1.debian.tar.xz 9432 SHA512:3b7e507306bf78a8151cfa91420aad6ec86fadf297810fdfa49552b4f601b190a118d655df32d5489fbd3cc7ae925204176e148036d60cc4221d5be04138912e
```

### `dpkg` source package: `libwps=0.4.14-2build1`

Binary Packages:

- `libwps-0.4-4:amd64=0.4.14-2build1`

Licenses: (parsed from: `/usr/share/doc/libwps-0.4-4/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris libwps=0.4.14-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwps/libwps_0.4.14-2build1.dsc' libwps_0.4.14-2build1.dsc 2348 SHA512:e6a6318a683ac3cd980b68fa420c171fff898843c124a43805f6b1e29e0b90862e68165a2e92f377ea1563777d43e3a1a757949e84635d11467bf26dcaea6bf1
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwps/libwps_0.4.14.orig.tar.xz' libwps_0.4.14.orig.tar.xz 719016 SHA512:bbf9047f35d1b42c2da8deee24116d6a3fb20749a4255d369b62967a99185f52f21dda3e1b385056c1924995f2a72b670960bb476f38c3bf78933e25ff4a5779
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwps/libwps_0.4.14-2build1.debian.tar.xz' libwps_0.4.14-2build1.debian.tar.xz 9440 SHA512:47c09d04f5cca531d52f580cba7a50e7652ca4818e6a62b7876482bb69ae11117f016e0cbdfae632c4ce15005a654b89dd7d6edccccd21ce8ec9e94be045a4ed
```

### `dpkg` source package: `libx11=2:1.8.7-1build1`

Binary Packages:

- `libx11-6:amd64=2:1.8.7-1build1`
- `libx11-data=2:1.8.7-1build1`
- `libx11-xcb1:amd64=2:1.8.7-1build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libx11=2:1.8.7-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.8.7-1build1.dsc' libx11_1.8.7-1build1.dsc 2612 SHA512:a18064c14d2b134395187fb20df777148669e91b3d48ff92bff35ab120daa3ca267d9d66ca5dc43315714a395a978021669d4ced1ac3d77feb11f1861f4fd20a
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.8.7.orig.tar.gz' libx11_1.8.7.orig.tar.gz 3185363 SHA512:67575740356aecc6a7a4898e92ff1007aa6a44ff506d80fe577c1bdc3d64a900edf545cf3e082e9f17c25f4afe28e724145d5e82ae428bdc44348d368d9451a6
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.8.7.orig.tar.gz.asc' libx11_1.8.7.orig.tar.gz.asc 833 SHA512:92c410ca14412092680bd511f9536fcf1eb1f32632c33fb833246f8c90bb6dcb8045b9e12cbffa0b6093bf91fe8897ba76d2abb4303a343b4b7deb3b586098b4
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.8.7-1build1.diff.gz' libx11_1.8.7-1build1.diff.gz 74380 SHA512:009bf70e5acec4708f2d734f69c224674497c6a8eb9cbb2bff511ffb141fa79d3041e1dbcea669278626358ac03b9a918f5b4d8a03ac9ab49fd9c2ef792dcb9c
```

### `dpkg` source package: `libxau=1:1.0.9-1build6`

Binary Packages:

- `libxau6:amd64=1:1.0.9-1build6`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxau=1:1.0.9-1build6
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.9-1build6.dsc' libxau_1.0.9-1build6.dsc 2315 SHA512:7cb47244c991544aed1268a831fbbd157713cbefb6252c8fe863522b6f1e3f1bd4dab892fbecdb253246c2fe34cd48a838b1139bdbc59e2cbd54cf1581af57df
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.9.orig.tar.gz' libxau_1.0.9.orig.tar.gz 394068 SHA512:3b22f34a4e35d17421189df8ce3f858b0914aef0cea0b12689dd8576f14eb811e39d6e32384251573daa7e3daba400deea98e7c0e29b4105138cf82195d7f875
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.9.orig.tar.gz.asc' libxau_1.0.9.orig.tar.gz.asc 801 SHA512:e59b2944591499d0c0291a8d80ad8ee2cb13ee00c32b0d26c6af12a2bb96c947d4d15924ef15b377b8d7640b75b50f9b8127ba53c582090b3f73b7bcf9e00b01
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.9-1build6.diff.gz' libxau_1.0.9-1build6.diff.gz 10712 SHA512:49c075d30bcadd86ea03acc160824d06f32c65c5cd71e6f08ba2aece7ef719980f595f54f106d0c4d8e3d35d00e922289516907e7ba56741065253879faeba03
```

### `dpkg` source package: `libxcb=1.15-1ubuntu2`

Binary Packages:

- `libxcb-render0:amd64=1.15-1ubuntu2`
- `libxcb-shm0:amd64=1.15-1ubuntu2`
- `libxcb1:amd64=1.15-1ubuntu2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcb=1.15-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.15-1ubuntu2.dsc' libxcb_1.15-1ubuntu2.dsc 5372 SHA512:6dc4a78314ca9afd78fbbdd5fd5d966819d72815815052e192b95c0a390cf15b5ac5551832072cbc2a9522e6022063c633883ccf0a537aeca894fc596da8b5fb
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.15.orig.tar.gz' libxcb_1.15.orig.tar.gz 650774 SHA512:4099899c37fdda62a9a0883863ee9e50b5072e8f396ba6f4594965d9f1743fb6ea991974a99974c6f39bac14ce9aad5669fa633ac1ad2390280d613cc66eb00e
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.15-1ubuntu2.diff.gz' libxcb_1.15-1ubuntu2.diff.gz 26975 SHA512:ad67cab4521b787432cd2b0387eb84131903c5d135e0f2bd7ddbc2cc9966da769692591c2c53372f558e74210d998e5d57f4674635461be577b29c177ee0825c
```

### `dpkg` source package: `libxcrypt=1:4.4.36-4build1`

Binary Packages:

- `libcrypt1:amd64=1:4.4.36-4build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcrypt=1:4.4.36-4build1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcrypt/libxcrypt_4.4.36-4build1.dsc' libxcrypt_4.4.36-4build1.dsc 2300 SHA512:5e9c4a5c26299ac291eb755a9a386ddaac65d6af2e6b9cc37c2803101e1d8b257a83eb36c12f2955873ee99a0a95f61ad2a204e5e5a2c88d33f043a426121c32
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcrypt/libxcrypt_4.4.36.orig.tar.xz' libxcrypt_4.4.36.orig.tar.xz 392732 SHA512:82839d70fc068a4d4d5e14488ea7599e2430091ace53640d639628330eff52a058ac589b6b5a39bc6c83166e68cbf9b9e2024e0371df1f949336f633f2a1726e
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcrypt/libxcrypt_4.4.36-4build1.debian.tar.xz' libxcrypt_4.4.36-4build1.debian.tar.xz 8356 SHA512:d181e5637d40e322cf03d80dff03acb9982c0a07a73229d660d8b2fcd02f31783347c0b0208d2ebb077bdf44e87330b04a8cd10a4bc272dbb0feca7f1adfe013
```

### `dpkg` source package: `libxdmcp=1:1.1.3-0ubuntu6`

Binary Packages:

- `libxdmcp6:amd64=1:1.1.3-0ubuntu6`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxdmcp=1:1.1.3-0ubuntu6
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.3-0ubuntu6.dsc' libxdmcp_1.1.3-0ubuntu6.dsc 2252 SHA512:daa70b073691db6046dfb0900d5dac63daa213b96b8e019e132dafc12d0cd0c9167c9216d823191ddfbabf16e6290073229f3b6ba310c86234a13e05c3cbc28a
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.3.orig.tar.gz' libxdmcp_1.1.3.orig.tar.gz 429668 SHA512:edd05654ad9ea893e9e08269e25ea050d10eaf9f997a08494e24127d1ba0c896cd5338b4595b155c8cbf576e1d910b76e6ad7820fee62d74644f1f276551e2f2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.3-0ubuntu6.diff.gz' libxdmcp_1.1.3-0ubuntu6.diff.gz 18400 SHA512:5b6effc30e3f6dba946dd95c73d3242210d99612aec3dc8df4fe986a42758e7d9c6ddc7a713375edb0c78a1875e64872ca9329c8d5be83984c66e8457c355c23
```

### `dpkg` source package: `libxext=2:1.3.4-1build2`

Binary Packages:

- `libxext6:amd64=2:1.3.4-1build2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxext=2:1.3.4-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.4-1build2.dsc' libxext_1.3.4-1build2.dsc 2250 SHA512:6b9b001f4dd81843f12ca625bb90a8ea78dda531f80d6fc9c90c071b6cc925d94c53b2d20abc42d21df77904ff5ba059025ce426cf25838918040da71b1a6ea4
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.4.orig.tar.gz' libxext_1.3.4.orig.tar.gz 494434 SHA512:4eebd639fd57cb9b84a1e17e368f82fbf3d9f021eef5ad3fe31dd128500db57862a82c1e0d214d447cb7641b2be3fd7e949ee1196f2a482793c6628fb1e5cd70
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.4-1build2.diff.gz' libxext_1.3.4-1build2.diff.gz 12720 SHA512:6ec71960a93504538ef944620b0af7bb2ffdf21270ddaf1715dec4faf79d0d1ec1372a148e9acb64a014b2a761eadf01f0b83955dda7ff2fdf942b5998bd1b34
```

### `dpkg` source package: `libxinerama=2:1.1.4-3build1`

Binary Packages:

- `libxinerama1:amd64=2:1.1.4-3build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxinerama=2:1.1.4-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxinerama/libxinerama_1.1.4-3build1.dsc' libxinerama_1.1.4-3build1.dsc 2220 SHA512:135d92acbe895bfd15fedefd93632b23bc0815beab41a9f570cd78a83f6958728cd4a11bc6492ba184a1b0f5d32387195ed302989c95dae5a2873151e4fc8ba5
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxinerama/libxinerama_1.1.4.orig.tar.gz' libxinerama_1.1.4.orig.tar.gz 380740 SHA512:fa2cc45214cc591da8867dcd7e332312e8d224c390912dc8580f8b15c3c9d8ffc797eee97c20263faf129fbfc6b0d931b6bf10dc04b8ec439b852451886eba75
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxinerama/libxinerama_1.1.4-3build1.diff.gz' libxinerama_1.1.4-3build1.diff.gz 8639 SHA512:d2a13c86831e6fdc23f6f02a4afa8cd7e0d404a87805d793085cb9b59171fe7dd8f74eee8cd2a4c471802dfd24bf4effe2cf6514032066ee20ce663a8d3555f8
```

### `dpkg` source package: `libxml2=2.9.14+dfsg-1.3ubuntu3.8`

Binary Packages:

- `libxml2:amd64=2.9.14+dfsg-1.3ubuntu3.8`

Licenses: (parsed from: `/usr/share/doc/libxml2/copyright`)

- `ISC`
- `MIT-1`

Source:

```console
$ apt-get source -qq --print-uris libxml2=2.9.14+dfsg-1.3ubuntu3.8
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.14%2bdfsg.orig.tar.xz' libxml2_2.9.14+dfsg.orig.tar.xz 2351200 SHA512:1eacc9ac2cd8d38b8466659b3b9d84b94eb765c8f869d6cca0da131060bbc35c2b31c6148d59690547871a20cea339eac8fbe953b4fe37cf0900862f3fd9621b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.14%2bdfsg-1.3ubuntu3.8.debian.tar.xz' libxml2_2.9.14+dfsg-1.3ubuntu3.8.debian.tar.xz 58596 SHA512:622c5a74574cde7bfc49748f8dd1d42a9cdab39e117ddd099293dd1aa981bed1e8156e22d28917d1d01a2746e17991d17bce93c31ddb68d5ac925e93bf539984
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.14%2bdfsg-1.3ubuntu3.8.dsc' libxml2_2.9.14+dfsg-1.3ubuntu3.8.dsc 3079 SHA512:4d6416be5ad25c5901bf7622f0c74aec99a18ea7b7ce2c579eb8d80f17d6b0c9b39d0355b95b349126034456c13c737918776218ceeeed1da28db183f9b807a8
```

### `dpkg` source package: `libxrandr=2:1.5.2-2build1`

Binary Packages:

- `libxrandr2:amd64=2:1.5.2-2build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrandr=2:1.5.2-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrandr/libxrandr_1.5.2-2build1.dsc' libxrandr_1.5.2-2build1.dsc 2207 SHA512:7202328baddfe98069460aee97828e1b2f4920364dfd4f805edad9a212dca1ea9d275cdcf86692bce6e1e68e57ccc9115ef33f531c29e06398de4a062ad83263
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrandr/libxrandr_1.5.2.orig.tar.gz' libxrandr_1.5.2.orig.tar.gz 411714 SHA512:309df91127ae17d8bb5a4382b22d1cf788733775dfddcb7932b3edb6f4121728daa7bba1e95ee5e250b2f8b03907a2564dcb3d645d7a5ef6314d0d7b09bac75d
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrandr/libxrandr_1.5.2-2build1.diff.gz' libxrandr_1.5.2-2build1.diff.gz 15940 SHA512:4a7833925b2b1713457b842706e4423f0b482ad07d83af0a442ba4eba7eb14283d9aa71a716f32897cde6779354482b0caf760f912b23771f8e39d6263b56748
```

### `dpkg` source package: `libxrender=1:0.9.10-1.1build1`

Binary Packages:

- `libxrender1:amd64=1:0.9.10-1.1build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrender=1:0.9.10-1.1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.10-1.1build1.dsc' libxrender_0.9.10-1.1build1.dsc 2204 SHA512:ac21ce52dc62e66c8e0e6c94c727a978b8b285755dd7c3de9b8bd34057bdef1ee23acdfbdd3efb2052734b763904c02e98cd71b4b0bb28a1673a6da3eb7cb8f6
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.10.orig.tar.gz' libxrender_0.9.10.orig.tar.gz 373717 SHA512:7768e62b500f468460f88f27bc1130170b204b478573d9e4406867e557b5638b7c1e21d88d51f9e774ce2344780a384e3c3be51421275d2ee880f9a978a3a232
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.10-1.1build1.diff.gz' libxrender_0.9.10-1.1build1.diff.gz 15274 SHA512:dca2b6bf90a6ce1ec30376a001f6f24f2d95e917c3a4890242022bf5eefa20c9c1e775c66c229cbb7ee47482650b9a0a750e7bf1890aec89d3bec6b692f4174a
```

### `dpkg` source package: `libxslt=1.1.39-0exp1ubuntu0.24.04.3`

Binary Packages:

- `libxslt1.1:amd64=1.1.39-0exp1ubuntu0.24.04.3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxslt=1.1.39-0exp1ubuntu0.24.04.3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.39.orig.tar.xz' libxslt_1.1.39.orig.tar.xz 1578216 SHA256:2a20ad621148339b0759c4d4e96719362dee64c9a096dbba625ba053846349f0
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.39-0exp1ubuntu0.24.04.3.debian.tar.xz' libxslt_1.1.39-0exp1ubuntu0.24.04.3.debian.tar.xz 24380 SHA256:f235c6088b4c5ec813caba9273b4a670935e4faa11768fa33f993455460ebf00
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.39-0exp1ubuntu0.24.04.3.dsc' libxslt_1.1.39-0exp1ubuntu0.24.04.3.dsc 2352 SHA256:25e60a82ccec471407248c0725eb51e85464b6e87fa032bca685c55d42ab8722
```

### `dpkg` source package: `libzstd=1.5.5+dfsg2-2build1.1`

Binary Packages:

- `libzstd1:amd64=1.5.5+dfsg2-2build1.1`

Licenses: (parsed from: `/usr/share/doc/libzstd1/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris libzstd=1.5.5+dfsg2-2build1.1
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.5.5%2bdfsg2.orig.tar.xz' libzstd_1.5.5+dfsg2.orig.tar.xz 1784164 SHA256:d7cf3c10d416fd999cb8fcf7685d9268ba7bec8eb78121fc2d0d916fa393d22b
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.5.5%2bdfsg2-2build1.1.debian.tar.xz' libzstd_1.5.5+dfsg2-2build1.1.debian.tar.xz 21288 SHA256:c1df6d2628b26d085259b8e7ac020eb060e4c1feca98d6103058eda5ded725bc
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.5.5%2bdfsg2-2build1.1.dsc' libzstd_1.5.5+dfsg2-2build1.1.dsc 2485 SHA256:c190a5dff9e7c5b5b1399f0d701bb2c173bc7cbdf14d5e05970f5ac066c25570
```

### `dpkg` source package: `lp-solve=5.5.2.5-2ubuntu0.1`

Binary Packages:

- `lp-solve=5.5.2.5-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/lp-solve/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris lp-solve=5.5.2.5-2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lp-solve/lp-solve_5.5.2.5.orig-doc.tar.gz' lp-solve_5.5.2.5.orig-doc.tar.gz 1448749 SHA256:4c6085a7083cca04c18876a1c8838ae2427b97080219fffedde1c3a96bc13561
'http://archive.ubuntu.com/ubuntu/pool/main/l/lp-solve/lp-solve_5.5.2.5.orig.tar.gz' lp-solve_5.5.2.5.orig.tar.gz 812947 SHA256:201a7c62b8b3360c884ee2a73ed7667e5716fc1e809755053b398c2f5b0cf28a
'http://archive.ubuntu.com/ubuntu/pool/main/l/lp-solve/lp-solve_5.5.2.5-2ubuntu0.1.debian.tar.xz' lp-solve_5.5.2.5-2ubuntu0.1.debian.tar.xz 16868 SHA256:c87340a69a62944e561937399cf083799506548de1a4cc49afb429b17908ade3
'http://archive.ubuntu.com/ubuntu/pool/main/l/lp-solve/lp-solve_5.5.2.5-2ubuntu0.1.dsc' lp-solve_5.5.2.5-2ubuntu0.1.dsc 2358 SHA256:1e2541411cceda848f65cfc3cc023d9ccc95636e7bb6d2a0a59334467e8f1a54
```

### `dpkg` source package: `lz4=1.9.4-1build1.1`

Binary Packages:

- `liblz4-1:amd64=1.9.4-1build1.1`

Licenses: (parsed from: `/usr/share/doc/liblz4-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lz4=1.9.4-1build1.1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.9.4.orig.tar.gz' lz4_1.9.4.orig.tar.gz 354063 SHA256:0b0e3aa07c8c063ddf40b082bdf7e37a1562bda40a0ff5272957f3e987e0e54b
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.9.4-1build1.1.debian.tar.xz' lz4_1.9.4-1build1.1.debian.tar.xz 8356 SHA256:9551b039576db7c87f38c3c847283877de65114cca06488accb9596a7c4f1ead
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.9.4-1build1.1.dsc' lz4_1.9.4-1build1.1.dsc 2061 SHA256:ba7b585b15d8b4c955dd68c7af5aa89901cfbb3fdb4f2607ccad51628857d669
```

### `dpkg` source package: `mawk=1.3.4.20240123-1build1`

Binary Packages:

- `mawk=1.3.4.20240123-1build1`

Licenses: (parsed from: `/usr/share/doc/mawk/copyright`)

- `CC-BY-3.0`
- `GPL-2`
- `GPL-2.0-only`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris mawk=1.3.4.20240123-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20240123-1build1.dsc' mawk_1.3.4.20240123-1build1.dsc 2312 SHA512:ce2caf84e1323bee8329421cbda06d3cc6748c3e026a885996ca9cc1dad7b553f865f837821982e048c6456c09b6750d88da0412571011920f7f8a7239a45688
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20240123.orig.tar.gz' mawk_1.3.4.20240123.orig.tar.gz 413943 SHA512:f6d5da44280afeac4a9bb6d3788ed71ee816daaa5816f49b9d40add5292f3ae06e5af007a6c993d14405238cbb70ba4997fdd2fcd5901c9a1a4b61357045c4a6
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20240123.orig.tar.gz.asc' mawk_1.3.4.20240123.orig.tar.gz.asc 729 SHA512:3b4b8b8b7b74aff7061158a7c284d1949c09d52d78003b678c9dcc1da036a4d84b873103d76362866daf914d5a7d717c71baf13d30d7e882b03c5f87c8e4c452
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20240123-1build1.debian.tar.xz' mawk_1.3.4.20240123-1build1.debian.tar.xz 15704 SHA512:53a4367656e29f5897ba29cf38b30e2b3a2758d990bbd3a90bdbceb5d3c467615496407af8bd437b4df2e9518096865b7ec6739b0465e8bba20d87ed71782268
```

### `dpkg` source package: `media-types=10.1.0`

Binary Packages:

- `media-types=10.1.0`

Licenses: (parsed from: `/usr/share/doc/media-types/copyright`)

- `ad-hoc`

Source:

```console
$ apt-get source -qq --print-uris media-types=10.1.0
'http://archive.ubuntu.com/ubuntu/pool/main/m/media-types/media-types_10.1.0.dsc' media-types_10.1.0.dsc 1624 SHA512:78ee4c91efa0eea0314213b1df7cc659f3b47556a648e07c4044f1ae7ae08ccd6c4d479e6425297ac79c38a2a607a157ed781c66751235cecee1eb1ed8edf6b5
'http://archive.ubuntu.com/ubuntu/pool/main/m/media-types/media-types_10.1.0.tar.xz' media-types_10.1.0.tar.xz 59052 SHA512:db92986166c6eedd44d839617c75a1f60704af6d87f92a5c9bb5f207a8e4e27f67b86e340745f6f41e793908d48eb609575678495194a21d368db2fc102b35c9
```

### `dpkg` source package: `mhash=0.9.9.9-9build3`

Binary Packages:

- `libmhash2:amd64=0.9.9.9-9build3`

Licenses: (parsed from: `/usr/share/doc/libmhash2/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris mhash=0.9.9.9-9build3
'http://archive.ubuntu.com/ubuntu/pool/main/m/mhash/mhash_0.9.9.9-9build3.dsc' mhash_0.9.9.9-9build3.dsc 2015 SHA512:26fa03f27e42648a214d9a52d6db2612ddd714dea8d0ddadc4b7cd097fe58a8b0798faac5e8ce5b68a8a52464b1fc4b686703f1cca10b469e2404a12f4e08016
'http://archive.ubuntu.com/ubuntu/pool/main/m/mhash/mhash_0.9.9.9.orig.tar.gz' mhash_0.9.9.9.orig.tar.gz 577533 SHA512:8e979568d44476801049e82f178297059bca80f89fec008217a0c50a14ec6ba64dba297c5c5956e24849a5d434d02cea5d809fc8ba02455a63c5d2905e3e5324
'http://archive.ubuntu.com/ubuntu/pool/main/m/mhash/mhash_0.9.9.9-9build3.debian.tar.xz' mhash_0.9.9.9-9build3.debian.tar.xz 13080 SHA512:f2d177e4004eccb236578702ba5590228b07330f05a77dd8f83634ec7f58281041f4089a05f37ef7ef15239239bc568a709814b8b812c1e617f765329788ae28
```

### `dpkg` source package: `mythes=2:1.2.5-1build1`

Binary Packages:

- `libmythes-1.2-0:amd64=2:1.2.5-1build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris mythes=2:1.2.5-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mythes/mythes_1.2.5-1build1.dsc' mythes_1.2.5-1build1.dsc 1992 SHA512:60f9180368393ab830748cd46171448234cd0e6023e33d8e5ab3f0b419941877ae81bf6995f1634559d97e24ebe2c0735e4bf171cf5a93ac9c0c6ce63dd02269
'http://archive.ubuntu.com/ubuntu/pool/main/m/mythes/mythes_1.2.5.orig.tar.xz' mythes_1.2.5.orig.tar.xz 2891852 SHA512:304fd05619e0ae02c9c29d92a6ada8f4a85f41f331b87b8820728c1919f3dd9c5cd951dbef9a27e649466f94dc5daa19350c9fd09c90d49b198b73b1f9eb770e
'http://archive.ubuntu.com/ubuntu/pool/main/m/mythes/mythes_1.2.5-1build1.debian.tar.xz' mythes_1.2.5-1build1.debian.tar.xz 5224 SHA512:0f053f16d08631d3a3fe65b90808a3036b8347094b4d3097b68bede2942f368675dcc206da6b2e9c6e513e823ad2b12efe3b47f1d3b552ba2b2760cb4cc1a0b5
```

### `dpkg` source package: `ncurses=6.4+20240113-1ubuntu2`

Binary Packages:

- `libncursesw6:amd64=6.4+20240113-1ubuntu2`
- `libtinfo6:amd64=6.4+20240113-1ubuntu2`
- `ncurses-base=6.4+20240113-1ubuntu2`
- `ncurses-bin=6.4+20240113-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libncursesw6/copyright`, `/usr/share/doc/libtinfo6/copyright`, `/usr/share/doc/ncurses-base/copyright`, `/usr/share/doc/ncurses-bin/copyright`)

- `BSD-3-clause`
- `MIT/X11`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris ncurses=6.4+20240113-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.4%2b20240113-1ubuntu2.dsc' ncurses_6.4+20240113-1ubuntu2.dsc 3963 SHA512:6a7865bb7f27ba20f443c43c00825aa8b4be3fd0dbd8da10571186c0a3ca074d82e30a08f854b6ec324a3663dae09d4d57c4e77617b08715a18b182a164a3c26
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.4%2b20240113.orig.tar.gz' ncurses_6.4+20240113.orig.tar.gz 3688489 SHA512:45a4fbfa7d6fa51f7226b35698f2ca9b9f5bbbf3243cfee28886751244d238f698d5eaae1498ae9f7965b2d618a669ff827cfbba830e3a52a26bef825dec8ed9
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.4%2b20240113.orig.tar.gz.asc' ncurses_6.4+20240113.orig.tar.gz.asc 729 SHA512:df94456e47857abfbb47f3a5a69f03b3d418a44542e1fa699c4b13eba812e5a85173cd651d77d07973f8f8d96bc301d7e413ad379f9ba1e9feb434c4da019f13
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.4%2b20240113-1ubuntu2.debian.tar.xz' ncurses_6.4+20240113-1ubuntu2.debian.tar.xz 49372 SHA512:02fdd8f135b415d72ef4051b1002d0721a240f80b164d437592d5d6dfe44c4d3a0cd92baf5071047d826ca3b2039190ed19f3a092169d2a7af501c09e7ec45d0
```

### `dpkg` source package: `netbase=6.4`

Binary Packages:

- `netbase=6.4`

Licenses: (parsed from: `/usr/share/doc/netbase/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris netbase=6.4
'http://archive.ubuntu.com/ubuntu/pool/main/n/netbase/netbase_6.4.dsc' netbase_6.4.dsc 898 SHA512:243ea79c8566581ff6137d0525195c0c9ceea2234cf74eb28aef5f6791ba35003e91bc063ce508c7be3038c05cf081db1d8f717d193f78554b7aa4a215d7c9ef
'http://archive.ubuntu.com/ubuntu/pool/main/n/netbase/netbase_6.4.tar.xz' netbase_6.4.tar.xz 32712 SHA512:cbc588e5fbef5e3e2c8a2dc49214237e8340bf3fae66973237d1714f67c039d4b8d6886581d92b45a004fa23ff016ad8c82cb15b6f752d1ffa23e3284fe0b80a
```

### `dpkg` source package: `nettle=3.9.1-2.2build1.1`

Binary Packages:

- `libhogweed6t64:amd64=3.9.1-2.2build1.1`
- `libnettle8t64:amd64=3.9.1-2.2build1.1`

Licenses: (parsed from: `/usr/share/doc/libhogweed6t64/copyright`, `/usr/share/doc/libnettle8t64/copyright`)

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
$ apt-get source -qq --print-uris nettle=3.9.1-2.2build1.1
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.9.1.orig.tar.gz' nettle_3.9.1.orig.tar.gz 2396741 SHA256:ccfeff981b0ca71bbd6fbcb054f407c60ffb644389a5be80d6716d5b550c6ce3
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.9.1.orig.tar.gz.asc' nettle_3.9.1.orig.tar.gz.asc 573 SHA256:9746017a1a7fe60aad4b929ea592bc6ac51e12ea7179f289944eb44828d958af
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.9.1-2.2build1.1.debian.tar.xz' nettle_3.9.1-2.2build1.1.debian.tar.xz 24848 SHA256:be4ad3b97b32c4c4bacc10aa4caef2f3fa0840c21c642407fc3d48c4535b7c5e
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.9.1-2.2build1.1.dsc' nettle_3.9.1-2.2build1.1.dsc 2325 SHA256:db439554d51174b657660a2a47d3d4128838e063f3c9c7da67bb3fe91931d1d2
```

### `dpkg` source package: `nghttp2=1.59.0-1ubuntu0.3`

Binary Packages:

- `libnghttp2-14:amd64=1.59.0-1ubuntu0.3`

Licenses: (parsed from: `/usr/share/doc/libnghttp2-14/copyright`)

- `BSD-2-clause`
- `Expat`
- `GPL-3`
- `GPL-3+ with autoconf exception`
- `MIT`
- `all-permissive`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `npth=1.6-3.1build1`

Binary Packages:

- `libnpth0t64:amd64=1.6-3.1build1`

Licenses: (parsed from: `/usr/share/doc/libnpth0t64/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris npth=1.6-3.1build1
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.6-3.1build1.dsc' npth_1.6-3.1build1.dsc 2107 SHA512:83fc5c562da895742de6b46585a0707052e053804e3187525d290e0cc05938feb7681bb9a7dd053ed930a3774c7abc95a4d1a9e437930ca72c438e29cb7183d8
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.6.orig.tar.bz2' npth_1.6.orig.tar.bz2 300486 SHA512:2ed1012e14a9d10665420b9a23628be7e206fd9348111ec751349b93557ee69f1176bcf7e6b195b35b1c44a5e0e81ee33b713f03d79a33d1ecd9037035afeda2
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.6-3.1build1.debian.tar.xz' npth_1.6-3.1build1.debian.tar.xz 11036 SHA512:caf36d8727c335bbcf996421e65cf044d6468d95d70e9b671b57196341e49e67f687d6c80cab78d6c0388a90f795e4ed0ff28aaa0d4e7dd6f4701abdfc77a09a
```

### `dpkg` source package: `nspr=2:4.35-1.1build1`

Binary Packages:

- `libnspr4:amd64=2:4.35-1.1build1`

Licenses: (parsed from: `/usr/share/doc/libnspr4/copyright`)

- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris nspr=2:4.35-1.1build1
'http://archive.ubuntu.com/ubuntu/pool/main/n/nspr/nspr_4.35-1.1build1.dsc' nspr_4.35-1.1build1.dsc 2111 SHA512:955578f7ceefc1191bbe07cfa2b5f67fd79c6e68eceab796d1ca3cc5904b9318c2427a60963cbf9d58e7d290362ac9e10cd3b3313e93b1fe6d7350a9e0feb29c
'http://archive.ubuntu.com/ubuntu/pool/main/n/nspr/nspr_4.35.orig.tar.gz' nspr_4.35.orig.tar.gz 1096974 SHA512:502815833116e25f79ddf71d1526484908aa92fbc55f8a892729cb404a4daafcc0470a89854cd080d2d20299fdb7d9662507c5362c7ae661cbacf308ac56ef7f
'http://archive.ubuntu.com/ubuntu/pool/main/n/nspr/nspr_4.35-1.1build1.debian.tar.xz' nspr_4.35-1.1build1.debian.tar.xz 11828 SHA512:fcc4b8228e5c499e656ac741b5ef2955793ee40ecc55e543d7a721bebcfbb979d02c2e8fb0729b3647af78c4dacdabe6f1d62cf06fa58d35b3817e602b7b6c45
```

### `dpkg` source package: `nss=2:3.98-1ubuntu0.2`

Binary Packages:

- `libnss3:amd64=2:3.98-1ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/libnss3/copyright`)

- `BSD-3`
- `MPL-2.0`
- `Zlib`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris nss=2:3.98-1ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/n/nss/nss_3.98.orig.tar.gz' nss_3.98.orig.tar.gz 76685475 SHA512:4f335c5c284eff6424745cc15e32037715a915f6f61687ec36a8ffaef0e45d152602a1be275bbb2f14650c7d258d6488430cdcf512b18ba7cb73cd43ac625681
'http://archive.ubuntu.com/ubuntu/pool/main/n/nss/nss_3.98-1ubuntu0.2.debian.tar.xz' nss_3.98-1ubuntu0.2.debian.tar.xz 20408 SHA512:7372aeafd98cd8089273624530aaff530088f5358045c0d098c17e141fde1ce8eb8662a3c9ae441b8c156c844052d6deb24792dfa8a9e6b5c6dc9510539e3fd9
'http://archive.ubuntu.com/ubuntu/pool/main/n/nss/nss_3.98-1ubuntu0.2.dsc' nss_3.98-1ubuntu0.2.dsc 2271 SHA512:e6db1d913e9cf7c995b3eb4b3b04ed055bcb62c5e920ee59ea0d609e83185f13e9f9ead204b1b7aee96b624e36c029952cd66c8529ab82ed92d62e95d9e7ed48
```

### `dpkg` source package: `openjpeg2=2.5.0-2ubuntu0.5`

Binary Packages:

- `libopenjp2-7:amd64=2.5.0-2ubuntu0.5`

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
$ apt-get source -qq --print-uris openjpeg2=2.5.0-2ubuntu0.5
'http://archive.ubuntu.com/ubuntu/pool/main/o/openjpeg2/openjpeg2_2.5.0.orig.tar.xz' openjpeg2_2.5.0.orig.tar.xz 1221108 SHA512:a266297d60ff93e14dbee890b01a76870bda69f082dbe8932fc444ccd260c27aaaac8b22e3c00ca71930b2555a1cad6cf6ed0d5d882d9d13f472cc494cab8234
'http://archive.ubuntu.com/ubuntu/pool/main/o/openjpeg2/openjpeg2_2.5.0-2ubuntu0.5.debian.tar.xz' openjpeg2_2.5.0-2ubuntu0.5.debian.tar.xz 20744 SHA512:0ab83deea9675c00fcd23e3f4ee29532c7eda1da83756bc58af21e485b8a0f0d82cd8c07600fb724bdb4c8c8895975c1cc7494c961ab0815403bb5ce340b9b92
'http://archive.ubuntu.com/ubuntu/pool/main/o/openjpeg2/openjpeg2_2.5.0-2ubuntu0.5.dsc' openjpeg2_2.5.0-2ubuntu0.5.dsc 2788 SHA512:cbc2478147cb54a4f000201b51b693614a36541887f97bc58892e236708f4065d7020c33448881155bf26dc90d1d4b8bb5b537a87f1d681b9042445f9963410e
```

### `dpkg` source package: `openldap=2.6.10+dfsg-0ubuntu0.24.04.1`

Binary Packages:

- `libldap2:amd64=2.6.10+dfsg-0ubuntu0.24.04.1`

Licenses: (parsed from: `/usr/share/doc/libldap2/copyright`)

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
$ apt-get source -qq --print-uris openldap=2.6.10+dfsg-0ubuntu0.24.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.6.10%2bdfsg.orig.tar.xz' openldap_2.6.10+dfsg.orig.tar.xz 3754560 SHA256:e871102bda1e42155fd4d6be4825a297e1c593cb0907b84fc7dde888dc847877
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.6.10%2bdfsg-0ubuntu0.24.04.1.debian.tar.xz' openldap_2.6.10+dfsg-0ubuntu0.24.04.1.debian.tar.xz 191132 SHA256:91bdd643954645ce8ba51152516831ce4dcb497a222b88a5df847c4780e5f79e
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.6.10%2bdfsg-0ubuntu0.24.04.1.dsc' openldap_2.6.10+dfsg-0ubuntu0.24.04.1.dsc 3653 SHA256:63be3643ff4157d84ef8bd9763fb7252695ceaea46773277600377417ecd21de
```

### `dpkg` source package: `openssl=3.0.13-0ubuntu3.11`

Binary Packages:

- `libssl3t64:amd64=3.0.13-0ubuntu3.11`
- `openssl=3.0.13-0ubuntu3.11`

Licenses: (parsed from: `/usr/share/doc/libssl3t64/copyright`)

- `Apache-2.0`
- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris openssl=3.0.13-0ubuntu3.11
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_3.0.13.orig.tar.gz' openssl_3.0.13.orig.tar.gz 15294843 SHA512:22f4096781f0b075f5bf81bd39a0f97e111760dfa73b6f858f6bb54968a7847944d74969ae10f9a51cc21a2f4af20d9a4c463649dc824f5e439e196d6764c4f9
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_3.0.13-0ubuntu3.11.debian.tar.xz' openssl_3.0.13-0ubuntu3.11.debian.tar.xz 195932 SHA512:1296cd3f720a97277db2d400b0817ee89f92bd0ed7165a301ce994d03a48e0da143fc3bf8b8f46d67374278671c91fd2d0883d77fb4844beba72fc21c9eba5ce
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_3.0.13-0ubuntu3.11.dsc' openssl_3.0.13-0ubuntu3.11.dsc 2516 SHA512:68b2827c93a1a22e2418fc7063b93d900a97d196b4809041362e7f5581315268b1520f78dba839a5d9c080227030e3f86c244c2e34cd31bc10cec529767e2661
```

### `dpkg` source package: `orc=1:0.4.38-1ubuntu0.1`

Binary Packages:

- `liborc-0.4-0t64:amd64=1:0.4.38-1ubuntu0.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris orc=1:0.4.38-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/o/orc/orc_0.4.38.orig.tar.xz' orc_0.4.38.orig.tar.xz 227152 SHA256:a55a98d4772567aa3faed8fb84d540c3db77eaba16d3e2e10b044fbc9228668d
'http://archive.ubuntu.com/ubuntu/pool/main/o/orc/orc_0.4.38.orig.tar.xz.asc' orc_0.4.38.orig.tar.xz.asc 833 SHA256:6c96eb2daccefc923028fdb128f6b2131c151f27eae5c503d1ecd29b44409a51
'http://archive.ubuntu.com/ubuntu/pool/main/o/orc/orc_0.4.38-1ubuntu0.1.debian.tar.xz' orc_0.4.38-1ubuntu0.1.debian.tar.xz 14488 SHA256:b2ec203c6eec26131e46d0f42078a656c707e59443de79e2d93ecc28c7a5dedf
'http://archive.ubuntu.com/ubuntu/pool/main/o/orc/orc_0.4.38-1ubuntu0.1.dsc' orc_0.4.38-1ubuntu0.1.dsc 2571 SHA256:66d2cf76265eeb710c65436b578a7043c3e1665cc74e517b7bf73d55470415c2
```

### `dpkg` source package: `p11-kit=0.25.3-4ubuntu2.1`

Binary Packages:

- `libp11-kit0:amd64=0.25.3-4ubuntu2.1`
- `p11-kit=0.25.3-4ubuntu2.1`
- `p11-kit-modules:amd64=0.25.3-4ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/libp11-kit0/copyright`, `/usr/share/doc/p11-kit/copyright`, `/usr/share/doc/p11-kit-modules/copyright`)

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
- `customFSFUL`
- `customFSFULLRWD`

Source:

```console
$ apt-get source -qq --print-uris p11-kit=0.25.3-4ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.25.3.orig.tar.xz' p11-kit_0.25.3.orig.tar.xz 991528 SHA256:d8ddce1bb7e898986f9d250ccae7c09ce14d82f1009046d202a0eb1b428b2adc
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.25.3-4ubuntu2.1.debian.tar.xz' p11-kit_0.25.3-4ubuntu2.1.debian.tar.xz 26028 SHA256:f6e9bd39af9478e27900e9b557dc9352f5dcebb2da3ad8a0193686ebfe322cb2
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.25.3-4ubuntu2.1.dsc' p11-kit_0.25.3-4ubuntu2.1.dsc 2405 SHA256:8c97d633fe815e73655b4d4b25a997a967eebca33b42db38a07b706db692a13c
```

### `dpkg` source package: `pam=1.5.3-5ubuntu5.5`

Binary Packages:

- `libpam-modules:amd64=1.5.3-5ubuntu5.5`
- `libpam-modules-bin=1.5.3-5ubuntu5.5`
- `libpam-runtime=1.5.3-5ubuntu5.5`
- `libpam0g:amd64=1.5.3-5ubuntu5.5`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `BSD-3-clause`
- `BSD-tcp_wrappers`
- `Beerware`
- `GPL`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+ with Bison exception`
- `LGPL-2`
- `LGPL-2+`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `pcre2=10.42-4ubuntu2.1`

Binary Packages:

- `libpcre2-8-0:amd64=10.42-4ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/libpcre2-8-0/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-3-clause-Cambridge with BINARY LIBRARY-LIKE PACKAGES exception`
- `X11`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris pcre2=10.42-4ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/pcre2_10.42.orig.tar.gz' pcre2_10.42.orig.tar.gz 2397194 SHA256:c33b418e3b936ee3153de2c61cc638e7e4fe3156022a5c77d0711bcbb9d64f1f
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/pcre2_10.42-4ubuntu2.1.diff.gz' pcre2_10.42-4ubuntu2.1.diff.gz 8431 SHA256:29c5cb6ff392544bf48bd3ec2a98aa0da5297457fa4f4199a1c392ec3d41f19c
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/pcre2_10.42-4ubuntu2.1.dsc' pcre2_10.42-4ubuntu2.1.dsc 2277 SHA256:6272177be186d6f8ad16b668bb508b2e07645e05b5b8402d446492cb6d18104e
```

### `dpkg` source package: `perl=5.38.2-3.2ubuntu0.2`

Binary Packages:

- `perl-base=5.38.2-3.2ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/perl-base/copyright`)

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `pinentry=1.2.1-3ubuntu5`

Binary Packages:

- `pinentry-curses=1.2.1-3ubuntu5`

Licenses: (parsed from: `/usr/share/doc/pinentry-curses/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-3`
- `LGPL-3+`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris pinentry=1.2.1-3ubuntu5
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.2.1-3ubuntu5.dsc' pinentry_1.2.1-3ubuntu5.dsc 3322 SHA512:86814cb072f65755573416f567476616d001aefa000362e84b751c85ed42b02297391fc67d7dfabcfd70d7e953e0b9d95b63d98222f8ea79aec527da37fc0c15
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.2.1.orig.tar.bz2' pinentry_1.2.1.orig.tar.bz2 547698 SHA512:a665315628f4dcf07e16a22db3f3be15d7e7e93b3deec0546c7275b71b0e3bd65535a08af5e12d6339fd6595132df86529401d9d12bd17c428a3466e8dfafab6
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.2.1.orig.tar.bz2.asc' pinentry_1.2.1.orig.tar.bz2.asc 390 SHA512:60b63b7fe2d6793840be55635f9a704cd42eda69ccaea2453d47b5f7a5198d313b8f23555972584f7f087fd5d0fc2a379bfc5f7512f325b018cc5c3e2e54a47e
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.2.1-3ubuntu5.debian.tar.xz' pinentry_1.2.1-3ubuntu5.debian.tar.xz 19244 SHA512:7d4a8fe8920f1d6ef656ab485e2625bc646c5726ba18f91eedb3f4c95241680f2169b80791355e34a707bbebdb0de9986e264f2d8f36848e48a8300fc8497481
```

### `dpkg` source package: `pixman=0.42.2-1build1`

Binary Packages:

- `libpixman-1-0:amd64=0.42.2-1build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pixman=0.42.2-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.42.2-1build1.dsc' pixman_0.42.2-1build1.dsc 2153 SHA512:433d3a48159ab6d981bc4a6c40abfb7cef8aa6ca7c893420042d071e1c236ad78471df956ac83d2e88df25e107b36b3ce808fa97bc701178804d452523ba0826
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.42.2.orig.tar.gz' pixman_0.42.2.orig.tar.gz 959669 SHA512:0a4e327aef89c25f8cb474fbd01de834fd2a1b13fdf7db11ab72072082e45881cd16060673b59d02054b1711ae69c6e2395f6ae9214225ee7153939efcd2fa5d
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.42.2-1build1.diff.gz' pixman_0.42.2-1build1.diff.gz 327276 SHA512:a07846ba47b3f3407e43aefee37efe6265445a8c1e81589a715f175e426ed2a75822cce7545ac94bb368c3eecaaa2ccd7b0c7944aba9b51f0e939403b2f57d1e
```

### `dpkg` source package: `poppler=24.02.0-1ubuntu9.9`

Binary Packages:

- `libpoppler134:amd64=24.02.0-1ubuntu9.9`

Licenses: (parsed from: `/usr/share/doc/libpoppler134/copyright`)

- `Apache-2.0`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris poppler=24.02.0-1ubuntu9.9
'http://archive.ubuntu.com/ubuntu/pool/main/p/poppler/poppler_24.02.0.orig.tar.gz' poppler_24.02.0.orig.tar.gz 1975230 SHA512:75fc41f94ad6848b834eab1cc9199c5ba55b30b12ffbe26d53fa85e86b9918999e752c82d2c5965d6669ace4d9658b1236159c9bfa4bbf40da2660dc00a19f37
'http://archive.ubuntu.com/ubuntu/pool/main/p/poppler/poppler_24.02.0-1ubuntu9.9.debian.tar.xz' poppler_24.02.0-1ubuntu9.9.debian.tar.xz 44256 SHA512:ba83a39c4444ae67ecd73977eb6ca00980343de1b20c7f9d3e0569535bf778ce03f360351210468f0b996272058371aaa50bc60cf6a60181eae29ecf2c2a2a13
'http://archive.ubuntu.com/ubuntu/pool/main/p/poppler/poppler_24.02.0-1ubuntu9.9.dsc' poppler_24.02.0-1ubuntu9.9.dsc 3940 SHA512:5d261665cc98f0d14da1845eb609bccd0c5516e6b80b00bba097451cec84442ebb91f74ec116e5796bba682ee94d4cd406566bcd7b5107c49352ca6c51d31e3b
```

### `dpkg` source package: `procps=2:4.0.4-4ubuntu3.2`

Binary Packages:

- `libproc2-0:amd64=2:4.0.4-4ubuntu3.2`
- `procps=2:4.0.4-4ubuntu3.2`

Licenses: (parsed from: `/usr/share/doc/libproc2-0/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris procps=2:4.0.4-4ubuntu3.2
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_4.0.4.orig.tar.xz' procps_4.0.4.orig.tar.xz 1401540 SHA256:22870d6feb2478adb617ce4f09a787addaf2d260c5a8aa7b17d889a962c5e42e
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_4.0.4-4ubuntu3.2.debian.tar.xz' procps_4.0.4-4ubuntu3.2.debian.tar.xz 38784 SHA256:519e5cd39f4a8401dfd892134f3c5ccf5221f23fe32174393ce81cc45526f05e
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_4.0.4-4ubuntu3.2.dsc' procps_4.0.4-4ubuntu3.2.dsc 2251 SHA256:eee89a6469fcc4fb8ee3844b10bf48c894322ff781e92732554c7ceed680c5a1
```

### `dpkg` source package: `python3-defaults=3.12.3-0ubuntu2.1`

Binary Packages:

- `libpython3-stdlib:amd64=3.12.3-0ubuntu2.1`
- `python3=3.12.3-0ubuntu2.1`
- `python3-minimal=3.12.3-0ubuntu2.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-defaults=3.12.3-0ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.12.3-0ubuntu2.1.tar.gz' python3-defaults_3.12.3-0ubuntu2.1.tar.gz 147765 SHA256:1a6b241d5fb2df35d0f1b683a783ced7b4fe0f05c29db3d3592e64da8cc188ae
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.12.3-0ubuntu2.1.dsc' python3-defaults_3.12.3-0ubuntu2.1.dsc 3116 SHA256:79676920120c7f45f1605d92047174fca9cc75a39d9df91c9740be98fb8cc542
```

### `dpkg` source package: `python3.12=3.12.3-1ubuntu0.15`

Binary Packages:

- `libpython3.12-minimal:amd64=3.12.3-1ubuntu0.15`
- `libpython3.12-stdlib:amd64=3.12.3-1ubuntu0.15`
- `libpython3.12t64:amd64=3.12.3-1ubuntu0.15`
- `python3.12=3.12.3-1ubuntu0.15`
- `python3.12-minimal=3.12.3-1ubuntu0.15`

Licenses: (parsed from: `/usr/share/doc/libpython3.12-minimal/copyright`, `/usr/share/doc/libpython3.12-stdlib/copyright`, `/usr/share/doc/libpython3.12t64/copyright`, `/usr/share/doc/python3.12/copyright`, `/usr/share/doc/python3.12-minimal/copyright`)

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
$ apt-get source -qq --print-uris python3.12=3.12.3-1ubuntu0.15
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.12/python3.12_3.12.3.orig.tar.xz' python3.12_3.12.3.orig.tar.xz 20625068 SHA512:4a2213b108e7f1f1525baa8348e68b2a2336d925e60d0a59f0225fc470768a2c8031edafc0b8243f94dbae18afda335ee5adf2785328c2218fd64cbb439f13a4
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.12/python3.12_3.12.3-1ubuntu0.15.debian.tar.xz' python3.12_3.12.3-1ubuntu0.15.debian.tar.xz 299248 SHA512:cc765bbb9c7487599b37697c637e8b806bcaec44a42ad038aa75f92011158ae8fb7da59ed58b31b504917660d9df30dc77e318ef832eccd898ed3abd9f309936
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.12/python3.12_3.12.3-1ubuntu0.15.dsc' python3.12_3.12.3-1ubuntu0.15.dsc 3879 SHA512:bcf9b36359ec28d3ff0c75d9b47fc60d3de150ce10d8451e84b313edeb67c459d599ff0598c327021e1a527ced7ac36c0fba343fec89d85a02ff7832dd744758
```

### `dpkg` source package: `raptor2=2.0.16-3ubuntu0.1`

Binary Packages:

- `libraptor2-0:amd64=2.0.16-3ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libraptor2-0/copyright`)

- `Apache-2.0`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris raptor2=2.0.16-3ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/r/raptor2/raptor2_2.0.16.orig.tar.gz' raptor2_2.0.16.orig.tar.gz 1750726 SHA256:089db78d7ac982354bdbf39d973baf09581e6904ac4c92a98c5caadb3de44680
'http://archive.ubuntu.com/ubuntu/pool/main/r/raptor2/raptor2_2.0.16-3ubuntu0.1.debian.tar.xz' raptor2_2.0.16-3ubuntu0.1.debian.tar.xz 14480 SHA256:b1be0072a64ffe01f6e63d8a32d05888f4c5ca4a52ccc81ab74944b3af0e9465
'http://archive.ubuntu.com/ubuntu/pool/main/r/raptor2/raptor2_2.0.16-3ubuntu0.1.dsc' raptor2_2.0.16-3ubuntu0.1.dsc 2272 SHA256:63648459ac2ac7afceb57cb0665fb0cd4fceabeb9eb038c15c38bf3e9d1fc521
```

### `dpkg` source package: `rasqal=0.9.33-2.1build1`

Binary Packages:

- `librasqal3t64:amd64=0.9.33-2.1build1`

Licenses: (parsed from: `/usr/share/doc/librasqal3t64/copyright`)

- `Apache-2.0`
- `Apache-2.0+`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris rasqal=0.9.33-2.1build1
'http://archive.ubuntu.com/ubuntu/pool/main/r/rasqal/rasqal_0.9.33-2.1build1.dsc' rasqal_0.9.33-2.1build1.dsc 2251 SHA512:9583422c14186e5584d97a8c65c532bd999f3d09863b06b8cbfe6d985bf53e7ac735a50494868d971230885def14532d5a2b7917456e01332f7aa5a89882b035
'http://archive.ubuntu.com/ubuntu/pool/main/r/rasqal/rasqal_0.9.33.orig.tar.gz' rasqal_0.9.33.orig.tar.gz 1595647 SHA512:05728682797470db9e51d156012e8fde9dec1554d107372faa11cbe6cdc3356e92386f4f8de6d7c41e3100b76f9b1c6809102a913829cddbd2ff29043c04d522
'http://archive.ubuntu.com/ubuntu/pool/main/r/rasqal/rasqal_0.9.33-2.1build1.debian.tar.xz' rasqal_0.9.33-2.1build1.debian.tar.xz 6512 SHA512:f2611ca3297607d995d7cfbe9617fd667ffc06bbae852611cf26776f6b9af525122c5ccd20877e2c0c5b090c5608a7a9f319f5844f5f00dafb5e7faa986d6d6e
```

### `dpkg` source package: `readline=8.2-4build1`

Binary Packages:

- `libreadline8t64:amd64=8.2-4build1`
- `readline-common=8.2-4build1`

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
$ apt-get source -qq --print-uris readline=8.2-4build1
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.2-4build1.dsc' readline_8.2-4build1.dsc 2926 SHA512:8ad7e70792466e093ff1202b123e24c6fa1a9850e57ca0b775b06bfe4e502ef8ffc876eda32fb164565cda1e4e048f3f80e6ff69ae9c56f87841f15c759a7658
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.2.orig.tar.gz' readline_8.2.orig.tar.gz 3043952 SHA512:0a451d459146bfdeecc9cdd94bda6a6416d3e93abd80885a40b334312f16eb890f8618a27ca26868cebbddf1224983e631b1cbc002c1a4d1cd0d65fba9fea49a
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.2-4build1.debian.tar.xz' readline_8.2-4build1.debian.tar.xz 33816 SHA512:b8c92282e25f3d28acd02c1431088f5f29aa1398ce919c312de50813e8a0df07d973ffd49fccde51505538ed7e29f666d812931961746b12ebde219d16be914f
```

### `dpkg` source package: `redland=1.0.17-3.1ubuntu3`

Binary Packages:

- `librdf0t64:amd64=1.0.17-3.1ubuntu3`

Licenses: (parsed from: `/usr/share/doc/librdf0t64/copyright`)

- `Apache-2.0`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris redland=1.0.17-3.1ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/r/redland/redland_1.0.17-3.1ubuntu3.dsc' redland_1.0.17-3.1ubuntu3.dsc 2461 SHA512:221c77ba4f360669da07f491e439f910b2ef175fd34796bc7667314b43a36142d28c5bdd515bfe8062cce072703ba477af3b810c9a88caddc8b83825d26a144e
'http://archive.ubuntu.com/ubuntu/pool/main/r/redland/redland_1.0.17.orig.tar.gz' redland_1.0.17.orig.tar.gz 1621566 SHA512:363323ffc9e75d4f0e3a3b40952f6241fd0d8b9f46bfd4dd86cf0a5162de35257a8b70ce408a6083c03ba7c388982231a3774e5e9024b262ebb02968f778b850
'http://archive.ubuntu.com/ubuntu/pool/main/r/redland/redland_1.0.17-3.1ubuntu3.debian.tar.xz' redland_1.0.17-3.1ubuntu3.debian.tar.xz 9236 SHA512:2fcaed9b56b62318734e2af5c56675290d5a40e39bcdbc49469e987293dbb184efc5f00668ee392b087f0fde9d3f95f3b884f871bfe8344b1b3d21c992e38643
```

### `dpkg` source package: `rtmpdump=2.4+20151223.gitfa8646d.1-2build7`

Binary Packages:

- `librtmp1:amd64=2.4+20151223.gitfa8646d.1-2build7`

Licenses: (parsed from: `/usr/share/doc/librtmp1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris rtmpdump=2.4+20151223.gitfa8646d.1-2build7
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1-2build7.dsc' rtmpdump_2.4+20151223.gitfa8646d.1-2build7.dsc 2439 SHA512:5e2fb3986c0f0e2150c6054e0428adbf1719bb0c33f92ae4acb74a11e625d731ede0262f0d8887c769a95a61f3cd4d23d44bf2f375f0153eba6c0f25b68719c5
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1.orig.tar.gz' rtmpdump_2.4+20151223.gitfa8646d.1.orig.tar.gz 142213 SHA512:bdfcbab73179d614a295a7b136ea4c9d0ce4620883b493f298362784d245608cd6ad4b0ad30f94ed73a086b4555399521ae9e95b6375fce75e455ae68c055e7b
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1-2build7.debian.tar.xz' rtmpdump_2.4+20151223.gitfa8646d.1-2build7.debian.tar.xz 8464 SHA512:812edf4f933ad0f723404192bfbfceca86e58303169a30e3b1f47781b709b91a259621293533d31d7abd16bc522824e2db325426a4ce9a6b428b88d492ae4c6c
```

### `dpkg` source package: `sed=4.9-2ubuntu0.24.04.1`

Binary Packages:

- `sed=4.9-2ubuntu0.24.04.1`

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
$ apt-get source -qq --print-uris sed=4.9-2ubuntu0.24.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.9.orig.tar.xz' sed_4.9.orig.tar.xz 1397092 SHA512:36157a4b4a2430cf421b7bd07f1675d680d9f1616be96cf6ad6ee74a9ec0fe695f8d0b1e1f0b008bbb33cc7fcde5e1c456359bbbc63f8aebdd4fedc3982cf6dc
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.9-2ubuntu0.24.04.1.debian.tar.xz' sed_4.9-2ubuntu0.24.04.1.debian.tar.xz 63288 SHA512:d6fbc8c55fa3157a77d5466662f9243b7cb67914607e63a86682090c6da61ef2c15b9ab0da25a5fdf73e7bcb7048e8f921fc7c8686aa24dc46156388ba3271df
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.9-2ubuntu0.24.04.1.dsc' sed_4.9-2ubuntu0.24.04.1.dsc 1999 SHA512:adb7be30c5f0224b11b7b12e9f2f9214a032b2794ecf026b23c9289352eafcff53cb719721fccde6d1f9ea007cdd625cc2c5940b933d6f66c9d6251ff8d13274
```

### `dpkg` source package: `sensible-utils=0.0.22`

Binary Packages:

- `sensible-utils=0.0.22`

Licenses: (parsed from: `/usr/share/doc/sensible-utils/copyright`)

- `All-permissive`
- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `configure`
- `installsh`

Source:

```console
$ apt-get source -qq --print-uris sensible-utils=0.0.22
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.22.dsc' sensible-utils_0.0.22.dsc 1737 SHA512:be6eb8a63de0912e56d7039e616fa1ef362f1081e2edb893f3cfa8ccc3c5d2ed65ad2f477d6013b6a5ecf0f4b98a39de45ee073cdeeb3802f3eb51c754fda40d
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.22.tar.xz' sensible-utils_0.0.22.tar.xz 74412 SHA512:c35ac6f9a27bf21bd496acb5ada2fd2e5eb101d661fe49a505a80dc507eea314b8b29388ae4852c14aff547fef8938f48a14898c49cf951d7ab13ccf48e77ed5
```

### `dpkg` source package: `shadow=1:4.13+dfsg1-4ubuntu3.2`

Binary Packages:

- `login=1:4.13+dfsg1-4ubuntu3.2`
- `passwd=1:4.13+dfsg1-4ubuntu3.2`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `BSD-3-clause`
- `GPL-1`
- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.13+dfsg1-4ubuntu3.2
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.13%2bdfsg1.orig.tar.xz' shadow_4.13+dfsg1.orig.tar.xz 1811752 SHA256:a8bb3a2aceff1cbe39d0f50687dcc1d7e7be0516a9d954d8e2eedb93f5906207
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.13%2bdfsg1-4ubuntu3.2.debian.tar.xz' shadow_4.13+dfsg1-4ubuntu3.2.debian.tar.xz 96392 SHA256:ff01a3e94111ca8c4dca097ebe54edbee912cbdeba042c214bfa4c34e7839f61
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.13%2bdfsg1-4ubuntu3.2.dsc' shadow_4.13+dfsg1-4ubuntu3.2.dsc 2400 SHA256:0be17fd044f3e23f714a5b286a04bd040f246af1ac32fcc406b63756baa9c368
```

### `dpkg` source package: `sqlite3=3.45.1-1ubuntu2.6`

Binary Packages:

- `libsqlite3-0:amd64=3.45.1-1ubuntu2.6`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `suitesparse=1:7.6.1+dfsg-1build1`

Binary Packages:

- `libcolamd3:amd64=1:7.6.1+dfsg-1build1`
- `libsuitesparseconfig7:amd64=1:7.6.1+dfsg-1build1`

Licenses: (parsed from: `/usr/share/doc/libcolamd3/copyright`, `/usr/share/doc/libsuitesparseconfig7/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`

Source:

```console
$ apt-get source -qq --print-uris suitesparse=1:7.6.1+dfsg-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/s/suitesparse/suitesparse_7.6.1%2bdfsg-1build1.dsc' suitesparse_7.6.1+dfsg-1build1.dsc 3442 SHA512:54970d3baf4fee48bd31f732c713c198563a3adba9a4b5eb168c9021f058f85622f6159eacb5f8a291f7b0039bd76f5d63115397a5212d71205141e63223af17
'http://archive.ubuntu.com/ubuntu/pool/main/s/suitesparse/suitesparse_7.6.1%2bdfsg.orig.tar.xz' suitesparse_7.6.1+dfsg.orig.tar.xz 50668468 SHA512:02fbdca699087ad42133f33833687bffe1a6ceca3fb7fee2b1fcf1d4f477bbf0bb38daadb04dcd1659a9c46683aa0cb4da94a7f58ed5f32d3fee2c6a90085a99
'http://archive.ubuntu.com/ubuntu/pool/main/s/suitesparse/suitesparse_7.6.1%2bdfsg-1build1.debian.tar.xz' suitesparse_7.6.1+dfsg-1build1.debian.tar.xz 26528 SHA512:9c0f72aa6bb1bdca45013278673101039e959a129fa6efb308f35987778019a64ff1d1df7ae74f782716d52532100ac160848961cf5ddbba202d15222d39b689
```

### `dpkg` source package: `systemd=255.4-1ubuntu8.16`

Binary Packages:

- `libsystemd0:amd64=255.4-1ubuntu8.16`
- `libudev1:amd64=255.4-1ubuntu8.16`

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
$ apt-get source -qq --print-uris systemd=255.4-1ubuntu8.16
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_255.4.orig.tar.gz' systemd_255.4.orig.tar.gz 14952427 SHA512:8a2bde11a55f7f788ba7751789a5e9be6ce9634e88d54e49f6e832c4c49020c6cacaf2a610fe26f92998b0cbf43c6c2150a96b2c0953d23261009f57d71ea979
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_255.4-1ubuntu8.16.debian.tar.xz' systemd_255.4-1ubuntu8.16.debian.tar.xz 265512 SHA512:f8760a5fe788f08deb96120704eb3f4f12f92652bd032898cbe0a30159430b76cab7269866c67e84abab6cf6301390ce7d0935e785d1c8c873dc8289c9536f78
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_255.4-1ubuntu8.16.dsc' systemd_255.4-1ubuntu8.16.dsc 7324 SHA512:3743076a6c09de360bfee7e8a6aaf08b2530e7aeac767f457888d3f5ef842a3508116d9d3a7dde8caaaec9faddcead7afebf16f8b1bccc8f1a0dfbbdac38ba16
```

### `dpkg` source package: `sysvinit=3.08-6ubuntu3`

Binary Packages:

- `sysvinit-utils=3.08-6ubuntu3`

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
$ apt-get source -qq --print-uris sysvinit=3.08-6ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_3.08-6ubuntu3.dsc' sysvinit_3.08-6ubuntu3.dsc 2495 SHA512:8200c0fa7220e8922a8546f4f1a4beb3a7194b23abd8730c82ea0cfa57bc6fba01e0b7883a0a9b5b1f10c7b7be805689db80df2930c6d345754a3b85a4ddac02
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_3.08.orig.tar.gz' sysvinit_3.08.orig.tar.gz 513674 SHA512:63ed7ebd50944adce1a35af7798d0e2d6248f36a606f63bb7a567424555ec33e83c33b897528c801b4b4ac61b24d2a3555c9a690031c50a94e7ead83f37f8e96
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_3.08-6ubuntu3.debian.tar.xz' sysvinit_3.08-6ubuntu3.debian.tar.xz 140128 SHA512:fa53bd172bf4ce998743f3011b44ebf188948ed436f202181fc6eb7d4535e4d1426aeeac76cda4a650b040d22f9487b890e9f826cd222ddc5e939901c5f7c67c
```

### `dpkg` source package: `tar=1.35+dfsg-3build1`

Binary Packages:

- `tar=1.35+dfsg-3build1`

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
$ apt-get source -qq --print-uris tar=1.35+dfsg-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.35%2bdfsg-3build1.dsc' tar_1.35+dfsg-3build1.dsc 2141 SHA512:bb080610adc480448cf511d591eaaeb301395e5bbe01b16b254ad33edb33233aba18af79a4cf505fec330c83dac9570d84122432ff11b781a12c5dc409a173f6
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.35%2bdfsg.orig.tar.xz' tar_1.35+dfsg.orig.tar.xz 2111608 SHA512:3aea32b5c8de229131308420d8a7aa57f7fd1b376980456dd1aa66f97509572750c3833ab9cc2edc6fdea51f802033598c83a0d6e7f18680b1638996f0acaae7
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.35%2bdfsg-3build1.debian.tar.xz' tar_1.35+dfsg-3build1.debian.tar.xz 20948 SHA512:82b1a9f70c99c17f5288a4a9fbe8b1bef0adcd9543f97f876ee81afc16e3ac02e46182557406ff434ae90c81950f22346c3229ee3e5f5f9578dcf09a20053e9f
```

### `dpkg` source package: `tiff=4.5.1+git230720-4ubuntu2.5`

Binary Packages:

- `libtiff6:amd64=4.5.1+git230720-4ubuntu2.5`

Licenses: (parsed from: `/usr/share/doc/libtiff6/copyright`)

- `Hylafax`

Source:

```console
$ apt-get source -qq --print-uris tiff=4.5.1+git230720-4ubuntu2.5
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.5.1%2bgit230720.orig.tar.xz' tiff_4.5.1+git230720.orig.tar.xz 1781896 SHA256:0e51bcf3a3ffa5fc76ea6aeb74a797f95c84544fcc8b6a1ec5def967a78e9e12
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.5.1%2bgit230720-4ubuntu2.5.debian.tar.xz' tiff_4.5.1+git230720-4ubuntu2.5.debian.tar.xz 33152 SHA256:e3106320d41790b741b0db9a7fccf72b6a8d425743b6407e9a9dd369d958be76
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.5.1%2bgit230720-4ubuntu2.5.dsc' tiff_4.5.1+git230720-4ubuntu2.5.dsc 2309 SHA256:46e2765124bce104413733352d548117c5e9cee73953758a2040df613f3d6b9c
```

### `dpkg` source package: `tzdata=2026a-0ubuntu0.24.04.1`

Binary Packages:

- `tzdata=2026a-0ubuntu0.24.04.1`

Licenses: (parsed from: `/usr/share/doc/tzdata/copyright`)

- `ICU`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ubuntu-keyring=2023.11.28.1`

Binary Packages:

- `ubuntu-keyring=2023.11.28.1`

Licenses: (parsed from: `/usr/share/doc/ubuntu-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris ubuntu-keyring=2023.11.28.1
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2023.11.28.1.dsc' ubuntu-keyring_2023.11.28.1.dsc 1872 SHA512:4d3c094e1e01367eb8303808ea5bfea696ee672d855a64272c9222400bec397ebbaa57783bbc8eb4365f0631c9951edeb1b12f04efb3e34275408ef57620f023
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2023.11.28.1.tar.xz' ubuntu-keyring_2023.11.28.1.tar.xz 20236 SHA512:b17824a91d6e25c5658eae8d9ae509a4158b406768d5d4a8e117a230226ab7cd4327cf7e5b9bbb7baae7c66f3807d27926de85a1ea5c11a82684a890aeb8fd18
```

### `dpkg` source package: `ucf=3.0043+nmu1`

Binary Packages:

- `ucf=3.0043+nmu1`

Licenses: (parsed from: `/usr/share/doc/ucf/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris ucf=3.0043+nmu1
'http://archive.ubuntu.com/ubuntu/pool/main/u/ucf/ucf_3.0043%2bnmu1.dsc' ucf_3.0043+nmu1.dsc 1567 SHA512:608423c255fa2c1072bcaa9c71addd0f393f008ebd321ef4939ed4d714aa43bea4c90979fa5817c19e3d7355415cc70aa8c80ff79760b4286411cfbd58242d77
'http://archive.ubuntu.com/ubuntu/pool/main/u/ucf/ucf_3.0043%2bnmu1.tar.xz' ucf_3.0043+nmu1.tar.xz 70916 SHA512:8949f197f6aec35ef7ff8c076ed9f863ef369c65de1a17947445c7182623393633e0094e882d50eadbb0435bf03b9a5cb5d11b6e3bd40e33d5d7b15425583b38
```

### `dpkg` source package: `unminimize=0.2.1`

Binary Packages:

- `unminimize=0.2.1`

Licenses: (parsed from: `/usr/share/doc/unminimize/copyright`)

- `GPL-2`
- `GPL-2.0+`

Source:

```console
$ apt-get source -qq --print-uris unminimize=0.2.1
'http://archive.ubuntu.com/ubuntu/pool/main/u/unminimize/unminimize_0.2.1.tar.xz' unminimize_0.2.1.tar.xz 9400 SHA256:f15f4c1df275fa116024ea1142730f524cc552da1222effeec981aebc04f7461
'http://archive.ubuntu.com/ubuntu/pool/main/u/unminimize/unminimize_0.2.1.dsc' unminimize_0.2.1.dsc 1554 SHA256:04cec314558830aba7f2c0a47fc156875c083db3f711d5525bea25a9a26fb638
```

### `dpkg` source package: `unzip=6.0-28ubuntu4.1`

Binary Packages:

- `unzip=6.0-28ubuntu4.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris unzip=6.0-28ubuntu4.1
'http://archive.ubuntu.com/ubuntu/pool/main/u/unzip/unzip_6.0.orig.tar.gz' unzip_6.0.orig.tar.gz 1376845 SHA256:036d96991646d0449ed0aa952e4fbe21b476ce994abc276e49d30e686708bd37
'http://archive.ubuntu.com/ubuntu/pool/main/u/unzip/unzip_6.0-28ubuntu4.1.debian.tar.xz' unzip_6.0-28ubuntu4.1.debian.tar.xz 42948 SHA256:d123c8e6972dbdd17ba1a4920fb57ed2ede9237dbae149dcbf55df829c77baf3
'http://archive.ubuntu.com/ubuntu/pool/main/u/unzip/unzip_6.0-28ubuntu4.1.dsc' unzip_6.0-28ubuntu4.1.dsc 1891 SHA256:3c8ccb0c8d3a1a31b7850b9e2d340fe832ad2e8165d7a16568f73e9a87054f08
```

### `dpkg` source package: `util-linux=2.39.3-9ubuntu6.5`

Binary Packages:

- `bsdutils=1:2.39.3-9ubuntu6.5`
- `libblkid1:amd64=2.39.3-9ubuntu6.5`
- `libmount1:amd64=2.39.3-9ubuntu6.5`
- `libsmartcols1:amd64=2.39.3-9ubuntu6.5`
- `libuuid1:amd64=2.39.3-9ubuntu6.5`
- `mount=2.39.3-9ubuntu6.5`
- `util-linux=2.39.3-9ubuntu6.5`

Licenses: (parsed from: `/usr/share/doc/bsdutils/copyright`, `/usr/share/doc/libblkid1/copyright`, `/usr/share/doc/libmount1/copyright`, `/usr/share/doc/libsmartcols1/copyright`, `/usr/share/doc/libuuid1/copyright`, `/usr/share/doc/mount/copyright`, `/usr/share/doc/util-linux/copyright`)

- `BSD-3-clause`
- `BSD-4-clause`
- `BSLA`
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
$ apt-get source -qq --print-uris util-linux=2.39.3-9ubuntu6.5
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.39.3.orig.tar.xz' util-linux_2.39.3.orig.tar.xz 8526168 SHA256:7b6605e48d1a49f43cc4b4cfc59f313d0dd5402fa40b96810bd572e167dfed0f
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.39.3-9ubuntu6.5.debian.tar.xz' util-linux_2.39.3-9ubuntu6.5.debian.tar.xz 148016 SHA256:e0130fe89b648a42710af003c965f9622707c69045aab442d17e028e232f105c
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.39.3-9ubuntu6.5.dsc' util-linux_2.39.3-9ubuntu6.5.dsc 4726 SHA256:206b6fb92d3cb0f6b1a959a6173d81ebf4e0a340564378ac49667a16968578d8
```

### `dpkg` source package: `wget=1.21.4-1ubuntu4.1`

Binary Packages:

- `wget=1.21.4-1ubuntu4.1`

Licenses: (parsed from: `/usr/share/doc/wget/copyright`)

- `GFDL-1.2`
- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `xmlsec1=1.2.39-5build2`

Binary Packages:

- `libxmlsec1t64:amd64=1.2.39-5build2`
- `libxmlsec1t64-nss:amd64=1.2.39-5build2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xmlsec1=1.2.39-5build2
'http://archive.ubuntu.com/ubuntu/pool/main/x/xmlsec1/xmlsec1_1.2.39-5build2.dsc' xmlsec1_1.2.39-5build2.dsc 2801 SHA512:26e4f6ad0f26595d6db232231eca1d9e9726185ddeb14c41240de70ccae0ddb9bd19207bcc71769c9bdd3aad8c8c766905902d010c178850474a3ba9b046d8b9
'http://archive.ubuntu.com/ubuntu/pool/main/x/xmlsec1/xmlsec1_1.2.39.orig.tar.gz' xmlsec1_1.2.39.orig.tar.gz 2053290 SHA512:3422e1d77c3bf770e89ea8dc2fe27d09f929d9d44bfb395e6372839f0a2361f1e12828d197a12cd338d6206b1a57b6352df84bb9535279d6b5bc1c88f9f6477c
'http://archive.ubuntu.com/ubuntu/pool/main/x/xmlsec1/xmlsec1_1.2.39-5build2.debian.tar.xz' xmlsec1_1.2.39-5build2.debian.tar.xz 14860 SHA512:5df3db2e097cc0e56a3744f780da1213d9583e6911f2355da286009f304934d4ebba23cf9fc8c25e4b8d996f13fd00282a0bd4e86d3c97ae84104ab92e768704
```

### `dpkg` source package: `xorg=1:7.7+23ubuntu3`

Binary Packages:

- `x11-common=1:7.7+23ubuntu3`

Licenses: (parsed from: `/usr/share/doc/x11-common/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris xorg=1:7.7+23ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg/xorg_7.7%2b23ubuntu3.dsc' xorg_7.7+23ubuntu3.dsc 2095 SHA512:dd0091767574109a7e1308a0222f8e5115529baa9def0d822f9812c1761eb43b03caa440ba80874a9c1470a52911e94e6e03f52dc94cf2339006e6bd9ea372a0
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg/xorg_7.7%2b23ubuntu3.tar.gz' xorg_7.7+23ubuntu3.tar.gz 301634 SHA512:16e7194bcbbc38f185130de2115817c2a34238a1541bbfff08239b0a84e3a5637d907dc1465556061645c6ff0845c47047231a0b384758162ace93d20db6e4d0
```

### `dpkg` source package: `xxhash=0.8.2-2build1`

Binary Packages:

- `libxxhash0:amd64=0.8.2-2build1`

Licenses: (parsed from: `/usr/share/doc/libxxhash0/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris xxhash=0.8.2-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xxhash/xxhash_0.8.2-2build1.dsc' xxhash_0.8.2-2build1.dsc 2076 SHA512:9a1bc162cefe90fd63c2f1225ba28eda45a3972e2bf45fc851bc3c7adcf70e5be65a294aedebc47aedc05516f0c0d9fca065d64196d237497c44840dbf5305e9
'http://archive.ubuntu.com/ubuntu/pool/main/x/xxhash/xxhash_0.8.2.orig.tar.gz' xxhash_0.8.2.orig.tar.gz 1141188 SHA512:3e3eef21432fe88bc4dd9940ccad0308fdea3537b06fa5ac0e74c1bde53413dff29c8b3fc617a8a42b9ce88fcf213311d338a31b1ce73b3729342c9e68f06c78
'http://archive.ubuntu.com/ubuntu/pool/main/x/xxhash/xxhash_0.8.2-2build1.debian.tar.xz' xxhash_0.8.2-2build1.debian.tar.xz 5048 SHA512:c789fd0a22fd40db8983c0f69054141647ebaab94251598723ce1fdf894d0ed2d48c2d5a7f0df7d61e2d874485286e5742a546748d17cc22d5227ad61f6b4ef2
```

### `dpkg` source package: `xz-utils=5.6.1+really5.4.5-1ubuntu0.3`

Binary Packages:

- `liblzma5:amd64=5.6.1+really5.4.5-1ubuntu0.3`

Licenses: (parsed from: `/usr/share/doc/liblzma5/copyright`)

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
$ apt-get source -qq --print-uris xz-utils=5.6.1+really5.4.5-1ubuntu0.3
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.6.1%2breally5.4.5.orig.tar.xz' xz-utils_5.6.1+really5.4.5.orig.tar.xz 1680520 SHA512:5cbc3b5bb35a9f5773ad657788fe77013471e3b621c5a8149deb7389d48535926e5bed103456fcfe5ecb044b236b1055b03938a6cc877cfc749372b899fc79e5
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.6.1%2breally5.4.5-1ubuntu0.3.debian.tar.xz' xz-utils_5.6.1+really5.4.5-1ubuntu0.3.debian.tar.xz 31672 SHA512:01c822e725f025608a346ca8498889d5e4b65990b68d6de4e0fc18c1da1814a11d2c5820f738eca52417a93acfe102b2d67d28d0e83601946950df03af2b2e47
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.6.1%2breally5.4.5-1ubuntu0.3.dsc' xz-utils_5.6.1+really5.4.5-1ubuntu0.3.dsc 2505 SHA512:317b65fd00056cc31250763e70de5e106c7ee4aeda701bd6e080a3d96cf14ba2fd5b2739fe65e2a356bf37afcb43d388159af6e1fb480ad5ec645b5ce404b2eb
```

### `dpkg` source package: `yajl=2.1.0-5build1`

Binary Packages:

- `libyajl2:amd64=2.1.0-5build1`

Licenses: (parsed from: `/usr/share/doc/libyajl2/copyright`)

- `ISC`

Source:

```console
$ apt-get source -qq --print-uris yajl=2.1.0-5build1
'http://archive.ubuntu.com/ubuntu/pool/main/y/yajl/yajl_2.1.0-5build1.dsc' yajl_2.1.0-5build1.dsc 2086 SHA512:6ee28922976c0c416d5114c1c5aed46a8762f4bbcb75c571588237bf4496ff7e1412c94ea6e4981d4b23d4382b50b50f23be1d8d629f21efd36866dfec68a148
'http://archive.ubuntu.com/ubuntu/pool/main/y/yajl/yajl_2.1.0.orig.tar.gz' yajl_2.1.0.orig.tar.gz 83997 SHA512:9e786d080803df80ec03a9c2f447501e6e8e433a6baf636824bc1d50ecf4f5f80d7dfb1d47958aeb0a30fe459bd0ef033d41bc6a79e1dc6e6b5eade930b19b02
'http://archive.ubuntu.com/ubuntu/pool/main/y/yajl/yajl_2.1.0-5build1.debian.tar.xz' yajl_2.1.0-5build1.debian.tar.xz 7264 SHA512:fdde28633510b9d9400b8fc9084e29bf93badb81ffad0abbebfcccb385da827d6cf37b1d70ab846c6c4072ba8c5dc5de5451d33931be2db74f2537a8e9d7cbf6
```

### `dpkg` source package: `zlib=1:1.3.dfsg-3.1ubuntu2.1`

Binary Packages:

- `zlib1g:amd64=1:1.3.dfsg-3.1ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/zlib1g/copyright`)

- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.3.dfsg-3.1ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.3.dfsg.orig.tar.xz' zlib_1.3.dfsg.orig.tar.xz 1128572 SHA256:5eea0322c1c21c75cad3b607ac1c43ff5c71e014b8ac4a34300b5e2b80d02e70
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.3.dfsg-3.1ubuntu2.1.debian.tar.xz' zlib_1.3.dfsg-3.1ubuntu2.1.debian.tar.xz 61028 SHA256:958c7031c02f894516492954153c8d760d94e20a4039e48ca7231880b913ae26
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.3.dfsg-3.1ubuntu2.1.dsc' zlib_1.3.dfsg-3.1ubuntu2.1.dsc 3116 SHA256:d083d6e1eb6f7f0dc5b107b0cc6b898f097947e1317769553f1c5c5d71ea5073
```
