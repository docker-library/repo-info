# `joomla:5.4.8-php8.3-fpm`

## Docker Metadata

- Image ID: `sha256:02bd7b95df0eb3e258dd0a171a5c38bc9d6e044bf315ee3bb842db387b27641b`
- Created: `2026-08-19T21:01:02.027227239Z`
- Virtual Size: ~ 786.22 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/entrypoint.sh"]`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64`
  - `PHP_LDFLAGS=-Wl,-O1 -pie`
  - `GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA`
  - `PHP_VERSION=8.3.33`
  - `PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz`
  - `PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc`
  - `PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676`
  - `JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1`
  - `JOOMLA_VERSION=5.4.8`
  - `JOOMLA_SHA512=84fe04fe224a376209a85f36781c73db7c7787ee572b633ae1b31739af39a1e8e310f10faaac30f8bf8181536dc118182e873143346c4f47cd33b7d785c86b6e`
- Labels:
  - `maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `acl=2.3.2-2`

Binary Packages:

- `libacl1:amd64=2.3.2-2+b1`

Licenses: (parsed from: `/usr/share/doc/libacl1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris acl=2.3.2-2
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.3.2-2.dsc' acl_2.3.2-2.dsc 2604 SHA256:1f42130ccb5442fe2db2aee1dcc03c51a31512dd2519a38e8fc9270c5abbc807
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.3.2.orig.tar.xz' acl_2.3.2.orig.tar.xz 371680 SHA256:97203a72cae99ab89a067fe2210c1cbf052bc492b479eca7d226d9830883b0bd
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.3.2.orig.tar.xz.asc' acl_2.3.2.orig.tar.xz.asc 833 SHA256:184c6a903490885a096095db67b433a04542c6569f167cbe8115268c0f227273
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.3.2-2.debian.tar.xz' acl_2.3.2-2.debian.tar.xz 24296 SHA256:e27b6e194c0a7554595d76f96acdceb800631bdc46c36457b73bc7e4a0c5f2ee
```

Other potentially useful URLs:

- https://sources.debian.net/src/acl/2.3.2-2/ (for browsing the source)
- https://sources.debian.net/src/acl/2.3.2-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/acl/2.3.2-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `adduser=3.152`

Binary Packages:

- `adduser=3.152`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.152
'http://deb.debian.org/debian/pool/main/a/adduser/adduser_3.152.dsc' adduser_3.152.dsc 1678 SHA256:5ad23648a879d006e7a57d351720d4cbbbe3fb5e274ea52beb4f619896b9d520
'http://deb.debian.org/debian/pool/main/a/adduser/adduser_3.152.tar.xz' adduser_3.152.tar.xz 334252 SHA256:484cdde2d48053be40657b564375469fc577e89f3b984b01aed247b6081355b8
```

Other potentially useful URLs:

- https://sources.debian.net/src/adduser/3.152/ (for browsing the source)
- https://sources.debian.net/src/adduser/3.152/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/adduser/3.152/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `apt=3.0.3`

Binary Packages:

- `apt=3.0.3`
- `libapt-pkg7.0:amd64=3.0.3`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg7.0/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `curl`

Source:

```console
$ apt-get source -qq --print-uris apt=3.0.3
'http://deb.debian.org/debian/pool/main/a/apt/apt_3.0.3.dsc' apt_3.0.3.dsc 3091 SHA256:ccf1666e5b268d76bf62aafb22db089a2fdae9c17d1d1c446546b3621768add7
'http://deb.debian.org/debian/pool/main/a/apt/apt_3.0.3.tar.xz' apt_3.0.3.tar.xz 2422096 SHA256:5b5f6f6d26121742a83aa80d4ed0eb0c6ce9bea259518db412edefd95760e4ef
```

Other potentially useful URLs:

- https://sources.debian.net/src/apt/3.0.3/ (for browsing the source)
- https://sources.debian.net/src/apt/3.0.3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/apt/3.0.3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `architecture-properties=0.2.6`

Binary Packages:

- `native-architecture=0.2.6`

Licenses: (parsed from: `/usr/share/doc/native-architecture/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris architecture-properties=0.2.6
'http://deb.debian.org/debian/pool/main/a/architecture-properties/architecture-properties_0.2.6.dsc' architecture-properties_0.2.6.dsc 1803 SHA256:a20b7a40268b8e8cd904ad9c95568c91b7a3ff12612accbb90c8286fd44f11b3
'http://deb.debian.org/debian/pool/main/a/architecture-properties/architecture-properties_0.2.6.tar.xz' architecture-properties_0.2.6.tar.xz 5368 SHA256:cec5cbfc3516fb1d51174bc2d95bb69d2d2c726b25a5c05ab73593a3a5ee20a8
```

Other potentially useful URLs:

- https://sources.debian.net/src/architecture-properties/0.2.6/ (for browsing the source)
- https://sources.debian.net/src/architecture-properties/0.2.6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/architecture-properties/0.2.6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `argon2=0~20190702+dfsg-4`

Binary Packages:

- `libargon2-1:amd64=0~20190702+dfsg-4+b2`

Licenses: (parsed from: `/usr/share/doc/libargon2-1/copyright`)

- `Apache-2.0`
- `CC0`

Source:

```console
$ apt-get source -qq --print-uris argon2=0~20190702+dfsg-4
'http://deb.debian.org/debian/pool/main/a/argon2/argon2_0%7e20190702%2bdfsg-4.dsc' argon2_0~20190702+dfsg-4.dsc 2263 SHA256:7a5d5d761d69404d6602321671b77a5cb7a1b81b6ed64592116a432868e2b624
'http://deb.debian.org/debian/pool/main/a/argon2/argon2_0%7e20190702%2bdfsg.orig.tar.xz' argon2_0~20190702+dfsg.orig.tar.xz 725424 SHA256:815f1017b5b0033204778c2e32443257274bc5d9dd16d355c4f7db8189e23dcc
'http://deb.debian.org/debian/pool/main/a/argon2/argon2_0%7e20190702%2bdfsg-4.debian.tar.xz' argon2_0~20190702+dfsg-4.debian.tar.xz 9248 SHA256:f9d4922b02e64cbb4bc10b0ad0ff283b2711702de593087205e273254af1998e
```

Other potentially useful URLs:

- https://sources.debian.net/src/argon2/0~20190702+dfsg-4/ (for browsing the source)
- https://sources.debian.net/src/argon2/0~20190702+dfsg-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/argon2/0~20190702+dfsg-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `attr=1:2.5.2-3`

Binary Packages:

- `libattr1:amd64=1:2.5.2-3`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris attr=1:2.5.2-3
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.5.2-3.dsc' attr_2.5.2-3.dsc 2576 SHA256:c2ae3e15db059029030ddf4fdac179d8f90d423f2310a6ef8c745ba28ac18b0a
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.5.2.orig.tar.xz' attr_2.5.2.orig.tar.xz 334180 SHA256:f2e97b0ab7ce293681ab701915766190d607a1dba7fae8a718138150b700a70b
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.5.2.orig.tar.xz.asc' attr_2.5.2.orig.tar.xz.asc 833 SHA256:eeac729088d3c6379e91b7596cb3582e46b047c47f0fa3c5c77f9c9e84dc3a4c
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.5.2-3.debian.tar.xz' attr_2.5.2-3.debian.tar.xz 32260 SHA256:153f98c87575277ea021e24dae36293b7738699174438a2060b47e8312b771e3
```

Other potentially useful URLs:

- https://sources.debian.net/src/attr/1:2.5.2-3/ (for browsing the source)
- https://sources.debian.net/src/attr/1:2.5.2-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/attr/1:2.5.2-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `audit=1:4.0.2-2`

Binary Packages:

- `libaudit-common=1:4.0.2-2`
- `libaudit1:amd64=1:4.0.2-2+b2`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-1`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:4.0.2-2
'http://deb.debian.org/debian/pool/main/a/audit/audit_4.0.2-2.dsc' audit_4.0.2-2.dsc 2408 SHA256:d0b9457933409cd3287bc0b8bfb10f41c08fb5b24bd5c5b8364125d5a6894974
'http://deb.debian.org/debian/pool/main/a/audit/audit_4.0.2.orig.tar.gz' audit_4.0.2.orig.tar.gz 1198769 SHA256:d5d1b5d50ee4a2d0d17875bc6ae6bd6a7d5b34d9557ea847a39faec531faaa0a
'http://deb.debian.org/debian/pool/main/a/audit/audit_4.0.2-2.debian.tar.xz' audit_4.0.2-2.debian.tar.xz 19228 SHA256:33030d53299c57cda73e9e45813b8488f9bc3ad8992aef0b740afabbf66a2ba2
```

Other potentially useful URLs:

- https://sources.debian.net/src/audit/1:4.0.2-2/ (for browsing the source)
- https://sources.debian.net/src/audit/1:4.0.2-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/audit/1:4.0.2-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `autoconf=2.72-3.1`

Binary Packages:

- `autoconf=2.72-3.1`

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
$ apt-get source -qq --print-uris autoconf=2.72-3.1
'http://deb.debian.org/debian/pool/main/a/autoconf/autoconf_2.72-3.1.dsc' autoconf_2.72-3.1.dsc 1746 SHA256:211a4dbec6467f6f4b3137edb2c51466e4147a57143a3365efcba46b486464c2
'http://deb.debian.org/debian/pool/main/a/autoconf/autoconf_2.72.orig.tar.xz' autoconf_2.72.orig.tar.xz 1389680 SHA256:ba885c1319578d6c94d46e9b0dceb4014caafe2490e437a0dbca3f270a223f5a
'http://deb.debian.org/debian/pool/main/a/autoconf/autoconf_2.72-3.1.debian.tar.xz' autoconf_2.72-3.1.debian.tar.xz 24096 SHA256:4f235b135ef2d19b7f7b2831dac859ca42582599a817fd2d14e871f2e720eec9
```

Other potentially useful URLs:

- https://sources.debian.net/src/autoconf/2.72-3.1/ (for browsing the source)
- https://sources.debian.net/src/autoconf/2.72-3.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/autoconf/2.72-3.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `avahi=0.8-16`

Binary Packages:

- `libavahi-client3:amd64=0.8-16`
- `libavahi-common-data:amd64=0.8-16`
- `libavahi-common3:amd64=0.8-16`

Licenses: (parsed from: `/usr/share/doc/libavahi-client3/copyright`, `/usr/share/doc/libavahi-common-data/copyright`, `/usr/share/doc/libavahi-common3/copyright`)

- `GPL`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris avahi=0.8-16
'http://deb.debian.org/debian/pool/main/a/avahi/avahi_0.8-16.dsc' avahi_0.8-16.dsc 4005 SHA256:a8c9a5e3bde8b314b6a2feb385f25fb658bc77960d5f1ed27bc9e159f8691a0a
'http://deb.debian.org/debian/pool/main/a/avahi/avahi_0.8.orig.tar.gz' avahi_0.8.orig.tar.gz 1591458 SHA256:060309d7a333d38d951bc27598c677af1796934dbd98e1024e7ad8de798fedda
'http://deb.debian.org/debian/pool/main/a/avahi/avahi_0.8-16.debian.tar.xz' avahi_0.8-16.debian.tar.xz 52696 SHA256:2e2f0e6c71186226da0a0a6d93f01dd27a41b6169d4970bbfa3615728fed6d13
```

Other potentially useful URLs:

- https://sources.debian.net/src/avahi/0.8-16/ (for browsing the source)
- https://sources.debian.net/src/avahi/0.8-16/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/avahi/0.8-16/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `base-files=13.8+deb13u6`

Binary Packages:

- `base-files=13.8+deb13u6`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`
- `GPL-2+`
- `verbatim`

Source:

```console
$ apt-get source -qq --print-uris base-files=13.8+deb13u6
'http://deb.debian.org/debian/pool/main/b/base-files/base-files_13.8%2bdeb13u6.dsc' base-files_13.8+deb13u6.dsc 1247 SHA256:8e2254627410ebf9424cea290166f717e5ff1fa02758679fd9273e5f41b606c6
'http://deb.debian.org/debian/pool/main/b/base-files/base-files_13.8%2bdeb13u6.tar.xz' base-files_13.8+deb13u6.tar.xz 68672 SHA256:0d8c018d562213aa274a8210042bbc3c4ca985a43a75e0021de4bfa4d9722e34
```

Other potentially useful URLs:

- https://sources.debian.net/src/base-files/13.8+deb13u6/ (for browsing the source)
- https://sources.debian.net/src/base-files/13.8+deb13u6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/base-files/13.8+deb13u6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `base-passwd=3.6.7`

Binary Packages:

- `base-passwd=3.6.7`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.6.7
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.6.7.dsc' base-passwd_3.6.7.dsc 1891 SHA256:23dafe71f85d7595d9e20efba17729c1c975a33bd469cf09bfad9e96b1f542f3
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.6.7.tar.xz' base-passwd_3.6.7.tar.xz 60872 SHA256:cf869870fed7862b57bfa9e99cd5cd6f365e2349705a1b65af7fc182629bd1ab
```

Other potentially useful URLs:

- https://sources.debian.net/src/base-passwd/3.6.7/ (for browsing the source)
- https://sources.debian.net/src/base-passwd/3.6.7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/base-passwd/3.6.7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `bash=5.2.37-2`

Binary Packages:

- `bash=5.2.37-2+b9`

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
$ apt-get source -qq --print-uris bash=5.2.37-2
'http://deb.debian.org/debian/pool/main/b/bash/bash_5.2.37-2.dsc' bash_5.2.37-2.dsc 2162 SHA256:7e5f6d5a26093e812f8841d5cf3245054102e86986017d8edd859417b03707f9
'http://deb.debian.org/debian/pool/main/b/bash/bash_5.2.37.orig.tar.xz' bash_5.2.37.orig.tar.xz 5600932 SHA256:370704c9c859f4060b7df19055e43bb9b5fa09d887699cf6ba87885c5485d36a
'http://deb.debian.org/debian/pool/main/b/bash/bash_5.2.37-2.debian.tar.xz' bash_5.2.37-2.debian.tar.xz 88360 SHA256:42e03ef523258b61fa765b8c9719d7bf461f2a274260d07fbe45ca7e4627923a
```

Other potentially useful URLs:

- https://sources.debian.net/src/bash/5.2.37-2/ (for browsing the source)
- https://sources.debian.net/src/bash/5.2.37-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/bash/5.2.37-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `binutils=2.44-3`

Binary Packages:

- `binutils=2.44-3`
- `binutils-common:amd64=2.44-3`
- `binutils-x86-64-linux-gnu=2.44-3`
- `libbinutils:amd64=2.44-3`
- `libctf-nobfd0:amd64=2.44-3`
- `libctf0:amd64=2.44-3`
- `libgprofng0:amd64=2.44-3`
- `libsframe1:amd64=2.44-3`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`, `/usr/share/doc/binutils-common/copyright`, `/usr/share/doc/binutils-x86-64-linux-gnu/copyright`, `/usr/share/doc/libbinutils/copyright`, `/usr/share/doc/libctf-nobfd0/copyright`, `/usr/share/doc/libctf0/copyright`, `/usr/share/doc/libgprofng0/copyright`, `/usr/share/doc/libsframe1/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris binutils=2.44-3
'http://deb.debian.org/debian/pool/main/b/binutils/binutils_2.44-3.dsc' binutils_2.44-3.dsc 11429 SHA256:5abd1ae1adb61fd8ecbadfdc16668738668e81c745884aefa0ce97791b2a74b8
'http://deb.debian.org/debian/pool/main/b/binutils/binutils_2.44.orig.tar.xz' binutils_2.44.orig.tar.xz 27504768 SHA256:c41a0272424f41bb01bf828e7ffef1b2d59d1788064fd6b5f1d971717e9320b8
'http://deb.debian.org/debian/pool/main/b/binutils/binutils_2.44-3.debian.tar.xz' binutils_2.44-3.debian.tar.xz 131700 SHA256:555c856d6fb5a797c2692c24c3083e7b1a76811a470eaab01d90c969c2f92784
```

Other potentially useful URLs:

- https://sources.debian.net/src/binutils/2.44-3/ (for browsing the source)
- https://sources.debian.net/src/binutils/2.44-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/binutils/2.44-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `brotli=1.1.0-2`

Binary Packages:

- `libbrotli1:amd64=1.1.0-2+b7`

Licenses: (parsed from: `/usr/share/doc/libbrotli1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris brotli=1.1.0-2
'http://deb.debian.org/debian/pool/main/b/brotli/brotli_1.1.0-2.dsc' brotli_1.1.0-2.dsc 2261 SHA256:39b06802a852629132d549a7f7449dee7f435e801706714a4bc2ea2f15b28f36
'http://deb.debian.org/debian/pool/main/b/brotli/brotli_1.1.0.orig.tar.gz' brotli_1.1.0.orig.tar.gz 512036 SHA256:10973f4b4199eafa1d5735ef661ddb2ec2f97319ee9fd1824d4aabe08cff5265
'http://deb.debian.org/debian/pool/main/b/brotli/brotli_1.1.0-2.debian.tar.xz' brotli_1.1.0-2.debian.tar.xz 5480 SHA256:3d913a3740bcad9a294007575a6beb1846beadbd62b44fb2bf9fdaeddea3236f
```

Other potentially useful URLs:

- https://sources.debian.net/src/brotli/1.1.0-2/ (for browsing the source)
- https://sources.debian.net/src/brotli/1.1.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/brotli/1.1.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `bzip2=1.0.8-6`

Binary Packages:

- `bzip2=1.0.8-6`
- `libbz2-1.0:amd64=1.0.8-6`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/libbz2-1.0/copyright`)

- `BSD-variant`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.8-6
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.8-6.dsc' bzip2_1.0.8-6.dsc 1604 SHA256:cd3bfd77254a6b5ef1be144bdc90a0dd374bc8206afd98ba4abf828741b79820
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.8.orig.tar.gz' bzip2_1.0.8.orig.tar.gz 810029 SHA256:ab5a03176ee106d3f0fa90e381da478ddae405918153cca248e682cd0c4a2269
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.8-6.debian.tar.bz2' bzip2_1.0.8-6.debian.tar.bz2 26991 SHA256:648ed0dac9a041ba6951e0cca521628aa39947cefee78139f7b934a5dc502095
```

Other potentially useful URLs:

- https://sources.debian.net/src/bzip2/1.0.8-6/ (for browsing the source)
- https://sources.debian.net/src/bzip2/1.0.8-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/bzip2/1.0.8-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ca-certificates=20250419`

Binary Packages:

- `ca-certificates=20250419`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20250419
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20250419.dsc' ca-certificates_20250419.dsc 1766 SHA256:3fc919369a3b84e34a959faa8bdffb9bd2c5a7d4a948a4b07a09a5d43e257030
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20250419.tar.xz' ca-certificates_20250419.tar.xz 277504 SHA256:33b44ef78653ecd3f0f2f13e5bba6be466be2e7da72182f737912b81798ba5d2
```

Other potentially useful URLs:

- https://sources.debian.net/src/ca-certificates/20250419/ (for browsing the source)
- https://sources.debian.net/src/ca-certificates/20250419/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ca-certificates/20250419/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cdebconf=0.280`

Binary Packages:

- `libdebconfclient0:amd64=0.280`

Licenses: (parsed from: `/usr/share/doc/libdebconfclient0/copyright`)

- `BSD-2-Clause`
- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.280
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.280.dsc' cdebconf_0.280.dsc 2703 SHA256:36cdaa45fca445d2164fbdd81faad9918d748fa703678d8af237354d5744b1d1
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.280.tar.xz' cdebconf_0.280.tar.xz 286132 SHA256:c42115131939845e452a323ceded937efad3b2e3e1b80a1a186f9d5c494a43a2
```

Other potentially useful URLs:

- https://sources.debian.net/src/cdebconf/0.280/ (for browsing the source)
- https://sources.debian.net/src/cdebconf/0.280/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cdebconf/0.280/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `coreutils=9.7-3`

Binary Packages:

- `coreutils=9.7-3`

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
$ apt-get source -qq --print-uris coreutils=9.7-3
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_9.7-3.dsc' coreutils_9.7-3.dsc 2122 SHA256:c3a207e3aaad165765c7a6fab89045f5fd20035fea6830b9f9ebbb92ebfbff89
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_9.7.orig.tar.xz' coreutils_9.7.orig.tar.xz 6158960 SHA256:e8bb26ad0293f9b5a1fc43fb42ba970e312c66ce92c1b0b16713d7500db251bf
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_9.7.orig.tar.xz.asc' coreutils_9.7.orig.tar.xz.asc 833 SHA256:5070e9428bd372a7fa1f66b395b81092bb40c98f9f56a2e2bc55c47fd387e901
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_9.7-3.debian.tar.xz' coreutils_9.7-3.debian.tar.xz 26820 SHA256:483f77876a080577f63da1d004cc1cf17d16df65d6925aefdd3294c6101eccfb
```

Other potentially useful URLs:

- https://sources.debian.net/src/coreutils/9.7-3/ (for browsing the source)
- https://sources.debian.net/src/coreutils/9.7-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/coreutils/9.7-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cups=2.4.10-3+deb13u2`

Binary Packages:

- `libcups2t64:amd64=2.4.10-3+deb13u2`

Licenses: (parsed from: `/usr/share/doc/libcups2t64/copyright`)

- `Apache-2.0`
- `Apache-2.0-with-GPL2-LGPL2-Exception`
- `BSD-2-Clause`
- `BSD-2-clause`
- `FSFUL`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris cups=2.4.10-3+deb13u2
'http://deb.debian.org/debian/pool/main/c/cups/cups_2.4.10-3%2bdeb13u2.dsc' cups_2.4.10-3+deb13u2.dsc 3241 SHA256:6b02f892cf0e5538fa587322366c5cb8ad47f055021ce78d42675b9ecbe3bfdc
'http://deb.debian.org/debian/pool/main/c/cups/cups_2.4.10.orig.tar.gz' cups_2.4.10.orig.tar.gz 8145236 SHA256:d75757c2bc0f7a28b02ee4d52ca9e4b1aa1ba2affe16b985854f5336940e5ad7
'http://deb.debian.org/debian/pool/main/c/cups/cups_2.4.10-3%2bdeb13u2.debian.tar.xz' cups_2.4.10-3+deb13u2.debian.tar.xz 395792 SHA256:3f45f3050495890331b91296b495162f2b1f17e805e13ef3509769b732e50ce6
```

Other potentially useful URLs:

- https://sources.debian.net/src/cups/2.4.10-3+deb13u2/ (for browsing the source)
- https://sources.debian.net/src/cups/2.4.10-3+deb13u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cups/2.4.10-3+deb13u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `curl=8.14.1-2+deb13u4`

Binary Packages:

- `curl=8.14.1-2+deb13u4`
- `libcurl4t64:amd64=8.14.1-2+deb13u4`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl4t64/copyright`)

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

Source:

```console
$ apt-get source -qq --print-uris curl=8.14.1-2+deb13u4
'http://deb.debian.org/debian/pool/main/c/curl/curl_8.14.1-2%2bdeb13u4.dsc' curl_8.14.1-2+deb13u4.dsc 3263 SHA256:8e05fef7cf1528804d050d8df215bb81df0a1e13f9a2c86801ff334dce2b6be9
'http://deb.debian.org/debian/pool/main/c/curl/curl_8.14.1.orig.tar.gz' curl_8.14.1.orig.tar.gz 4250332 SHA256:6766ada7101d292b42b8b15681120acd68effa4a9660935853cf6d61f0d984d4
'http://deb.debian.org/debian/pool/main/c/curl/curl_8.14.1.orig.tar.gz.asc' curl_8.14.1.orig.tar.gz.asc 488 SHA256:39cc2ec8ddc39d04e3e7101bbed46d858d0875cbb297a6bfa20959fa2bc7d5c7
'http://deb.debian.org/debian/pool/main/c/curl/curl_8.14.1-2%2bdeb13u4.debian.tar.xz' curl_8.14.1-2+deb13u4.debian.tar.xz 71840 SHA256:7234af1270610927f24c5c4b74c661451af2b7f28c6207e9133c2b354ee988c5
```

Other potentially useful URLs:

- https://sources.debian.net/src/curl/8.14.1-2+deb13u4/ (for browsing the source)
- https://sources.debian.net/src/curl/8.14.1-2+deb13u4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/curl/8.14.1-2+deb13u4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cyrus-sasl2=2.1.28+dfsg1-9`

Binary Packages:

- `libsasl2-2:amd64=2.1.28+dfsg1-9`
- `libsasl2-modules-db:amd64=2.1.28+dfsg1-9`

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
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.28+dfsg1-9
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.28%2bdfsg1-9.dsc' cyrus-sasl2_2.1.28+dfsg1-9.dsc 3306 SHA256:179cda376ee9f9a54098f902174299dd183ae78c703f72b86bd4c3297db4c153
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.28%2bdfsg1.orig.tar.xz' cyrus-sasl2_2.1.28+dfsg1.orig.tar.xz 794540 SHA256:e796a5d85d1a85e1b433d43504e467f9075c7ebc0b45730a3996cf11b1deada4
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.28%2bdfsg1-9.debian.tar.xz' cyrus-sasl2_2.1.28+dfsg1-9.debian.tar.xz 99180 SHA256:8215afa01ee2907da0a650bfa6b9cf0fae12f2611a098eedd853b5e71adf6623
```

Other potentially useful URLs:

- https://sources.debian.net/src/cyrus-sasl2/2.1.28+dfsg1-9/ (for browsing the source)
- https://sources.debian.net/src/cyrus-sasl2/2.1.28+dfsg1-9/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cyrus-sasl2/2.1.28+dfsg1-9/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dash=0.5.12-12`

Binary Packages:

- `dash=0.5.12-12`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `BSD-3-Clause`
- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.12-12
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.12-12.dsc' dash_0.5.12-12.dsc 1460 SHA256:589efc4d87a4ae4745c273bdb33198d7c4f28a71736a8ece81d3677cf9c6e5ce
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.12.orig.tar.gz' dash_0.5.12.orig.tar.gz 246054 SHA256:6a474ac46e8b0b32916c4c60df694c82058d3297d8b385b74508030ca4a8f28a
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.12-12.debian.tar.xz' dash_0.5.12-12.debian.tar.xz 47300 SHA256:a278acb5d9a1f5d9a086d36a547287cbf3105b8f33c0e62d86d264decf5ba1ad
```

Other potentially useful URLs:

- https://sources.debian.net/src/dash/0.5.12-12/ (for browsing the source)
- https://sources.debian.net/src/dash/0.5.12-12/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dash/0.5.12-12/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dav1d=1.5.1-1`

Binary Packages:

- `libdav1d7:amd64=1.5.1-1`

Licenses: (parsed from: `/usr/share/doc/libdav1d7/copyright`)

- `BSD-2-clause`
- `ISC`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris dav1d=1.5.1-1
'http://deb.debian.org/debian/pool/main/d/dav1d/dav1d_1.5.1-1.dsc' dav1d_1.5.1-1.dsc 2290 SHA256:a418ee8fdc8003feee1ba19391eac250e3ef03106c995c8e25b8a42b56de18cf
'http://deb.debian.org/debian/pool/main/d/dav1d/dav1d_1.5.1.orig.tar.xz' dav1d_1.5.1.orig.tar.xz 1020760 SHA256:401813f1f89fa8fd4295805aa5284d9aed9bc7fc1fdbe554af4292f64cbabe21
'http://deb.debian.org/debian/pool/main/d/dav1d/dav1d_1.5.1.orig.tar.xz.asc' dav1d_1.5.1.orig.tar.xz.asc 195 SHA256:4cad1d03a19a717562c2c80c1df195b629e43898cd1af19296958847f6212554
'http://deb.debian.org/debian/pool/main/d/dav1d/dav1d_1.5.1-1.debian.tar.xz' dav1d_1.5.1-1.debian.tar.xz 8468 SHA256:41f758fda3a2d9860691cae422365bae656060f42c9a5375f7ac4124005f4e7e
```

Other potentially useful URLs:

- https://sources.debian.net/src/dav1d/1.5.1-1/ (for browsing the source)
- https://sources.debian.net/src/dav1d/1.5.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dav1d/1.5.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `db5.3=5.3.28+dfsg2-9`

Binary Packages:

- `libdb5.3t64:amd64=5.3.28+dfsg2-9`

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
$ apt-get source -qq --print-uris db5.3=5.3.28+dfsg2-9
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg2-9.dsc' db5.3_5.3.28+dfsg2-9.dsc 2373 SHA256:045f392c75dffc9d4f3bd44978b90ca8d45b935cf0ae4202bf79a760f2ce07b1
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg2.orig.tar.xz' db5.3_5.3.28+dfsg2.orig.tar.xz 21287688 SHA256:ad41b507415dec8316e828b2230242af2251d2c86eefa3c7aa9ef47c5239ef33
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg2-9.debian.tar.xz' db5.3_5.3.28+dfsg2-9.debian.tar.xz 36412 SHA256:21fe6ee0491c83d0c34fe52e0e0e423946172eff68262584a0cc8ef880c36b74
```

Other potentially useful URLs:

- https://sources.debian.net/src/db5.3/5.3.28+dfsg2-9/ (for browsing the source)
- https://sources.debian.net/src/db5.3/5.3.28+dfsg2-9/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/db5.3/5.3.28+dfsg2-9/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dbus=1.16.2-2`

Binary Packages:

- `libdbus-1-3:amd64=1.16.2-2`

Licenses: (parsed from: `/usr/share/doc/libdbus-1-3/copyright`)

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
$ apt-get source -qq --print-uris dbus=1.16.2-2
'http://deb.debian.org/debian/pool/main/d/dbus/dbus_1.16.2-2.dsc' dbus_1.16.2-2.dsc 3712 SHA256:4bc35ba286891589d8ed9368da3d81db2a4d387144919850e4ea8e9ae2cf0364
'http://deb.debian.org/debian/pool/main/d/dbus/dbus_1.16.2.orig.tar.xz' dbus_1.16.2.orig.tar.xz 1115644 SHA256:0ba2a1a4b16afe7bceb2c07e9ce99a8c2c3508e5dec290dbb643384bd6beb7e2
'http://deb.debian.org/debian/pool/main/d/dbus/dbus_1.16.2.orig.tar.xz.asc' dbus_1.16.2.orig.tar.xz.asc 833 SHA256:108723e6bb2b0655abcb8ec7b06d27918bd7ac215f835ba086b45f9780cb529b
'http://deb.debian.org/debian/pool/main/d/dbus/dbus_1.16.2-2.debian.tar.xz' dbus_1.16.2-2.debian.tar.xz 66364 SHA256:f774fe3bd1ac24265e17c70999bfa26a92a15f2fb72e1fb8c64fa5d436fb9119
```

Other potentially useful URLs:

- https://sources.debian.net/src/dbus/1.16.2-2/ (for browsing the source)
- https://sources.debian.net/src/dbus/1.16.2-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dbus/1.16.2-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debconf=1.5.91`

Binary Packages:

- `debconf=1.5.91`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.91
'http://deb.debian.org/debian/pool/main/d/debconf/debconf_1.5.91.dsc' debconf_1.5.91.dsc 2035 SHA256:1aa3ceaef24ef533cfffe7f9ca750c6325dbaea86a7abca77cb4439ceae930d8
'http://deb.debian.org/debian/pool/main/d/debconf/debconf_1.5.91.tar.xz' debconf_1.5.91.tar.xz 609964 SHA256:18f3f43924ccc870be483d7c5f1a9be59e51ae1da403059d654666b5a175bf15
```

Other potentially useful URLs:

- https://sources.debian.net/src/debconf/1.5.91/ (for browsing the source)
- https://sources.debian.net/src/debconf/1.5.91/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debconf/1.5.91/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debian-archive-keyring=2025.1`

Binary Packages:

- `debian-archive-keyring=2025.1`

Licenses: (parsed from: `/usr/share/doc/debian-archive-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debian-archive-keyring=2025.1
'http://deb.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2025.1.dsc' debian-archive-keyring_2025.1.dsc 1267 SHA256:09604bd8d4562a1e942e5d1a19a6b82447cbdeb2e7c7f0df7c32a2503647ea47
'http://deb.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2025.1.tar.xz' debian-archive-keyring_2025.1.tar.xz 138248 SHA256:2d019c3fa19c42da4d37571e473c296286dad0214cb3bd5cafd99f04a8bf5471
```

Other potentially useful URLs:

- https://sources.debian.net/src/debian-archive-keyring/2025.1/ (for browsing the source)
- https://sources.debian.net/src/debian-archive-keyring/2025.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debian-archive-keyring/2025.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debianutils=5.23.2`

Binary Packages:

- `debianutils=5.23.2`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL-2`
- `GPL-2+`
- `SMAIL-GPL`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris debianutils=5.23.2
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_5.23.2.dsc' debianutils_5.23.2.dsc 1908 SHA256:471b65deec232bb033f3e3e06d5bf64dac0ced474c6fd61d41538f3f3de876f8
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_5.23.2.tar.xz' debianutils_5.23.2.tar.xz 82376 SHA256:79e524b7526dba2ec5c409d0ee52ebec135815cf5b2907375d444122e0594b69
```

Other potentially useful URLs:

- https://sources.debian.net/src/debianutils/5.23.2/ (for browsing the source)
- https://sources.debian.net/src/debianutils/5.23.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debianutils/5.23.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `diffutils=1:3.10-4`

Binary Packages:

- `diffutils=1:3.10-4`

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
$ apt-get source -qq --print-uris diffutils=1:3.10-4
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.10-4.dsc' diffutils_3.10-4.dsc 1875 SHA256:087b414ddfc92161a30186926bc4b4ac02c7cba589b0323561cacd54c8b48392
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.10.orig.tar.xz' diffutils_3.10.orig.tar.xz 1624240 SHA256:90e5e93cc724e4ebe12ede80df1634063c7a855692685919bfe60b556c9bd09e
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.10.orig.tar.xz.asc' diffutils_3.10.orig.tar.xz.asc 833 SHA256:a94faf8f1baa04ff220f7b2ccb137c16337284e023ebc4a1d5df475c08d810f7
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.10-4.debian.tar.xz' diffutils_3.10-4.debian.tar.xz 14304 SHA256:8588b6ffb897ccff46c583e58ef50500b2511eee41949b21e8afa5439712c2c7
```

Other potentially useful URLs:

- https://sources.debian.net/src/diffutils/1:3.10-4/ (for browsing the source)
- https://sources.debian.net/src/diffutils/1:3.10-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/diffutils/1:3.10-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dpkg=1.22.22`

Binary Packages:

- `dpkg=1.22.22`
- `dpkg-dev=1.22.22`
- `libdpkg-perl=1.22.22`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`, `/usr/share/doc/dpkg-dev/copyright`, `/usr/share/doc/libdpkg-perl/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.22.22
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.22.22.dsc' dpkg_1.22.22.dsc 3449 SHA256:fc481d9b87cd4416cd55673cc1fa716b57480a6b23253ac0d87c1abbfad4c964
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.22.22.tar.xz' dpkg_1.22.22.tar.xz 5746724 SHA256:d5ea9f132deec8030b50ab2a02ade2b49f0c7a195805a302c8301156fe833a57
```

Other potentially useful URLs:

- https://sources.debian.net/src/dpkg/1.22.22/ (for browsing the source)
- https://sources.debian.net/src/dpkg/1.22.22/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dpkg/1.22.22/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `e2fsprogs=1.47.2-3`

Binary Packages:

- `libcom-err2:amd64=1.47.2-3+b11`

Licenses: (parsed from: `/usr/share/doc/libcom-err2/copyright`)

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
$ apt-get source -qq --print-uris e2fsprogs=1.47.2-3
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.47.2-3.dsc' e2fsprogs_1.47.2-3.dsc 3035 SHA256:860abb653ecbe01a11bb7e41c9e09a45e83847bffa585f7a3d3c0f9401c9d4bb
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.47.2.orig.tar.gz' e2fsprogs_1.47.2.orig.tar.gz 9996725 SHA256:6dcd67ff9d8b13274ba3f088e4318be4f5b71412cd863524423fc49d39a6371f
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.47.2.orig.tar.gz.asc' e2fsprogs_1.47.2.orig.tar.gz.asc 488 SHA256:2063f62a198dd3df21f789c990c2cf9b4a5de24ed55f0b78d86e97e98daffc9d
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.47.2-3.debian.tar.xz' e2fsprogs_1.47.2-3.debian.tar.xz 103684 SHA256:5517aae5ce5196e49fa314492f0639ad7a1692c9521d703b6c81acff77a1564e
```

Other potentially useful URLs:

- https://sources.debian.net/src/e2fsprogs/1.47.2-3/ (for browsing the source)
- https://sources.debian.net/src/e2fsprogs/1.47.2-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/e2fsprogs/1.47.2-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `elfutils=0.192-4`

Binary Packages:

- `libelf1t64:amd64=0.192-4`

Licenses: (parsed from: `/usr/share/doc/libelf1t64/copyright`)

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
$ apt-get source -qq --print-uris elfutils=0.192-4
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.192-4.dsc' elfutils_0.192-4.dsc 3314 SHA256:37d101658c45a25afc15d2053a1378df2381dadbb368e262ede2cea79241779f
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.192.orig.tar.bz2' elfutils_0.192.orig.tar.bz2 11913897 SHA256:616099beae24aba11f9b63d86ca6cc8d566d968b802391334c91df54eab416b4
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.192-4.debian.tar.xz' elfutils_0.192-4.debian.tar.xz 44456 SHA256:a18efee3ae99ea25e10a0b8c4b731a28dee685361ae89ea8136e9065c86c8942
```

Other potentially useful URLs:

- https://sources.debian.net/src/elfutils/0.192-4/ (for browsing the source)
- https://sources.debian.net/src/elfutils/0.192-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/elfutils/0.192-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `expat=2.8.3-1~deb13u1`

Binary Packages:

- `libexpat1:amd64=2.8.3-1~deb13u1`

Licenses: (parsed from: `/usr/share/doc/libexpat1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris expat=2.8.3-1~deb13u1
'http://deb.debian.org/debian-security/pool/updates/main/e/expat/expat_2.8.3-1%7edeb13u1.dsc' expat_2.8.3-1~deb13u1.dsc 1638 SHA256:d17f15fe413a553c72185d2d00448b87db72354e0d8fa6099ad19ee19e7117af
'http://deb.debian.org/debian-security/pool/updates/main/e/expat/expat_2.8.3.orig.tar.gz' expat_2.8.3.orig.tar.gz 8464226 SHA256:533659a16e0184035a99fd8e783f1ad61a887a7bf8586a8681740b9d7ed42389
'http://deb.debian.org/debian-security/pool/updates/main/e/expat/expat_2.8.3-1%7edeb13u1.debian.tar.xz' expat_2.8.3-1~deb13u1.debian.tar.xz 14116 SHA256:4bf2c5c2f189673c66f79f2f8a8727cd8c08636d46b648c896e1c73673562c7b
```

Other potentially useful URLs:

- https://sources.debian.net/src/expat/2.8.3-1~deb13u1/ (for browsing the source)
- https://sources.debian.net/src/expat/2.8.3-1~deb13u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/expat/2.8.3-1~deb13u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `fftw3=3.3.10-2`

Binary Packages:

- `libfftw3-double3:amd64=3.3.10-2+b1`

Licenses: (parsed from: `/usr/share/doc/libfftw3-double3/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris fftw3=3.3.10-2
'http://deb.debian.org/debian/pool/main/f/fftw3/fftw3_3.3.10-2.dsc' fftw3_3.3.10-2.dsc 2754 SHA256:58bdea9754119c591f95e373c1c85ff2b6861383b20bf3bb1e81af9c76a51d71
'http://deb.debian.org/debian/pool/main/f/fftw3/fftw3_3.3.10.orig.tar.gz' fftw3_3.3.10.orig.tar.gz 4144100 SHA256:56c932549852cddcfafdab3820b0200c7742675be92179e59e6215b340e26467
'http://deb.debian.org/debian/pool/main/f/fftw3/fftw3_3.3.10-2.debian.tar.xz' fftw3_3.3.10-2.debian.tar.xz 14628 SHA256:369066d9b28af25ac779ad23cce78be8dad3896bcbeb80de30d3d36b7a94fd67
```

Other potentially useful URLs:

- https://sources.debian.net/src/fftw3/3.3.10-2/ (for browsing the source)
- https://sources.debian.net/src/fftw3/3.3.10-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/fftw3/3.3.10-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `file=1:5.46-5`

Binary Packages:

- `file=1:5.46-5`
- `libmagic-mgc=1:5.46-5`
- `libmagic1t64:amd64=1:5.46-5`

Licenses: (parsed from: `/usr/share/doc/file/copyright`, `/usr/share/doc/libmagic-mgc/copyright`, `/usr/share/doc/libmagic1t64/copyright`)

- `BSD-2-Clause-alike`
- `BSD-2-Clause-netbsd`
- `BSD-2-Clause-regents`
- `MIT-Old-Style-with-legal-disclaimer-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris file=1:5.46-5
'http://deb.debian.org/debian/pool/main/f/file/file_5.46-5.dsc' file_5.46-5.dsc 2268 SHA256:b88a9648e785c073e46565a464334e63bb205b9892f43e44c018861b9608c926
'http://deb.debian.org/debian/pool/main/f/file/file_5.46.orig.tar.gz' file_5.46.orig.tar.gz 1312892 SHA256:c9cc77c7c560c543135edc555af609d5619dbef011997e988ce40a3d75d86088
'http://deb.debian.org/debian/pool/main/f/file/file_5.46.orig.tar.gz.asc' file_5.46.orig.tar.gz.asc 201 SHA256:01e43559e64e173c9c9f02714fb48cf631ee810def768507f077ff1309c8badc
'http://deb.debian.org/debian/pool/main/f/file/file_5.46-5.debian.tar.xz' file_5.46-5.debian.tar.xz 37008 SHA256:a74bd66a0351f15050fdc33d89b857d4761ba2041742f94e024a35685c43bb8c
```

Other potentially useful URLs:

- https://sources.debian.net/src/file/1:5.46-5/ (for browsing the source)
- https://sources.debian.net/src/file/1:5.46-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/file/1:5.46-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `findutils=4.10.0-3`

Binary Packages:

- `findutils=4.10.0-3`

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
$ apt-get source -qq --print-uris findutils=4.10.0-3
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.10.0-3.dsc' findutils_4.10.0-3.dsc 2291 SHA256:fa6b67056d9e5b4d8edbfc8ab95ac15ac769b140284426973f6a1ef07a4594ec
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.10.0.orig.tar.xz' findutils_4.10.0.orig.tar.xz 2240712 SHA256:1387e0b67ff247d2abde998f90dfbf70c1491391a59ddfecb8ae698789f0a4f5
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.10.0.orig.tar.xz.asc' findutils_4.10.0.orig.tar.xz.asc 488 SHA256:7f53670eea6bd114e014571221eb652855c1129a3ed99f2a9257c2a313cc216f
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.10.0-3.debian.tar.xz' findutils_4.10.0-3.debian.tar.xz 33364 SHA256:7d19668508523a6fcfb7731f5646305a8b1a00a3105ee3f0a5f167adf93a8a46
```

Other potentially useful URLs:

- https://sources.debian.net/src/findutils/4.10.0-3/ (for browsing the source)
- https://sources.debian.net/src/findutils/4.10.0-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/findutils/4.10.0-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `fontconfig=2.15.0-2.3`

Binary Packages:

- `fontconfig-config=2.15.0-2.3`
- `libfontconfig1:amd64=2.15.0-2.3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris fontconfig=2.15.0-2.3
'http://deb.debian.org/debian/pool/main/f/fontconfig/fontconfig_2.15.0-2.3.dsc' fontconfig_2.15.0-2.3.dsc 2673 SHA256:d5c3b910e470fdd00048813863f2e25e330c61b5cb3c795edf30cb3c52a657d0
'http://deb.debian.org/debian/pool/main/f/fontconfig/fontconfig_2.15.0.orig.tar.xz' fontconfig_2.15.0.orig.tar.xz 1447820 SHA256:63a0658d0e06e0fa886106452b58ef04f21f58202ea02a94c39de0d3335d7c0e
'http://deb.debian.org/debian/pool/main/f/fontconfig/fontconfig_2.15.0-2.3.debian.tar.xz' fontconfig_2.15.0-2.3.debian.tar.xz 59516 SHA256:af8e98e3801427f8957f86dc18303fcfbae329c0fab5bc06b5d5a0d26a53295f
```

Other potentially useful URLs:

- https://sources.debian.net/src/fontconfig/2.15.0-2.3/ (for browsing the source)
- https://sources.debian.net/src/fontconfig/2.15.0-2.3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/fontconfig/2.15.0-2.3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `fonts-urw-base35=20200910-8`

Binary Packages:

- `fonts-urw-base35=20200910-8`

Licenses: (parsed from: `/usr/share/doc/fonts-urw-base35/copyright`)

- `AGPL-3`
- `AGPL-3 with Font exception`
- `CC-BY-4.0`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris fonts-urw-base35=20200910-8
'http://deb.debian.org/debian/pool/main/f/fonts-urw-base35/fonts-urw-base35_20200910-8.dsc' fonts-urw-base35_20200910-8.dsc 2265 SHA256:54e700670e335495c702efbda1033681f25848e6d4bb46d47c1c93afb3113aae
'http://deb.debian.org/debian/pool/main/f/fonts-urw-base35/fonts-urw-base35_20200910.orig.tar.gz' fonts-urw-base35_20200910.orig.tar.gz 11190093 SHA256:e0d9b7f11885fdfdc4987f06b2aa0565ad2a4af52b22e5ebf79e1a98abd0ae2f
'http://deb.debian.org/debian/pool/main/f/fonts-urw-base35/fonts-urw-base35_20200910-8.debian.tar.xz' fonts-urw-base35_20200910-8.debian.tar.xz 24468 SHA256:e4a47c315c1690b91984bed3fba03df35ce50d9af4059b9cfef4810e7afac93d
```

Other potentially useful URLs:

- https://sources.debian.net/src/fonts-urw-base35/20200910-8/ (for browsing the source)
- https://sources.debian.net/src/fonts-urw-base35/20200910-8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/fonts-urw-base35/20200910-8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `freetype=2.13.3+dfsg-1+deb13u1`

Binary Packages:

- `libfreetype6:amd64=2.13.3+dfsg-1+deb13u1`

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
$ apt-get source -qq --print-uris freetype=2.13.3+dfsg-1+deb13u1
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.13.3%2bdfsg-1%2bdeb13u1.dsc' freetype_2.13.3+dfsg-1+deb13u1.dsc 3691 SHA256:8aa6e936f4b8ce5b1ac530d3c1bc7c5c36e6432ef81385c29ce649a3ed79e8cd
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.13.3%2bdfsg.orig-ft2demos.tar.xz' freetype_2.13.3+dfsg.orig-ft2demos.tar.xz 342404 SHA256:8775e5ffded1a885ba2ccb3ea0e82c73306a03b764080c3e4c79da15b5c9a28a
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.13.3%2bdfsg.orig-ft2demos.tar.xz.asc' freetype_2.13.3+dfsg.orig-ft2demos.tar.xz.asc 833 SHA256:931bfa17e59c0ec7db391160f43977e0907f36ea3c39d7e6063731cd4612dd51
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.13.3%2bdfsg.orig-ft2docs.tar.xz' freetype_2.13.3+dfsg.orig-ft2docs.tar.xz 2173852 SHA256:b7b66149bea769e226fd3d6d1eee6160e5b6beb4249b088071434fbe85fd1070
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.13.3%2bdfsg.orig-ft2docs.tar.xz.asc' freetype_2.13.3+dfsg.orig-ft2docs.tar.xz.asc 833 SHA256:65c66aec6244d247540430b21d3e80b677f1361906347a5be7fad371d46655da
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.13.3%2bdfsg.orig.tar.xz' freetype_2.13.3+dfsg.orig.tar.xz 2201416 SHA256:686ec73cbf6783b245dd068a09ce807b729ac0f8a46dd70f7867923c32fdf4de
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.13.3%2bdfsg-1%2bdeb13u1.debian.tar.xz' freetype_2.13.3+dfsg-1+deb13u1.debian.tar.xz 44488 SHA256:e7a07cad1b9c803457ec310bc87132429f52171c89f9126c09eb62e203c8c84b
```

Other potentially useful URLs:

- https://sources.debian.net/src/freetype/2.13.3+dfsg-1+deb13u1/ (for browsing the source)
- https://sources.debian.net/src/freetype/2.13.3+dfsg-1+deb13u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/freetype/2.13.3+dfsg-1+deb13u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-14=14.2.0-19`

Binary Packages:

- `cpp-14=14.2.0-19`
- `cpp-14-x86-64-linux-gnu=14.2.0-19`
- `g++-14=14.2.0-19`
- `g++-14-x86-64-linux-gnu=14.2.0-19`
- `gcc-14=14.2.0-19`
- `gcc-14-base:amd64=14.2.0-19`
- `gcc-14-x86-64-linux-gnu=14.2.0-19`
- `libasan8:amd64=14.2.0-19`
- `libatomic1:amd64=14.2.0-19`
- `libcc1-0:amd64=14.2.0-19`
- `libgcc-14-dev:amd64=14.2.0-19`
- `libgcc-s1:amd64=14.2.0-19`
- `libgomp1:amd64=14.2.0-19`
- `libhwasan0:amd64=14.2.0-19`
- `libitm1:amd64=14.2.0-19`
- `liblsan0:amd64=14.2.0-19`
- `libquadmath0:amd64=14.2.0-19`
- `libstdc++-14-dev:amd64=14.2.0-19`
- `libstdc++6:amd64=14.2.0-19`
- `libtsan2:amd64=14.2.0-19`
- `libubsan1:amd64=14.2.0-19`

Licenses: (parsed from: `/usr/share/doc/cpp-14/copyright`, `/usr/share/doc/cpp-14-x86-64-linux-gnu/copyright`, `/usr/share/doc/g++-14/copyright`, `/usr/share/doc/g++-14-x86-64-linux-gnu/copyright`, `/usr/share/doc/gcc-14/copyright`, `/usr/share/doc/gcc-14-base/copyright`, `/usr/share/doc/gcc-14-x86-64-linux-gnu/copyright`, `/usr/share/doc/libasan8/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libcc1-0/copyright`, `/usr/share/doc/libgcc-14-dev/copyright`, `/usr/share/doc/libgcc-s1/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libhwasan0/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++-14-dev/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan2/copyright`, `/usr/share/doc/libubsan1/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-14=14.2.0-19
'http://deb.debian.org/debian/pool/main/g/gcc-14/gcc-14_14.2.0-19.dsc' gcc-14_14.2.0-19.dsc 47347 SHA256:7db1e202cce66617e9134a662c877a3a773de5b612fd52179815877e0ecfb847
'http://deb.debian.org/debian/pool/main/g/gcc-14/gcc-14_14.2.0.orig.tar.gz' gcc-14_14.2.0.orig.tar.gz 94299633 SHA256:e162a5ef3f0077ecae598c6556908d2ab80841532df3398072a96a6df6e6aa29
'http://deb.debian.org/debian/pool/main/g/gcc-14/gcc-14_14.2.0-19.debian.tar.xz' gcc-14_14.2.0-19.debian.tar.xz 2577016 SHA256:31cbab4bafa48aa1c540497bd8098cbcf98e673778f927651ed944709f687781
```

Other potentially useful URLs:

- https://sources.debian.net/src/gcc-14/14.2.0-19/ (for browsing the source)
- https://sources.debian.net/src/gcc-14/14.2.0-19/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gcc-14/14.2.0-19/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-defaults=1.220`

Binary Packages:

- `cpp=4:14.2.0-1`
- `cpp-x86-64-linux-gnu=4:14.2.0-1`
- `g++=4:14.2.0-1`
- `g++-x86-64-linux-gnu=4:14.2.0-1`
- `gcc=4:14.2.0-1`
- `gcc-x86-64-linux-gnu=4:14.2.0-1`

Licenses: (parsed from: `/usr/share/doc/cpp/copyright`, `/usr/share/doc/cpp-x86-64-linux-gnu/copyright`, `/usr/share/doc/g++/copyright`, `/usr/share/doc/g++-x86-64-linux-gnu/copyright`, `/usr/share/doc/gcc/copyright`, `/usr/share/doc/gcc-x86-64-linux-gnu/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris gcc-defaults=1.220
'http://deb.debian.org/debian/pool/main/g/gcc-defaults/gcc-defaults_1.220.dsc' gcc-defaults_1.220.dsc 36895 SHA256:abfa2d362033435385e733f97d0cace1fbc917fd4160c81cc89abac38d3cdc37
'http://deb.debian.org/debian/pool/main/g/gcc-defaults/gcc-defaults_1.220.tar.xz' gcc-defaults_1.220.tar.xz 54044 SHA256:d40fbdb57f351a58e050c3e1037201853e88e3f673242b62357dc20030ad4805
```

Other potentially useful URLs:

- https://sources.debian.net/src/gcc-defaults/1.220/ (for browsing the source)
- https://sources.debian.net/src/gcc-defaults/1.220/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gcc-defaults/1.220/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gdbm=1.24-2`

Binary Packages:

- `libgdbm-compat4t64:amd64=1.24-2`
- `libgdbm6t64:amd64=1.24-2`

Licenses: (parsed from: `/usr/share/doc/libgdbm-compat4t64/copyright`, `/usr/share/doc/libgdbm6t64/copyright`)

- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.24-2
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.24-2.dsc' gdbm_1.24-2.dsc 2466 SHA256:28acecf1cf00240942833c04079a02bb4c199a48faa1f4ca90f0ea9b79dc5841
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.24.orig.tar.gz' gdbm_1.24.orig.tar.gz 1195931 SHA256:695e9827fdf763513f133910bc7e6cfdb9187943a4fec943e57449723d2b8dbf
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.24.orig.tar.gz.asc' gdbm_1.24.orig.tar.gz.asc 195 SHA256:8fb2f87e817ed6bd1d7ef2ab976f6a0046814a5ff28a06c521b796e0d3fd1226
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.24-2.debian.tar.xz' gdbm_1.24-2.debian.tar.xz 16880 SHA256:736d23450674c1bf0b03a2f65b83870b0801bc3747df3099df970c1479b0ab63
```

Other potentially useful URLs:

- https://sources.debian.net/src/gdbm/1.24-2/ (for browsing the source)
- https://sources.debian.net/src/gdbm/1.24-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gdbm/1.24-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ghostscript=10.05.1~dfsg-1+deb13u1`

Binary Packages:

- `ghostscript=10.05.1~dfsg-1+deb13u1`
- `libgs-common=10.05.1~dfsg-1+deb13u1`
- `libgs10:amd64=10.05.1~dfsg-1+deb13u1`
- `libgs10-common=10.05.1~dfsg-1+deb13u1`

Licenses: (parsed from: `/usr/share/doc/ghostscript/copyright`, `/usr/share/doc/libgs-common/copyright`, `/usr/share/doc/libgs10/copyright`, `/usr/share/doc/libgs10-common/copyright`)

- `AGPL-3`
- `AGPL-3+`
- `AGPL-3+ with font exception`
- `Apache-2.0`
- `BSD-3-Clause`
- `BSD-3-Clause~Adobe`
- `Expat`
- `Expat~Ghostgum`
- `Expat~SunSoft`
- `Expat~SunSoft with SunSoft exception`
- `FTL`
- `GAP~configure`
- `GPL-1`
- `GPL-1+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `GPL-3+ with Autoconf exception`
- `ISC`
- `LGPL-2.1`
- `MIT-Open-Group`
- `NTP~Lucent`
- `NTP~WSU`
- `X11`
- `ZLIB`
- `none`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris ghostscript=10.05.1~dfsg-1+deb13u1
'http://deb.debian.org/debian/pool/main/g/ghostscript/ghostscript_10.05.1%7edfsg-1%2bdeb13u1.dsc' ghostscript_10.05.1~dfsg-1+deb13u1.dsc 3034 SHA256:368616b13123e2887c54524a685e40856ea9401be3cb3cd0b9c39ba15fcfa818
'http://deb.debian.org/debian/pool/main/g/ghostscript/ghostscript_10.05.1%7edfsg.orig.tar.xz' ghostscript_10.05.1~dfsg.orig.tar.xz 28467224 SHA256:ca4ff3a4c2b536baedd3029cb9b7bdd3bd9b27a03b53956efda062140843add1
'http://deb.debian.org/debian/pool/main/g/ghostscript/ghostscript_10.05.1%7edfsg-1%2bdeb13u1.debian.tar.xz' ghostscript_10.05.1~dfsg-1+deb13u1.debian.tar.xz 87492 SHA256:6490004f76429ef07f78d13d31ad4b55652414065460bd625d561009a0a6215e
```

Other potentially useful URLs:

- https://sources.debian.net/src/ghostscript/10.05.1~dfsg-1+deb13u1/ (for browsing the source)
- https://sources.debian.net/src/ghostscript/10.05.1~dfsg-1+deb13u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ghostscript/10.05.1~dfsg-1+deb13u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `glib2.0=2.84.4-3~deb13u3`

Binary Packages:

- `girepository-tools:amd64=2.84.4-3~deb13u3`
- `libgio-2.0-dev:amd64=2.84.4-3~deb13u3`
- `libgio-2.0-dev-bin=2.84.4-3~deb13u3`
- `libgirepository-2.0-0:amd64=2.84.4-3~deb13u3`
- `libglib2.0-0t64:amd64=2.84.4-3~deb13u3`
- `libglib2.0-bin=2.84.4-3~deb13u3`
- `libglib2.0-data=2.84.4-3~deb13u3`
- `libglib2.0-dev:amd64=2.84.4-3~deb13u3`
- `libglib2.0-dev-bin=2.84.4-3~deb13u3`

Licenses: (parsed from: `/usr/share/doc/girepository-tools/copyright`, `/usr/share/doc/libgio-2.0-dev/copyright`, `/usr/share/doc/libgio-2.0-dev-bin/copyright`, `/usr/share/doc/libgirepository-2.0-0/copyright`, `/usr/share/doc/libglib2.0-0t64/copyright`, `/usr/share/doc/libglib2.0-bin/copyright`, `/usr/share/doc/libglib2.0-data/copyright`, `/usr/share/doc/libglib2.0-dev/copyright`, `/usr/share/doc/libglib2.0-dev-bin/copyright`)

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
$ apt-get source -qq --print-uris glib2.0=2.84.4-3~deb13u3
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.84.4-3%7edeb13u3.dsc' glib2.0_2.84.4-3~deb13u3.dsc 4883 SHA256:4b9e829d82cb5884e6de4250b4c31fd9030ca1be0c29f9b84e9141ee6d9344c1
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.84.4.orig-unicode-data.tar.xz' glib2.0_2.84.4.orig-unicode-data.tar.xz 660708 SHA256:c1742461e8c0e9673a3453a3127671169de9cb0138493e5c916f1b989530efcd
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.84.4.orig.tar.xz' glib2.0_2.84.4.orig.tar.xz 5618200 SHA256:8a9ea10943c36fc117e253f80c91e477b673525ae45762942858aef57631bb90
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.84.4-3%7edeb13u3.debian.tar.xz' glib2.0_2.84.4-3~deb13u3.debian.tar.xz 153388 SHA256:8e35b56abfed5cea96a93d032996efd3a3a5f445a2fc75445f5f42b4d84f42ef
```

Other potentially useful URLs:

- https://sources.debian.net/src/glib2.0/2.84.4-3~deb13u3/ (for browsing the source)
- https://sources.debian.net/src/glib2.0/2.84.4-3~deb13u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glib2.0/2.84.4-3~deb13u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `glibc=2.41-12+deb13u3`

Binary Packages:

- `libc-bin=2.41-12+deb13u3`
- `libc-dev-bin=2.41-12+deb13u3`
- `libc6:amd64=2.41-12+deb13u3`
- `libc6-dev:amd64=2.41-12+deb13u3`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`)

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
$ apt-get source -qq --print-uris glibc=2.41-12+deb13u3
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.41-12%2bdeb13u3.dsc' glibc_2.41-12+deb13u3.dsc 7576 SHA256:aa1ab10010fcf169454a5c6a123094a3997392922593d86a3a5adc180a07ca40
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.41.orig.tar.xz' glibc_2.41.orig.tar.xz 20323540 SHA256:f24aa441021121a79266f0d75242706cab8843a47901fefe74527491807f1998
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.41-12%2bdeb13u3.debian.tar.xz' glibc_2.41-12+deb13u3.debian.tar.xz 494644 SHA256:de7d715bf7e559b78baebac4115122641842f65faf0a5080a55954877a55cebe
```

Other potentially useful URLs:

- https://sources.debian.net/src/glibc/2.41-12+deb13u3/ (for browsing the source)
- https://sources.debian.net/src/glibc/2.41-12+deb13u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glibc/2.41-12+deb13u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gmp=2:6.3.0+dfsg-3`

Binary Packages:

- `libgmp10:amd64=2:6.3.0+dfsg-3`

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
$ apt-get source -qq --print-uris gmp=2:6.3.0+dfsg-3
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.3.0%2bdfsg-3.dsc' gmp_6.3.0+dfsg-3.dsc 2251 SHA256:f7b64af28f52b7346bb8581e01d3c19daf769639345f234f8ae1e29c42171443
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.3.0%2bdfsg.orig.tar.xz' gmp_6.3.0+dfsg.orig.tar.xz 1870556 SHA256:bd2966e6d277f79328e894a5a9f3ba3fbf2ed2be81def5f48623e30c23fb1572
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.3.0%2bdfsg-3.debian.tar.xz' gmp_6.3.0+dfsg-3.debian.tar.xz 19912 SHA256:1d890bbe25dd649d2ddba1926483176520e50f22115a00566f250b613b8c20ad
```

Other potentially useful URLs:

- https://sources.debian.net/src/gmp/2:6.3.0+dfsg-3/ (for browsing the source)
- https://sources.debian.net/src/gmp/2:6.3.0+dfsg-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gmp/2:6.3.0+dfsg-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnutls28=3.8.9-3+deb13u4`

Binary Packages:

- `libgnutls30t64:amd64=3.8.9-3+deb13u4`

Licenses: (parsed from: `/usr/share/doc/libgnutls30t64/copyright`)

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
- `The main library is licensed under GNU Lesser`

Source:

```console
$ apt-get source -qq --print-uris gnutls28=3.8.9-3+deb13u4
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.8.9-3%2bdeb13u4.dsc' gnutls28_3.8.9-3+deb13u4.dsc 3271 SHA256:f1153e91212bdf60acf66cb62713ad4ed577f2e85f578a04df31a5619624c1e1
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.8.9.orig.tar.xz' gnutls28_3.8.9.orig.tar.xz 6847364 SHA256:69e113d802d1670c4d5ac1b99040b1f2d5c7c05daec5003813c049b5184820ed
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.8.9.orig.tar.xz.asc' gnutls28_3.8.9.orig.tar.xz.asc 833 SHA256:7631d47762865d4ef494492cca794cf0fe6a8be892a4aa02f362ae29006d3054
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.8.9-3%2bdeb13u4.debian.tar.xz' gnutls28_3.8.9-3+deb13u4.debian.tar.xz 140880 SHA256:f0b9c7d182072f0bbdb281304686aa6e2bfd343dadefa432ec4dab4893e9841f
```

Other potentially useful URLs:

- https://sources.debian.net/src/gnutls28/3.8.9-3+deb13u4/ (for browsing the source)
- https://sources.debian.net/src/gnutls28/3.8.9-3+deb13u4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnutls28/3.8.9-3+deb13u4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `grep=3.11-4`

Binary Packages:

- `grep=3.11-4`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=3.11-4
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.11-4.dsc' grep_3.11-4.dsc 1642 SHA256:dd6f8eb933bc05446e483f7792c8bf0a1aba9d498e65c6ccafe64e9bf27ac054
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.11.orig.tar.xz' grep_3.11.orig.tar.xz 1703776 SHA256:1db2aedde89d0dea42b16d9528f894c8d15dae4e190b59aecc78f5a951276eab
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.11.orig.tar.xz.asc' grep_3.11.orig.tar.xz.asc 833 SHA256:89ec23ffd59b68822732dc8204fc89883c3af30a90ae390feb94346d9d09a589
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.11-4.debian.tar.xz' grep_3.11-4.debian.tar.xz 20468 SHA256:f10394b7589c58ca7de4b580692b1b59431f898cb2068e86222c174e093fdf49
```

Other potentially useful URLs:

- https://sources.debian.net/src/grep/3.11-4/ (for browsing the source)
- https://sources.debian.net/src/grep/3.11-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/grep/3.11-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gzip=1.13-1`

Binary Packages:

- `gzip=1.13-1`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `FSF-manpages`
- `GFDL-1.3+-no-invariant`
- `GFDL-3`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.13-1
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.13-1.dsc' gzip_1.13-1.dsc 1884 SHA256:4942638dbb63dc5690e0a95ed70ee9f11e93565c43941c2485da3e561ec72028
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.13.orig.tar.xz' gzip_1.13.orig.tar.xz 838248 SHA256:7454eb6935db17c6655576c2e1b0fabefd38b4d0936e0f87f48cd062ce91a057
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.13.orig.tar.xz.asc' gzip_1.13.orig.tar.xz.asc 833 SHA256:aa752d6460fff2e0064857f1c6057d2dc49a28a45ad28c6b29c525851d6771f1
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.13-1.debian.tar.xz' gzip_1.13-1.debian.tar.xz 19028 SHA256:29319b3f91d8e03d940d4d7c0f2a5fe5ec4f2ba4a0e621c9ef2682f2d0240dd2
```

Other potentially useful URLs:

- https://sources.debian.net/src/gzip/1.13-1/ (for browsing the source)
- https://sources.debian.net/src/gzip/1.13-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gzip/1.13-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `hostname=3.25`

Binary Packages:

- `hostname=3.25`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.25
'http://deb.debian.org/debian/pool/main/h/hostname/hostname_3.25.dsc' hostname_3.25.dsc 1519 SHA256:80aadf116c3423044be69a4cef8ba2766f412bd4d46a500aacb61f303c19c4ef
'http://deb.debian.org/debian/pool/main/h/hostname/hostname_3.25.tar.xz' hostname_3.25.tar.xz 12804 SHA256:5bb5d1be011158090157c9e7587ae5606c262a5020ecdc5caac6686b9910592e
```

Other potentially useful URLs:

- https://sources.debian.net/src/hostname/3.25/ (for browsing the source)
- https://sources.debian.net/src/hostname/3.25/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/hostname/3.25/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `icu=76.1-4`

Binary Packages:

- `libicu76:amd64=76.1-4`

Licenses: (parsed from: `/usr/share/doc/libicu76/copyright`)

- `GPL-3`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris icu=76.1-4
'http://deb.debian.org/debian/pool/main/i/icu/icu_76.1-4.dsc' icu_76.1-4.dsc 2236 SHA256:2587ef23962b42a074ceab2f0407058f8e3fca0e6edd5d7c0bc1df6c683724a6
'http://deb.debian.org/debian/pool/main/i/icu/icu_76.1.orig.tar.gz' icu_76.1.orig.tar.gz 27437767 SHA256:dfacb46bfe4747410472ce3e1144bf28a102feeaa4e3875bac9b4c6cf30f4f3e
'http://deb.debian.org/debian/pool/main/i/icu/icu_76.1.orig.tar.gz.asc' icu_76.1.orig.tar.gz.asc 228 SHA256:6ef6ef96376eb6550f2b450e08b84c29238f60a77b89273f1521e1b57db73472
'http://deb.debian.org/debian/pool/main/i/icu/icu_76.1-4.debian.tar.xz' icu_76.1-4.debian.tar.xz 65216 SHA256:5f9ff8b3a8e89a01b52c84bfebd35e7825ac561669d24e5a3d5f25d158e4f412
```

Other potentially useful URLs:

- https://sources.debian.net/src/icu/76.1-4/ (for browsing the source)
- https://sources.debian.net/src/icu/76.1-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/icu/76.1-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ijs=0.35-15.2`

Binary Packages:

- `libijs-0.35:amd64=0.35-15.2`

Licenses: (parsed from: `/usr/share/doc/libijs-0.35/copyright`)

- `Expat`
- `Expat~X`
- `Expat~X with X exception`
- `GAP`
- `GAP~Makefile.in`
- `GAP~configure`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf exception`

Source:

```console
$ apt-get source -qq --print-uris ijs=0.35-15.2
'http://deb.debian.org/debian/pool/main/i/ijs/ijs_0.35-15.2.dsc' ijs_0.35-15.2.dsc 1927 SHA256:e2f197fbed9558e4065dca77b9b53e0bef791550ac7fb336cbc7e37698b7e526
'http://deb.debian.org/debian/pool/main/i/ijs/ijs_0.35.orig.tar.gz' ijs_0.35.orig.tar.gz 344262 SHA256:901fffb73e42dae343a8285a31d9c4e82dc3856d36be30adbdb564bdd27161d6
'http://deb.debian.org/debian/pool/main/i/ijs/ijs_0.35-15.2.debian.tar.xz' ijs_0.35-15.2.debian.tar.xz 10388 SHA256:ceaedf39fb8cfb2a46418a9b2ac6d0d55b0e16a35f539cf27d020f5c3473d035
```

Other potentially useful URLs:

- https://sources.debian.net/src/ijs/0.35-15.2/ (for browsing the source)
- https://sources.debian.net/src/ijs/0.35-15.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ijs/0.35-15.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `imagemagick=8:7.1.1.43+dfsg1-1+deb13u11`

Binary Packages:

- `imagemagick-7-common=8:7.1.1.43+dfsg1-1+deb13u11`
- `libmagickcore-7.q16-10:amd64=8:7.1.1.43+dfsg1-1+deb13u11`
- `libmagickwand-7.q16-10:amd64=8:7.1.1.43+dfsg1-1+deb13u11`

Licenses: (parsed from: `/usr/share/doc/imagemagick-7-common/copyright`, `/usr/share/doc/libmagickcore-7.q16-10/copyright`, `/usr/share/doc/libmagickwand-7.q16-10/copyright`)

- `Artistic`
- `BSD-with-FSF-change-public-domain`
- `GNU-All-Permissive-License`
- `GPL-1`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL2+-with-Autoconf-Macros-exception`
- `GPL3+-with-Autoconf-Macros-exception`
- `GPL3+-with-Autoconf-Macros-exception-GNU`
- `ImageMagick`
- `ImageMagickLicensePartEZXML`
- `ImageMagickLicensePartFIG`
- `ImageMagickLicensePartGsview`
- `ImageMagickLicensePartOpenSSH`
- `ImageMagickPartGraphicsMagick`
- `ImageMagickPartlibjpeg`
- `ImageMagickPartlibsquish`
- `Imagemagick`
- `LGPL-3`
- `LGPL-3+`
- `Magick++`
- `Makefile-in`
- `Perllikelicence`
- `aclocal`

Source:

```console
$ apt-get source -qq --print-uris imagemagick=8:7.1.1.43+dfsg1-1+deb13u11
'http://deb.debian.org/debian-security/pool/updates/main/i/imagemagick/imagemagick_7.1.1.43%2bdfsg1-1%2bdeb13u11.dsc' imagemagick_7.1.1.43+dfsg1-1+deb13u11.dsc 5165 SHA256:66108f89a7dd1b650bfc4358841a31be0038559aadaad8f3fb3faa8c238899fe
'http://deb.debian.org/debian-security/pool/updates/main/i/imagemagick/imagemagick_7.1.1.43%2bdfsg1.orig.tar.xz' imagemagick_7.1.1.43+dfsg1.orig.tar.xz 10501740 SHA256:bcb4f3c78a930a608fa4889f889edbcb384974246ad9407fce1858f2c0607bfe
'http://deb.debian.org/debian-security/pool/updates/main/i/imagemagick/imagemagick_7.1.1.43%2bdfsg1-1%2bdeb13u11.debian.tar.xz' imagemagick_7.1.1.43+dfsg1-1+deb13u11.debian.tar.xz 360084 SHA256:f29aebfd4c6d734e708df683d0bdabf2ccab181f52ac932cf7ec5d94dcf1473b
```

Other potentially useful URLs:

- https://sources.debian.net/src/imagemagick/8:7.1.1.43+dfsg1-1+deb13u11/ (for browsing the source)
- https://sources.debian.net/src/imagemagick/8:7.1.1.43+dfsg1-1+deb13u11/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/imagemagick/8:7.1.1.43+dfsg1-1+deb13u11/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `init-system-helpers=1.69~deb13u1`

Binary Packages:

- `init-system-helpers=1.69~deb13u1`

Licenses: (parsed from: `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.69~deb13u1
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.69%7edeb13u1.dsc' init-system-helpers_1.69~deb13u1.dsc 2266 SHA256:873082d72727267b6207e38df47e3002aeb0ed554f876db17c7bbfeb26174ee6
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.69%7edeb13u1.tar.xz' init-system-helpers_1.69~deb13u1.tar.xz 45852 SHA256:bbd65c63420b6335b91cbf5daad9a70632a087657eb9078ea000f0a16c2d83da
```

Other potentially useful URLs:

- https://sources.debian.net/src/init-system-helpers/1.69~deb13u1/ (for browsing the source)
- https://sources.debian.net/src/init-system-helpers/1.69~deb13u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/init-system-helpers/1.69~deb13u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `isl=0.27-1`

Binary Packages:

- `libisl23:amd64=0.27-1`

Licenses: (parsed from: `/usr/share/doc/libisl23/copyright`)

- `BSD-2-clause`
- `LGPL-2`
- `LGPL-2.1+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris isl=0.27-1
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.27-1.dsc' isl_0.27-1.dsc 1829 SHA256:35ceb67dbb1b4098431b184e342143c2bd94c4a41ebfb3a983e3be31440b0453
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.27.orig.tar.xz' isl_0.27.orig.tar.xz 2056436 SHA256:6d8babb59e7b672e8cb7870e874f3f7b813b6e00e6af3f8b04f7579965643d5c
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.27-1.debian.tar.xz' isl_0.27-1.debian.tar.xz 24868 SHA256:1ac2e33075903489d4284ff4e86645405e68a282a80432ee4ee0c43397f59224
```

Other potentially useful URLs:

- https://sources.debian.net/src/isl/0.27-1/ (for browsing the source)
- https://sources.debian.net/src/isl/0.27-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/isl/0.27-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `jansson=2.14-2`

Binary Packages:

- `libjansson4:amd64=2.14-2+b3`

Licenses: (parsed from: `/usr/share/doc/libjansson4/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris jansson=2.14-2
'http://deb.debian.org/debian/pool/main/j/jansson/jansson_2.14-2.dsc' jansson_2.14-2.dsc 1980 SHA256:6296ddd9c0a022bd1b70074aefb171cfcdf5694a04ffd32b35fd66097621af87
'http://deb.debian.org/debian/pool/main/j/jansson/jansson_2.14.orig.tar.gz' jansson_2.14.orig.tar.gz 141500 SHA256:c739578bf6b764aa0752db9a2fdadcfe921c78f1228c7ec0bb47fa804c55d17b
'http://deb.debian.org/debian/pool/main/j/jansson/jansson_2.14-2.debian.tar.xz' jansson_2.14-2.debian.tar.xz 5428 SHA256:e89fe4fd8221f6934ddb50f2e7f8404311928d0e23e49a5599f3d3d14ee8cb88
```

Other potentially useful URLs:

- https://sources.debian.net/src/jansson/2.14-2/ (for browsing the source)
- https://sources.debian.net/src/jansson/2.14-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/jansson/2.14-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `jbig2dec=0.20-1`

Binary Packages:

- `libjbig2dec0:amd64=0.20-1+b3`

Licenses: (parsed from: `/usr/share/doc/libjbig2dec0/copyright`)

- `AGPL-3+`
- `BSD-2-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `pubic-domain`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris jbig2dec=0.20-1
'http://deb.debian.org/debian/pool/main/j/jbig2dec/jbig2dec_0.20-1.dsc' jbig2dec_0.20-1.dsc 2075 SHA256:764cdb37f9d4b200bf452dd95b90a66578fb3edf749a700b567bc6aaf1cd4a5b
'http://deb.debian.org/debian/pool/main/j/jbig2dec/jbig2dec_0.20.orig.tar.gz' jbig2dec_0.20.orig.tar.gz 149782 SHA256:a9705369a6633aba532693450ec802c562397e1b824662de809ede92f67aff21
'http://deb.debian.org/debian/pool/main/j/jbig2dec/jbig2dec_0.20-1.debian.tar.xz' jbig2dec_0.20-1.debian.tar.xz 21820 SHA256:da72d9f85b60cf2a95a6e2cc1b0baee7207a648c8e213331a9415d2911356086
```

Other potentially useful URLs:

- https://sources.debian.net/src/jbig2dec/0.20-1/ (for browsing the source)
- https://sources.debian.net/src/jbig2dec/0.20-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/jbig2dec/0.20-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `jbigkit=2.1-6.1`

Binary Packages:

- `libjbig0:amd64=2.1-6.1+b2`

Licenses: (parsed from: `/usr/share/doc/libjbig0/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris jbigkit=2.1-6.1
'http://deb.debian.org/debian/pool/main/j/jbigkit/jbigkit_2.1-6.1.dsc' jbigkit_2.1-6.1.dsc 2089 SHA256:8dea586c47cb4b2436f77fd33ef4a702b9da936d74de8332a72a8ddbe8124e09
'http://deb.debian.org/debian/pool/main/j/jbigkit/jbigkit_2.1.orig.tar.gz' jbigkit_2.1.orig.tar.gz 438710 SHA256:de7106b6bfaf495d6865c7dd7ac6ca1381bd12e0d81405ea81e7f2167263d932
'http://deb.debian.org/debian/pool/main/j/jbigkit/jbigkit_2.1-6.1.debian.tar.xz' jbigkit_2.1-6.1.debian.tar.xz 9244 SHA256:c9ba99e84d18b1affdc97b26b625721ed06b41a92996d9b426b62c0dbe3868cd
```

Other potentially useful URLs:

- https://sources.debian.net/src/jbigkit/2.1-6.1/ (for browsing the source)
- https://sources.debian.net/src/jbigkit/2.1-6.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/jbigkit/2.1-6.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `keyutils=1.6.3-6`

Binary Packages:

- `libkeyutils1:amd64=1.6.3-6`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.6.3-6
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.6.3-6.dsc' keyutils_1.6.3-6.dsc 2100 SHA256:e63869474c390d5d5bdee8492f7b2f4d6034ff10d8190da18593620c0f35fbf8
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.6.3.orig.tar.gz' keyutils_1.6.3.orig.tar.gz 137022 SHA256:a61d5706136ae4c05bd48f86186bcfdbd88dd8bd5107e3e195c924cfc1b39bb4
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.6.3-6.debian.tar.xz' keyutils_1.6.3-6.debian.tar.xz 16588 SHA256:6fc3c1217b8e92df9dff73e4919c45dff4ada5fd414ab57329af487f4476466a
```

Other potentially useful URLs:

- https://sources.debian.net/src/keyutils/1.6.3-6/ (for browsing the source)
- https://sources.debian.net/src/keyutils/1.6.3-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/keyutils/1.6.3-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `krb5=1.21.3-5+deb13u1`

Binary Packages:

- `libgssapi-krb5-2:amd64=1.21.3-5+deb13u1`
- `libk5crypto3:amd64=1.21.3-5+deb13u1`
- `libkrb5-3:amd64=1.21.3-5+deb13u1`
- `libkrb5support0:amd64=1.21.3-5+deb13u1`

Licenses: (parsed from: `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.21.3-5+deb13u1
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.21.3-5%2bdeb13u1.dsc' krb5_1.21.3-5+deb13u1.dsc 4189 SHA256:d17d2840bc97fea2c2375245569ca67838a2b557ee083c6cbe42b129a317212c
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.21.3.orig.tar.gz' krb5_1.21.3.orig.tar.gz 9136145 SHA256:b7a4cd5ead67fb08b980b21abd150ff7217e85ea320c9ed0c6dadd304840ad35
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.21.3.orig.tar.gz.asc' krb5_1.21.3.orig.tar.gz.asc 833 SHA256:85047c935fe949ef2e275885451b168557b923dd13a5aab0ef8fe6acd27b94d7
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.21.3-5%2bdeb13u1.debian.tar.xz' krb5_1.21.3-5+deb13u1.debian.tar.xz 105252 SHA256:02b873b239fbe7ddf016dfe44deba4130673f4606c18c93da0622e2bc8500fb4
```

Other potentially useful URLs:

- https://sources.debian.net/src/krb5/1.21.3-5+deb13u1/ (for browsing the source)
- https://sources.debian.net/src/krb5/1.21.3-5+deb13u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/krb5/1.21.3-5+deb13u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lcms2=2.16-2+deb13u2`

Binary Packages:

- `liblcms2-2:amd64=2.16-2+deb13u2`

Licenses: (parsed from: `/usr/share/doc/liblcms2-2/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `IJG`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris lcms2=2.16-2+deb13u2
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.16-2%2bdeb13u2.dsc' lcms2_2.16-2+deb13u2.dsc 2004 SHA256:8ff22453843eed5ef7bfb76b4cb2cfe490613337cb197141db658e5195ead9fc
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.16.orig.tar.gz' lcms2_2.16.orig.tar.gz 7632822 SHA256:d873d34ad8b9b4cea010631f1a6228d2087475e4dc5e763eb81acc23d9d45a51
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.16-2%2bdeb13u2.debian.tar.xz' lcms2_2.16-2+deb13u2.debian.tar.xz 12744 SHA256:bb72de5dc4164e1023a6d124c57789b6abee866d3b76c878d0771b86fb720de9
```

Other potentially useful URLs:

- https://sources.debian.net/src/lcms2/2.16-2+deb13u2/ (for browsing the source)
- https://sources.debian.net/src/lcms2/2.16-2+deb13u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lcms2/2.16-2+deb13u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lerc=4.0.0+ds-5`

Binary Packages:

- `liblerc4:amd64=4.0.0+ds-5`

Licenses: (parsed from: `/usr/share/doc/liblerc4/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris lerc=4.0.0+ds-5
'http://deb.debian.org/debian/pool/main/l/lerc/lerc_4.0.0%2bds-5.dsc' lerc_4.0.0+ds-5.dsc 2673 SHA256:84de8dac3dd5f5edc005c5c02be58c1f549f9365ad4147c138c85e07d624cc12
'http://deb.debian.org/debian/pool/main/l/lerc/lerc_4.0.0%2bds.orig.tar.xz' lerc_4.0.0+ds.orig.tar.xz 348140 SHA256:acf855502fd3b950ee78f0b67bc9e9b39316b3526fbf6d8b8b1a9482fb756723
'http://deb.debian.org/debian/pool/main/l/lerc/lerc_4.0.0%2bds-5.debian.tar.xz' lerc_4.0.0+ds-5.debian.tar.xz 8576 SHA256:28ab2b1c19c845cd493e804bb9c43b47f72d5852281ebf832ed68a7576afbf6d
```

Other potentially useful URLs:

- https://sources.debian.net/src/lerc/4.0.0+ds-5/ (for browsing the source)
- https://sources.debian.net/src/lerc/4.0.0+ds-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lerc/4.0.0+ds-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libbsd=0.12.2-2`

Binary Packages:

- `libbsd0:amd64=0.12.2-2`

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
$ apt-get source -qq --print-uris libbsd=0.12.2-2
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.12.2-2.dsc' libbsd_0.12.2-2.dsc 2446 SHA256:01eb1d0c896096f9038213f5f00376ecfd1c0d1def21b7042f28ae070e4837e3
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.12.2.orig.tar.xz' libbsd_0.12.2.orig.tar.xz 446032 SHA256:b88cc9163d0c652aaf39a99991d974ddba1c3a9711db8f1b5838af2a14731014
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.12.2.orig.tar.xz.asc' libbsd_0.12.2.orig.tar.xz.asc 833 SHA256:620dc92f158ebe0a650c0e92214a8121b927276895dc9a1dcaa38f627fa0fcb0
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.12.2-2.debian.tar.xz' libbsd_0.12.2-2.debian.tar.xz 18688 SHA256:36c878a32c1f190ca2cb474de5c6139990a6c029906493d3566770b1ebd569bf
```

Other potentially useful URLs:

- https://sources.debian.net/src/libbsd/0.12.2-2/ (for browsing the source)
- https://sources.debian.net/src/libbsd/0.12.2-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libbsd/0.12.2-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libcap-ng=0.8.5-4`

Binary Packages:

- `libcap-ng0:amd64=0.8.5-4+b1`

Licenses: (parsed from: `/usr/share/doc/libcap-ng0/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libcap-ng=0.8.5-4
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.8.5-4.dsc' libcap-ng_0.8.5-4.dsc 1710 SHA256:a5745b7d68a11068ae5beddcc7fbc94cd87dd81cb2d7495e7d48610603be3526
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.8.5.orig.tar.gz' libcap-ng_0.8.5.orig.tar.gz 59265 SHA256:e4be07fdd234f10b866433f224d183626003c65634ed0552b02e654a380244c2
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.8.5-4.debian.tar.xz' libcap-ng_0.8.5-4.debian.tar.xz 7816 SHA256:f5d4e7f38bdbca87de77317ce95f973883081370ef257019b484e29e3368a20d
```

Other potentially useful URLs:

- https://sources.debian.net/src/libcap-ng/0.8.5-4/ (for browsing the source)
- https://sources.debian.net/src/libcap-ng/0.8.5-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libcap-ng/0.8.5-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libcap2=1:2.75-10+deb13u1`

Binary Packages:

- `libcap2:amd64=1:2.75-10+deb13u1+b1`

Licenses: (parsed from: `/usr/share/doc/libcap2/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libcap2=1:2.75-10+deb13u1
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.75-10%2bdeb13u1.dsc' libcap2_2.75-10+deb13u1.dsc 2714 SHA256:cb6af220de216655ec55bb1f5abf3fa8f03e82c9956f120b313056e895c02ea6
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.75.orig.tar.xz' libcap2_2.75.orig.tar.xz 197868 SHA256:de4e7e064c9ba451d5234dd46e897d7c71c96a9ebf9a0c445bc04f4742d83632
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.75.orig.tar.xz.asc' libcap2_2.75.orig.tar.xz.asc 833 SHA256:c71b593e7c3160fd7f406641074d93462bbc4906c9243937a0e232f42d5c54d2
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.75-10%2bdeb13u1.debian.tar.xz' libcap2_2.75-10+deb13u1.debian.tar.xz 24628 SHA256:d375de2f743f112835fc0eef2a9c305c1109371954cf53e109b7f046fe58c1bc
```

Other potentially useful URLs:

- https://sources.debian.net/src/libcap2/1:2.75-10+deb13u1/ (for browsing the source)
- https://sources.debian.net/src/libcap2/1:2.75-10+deb13u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libcap2/1:2.75-10+deb13u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libde265=1.0.15-1+deb13u1`

Binary Packages:

- `libde265-0:amd64=1.0.15-1+deb13u1`

Licenses: (parsed from: `/usr/share/doc/libde265-0/copyright`)

- `BSD-4-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-3`
- `LGPL-3+`
- `other-1`
- `public-domain-1`

Source:

```console
$ apt-get source -qq --print-uris libde265=1.0.15-1+deb13u1
'http://deb.debian.org/debian-security/pool/updates/main/libd/libde265/libde265_1.0.15-1%2bdeb13u1.dsc' libde265_1.0.15-1+deb13u1.dsc 1904 SHA256:0e1bff0db1fbd8c827e3a665174da6667411f598454d806bc59ff3e1f2f74d46
'http://deb.debian.org/debian-security/pool/updates/main/libd/libde265/libde265_1.0.15.orig.tar.gz' libde265_1.0.15.orig.tar.gz 846016 SHA256:00251986c29d34d3af7117ed05874950c875dd9292d016be29d3b3762666511d
'http://deb.debian.org/debian-security/pool/updates/main/libd/libde265/libde265_1.0.15-1%2bdeb13u1.debian.tar.xz' libde265_1.0.15-1+deb13u1.debian.tar.xz 145088 SHA256:721ab671ae27928da346206ec1e66cfa62cf1d119d0d6f9b6f96d0b17fa3eea7
```

Other potentially useful URLs:

- https://sources.debian.net/src/libde265/1.0.15-1+deb13u1/ (for browsing the source)
- https://sources.debian.net/src/libde265/1.0.15-1+deb13u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libde265/1.0.15-1+deb13u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libdeflate=1.23-2`

Binary Packages:

- `libdeflate0:amd64=1.23-2`

Licenses: (parsed from: `/usr/share/doc/libdeflate0/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libdeflate=1.23-2
'http://deb.debian.org/debian/pool/main/libd/libdeflate/libdeflate_1.23-2.dsc' libdeflate_1.23-2.dsc 1743 SHA256:fbec7154ffff5193ef71c196e1e7348a154b1ed35c2a9ce3ece5fcc947303d77
'http://deb.debian.org/debian/pool/main/libd/libdeflate/libdeflate_1.23.orig.tar.gz' libdeflate_1.23.orig.tar.gz 197519 SHA256:1ab18349b9fb0ce8a0ca4116bded725be7dcbfa709e19f6f983d99df1fb8b25f
'http://deb.debian.org/debian/pool/main/libd/libdeflate/libdeflate_1.23-2.debian.tar.xz' libdeflate_1.23-2.debian.tar.xz 5624 SHA256:6d3101de26f30c25e4900fecc3b6da34543771d6014767af29850bc3ff3cbd09
```

Other potentially useful URLs:

- https://sources.debian.net/src/libdeflate/1.23-2/ (for browsing the source)
- https://sources.debian.net/src/libdeflate/1.23-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libdeflate/1.23-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libffi=3.4.8-2`

Binary Packages:

- `libffi-dev:amd64=3.4.8-2`
- `libffi8:amd64=3.4.8-2`

Licenses: (parsed from: `/usr/share/doc/libffi-dev/copyright`, `/usr/share/doc/libffi8/copyright`)

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
$ apt-get source -qq --print-uris libffi=3.4.8-2
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.4.8-2.dsc' libffi_3.4.8-2.dsc 1948 SHA256:4424defe3f37c0084f062e03330b2ba3d3f927367c33be455cfacf7f85a78161
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.4.8.orig.tar.gz' libffi_3.4.8.orig.tar.gz 595051 SHA256:cbb7f0b3b095dc506387ec1e35b891bfb4891d05b90a495bc69a10f2293f80ff
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.4.8-2.debian.tar.xz' libffi_3.4.8-2.debian.tar.xz 11220 SHA256:f23ac79a19895ebb6bbb539263d0d945ebc2d3e91217a597f5819777f08b401c
```

Other potentially useful URLs:

- https://sources.debian.net/src/libffi/3.4.8-2/ (for browsing the source)
- https://sources.debian.net/src/libffi/3.4.8-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libffi/3.4.8-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libfontenc=1:1.1.8-1`

Binary Packages:

- `libfontenc1:amd64=1:1.1.8-1+b2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libfontenc=1:1.1.8-1
'http://deb.debian.org/debian/pool/main/libf/libfontenc/libfontenc_1.1.8-1.dsc' libfontenc_1.1.8-1.dsc 2288 SHA256:fc070572b06923aa72dae3fc0e6db16906eb38ac7765100abf567efe2caa404f
'http://deb.debian.org/debian/pool/main/libf/libfontenc/libfontenc_1.1.8.orig.tar.gz' libfontenc_1.1.8.orig.tar.gz 405168 SHA256:b55039f70959a1b2f02f4ec8db071e5170528d2c9180b30575dccf7510d7fb9f
'http://deb.debian.org/debian/pool/main/libf/libfontenc/libfontenc_1.1.8.orig.tar.gz.asc' libfontenc_1.1.8.orig.tar.gz.asc 833 SHA256:3e42c5de5281768f2ba83c7519a2b572de04d4392a60167fa50a4f582d58025f
'http://deb.debian.org/debian/pool/main/libf/libfontenc/libfontenc_1.1.8-1.diff.gz' libfontenc_1.1.8-1.diff.gz 12021 SHA256:3061495a0800059dbca1295be18aaf22e342d2c11e2c2317ee0a8ea02ecae209
```

Other potentially useful URLs:

- https://sources.debian.net/src/libfontenc/1:1.1.8-1/ (for browsing the source)
- https://sources.debian.net/src/libfontenc/1:1.1.8-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libfontenc/1:1.1.8-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libheif=1.19.8-1+deb13u1`

Binary Packages:

- `libheif-plugin-dav1d:amd64=1.19.8-1+deb13u1`
- `libheif-plugin-libde265:amd64=1.19.8-1+deb13u1`
- `libheif1:amd64=1.19.8-1+deb13u1`

Licenses: (parsed from: `/usr/share/doc/libheif-plugin-dav1d/copyright`, `/usr/share/doc/libheif-plugin-libde265/copyright`, `/usr/share/doc/libheif1/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-4-Clause-UC`
- `BSL-1.0`
- `Expat`
- `GPL-3`
- `GPL-3+`
- `LGPL-3`
- `LGPL-3+`

Source:

```console
$ apt-get source -qq --print-uris libheif=1.19.8-1+deb13u1
'http://deb.debian.org/debian-security/pool/updates/main/libh/libheif/libheif_1.19.8-1%2bdeb13u1.dsc' libheif_1.19.8-1+deb13u1.dsc 3289 SHA256:906a8840e79669856631707990f50d92d7adc25516206199342b17e30271eec6
'http://deb.debian.org/debian-security/pool/updates/main/libh/libheif/libheif_1.19.8.orig.tar.gz' libheif_1.19.8.orig.tar.gz 1718218 SHA256:6c4a5b08e6eae66d199977468859dea3b5e059081db8928f7c7c16e53836c906
'http://deb.debian.org/debian-security/pool/updates/main/libh/libheif/libheif_1.19.8-1%2bdeb13u1.debian.tar.xz' libheif_1.19.8-1+deb13u1.debian.tar.xz 26196 SHA256:acb2f40072ef11a679fa100c64c51f29a5fedd0359e5a426e5d5f66377bf6f43
```

Other potentially useful URLs:

- https://sources.debian.net/src/libheif/1.19.8-1+deb13u1/ (for browsing the source)
- https://sources.debian.net/src/libheif/1.19.8-1+deb13u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libheif/1.19.8-1+deb13u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libice=2:1.1.1-1`

Binary Packages:

- `libice6:amd64=2:1.1.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libice=2:1.1.1-1
'http://deb.debian.org/debian/pool/main/libi/libice/libice_1.1.1-1.dsc' libice_1.1.1-1.dsc 2021 SHA256:88722aa66d7f1807d1b0d3ae5bc62f8f06424dc5e970b1c73a0ea2fdf171f0b8
'http://deb.debian.org/debian/pool/main/libi/libice/libice_1.1.1.orig.tar.gz' libice_1.1.1.orig.tar.gz 489944 SHA256:04fbd34a11ba08b9df2e3cdb2055c2e3c1c51b3257f683d7fcf42dabcf8e1210
'http://deb.debian.org/debian/pool/main/libi/libice/libice_1.1.1-1.diff.gz' libice_1.1.1-1.diff.gz 7355 SHA256:8ce8ffaf775b0868e0633053fcd0755850938ddda9d977232e536a206c063d18
```

Other potentially useful URLs:

- https://sources.debian.net/src/libice/2:1.1.1-1/ (for browsing the source)
- https://sources.debian.net/src/libice/2:1.1.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libice/2:1.1.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libidn2=2.3.8-2`

Binary Packages:

- `libidn2-0:amd64=2.3.8-2`

Licenses: (parsed from: `/usr/share/doc/libidn2-0/copyright`)

- `Expat`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-3`
- `LGPL-3+`
- `Unicode`

Source:

```console
$ apt-get source -qq --print-uris libidn2=2.3.8-2
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.3.8-2.dsc' libidn2_2.3.8-2.dsc 2961 SHA256:af3327227dbbf12fff281f71b7feb90371d2dbe597f3129e38b93c3faadcea61
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.3.8.orig.tar.gz' libidn2_2.3.8.orig.tar.gz 718637 SHA256:bbad1678d35d28e2c62e6a2577083829461402d9e47b908791c55314a5cb5e04
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.3.8.orig.tar.gz.asc' libidn2_2.3.8.orig.tar.gz.asc 1223 SHA256:8995cab7db361d9d6989eab26d9b521c74236960a5d78250121c8d369b013bd8
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.3.8-2.debian.tar.xz' libidn2_2.3.8-2.debian.tar.xz 17532 SHA256:ab95c2bab110557505ba437bc162f67a5a85fa9d8a2e55501245dc7f0fe2e412
```

Other potentially useful URLs:

- https://sources.debian.net/src/libidn2/2.3.8-2/ (for browsing the source)
- https://sources.debian.net/src/libidn2/2.3.8-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libidn2/2.3.8-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libidn=1.43-1`

Binary Packages:

- `libidn12:amd64=1.43-1`

Licenses: (parsed from: `/usr/share/doc/libidn12/copyright`)

- `Expat`
- `FSFAP`
- `FSFAP-no-warranty`
- `GFDL-1.3`
- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-2+-Autoconf`
- `GPL-2+-Autoconf-Archive`
- `GPL-3`
- `GPL-3+`
- `LGPL-3`
- `LGPL-3+`

Source:

```console
$ apt-get source -qq --print-uris libidn=1.43-1
'http://deb.debian.org/debian/pool/main/libi/libidn/libidn_1.43-1.dsc' libidn_1.43-1.dsc 2889 SHA256:f8684cc2b7712a85b290ff0bd209f48d03b1e9330158709f34d650fd8e85031e
'http://deb.debian.org/debian/pool/main/libi/libidn/libidn_1.43.orig.tar.gz' libidn_1.43.orig.tar.gz 765014 SHA256:8f8f3b2d6bd3c04ea9672031b35eec63420c65e0c59aa8db8724475d1dc865d2
'http://deb.debian.org/debian/pool/main/libi/libidn/libidn_1.43.orig.tar.gz.asc' libidn_1.43.orig.tar.gz.asc 1223 SHA256:f4080117d52773c92782ee817fcaca611672df66d023f0a71567a724dbc8bd26
'http://deb.debian.org/debian/pool/main/libi/libidn/libidn_1.43-1.debian.tar.xz' libidn_1.43-1.debian.tar.xz 17124 SHA256:a8f9529cfd7ee42cd840f2960f027029fb825f4af676acdb20993d9242657c9d
```

Other potentially useful URLs:

- https://sources.debian.net/src/libidn/1.43-1/ (for browsing the source)
- https://sources.debian.net/src/libidn/1.43-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libidn/1.43-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libjpeg-turbo=1:2.1.5-4`

Binary Packages:

- `libjpeg62-turbo:amd64=1:2.1.5-4`

Licenses: (parsed from: `/usr/share/doc/libjpeg62-turbo/copyright`)

- `BSD-3-clause`
- `BSD-BY-LC-NE`
- `Expat`
- `NTP`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris libjpeg-turbo=1:2.1.5-4
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_2.1.5-4.dsc' libjpeg-turbo_2.1.5-4.dsc 2508 SHA256:26cbf22aa3b3e327df072513f14a5ddfb4a7b9a3d78c46a5dccfd711c13ac743
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_2.1.5.orig.tar.gz' libjpeg-turbo_2.1.5.orig.tar.gz 2264471 SHA256:254f3642b04e309fee775123133c6464181addc150499561020312ec61c1bf7c
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_2.1.5-4.debian.tar.xz' libjpeg-turbo_2.1.5-4.debian.tar.xz 108128 SHA256:739e7dc22904dccdc5ab105de57a6e4c1515c0e841e68226e6410ff4976e0e91
```

Other potentially useful URLs:

- https://sources.debian.net/src/libjpeg-turbo/1:2.1.5-4/ (for browsing the source)
- https://sources.debian.net/src/libjpeg-turbo/1:2.1.5-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libjpeg-turbo/1:2.1.5-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `liblqr=0.4.2-2.1`

Binary Packages:

- `liblqr-1-0:amd64=0.4.2-2.1+b2`

Licenses: (parsed from: `/usr/share/doc/liblqr-1-0/copyright`)

- `GPL-3`
- `GPLv3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris liblqr=0.4.2-2.1
'http://deb.debian.org/debian/pool/main/libl/liblqr/liblqr_0.4.2-2.1.dsc' liblqr_0.4.2-2.1.dsc 2095 SHA256:c54c34cd2f7470a29366eeacde2ca4859a97d684a406fb81a918b970c01d617c
'http://deb.debian.org/debian/pool/main/libl/liblqr/liblqr_0.4.2.orig.tar.gz' liblqr_0.4.2.orig.tar.gz 439884 SHA256:d4c22373432cca749e4326cd41fce365e6ff857c0bfd7a5302b8eb34b69f0336
'http://deb.debian.org/debian/pool/main/libl/liblqr/liblqr_0.4.2-2.1.debian.tar.xz' liblqr_0.4.2-2.1.debian.tar.xz 5300 SHA256:284a002f1ecac63ac17b1aafbb230da9ce7bd9efe2d5b94e8cad49b607eb2564
```

Other potentially useful URLs:

- https://sources.debian.net/src/liblqr/0.4.2-2.1/ (for browsing the source)
- https://sources.debian.net/src/liblqr/0.4.2-2.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/liblqr/0.4.2-2.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libmd=1.1.0-2`

Binary Packages:

- `libmd0:amd64=1.1.0-2+b1`

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
$ apt-get source -qq --print-uris libmd=1.1.0-2
'http://deb.debian.org/debian/pool/main/libm/libmd/libmd_1.1.0-2.dsc' libmd_1.1.0-2.dsc 2280 SHA256:46cc951cd6d71bbfeff4522de66f968fb92601ec4cc622b07f6ac0a2a36ac5f0
'http://deb.debian.org/debian/pool/main/libm/libmd/libmd_1.1.0.orig.tar.xz' libmd_1.1.0.orig.tar.xz 271228 SHA256:1bd6aa42275313af3141c7cf2e5b964e8b1fd488025caf2f971f43b00776b332
'http://deb.debian.org/debian/pool/main/libm/libmd/libmd_1.1.0.orig.tar.xz.asc' libmd_1.1.0.orig.tar.xz.asc 833 SHA256:402fd3024e43ab975733d09e661804a58ca58697194e4b15216b1217cfe1dadb
'http://deb.debian.org/debian/pool/main/libm/libmd/libmd_1.1.0-2.debian.tar.xz' libmd_1.1.0-2.debian.tar.xz 8244 SHA256:3b6ff35fc921eb5450fa9bf2d300c9e058e3771f96f8f13f759768fadd53324c
```

Other potentially useful URLs:

- https://sources.debian.net/src/libmd/1.1.0-2/ (for browsing the source)
- https://sources.debian.net/src/libmd/1.1.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libmd/1.1.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libmemcached=1.1.4-1.1`

Binary Packages:

- `libhashkit2t64:amd64=1.1.4-1.1+b2`
- `libmemcached11t64:amd64=1.1.4-1.1+b2`

Licenses: (parsed from: `/usr/share/doc/libhashkit2t64/copyright`, `/usr/share/doc/libmemcached11t64/copyright`)

- `BSD-3-clause`
- `BSD-3-clause-Sun`
- `BSD-3-clause-TangentOrg`
- `Bob-Jenkins`
- `Paul-Hsieh`
- `RSA-Data-Security`

Source:

```console
$ apt-get source -qq --print-uris libmemcached=1.1.4-1.1
'http://deb.debian.org/debian/pool/main/libm/libmemcached/libmemcached_1.1.4-1.1.dsc' libmemcached_1.1.4-1.1.dsc 2393 SHA256:535bba4242525ff7071b19d9fef30cb06721032b37d3ce7cb2cf97166db8e025
'http://deb.debian.org/debian/pool/main/libm/libmemcached/libmemcached_1.1.4.orig.tar.gz' libmemcached_1.1.4.orig.tar.gz 530319 SHA256:285b21a138fc693ea44b0ea5d050e2d796ca8ee78023724a2bd385f25fbd1da1
'http://deb.debian.org/debian/pool/main/libm/libmemcached/libmemcached_1.1.4-1.1.debian.tar.xz' libmemcached_1.1.4-1.1.debian.tar.xz 11544 SHA256:daa656bf2c569616995bd76c9b7c11e87489650f51edab9a1b48b7c3163ae76f
```

Other potentially useful URLs:

- https://sources.debian.net/src/libmemcached/1.1.4-1.1/ (for browsing the source)
- https://sources.debian.net/src/libmemcached/1.1.4-1.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libmemcached/1.1.4-1.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libonig=6.9.9-1`

Binary Packages:

- `libonig5:amd64=6.9.9-1+b1`

Licenses: (parsed from: `/usr/share/doc/libonig5/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libonig=6.9.9-1
'http://deb.debian.org/debian/pool/main/libo/libonig/libonig_6.9.9-1.dsc' libonig_6.9.9-1.dsc 1862 SHA256:c20de5d65f043340e776db59d6cfd1599a9e5260f853e48cef9149e13c4bfe06
'http://deb.debian.org/debian/pool/main/libo/libonig/libonig_6.9.9.orig.tar.gz' libonig_6.9.9.orig.tar.gz 645616 SHA256:001aa1202e78448f4c0bf1a48c76e556876b36f16d92ce3207eccfd61d99f2a0
'http://deb.debian.org/debian/pool/main/libo/libonig/libonig_6.9.9-1.debian.tar.xz' libonig_6.9.9-1.debian.tar.xz 8960 SHA256:01be609556b8e1f175464054bf87f7d64dc06ae01b2f78a6f731a837a4582a19
```

Other potentially useful URLs:

- https://sources.debian.net/src/libonig/6.9.9-1/ (for browsing the source)
- https://sources.debian.net/src/libonig/6.9.9-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libonig/6.9.9-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libpaper=2.2.5-0.3`

Binary Packages:

- `libpaper2:amd64=2.2.5-0.3+b2`

Licenses: (parsed from: `/usr/share/doc/libpaper2/copyright`)

- `Expat`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `X11`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libpaper=2.2.5-0.3
'http://deb.debian.org/debian/pool/main/libp/libpaper/libpaper_2.2.5-0.3.dsc' libpaper_2.2.5-0.3.dsc 1863 SHA256:c81d68db130d6930282c46a4ce471c198193ca0e22d2659245f5bc82464931fe
'http://deb.debian.org/debian/pool/main/libp/libpaper/libpaper_2.2.5.orig.tar.xz' libpaper_2.2.5.orig.tar.xz 524008 SHA256:c41cd29f49bb8c2fbc14964a6307451dfd3cada15c1edcc82de878f937cca6a3
'http://deb.debian.org/debian/pool/main/libp/libpaper/libpaper_2.2.5-0.3.debian.tar.xz' libpaper_2.2.5-0.3.debian.tar.xz 25072 SHA256:f34d1a3b1125977ddd30d72aac9cd1105165f7368b58f51c5c55160442d4a31f
```

Other potentially useful URLs:

- https://sources.debian.net/src/libpaper/2.2.5-0.3/ (for browsing the source)
- https://sources.debian.net/src/libpaper/2.2.5-0.3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpaper/2.2.5-0.3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libpng1.6=1.6.48-1+deb13u5`

Binary Packages:

- `libpng16-16t64:amd64=1.6.48-1+deb13u5`

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
$ apt-get source -qq --print-uris libpng1.6=1.6.48-1+deb13u5
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.48-1%2bdeb13u5.dsc' libpng1.6_1.6.48-1+deb13u5.dsc 2305 SHA256:746ec351ac044becb16725b903aee2c53815da9f89630767b6edbb317a50f98e
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.48.orig.tar.gz' libpng1.6_1.6.48.orig.tar.gz 1572923 SHA256:b17e99026055727e8cba99160c3a9a7f9af788e9f786daeadded5a42243f1dd0
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.48-1%2bdeb13u5.debian.tar.xz' libpng1.6_1.6.48-1+deb13u5.debian.tar.xz 52468 SHA256:b38d5929b9a6139f2ce02a0e831d0f3f5365410b050dc429ea079a73253fe97a
```

Other potentially useful URLs:

- https://sources.debian.net/src/libpng1.6/1.6.48-1+deb13u5/ (for browsing the source)
- https://sources.debian.net/src/libpng1.6/1.6.48-1+deb13u5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpng1.6/1.6.48-1+deb13u5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libpsl=0.21.2-1.1`

Binary Packages:

- `libpsl5t64:amd64=0.21.2-1.1+b1`

Licenses: (parsed from: `/usr/share/doc/libpsl5t64/copyright`)

- `Chromium`
- `MIT`
- `gnulib`

Source:

```console
$ apt-get source -qq --print-uris libpsl=0.21.2-1.1
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.21.2-1.1.dsc' libpsl_0.21.2-1.1.dsc 2285 SHA256:b9b5496ca2bffb827cb0b2d997469908a2b7a7475c20a11c02f9dcd1ed2a0cc9
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.21.2.orig.tar.xz' libpsl_0.21.2.orig.tar.xz 1870352 SHA256:11e34380f2c81d6e72c710464aae3b680df4ddcc1007826c630fb03c7ca6aa54
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.21.2-1.1.debian.tar.xz' libpsl_0.21.2-1.1.debian.tar.xz 12120 SHA256:0eccab147b6dfbfb7f5ad40fb5bd9f888d72a0fe44e7d1801811c34a9acad1a7
```

Other potentially useful URLs:

- https://sources.debian.net/src/libpsl/0.21.2-1.1/ (for browsing the source)
- https://sources.debian.net/src/libpsl/0.21.2-1.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpsl/0.21.2-1.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libraw=0.21.4-2`

Binary Packages:

- `libraw23t64:amd64=0.21.4-2`

Licenses: (parsed from: `/usr/share/doc/libraw23t64/copyright`)

- `CC-BY-SA-3.0`
- `CDDL-1.0`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libraw=0.21.4-2
'http://deb.debian.org/debian/pool/main/libr/libraw/libraw_0.21.4-2.dsc' libraw_0.21.4-2.dsc 2187 SHA256:bf53d67929e9568514c0c96bd6ec516be45d0ab7461b00db87d51889eb825745
'http://deb.debian.org/debian/pool/main/libr/libraw/libraw_0.21.4.orig.tar.gz' libraw_0.21.4.orig.tar.gz 566327 SHA256:8baeb5253c746441fadad62e9c5c43ff4e414e41b0c45d6dcabccb542b2dff4b
'http://deb.debian.org/debian/pool/main/libr/libraw/libraw_0.21.4-2.debian.tar.xz' libraw_0.21.4-2.debian.tar.xz 24312 SHA256:7cc33aaff6d53f46a0b106b7e9bde12bf23e6774a99114dbe3f22e53e9c3fdb5
```

Other potentially useful URLs:

- https://sources.debian.net/src/libraw/0.21.4-2/ (for browsing the source)
- https://sources.debian.net/src/libraw/0.21.4-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libraw/0.21.4-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libseccomp=2.6.0-2`

Binary Packages:

- `libseccomp2:amd64=2.6.0-2`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.6.0-2
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.6.0-2.dsc' libseccomp_2.6.0-2.dsc 2622 SHA256:d05f94536558d34fa339326c6f958a3357b51efac8234470b5d97b69472db765
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.6.0.orig.tar.gz' libseccomp_2.6.0.orig.tar.gz 685655 SHA256:83b6085232d1588c379dc9b9cae47bb37407cf262e6e74993c61ba72d2a784dc
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.6.0.orig.tar.gz.asc' libseccomp_2.6.0.orig.tar.gz.asc 833 SHA256:52e338fa958128293cbd25d2be189e34da41c4f4abbb1b641cf58f373c001f94
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.6.0-2.debian.tar.xz' libseccomp_2.6.0-2.debian.tar.xz 20800 SHA256:ed705ec85719403e77d004c99c0b06b795f090c66fcae265c4bcf37ffea9cc27
```

Other potentially useful URLs:

- https://sources.debian.net/src/libseccomp/2.6.0-2/ (for browsing the source)
- https://sources.debian.net/src/libseccomp/2.6.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libseccomp/2.6.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libselinux=3.8.1-1`

Binary Packages:

- `libselinux1:amd64=3.8.1-1`
- `libselinux1-dev:amd64=3.8.1-1`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`, `/usr/share/doc/libselinux1-dev/copyright`)

- `GPL-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libselinux=3.8.1-1
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_3.8.1-1.dsc' libselinux_3.8.1-1.dsc 3013 SHA256:e430b782a396e266f86c32fa779efadebfd40e6a0d10ddbd786fc47905f723b9
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_3.8.1.orig.tar.gz' libselinux_3.8.1.orig.tar.gz 204411 SHA256:ec2d2789f931152d21c1db1eb4bc202ce4eccede34d9be9e360e3b45243cee2c
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_3.8.1.orig.tar.gz.asc' libselinux_3.8.1.orig.tar.gz.asc 833 SHA256:7f983714a780d89f7677e7ba140ce29974022b8ba225f60246b6c33de1477dd6
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_3.8.1-1.debian.tar.xz' libselinux_3.8.1-1.debian.tar.xz 37812 SHA256:1af25952374f083cf3d6d0edd5beb938f2e53c30eb404afa1e32fcd1cb127db7
```

Other potentially useful URLs:

- https://sources.debian.net/src/libselinux/3.8.1-1/ (for browsing the source)
- https://sources.debian.net/src/libselinux/3.8.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libselinux/3.8.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsemanage=3.8.1-1`

Binary Packages:

- `libsemanage-common=3.8.1-1`
- `libsemanage2:amd64=3.8.1-1`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage2/copyright`)

- `GPL-2`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=3.8.1-1
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_3.8.1-1.dsc' libsemanage_3.8.1-1.dsc 2992 SHA256:b22bfc4ab2cd47fac46cc9e45d418bb30eb540c3e5c1052d6c669f53e180e4e5
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_3.8.1.orig.tar.gz' libsemanage_3.8.1.orig.tar.gz 184618 SHA256:7b39127b219cc70bfd935a4af6b0f2ba83d4b35c916f253c7e942c23ab490f07
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_3.8.1.orig.tar.gz.asc' libsemanage_3.8.1.orig.tar.gz.asc 833 SHA256:5b4856cb5823fba1b247ff1b5355692706da68a4df61a936d1b33b1f9e9b2f3d
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_3.8.1-1.debian.tar.xz' libsemanage_3.8.1-1.debian.tar.xz 37572 SHA256:6d1e5bd4d06bbd25ced1b75fba394c3e2157bd604cf1cd33fb581793d70bd7b8
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsemanage/3.8.1-1/ (for browsing the source)
- https://sources.debian.net/src/libsemanage/3.8.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsemanage/3.8.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsepol=3.8.1-1`

Binary Packages:

- `libsepol-dev:amd64=3.8.1-1`
- `libsepol2:amd64=3.8.1-1`

Licenses: (parsed from: `/usr/share/doc/libsepol-dev/copyright`, `/usr/share/doc/libsepol2/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris libsepol=3.8.1-1
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_3.8.1-1.dsc' libsepol_3.8.1-1.dsc 2347 SHA256:0351ffc8c3f66918c9e4ecae9244ae2af27857d8795e424e384ddda794718c34
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_3.8.1.orig.tar.gz' libsepol_3.8.1.orig.tar.gz 513830 SHA256:0e78705305f955abd4c0654d37a5477ee26349ab74db9e2b03a7868897ae1ddf
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_3.8.1.orig.tar.gz.asc' libsepol_3.8.1.orig.tar.gz.asc 833 SHA256:183f6cf96054986704d4224f89518e9139370385c43a533078f45ca688dca8b6
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_3.8.1-1.debian.tar.xz' libsepol_3.8.1-1.debian.tar.xz 21432 SHA256:7aac515a941f8dd19581b16c664b3098962e6a8ed7fa0afdafd306a85c667619
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsepol/3.8.1-1/ (for browsing the source)
- https://sources.debian.net/src/libsepol/3.8.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsepol/3.8.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsm=2:1.2.6-1`

Binary Packages:

- `libsm6:amd64=2:1.2.6-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libsm=2:1.2.6-1
'http://deb.debian.org/debian/pool/main/libs/libsm/libsm_1.2.6-1.dsc' libsm_1.2.6-1.dsc 2302 SHA256:d0ab34a54b145ea728242638b878d05f84bcb71feabf075c5e9510cc608aab93
'http://deb.debian.org/debian/pool/main/libs/libsm/libsm_1.2.6.orig.tar.gz' libsm_1.2.6.orig.tar.gz 467497 SHA256:166b4b50d606cdd83f1ddc61b5b9162600034f848b3e32ccbb0e63536b7d6cdd
'http://deb.debian.org/debian/pool/main/libs/libsm/libsm_1.2.6.orig.tar.gz.asc' libsm_1.2.6.orig.tar.gz.asc 833 SHA256:b5e59abae8a79ae9901e73178dacf5af9d7c3b91704fd86de85d305fd7a17a7f
'http://deb.debian.org/debian/pool/main/libs/libsm/libsm_1.2.6-1.diff.gz' libsm_1.2.6-1.diff.gz 13291 SHA256:7cc1d915c18fa6c34cc57c44ca844b62e99fba79b70c0941466d3747e15f2195
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsm/2:1.2.6-1/ (for browsing the source)
- https://sources.debian.net/src/libsm/2:1.2.6-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsm/2:1.2.6-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsodium=1.0.18-1+deb13u1`

Binary Packages:

- `libsodium23:amd64=1.0.18-1+deb13u1`

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
$ apt-get source -qq --print-uris libsodium=1.0.18-1+deb13u1
'http://deb.debian.org/debian/pool/main/libs/libsodium/libsodium_1.0.18-1%2bdeb13u1.dsc' libsodium_1.0.18-1+deb13u1.dsc 1945 SHA256:6954dd20ba6576b98802cd89fb7661c724d86e628da4af6cea6fac195534b628
'http://deb.debian.org/debian/pool/main/libs/libsodium/libsodium_1.0.18.orig.tar.gz' libsodium_1.0.18.orig.tar.gz 1619527 SHA256:d59323c6b712a1519a5daf710b68f5e7fde57040845ffec53850911f10a5d4f4
'http://deb.debian.org/debian/pool/main/libs/libsodium/libsodium_1.0.18-1%2bdeb13u1.debian.tar.xz' libsodium_1.0.18-1+deb13u1.debian.tar.xz 8252 SHA256:86110bbca36b16567bc35971486c4e6bd4aaf59e74310bc0faf76840ac4e2afe
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsodium/1.0.18-1+deb13u1/ (for browsing the source)
- https://sources.debian.net/src/libsodium/1.0.18-1+deb13u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsodium/1.0.18-1+deb13u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libssh2=1.11.1-1+deb13u1`

Binary Packages:

- `libssh2-1t64:amd64=1.11.1-1+deb13u1`

Licenses: (parsed from: `/usr/share/doc/libssh2-1t64/copyright`)

- `BSD3`
- `ISC`

Source:

```console
$ apt-get source -qq --print-uris libssh2=1.11.1-1+deb13u1
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.11.1-1%2bdeb13u1.dsc' libssh2_1.11.1-1+deb13u1.dsc 2351 SHA256:b49dae094697248bd4d3665dd73d13b27739237701b939bc7c1ebedf17dc81e4
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.11.1.orig.tar.gz' libssh2_1.11.1.orig.tar.gz 1093012 SHA256:d9ec76cbe34db98eec3539fe2c899d26b0c837cb3eb466a56b0f109cabf658f7
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.11.1.orig.tar.gz.asc' libssh2_1.11.1.orig.tar.gz.asc 488 SHA256:f5618c9356a1d5a8059d6cf64015d86547f06b2b8b1f542fbbaf381a736c8075
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.11.1-1%2bdeb13u1.debian.tar.xz' libssh2_1.11.1-1+deb13u1.debian.tar.xz 19312 SHA256:095817cecf4b527b68208d72987439622877dde62cd88afe8822efc3d775e013
```

Other potentially useful URLs:

- https://sources.debian.net/src/libssh2/1.11.1-1+deb13u1/ (for browsing the source)
- https://sources.debian.net/src/libssh2/1.11.1-1+deb13u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libssh2/1.11.1-1+deb13u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libtasn1-6=4.20.0-2+deb13u1`

Binary Packages:

- `libtasn1-6:amd64=4.20.0-2+deb13u1`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=4.20.0-2+deb13u1
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.20.0-2%2bdeb13u1.dsc' libtasn1-6_4.20.0-2+deb13u1.dsc 2697 SHA256:3f8b0e7ddd5325278b1164f260e45e785e5907309d76b703c8716d068f9cd7e9
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.20.0.orig.tar.gz' libtasn1-6_4.20.0.orig.tar.gz 1783873 SHA256:92e0e3bd4c02d4aeee76036b2ddd83f0c732ba4cda5cb71d583272b23587a76c
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.20.0.orig.tar.gz.asc' libtasn1-6_4.20.0.orig.tar.gz.asc 1223 SHA256:0faa628b6a3e4bb84ca5f00f127c6dfa1fc96a7ad88030dd7aa048753cf4b201
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.20.0-2%2bdeb13u1.debian.tar.xz' libtasn1-6_4.20.0-2+deb13u1.debian.tar.xz 19196 SHA256:c1ba650436b6a9fc5fac5ea494ab20caf7adb29a3713067e8b665d2f2f325cb1
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtasn1-6/4.20.0-2+deb13u1/ (for browsing the source)
- https://sources.debian.net/src/libtasn1-6/4.20.0-2+deb13u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtasn1-6/4.20.0-2+deb13u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libtool=2.5.4-4`

Binary Packages:

- `libltdl7:amd64=2.5.4-4`

Licenses: (parsed from: `/usr/share/doc/libltdl7/copyright`)

- `GFDL-1.3`
- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libtool=2.5.4-4
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.5.4-4.dsc' libtool_2.5.4-4.dsc 2232 SHA256:37d98d7c45d1c12c0b7bd55fb6a90fa05aff8aa9ab2bbd9617ce7a6233b1965e
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.5.4.orig.tar.xz' libtool_2.5.4.orig.tar.xz 1069572 SHA256:d9189031edeaa6aa74695b2aeb80a8c26df50b29d8b72c991667e01adecea42c
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.5.4-4.debian.tar.xz' libtool_2.5.4-4.debian.tar.xz 37504 SHA256:93e8e286db1322a4f17e3120654ec2664a721e6684c017cb37d471daeb380f8e
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtool/2.5.4-4/ (for browsing the source)
- https://sources.debian.net/src/libtool/2.5.4-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtool/2.5.4-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libunistring=1.3-2`

Binary Packages:

- `libunistring5:amd64=1.3-2`

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
$ apt-get source -qq --print-uris libunistring=1.3-2
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_1.3-2.dsc' libunistring_1.3-2.dsc 2215 SHA256:0c09938cace7fbbf36c73af8bc2243fd2f70d3fe336539e8d4c10d0e61742571
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_1.3.orig.tar.xz' libunistring_1.3.orig.tar.xz 2753448 SHA256:f245786c831d25150f3dfb4317cda1acc5e3f79a5da4ad073ddca58886569527
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_1.3.orig.tar.xz.asc' libunistring_1.3.orig.tar.xz.asc 833 SHA256:62201b5b7ce9c0b033c50cefa5d7769dff4b7cee8205572e0cf917653cae9e33
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_1.3-2.debian.tar.xz' libunistring_1.3-2.debian.tar.xz 28480 SHA256:feaf9761d365430178ea46feefeb602b435c21acf5924918e2257238e0378fc9
```

Other potentially useful URLs:

- https://sources.debian.net/src/libunistring/1.3-2/ (for browsing the source)
- https://sources.debian.net/src/libunistring/1.3-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libunistring/1.3-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libwebp=1.5.0-0.1`

Binary Packages:

- `libsharpyuv0:amd64=1.5.0-0.1`
- `libwebp7:amd64=1.5.0-0.1`
- `libwebpdemux2:amd64=1.5.0-0.1`
- `libwebpmux3:amd64=1.5.0-0.1`

Licenses: (parsed from: `/usr/share/doc/libsharpyuv0/copyright`, `/usr/share/doc/libwebp7/copyright`, `/usr/share/doc/libwebpdemux2/copyright`, `/usr/share/doc/libwebpmux3/copyright`)

- `Apache-2.0`
- `BSD-3-Clause`

Source:

```console
$ apt-get source -qq --print-uris libwebp=1.5.0-0.1
'http://deb.debian.org/debian/pool/main/libw/libwebp/libwebp_1.5.0-0.1.dsc' libwebp_1.5.0-0.1.dsc 2865 SHA256:2e7be6f202ebfaac738278bebc10b151768aef60857e63734018ced4d59b9c9a
'http://deb.debian.org/debian/pool/main/libw/libwebp/libwebp_1.5.0.orig.tar.gz' libwebp_1.5.0.orig.tar.gz 4267494 SHA256:7d6fab70cf844bf6769077bd5d7a74893f8ffd4dfb42861745750c63c2a5c92c
'http://deb.debian.org/debian/pool/main/libw/libwebp/libwebp_1.5.0.orig.tar.gz.asc' libwebp_1.5.0.orig.tar.gz.asc 833 SHA256:1383ff0b093f57d65f5a902e1bc51c550795ce4713b38712c60bb9151e15dcd6
'http://deb.debian.org/debian/pool/main/libw/libwebp/libwebp_1.5.0-0.1.debian.tar.xz' libwebp_1.5.0-0.1.debian.tar.xz 11284 SHA256:0dc0e727dc5f5e04ddd41b482f964626e92658099981b57ddd156b530ae01826
```

Other potentially useful URLs:

- https://sources.debian.net/src/libwebp/1.5.0-0.1/ (for browsing the source)
- https://sources.debian.net/src/libwebp/1.5.0-0.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libwebp/1.5.0-0.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libx11=2:1.8.12-1`

Binary Packages:

- `libx11-6:amd64=2:1.8.12-1`
- `libx11-data=2:1.8.12-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libx11=2:1.8.12-1
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.8.12-1.dsc' libx11_1.8.12-1.dsc 2490 SHA256:745fb04a4b0f8942183f6ac84ebd9e2dae1416c37f90abeaacabb57dc11286f5
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.8.12.orig.tar.gz' libx11_1.8.12.orig.tar.gz 3215077 SHA256:220fbcf54b6e4d8dc40076ff4ab87954358019982490b33c7802190b62d89ce1
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.8.12.orig.tar.gz.asc' libx11_1.8.12.orig.tar.gz.asc 833 SHA256:c3d177c8efcef9d3a1963956de0edc56ef2dd63d13dc39d3d7473dc9011fca65
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.8.12-1.diff.gz' libx11_1.8.12-1.diff.gz 74466 SHA256:2231b0ec8ce2eb380256b67eb30c05d90b0e92d75dd583c24e0bf640b3078977
```

Other potentially useful URLs:

- https://sources.debian.net/src/libx11/2:1.8.12-1/ (for browsing the source)
- https://sources.debian.net/src/libx11/2:1.8.12-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libx11/2:1.8.12-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxau=1:1.0.11-1`

Binary Packages:

- `libxau6:amd64=1:1.0.11-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxau=1:1.0.11-1
'http://deb.debian.org/debian/pool/main/libx/libxau/libxau_1.0.11-1.dsc' libxau_1.0.11-1.dsc 2213 SHA256:6058ab58b243ae2b175eee067b868f37b74cd4e8cc40b90607ce6d9ee99c50f9
'http://deb.debian.org/debian/pool/main/libx/libxau/libxau_1.0.11.orig.tar.gz' libxau_1.0.11.orig.tar.gz 404973 SHA256:3a321aaceb803577a4776a5efe78836eb095a9e44bbc7a465d29463e1a14f189
'http://deb.debian.org/debian/pool/main/libx/libxau/libxau_1.0.11.orig.tar.gz.asc' libxau_1.0.11.orig.tar.gz.asc 358 SHA256:72320a0c036cc2d36bebdd7d279c402620e2f3553f639581dfb23736803ce258
'http://deb.debian.org/debian/pool/main/libx/libxau/libxau_1.0.11-1.diff.gz' libxau_1.0.11-1.diff.gz 22671 SHA256:0af3f94102f73c585c48a6b17f54c92e154f6b560a061871d437bd720edd5314
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxau/1:1.0.11-1/ (for browsing the source)
- https://sources.debian.net/src/libxau/1:1.0.11-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxau/1:1.0.11-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxcb=1.17.0-2`

Binary Packages:

- `libxcb1:amd64=1.17.0-2+b1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcb=1.17.0-2
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.17.0-2.dsc' libxcb_1.17.0-2.dsc 5318 SHA256:b2728d156f79d2e757e7378cfcefca52bd570739d2efffa87e1aaeaf4f21de3a
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.17.0.orig.tar.gz' libxcb_1.17.0.orig.tar.gz 661593 SHA256:2c69287424c9e2128cb47ffe92171e10417041ec2963bceafb65cb3fcf8f0b85
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.17.0-2.diff.gz' libxcb_1.17.0-2.diff.gz 28069 SHA256:c5b33b67a61d0d1c1b624bf88a8150f4be1ba9b46e855e38f03a8f73858af558
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxcb/1.17.0-2/ (for browsing the source)
- https://sources.debian.net/src/libxcb/1.17.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxcb/1.17.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxcrypt=1:4.4.38-1`

Binary Packages:

- `libcrypt-dev:amd64=1:4.4.38-1`
- `libcrypt1:amd64=1:4.4.38-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcrypt=1:4.4.38-1
'http://deb.debian.org/debian/pool/main/libx/libxcrypt/libxcrypt_4.4.38-1.dsc' libxcrypt_4.4.38-1.dsc 1573 SHA256:feba1874a84616791c1c17f9a290c9e97562b2904b3b0200edc82a2db54f3f07
'http://deb.debian.org/debian/pool/main/libx/libxcrypt/libxcrypt_4.4.38.orig.tar.xz' libxcrypt_4.4.38.orig.tar.xz 394216 SHA256:6a275a356622c64ba9f693892215dbb399c003a7a4afeed9c4c74070eaab20f4
'http://deb.debian.org/debian/pool/main/libx/libxcrypt/libxcrypt_4.4.38-1.debian.tar.xz' libxcrypt_4.4.38-1.debian.tar.xz 8512 SHA256:6b87bcb5325e417ab3f4c01c364233444b4c9008a69ec1d6fababb3f6e693a5e
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxcrypt/1:4.4.38-1/ (for browsing the source)
- https://sources.debian.net/src/libxcrypt/1:4.4.38-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxcrypt/1:4.4.38-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxdmcp=1:1.1.5-1`

Binary Packages:

- `libxdmcp6:amd64=1:1.1.5-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxdmcp=1:1.1.5-1
'http://deb.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp_1.1.5-1.dsc' libxdmcp_1.1.5-1.dsc 2331 SHA256:d4a124405528eba3cf8794cc4fb8c4339ad74e79dd916fc0565b3a30c9fc1fe3
'http://deb.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp_1.1.5.orig.tar.gz' libxdmcp_1.1.5.orig.tar.gz 442597 SHA256:31a7abc4f129dcf6f27ae912c3eedcb94d25ad2e8f317f69df6eda0bc4e4f2f3
'http://deb.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp_1.1.5.orig.tar.gz.asc' libxdmcp_1.1.5.orig.tar.gz.asc 833 SHA256:0c7666da02d66ab785584cd16a6f9324f0d949555734e70b3b1385e525c7860b
'http://deb.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp_1.1.5-1.diff.gz' libxdmcp_1.1.5-1.diff.gz 9764 SHA256:7ec2e7da28c38723aa115ce2bd18389f7d73e716b0f50bec9e6e0d1b24f19954
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxdmcp/1:1.1.5-1/ (for browsing the source)
- https://sources.debian.net/src/libxdmcp/1:1.1.5-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxdmcp/1:1.1.5-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxext=2:1.3.4-1`

Binary Packages:

- `libxext6:amd64=2:1.3.4-1+b3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxext=2:1.3.4-1
'http://deb.debian.org/debian/pool/main/libx/libxext/libxext_1.3.4-1.dsc' libxext_1.3.4-1.dsc 2118 SHA256:25024f57d955739c6b858822bf93ec3c71400b56fc0d666826f440e3661fd7c0
'http://deb.debian.org/debian/pool/main/libx/libxext/libxext_1.3.4.orig.tar.gz' libxext_1.3.4.orig.tar.gz 494434 SHA256:8ef0789f282826661ff40a8eef22430378516ac580167da35cc948be9041aac1
'http://deb.debian.org/debian/pool/main/libx/libxext/libxext_1.3.4-1.diff.gz' libxext_1.3.4-1.diff.gz 12509 SHA256:b975870d6a7b791ffbe2d57efdf6e20c250c5e76d12e45b04c8655f593bb8337
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxext/2:1.3.4-1/ (for browsing the source)
- https://sources.debian.net/src/libxext/2:1.3.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxext/2:1.3.4-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxml2=2.12.7+dfsg+really2.9.14-2.1+deb13u3`

Binary Packages:

- `libxml2:amd64=2.12.7+dfsg+really2.9.14-2.1+deb13u3`

Licenses: (parsed from: `/usr/share/doc/libxml2/copyright`)

- `ISC`
- `MIT-1`

Source:

```console
$ apt-get source -qq --print-uris libxml2=2.12.7+dfsg+really2.9.14-2.1+deb13u3
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.12.7%2bdfsg%2breally2.9.14-2.1%2bdeb13u3.dsc' libxml2_2.12.7+dfsg+really2.9.14-2.1+deb13u3.dsc 3085 SHA256:04b1da890535b11e3db231f39114ee09e643badceff79441d749d0ca78efaaa5
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.12.7%2bdfsg%2breally2.9.14.orig.tar.xz' libxml2_2.12.7+dfsg+really2.9.14.orig.tar.xz 2351200 SHA256:4fe913dec8b1ab89d13b489b419a8203176ea39e931eaa0d25b17eafb9c279e9
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.12.7%2bdfsg%2breally2.9.14-2.1%2bdeb13u3.debian.tar.xz' libxml2_2.12.7+dfsg+really2.9.14-2.1+deb13u3.debian.tar.xz 58040 SHA256:3b6d265f482d6a8fbe3c056d2006fb3b563b4a838f7258b388ac5f0b29206921
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxml2/2.12.7+dfsg+really2.9.14-2.1+deb13u3/ (for browsing the source)
- https://sources.debian.net/src/libxml2/2.12.7+dfsg+really2.9.14-2.1+deb13u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxml2/2.12.7+dfsg+really2.9.14-2.1+deb13u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxt=1:1.2.1-1.2`

Binary Packages:

- `libxt6t64:amd64=1:1.2.1-1.2+b2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxt=1:1.2.1-1.2
'http://deb.debian.org/debian/pool/main/libx/libxt/libxt_1.2.1-1.2.dsc' libxt_1.2.1-1.2.dsc 2373 SHA256:780be4cf9b0b90757758691dc8196d85322b30a599c36fb8fe368b7060c7b774
'http://deb.debian.org/debian/pool/main/libx/libxt/libxt_1.2.1.orig.tar.gz' libxt_1.2.1.orig.tar.gz 1024473 SHA256:6da1bfa9dd0ed87430a5ce95b129485086394df308998ebe34d98e378e3dfb33
'http://deb.debian.org/debian/pool/main/libx/libxt/libxt_1.2.1.orig.tar.gz.asc' libxt_1.2.1.orig.tar.gz.asc 358 SHA256:da406cc94c25ca6773bb37c2055e2eb5665491f7ca6dfc9ea04f0f30ea3fd098
'http://deb.debian.org/debian/pool/main/libx/libxt/libxt_1.2.1-1.2.diff.gz' libxt_1.2.1-1.2.diff.gz 45635 SHA256:d4c510871909584398d88552b69cc5e92e124098ce544be93ef1743d0d112d4c
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxt/1:1.2.1-1.2/ (for browsing the source)
- https://sources.debian.net/src/libxt/1:1.2.1-1.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxt/1:1.2.1-1.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libzip=1.11.3-2`

Binary Packages:

- `libzip5:amd64=1.11.3-2`

Licenses: (parsed from: `/usr/share/doc/libzip5/copyright`)

- `Apache-2.0`
- `BSD-3-clause`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris libzip=1.11.3-2
'http://deb.debian.org/debian/pool/main/libz/libzip/libzip_1.11.3-2.dsc' libzip_1.11.3-2.dsc 2247 SHA256:9fed7b566de802b305fde039d7bc9a57941ec7b176a047ba8b1e51abbb994577
'http://deb.debian.org/debian/pool/main/libz/libzip/libzip_1.11.3.orig.tar.xz' libzip_1.11.3.orig.tar.xz 788520 SHA256:9509d878ba788271c8b5abca9cfde1720f075335686237b7e9a9e7210fe67c1b
'http://deb.debian.org/debian/pool/main/libz/libzip/libzip_1.11.3-2.debian.tar.xz' libzip_1.11.3-2.debian.tar.xz 7872 SHA256:126c48cc69b2d7e10400202b42ba0807c477f63350d8a0b6fd5a10cabe8dd037
```

Other potentially useful URLs:

- https://sources.debian.net/src/libzip/1.11.3-2/ (for browsing the source)
- https://sources.debian.net/src/libzip/1.11.3-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libzip/1.11.3-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libzstd=1.5.7+dfsg-1`

Binary Packages:

- `libzstd1:amd64=1.5.7+dfsg-1`
- `zstd=1.5.7+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/libzstd1/copyright`, `/usr/share/doc/zstd/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris libzstd=1.5.7+dfsg-1
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.5.7%2bdfsg-1.dsc' libzstd_1.5.7+dfsg-1.dsc 2371 SHA256:8f6ab97fa772d921334e50fa5756a0951e23c718dc913e43a228f28c1a23adf9
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.5.7%2bdfsg.orig.tar.xz' libzstd_1.5.7+dfsg.orig.tar.xz 1834780 SHA256:0c092ef267edce57ba7f3f2645c861f72eaf5e76273c6c3632869423464b90a5
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.5.7%2bdfsg-1.debian.tar.xz' libzstd_1.5.7+dfsg-1.debian.tar.xz 23036 SHA256:5e88424d919941291f79e1bfada6cb1a6f748671d9de7d4b7d931f361f183a15
```

Other potentially useful URLs:

- https://sources.debian.net/src/libzstd/1.5.7+dfsg-1/ (for browsing the source)
- https://sources.debian.net/src/libzstd/1.5.7+dfsg-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libzstd/1.5.7+dfsg-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `linux=6.12.100-1`

Binary Packages:

- `linux-libc-dev=6.12.100-1`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+-or-X11`
- `LGPL-2.1`
- `Unicode-data`
- `Xen-interface`

Source:

```console
$ apt-get source -qq --print-uris linux=6.12.100-1
'http://deb.debian.org/debian-security/pool/updates/main/l/linux/linux_6.12.100-1.dsc' linux_6.12.100-1.dsc 290418 SHA256:c31dab9bf96a8bd7603f1afd953f1f97fc5d1e9c0820ffac1fa1d1ad1e2f4dd1
'http://deb.debian.org/debian-security/pool/updates/main/l/linux/linux_6.12.100.orig.tar.xz' linux_6.12.100.orig.tar.xz 151348476 SHA256:d352d8271fafd61d76b01326fbddef24848d498adb8eace1cc208d04663cc22e
'http://deb.debian.org/debian-security/pool/updates/main/l/linux/linux_6.12.100-1.debian.tar.xz' linux_6.12.100-1.debian.tar.xz 1864380 SHA256:c345b6b78e43f8e80580e15869d17828ed8eff44ac62e00965c2033006230a15
```

Other potentially useful URLs:

- https://sources.debian.net/src/linux/6.12.100-1/ (for browsing the source)
- https://sources.debian.net/src/linux/6.12.100-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/linux/6.12.100-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lz4=1.10.0-4`

Binary Packages:

- `liblz4-1:amd64=1.10.0-4`

Licenses: (parsed from: `/usr/share/doc/liblz4-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lz4=1.10.0-4
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_1.10.0-4.dsc' lz4_1.10.0-4.dsc 1941 SHA256:394c635aa75a21cd5896680e48821c05336645072ae866b2717d53f36b9ba851
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_1.10.0.orig.tar.gz' lz4_1.10.0.orig.tar.gz 387114 SHA256:537512904744b35e232912055ccf8ec66d768639ff3abe5788d90d792ec5f48b
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_1.10.0-4.debian.tar.xz' lz4_1.10.0-4.debian.tar.xz 8080 SHA256:8d276c3254182c2c9cf319b9a6504cf257c56b441f37d3db8ad97d33d46a0911
```

Other potentially useful URLs:

- https://sources.debian.net/src/lz4/1.10.0-4/ (for browsing the source)
- https://sources.debian.net/src/lz4/1.10.0-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lz4/1.10.0-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `m4=1.4.19-8`

Binary Packages:

- `m4=1.4.19-8`

Licenses: (parsed from: `/usr/share/doc/m4/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris m4=1.4.19-8
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.19-8.dsc' m4_1.4.19-8.dsc 1783 SHA256:d7e5a26f911d98e7f333c736aa0fa0be4e9a69d88d464a93860a6d1a84e4a588
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.19.orig.tar.xz' m4_1.4.19.orig.tar.xz 1654908 SHA256:63aede5c6d33b6d9b13511cd0be2cac046f2e70fd0a07aa9573a04a82783af96
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.19.orig.tar.xz.asc' m4_1.4.19.orig.tar.xz.asc 488 SHA256:9700ba4dca539b06e033b4e3ab37fa5b983becb6c14569a8b8aa02dee6ab666c
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.19-8.debian.tar.xz' m4_1.4.19-8.debian.tar.xz 18044 SHA256:81299879531d9b956b71b4dfe4997325f48309cc154bc23a2e9ef71b2b8ca20f
```

Other potentially useful URLs:

- https://sources.debian.net/src/m4/1.4.19-8/ (for browsing the source)
- https://sources.debian.net/src/m4/1.4.19-8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/m4/1.4.19-8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `make-dfsg=4.4.1-2`

Binary Packages:

- `make=4.4.1-2`

Licenses: (parsed from: `/usr/share/doc/make/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris make-dfsg=4.4.1-2
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.4.1-2.dsc' make-dfsg_4.4.1-2.dsc 1976 SHA256:c3116d3a50914a68c7c1c32ca825b5fdea1c609b8c7cdd4119b79addf7e931ce
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.4.1.orig.tar.xz' make-dfsg_4.4.1.orig.tar.xz 1125180 SHA256:3b16b00ea1079af9f8096bbc71ff7cc00c249fc6a862003da3c42308a0adb0fe
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.4.1-2.debian.tar.xz' make-dfsg_4.4.1-2.debian.tar.xz 44088 SHA256:c785b80bd83b8294f104da43aee9573ba3e175e2e9a77ac00a49f0a569d6e061
```

Other potentially useful URLs:

- https://sources.debian.net/src/make-dfsg/4.4.1-2/ (for browsing the source)
- https://sources.debian.net/src/make-dfsg/4.4.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/make-dfsg/4.4.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mawk=1.3.4.20250131-1`

Binary Packages:

- `mawk=1.3.4.20250131-1`

Licenses: (parsed from: `/usr/share/doc/mawk/copyright`)

- `CC-BY-3.0`
- `GPL-2`
- `GPL-2.0-only`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris mawk=1.3.4.20250131-1
'http://deb.debian.org/debian/pool/main/m/mawk/mawk_1.3.4.20250131-1.dsc' mawk_1.3.4.20250131-1.dsc 2969 SHA256:147dd01670e2ebf61f3c78470e0025b87d14e69c7ba9cfafd54da32a355dea84
'http://deb.debian.org/debian/pool/main/m/mawk/mawk_1.3.4.20250131.orig.tar.gz' mawk_1.3.4.20250131.orig.tar.gz 433213 SHA256:51bcb82d577b141d896d9d9c3077d7aaa209490132e9f2b9573ba8511b3835be
'http://deb.debian.org/debian/pool/main/m/mawk/mawk_1.3.4.20250131.orig.tar.gz.asc' mawk_1.3.4.20250131.orig.tar.gz.asc 729 SHA256:bc83f127727edb42a91d516770c8d0d3cdb5f6e541aa3cb5213b79dae494db95
'http://deb.debian.org/debian/pool/main/m/mawk/mawk_1.3.4.20250131-1.debian.tar.xz' mawk_1.3.4.20250131-1.debian.tar.xz 16008 SHA256:23dea8244bf4f116ec3cd202ab5d4693207d82d986cd0a3d79442b916be4e2b7
```

Other potentially useful URLs:

- https://sources.debian.net/src/mawk/1.3.4.20250131-1/ (for browsing the source)
- https://sources.debian.net/src/mawk/1.3.4.20250131-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mawk/1.3.4.20250131-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `media-types=13.0.0`

Binary Packages:

- `media-types=13.0.0`

Licenses: (parsed from: `/usr/share/doc/media-types/copyright`)

- `ad-hoc`

Source:

```console
$ apt-get source -qq --print-uris media-types=13.0.0
'http://deb.debian.org/debian/pool/main/m/media-types/media-types_13.0.0.dsc' media-types_13.0.0.dsc 1647 SHA256:a664c287e8d358da16bae998374c546cf0eaf3e0416f7059a56818eefe018546
'http://deb.debian.org/debian/pool/main/m/media-types/media-types_13.0.0.tar.xz' media-types_13.0.0.tar.xz 62960 SHA256:bcd40584a3e092fd33e45f324e10652a400fea3b0e206d286d1c2d6414d763e7
```

Other potentially useful URLs:

- https://sources.debian.net/src/media-types/13.0.0/ (for browsing the source)
- https://sources.debian.net/src/media-types/13.0.0/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/media-types/13.0.0/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mpclib3=1.3.1-1`

Binary Packages:

- `libmpc3:amd64=1.3.1-1+b3`

Licenses: (parsed from: `/usr/share/doc/libmpc3/copyright`)

- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpclib3=1.3.1-1
'http://deb.debian.org/debian/pool/main/m/mpclib3/mpclib3_1.3.1-1.dsc' mpclib3_1.3.1-1.dsc 1877 SHA256:b2252a499fd0f8e92ce2cf7d8e68477ffc9dd06127803a91f0a1115822efec75
'http://deb.debian.org/debian/pool/main/m/mpclib3/mpclib3_1.3.1.orig.tar.gz' mpclib3_1.3.1.orig.tar.gz 773573 SHA256:ab642492f5cf882b74aa0cb730cd410a81edcdbec895183ce930e706c1c759b8
'http://deb.debian.org/debian/pool/main/m/mpclib3/mpclib3_1.3.1-1.debian.tar.xz' mpclib3_1.3.1-1.debian.tar.xz 4656 SHA256:25adb496258adacad69c022d712f96fbc465bcef9fd4751829dc351d9ce6a45d
```

Other potentially useful URLs:

- https://sources.debian.net/src/mpclib3/1.3.1-1/ (for browsing the source)
- https://sources.debian.net/src/mpclib3/1.3.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mpclib3/1.3.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mpfr4=4.2.2-1`

Binary Packages:

- `libmpfr6:amd64=4.2.2-1`

Licenses: (parsed from: `/usr/share/doc/libmpfr6/copyright`)

- `GFDL-1.2`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpfr4=4.2.2-1
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_4.2.2-1.dsc' mpfr4_4.2.2-1.dsc 1960 SHA256:08ee7b45f8a9980570508770a9d48f70d4c1962fd7c98af4a78cbc3747002ecd
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_4.2.2.orig.tar.xz' mpfr4_4.2.2.orig.tar.xz 1505596 SHA256:b67ba0383ef7e8a8563734e2e889ef5ec3c3b898a01d00fa0a6869ad81c6ce01
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_4.2.2-1.debian.tar.xz' mpfr4_4.2.2-1.debian.tar.xz 12564 SHA256:3e203524cdc516a99ec8a676dd9d21435b5f020e624149d39f4c530393d5a563
```

Other potentially useful URLs:

- https://sources.debian.net/src/mpfr4/4.2.2-1/ (for browsing the source)
- https://sources.debian.net/src/mpfr4/4.2.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mpfr4/4.2.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ncurses=6.5+20250216-2`

Binary Packages:

- `libncursesw6:amd64=6.5+20250216-2`
- `libtinfo6:amd64=6.5+20250216-2`
- `ncurses-base=6.5+20250216-2`
- `ncurses-bin=6.5+20250216-2`

Licenses: (parsed from: `/usr/share/doc/libncursesw6/copyright`, `/usr/share/doc/libtinfo6/copyright`, `/usr/share/doc/ncurses-base/copyright`, `/usr/share/doc/ncurses-bin/copyright`)

- `BSD-3-clause`
- `MIT/X11`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris ncurses=6.5+20250216-2
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.5%2b20250216-2.dsc' ncurses_6.5+20250216-2.dsc 3890 SHA256:00539cc2bc6bb84be1b8a8a5decf606682e14b6f39b76b9aa090e65d2c2d4580
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.5%2b20250216.orig.tar.gz' ncurses_6.5+20250216.orig.tar.gz 3774714 SHA256:b37baafa436e7133bb12a185cb8f60e1599b1947e9f0181c76f3190acf28b6eb
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.5%2b20250216.orig.tar.gz.asc' ncurses_6.5+20250216.orig.tar.gz.asc 729 SHA256:64f4d17923322176c44079f18f170e2164a59d551d7e4e9c1a6e4eebedc5dd6f
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.5%2b20250216-2.debian.tar.xz' ncurses_6.5+20250216-2.debian.tar.xz 50420 SHA256:546930a8992ae3325d8c38378f290265d969cf6333cfae9648ac6d69e1e8a8a6
```

Other potentially useful URLs:

- https://sources.debian.net/src/ncurses/6.5+20250216-2/ (for browsing the source)
- https://sources.debian.net/src/ncurses/6.5+20250216-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ncurses/6.5+20250216-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `netbase=6.5`

Binary Packages:

- `netbase=6.5`

Licenses: (parsed from: `/usr/share/doc/netbase/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris netbase=6.5
'http://deb.debian.org/debian/pool/main/n/netbase/netbase_6.5.dsc' netbase_6.5.dsc 899 SHA256:e8691899f57c06fcc383b0f2214b662137df539227d9d7811dc8223f32ebe4c7
'http://deb.debian.org/debian/pool/main/n/netbase/netbase_6.5.tar.xz' netbase_6.5.tar.xz 32544 SHA256:9116047aebbaa1698934052d01c6e09b4c3aed643e93df63d2ddcbec243c26d1
```

Other potentially useful URLs:

- https://sources.debian.net/src/netbase/6.5/ (for browsing the source)
- https://sources.debian.net/src/netbase/6.5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/netbase/6.5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nettle=3.10.1-1`

Binary Packages:

- `libhogweed6t64:amd64=3.10.1-1`
- `libnettle8t64:amd64=3.10.1-1`

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
$ apt-get source -qq --print-uris nettle=3.10.1-1
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.10.1-1.dsc' nettle_3.10.1-1.dsc 2053 SHA256:7b440850ce04b341363f3f5e23dfb9f96ebf7d52e0ef7ba2d07120c90ca61b3c
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.10.1.orig.tar.gz' nettle_3.10.1.orig.tar.gz 2643267 SHA256:b0fcdd7fc0cdea6e80dcf1dd85ba794af0d5b4a57e26397eee3bc193272d9132
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.10.1-1.debian.tar.xz' nettle_3.10.1-1.debian.tar.xz 25036 SHA256:2d40d02ddac5985d8833532a17a0ef96cb685ee0547ee9617ec13793b22e34c6
```

Other potentially useful URLs:

- https://sources.debian.net/src/nettle/3.10.1-1/ (for browsing the source)
- https://sources.debian.net/src/nettle/3.10.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nettle/3.10.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nghttp2=1.64.0-1.1+deb13u1`

Binary Packages:

- `libnghttp2-14:amd64=1.64.0-1.1+deb13u1`

Licenses: (parsed from: `/usr/share/doc/libnghttp2-14/copyright`)

- `BSD-2-clause`
- `Expat`
- `GPL-3`
- `GPL-3+ with autoconf exception`
- `MIT`
- `all-permissive`

Source:

```console
$ apt-get source -qq --print-uris nghttp2=1.64.0-1.1+deb13u1
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.64.0-1.1%2bdeb13u1.dsc' nghttp2_1.64.0-1.1+deb13u1.dsc 2201 SHA256:11f4603a9f417bc3d195be36cb462bb9df0657f52b72dd9276453a31bc0227c7
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.64.0.orig.tar.gz' nghttp2_1.64.0.orig.tar.gz 1069782 SHA256:b452dc69a1fcbc9375389b8b154175d8b7b125cdd713fc426774c2b79a1ebd77
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.64.0-1.1%2bdeb13u1.debian.tar.xz' nghttp2_1.64.0-1.1+deb13u1.debian.tar.xz 42120 SHA256:e16478701c5c007aa8761dc30c01090b2217199558bd1017b1d237db463d758c
```

Other potentially useful URLs:

- https://sources.debian.net/src/nghttp2/1.64.0-1.1+deb13u1/ (for browsing the source)
- https://sources.debian.net/src/nghttp2/1.64.0-1.1+deb13u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nghttp2/1.64.0-1.1+deb13u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nghttp3=1.8.0-1`

Binary Packages:

- `libnghttp3-9:amd64=1.8.0-1`

Licenses: (parsed from: `/usr/share/doc/libnghttp3-9/copyright`)

- `FSFAP`
- `FSFUL`
- `FSFULLR`
- `GPL-2`
- `GPL-2+ with Autoconf generic exception`
- `GPL-2+ with Libtool Exception`
- `GPL-3`
- `GPL-3+`
- `GPL-3+ with Autoconf generic exception`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris nghttp3=1.8.0-1
'http://deb.debian.org/debian/pool/main/n/nghttp3/nghttp3_1.8.0-1.dsc' nghttp3_1.8.0-1.dsc 1603 SHA256:ffc623e78be62361a82f0a2e7b9a19ff0bcdfc371b8bcc1842039499a12adba2
'http://deb.debian.org/debian/pool/main/n/nghttp3/nghttp3_1.8.0.orig.tar.xz' nghttp3_1.8.0.orig.tar.xz 398640 SHA256:a9dd28970977e6802a3eaf2cfaeae6d0fae60c8d2c0f2c4ce600036a7998ee9a
'http://deb.debian.org/debian/pool/main/n/nghttp3/nghttp3_1.8.0.orig.tar.xz.asc' nghttp3_1.8.0.orig.tar.xz.asc 833 SHA256:c2549dd50a5ad392610d108244357c1cc750fd5bf4a5ef91de1d94d11c49b0cf
'http://deb.debian.org/debian/pool/main/n/nghttp3/nghttp3_1.8.0-1.debian.tar.xz' nghttp3_1.8.0-1.debian.tar.xz 8228 SHA256:fc0cfa954de5b8fef85bd13e1edcbfccb463ce211905e925921b608390c840c9
```

Other potentially useful URLs:

- https://sources.debian.net/src/nghttp3/1.8.0-1/ (for browsing the source)
- https://sources.debian.net/src/nghttp3/1.8.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nghttp3/1.8.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openjpeg2=2.5.3-2.1~deb13u2`

Binary Packages:

- `libopenjp2-7:amd64=2.5.3-2.1~deb13u2`

Licenses: (parsed from: `/usr/share/doc/libopenjp2-7/copyright`)

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
$ apt-get source -qq --print-uris openjpeg2=2.5.3-2.1~deb13u2
'http://deb.debian.org/debian/pool/main/o/openjpeg2/openjpeg2_2.5.3-2.1%7edeb13u2.dsc' openjpeg2_2.5.3-2.1~deb13u2.dsc 2603 SHA256:7c4f7083a180f1c509c87b39dd017b857468819c7a37d188b9d269624547f58f
'http://deb.debian.org/debian/pool/main/o/openjpeg2/openjpeg2_2.5.3.orig.tar.xz' openjpeg2_2.5.3.orig.tar.xz 1393716 SHA256:3100f0316e922630112cf6d72c0c20776896e64ad7eab72c2f713c460287eb92
'http://deb.debian.org/debian/pool/main/o/openjpeg2/openjpeg2_2.5.3-2.1%7edeb13u2.debian.tar.xz' openjpeg2_2.5.3-2.1~deb13u2.debian.tar.xz 16136 SHA256:a9d861cd8f22249876a589b56ebcceed101a0ea17155258f3d778de13b619441
```

Other potentially useful URLs:

- https://sources.debian.net/src/openjpeg2/2.5.3-2.1~deb13u2/ (for browsing the source)
- https://sources.debian.net/src/openjpeg2/2.5.3-2.1~deb13u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openjpeg2/2.5.3-2.1~deb13u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openldap=2.6.10+dfsg-1`

Binary Packages:

- `libldap2:amd64=2.6.10+dfsg-1`

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
$ apt-get source -qq --print-uris openldap=2.6.10+dfsg-1
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.6.10%2bdfsg-1.dsc' openldap_2.6.10+dfsg-1.dsc 3285 SHA256:05cdd431ef995904f094f4464ca78d5d3b2abdbe4eefacd72446ff8443a2ffac
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.6.10%2bdfsg.orig.tar.xz' openldap_2.6.10+dfsg.orig.tar.xz 3754560 SHA256:e871102bda1e42155fd4d6be4825a297e1c593cb0907b84fc7dde888dc847877
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.6.10%2bdfsg-1.debian.tar.xz' openldap_2.6.10+dfsg-1.debian.tar.xz 170112 SHA256:2dc95ade5655d67c9043e45b5601734fdb7f668267682d087b595a80de24a500
```

Other potentially useful URLs:

- https://sources.debian.net/src/openldap/2.6.10+dfsg-1/ (for browsing the source)
- https://sources.debian.net/src/openldap/2.6.10+dfsg-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openldap/2.6.10+dfsg-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openssl=3.5.6-1~deb13u2`

Binary Packages:

- `libssl3t64:amd64=3.5.6-1~deb13u2`
- `openssl=3.5.6-1~deb13u2`
- `openssl-provider-legacy=3.5.6-1~deb13u2`

Licenses: (parsed from: `/usr/share/doc/libssl3t64/copyright`, `/usr/share/doc/openssl/copyright`, `/usr/share/doc/openssl-provider-legacy/copyright`)

- `Apache-2.0`
- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris openssl=3.5.6-1~deb13u2
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_3.5.6-1%7edeb13u2.dsc' openssl_3.5.6-1~deb13u2.dsc 2707 SHA256:6a7f8fef28a5134eeb1a88435c35704f6200a268b913232eca09775651a19210
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_3.5.6.orig.tar.gz' openssl_3.5.6.orig.tar.gz 53121812 SHA256:deae7c80cba99c4b4f940ecadb3c3338b13cb77418409238e57d7f31f2a3b736
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_3.5.6.orig.tar.gz.asc' openssl_3.5.6.orig.tar.gz.asc 833 SHA256:581c536bd4c5bf7e325feaa90d6ce01c3da297737b5be3213c4e8087323fb623
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_3.5.6-1%7edeb13u2.debian.tar.xz' openssl_3.5.6-1~deb13u2.debian.tar.xz 82144 SHA256:322797f9ac320606e91eb07540fd4c7ba910ee84f52fa455c7f8619dd53f9bcc
```

Other potentially useful URLs:

- https://sources.debian.net/src/openssl/3.5.6-1~deb13u2/ (for browsing the source)
- https://sources.debian.net/src/openssl/3.5.6-1~deb13u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openssl/3.5.6-1~deb13u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `p11-kit=0.25.5-3`

Binary Packages:

- `libp11-kit0:amd64=0.25.5-3`

Licenses: (parsed from: `/usr/share/doc/libp11-kit0/copyright`)

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
$ apt-get source -qq --print-uris p11-kit=0.25.5-3
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.25.5-3.dsc' p11-kit_0.25.5-3.dsc 2538 SHA256:65e21a68dd942741bba82f5bf20901f616b64de91a976d92a54a0cb314896544
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.25.5.orig.tar.xz' p11-kit_0.25.5.orig.tar.xz 1002056 SHA256:04d0a86450cdb1be018f26af6699857171a188ac6d5b8c90786a60854e1198e5
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.25.5.orig.tar.xz.asc' p11-kit_0.25.5.orig.tar.xz.asc 228 SHA256:066c92b9d2accb2fda6a2f71e676fb6526fcc153051b1f04ee7d7c8c96a09989
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.25.5-3.debian.tar.xz' p11-kit_0.25.5-3.debian.tar.xz 24184 SHA256:3800ea81e4615898813f533834ad37ec270f6f7d4c9413c84e712075a197849c
```

Other potentially useful URLs:

- https://sources.debian.net/src/p11-kit/0.25.5-3/ (for browsing the source)
- https://sources.debian.net/src/p11-kit/0.25.5-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/p11-kit/0.25.5-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pam=1.7.0-5`

Binary Packages:

- `libpam-modules:amd64=1.7.0-5`
- `libpam-modules-bin=1.7.0-5`
- `libpam-runtime=1.7.0-5`
- `libpam0g:amd64=1.7.0-5`

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
$ apt-get source -qq --print-uris pam=1.7.0-5
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.7.0-5.dsc' pam_1.7.0-5.dsc 2210 SHA256:5c127aa18c7cb52ec9ee91fa2099453b3a851bcc0088e79045384a2a508b341c
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.7.0.orig.tar.xz' pam_1.7.0.orig.tar.xz 507824 SHA256:57dcd7a6b966ecd5bbd95e1d11173734691e16b68692fa59661cdae9b13b1697
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.7.0.orig.tar.xz.asc' pam_1.7.0.orig.tar.xz.asc 801 SHA256:7a8ea18ec7d9dd1f8cbf9055c32128cbca8241aa63e9fea44d56ce6f0e15e441
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.7.0-5.debian.tar.xz' pam_1.7.0-5.debian.tar.xz 145640 SHA256:d776d7cb6fc8b08273f96b7f843299356ef13c6756e30468c594ab28faf1701c
```

Other potentially useful URLs:

- https://sources.debian.net/src/pam/1.7.0-5/ (for browsing the source)
- https://sources.debian.net/src/pam/1.7.0-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pam/1.7.0-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `patch=2.8-2`

Binary Packages:

- `patch=2.8-2`

Licenses: (parsed from: `/usr/share/doc/patch/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris patch=2.8-2
'http://deb.debian.org/debian/pool/main/p/patch/patch_2.8-2.dsc' patch_2.8-2.dsc 1689 SHA256:41fbd3f2c99f60dcbe02699ff01955a47711377b20987352b957bd55e02e2088
'http://deb.debian.org/debian/pool/main/p/patch/patch_2.8.orig.tar.xz' patch_2.8.orig.tar.xz 907208 SHA256:f87cee69eec2b4fcbf60a396b030ad6aa3415f192aa5f7ee84cad5e11f7f5ae3
'http://deb.debian.org/debian/pool/main/p/patch/patch_2.8-2.debian.tar.xz' patch_2.8-2.debian.tar.xz 9460 SHA256:9a740460988c910c5538e4d24df00d9961d19dee014c63e92f5d60e611fa60c4
```

Other potentially useful URLs:

- https://sources.debian.net/src/patch/2.8-2/ (for browsing the source)
- https://sources.debian.net/src/patch/2.8-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/patch/2.8-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pcre2=10.46-1~deb13u1`

Binary Packages:

- `libpcre2-16-0:amd64=10.46-1~deb13u1`
- `libpcre2-32-0:amd64=10.46-1~deb13u1`
- `libpcre2-8-0:amd64=10.46-1~deb13u1`
- `libpcre2-dev:amd64=10.46-1~deb13u1`
- `libpcre2-posix3:amd64=10.46-1~deb13u1`

Licenses: (parsed from: `/usr/share/doc/libpcre2-16-0/copyright`, `/usr/share/doc/libpcre2-32-0/copyright`, `/usr/share/doc/libpcre2-8-0/copyright`, `/usr/share/doc/libpcre2-dev/copyright`, `/usr/share/doc/libpcre2-posix3/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-3-clause-Cambridge with BINARY LIBRARY-LIKE PACKAGES exception`
- `X11`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris pcre2=10.46-1~deb13u1
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.46-1%7edeb13u1.dsc' pcre2_10.46-1~deb13u1.dsc 2377 SHA256:15fd556b0182dac4decee5408ab4908654bb6a7f2002774a46e908c1ec7937b8
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.46.orig.tar.gz' pcre2_10.46.orig.tar.gz 2718545 SHA256:8d28d7f2c3b970c3a4bf3776bcbb5adfc923183ce74bc8df1ebaad8c1985bd07
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.46-1%7edeb13u1.diff.gz' pcre2_10.46-1~deb13u1.diff.gz 8729 SHA256:b1e614d7d31b26314754c563079b6e8400e50fe7a35d21cc0945f41c45965c45
```

Other potentially useful URLs:

- https://sources.debian.net/src/pcre2/10.46-1~deb13u1/ (for browsing the source)
- https://sources.debian.net/src/pcre2/10.46-1~deb13u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pcre2/10.46-1~deb13u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `perl=5.40.1-6`

Binary Packages:

- `libperl5.40:amd64=5.40.1-6`
- `perl=5.40.1-6`
- `perl-base=5.40.1-6`
- `perl-modules-5.40=5.40.1-6`

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
$ apt-get source -qq --print-uris perl=5.40.1-6
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.40.1-6.dsc' perl_5.40.1-6.dsc 2372 SHA256:b521581cdc0d45d234ebba4d3c7d1e107fd9f18e1322c1bbaf7101483a7fdf08
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.40.1.orig-regen-configure.tar.xz' perl_5.40.1.orig-regen-configure.tar.xz 421056 SHA256:4ea023d08101443f6ed9dc3bdd9bb5f5e08087678dc9e443d195df22da36209a
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.40.1.orig.tar.xz' perl_5.40.1.orig.tar.xz 13930924 SHA256:dfa20c2eef2b4af133525610bbb65dd13777ecf998c9c5b1ccf0d308e732ee3f
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.40.1-6.debian.tar.xz' perl_5.40.1-6.debian.tar.xz 172892 SHA256:3071cd0d0ddb2bc58a739d331c5e8c5b549f679714b7d8f698b7f8f7ab27b3a3
```

Other potentially useful URLs:

- https://sources.debian.net/src/perl/5.40.1-6/ (for browsing the source)
- https://sources.debian.net/src/perl/5.40.1-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/perl/5.40.1-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pkgconf=1.8.1-4`

Binary Packages:

- `libpkgconf3:amd64=1.8.1-4`
- `pkg-config:amd64=1.8.1-4`
- `pkgconf:amd64=1.8.1-4`
- `pkgconf-bin=1.8.1-4`

Licenses: (parsed from: `/usr/share/doc/libpkgconf3/copyright`, `/usr/share/doc/pkg-config/copyright`, `/usr/share/doc/pkgconf/copyright`, `/usr/share/doc/pkgconf-bin/copyright`)

- `BSD-2`
- `BSD-4`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris pkgconf=1.8.1-4
'http://deb.debian.org/debian/pool/main/p/pkgconf/pkgconf_1.8.1-4.dsc' pkgconf_1.8.1-4.dsc 2130 SHA256:782a764448d1ecf39f80c7a1747c28fcbde1800b615eee6a46639a17e58b62f9
'http://deb.debian.org/debian/pool/main/p/pkgconf/pkgconf_1.8.1.orig.tar.xz' pkgconf_1.8.1.orig.tar.xz 302372 SHA256:644361ada2942be05655d4452eb018791647c31bba429b287f1f68deb2dc6840
'http://deb.debian.org/debian/pool/main/p/pkgconf/pkgconf_1.8.1-4.debian.tar.xz' pkgconf_1.8.1-4.debian.tar.xz 17736 SHA256:e56c56a5f40eb0d57bebcb79983a755e16cf1e1595a6fec7f02b20bd58baa734
```

Other potentially useful URLs:

- https://sources.debian.net/src/pkgconf/1.8.1-4/ (for browsing the source)
- https://sources.debian.net/src/pkgconf/1.8.1-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pkgconf/1.8.1-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `poppler-data=0.4.12-1`

Binary Packages:

- `poppler-data=0.4.12-1`

Licenses: (parsed from: `/usr/share/doc/poppler-data/copyright`)

- `AGPL-3+`
- `BSD-3-cluase`
- `GPL-2`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris poppler-data=0.4.12-1
'http://deb.debian.org/debian/pool/main/p/poppler-data/poppler-data_0.4.12-1.dsc' poppler-data_0.4.12-1.dsc 2446 SHA256:91c5aa0420409a5e5eb450a98e6bc3aa2318ee7e9066c218aca595bd9fc499fb
'http://deb.debian.org/debian/pool/main/p/poppler-data/poppler-data_0.4.12.orig-ai0.tar.gz' poppler-data_0.4.12.orig-ai0.tar.gz 3515 SHA256:755a3a7cec6019b7cb6a7ac89828820e90d5105e66ebc2a7aacecacfb3ed4f1d
'http://deb.debian.org/debian/pool/main/p/poppler-data/poppler-data_0.4.12.orig-from-ghostscript.tar.xz' poppler-data_0.4.12.orig-from-ghostscript.tar.xz 2320 SHA256:5070e1f3645080c809d80c42ee2e736648fe37bc2a68c3f54d1f9fce01086215
'http://deb.debian.org/debian/pool/main/p/poppler-data/poppler-data_0.4.12.orig.tar.gz' poppler-data_0.4.12.orig.tar.gz 4504754 SHA256:c835b640a40ce357e1b83666aabd95edffa24ddddd49b8daff63adb851cdab74
'http://deb.debian.org/debian/pool/main/p/poppler-data/poppler-data_0.4.12-1.debian.tar.xz' poppler-data_0.4.12-1.debian.tar.xz 19596 SHA256:14a2c2ab3483e8aca6c9e5950195e32a82ec16f1bb196257b8eea5462a8ec514
```

Other potentially useful URLs:

- https://sources.debian.net/src/poppler-data/0.4.12-1/ (for browsing the source)
- https://sources.debian.net/src/poppler-data/0.4.12-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/poppler-data/0.4.12-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `postgresql-17=17.11-0+deb13u1`

Binary Packages:

- `libpq5:amd64=17.11-0+deb13u1`

Licenses: (parsed from: `/usr/share/doc/libpq5/copyright`)

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

Source:

```console
$ apt-get source -qq --print-uris postgresql-17=17.11-0+deb13u1
'http://deb.debian.org/debian-security/pool/updates/main/p/postgresql-17/postgresql-17_17.11-0%2bdeb13u1.dsc' postgresql-17_17.11-0+deb13u1.dsc 4284 SHA256:bf148ae423a982707c3f60672c3a072ef62b701bd9f5df847d9f4b8c9b3e3b18
'http://deb.debian.org/debian-security/pool/updates/main/p/postgresql-17/postgresql-17_17.11.orig.tar.bz2' postgresql-17_17.11.orig.tar.bz2 21787224 SHA256:dd27f2b3c59e73ed14aa3324901242bf69a032a6347805f274e6260322d42979
'http://deb.debian.org/debian-security/pool/updates/main/p/postgresql-17/postgresql-17_17.11-0%2bdeb13u1.debian.tar.xz' postgresql-17_17.11-0+deb13u1.debian.tar.xz 37348 SHA256:82851f4dfeb372c99b94b412e2e3046a8eee7771098e42ac1fa234bef2611cbd
```

Other potentially useful URLs:

- https://sources.debian.net/src/postgresql-17/17.11-0+deb13u1/ (for browsing the source)
- https://sources.debian.net/src/postgresql-17/17.11-0+deb13u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/postgresql-17/17.11-0+deb13u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python-packaging=25.0-1`

Binary Packages:

- `python3-packaging=25.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-packaging/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `BSD-3-clause`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-packaging=25.0-1
'http://deb.debian.org/debian/pool/main/p/python-packaging/python-packaging_25.0-1.dsc' python-packaging_25.0-1.dsc 1674 SHA256:5653df16fc64e58ff8657e37e36f280929b741ed0cc715231834c605f4568a74
'http://deb.debian.org/debian/pool/main/p/python-packaging/python-packaging_25.0.orig.tar.gz' python-packaging_25.0.orig.tar.gz 165727 SHA256:d443872c98d677bf60f6a1f2f8c1cb748e8fe762d2bf9d3148b5599295b0fc4f
'http://deb.debian.org/debian/pool/main/p/python-packaging/python-packaging_25.0-1.debian.tar.xz' python-packaging_25.0-1.debian.tar.xz 4144 SHA256:223e23fe0d0aa4000633cdc9022cde6e15dc7f6630e49f8bbabeaca45f2bf376
```

Other potentially useful URLs:

- https://sources.debian.net/src/python-packaging/25.0-1/ (for browsing the source)
- https://sources.debian.net/src/python-packaging/25.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python-packaging/25.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python3-defaults=3.13.5-1`

Binary Packages:

- `libpython3-stdlib:amd64=3.13.5-1`
- `python3=3.13.5-1`
- `python3-minimal=3.13.5-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-defaults=3.13.5-1
'http://deb.debian.org/debian/pool/main/p/python3-defaults/python3-defaults_3.13.5-1.dsc' python3-defaults_3.13.5-1.dsc 2346 SHA256:206e2f527ca126e46f007b3dd668ae9d35a03c7653bee137a03161df33063d2c
'http://deb.debian.org/debian/pool/main/p/python3-defaults/python3-defaults_3.13.5-1.tar.gz' python3-defaults_3.13.5-1.tar.gz 146839 SHA256:6260f7e3b3df0c5fc60a95b26bd2da5993c6f8fcd901bab74c1c43df45d361dd
```

Other potentially useful URLs:

- https://sources.debian.net/src/python3-defaults/3.13.5-1/ (for browsing the source)
- https://sources.debian.net/src/python3-defaults/3.13.5-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python3-defaults/3.13.5-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python3.13=3.13.5-2+deb13u4`

Binary Packages:

- `libpython3.13-minimal:amd64=3.13.5-2+deb13u4`
- `libpython3.13-stdlib:amd64=3.13.5-2+deb13u4`
- `python3.13=3.13.5-2+deb13u4`
- `python3.13-minimal=3.13.5-2+deb13u4`

Licenses: (parsed from: `/usr/share/doc/libpython3.13-minimal/copyright`, `/usr/share/doc/libpython3.13-stdlib/copyright`, `/usr/share/doc/python3.13/copyright`, `/usr/share/doc/python3.13-minimal/copyright`)

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
$ apt-get source -qq --print-uris python3.13=3.13.5-2+deb13u4
'http://deb.debian.org/debian/pool/main/p/python3.13/python3.13_3.13.5-2%2bdeb13u4.dsc' python3.13_3.13.5-2+deb13u4.dsc 3721 SHA256:72134c9f6705d0d87a53cf48c5a997f088b6b675ad5d87f57fa6e9f338393519
'http://deb.debian.org/debian/pool/main/p/python3.13/python3.13_3.13.5.orig.tar.xz' python3.13_3.13.5.orig.tar.xz 22856016 SHA256:93e583f243454e6e9e4588ca2c2662206ad961659863277afcdb96801647d640
'http://deb.debian.org/debian/pool/main/p/python3.13/python3.13_3.13.5.orig.tar.xz.asc' python3.13_3.13.5.orig.tar.xz.asc 963 SHA256:da6e013d98dcf8fc6696cdb2872b0051fc8fdeb632f73ef9f54d7b5a68647401
'http://deb.debian.org/debian/pool/main/p/python3.13/python3.13_3.13.5-2%2bdeb13u4.debian.tar.xz' python3.13_3.13.5-2+deb13u4.debian.tar.xz 296316 SHA256:b5cc42821fb6a6f91b7a5ac1da5b313bb251288ca03f03d683b4c6ca453ece11
```

Other potentially useful URLs:

- https://sources.debian.net/src/python3.13/3.13.5-2+deb13u4/ (for browsing the source)
- https://sources.debian.net/src/python3.13/3.13.5-2+deb13u4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python3.13/3.13.5-2+deb13u4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `re2c=4.1-1`

Binary Packages:

- `re2c=4.1-1`

Licenses: (parsed from: `/usr/share/doc/re2c/copyright`)

- `Apache-2`
- `Apache-2.0`
- `PHP-3.01`
- `Zend-2.00`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris re2c=4.1-1
'http://deb.debian.org/debian/pool/main/r/re2c/re2c_4.1-1.dsc' re2c_4.1-1.dsc 1909 SHA256:5ad52d523cfa8e1faddfbd4634f85a038bf689344d0155eba88f14fb5d5aa988
'http://deb.debian.org/debian/pool/main/r/re2c/re2c_4.1.orig.tar.xz' re2c_4.1.orig.tar.xz 1812048 SHA256:cd7d9bbadb3f04f20da25e20e155655de57beef48e0807266938069f0e322e8b
'http://deb.debian.org/debian/pool/main/r/re2c/re2c_4.1-1.debian.tar.xz' re2c_4.1-1.debian.tar.xz 8896 SHA256:2fce4a5645fe9242f98cc0a644fde9f293ed817824f190fd27b6f840bbdc8069
```

Other potentially useful URLs:

- https://sources.debian.net/src/re2c/4.1-1/ (for browsing the source)
- https://sources.debian.net/src/re2c/4.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/re2c/4.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `readline=8.2-6`

Binary Packages:

- `libreadline8t64:amd64=8.2-6`
- `readline-common=8.2-6`

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
$ apt-get source -qq --print-uris readline=8.2-6
'http://deb.debian.org/debian/pool/main/r/readline/readline_8.2-6.dsc' readline_8.2-6.dsc 2810 SHA256:6f94c7144d6b6b1ff88aaebd81480e87f8773b7638031782aac12ef93ffd2e71
'http://deb.debian.org/debian/pool/main/r/readline/readline_8.2.orig.tar.gz' readline_8.2.orig.tar.gz 3043952 SHA256:3feb7171f16a84ee82ca18a36d7b9be109a52c04f492a053331d7d1095007c35
'http://deb.debian.org/debian/pool/main/r/readline/readline_8.2-6.debian.tar.xz' readline_8.2-6.debian.tar.xz 38396 SHA256:d1cf806644dbce298cf929f1cc9b3af5a50cd7db97b6f69db280c1eb2f544376
```

Other potentially useful URLs:

- https://sources.debian.net/src/readline/8.2-6/ (for browsing the source)
- https://sources.debian.net/src/readline/8.2-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/readline/8.2-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `rpcsvc-proto=1.4.3-1`

Binary Packages:

- `rpcsvc-proto=1.4.3-1`

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
$ apt-get source -qq --print-uris rpcsvc-proto=1.4.3-1
'http://deb.debian.org/debian/pool/main/r/rpcsvc-proto/rpcsvc-proto_1.4.3-1.dsc' rpcsvc-proto_1.4.3-1.dsc 1999 SHA256:7d8e122bd18b02fe0de6d467a0ecdafff74035b3e1ed0da1c0c792d9c015682f
'http://deb.debian.org/debian/pool/main/r/rpcsvc-proto/rpcsvc-proto_1.4.3.orig.tar.xz' rpcsvc-proto_1.4.3.orig.tar.xz 167964 SHA256:69315e94430f4e79c74d43422f4a36e6259e97e67e2677b2c7d7060436bd99b1
'http://deb.debian.org/debian/pool/main/r/rpcsvc-proto/rpcsvc-proto_1.4.3-1.debian.tar.xz' rpcsvc-proto_1.4.3-1.debian.tar.xz 4228 SHA256:02034b9dadcf3af5424f72eb65c3842c8d7117b6b78e7a3c798316ceb60843d1
```

Other potentially useful URLs:

- https://sources.debian.net/src/rpcsvc-proto/1.4.3-1/ (for browsing the source)
- https://sources.debian.net/src/rpcsvc-proto/1.4.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/rpcsvc-proto/1.4.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `rtmpdump=2.4+20151223.gitfa8646d.1-2`

Binary Packages:

- `librtmp1:amd64=2.4+20151223.gitfa8646d.1-2+b5`

Licenses: (parsed from: `/usr/share/doc/librtmp1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris rtmpdump=2.4+20151223.gitfa8646d.1-2
'http://deb.debian.org/debian/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1-2.dsc' rtmpdump_2.4+20151223.gitfa8646d.1-2.dsc 2299 SHA256:a296819cd2ab5880b67ad963ef0867cb10e462f4403e52565aa863eb05bb1370
'http://deb.debian.org/debian/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1.orig.tar.gz' rtmpdump_2.4+20151223.gitfa8646d.1.orig.tar.gz 142213 SHA256:5c032f5c8cc2937eb55a81a94effdfed3b0a0304b6376147b86f951e225e3ab5
'http://deb.debian.org/debian/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1-2.debian.tar.xz' rtmpdump_2.4+20151223.gitfa8646d.1-2.debian.tar.xz 8096 SHA256:26d47de07d16285e4ca55b0828cbbf1ba35e671f9b3500a87e301fe755d26882
```

Other potentially useful URLs:

- https://sources.debian.net/src/rtmpdump/2.4+20151223.gitfa8646d.1-2/ (for browsing the source)
- https://sources.debian.net/src/rtmpdump/2.4+20151223.gitfa8646d.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/rtmpdump/2.4+20151223.gitfa8646d.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `rust-sequoia-sqv=1.3.0-3`

Binary Packages:

- `sqv=1.3.0-3+b2`

Licenses: (parsed from: `/usr/share/doc/sqv/copyright`)

- `LGPL-2`
- `LGPL-2.0-or-later`

Source:

```console
$ apt-get source -qq --print-uris rust-sequoia-sqv=1.3.0-3
'http://deb.debian.org/debian/pool/main/r/rust-sequoia-sqv/rust-sequoia-sqv_1.3.0-3.dsc' rust-sequoia-sqv_1.3.0-3.dsc 2704 SHA256:98ad852ed30d42d3b0d6ce40d2f56a96fb443cc6fa2caeaa12516fe5bbe544af
'http://deb.debian.org/debian/pool/main/r/rust-sequoia-sqv/rust-sequoia-sqv_1.3.0.orig.tar.gz' rust-sequoia-sqv_1.3.0.orig.tar.gz 140759 SHA256:8924571d26720b245292ad3c450e4061fcb24890461874790549747bffa35e60
'http://deb.debian.org/debian/pool/main/r/rust-sequoia-sqv/rust-sequoia-sqv_1.3.0-3.debian.tar.xz' rust-sequoia-sqv_1.3.0-3.debian.tar.xz 3876 SHA256:be04e0365bc1206617a3e55d507bfce2e972819fb737e23a1112a717cc89b9bc
```

Other potentially useful URLs:

- https://sources.debian.net/src/rust-sequoia-sqv/1.3.0-3/ (for browsing the source)
- https://sources.debian.net/src/rust-sequoia-sqv/1.3.0-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/rust-sequoia-sqv/1.3.0-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sed=4.9-2+deb13u1`

Binary Packages:

- `sed=4.9-2+deb13u1`

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
$ apt-get source -qq --print-uris sed=4.9-2+deb13u1
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.9-2%2bdeb13u1.dsc' sed_4.9-2+deb13u1.dsc 2047 SHA256:9fcc5dffe5e712b4631757c057228ae57919aec1cca1c91a80e76719167f443b
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.9.orig.tar.xz' sed_4.9.orig.tar.xz 1397092 SHA256:6e226b732e1cd739464ad6862bd1a1aba42d7982922da7a53519631d24975181
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.9-2%2bdeb13u1.debian.tar.xz' sed_4.9-2+deb13u1.debian.tar.xz 63644 SHA256:9c9aacda91e02802f33fb6a1a6e86f80be1bc67b92a4dae009e78f77e26e130a
```

Other potentially useful URLs:

- https://sources.debian.net/src/sed/4.9-2+deb13u1/ (for browsing the source)
- https://sources.debian.net/src/sed/4.9-2+deb13u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sed/4.9-2+deb13u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `shadow=1:4.17.4-2`

Binary Packages:

- `login.defs=1:4.17.4-2`
- `passwd=1:4.17.4-2`

Licenses: (parsed from: `/usr/share/doc/login.defs/copyright`, `/usr/share/doc/passwd/copyright`)

- `BSD-3-clause`
- `GPL-1`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.17.4-2
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.17.4-2.dsc' shadow_4.17.4-2.dsc 2851 SHA256:920de0d3be5303f2c0511d5531c1815abc258b15af8f9c511c8aa6d8e1a91a86
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.17.4.orig.tar.xz' shadow_4.17.4.orig.tar.xz 2326584 SHA256:554801054694ff7d8a7abdf0d6ece34e2f16e111673cc01b8c9ee1278451181e
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.17.4.orig.tar.xz.asc' shadow_4.17.4.orig.tar.xz.asc 488 SHA256:82437d2b54790b3a6734c526b757e693cd0c734ec6afd69f9a9cf0eb1dad8dc4
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.17.4-2.debian.tar.xz' shadow_4.17.4-2.debian.tar.xz 167792 SHA256:97eaf0b3682a8a1a1ae6e4c4fac00885a7433d2487e636bde7c1c406e66bdb23
```

Other potentially useful URLs:

- https://sources.debian.net/src/shadow/1:4.17.4-2/ (for browsing the source)
- https://sources.debian.net/src/shadow/1:4.17.4-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/shadow/1:4.17.4-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sqlite3=3.46.1-7+deb13u1`

Binary Packages:

- `libsqlite3-0:amd64=3.46.1-7+deb13u1`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.46.1-7+deb13u1
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.46.1-7%2bdeb13u1.dsc' sqlite3_3.46.1-7+deb13u1.dsc 2673 SHA256:d96b624e3d5319aec6030e31c1047372f06dd23b7c76e18e312b1a0b355b2b52
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.46.1.orig-www.tar.xz' sqlite3_3.46.1.orig-www.tar.xz 5861820 SHA256:648df41a8e532882b1905df45919aae4bafaf74c455f66bc86f1f52f45c8b8f0
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.46.1.orig.tar.xz' sqlite3_3.46.1.orig.tar.xz 8456776 SHA256:d0cdd2ece271b29e7ce18095745d892517ee26d0f270065b3a25c2e9eb11639c
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.46.1-7%2bdeb13u1.debian.tar.xz' sqlite3_3.46.1-7+deb13u1.debian.tar.xz 35840 SHA256:2f2135b8b9ca37d607422f0f590ab45dc64c17fed71bb019fd1f69894637ce21
```

Other potentially useful URLs:

- https://sources.debian.net/src/sqlite3/3.46.1-7+deb13u1/ (for browsing the source)
- https://sources.debian.net/src/sqlite3/3.46.1-7+deb13u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sqlite3/3.46.1-7+deb13u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sysprof=48.0-2`

Binary Packages:

- `libsysprof-capture-4-dev:amd64=48.0-2`

Licenses: (parsed from: `/usr/share/doc/libsysprof-capture-4-dev/copyright`)

- `BSD-2-Clause-Patent`
- `BSD-3-Clause`
- `GPL-2`
- `GPL-2.0+`
- `GPL-3`
- `GPL-3.0+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-3`
- `LGPL-3.0+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sysprof=48.0-2
'http://deb.debian.org/debian/pool/main/s/sysprof/sysprof_48.0-2.dsc' sysprof_48.0-2.dsc 3085 SHA256:8e67bfd77ba5d6405dd373625553fedb2d2147aa29268c5639e459727a787e8e
'http://deb.debian.org/debian/pool/main/s/sysprof/sysprof_48.0.orig.tar.xz' sysprof_48.0.orig.tar.xz 1224264 SHA256:1b0f0380f2f30708ba87829321a06fee1db36dfa87797bbf07f0a7acf4498d18
'http://deb.debian.org/debian/pool/main/s/sysprof/sysprof_48.0-2.debian.tar.xz' sysprof_48.0-2.debian.tar.xz 17728 SHA256:212e0fb593e6d23ae74ebeca99d73bb9cc5c4bc23607dd384b7e5552a9cd6da6
```

Other potentially useful URLs:

- https://sources.debian.net/src/sysprof/48.0-2/ (for browsing the source)
- https://sources.debian.net/src/sysprof/48.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sysprof/48.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `systemd=257.13-1~deb13u1`

Binary Packages:

- `libsystemd0:amd64=257.13-1~deb13u1`
- `libudev1:amd64=257.13-1~deb13u1`

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
$ apt-get source -qq --print-uris systemd=257.13-1~deb13u1
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_257.13-1%7edeb13u1.dsc' systemd_257.13-1~deb13u1.dsc 8696 SHA256:1b3405d671a82d1e20c9d99f52d4336aafe8543b28d04e91b7f1f586d3a667c7
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_257.13.orig.tar.gz' systemd_257.13.orig.tar.gz 16543653 SHA256:1eb7d5f9ff8a426ff880a3cded9ce819613ba8003ac5ddde9eca162f14ddabe7
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_257.13-1%7edeb13u1.debian.tar.xz' systemd_257.13-1~deb13u1.debian.tar.xz 183128 SHA256:9c6e435d613b996efcdb3b7dd9a4cebaa745333a3f64dc722f3fad646f1fdc1a
```

Other potentially useful URLs:

- https://sources.debian.net/src/systemd/257.13-1~deb13u1/ (for browsing the source)
- https://sources.debian.net/src/systemd/257.13-1~deb13u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/systemd/257.13-1~deb13u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sysvinit=3.14-4`

Binary Packages:

- `sysvinit-utils=3.14-4`

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
$ apt-get source -qq --print-uris sysvinit=3.14-4
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_3.14-4.dsc' sysvinit_3.14-4.dsc 2375 SHA256:1cfe65682218077e6f76011f0c5caacc9f2ab214d55893307d4a54c93312ac92
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_3.14.orig.tar.gz' sysvinit_3.14.orig.tar.gz 516357 SHA256:4e90a148707cf64113fc97343c053f9c0c9589551936b053999dcc69731f295f
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_3.14-4.debian.tar.xz' sysvinit_3.14-4.debian.tar.xz 122156 SHA256:2ba0aa763232112696bce50ee5acc707a515fcbd5b2c194193bfa7a0a525bff6
```

Other potentially useful URLs:

- https://sources.debian.net/src/sysvinit/3.14-4/ (for browsing the source)
- https://sources.debian.net/src/sysvinit/3.14-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sysvinit/3.14-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tar=1.35+dfsg-3.1`

Binary Packages:

- `tar=1.35+dfsg-3.1`

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
$ apt-get source -qq --print-uris tar=1.35+dfsg-3.1
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.35%2bdfsg-3.1.dsc' tar_1.35+dfsg-3.1.dsc 2017 SHA256:5bb58d4966d94c99a9f1b182676089ecc05058d62fdb927f5c07539d9cda4077
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.35%2bdfsg.orig.tar.xz' tar_1.35+dfsg.orig.tar.xz 2111608 SHA256:9ae57e981c1e73c0eebc2b26c9b0c4497fe310ef1d516ea430efb5470b71f7a8
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.35%2bdfsg-3.1.debian.tar.xz' tar_1.35+dfsg-3.1.debian.tar.xz 21540 SHA256:0d0278034b82ed84dce04a461879b6e1871e4cb416a0ff04d3d35ff05fc30a53
```

Other potentially useful URLs:

- https://sources.debian.net/src/tar/1.35+dfsg-3.1/ (for browsing the source)
- https://sources.debian.net/src/tar/1.35+dfsg-3.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tar/1.35+dfsg-3.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tiff=4.7.0-3+deb13u3`

Binary Packages:

- `libtiff6:amd64=4.7.0-3+deb13u3`

Licenses: (parsed from: `/usr/share/doc/libtiff6/copyright`)

- `Hylafax`

Source:

```console
$ apt-get source -qq --print-uris tiff=4.7.0-3+deb13u3
'http://deb.debian.org/debian-security/pool/updates/main/t/tiff/tiff_4.7.0-3%2bdeb13u3.dsc' tiff_4.7.0-3+deb13u3.dsc 2442 SHA256:51cdbd32322b5d35ef35677ace1cb7cd6591325da4ecd470ec6ccefab47d6a29
'http://deb.debian.org/debian-security/pool/updates/main/t/tiff/tiff_4.7.0.orig.tar.bz2' tiff_4.7.0.orig.tar.bz2 2111254 SHA256:2b8b5c4e79cb2a4651796602e45d6179b7f18bc283feab417b8e881ef7e81862
'http://deb.debian.org/debian-security/pool/updates/main/t/tiff/tiff_4.7.0-3%2bdeb13u3.debian.tar.xz' tiff_4.7.0-3+deb13u3.debian.tar.xz 28212 SHA256:c0cbcb717e20a69964bfa7471cbb0137dd39a451434932972bc7fbcdb86345f8
```

Other potentially useful URLs:

- https://sources.debian.net/src/tiff/4.7.0-3+deb13u3/ (for browsing the source)
- https://sources.debian.net/src/tiff/4.7.0-3+deb13u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tiff/4.7.0-3+deb13u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tzdata=2026b-0+deb13u1`

Binary Packages:

- `tzdata=2026b-0+deb13u1`

Licenses: (parsed from: `/usr/share/doc/tzdata/copyright`)

- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris tzdata=2026b-0+deb13u1
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2026b-0%2bdeb13u1.dsc' tzdata_2026b-0+deb13u1.dsc 2466 SHA256:eac9b7a51fa249d8e5ad59989211dadf4a1e82568ad0fa51d644ef0d688cc383
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2026b.orig.tar.gz' tzdata_2026b.orig.tar.gz 473703 SHA256:114543d9f19a6bfeb5bca43686aea173d38755a3db1f2eec112647ae92c6f544
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2026b.orig.tar.gz.asc' tzdata_2026b.orig.tar.gz.asc 833 SHA256:b69ac9d9c926cb5ef80ab0b4bbc2a462eb9b4b36167e4aac649d87b744f7ca8b
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2026b-0%2bdeb13u1.debian.tar.xz' tzdata_2026b-0+deb13u1.debian.tar.xz 127092 SHA256:1396798ec5281c957fa3c59813cf15344ae16d0639d1611ce4ab56c8da5f9402
```

Other potentially useful URLs:

- https://sources.debian.net/src/tzdata/2026b-0+deb13u1/ (for browsing the source)
- https://sources.debian.net/src/tzdata/2026b-0+deb13u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tzdata/2026b-0+deb13u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `util-linux=2.41.5-0+deb13u1`

Binary Packages:

- `bsdutils=1:2.41.5-0+deb13u1`
- `libblkid-dev:amd64=2.41.5-0+deb13u1`
- `libblkid1:amd64=2.41.5-0+deb13u1`
- `liblastlog2-2:amd64=2.41.5-0+deb13u1`
- `libmount-dev:amd64=2.41.5-0+deb13u1`
- `libmount1:amd64=2.41.5-0+deb13u1`
- `libsmartcols1:amd64=2.41.5-0+deb13u1`
- `libuuid1:amd64=2.41.5-0+deb13u1`
- `login=1:4.16.0-2+really2.41.5-0+deb13u1`
- `mount=2.41.5-0+deb13u1`
- `util-linux=2.41.5-0+deb13u1`
- `uuid-dev:amd64=2.41.5-0+deb13u1`

Licenses: (parsed from: `/usr/share/doc/bsdutils/copyright`, `/usr/share/doc/libblkid-dev/copyright`, `/usr/share/doc/libblkid1/copyright`, `/usr/share/doc/liblastlog2-2/copyright`, `/usr/share/doc/libmount-dev/copyright`, `/usr/share/doc/libmount1/copyright`, `/usr/share/doc/libsmartcols1/copyright`, `/usr/share/doc/libuuid1/copyright`, `/usr/share/doc/login/copyright`, `/usr/share/doc/mount/copyright`, `/usr/share/doc/util-linux/copyright`, `/usr/share/doc/uuid-dev/copyright`)

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
$ apt-get source -qq --print-uris util-linux=2.41.5-0+deb13u1
'http://deb.debian.org/debian-security/pool/updates/main/u/util-linux/util-linux_2.41.5-0%2bdeb13u1.dsc' util-linux_2.41.5-0+deb13u1.dsc 4988 SHA256:43e9b2cbebd10fdc598c4ad10217c8202c28de53af6eafc892c8e9b5cbf3a3a5
'http://deb.debian.org/debian-security/pool/updates/main/u/util-linux/util-linux_2.41.5.orig.tar.xz' util-linux_2.41.5.orig.tar.xz 9474992 SHA256:f586e35d320ff537aab3ffeca37e9ecd482ccbe013590db4429a414d8aa6a728
'http://deb.debian.org/debian-security/pool/updates/main/u/util-linux/util-linux_2.41.5-0%2bdeb13u1.debian.tar.xz' util-linux_2.41.5-0+deb13u1.debian.tar.xz 107604 SHA256:5b327ccd22f0f4ed28a389870aa51d04ecedb8693e52a1d122850f2b3188cbf6
```

Other potentially useful URLs:

- https://sources.debian.net/src/util-linux/2.41.5-0+deb13u1/ (for browsing the source)
- https://sources.debian.net/src/util-linux/2.41.5-0+deb13u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/util-linux/2.41.5-0+deb13u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xfonts-encodings=1:1.0.4-2.2`

Binary Packages:

- `xfonts-encodings=1:1.0.4-2.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xfonts-encodings=1:1.0.4-2.2
'http://deb.debian.org/debian/pool/main/x/xfonts-encodings/xfonts-encodings_1.0.4-2.2.dsc' xfonts-encodings_1.0.4-2.2.dsc 1985 SHA256:2a57d9948ee61a0e36b60f61d616c59ec1b60e8f6f5ba315b5e624a76c8125c7
'http://deb.debian.org/debian/pool/main/x/xfonts-encodings/xfonts-encodings_1.0.4.orig.tar.gz' xfonts-encodings_1.0.4.orig.tar.gz 768589 SHA256:55861d9cf456bd717a3d30a3193402c02174ed3c0dcee828798165fe307ee324
'http://deb.debian.org/debian/pool/main/x/xfonts-encodings/xfonts-encodings_1.0.4-2.2.diff.gz' xfonts-encodings_1.0.4-2.2.diff.gz 14914 SHA256:587821226a0a18b70362be82eb46550983fa8502b5300a2f87fc753f0f4dd1cf
```

Other potentially useful URLs:

- https://sources.debian.net/src/xfonts-encodings/1:1.0.4-2.2/ (for browsing the source)
- https://sources.debian.net/src/xfonts-encodings/1:1.0.4-2.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xfonts-encodings/1:1.0.4-2.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xfonts-utils=1:7.7+7`

Binary Packages:

- `xfonts-utils=1:7.7+7`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xfonts-utils=1:7.7+7
'http://deb.debian.org/debian/pool/main/x/xfonts-utils/xfonts-utils_7.7%2b7.dsc' xfonts-utils_7.7+7.dsc 1649 SHA256:d5ea1560ce8f9f7876b5ffdde369d6102c61d622c1936371186a710b3fa6d33f
'http://deb.debian.org/debian/pool/main/x/xfonts-utils/xfonts-utils_7.7%2b7.tar.gz' xfonts-utils_7.7+7.tar.gz 803317 SHA256:4120140bf5a428109cb2fc4dedd39d6f43f5ec363756d720244fda11501ddb37
```

Other potentially useful URLs:

- https://sources.debian.net/src/xfonts-utils/1:7.7+7/ (for browsing the source)
- https://sources.debian.net/src/xfonts-utils/1:7.7+7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xfonts-utils/1:7.7+7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xorg=1:7.7+24+deb13u1`

Binary Packages:

- `x11-common=1:7.7+24+deb13u1`

Licenses: (parsed from: `/usr/share/doc/x11-common/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris xorg=1:7.7+24+deb13u1
'http://deb.debian.org/debian/pool/main/x/xorg/xorg_7.7%2b24%2bdeb13u1.dsc' xorg_7.7+24+deb13u1.dsc 2002 SHA256:9774f8e48f9883d6ac7e907bc58c7f9b8e4899f8f16a0749d9e65951c0fbe9da
'http://deb.debian.org/debian/pool/main/x/xorg/xorg_7.7%2b24%2bdeb13u1.tar.xz' xorg_7.7+24+deb13u1.tar.xz 234192 SHA256:e08f0221d87683d1caa73fc07788c95aa81b2c86842ff1b55b6f24dfd378659a
```

Other potentially useful URLs:

- https://sources.debian.net/src/xorg/1:7.7+24+deb13u1/ (for browsing the source)
- https://sources.debian.net/src/xorg/1:7.7+24+deb13u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xorg/1:7.7+24+deb13u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xxhash=0.8.3-2`

Binary Packages:

- `libxxhash0:amd64=0.8.3-2`

Licenses: (parsed from: `/usr/share/doc/libxxhash0/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris xxhash=0.8.3-2
'http://deb.debian.org/debian/pool/main/x/xxhash/xxhash_0.8.3-2.dsc' xxhash_0.8.3-2.dsc 1969 SHA256:9d1f7aaace7871fbdb8775d756c6eaca84e6ad5d8e9c6ac465b7e0adc06ff90c
'http://deb.debian.org/debian/pool/main/x/xxhash/xxhash_0.8.3.orig.tar.gz' xxhash_0.8.3.orig.tar.gz 1147630 SHA256:aae608dfe8213dfd05d909a57718ef82f30722c392344583d3f39050c7f29a80
'http://deb.debian.org/debian/pool/main/x/xxhash/xxhash_0.8.3-2.debian.tar.xz' xxhash_0.8.3-2.debian.tar.xz 5144 SHA256:13824bfb2b2367225dfe3090d0ae050614f1c470a47db7232a2e9d4b2b14ad31
```

Other potentially useful URLs:

- https://sources.debian.net/src/xxhash/0.8.3-2/ (for browsing the source)
- https://sources.debian.net/src/xxhash/0.8.3-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xxhash/0.8.3-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xz-utils=5.8.1-1+deb13u1`

Binary Packages:

- `liblzma5:amd64=5.8.1-1+deb13u1`
- `xz-utils=5.8.1-1+deb13u1`

Licenses: (parsed from: `/usr/share/doc/liblzma5/copyright`, `/usr/share/doc/xz-utils/copyright`)

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
- `noderivs`
- `none`
- `permissive-nowarranty`

Source:

```console
$ apt-get source -qq --print-uris xz-utils=5.8.1-1+deb13u1
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.8.1-1%2bdeb13u1.dsc' xz-utils_5.8.1-1+deb13u1.dsc 2736 SHA256:ddadd9d9f7c4bb80b08f9f17409e2701a29a4cf8fe25e15d19605e5281c1fc1b
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.8.1.orig.tar.xz' xz-utils_5.8.1.orig.tar.xz 1461872 SHA256:0b54f79df85912504de0b14aec7971e3f964491af1812d83447005807513cd9e
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.8.1.orig.tar.xz.asc' xz-utils_5.8.1.orig.tar.xz.asc 833 SHA256:4138f4ceca1aa7fd2085fb15a23f6d495d27bca6d3c49c429a8520ea622c27ae
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.8.1-1%2bdeb13u1.debian.tar.xz' xz-utils_5.8.1-1+deb13u1.debian.tar.xz 25696 SHA256:0e48427971a9ce674ddbba26e34ac1dd009c683f3816ce17852d99dc7b0a8e46
```

Other potentially useful URLs:

- https://sources.debian.net/src/xz-utils/5.8.1-1+deb13u1/ (for browsing the source)
- https://sources.debian.net/src/xz-utils/5.8.1-1+deb13u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xz-utils/5.8.1-1+deb13u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `zlib=1:1.3.dfsg+really1.3.1-1`

Binary Packages:

- `zlib1g:amd64=1:1.3.dfsg+really1.3.1-1+b1`
- `zlib1g-dev:amd64=1:1.3.dfsg+really1.3.1-1+b1`

Licenses: (parsed from: `/usr/share/doc/zlib1g/copyright`, `/usr/share/doc/zlib1g-dev/copyright`)

- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.3.dfsg+really1.3.1-1
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.3.dfsg%2breally1.3.1-1.dsc' zlib_1.3.dfsg+really1.3.1-1.dsc 2637 SHA256:ede2791e29c1d3b422f9208bdd7edf040c20445ea1e7453a72037576e64fa197
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.3.dfsg%2breally1.3.1.orig.tar.gz' zlib_1.3.dfsg+really1.3.1.orig.tar.gz 1325737 SHA256:60dd315c07f616887caa029408308a018ace66e3d142726a97db164b3b8f69fb
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.3.dfsg%2breally1.3.1-1.debian.tar.xz' zlib_1.3.dfsg+really1.3.1-1.debian.tar.xz 16576 SHA256:9ed525955ce9fb0c1b39be8ff98f73450dbfc6305a9a27e6149c8972d38a0a9e
```

Other potentially useful URLs:

- https://sources.debian.net/src/zlib/1:1.3.dfsg+really1.3.1-1/ (for browsing the source)
- https://sources.debian.net/src/zlib/1:1.3.dfsg+really1.3.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/zlib/1:1.3.dfsg+really1.3.1-1/ (for access to the source package after it no longer exists in the archive)
