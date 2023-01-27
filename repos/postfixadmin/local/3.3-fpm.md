# `postfixadmin:3.3.13-fpm`

## Docker Metadata

- Image ID: `sha256:d749d6e65dfb1fb154bccc879a4fa7d754f1643fba9c3ec79a66517114ed5f62`
- Created: `2023-01-12T00:23:32.303737519Z`
- Virtual Size: ~ 462.64 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/usr/local/bin/docker-entrypoint.sh"]`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64`
  - `PHP_LDFLAGS=-Wl,-O1 -pie`
  - `GPG_KEYS=528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 39B641343D8C104B2B146DC3F9C39DC0B9698544 F1F692238FBC1666E5A5CCD4199F9DFEF6FFBAFD`
  - `PHP_VERSION=8.1.14`
  - `PHP_URL=https://www.php.net/distributions/php-8.1.14.tar.xz`
  - `PHP_ASC_URL=https://www.php.net/distributions/php-8.1.14.tar.xz.asc`
  - `PHP_SHA256=e16e47a872d58685913ac848ce92ec49f42c1828110c98c65fb6265a08724a1a`
  - `POSTFIXADMIN_VERSION=3.3.13`
  - `POSTFIXADMIN_SHA512=bf7daaa089ee3adc4b557f1a7d0509d78979ef688fb725bab795f5c9d81e8774296245fde0cb184db51e9185cad381682c3ecc0bfadf852388b499a0a95cca64`
- Labels:
  - `maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `acl=2.2.53-10`

Binary Packages:

- `libacl1:amd64=2.2.53-10`

Licenses: (parsed from: `/usr/share/doc/libacl1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris acl=2.2.53-10
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.53-10.dsc' acl_2.2.53-10.dsc 2468 SHA256:09204a89156b17a3603b2ce34b3c7b1a9fd7345086c787962188d95347918c59
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.53.orig.tar.gz' acl_2.2.53.orig.tar.gz 524300 SHA256:06be9865c6f418d851ff4494e12406568353b891ffe1f596b34693c387af26c7
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.53.orig.tar.gz.asc' acl_2.2.53.orig.tar.gz.asc 833 SHA256:06849bece0b56a6a7269173abe101cff223bb9346d74027a3cd5ff80914abf4b
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.53-10.debian.tar.xz' acl_2.2.53-10.debian.tar.xz 25536 SHA256:6b83a626aa383334b64666181642c7c13e44a6fe65486d0aaa34bd8de6d58b20
```

Other potentially useful URLs:

- https://sources.debian.net/src/acl/2.2.53-10/ (for browsing the source)
- https://sources.debian.net/src/acl/2.2.53-10/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/acl/2.2.53-10/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `adduser=3.118`

Binary Packages:

- `adduser=3.118`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.118
'http://deb.debian.org/debian/pool/main/a/adduser/adduser_3.118.dsc' adduser_3.118.dsc 1670 SHA256:fc79bc37fcf5e5700546c78a80670bb7b34836d012595b343fe2304cac82917d
'http://deb.debian.org/debian/pool/main/a/adduser/adduser_3.118.tar.xz' adduser_3.118.tar.xz 212280 SHA256:3e9eea661c9aac6b2c791bfcc1de3a9c6a422d45c8f3d38ed417737ed3166ffc
```

Other potentially useful URLs:

- https://sources.debian.net/src/adduser/3.118/ (for browsing the source)
- https://sources.debian.net/src/adduser/3.118/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/adduser/3.118/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `apt=2.2.4`

Binary Packages:

- `apt=2.2.4`
- `libapt-pkg6.0:amd64=2.2.4`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg6.0/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=2.2.4
'http://deb.debian.org/debian/pool/main/a/apt/apt_2.2.4.dsc' apt_2.2.4.dsc 2780 SHA256:750079533300bc3a4f3e10a9c8dbffaa0781b92e3616a12d7e18ab1378ca4466
'http://deb.debian.org/debian/pool/main/a/apt/apt_2.2.4.tar.xz' apt_2.2.4.tar.xz 2197424 SHA256:6eecd04a4979bd2040b22a14571c15d342c4e1802b2023acb5aa19649b1f64ea
```

Other potentially useful URLs:

- https://sources.debian.net/src/apt/2.2.4/ (for browsing the source)
- https://sources.debian.net/src/apt/2.2.4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/apt/2.2.4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `argon2=0~20171227-0.2`

Binary Packages:

- `libargon2-1:amd64=0~20171227-0.2`

Licenses: (parsed from: `/usr/share/doc/libargon2-1/copyright`)

- `Apache-2.0`
- `CC0`

Source:

```console
$ apt-get source -qq --print-uris argon2=0~20171227-0.2
'http://deb.debian.org/debian/pool/main/a/argon2/argon2_0%7e20171227-0.2.dsc' argon2_0~20171227-0.2.dsc 2108 SHA256:357d1e93318d7dd3bee401ee9cd92bd0f3ecaab3990013580a12306efda4ebf7
'http://deb.debian.org/debian/pool/main/a/argon2/argon2_0%7e20171227.orig.tar.gz' argon2_0~20171227.orig.tar.gz 1503745 SHA256:eaea0172c1f4ee4550d1b6c9ce01aab8d1ab66b4207776aa67991eb5872fdcd8
'http://deb.debian.org/debian/pool/main/a/argon2/argon2_0%7e20171227-0.2.debian.tar.xz' argon2_0~20171227-0.2.debian.tar.xz 6932 SHA256:49e630c0027ebbe0b53e3e692ce99da750e9bdfeddcebf303e595b4af5a2142f
```

Other potentially useful URLs:

- https://sources.debian.net/src/argon2/0~20171227-0.2/ (for browsing the source)
- https://sources.debian.net/src/argon2/0~20171227-0.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/argon2/0~20171227-0.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `attr=1:2.4.48-6`

Binary Packages:

- `libattr1:amd64=1:2.4.48-6`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris attr=1:2.4.48-6
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.4.48-6.dsc' attr_2.4.48-6.dsc 2433 SHA256:d55d1ba40517146e9a43f9ed1c5dbd82cfe079cd1fdb852323717a953515cfa4
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.4.48.orig.tar.gz' attr_2.4.48.orig.tar.gz 467840 SHA256:5ead72b358ec709ed00bbf7a9eaef1654baad937c001c044fe8b74c57f5324e7
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.4.48.orig.tar.gz.asc' attr_2.4.48.orig.tar.gz.asc 833 SHA256:5d23c2c83cc13d170f1c209f48d0efa1fc46d16487b790e9996c5206dcfe0395
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.4.48-6.debian.tar.xz' attr_2.4.48-6.debian.tar.xz 27260 SHA256:77f7e03cc8dd039abc3e4a7353f816a3b07fbd0b22d7784f635c5edf7d20b6df
```

Other potentially useful URLs:

- https://sources.debian.net/src/attr/1:2.4.48-6/ (for browsing the source)
- https://sources.debian.net/src/attr/1:2.4.48-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/attr/1:2.4.48-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `audit=1:3.0-2`

Binary Packages:

- `libaudit-common=1:3.0-2`
- `libaudit1:amd64=1:3.0-2`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-1`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:3.0-2
'http://deb.debian.org/debian/pool/main/a/audit/audit_3.0-2.dsc' audit_3.0-2.dsc 2397 SHA256:3cb83cc7649bb854c76f9cb6744b34091e667e433a91a57323938fdf3f353227
'http://deb.debian.org/debian/pool/main/a/audit/audit_3.0.orig.tar.gz' audit_3.0.orig.tar.gz 1109442 SHA256:bd31826823b912b6fe271d2d979ed879e9fc393cab1e2f7c4e1af258231765b8
'http://deb.debian.org/debian/pool/main/a/audit/audit_3.0-2.debian.tar.xz' audit_3.0-2.debian.tar.xz 18640 SHA256:10193fa9823eb66dfb1220fb109b8b8e01f3f720c5a1630e9015d92aa7a8ce3a
```

Other potentially useful URLs:

- https://sources.debian.net/src/audit/1:3.0-2/ (for browsing the source)
- https://sources.debian.net/src/audit/1:3.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/audit/1:3.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `autoconf=2.69-14`

Binary Packages:

- `autoconf=2.69-14`

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
$ apt-get source -qq --print-uris autoconf=2.69-14
'http://deb.debian.org/debian/pool/main/a/autoconf/autoconf_2.69-14.dsc' autoconf_2.69-14.dsc 1624 SHA256:aa23c53bf119239e302419772f89d988ecbf6ed2ac736db7329bcf71a891dece
'http://deb.debian.org/debian/pool/main/a/autoconf/autoconf_2.69.orig.tar.xz' autoconf_2.69.orig.tar.xz 1214744 SHA256:64ebcec9f8ac5b2487125a86a7760d2591ac9e1d3dbd59489633f9de62a57684
'http://deb.debian.org/debian/pool/main/a/autoconf/autoconf_2.69-14.debian.tar.xz' autoconf_2.69-14.debian.tar.xz 24512 SHA256:156bbeaeeb8a9c5cdd7d482a7d85c05c2050456959656c3b7f5f0b062dbe6f9e
```

Other potentially useful URLs:

- https://sources.debian.net/src/autoconf/2.69-14/ (for browsing the source)
- https://sources.debian.net/src/autoconf/2.69-14/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/autoconf/2.69-14/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `base-files=11.1+deb11u6`

Binary Packages:

- `base-files=11.1+deb11u6`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=11.1+deb11u6
'http://deb.debian.org/debian/pool/main/b/base-files/base-files_11.1%2bdeb11u6.dsc' base-files_11.1+deb11u6.dsc 1110 SHA256:df6d12e042b225431d93a2cb297bbd07f667dcdc94d9d7bc0b3f3849af174c1e
'http://deb.debian.org/debian/pool/main/b/base-files/base-files_11.1%2bdeb11u6.tar.xz' base-files_11.1+deb11u6.tar.xz 65644 SHA256:7399a3755e527ef0d87153090ae5bc73b18b6e80edd2b48639418f840e4f9238
```

Other potentially useful URLs:

- https://sources.debian.net/src/base-files/11.1+deb11u6/ (for browsing the source)
- https://sources.debian.net/src/base-files/11.1+deb11u6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/base-files/11.1+deb11u6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `base-passwd=3.5.51`

Binary Packages:

- `base-passwd=3.5.51`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.5.51
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.51.dsc' base-passwd_3.5.51.dsc 1757 SHA256:5752e4c2e3b9b4d45502f6aa5ce8dfd0136ea60f1b4fbd4524385e4bbd6a1571
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.51.tar.xz' base-passwd_3.5.51.tar.xz 53980 SHA256:66c75ce1877759148dbdd2704b138c4a02adab89d7d7591b6ab184f8f614efba
```

Other potentially useful URLs:

- https://sources.debian.net/src/base-passwd/3.5.51/ (for browsing the source)
- https://sources.debian.net/src/base-passwd/3.5.51/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/base-passwd/3.5.51/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `bash=5.1-2+deb11u1`

Binary Packages:

- `bash=5.1-2+deb11u1`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris bash=5.1-2+deb11u1
'http://deb.debian.org/debian/pool/main/b/bash/bash_5.1-2%2bdeb11u1.dsc' bash_5.1-2+deb11u1.dsc 2458 SHA256:a475836201a8b2937dd83180c86ede2be07ea57ff41d02dfd639c3e08fa94045
'http://deb.debian.org/debian/pool/main/b/bash/bash_5.1.orig.tar.xz' bash_5.1.orig.tar.xz 5802740 SHA256:d5eeee4f953c09826409d572e2e8996a2140d67eb8f382ce1f3a9d23883ad696
'http://deb.debian.org/debian/pool/main/b/bash/bash_5.1-2%2bdeb11u1.debian.tar.xz' bash_5.1-2+deb11u1.debian.tar.xz 90828 SHA256:2560b99eb87dd0aa3a15b88c31cc801630cbda93d566a936b643da8dff30627b
```

Other potentially useful URLs:

- https://sources.debian.net/src/bash/5.1-2+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/bash/5.1-2+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/bash/5.1-2+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `binutils=2.35.2-2`

Binary Packages:

- `binutils=2.35.2-2`
- `binutils-common:amd64=2.35.2-2`
- `binutils-x86-64-linux-gnu=2.35.2-2`
- `libbinutils:amd64=2.35.2-2`
- `libctf-nobfd0:amd64=2.35.2-2`
- `libctf0:amd64=2.35.2-2`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`, `/usr/share/doc/binutils-common/copyright`, `/usr/share/doc/binutils-x86-64-linux-gnu/copyright`, `/usr/share/doc/libbinutils/copyright`, `/usr/share/doc/libctf-nobfd0/copyright`, `/usr/share/doc/libctf0/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris binutils=2.35.2-2
'http://deb.debian.org/debian/pool/main/b/binutils/binutils_2.35.2-2.dsc' binutils_2.35.2-2.dsc 11303 SHA256:6643177e54ce708b0aa347624018c2b9cf725aca6731142a48a655b12013a9d9
'http://deb.debian.org/debian/pool/main/b/binutils/binutils_2.35.2.orig.tar.xz' binutils_2.35.2.orig.tar.xz 23514376 SHA256:2643d99d7aba8557319a4b018f6bcae58677fc9bc853d4c2cd2eb571867b75e7
'http://deb.debian.org/debian/pool/main/b/binutils/binutils_2.35.2-2.debian.tar.xz' binutils_2.35.2-2.debian.tar.xz 101124 SHA256:96f56b4d5259be49ce4a2f27057892356f7b0aed499742cb8a07f9f62b10dcb5
```

Other potentially useful URLs:

- https://sources.debian.net/src/binutils/2.35.2-2/ (for browsing the source)
- https://sources.debian.net/src/binutils/2.35.2-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/binutils/2.35.2-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `brotli=1.0.9-2`

Binary Packages:

- `libbrotli1:amd64=1.0.9-2+b2`

Licenses: (parsed from: `/usr/share/doc/libbrotli1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris brotli=1.0.9-2
'http://deb.debian.org/debian/pool/main/b/brotli/brotli_1.0.9-2.dsc' brotli_1.0.9-2.dsc 2261 SHA256:8c4c86748ec9770e08b60233d658593650444b04a452dc5b607ed5b5537b683e
'http://deb.debian.org/debian/pool/main/b/brotli/brotli_1.0.9.orig.tar.gz' brotli_1.0.9.orig.tar.gz 486984 SHA256:f9e8d81d0405ba66d181529af42a3354f838c939095ff99930da6aa9cdf6fe46
'http://deb.debian.org/debian/pool/main/b/brotli/brotli_1.0.9-2.debian.tar.xz' brotli_1.0.9-2.debian.tar.xz 5552 SHA256:ab81b1db852c8d01e0fa5b0b650bb486f32a232b35336828423af50af6fecca0
```

Other potentially useful URLs:

- https://sources.debian.net/src/brotli/1.0.9-2/ (for browsing the source)
- https://sources.debian.net/src/brotli/1.0.9-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/brotli/1.0.9-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `bzip2=1.0.8-4`

Binary Packages:

- `bzip2=1.0.8-4`
- `libbz2-1.0:amd64=1.0.8-4`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/libbz2-1.0/copyright`)

- `BSD-variant`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.8-4
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.8-4.dsc' bzip2_1.0.8-4.dsc 1603 SHA256:662c5e656a87db884fdc070239f5112cba1e616f20ff260de602876f70415c7b
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.8.orig.tar.gz' bzip2_1.0.8.orig.tar.gz 810029 SHA256:ab5a03176ee106d3f0fa90e381da478ddae405918153cca248e682cd0c4a2269
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.8-4.debian.tar.bz2' bzip2_1.0.8-4.debian.tar.bz2 26515 SHA256:3f3b26d83120260c7b2e69a5c89649bb818a79955b960fb34a5fae106f008a5d
```

Other potentially useful URLs:

- https://sources.debian.net/src/bzip2/1.0.8-4/ (for browsing the source)
- https://sources.debian.net/src/bzip2/1.0.8-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/bzip2/1.0.8-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ca-certificates=20210119`

Binary Packages:

- `ca-certificates=20210119`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20210119
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20210119.dsc' ca-certificates_20210119.dsc 1868 SHA256:51e5c099ab976f50f4d2f3c5ea0ad49853024cdb3e630322cbd7e02b05a034f4
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20210119.tar.xz' ca-certificates_20210119.tar.xz 232964 SHA256:daa3afae563711c30a0586ddae4336e8e3974c2b627faaca404c4e0141b64665
```

Other potentially useful URLs:

- https://sources.debian.net/src/ca-certificates/20210119/ (for browsing the source)
- https://sources.debian.net/src/ca-certificates/20210119/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ca-certificates/20210119/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cdebconf=0.260`

Binary Packages:

- `libdebconfclient0:amd64=0.260`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.260
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.260.dsc' cdebconf_0.260.dsc 2750 SHA256:0c0a3d76e19685f998e3b85834200255268f36b09eedfa9157fe0213958b7ea5
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.260.tar.xz' cdebconf_0.260.tar.xz 279824 SHA256:ac8a9d7449c76eeaa8ed4ef0bbbf4c16b1b816b9905690c732dea2f341ac079b
```

Other potentially useful URLs:

- https://sources.debian.net/src/cdebconf/0.260/ (for browsing the source)
- https://sources.debian.net/src/cdebconf/0.260/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cdebconf/0.260/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `coreutils=8.32-4`

Binary Packages:

- `coreutils=8.32-4+b1`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils=8.32-4
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.32-4.dsc' coreutils_8.32-4.dsc 2096 SHA256:ea8cafd14b693ec2d8b6e33ee8564c1fa5f102e65574252b0d524aaee04ba7e9
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.32.orig.tar.xz' coreutils_8.32.orig.tar.xz 5547836 SHA256:4458d8de7849df44ccab15e16b1548b285224dbba5f08fac070c1c0e0bcc4cfa
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.32.orig.tar.xz.asc' coreutils_8.32.orig.tar.xz.asc 833 SHA256:71b944375b322ba77c9c56b687b48df885c676d4fd7c465b3706713a9b62ce0a
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.32-4.debian.tar.xz' coreutils_8.32-4.debian.tar.xz 33028 SHA256:2d5337067b675e0b3fa7c88df164e7738ed4715a39e88e1e82dc9185e4e1b951
```

Other potentially useful URLs:

- https://sources.debian.net/src/coreutils/8.32-4/ (for browsing the source)
- https://sources.debian.net/src/coreutils/8.32-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/coreutils/8.32-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `curl=7.74.0-1.3+deb11u3`

Binary Packages:

- `curl=7.74.0-1.3+deb11u3`
- `libcurl4:amd64=7.74.0-1.3+deb11u3`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl4/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris curl=7.74.0-1.3+deb11u3
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.74.0-1.3%2bdeb11u3.dsc' curl_7.74.0-1.3+deb11u3.dsc 2854 SHA256:7aadaae34631b7422de02c2fd2b7e5dff0fd9753bcc34a38c62c75bba4abe211
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.74.0.orig.tar.gz' curl_7.74.0.orig.tar.gz 4043409 SHA256:e56b3921eeb7a2951959c02db0912b5fcd5fdba5aca071da819e1accf338bbd7
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.74.0-1.3%2bdeb11u3.debian.tar.xz' curl_7.74.0-1.3+deb11u3.debian.tar.xz 57680 SHA256:6a4691f76b22a702d667079de7cb79c420b3a56b95ab9e9f1ee37c9b07a051dd
```

Other potentially useful URLs:

- https://sources.debian.net/src/curl/7.74.0-1.3+deb11u3/ (for browsing the source)
- https://sources.debian.net/src/curl/7.74.0-1.3+deb11u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/curl/7.74.0-1.3+deb11u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cyrus-sasl2=2.1.27+dfsg-2.1+deb11u1`

Binary Packages:

- `libsasl2-2:amd64=2.1.27+dfsg-2.1+deb11u1`
- `libsasl2-modules-db:amd64=2.1.27+dfsg-2.1+deb11u1`

Licenses: (parsed from: `/usr/share/doc/libsasl2-2/copyright`, `/usr/share/doc/libsasl2-modules-db/copyright`)

- `BSD-4-clause`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.27+dfsg-2.1+deb11u1
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27%2bdfsg-2.1%2bdeb11u1.dsc' cyrus-sasl2_2.1.27+dfsg-2.1+deb11u1.dsc 3591 SHA256:4dafa1a5c90f0b3d9d6e9d22e810492edd3b91b9f1d4d9666683d257528445d6
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27%2bdfsg.orig.tar.xz' cyrus-sasl2_2.1.27+dfsg.orig.tar.xz 2058596 SHA256:108b0c691c423837264f05abb559ea76c3dfdd91246555e8abe87c129a6e37cd
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27%2bdfsg-2.1%2bdeb11u1.debian.tar.xz' cyrus-sasl2_2.1.27+dfsg-2.1+deb11u1.debian.tar.xz 102488 SHA256:70b7a55776febf987363f5bb58322d6f03186215374a2eb0b6203980924f8680
```

Other potentially useful URLs:

- https://sources.debian.net/src/cyrus-sasl2/2.1.27+dfsg-2.1+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/cyrus-sasl2/2.1.27+dfsg-2.1+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cyrus-sasl2/2.1.27+dfsg-2.1+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dash=0.5.11+git20200708+dd9ef66-5`

Binary Packages:

- `dash=0.5.11+git20200708+dd9ef66-5`

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
$ apt-get source -qq --print-uris dash=0.5.11+git20200708+dd9ef66-5
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.11%2bgit20200708%2bdd9ef66-5.dsc' dash_0.5.11+git20200708+dd9ef66-5.dsc 1906 SHA256:b0568c34647dc2aa0b8e2656c5e7449d9a1feb4b89d6857f507173b1f9a42ee7
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.11%2bgit20200708%2bdd9ef66.orig.tar.gz' dash_0.5.11+git20200708+dd9ef66.orig.tar.gz 167776 SHA256:ab70b1f165bfedadd1282da546f1c917f1b7ccb2c5c2f898310a963e2ab5520c
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.11%2bgit20200708%2bdd9ef66-5.debian.tar.xz' dash_0.5.11+git20200708+dd9ef66-5.debian.tar.xz 43120 SHA256:5da6039e043c953ff91a31c767ed703699870682ff356a1642f4798ce04a2926
```

Other potentially useful URLs:

- https://sources.debian.net/src/dash/0.5.11+git20200708+dd9ef66-5/ (for browsing the source)
- https://sources.debian.net/src/dash/0.5.11+git20200708+dd9ef66-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dash/0.5.11+git20200708+dd9ef66-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `db5.3=5.3.28+dfsg1-0.8`

Binary Packages:

- `libdb5.3:amd64=5.3.28+dfsg1-0.8`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28+dfsg1-0.8
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg1-0.8.dsc' db5.3_5.3.28+dfsg1-0.8.dsc 3113 SHA256:5189bebd157e3b51c075804d1affebc87cdbfb782808c621e131660719c24374
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg1.orig.tar.xz' db5.3_5.3.28+dfsg1.orig.tar.xz 19723860 SHA256:b19bf3dd8ce74b95a7b215be9a7c8489e8e8f18da60d64d6340a06e75f497749
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg1-0.8.debian.tar.xz' db5.3_5.3.28+dfsg1-0.8.debian.tar.xz 30748 SHA256:073c0c87283bf5e606f3ce6d1814315b40b9685c943601ae3fd81e2da4e612d4
```

Other potentially useful URLs:

- https://sources.debian.net/src/db5.3/5.3.28+dfsg1-0.8/ (for browsing the source)
- https://sources.debian.net/src/db5.3/5.3.28+dfsg1-0.8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/db5.3/5.3.28+dfsg1-0.8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debconf=1.5.77`

Binary Packages:

- `debconf=1.5.77`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.77
'http://deb.debian.org/debian/pool/main/d/debconf/debconf_1.5.77.dsc' debconf_1.5.77.dsc 2082 SHA256:2797e40ac2122a0ca6c1aa27bd63203e9da4342bb60e614efb848452a5696e41
'http://deb.debian.org/debian/pool/main/d/debconf/debconf_1.5.77.tar.xz' debconf_1.5.77.tar.xz 571412 SHA256:03482934c645140dd4cb8cae4970f81f576995b757ac7b89192067e72aa1d067
```

Other potentially useful URLs:

- https://sources.debian.net/src/debconf/1.5.77/ (for browsing the source)
- https://sources.debian.net/src/debconf/1.5.77/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debconf/1.5.77/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debian-archive-keyring=2021.1.1`

Binary Packages:

- `debian-archive-keyring=2021.1.1`

Licenses: (parsed from: `/usr/share/doc/debian-archive-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debian-archive-keyring=2021.1.1
'http://deb.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2021.1.1.dsc' debian-archive-keyring_2021.1.1.dsc 1854 SHA256:a17a062b6dabe2d1092ee362412b8f2c9d4a44c7bd18ef2bbb45340c2ee4c512
'http://deb.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2021.1.1.tar.xz' debian-archive-keyring_2021.1.1.tar.xz 151340 SHA256:5fe6011f7caf516b19b8f2c545bd215f4b6f8022b161d1ce5262ac2c51c4dbcf
```

Other potentially useful URLs:

- https://sources.debian.net/src/debian-archive-keyring/2021.1.1/ (for browsing the source)
- https://sources.debian.net/src/debian-archive-keyring/2021.1.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debian-archive-keyring/2021.1.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debianutils=4.11.2`

Binary Packages:

- `debianutils=4.11.2`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris debianutils=4.11.2
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_4.11.2.dsc' debianutils_4.11.2.dsc 1644 SHA256:b11164a7aa3ca07ae1d758d15d707928defb64f2c35bf96f2e4fd983ee17b310
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_4.11.2.tar.xz' debianutils_4.11.2.tar.xz 158132 SHA256:3b680e81709b740387335fac8f8806d71611dcf60874e1a792e862e48a1650de
```

Other potentially useful URLs:

- https://sources.debian.net/src/debianutils/4.11.2/ (for browsing the source)
- https://sources.debian.net/src/debianutils/4.11.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debianutils/4.11.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `diffutils=1:3.7-5`

Binary Packages:

- `diffutils=1:3.7-5`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris diffutils=1:3.7-5
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.7-5.dsc' diffutils_3.7-5.dsc 1714 SHA256:5476ed004e300f291b5f0a356074a8ba8944a8b34514bb0fe95d274455adbf5d
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.7.orig.tar.xz' diffutils_3.7.orig.tar.xz 1448828 SHA256:b3a7a6221c3dc916085f0d205abf6b8e1ba443d4dd965118da364a1dc1cb3a26
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.7.orig.tar.xz.asc' diffutils_3.7.orig.tar.xz.asc 833 SHA256:c89b9d60a1d67cf8b2dd108a8b918e4cce34cba6c9e1f67e2ca482c52c0258a7
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.7-5.debian.tar.xz' diffutils_3.7-5.debian.tar.xz 89004 SHA256:c90fd39d677702226b89d7559c124d7eb0b88195c381853ca1e5c8ca08e90a3a
```

Other potentially useful URLs:

- https://sources.debian.net/src/diffutils/1:3.7-5/ (for browsing the source)
- https://sources.debian.net/src/diffutils/1:3.7-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/diffutils/1:3.7-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dpkg=1.20.12`

Binary Packages:

- `dpkg=1.20.12`
- `dpkg-dev=1.20.12`
- `libdpkg-perl=1.20.12`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`, `/usr/share/doc/dpkg-dev/copyright`, `/usr/share/doc/libdpkg-perl/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.20.12
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.20.12.dsc' dpkg_1.20.12.dsc 2124 SHA256:fe919a7491472bab59362fab8da0c89cf59cd2eea4a8714db58f9f169fc62bf4
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.20.12.tar.xz' dpkg_1.20.12.tar.xz 5009108 SHA256:1428610305d00dffa9c35543fc3096bb1ce3293b53ed4ddad847a3d822eafbf0
```

Other potentially useful URLs:

- https://sources.debian.net/src/dpkg/1.20.12/ (for browsing the source)
- https://sources.debian.net/src/dpkg/1.20.12/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dpkg/1.20.12/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `e2fsprogs=1.46.2-2`

Binary Packages:

- `e2fsprogs=1.46.2-2`
- `libcom-err2:amd64=1.46.2-2`
- `libext2fs2:amd64=1.46.2-2`
- `libss2:amd64=1.46.2-2`
- `logsave=1.46.2-2`

Licenses: (parsed from: `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcom-err2/copyright`, `/usr/share/doc/libext2fs2/copyright`, `/usr/share/doc/libss2/copyright`, `/usr/share/doc/logsave/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.46.2-2
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.46.2-2.dsc' e2fsprogs_1.46.2-2.dsc 2842 SHA256:5b25910da7b90e40881d2cf63ebb4ae49642a8730f6e2a9c953e365dddccb73c
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.46.2.orig.tar.gz' e2fsprogs_1.46.2.orig.tar.gz 9496954 SHA256:f79f26b4f65bdc059fca12e1ec6a3040c3ce1a503fb70eb915bee71903815cd5
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.46.2.orig.tar.gz.asc' e2fsprogs_1.46.2.orig.tar.gz.asc 488 SHA256:948552550f23a9e0223cecb51b5b85258c9d94895a20bce1180fce770628a55f
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.46.2-2.debian.tar.xz' e2fsprogs_1.46.2-2.debian.tar.xz 92624 SHA256:dc67d61815c524922e7461040d732bd245cf0196f7cc8a91ea7911a87b38f737
```

Other potentially useful URLs:

- https://sources.debian.net/src/e2fsprogs/1.46.2-2/ (for browsing the source)
- https://sources.debian.net/src/e2fsprogs/1.46.2-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/e2fsprogs/1.46.2-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `file=1:5.39-3`

Binary Packages:

- `file=1:5.39-3`
- `libmagic-mgc=1:5.39-3`
- `libmagic1:amd64=1:5.39-3`

Licenses: (parsed from: `/usr/share/doc/file/copyright`, `/usr/share/doc/libmagic-mgc/copyright`, `/usr/share/doc/libmagic1/copyright`)

- `BSD-2-Clause-alike`
- `BSD-2-Clause-netbsd`
- `BSD-2-Clause-regents`
- `MIT-Old-Style-with-legal-disclaimer-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris file=1:5.39-3
'http://deb.debian.org/debian/pool/main/f/file/file_5.39-3.dsc' file_5.39-3.dsc 2237 SHA256:19952c131cffa14cf4b64f3fa2d35c975388985e5b5ee154e2e0cef5ccde697e
'http://deb.debian.org/debian/pool/main/f/file/file_5.39.orig.tar.gz' file_5.39.orig.tar.gz 954266 SHA256:f05d286a76d9556243d0cb05814929c2ecf3a5ba07963f8f70bfaaa70517fad1
'http://deb.debian.org/debian/pool/main/f/file/file_5.39.orig.tar.gz.asc' file_5.39.orig.tar.gz.asc 169 SHA256:409232b54cabe3082f38f1e7ec4c69e7d937f26d039da691f7349d142b48df83
'http://deb.debian.org/debian/pool/main/f/file/file_5.39-3.debian.tar.xz' file_5.39-3.debian.tar.xz 34420 SHA256:92657787e04b444d7ec3b6cac0519d1655cb6fc2ae08de76bc3f4f90acf0c545
```

Other potentially useful URLs:

- https://sources.debian.net/src/file/1:5.39-3/ (for browsing the source)
- https://sources.debian.net/src/file/1:5.39-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/file/1:5.39-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `findutils=4.8.0-1`

Binary Packages:

- `findutils=4.8.0-1`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.8.0-1
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.8.0-1.dsc' findutils_4.8.0-1.dsc 2302 SHA256:47f342ec5146f4138f5004dbefe5838656057b502dfe225884b9f56840e29a3b
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.8.0.orig.tar.xz' findutils_4.8.0.orig.tar.xz 1983096 SHA256:57127b7e97d91282c6ace556378d5455a9509898297e46e10443016ea1387164
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.8.0.orig.tar.xz.asc' findutils_4.8.0.orig.tar.xz.asc 488 SHA256:dc0d5251026532d2b115e447eea70a934d3df6a0efcaf225c9d585eeedeefe62
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.8.0-1.debian.tar.xz' findutils_4.8.0-1.debian.tar.xz 27296 SHA256:c99753f13f9e79653f79a398d1aafb15294c8f7953ad86948c7bf4cb0032bb43
```

Other potentially useful URLs:

- https://sources.debian.net/src/findutils/4.8.0-1/ (for browsing the source)
- https://sources.debian.net/src/findutils/4.8.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/findutils/4.8.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-10=10.2.1-6`

Binary Packages:

- `cpp-10=10.2.1-6`
- `g++-10=10.2.1-6`
- `gcc-10=10.2.1-6`
- `gcc-10-base:amd64=10.2.1-6`
- `libasan6:amd64=10.2.1-6`
- `libatomic1:amd64=10.2.1-6`
- `libcc1-0:amd64=10.2.1-6`
- `libgcc-10-dev:amd64=10.2.1-6`
- `libgcc-s1:amd64=10.2.1-6`
- `libgomp1:amd64=10.2.1-6`
- `libitm1:amd64=10.2.1-6`
- `liblsan0:amd64=10.2.1-6`
- `libquadmath0:amd64=10.2.1-6`
- `libstdc++-10-dev:amd64=10.2.1-6`
- `libstdc++6:amd64=10.2.1-6`
- `libtsan0:amd64=10.2.1-6`
- `libubsan1:amd64=10.2.1-6`

Licenses: (parsed from: `/usr/share/doc/cpp-10/copyright`, `/usr/share/doc/g++-10/copyright`, `/usr/share/doc/gcc-10/copyright`, `/usr/share/doc/gcc-10-base/copyright`, `/usr/share/doc/libasan6/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libcc1-0/copyright`, `/usr/share/doc/libgcc-10-dev/copyright`, `/usr/share/doc/libgcc-s1/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++-10-dev/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan0/copyright`, `/usr/share/doc/libubsan1/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-10=10.2.1-6
'http://deb.debian.org/debian/pool/main/g/gcc-10/gcc-10_10.2.1-6.dsc' gcc-10_10.2.1-6.dsc 27632 SHA256:24024c1e225ca968f37ce39047ff5f1058219976db9e88a807173c2f07fa6029
'http://deb.debian.org/debian/pool/main/g/gcc-10/gcc-10_10.2.1.orig.tar.xz' gcc-10_10.2.1.orig.tar.xz 84547844 SHA256:ea3c05faa381486e6b859c047dc14977418bf1ccda4567064e016493fd6fffec
'http://deb.debian.org/debian/pool/main/g/gcc-10/gcc-10_10.2.1-6.debian.tar.xz' gcc-10_10.2.1-6.debian.tar.xz 2366560 SHA256:a95d6b9da2be83f9751850b002021281411ff1003d9feb77298b131da47820b3
```

Other potentially useful URLs:

- https://sources.debian.net/src/gcc-10/10.2.1-6/ (for browsing the source)
- https://sources.debian.net/src/gcc-10/10.2.1-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gcc-10/10.2.1-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-9=9.3.0-22`

Binary Packages:

- `gcc-9-base:amd64=9.3.0-22`

Licenses: (parsed from: `/usr/share/doc/gcc-9-base/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris gcc-9=9.3.0-22
'http://deb.debian.org/debian/pool/main/g/gcc-9/gcc-9_9.3.0-22.dsc' gcc-9_9.3.0-22.dsc 21926 SHA256:14a0ea03cee0eb5450cc630a3bdf47da157062b3e7622ac45f6ae14a321eae96
'http://deb.debian.org/debian/pool/main/g/gcc-9/gcc-9_9.3.0.orig.tar.gz' gcc-9_9.3.0.orig.tar.gz 88686943 SHA256:824044ffa96eb337bb1c1d4cf6a82691d0290d6f42e1d13362eea855458de060
'http://deb.debian.org/debian/pool/main/g/gcc-9/gcc-9_9.3.0-22.debian.tar.xz' gcc-9_9.3.0-22.debian.tar.xz 904252 SHA256:68d55260456847880c71831b69c19cb81e9d1abf09274ab77ab6c081e177d94d
```

Other potentially useful URLs:

- https://sources.debian.net/src/gcc-9/9.3.0-22/ (for browsing the source)
- https://sources.debian.net/src/gcc-9/9.3.0-22/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gcc-9/9.3.0-22/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-defaults=1.190`

Binary Packages:

- `cpp=4:10.2.1-1`
- `g++=4:10.2.1-1`
- `gcc=4:10.2.1-1`

Licenses: (parsed from: `/usr/share/doc/cpp/copyright`, `/usr/share/doc/g++/copyright`, `/usr/share/doc/gcc/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris gcc-defaults=1.190
'http://deb.debian.org/debian/pool/main/g/gcc-defaults/gcc-defaults_1.190.dsc' gcc-defaults_1.190.dsc 12072 SHA256:ad953353a3d948dbbf2055aa2d1a2256e6845e7194eddbd939474387b0006a57
'http://deb.debian.org/debian/pool/main/g/gcc-defaults/gcc-defaults_1.190.tar.xz' gcc-defaults_1.190.tar.xz 45284 SHA256:4ce654e9469a9b2fa2d2168da6dd78ac338f7f86b0b68445e46ec2fbc92ece8f
```

Other potentially useful URLs:

- https://sources.debian.net/src/gcc-defaults/1.190/ (for browsing the source)
- https://sources.debian.net/src/gcc-defaults/1.190/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gcc-defaults/1.190/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gdbm=1.19-2`

Binary Packages:

- `libgdbm-compat4:amd64=1.19-2`
- `libgdbm6:amd64=1.19-2`

Licenses: (parsed from: `/usr/share/doc/libgdbm-compat4/copyright`, `/usr/share/doc/libgdbm6/copyright`)

- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.19-2
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.19-2.dsc' gdbm_1.19-2.dsc 2603 SHA256:1f05cd17a44cdf05eb97df79147a77a57fba3346b48f00909abe8ad963bf6220
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.19.orig.tar.gz' gdbm_1.19.orig.tar.gz 967861 SHA256:37ed12214122b972e18a0d94995039e57748191939ef74115b1d41d8811364bc
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.19.orig.tar.gz.asc' gdbm_1.19.orig.tar.gz.asc 181 SHA256:8f4e0502073a7a22972f1edc84c70151033257d879402ac85176d3ebc984b2b8
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.19-2.debian.tar.xz' gdbm_1.19-2.debian.tar.xz 16228 SHA256:c49d2faaa340acc8e94277dab0e0bf4ac10d49d9c374d6841883ac868edb5014
```

Other potentially useful URLs:

- https://sources.debian.net/src/gdbm/1.19-2/ (for browsing the source)
- https://sources.debian.net/src/gdbm/1.19-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gdbm/1.19-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `glib2.0=2.66.8-1`

Binary Packages:

- `libglib2.0-0:amd64=2.66.8-1`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0/copyright`)

- `Expat`
- `GPL-2+`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris glib2.0=2.66.8-1
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.66.8-1.dsc' glib2.0_2.66.8-1.dsc 3383 SHA256:2f4335085e6d94e4c3fd6441195014b2eed516fc99b649ea75fe66c38bc5edba
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.66.8.orig.tar.xz' glib2.0_2.66.8.orig.tar.xz 4845548 SHA256:97bc87dd91365589af5cbbfea2574833aea7a1b71840fd365ecd2852c76b9c8b
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.66.8-1.debian.tar.xz' glib2.0_2.66.8-1.debian.tar.xz 99420 SHA256:a1d3c2725a1a680cf4e1ab021d66bbb7f223a6faee315e7f35bee0eb38ae712e
```

Other potentially useful URLs:

- https://sources.debian.net/src/glib2.0/2.66.8-1/ (for browsing the source)
- https://sources.debian.net/src/glib2.0/2.66.8-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glib2.0/2.66.8-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `glibc=2.31-13+deb11u5`

Binary Packages:

- `libc-bin=2.31-13+deb11u5`
- `libc-dev-bin=2.31-13+deb11u5`
- `libc6:amd64=2.31-13+deb11u5`
- `libc6-dev:amd64=2.31-13+deb11u5`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.31-13+deb11u5
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.31-13%2bdeb11u5.dsc' glibc_2.31-13+deb11u5.dsc 8347 SHA256:77e3760f65a2f850bf492c8248690aed6eaec2eb988a261e0439cdcada110487
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.31.orig.tar.xz' glibc_2.31.orig.tar.xz 17254692 SHA256:3dc7704b6166839c37d7047626fd199f3d4c09aca0d90e48c51c31c967dce34e
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.31-13%2bdeb11u5.debian.tar.xz' glibc_2.31-13+deb11u5.debian.tar.xz 954032 SHA256:bb679f8e65d5b692f4479848848ec60e6eaa40e40b7eba7f5c2cf7bc79e3a415
```

Other potentially useful URLs:

- https://sources.debian.net/src/glibc/2.31-13+deb11u5/ (for browsing the source)
- https://sources.debian.net/src/glibc/2.31-13+deb11u5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glibc/2.31-13+deb11u5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gmp=2:6.2.1+dfsg-1+deb11u1`

Binary Packages:

- `libgmp10:amd64=2:6.2.1+dfsg-1+deb11u1`

Licenses: (parsed from: `/usr/share/doc/libgmp10/copyright`)

- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris gmp=2:6.2.1+dfsg-1+deb11u1
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.2.1%2bdfsg-1%2bdeb11u1.dsc' gmp_6.2.1+dfsg-1+deb11u1.dsc 2181 SHA256:4c09eb0a1c333fc5e67184a18f050af0f46f7f0fdeb533557bebd89df07c137b
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.2.1%2bdfsg.orig.tar.xz' gmp_6.2.1+dfsg.orig.tar.xz 1853476 SHA256:c6ba08e3f079260ab90ff44ab8801eae134cd62cd78f4aa56317c0e70daa40cb
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.2.1%2bdfsg-1%2bdeb11u1.debian.tar.xz' gmp_6.2.1+dfsg-1+deb11u1.debian.tar.xz 21920 SHA256:3cde187d542f5c095c6db8b76ec5252353e0413b492c57eb2e67ed3c43f40172
```

Other potentially useful URLs:

- https://sources.debian.net/src/gmp/2:6.2.1+dfsg-1+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/gmp/2:6.2.1+dfsg-1+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gmp/2:6.2.1+dfsg-1+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnupg2=2.2.27-2+deb11u2`

Binary Packages:

- `gpgv=2.2.27-2+deb11u2`

Licenses: (parsed from: `/usr/share/doc/gpgv/copyright`)

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
$ apt-get source -qq --print-uris gnupg2=2.2.27-2+deb11u2
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.27-2%2bdeb11u2.dsc' gnupg2_2.2.27-2+deb11u2.dsc 3322 SHA256:a334ffaa6c078907e64d990c469873ec883abcbbc2ca3911e4f3072c50d33eb8
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.27.orig.tar.bz2' gnupg2_2.2.27.orig.tar.bz2 7191555 SHA256:34e60009014ea16402069136e0a5f63d9b65f90096244975db5cea74b3d02399
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.27.orig.tar.bz2.asc' gnupg2_2.2.27.orig.tar.bz2.asc 119 SHA256:2b44fd82da223cb629062b9c8840d92698c003be8531fc393c38f97b28cae2a4
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.27-2%2bdeb11u2.debian.tar.xz' gnupg2_2.2.27-2+deb11u2.debian.tar.xz 63960 SHA256:b35c6a717d7f79cfd1a7468436721ca9c9211f70d10216e22523478094670a7b
```

Other potentially useful URLs:

- https://sources.debian.net/src/gnupg2/2.2.27-2+deb11u2/ (for browsing the source)
- https://sources.debian.net/src/gnupg2/2.2.27-2+deb11u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnupg2/2.2.27-2+deb11u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnutls28=3.7.1-5+deb11u2`

Binary Packages:

- `libgnutls30:amd64=3.7.1-5+deb11u2`

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
$ apt-get source -qq --print-uris gnutls28=3.7.1-5+deb11u2
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.7.1-5%2bdeb11u2.dsc' gnutls28_3.7.1-5+deb11u2.dsc 3674 SHA256:595e1121b264002001c4e38a431195788ba16c3ca1cca0bf2ee1d4c7983d4f78
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.7.1.orig.tar.xz' gnutls28_3.7.1.orig.tar.xz 6038388 SHA256:3777d7963eca5e06eb315686163b7b3f5045e2baac5e54e038ace9835e5cac6f
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.7.1.orig.tar.xz.asc' gnutls28_3.7.1.orig.tar.xz.asc 854 SHA256:13a683b12602c169a7ad7827ab0e3f35c8fa1f98675d0073cf7d54a8cd635582
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.7.1-5%2bdeb11u2.debian.tar.xz' gnutls28_3.7.1-5+deb11u2.debian.tar.xz 94568 SHA256:5c3ab8346540dd43457f51248f20a1bfd675f3cfe6a876a743b978039832c0d5
```

Other potentially useful URLs:

- https://sources.debian.net/src/gnutls28/3.7.1-5+deb11u2/ (for browsing the source)
- https://sources.debian.net/src/gnutls28/3.7.1-5+deb11u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnutls28/3.7.1-5+deb11u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gosu=1.12-1`

Binary Packages:

- `gosu=1.12-1+b6`

Licenses: (parsed from: `/usr/share/doc/gosu/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gosu=1.12-1
'http://deb.debian.org/debian/pool/main/g/gosu/gosu_1.12-1.dsc' gosu_1.12-1.dsc 2008 SHA256:2d73de09a13b10d0955ac067078af3c0f3d66309dab58ee2c22914bd58050d13
'http://deb.debian.org/debian/pool/main/g/gosu/gosu_1.12.orig.tar.gz' gosu_1.12.orig.tar.gz 19366 SHA256:91de59882ae888c3e32dbc89c54d3d3c995f0dbbe3e90fd8f79c54757f110a3d
'http://deb.debian.org/debian/pool/main/g/gosu/gosu_1.12-1.debian.tar.xz' gosu_1.12-1.debian.tar.xz 3440 SHA256:f05c0d0019513118ddce3f28cf6d4c727536605ba30095901e28818407927bee
```

Other potentially useful URLs:

- https://sources.debian.net/src/gosu/1.12-1/ (for browsing the source)
- https://sources.debian.net/src/gosu/1.12-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gosu/1.12-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `grep=3.6-1`

Binary Packages:

- `grep=3.6-1`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=3.6-1
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.6-1.dsc' grep_3.6-1.dsc 1644 SHA256:ccf6849a07a2c1fb77d2534a414f402af8cadeeac66a41deda04f3e835b09d3d
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.6.orig.tar.xz' grep_3.6.orig.tar.xz 1589412 SHA256:667e15e8afe189e93f9f21a7cd3a7b3f776202f417330b248c2ad4f997d9373e
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.6.orig.tar.xz.asc' grep_3.6.orig.tar.xz.asc 833 SHA256:02b52c0676e0e97762cee638125a345a5300fdcba691c1a5b0725ee6bd28d4a8
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.6-1.debian.tar.xz' grep_3.6-1.debian.tar.xz 17748 SHA256:67b481210e2db6bb9c45d90f39445a90c83e6d32fc6c8e5b9e89bb40488767c4
```

Other potentially useful URLs:

- https://sources.debian.net/src/grep/3.6-1/ (for browsing the source)
- https://sources.debian.net/src/grep/3.6-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/grep/3.6-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gzip=1.10-4+deb11u1`

Binary Packages:

- `gzip=1.10-4+deb11u1`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `FSF-manpages`
- `GFDL-1.3+-no-invariant`
- `GFDL-3`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.10-4+deb11u1
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.10-4%2bdeb11u1.dsc' gzip_1.10-4+deb11u1.dsc 1812 SHA256:0bcc813d124297ae741573b30db5faefec038aff92616d6ba014f859703f5acf
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.10.orig.tar.gz' gzip_1.10.orig.tar.gz 1201421 SHA256:c91f74430bf7bc20402e1f657d0b252cb80aa66ba333a25704512af346633c68
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.10-4%2bdeb11u1.debian.tar.xz' gzip_1.10-4+deb11u1.debian.tar.xz 22952 SHA256:183338e989ad327fca8c3281e8452c571bafed0c3cca0b6cea269a34b8dc19d2
```

Other potentially useful URLs:

- https://sources.debian.net/src/gzip/1.10-4+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/gzip/1.10-4+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gzip/1.10-4+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `hostname=3.23`

Binary Packages:

- `hostname=3.23`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.23
'http://deb.debian.org/debian/pool/main/h/hostname/hostname_3.23.dsc' hostname_3.23.dsc 1402 SHA256:0694c083fad82da1fd33204557a30bfc745a689a64030ba360062daafe03ede0
'http://deb.debian.org/debian/pool/main/h/hostname/hostname_3.23.tar.gz' hostname_3.23.tar.gz 13672 SHA256:bc6d1954b22849869ff8b2a602e39f08b1702f686d4b58dd7927cdeb5b4876ef
```

Other potentially useful URLs:

- https://sources.debian.net/src/hostname/3.23/ (for browsing the source)
- https://sources.debian.net/src/hostname/3.23/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/hostname/3.23/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `icu=67.1-7`

Binary Packages:

- `libicu67:amd64=67.1-7`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris icu=67.1-7
'http://deb.debian.org/debian/pool/main/i/icu/icu_67.1-7.dsc' icu_67.1-7.dsc 2236 SHA256:3213915e2b2b07ab1d5fe81ba4e310d8146c0a799fd65ac1f1dbb0c32f56cff1
'http://deb.debian.org/debian/pool/main/i/icu/icu_67.1.orig.tar.gz' icu_67.1.orig.tar.gz 24518055 SHA256:94a80cd6f251a53bd2a997f6f1b5ac6653fe791dfab66e1eb0227740fb86d5dc
'http://deb.debian.org/debian/pool/main/i/icu/icu_67.1.orig.tar.gz.asc' icu_67.1.orig.tar.gz.asc 833 SHA256:0044119f3df92ff3055dc3609f527fa1290177f6ef1b6650ea136698b245e537
'http://deb.debian.org/debian/pool/main/i/icu/icu_67.1-7.debian.tar.xz' icu_67.1-7.debian.tar.xz 30256 SHA256:9836cbc00bf8da459734c82ccd435d09674e85e268f272decf16dbfa0bda730e
```

Other potentially useful URLs:

- https://sources.debian.net/src/icu/67.1-7/ (for browsing the source)
- https://sources.debian.net/src/icu/67.1-7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/icu/67.1-7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `init-system-helpers=1.60`

Binary Packages:

- `init-system-helpers=1.60`

Licenses: (parsed from: `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.60
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.60.dsc' init-system-helpers_1.60.dsc 1902 SHA256:51dd15cc34daf5e58e40560563785d422fb27ac8a2f6ce4e73350a800cbf3265
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.60.tar.xz' init-system-helpers_1.60.tar.xz 40584 SHA256:2cf987e5ec2412faab8e99d6f26598b6ae65afe1af2073133575224997082172
```

Other potentially useful URLs:

- https://sources.debian.net/src/init-system-helpers/1.60/ (for browsing the source)
- https://sources.debian.net/src/init-system-helpers/1.60/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/init-system-helpers/1.60/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `isl=0.23-1`

Binary Packages:

- `libisl23:amd64=0.23-1`

Licenses: (parsed from: `/usr/share/doc/libisl23/copyright`)

- `BSD-2-clause`
- `LGPL-2`
- `LGPL-2.1+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris isl=0.23-1
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.23-1.dsc' isl_0.23-1.dsc 1832 SHA256:6f5a221a8b33070141ca578078974ab35e963968d777b1d551293fded250ffab
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.23.orig.tar.xz' isl_0.23.orig.tar.xz 1729656 SHA256:5efc53efaef151301f4e7dde3856b66812d8153dede24fab17673f801c8698f2
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.23-1.debian.tar.xz' isl_0.23-1.debian.tar.xz 26044 SHA256:97e9b10aca4b384241335c09b6928cf99f369fb64dfaa46b2a543e72a9d7dbe4
```

Other potentially useful URLs:

- https://sources.debian.net/src/isl/0.23-1/ (for browsing the source)
- https://sources.debian.net/src/isl/0.23-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/isl/0.23-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `keyutils=1.6.1-2`

Binary Packages:

- `libkeyutils1:amd64=1.6.1-2`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.6.1-2
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.6.1-2.dsc' keyutils_1.6.1-2.dsc 2076 SHA256:6dd531f522fb3c5d8cfaaaf726e9277b64f50bff8c05d06269f42a677f65a4a8
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.6.1.orig.tar.bz2' keyutils_1.6.1.orig.tar.bz2 97232 SHA256:c8b15722ae51d95b9ad76cc6d49a4c2cc19b0c60f72f61fb9bf43eea7cbd64ce
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.6.1-2.debian.tar.xz' keyutils_1.6.1-2.debian.tar.xz 13412 SHA256:862442538428b514bb33a1c8488d4528c5ea48feca0ea5e60d8d34fd440f2355
```

Other potentially useful URLs:

- https://sources.debian.net/src/keyutils/1.6.1-2/ (for browsing the source)
- https://sources.debian.net/src/keyutils/1.6.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/keyutils/1.6.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `krb5=1.18.3-6+deb11u3`

Binary Packages:

- `libgssapi-krb5-2:amd64=1.18.3-6+deb11u3`
- `libk5crypto3:amd64=1.18.3-6+deb11u3`
- `libkrb5-3:amd64=1.18.3-6+deb11u3`
- `libkrb5support0:amd64=1.18.3-6+deb11u3`

Licenses: (parsed from: `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.18.3-6+deb11u3
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.18.3-6%2bdeb11u3.dsc' krb5_1.18.3-6+deb11u3.dsc 3209 SHA256:539d8a8df5c181b5c16cab487fef4d192f934a170dcfe507e76020132fdb5399
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.18.3.orig.tar.gz' krb5_1.18.3.orig.tar.gz 8715312 SHA256:e61783c292b5efd9afb45c555a80dd267ac67eebabca42185362bee6c4fbd719
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.18.3.orig.tar.gz.asc' krb5_1.18.3.orig.tar.gz.asc 833 SHA256:ded19808ba7320ad0bb3ddfb5202845b2ff36a50613af7832f78dd3cb4437419
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.18.3-6%2bdeb11u3.debian.tar.xz' krb5_1.18.3-6+deb11u3.debian.tar.xz 108804 SHA256:5efc82324430be1c2e12a6f0b40dd27b149f5f77cfe10a9ed0b8567a07f08981
```

Other potentially useful URLs:

- https://sources.debian.net/src/krb5/1.18.3-6+deb11u3/ (for browsing the source)
- https://sources.debian.net/src/krb5/1.18.3-6+deb11u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/krb5/1.18.3-6+deb11u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libcap-ng=0.7.9-2.2`

Binary Packages:

- `libcap-ng0:amd64=0.7.9-2.2+b1`

Licenses: (parsed from: `/usr/share/doc/libcap-ng0/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libcap-ng=0.7.9-2.2
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.7.9-2.2.dsc' libcap-ng_0.7.9-2.2.dsc 2081 SHA256:d573ce59d83d2c117515e7c57dde1c990e9c5a34e0f53ac09f6b4d3e153e9aae
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.7.9.orig.tar.gz' libcap-ng_0.7.9.orig.tar.gz 449038 SHA256:4a1532bcf3731aade40936f6d6a586ed5a66ca4c7455e1338d1f6c3e09221328
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.7.9-2.2.debian.tar.xz' libcap-ng_0.7.9-2.2.debian.tar.xz 6308 SHA256:6d7b5cfcf435fe996e5dc78770a9ab1ab614ced5bee56e3e0ba4e09d8c832a0a
```

Other potentially useful URLs:

- https://sources.debian.net/src/libcap-ng/0.7.9-2.2/ (for browsing the source)
- https://sources.debian.net/src/libcap-ng/0.7.9-2.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libcap-ng/0.7.9-2.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libffi=3.3-6`

Binary Packages:

- `libffi7:amd64=3.3-6`

Licenses: (parsed from: `/usr/share/doc/libffi7/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.3-6
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.3-6.dsc' libffi_3.3-6.dsc 1934 SHA256:cb5dcd6b54e0c8c7db4cd97deef68ac9e2ede49138ca5db194b60338eae8dd65
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.3.orig.tar.gz' libffi_3.3.orig.tar.gz 1305466 SHA256:72fba7922703ddfa7a028d513ac15a85c8d54c8d67f55fa5a4802885dc652056
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.3-6.debian.tar.xz' libffi_3.3-6.debian.tar.xz 9168 SHA256:d15879289f32acf2afbbcc6ccf6e0c1aa306f6f06abb8b0301bfa41bffea9a55
```

Other potentially useful URLs:

- https://sources.debian.net/src/libffi/3.3-6/ (for browsing the source)
- https://sources.debian.net/src/libffi/3.3-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libffi/3.3-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgcrypt20=1.8.7-6`

Binary Packages:

- `libgcrypt20:amd64=1.8.7-6`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.8.7-6
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.7-6.dsc' libgcrypt20_1.8.7-6.dsc 2800 SHA256:af433c97fde6172bb51d458e66acd33c66052bdf78ad72f7034f0b1851015959
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.7.orig.tar.bz2' libgcrypt20_1.8.7.orig.tar.bz2 2985660 SHA256:03b70f028299561b7034b8966d7dd77ef16ed139c43440925fe8782561974748
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.7.orig.tar.bz2.asc' libgcrypt20_1.8.7.orig.tar.bz2.asc 228 SHA256:eed6bb4174433640a02c1dc8851f34f85ec55b43d76a24bec87d7175784ef614
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.7-6.debian.tar.xz' libgcrypt20_1.8.7-6.debian.tar.xz 37564 SHA256:3fe8290b67416579fc99648ba025b8de732c4cc541b60b5f96f53d42a38916f5
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgcrypt20/1.8.7-6/ (for browsing the source)
- https://sources.debian.net/src/libgcrypt20/1.8.7-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgcrypt20/1.8.7-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgpg-error=1.38-2`

Binary Packages:

- `libgpg-error0:amd64=1.38-2`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.38-2
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.38-2.dsc' libgpg-error_1.38-2.dsc 2220 SHA256:ab0ea76aa3552afa664210a871abc74637acafd89c068edf8dc03521b8e22d64
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.38.orig.tar.bz2' libgpg-error_1.38.orig.tar.bz2 957637 SHA256:d8988275aa69d7149f931c10442e9e34c0242674249e171592b430ff7b3afd02
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.38.orig.tar.bz2.asc' libgpg-error_1.38.orig.tar.bz2.asc 488 SHA256:d80eb927d85e19e96d8de17552f8f48b517ae7acac7685404e8027475c5b4330
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.38-2.debian.tar.xz' libgpg-error_1.38-2.debian.tar.xz 19544 SHA256:824bcb278ead676c20f174bd551b1cc44a294137fabe6a1d892667882f3b4ba2
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgpg-error/1.38-2/ (for browsing the source)
- https://sources.debian.net/src/libgpg-error/1.38-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgpg-error/1.38-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libidn2=2.3.0-5`

Binary Packages:

- `libidn2-0:amd64=2.3.0-5`

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
$ apt-get source -qq --print-uris libidn2=2.3.0-5
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.3.0-5.dsc' libidn2_2.3.0-5.dsc 2046 SHA256:f8a787741b2395fe87c2773252e539bcc068fde0a5367316082cbbd2fed2be16
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.3.0.orig.tar.gz' libidn2_2.3.0.orig.tar.gz 2164993 SHA256:e1cb1db3d2e249a6a3eb6f0946777c2e892d5c5dc7bd91c74394fc3a01cab8b5
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.3.0-5.debian.tar.xz' libidn2_2.3.0-5.debian.tar.xz 11276 SHA256:e061b97d035e374bc6a948a514c26ad7d1bda31c8147cc8db02e604c82865a15
```

Other potentially useful URLs:

- https://sources.debian.net/src/libidn2/2.3.0-5/ (for browsing the source)
- https://sources.debian.net/src/libidn2/2.3.0-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libidn2/2.3.0-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libnsl=1.3.0-2`

Binary Packages:

- `libnsl-dev:amd64=1.3.0-2`
- `libnsl2:amd64=1.3.0-2`

Licenses: (parsed from: `/usr/share/doc/libnsl-dev/copyright`, `/usr/share/doc/libnsl2/copyright`)

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
$ apt-get source -qq --print-uris libnsl=1.3.0-2
'http://deb.debian.org/debian/pool/main/libn/libnsl/libnsl_1.3.0-2.dsc' libnsl_1.3.0-2.dsc 1955 SHA256:1da570eed6693c774cce51f3c33f989d1aa4bf1dcb8660818d8a834a1a3728ef
'http://deb.debian.org/debian/pool/main/libn/libnsl/libnsl_1.3.0.orig.tar.xz' libnsl_1.3.0.orig.tar.xz 321488 SHA256:eac3062957fa302c62eff4aed718a07bacbf9ceb0a058289f12a19bfdda3c8e2
'http://deb.debian.org/debian/pool/main/libn/libnsl/libnsl_1.3.0-2.debian.tar.xz' libnsl_1.3.0-2.debian.tar.xz 4692 SHA256:7f8dccc706931b9e206448ffb475487a4a0abaded27cf611d418f4a34415dca7
```

Other potentially useful URLs:

- https://sources.debian.net/src/libnsl/1.3.0-2/ (for browsing the source)
- https://sources.debian.net/src/libnsl/1.3.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libnsl/1.3.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libonig=6.9.6-1.1`

Binary Packages:

- `libonig5:amd64=6.9.6-1.1`

Licenses: (parsed from: `/usr/share/doc/libonig5/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libonig=6.9.6-1.1
'http://deb.debian.org/debian/pool/main/libo/libonig/libonig_6.9.6-1.1.dsc' libonig_6.9.6-1.1.dsc 1868 SHA256:a5bb396616d170586fdf01dfb4191b59181dc0f4505b648a68fe801ea8a6f5fb
'http://deb.debian.org/debian/pool/main/libo/libonig/libonig_6.9.6.orig.tar.gz' libonig_6.9.6.orig.tar.gz 621239 SHA256:aec9f6902ad8b7bb53b2c55d04686ea75da89a06694836b0362cb206578dfe89
'http://deb.debian.org/debian/pool/main/libo/libonig/libonig_6.9.6-1.1.debian.tar.xz' libonig_6.9.6-1.1.debian.tar.xz 8680 SHA256:59d4dccdc85481947efeab3dbb79ba6208d7758df107ad2510adf101666a6d8f
```

Other potentially useful URLs:

- https://sources.debian.net/src/libonig/6.9.6-1.1/ (for browsing the source)
- https://sources.debian.net/src/libonig/6.9.6-1.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libonig/6.9.6-1.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libpsl=0.21.0-1.2`

Binary Packages:

- `libpsl5:amd64=0.21.0-1.2`

Licenses: (parsed from: `/usr/share/doc/libpsl5/copyright`)

- `Chromium`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libpsl=0.21.0-1.2
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.21.0-1.2.dsc' libpsl_0.21.0-1.2.dsc 2216 SHA256:d46b69dd1cb43dc48375d70c4895d0a0d5964131196a7de4e0ad1ea2912d6df4
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.21.0.orig.tar.gz' libpsl_0.21.0.orig.tar.gz 8598583 SHA256:055aa87ec166c7afb985d0816c07ff440e1eb899881a318c51c69a0aeea8e279
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.21.0-1.2.debian.tar.xz' libpsl_0.21.0-1.2.debian.tar.xz 12724 SHA256:012d3b6ec5634c59e6a4aa9f854d756ef23f08edf21d70ae5a888c55e95abd5d
```

Other potentially useful URLs:

- https://sources.debian.net/src/libpsl/0.21.0-1.2/ (for browsing the source)
- https://sources.debian.net/src/libpsl/0.21.0-1.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpsl/0.21.0-1.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libseccomp=2.5.1-1+deb11u1`

Binary Packages:

- `libseccomp2:amd64=2.5.1-1+deb11u1`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.5.1-1+deb11u1
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.5.1-1%2bdeb11u1.dsc' libseccomp_2.5.1-1+deb11u1.dsc 2708 SHA256:6a2a00eb5f45e794a2203805348a3990d46f4ded63f8708d3382994ece729436
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.5.1.orig.tar.gz' libseccomp_2.5.1.orig.tar.gz 638811 SHA256:ee307e383c77aa7995abc5ada544d51c9723ae399768a97667d4cdb3c3a30d55
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.5.1.orig.tar.gz.asc' libseccomp_2.5.1.orig.tar.gz.asc 833 SHA256:14d45c86e5ceed5ac5511c3ebf70a4dca128b7584b314dc8a551c779ea225d2e
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.5.1-1%2bdeb11u1.debian.tar.xz' libseccomp_2.5.1-1+deb11u1.debian.tar.xz 19524 SHA256:a09ef7c0b9b6464f426b78a7b978d8566da53667c1a234234ffd2cc600543200
```

Other potentially useful URLs:

- https://sources.debian.net/src/libseccomp/2.5.1-1+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/libseccomp/2.5.1-1+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libseccomp/2.5.1-1+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libselinux=3.1-3`

Binary Packages:

- `libselinux1:amd64=3.1-3`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=3.1-3
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_3.1-3.dsc' libselinux_3.1-3.dsc 2300 SHA256:42810484f3776af09a2e0ab726e3be877fc8a54d6bf51702e46c22f945ab5177
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_3.1.orig.tar.gz' libselinux_3.1.orig.tar.gz 204703 SHA256:ea5dcbb4d859e3f999c26a13c630da2f16dff9462e3cc8cb7b458ac157d112e7
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_3.1-3.debian.tar.xz' libselinux_3.1-3.debian.tar.xz 24176 SHA256:7170ab6914f0d2e93de169da312df961f799f5d58cc0a4c552e3f8a7882f3c81
```

Other potentially useful URLs:

- https://sources.debian.net/src/libselinux/3.1-3/ (for browsing the source)
- https://sources.debian.net/src/libselinux/3.1-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libselinux/3.1-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsemanage=3.1-1`

Binary Packages:

- `libsemanage-common=3.1-1`
- `libsemanage1:amd64=3.1-1+b2`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=3.1-1
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_3.1-1.dsc' libsemanage_3.1-1.dsc 2339 SHA256:d49f9c29d0ad9c8b42145e0926919df962b58823e9fc22002bbb00333276170d
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_3.1.orig.tar.gz' libsemanage_3.1.orig.tar.gz 179601 SHA256:22d6c75526e40d1781c30bcf29abf97171bdfe6780923f11c8e1c76a75a21ff8
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_3.1-1.debian.tar.xz' libsemanage_3.1-1.debian.tar.xz 17556 SHA256:185b151158faaaf3d8f9ff939f29efd3eb5dbb050d01a87d3fde6cf40e778648
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsemanage/3.1-1/ (for browsing the source)
- https://sources.debian.net/src/libsemanage/3.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsemanage/3.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsepol=3.1-1`

Binary Packages:

- `libsepol1:amd64=3.1-1`

Licenses: (parsed from: `/usr/share/doc/libsepol1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=3.1-1
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_3.1-1.dsc' libsepol_3.1-1.dsc 1776 SHA256:37bfb6797af8a96eada6c6ace374292b8a16a6bfb557b1e8ab9fd29e72d5888a
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_3.1.orig.tar.gz' libsepol_3.1.orig.tar.gz 473842 SHA256:ae6778d01443fdd38cd30eeee846494e19f4d407b09872580372f4aa4bf8a3cc
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_3.1-1.debian.tar.xz' libsepol_3.1-1.debian.tar.xz 14584 SHA256:9351a0b6207f6a5da2951292d3ec5655feb89df5aabc9010094766d811156166
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsepol/3.1-1/ (for browsing the source)
- https://sources.debian.net/src/libsepol/3.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsepol/3.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsigsegv=2.13-1`

Binary Packages:

- `libsigsegv2:amd64=2.13-1`

Licenses: (parsed from: `/usr/share/doc/libsigsegv2/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf exception`
- `permissive-fsf`
- `permissive-other`

Source:

```console
$ apt-get source -qq --print-uris libsigsegv=2.13-1
'http://deb.debian.org/debian/pool/main/libs/libsigsegv/libsigsegv_2.13-1.dsc' libsigsegv_2.13-1.dsc 2338 SHA256:6e22271eb31721e6b55b401c830aa2459654d3d08bd53688e86037b71fef5170
'http://deb.debian.org/debian/pool/main/libs/libsigsegv/libsigsegv_2.13.orig.tar.gz' libsigsegv_2.13.orig.tar.gz 460736 SHA256:be78ee4176b05f7c75ff03298d84874db90f4b6c9d5503f0da1226b3a3c48119
'http://deb.debian.org/debian/pool/main/libs/libsigsegv/libsigsegv_2.13.orig.tar.gz.asc' libsigsegv_2.13.orig.tar.gz.asc 819 SHA256:f63cbbc68da4a53b685dc373b5c11d0b0cdf467be9391efc89c88c440d74df36
'http://deb.debian.org/debian/pool/main/libs/libsigsegv/libsigsegv_2.13-1.debian.tar.xz' libsigsegv_2.13-1.debian.tar.xz 8572 SHA256:4210f5c3b99fd2521490f52345b4faca591f2fabb09b19a14e5644e8da8ac59a
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsigsegv/2.13-1/ (for browsing the source)
- https://sources.debian.net/src/libsigsegv/2.13-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsigsegv/2.13-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsodium=1.0.18-1`

Binary Packages:

- `libsodium23:amd64=1.0.18-1`

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
$ apt-get source -qq --print-uris libsodium=1.0.18-1
'http://deb.debian.org/debian/pool/main/libs/libsodium/libsodium_1.0.18-1.dsc' libsodium_1.0.18-1.dsc 1913 SHA256:037b3ac05a50409cb462e2c21c7a67f983d193a22d2486f4ab3fdc793f5a731c
'http://deb.debian.org/debian/pool/main/libs/libsodium/libsodium_1.0.18.orig.tar.gz' libsodium_1.0.18.orig.tar.gz 1619527 SHA256:d59323c6b712a1519a5daf710b68f5e7fde57040845ffec53850911f10a5d4f4
'http://deb.debian.org/debian/pool/main/libs/libsodium/libsodium_1.0.18-1.debian.tar.xz' libsodium_1.0.18-1.debian.tar.xz 7440 SHA256:50863d8fc4f0a2a86f7b69745514455f0b9d74cf45906523c675ffe5b8db0377
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsodium/1.0.18-1/ (for browsing the source)
- https://sources.debian.net/src/libsodium/1.0.18-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsodium/1.0.18-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libssh2=1.9.0-2`

Binary Packages:

- `libssh2-1:amd64=1.9.0-2`

Licenses: (parsed from: `/usr/share/doc/libssh2-1/copyright`)

- `BSD3`

Source:

```console
$ apt-get source -qq --print-uris libssh2=1.9.0-2
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.9.0-2.dsc' libssh2_1.9.0-2.dsc 2007 SHA256:fbf9500e064cdd307a634772d0d417de910fcba874e3edbb72cce538f0389a11
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.9.0.orig.tar.gz' libssh2_1.9.0.orig.tar.gz 888551 SHA256:d5fb8bd563305fd1074dda90bd053fb2d29fc4bce048d182f96eaa466dfadafd
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.9.0-2.debian.tar.xz' libssh2_1.9.0-2.debian.tar.xz 9116 SHA256:7081ec54751720082d3f95ef73e2b52a46f72a67ab765932576c11aeb54df7d9
```

Other potentially useful URLs:

- https://sources.debian.net/src/libssh2/1.9.0-2/ (for browsing the source)
- https://sources.debian.net/src/libssh2/1.9.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libssh2/1.9.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libtasn1-6=4.16.0-2+deb11u1`

Binary Packages:

- `libtasn1-6:amd64=4.16.0-2+deb11u1`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=4.16.0-2+deb11u1
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.16.0-2%2bdeb11u1.dsc' libtasn1-6_4.16.0-2+deb11u1.dsc 2618 SHA256:795155e19208ef5cf07534cd0fc0664b6144f94c16eec03d80fdee7a14f838b8
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.16.0.orig.tar.gz' libtasn1-6_4.16.0.orig.tar.gz 1812442 SHA256:0e0fb0903839117cb6e3b56e68222771bebf22ad7fc2295a0ed7d576e8d4329d
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.16.0.orig.tar.gz.asc' libtasn1-6_4.16.0.orig.tar.gz.asc 488 SHA256:06c201e8c3b43c27465ed79294d4c4ec8dcd3e95e4a6176ecbf273229ee3e2d0
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.16.0-2%2bdeb11u1.debian.tar.xz' libtasn1-6_4.16.0-2+deb11u1.debian.tar.xz 18324 SHA256:85198cc8eac7ecf5dc8bf220b0973c4ccd6c039217240fbf45ffe49860aacdd1
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtasn1-6/4.16.0-2+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/libtasn1-6/4.16.0-2+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtasn1-6/4.16.0-2+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libtirpc=1.3.1-1+deb11u1`

Binary Packages:

- `libtirpc-common=1.3.1-1+deb11u1`
- `libtirpc-dev:amd64=1.3.1-1+deb11u1`
- `libtirpc3:amd64=1.3.1-1+deb11u1`

Licenses: (parsed from: `/usr/share/doc/libtirpc-common/copyright`, `/usr/share/doc/libtirpc-dev/copyright`, `/usr/share/doc/libtirpc3/copyright`)

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
$ apt-get source -qq --print-uris libtirpc=1.3.1-1+deb11u1
'http://deb.debian.org/debian/pool/main/libt/libtirpc/libtirpc_1.3.1-1%2bdeb11u1.dsc' libtirpc_1.3.1-1+deb11u1.dsc 2273 SHA256:f6c9103b9155e084cccc5a991e08678c9faad8a087c502cf8c8c552046c27847
'http://deb.debian.org/debian/pool/main/libt/libtirpc/libtirpc_1.3.1.orig.tar.bz2' libtirpc_1.3.1.orig.tar.bz2 513399 SHA256:245895caf066bec5e3d4375942c8cb4366adad184c29c618d97f724ea309ee17
'http://deb.debian.org/debian/pool/main/libt/libtirpc/libtirpc_1.3.1-1%2bdeb11u1.debian.tar.xz' libtirpc_1.3.1-1+deb11u1.debian.tar.xz 12752 SHA256:a0415b82adeba844372ca104e87376cd4c4bbb47e490925369e46e1c8f8750d4
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtirpc/1.3.1-1+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/libtirpc/1.3.1-1+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtirpc/1.3.1-1+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libunistring=0.9.10-4`

Binary Packages:

- `libunistring2:amd64=0.9.10-4`

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
$ apt-get source -qq --print-uris libunistring=0.9.10-4
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_0.9.10-4.dsc' libunistring_0.9.10-4.dsc 2212 SHA256:5c7940807b538d4204506349cbd67e5c677afb9f0e46e94455353e3f746a481e
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_0.9.10.orig.tar.xz' libunistring_0.9.10.orig.tar.xz 2051320 SHA256:eb8fb2c3e4b6e2d336608377050892b54c3c983b646c561836550863003c05d7
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_0.9.10.orig.tar.xz.asc' libunistring_0.9.10.orig.tar.xz.asc 1310 SHA256:e1606f691034fa21b00e08269622743547c16d21cca6c8a64156b4774a49e78e
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_0.9.10-4.debian.tar.xz' libunistring_0.9.10-4.debian.tar.xz 40936 SHA256:6c9554e1a1c6d0a02ca4868a5422d176e57a3131c1a8a21de5503b164997525c
```

Other potentially useful URLs:

- https://sources.debian.net/src/libunistring/0.9.10-4/ (for browsing the source)
- https://sources.debian.net/src/libunistring/0.9.10-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libunistring/0.9.10-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxcrypt=1:4.4.18-4`

Binary Packages:

- `libcrypt-dev:amd64=1:4.4.18-4`
- `libcrypt1:amd64=1:4.4.18-4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcrypt=1:4.4.18-4
'http://deb.debian.org/debian/pool/main/libx/libxcrypt/libxcrypt_4.4.18-4.dsc' libxcrypt_4.4.18-4.dsc 1477 SHA256:5c0ca54ddad5343596f6c0916caf30fbb9b8a144252b49dc74f97502f33cdb7a
'http://deb.debian.org/debian/pool/main/libx/libxcrypt/libxcrypt_4.4.18.orig.tar.xz' libxcrypt_4.4.18.orig.tar.xz 397776 SHA256:4cd2a06e98519d57a5572ee8885b6cc23c70a559d234c161d3f22c487edaa3fa
'http://deb.debian.org/debian/pool/main/libx/libxcrypt/libxcrypt_4.4.18-4.debian.tar.xz' libxcrypt_4.4.18-4.debian.tar.xz 7560 SHA256:6c99b888c57e1411d870fa81d057e30444aa801ed430aa3126d31996e187dd84
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxcrypt/1:4.4.18-4/ (for browsing the source)
- https://sources.debian.net/src/libxcrypt/1:4.4.18-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxcrypt/1:4.4.18-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxml2=2.9.10+dfsg-6.7+deb11u3`

Binary Packages:

- `libxml2:amd64=2.9.10+dfsg-6.7+deb11u3`

Licenses: (parsed from: `/usr/share/doc/libxml2/copyright`)

- `ISC`
- `MIT-1`

Source:

```console
$ apt-get source -qq --print-uris libxml2=2.9.10+dfsg-6.7+deb11u3
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.10%2bdfsg-6.7%2bdeb11u3.dsc' libxml2_2.9.10+dfsg-6.7+deb11u3.dsc 2859 SHA256:92c6d3646f72080370da38a84ee1b4a8c49f99d0254f81ea4e344a25c349915a
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.10%2bdfsg.orig.tar.xz' libxml2_2.9.10+dfsg.orig.tar.xz 2503560 SHA256:65ee7a2f5e100c64ddf7beb92297c9b2a30b994a76cd1fab67470cf22db6b7d0
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.10%2bdfsg-6.7%2bdeb11u3.debian.tar.xz' libxml2_2.9.10+dfsg-6.7+deb11u3.debian.tar.xz 40092 SHA256:af3a4b06a555f9a39d7f7487c330787795d0878c0e28313fcff44904f99a291c
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxml2/2.9.10+dfsg-6.7+deb11u3/ (for browsing the source)
- https://sources.debian.net/src/libxml2/2.9.10+dfsg-6.7+deb11u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxml2/2.9.10+dfsg-6.7+deb11u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libzstd=1.4.8+dfsg-2.1`

Binary Packages:

- `libzstd1:amd64=1.4.8+dfsg-2.1`

Licenses: (parsed from: `/usr/share/doc/libzstd1/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris libzstd=1.4.8+dfsg-2.1
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.4.8%2bdfsg-2.1.dsc' libzstd_1.4.8+dfsg-2.1.dsc 2274 SHA256:7c656b8cab7a560710358dddbd949b33b1ffcedd7cbef370132e4018b94e2e74
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.4.8%2bdfsg.orig.tar.xz' libzstd_1.4.8+dfsg.orig.tar.xz 1331996 SHA256:1e8ce5c4880a6d5bd8d3186e4186607dd19b64fc98a3877fc13aeefd566d67c5
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.4.8%2bdfsg-2.1.debian.tar.xz' libzstd_1.4.8+dfsg-2.1.debian.tar.xz 12224 SHA256:cba8544590e59303277e3af2bb260fed32723a1084c9f4928956deca2c80032c
```

Other potentially useful URLs:

- https://sources.debian.net/src/libzstd/1.4.8+dfsg-2.1/ (for browsing the source)
- https://sources.debian.net/src/libzstd/1.4.8+dfsg-2.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libzstd/1.4.8+dfsg-2.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `linux=5.10.158-2`

Binary Packages:

- `linux-libc-dev:amd64=5.10.158-2`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `BSD-2-clause`
- `CRYPTOGAMS`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `Unicode-data`
- `X11`
- `Xen-interface`

Source:

```console
$ apt-get source -qq --print-uris linux=5.10.158-2
'http://deb.debian.org/debian/pool/main/l/linux/linux_5.10.158-2.dsc' linux_5.10.158-2.dsc 197238 SHA256:938feb8baa4c955c3313eb4e6e03f3f556e86b8a74a578d91691edab29db07f3
'http://deb.debian.org/debian/pool/main/l/linux/linux_5.10.158.orig.tar.xz' linux_5.10.158.orig.tar.xz 121806368 SHA256:a0791322c13f09ec855a0630a4764234308aafb4fe04540dde302b8cc21e052a
'http://deb.debian.org/debian/pool/main/l/linux/linux_5.10.158-2.debian.tar.xz' linux_5.10.158-2.debian.tar.xz 3487356 SHA256:bfb86bb848fc869105455d59363f2323963278988168b32f54dc71f0eb246b69
```

Other potentially useful URLs:

- https://sources.debian.net/src/linux/5.10.158-2/ (for browsing the source)
- https://sources.debian.net/src/linux/5.10.158-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/linux/5.10.158-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lsb=11.1.0`

Binary Packages:

- `lsb-base=11.1.0`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`)

- `BSD-3-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lsb=11.1.0
'http://deb.debian.org/debian/pool/main/l/lsb/lsb_11.1.0.dsc' lsb_11.1.0.dsc 1800 SHA256:5cb5679dcc92e30aa878f892f73081d6b4d5299841549f6d53a886d51509feb1
'http://deb.debian.org/debian/pool/main/l/lsb/lsb_11.1.0.tar.xz' lsb_11.1.0.tar.xz 42452 SHA256:c7926d511228862892630070f7708c425db9473ceefc70872868c448b5145b57
```

Other potentially useful URLs:

- https://sources.debian.net/src/lsb/11.1.0/ (for browsing the source)
- https://sources.debian.net/src/lsb/11.1.0/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lsb/11.1.0/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lz4=1.9.3-2`

Binary Packages:

- `liblz4-1:amd64=1.9.3-2`

Licenses: (parsed from: `/usr/share/doc/liblz4-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lz4=1.9.3-2
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_1.9.3-2.dsc' lz4_1.9.3-2.dsc 1959 SHA256:215e1f0be1bb40e2b89182f3a1bf630463d8acdc0917f1f928ad1bf9ef3e1b0c
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_1.9.3.orig.tar.gz' lz4_1.9.3.orig.tar.gz 320958 SHA256:030644df4611007ff7dc962d981f390361e6c97a34e5cbc393ddfbe019ffe2c1
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_1.9.3-2.debian.tar.xz' lz4_1.9.3-2.debian.tar.xz 13928 SHA256:d7754a7b7b1fa196666d6459705107355e15fef162352e363e43722e012a04e3
```

Other potentially useful URLs:

- https://sources.debian.net/src/lz4/1.9.3-2/ (for browsing the source)
- https://sources.debian.net/src/lz4/1.9.3-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lz4/1.9.3-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `m4=1.4.18-5`

Binary Packages:

- `m4=1.4.18-5`

Licenses: (parsed from: `/usr/share/doc/m4/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris m4=1.4.18-5
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.18-5.dsc' m4_1.4.18-5.dsc 1637 SHA256:ebc66cf67735240e2129cfbf20b8441e5144ef75c9fca0782a81eece8ae0f9d5
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.18.orig.tar.xz' m4_1.4.18.orig.tar.xz 1207688 SHA256:f2c1e86ca0a404ff281631bdc8377638992744b175afb806e25871a24a934e07
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.18.orig.tar.xz.asc' m4_1.4.18.orig.tar.xz.asc 521 SHA256:a2a9fff657e65ff25a8f3734f484dbd3ede8f8290786af71626de367dcd74267
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.18-5.debian.tar.xz' m4_1.4.18-5.debian.tar.xz 17468 SHA256:94861648b7e3bc0e47eb0746d3c5717c879e74e59928be69064fa9968bc8f228
```

Other potentially useful URLs:

- https://sources.debian.net/src/m4/1.4.18-5/ (for browsing the source)
- https://sources.debian.net/src/m4/1.4.18-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/m4/1.4.18-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `make-dfsg=4.3-4.1`

Binary Packages:

- `make=4.3-4.1`

Licenses: (parsed from: `/usr/share/doc/make/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris make-dfsg=4.3-4.1
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.3-4.1.dsc' make-dfsg_4.3-4.1.dsc 2019 SHA256:d2523d94f4d4198df6801f238d36cf0dea2ab5521f1d19ee76b2e8ee1f1918bb
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.3.orig.tar.gz' make-dfsg_4.3.orig.tar.gz 1845906 SHA256:be4c17542578824e745f83bcd2a9ba264206187247cb6a5f5df99b0a9d1f9047
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.3-4.1.diff.gz' make-dfsg_4.3-4.1.diff.gz 50940 SHA256:753c254ecaba425ebe2e0a0fb4d299847701e1c3eeb43df563e39975cae56b4c
```

Other potentially useful URLs:

- https://sources.debian.net/src/make-dfsg/4.3-4.1/ (for browsing the source)
- https://sources.debian.net/src/make-dfsg/4.3-4.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/make-dfsg/4.3-4.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mawk=1.3.4.20200120-2`

Binary Packages:

- `mawk=1.3.4.20200120-2`

Licenses: (parsed from: `/usr/share/doc/mawk/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris mawk=1.3.4.20200120-2
'http://deb.debian.org/debian/pool/main/m/mawk/mawk_1.3.4.20200120-2.dsc' mawk_1.3.4.20200120-2.dsc 1915 SHA256:5069c46872ac74f5221250dfb88b31b1f2dbb8a2617c1e013f8f80cc34638c6d
'http://deb.debian.org/debian/pool/main/m/mawk/mawk_1.3.4.20200120.orig.tar.gz' mawk_1.3.4.20200120.orig.tar.gz 468855 SHA256:7fd4cd1e1fae9290fe089171181bbc6291dfd9bca939ca804f0ddb851c8b8237
'http://deb.debian.org/debian/pool/main/m/mawk/mawk_1.3.4.20200120-2.debian.tar.xz' mawk_1.3.4.20200120-2.debian.tar.xz 7504 SHA256:b772ed2f016b0286980c46cbc1f1f4ae62887ef2aa3dff6ef10cae638f923f26
```

Other potentially useful URLs:

- https://sources.debian.net/src/mawk/1.3.4.20200120-2/ (for browsing the source)
- https://sources.debian.net/src/mawk/1.3.4.20200120-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mawk/1.3.4.20200120-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mpclib3=1.2.0-1`

Binary Packages:

- `libmpc3:amd64=1.2.0-1`

Licenses: (parsed from: `/usr/share/doc/libmpc3/copyright`)

- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpclib3=1.2.0-1
'http://deb.debian.org/debian/pool/main/m/mpclib3/mpclib3_1.2.0-1.dsc' mpclib3_1.2.0-1.dsc 1851 SHA256:a1d1171fa4602a3b133e7d770f3fc12b417f7813125677be2ced102a41b6abce
'http://deb.debian.org/debian/pool/main/m/mpclib3/mpclib3_1.2.0.orig.tar.gz' mpclib3_1.2.0.orig.tar.gz 840711 SHA256:e90f2d99553a9c19911abdb4305bf8217106a957e3994436428572c8dfe8fda6
'http://deb.debian.org/debian/pool/main/m/mpclib3/mpclib3_1.2.0-1.diff.gz' mpclib3_1.2.0-1.diff.gz 4281 SHA256:9c5e1cd47ac7b5470d3a8649511ff9a8a2f528eed49e99fa4c875ba242c61ec4
```

Other potentially useful URLs:

- https://sources.debian.net/src/mpclib3/1.2.0-1/ (for browsing the source)
- https://sources.debian.net/src/mpclib3/1.2.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mpclib3/1.2.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mpfr4=4.1.0-3`

Binary Packages:

- `libmpfr6:amd64=4.1.0-3`

Licenses: (parsed from: `/usr/share/doc/libmpfr6/copyright`)

- `GFDL-1.2`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpfr4=4.1.0-3
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_4.1.0-3.dsc' mpfr4_4.1.0-3.dsc 1959 SHA256:6d2727cf53e788020f671a2cba644ff5dd4e28a2531e66c3ed32d98ce2b5bf4e
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_4.1.0.orig.tar.xz' mpfr4_4.1.0.orig.tar.xz 1525476 SHA256:0c98a3f1732ff6ca4ea690552079da9c597872d30e96ec28414ee23c95558a7f
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_4.1.0-3.debian.tar.xz' mpfr4_4.1.0-3.debian.tar.xz 12372 SHA256:b329dd24cba377ed4160c0819a5ec110e029fb52c93e9a141847d5ed2a2068e8
```

Other potentially useful URLs:

- https://sources.debian.net/src/mpfr4/4.1.0-3/ (for browsing the source)
- https://sources.debian.net/src/mpfr4/4.1.0-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mpfr4/4.1.0-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ncurses=6.2+20201114-2`

Binary Packages:

- `libtinfo6:amd64=6.2+20201114-2`
- `ncurses-base=6.2+20201114-2`
- `ncurses-bin=6.2+20201114-2`

Licenses: (parsed from: `/usr/share/doc/libtinfo6/copyright`, `/usr/share/doc/ncurses-base/copyright`, `/usr/share/doc/ncurses-bin/copyright`)

- `BSD-3-clause`
- `MIT/X11`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris ncurses=6.2+20201114-2
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.2%2b20201114-2.dsc' ncurses_6.2+20201114-2.dsc 4106 SHA256:011ec8e3464be0d89d6611ab8fa0a84ac5514c0064e12dec9c52ec7b135408b1
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.2%2b20201114.orig.tar.gz' ncurses_6.2+20201114.orig.tar.gz 3539796 SHA256:aa3f8cfaff2a2b78f184274ec43d9da910c864e4b4d80fc47b5b48cba9154cd2
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.2%2b20201114.orig.tar.gz.asc' ncurses_6.2+20201114.orig.tar.gz.asc 265 SHA256:91615d9d5575f9e974e78c6aca55e1885f42d1b2600cebec407be4471bb7a27d
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.2%2b20201114-2.debian.tar.xz' ncurses_6.2+20201114-2.debian.tar.xz 51812 SHA256:6ebba60b18cf2aceaa67098bfed1b1aa31c03f1a500f45c65ab098ec0a2401d2
```

Other potentially useful URLs:

- https://sources.debian.net/src/ncurses/6.2+20201114-2/ (for browsing the source)
- https://sources.debian.net/src/ncurses/6.2+20201114-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ncurses/6.2+20201114-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nettle=3.7.3-1`

Binary Packages:

- `libhogweed6:amd64=3.7.3-1`
- `libnettle8:amd64=3.7.3-1`

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
$ apt-get source -qq --print-uris nettle=3.7.3-1
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.7.3-1.dsc' nettle_3.7.3-1.dsc 2033 SHA256:63a1a80f37b6484f479dfa1cbd30152feff3b1a5a2161fdab05b90edde212c1f
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.7.3.orig.tar.gz' nettle_3.7.3.orig.tar.gz 2383985 SHA256:661f5eb03f048a3b924c3a8ad2515d4068e40f67e774e8a26827658007e3bcf0
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.7.3-1.debian.tar.xz' nettle_3.7.3-1.debian.tar.xz 21956 SHA256:97af0e306aec6f6c5d8e73a7a3ce2856c76bcff9cdcfa7640e932a5a3aee9f24
```

Other potentially useful URLs:

- https://sources.debian.net/src/nettle/3.7.3-1/ (for browsing the source)
- https://sources.debian.net/src/nettle/3.7.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nettle/3.7.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nghttp2=1.43.0-1`

Binary Packages:

- `libnghttp2-14:amd64=1.43.0-1`

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
$ apt-get source -qq --print-uris nghttp2=1.43.0-1
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.43.0-1.dsc' nghttp2_1.43.0-1.dsc 2548 SHA256:287a6fa84523ad2e6bb2215bcfc7ecc413a536fc9af20b0b20f0984e64bb034d
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.43.0.orig.tar.bz2' nghttp2_1.43.0.orig.tar.bz2 4521786 SHA256:556f24653397c71ebb8270b3c5e5507f0893e6eac2c6eeda6be2ecf6e1f50f62
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.43.0-1.debian.tar.xz' nghttp2_1.43.0-1.debian.tar.xz 16308 SHA256:5dbb013a6f2152354fee33a2ecf08817738d4f8f4d78bec0cd0cb3bcac690821
```

Other potentially useful URLs:

- https://sources.debian.net/src/nghttp2/1.43.0-1/ (for browsing the source)
- https://sources.debian.net/src/nghttp2/1.43.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nghttp2/1.43.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openldap=2.4.57+dfsg-3+deb11u1`

Binary Packages:

- `libldap-2.4-2:amd64=2.4.57+dfsg-3+deb11u1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openldap=2.4.57+dfsg-3+deb11u1
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.57%2bdfsg-3%2bdeb11u1.dsc' openldap_2.4.57+dfsg-3+deb11u1.dsc 3227 SHA256:835471a38dd93cfc2c0cb6f3726a022e0a5ed47dc2759dbd811cec6df5c9e0d4
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.57%2bdfsg.orig.tar.gz' openldap_2.4.57+dfsg.orig.tar.gz 5054318 SHA256:009cc88733eaf41a21607e073a19bce53d7d6ed90a5c280e80880978c4e91db7
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.57%2bdfsg-3%2bdeb11u1.debian.tar.xz' openldap_2.4.57+dfsg-3+deb11u1.debian.tar.xz 170324 SHA256:2c1cbc8431c570ece2b8e6e0e13936c2f65a270e6473ecf5374ae5ba67147835
```

Other potentially useful URLs:

- https://sources.debian.net/src/openldap/2.4.57+dfsg-3+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/openldap/2.4.57+dfsg-3+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openldap/2.4.57+dfsg-3+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openssl=1.1.1n-0+deb11u3`

Binary Packages:

- `libssl1.1:amd64=1.1.1n-0+deb11u3`
- `openssl=1.1.1n-0+deb11u3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl=1.1.1n-0+deb11u3
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.1n-0%2bdeb11u3.dsc' openssl_1.1.1n-0+deb11u3.dsc 2655 SHA256:cbf06993d1dc8c4e59e2f7f0456cc07a005c17274a33eb29135e9fdd7f6b2941
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.1n.orig.tar.gz' openssl_1.1.1n.orig.tar.gz 9850712 SHA256:40dceb51a4f6a5275bde0e6bf20ef4b91bfc32ed57c0552e2e8e15463372b17a
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.1n.orig.tar.gz.asc' openssl_1.1.1n.orig.tar.gz.asc 488 SHA256:e0e89e9467102880ee6f2ee8c1413933eb1268969afb97b9bec61e2190a62fd0
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.1n-0%2bdeb11u3.debian.tar.xz' openssl_1.1.1n-0+deb11u3.debian.tar.xz 118952 SHA256:0eed2dc1f8d472291511f386fc0a3c5fe70ec50440b1c252fd99934bf2cddd4a
```

Other potentially useful URLs:

- https://sources.debian.net/src/openssl/1.1.1n-0+deb11u3/ (for browsing the source)
- https://sources.debian.net/src/openssl/1.1.1n-0+deb11u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openssl/1.1.1n-0+deb11u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `p11-kit=0.23.22-1`

Binary Packages:

- `libp11-kit0:amd64=0.23.22-1`

Licenses: (parsed from: `/usr/share/doc/libp11-kit0/copyright`)

- `BSD-3-Clause`
- `ISC`
- `ISC+IBM`
- `permissive-like-automake-output`
- `same-as-rest-of-p11kit`

Source:

```console
$ apt-get source -qq --print-uris p11-kit=0.23.22-1
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.22-1.dsc' p11-kit_0.23.22-1.dsc 2417 SHA256:b5f7a7908a7da082fa74c2a35667f4f4dd1324eaf43ff4b4a0ffa7e2763774a6
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.22.orig.tar.xz' p11-kit_0.23.22.orig.tar.xz 830016 SHA256:8a8f40153dd5a3f8e7c03e641f8db400133fb2a6a9ab2aee1b6d0cb0495ec6b6
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.22.orig.tar.xz.asc' p11-kit_0.23.22.orig.tar.xz.asc 854 SHA256:52d36bd38ed84dcc394b97da18ff4b4e220f0b13c5e7922f5b908312678b0b02
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.22-1.debian.tar.xz' p11-kit_0.23.22-1.debian.tar.xz 22256 SHA256:05a157dbeb054dd14c19c0c4f72c50e57fb69c4cfa4b5d34bc7ecdb5d12e7265
```

Other potentially useful URLs:

- https://sources.debian.net/src/p11-kit/0.23.22-1/ (for browsing the source)
- https://sources.debian.net/src/p11-kit/0.23.22-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/p11-kit/0.23.22-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pam=1.4.0-9+deb11u1`

Binary Packages:

- `libpam-modules:amd64=1.4.0-9+deb11u1`
- `libpam-modules-bin=1.4.0-9+deb11u1`
- `libpam-runtime=1.4.0-9+deb11u1`
- `libpam0g:amd64=1.4.0-9+deb11u1`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pam=1.4.0-9+deb11u1
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.4.0-9%2bdeb11u1.dsc' pam_1.4.0-9+deb11u1.dsc 1941 SHA256:190b705cc9daeee1febb84e8ac6f31219065f08ff41c8d38fbbb424b545d5ca4
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.4.0.orig.tar.xz' pam_1.4.0.orig.tar.xz 988908 SHA256:cd6d928c51e64139be3bdb38692c68183a509b83d4f2c221024ccd4bcddfd034
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.4.0-9%2bdeb11u1.debian.tar.xz' pam_1.4.0-9+deb11u1.debian.tar.xz 120148 SHA256:bcaaad9423c3ab32c5c4f9e363595a84fe3c535aa9568e42e560028a4e33dfcf
```

Other potentially useful URLs:

- https://sources.debian.net/src/pam/1.4.0-9+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/pam/1.4.0-9+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pam/1.4.0-9+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `patch=2.7.6-7`

Binary Packages:

- `patch=2.7.6-7`

Licenses: (parsed from: `/usr/share/doc/patch/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris patch=2.7.6-7
'http://deb.debian.org/debian/pool/main/p/patch/patch_2.7.6-7.dsc' patch_2.7.6-7.dsc 1706 SHA256:d954fd576d935ac54b7d44d4976eb52d0da84a57f7bad90c6e5bd5e33595030a
'http://deb.debian.org/debian/pool/main/p/patch/patch_2.7.6.orig.tar.xz' patch_2.7.6.orig.tar.xz 783756 SHA256:ac610bda97abe0d9f6b7c963255a11dcb196c25e337c61f94e4778d632f1d8fd
'http://deb.debian.org/debian/pool/main/p/patch/patch_2.7.6-7.debian.tar.xz' patch_2.7.6-7.debian.tar.xz 15084 SHA256:7725f30b042d8cf63516e480036e93ca2ff0ce5ad3754db4a4e69d33e96a2624
```

Other potentially useful URLs:

- https://sources.debian.net/src/patch/2.7.6-7/ (for browsing the source)
- https://sources.debian.net/src/patch/2.7.6-7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/patch/2.7.6-7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pcre2=10.36-2+deb11u1`

Binary Packages:

- `libpcre2-8-0:amd64=10.36-2+deb11u1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre2=10.36-2+deb11u1
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.36-2%2bdeb11u1.dsc' pcre2_10.36-2+deb11u1.dsc 2329 SHA256:9a1b7f2d20d539f4be97d07c92a980e339ae36087ca1cd51177345b37a2ec3a9
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.36.orig.tar.gz' pcre2_10.36.orig.tar.gz 2290719 SHA256:b95ddb9414f91a967a887d69617059fb672b914f56fa3d613812c1ee8e8a1a37
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.36-2%2bdeb11u1.diff.gz' pcre2_10.36-2+deb11u1.diff.gz 10596 SHA256:1172d8b80fa7c13c3eb571a1163babe5052f6b4586329e817ccba9759046da01
```

Other potentially useful URLs:

- https://sources.debian.net/src/pcre2/10.36-2+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/pcre2/10.36-2+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pcre2/10.36-2+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pcre3=2:8.39-13`

Binary Packages:

- `libpcre3:amd64=2:8.39-13`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre3=2:8.39-13
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39-13.dsc' pcre3_8.39-13.dsc 2226 SHA256:c3a2eb4f02de5b2e00787ed2a35eb82f04ee4b5e99b8ff279bae3c6453aad93b
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39.orig.tar.bz2' pcre3_8.39.orig.tar.bz2 1560758 SHA256:b858099f82483031ee02092711689e7245586ada49e534a06e678b8ea9549e8b
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39-13.debian.tar.gz' pcre3_8.39-13.debian.tar.gz 27002 SHA256:a2143d7358d69b61955a4f977980050447f8891c0e6737080f2b14b920fbde87
```

Other potentially useful URLs:

- https://sources.debian.net/src/pcre3/2:8.39-13/ (for browsing the source)
- https://sources.debian.net/src/pcre3/2:8.39-13/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pcre3/2:8.39-13/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `perl=5.32.1-4+deb11u2`

Binary Packages:

- `libperl5.32:amd64=5.32.1-4+deb11u2`
- `perl=5.32.1-4+deb11u2`
- `perl-base=5.32.1-4+deb11u2`
- `perl-modules-5.32=5.32.1-4+deb11u2`

Licenses: (parsed from: `/usr/share/doc/libperl5.32/copyright`, `/usr/share/doc/perl/copyright`, `/usr/share/doc/perl-base/copyright`, `/usr/share/doc/perl-modules-5.32/copyright`)

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
$ apt-get source -qq --print-uris perl=5.32.1-4+deb11u2
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.32.1-4%2bdeb11u2.dsc' perl_5.32.1-4+deb11u2.dsc 2918 SHA256:3c0c1961d7a5fe835cf7d1a9a97905ff7857db2cd1d113c9fc5250de3aaa4e6b
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.32.1.orig-regen-configure.tar.gz' perl_5.32.1.orig-regen-configure.tar.gz 871331 SHA256:1d179b41283f12ad83f9758430f6ddc49bdf20db5c396aeae7e51ebb4e4afd29
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.32.1.orig.tar.xz' perl_5.32.1.orig.tar.xz 12610988 SHA256:57cc47c735c8300a8ce2fa0643507b44c4ae59012bfdad0121313db639e02309
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.32.1-4%2bdeb11u2.debian.tar.xz' perl_5.32.1-4+deb11u2.debian.tar.xz 165768 SHA256:36b96f84a81c8db85a99e701062457a99efdbcc98b1f1a8912d3919f4b8e0f5a
```

Other potentially useful URLs:

- https://sources.debian.net/src/perl/5.32.1-4+deb11u2/ (for browsing the source)
- https://sources.debian.net/src/perl/5.32.1-4+deb11u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/perl/5.32.1-4+deb11u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pkg-config=0.29.2-1`

Binary Packages:

- `pkg-config=0.29.2-1`

Licenses: (parsed from: `/usr/share/doc/pkg-config/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pkg-config=0.29.2-1
'http://deb.debian.org/debian/pool/main/p/pkg-config/pkg-config_0.29.2-1.dsc' pkg-config_0.29.2-1.dsc 1771 SHA256:e4feeda94c3882e2aca55eab907900508a2e35111f927a79076154870f8fe373
'http://deb.debian.org/debian/pool/main/p/pkg-config/pkg-config_0.29.2.orig.tar.gz' pkg-config_0.29.2.orig.tar.gz 2016830 SHA256:6fc69c01688c9458a57eb9a1664c9aba372ccda420a02bf4429fe610e7e7d591
'http://deb.debian.org/debian/pool/main/p/pkg-config/pkg-config_0.29.2-1.diff.gz' pkg-config_0.29.2-1.diff.gz 9202 SHA256:6ecdd3463718e8922b53fca8d2fd37db4ba178f078b5e3ccd38c1a6efffb94ad
```

Other potentially useful URLs:

- https://sources.debian.net/src/pkg-config/0.29.2-1/ (for browsing the source)
- https://sources.debian.net/src/pkg-config/0.29.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pkg-config/0.29.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `postgresql-13=13.9-0+deb11u1`

Binary Packages:

- `libpq5:amd64=13.9-0+deb11u1`

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
- `blf`
- `double-metaphone`
- `imath`
- `nagaysau-ishii`
- `rijndael`

Source:

```console
$ apt-get source -qq --print-uris postgresql-13=13.9-0+deb11u1
'http://deb.debian.org/debian/pool/main/p/postgresql-13/postgresql-13_13.9-0%2bdeb11u1.dsc' postgresql-13_13.9-0+deb11u1.dsc 3696 SHA256:2691b0326076ef925d9a3470b0b3121ffa27d91bf3e269a1035aba1c85ebdb1d
'http://deb.debian.org/debian/pool/main/p/postgresql-13/postgresql-13_13.9.orig.tar.bz2' postgresql-13_13.9.orig.tar.bz2 21439045 SHA256:ef1966c0a5e49fbed3370ad2824928cb6b1164617aeeae1606da283f7f33a415
'http://deb.debian.org/debian/pool/main/p/postgresql-13/postgresql-13_13.9-0%2bdeb11u1.debian.tar.xz' postgresql-13_13.9-0+deb11u1.debian.tar.xz 29460 SHA256:31ba6def020e902b26f231c7e554ecb77acb79b1e7c4dccb3b650b6b2fed9de2
```

Other potentially useful URLs:

- https://sources.debian.net/src/postgresql-13/13.9-0+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/postgresql-13/13.9-0+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/postgresql-13/13.9-0+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `re2c=2.0.3-1`

Binary Packages:

- `re2c=2.0.3-1`

Licenses: (parsed from: `/usr/share/doc/re2c/copyright`)

- `Apache-2`
- `Apache-2.0`
- `PHP-3.01`
- `Zend-2.00`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris re2c=2.0.3-1
'http://deb.debian.org/debian/pool/main/r/re2c/re2c_2.0.3-1.dsc' re2c_2.0.3-1.dsc 1887 SHA256:28a5081826c8cdb65c81d902cda2f50706e42724f1e64c7cfe3be49505fd5587
'http://deb.debian.org/debian/pool/main/r/re2c/re2c_2.0.3.orig.tar.xz' re2c_2.0.3.orig.tar.xz 1288996 SHA256:b2bc1eb8aaaa21ff2fcd26507b7e6e72c5e3d887e58aa515c2155fb17d744278
'http://deb.debian.org/debian/pool/main/r/re2c/re2c_2.0.3-1.debian.tar.xz' re2c_2.0.3-1.debian.tar.xz 8288 SHA256:d7ef7c63ecebf99c8f9518e599d0f4aa8bca428d5984d70760f25fe2ad075fb9
```

Other potentially useful URLs:

- https://sources.debian.net/src/re2c/2.0.3-1/ (for browsing the source)
- https://sources.debian.net/src/re2c/2.0.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/re2c/2.0.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `readline=8.1-1`

Binary Packages:

- `libreadline8:amd64=8.1-1`
- `readline-common=8.1-1`

Licenses: (parsed from: `/usr/share/doc/libreadline8/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GFDL`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris readline=8.1-1
'http://deb.debian.org/debian/pool/main/r/readline/readline_8.1-1.dsc' readline_8.1-1.dsc 2418 SHA256:53356fdf2ee122ab75c7b535d292385311f7dea425ccc42143d2b9a2accfc657
'http://deb.debian.org/debian/pool/main/r/readline/readline_8.1.orig.tar.gz' readline_8.1.orig.tar.gz 2993288 SHA256:f8ceb4ee131e3232226a17f51b164afc46cd0b9e6cef344be87c65962cb82b02
'http://deb.debian.org/debian/pool/main/r/readline/readline_8.1-1.debian.tar.xz' readline_8.1-1.debian.tar.xz 29220 SHA256:852267a95aeec23b267c838469fee346e83a29e7a08071178dc87682591cffbf
```

Other potentially useful URLs:

- https://sources.debian.net/src/readline/8.1-1/ (for browsing the source)
- https://sources.debian.net/src/readline/8.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/readline/8.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `rtmpdump=2.4+20151223.gitfa8646d.1-2`

Binary Packages:

- `librtmp1:amd64=2.4+20151223.gitfa8646d.1-2+b2`

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

### `dpkg` source package: `sed=4.7-1`

Binary Packages:

- `sed=4.7-1`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris sed=4.7-1
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.7-1.dsc' sed_4.7-1.dsc 1880 SHA256:dd0e8daed987929920f7729771f9c7a5b48d094923aaf686efd2ab19db776108
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.7.orig.tar.xz' sed_4.7.orig.tar.xz 1298316 SHA256:2885768cd0a29ff8d58a6280a270ff161f6a3deb5690b2be6c49f46d4c67bd6a
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.7-1.debian.tar.xz' sed_4.7-1.debian.tar.xz 59824 SHA256:a2ab8d50807fd2242f86d6c6257399e790445ab6f8932f7f487d34361b4fc483
```

Other potentially useful URLs:

- https://sources.debian.net/src/sed/4.7-1/ (for browsing the source)
- https://sources.debian.net/src/sed/4.7-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sed/4.7-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `shadow=1:4.8.1-1`

Binary Packages:

- `login=1:4.8.1-1`
- `passwd=1:4.8.1-1`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.8.1-1
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.8.1-1.dsc' shadow_4.8.1-1.dsc 2215 SHA256:5c9568dc183781ba654b7daeba6d5d6768d4e0417cc8d8b6f2e534dae6fcdaa6
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.8.1.orig.tar.xz' shadow_4.8.1.orig.tar.xz 1611196 SHA256:a3ad4630bdc41372f02a647278a8c3514844295d36eefe68ece6c3a641c1ae62
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.8.1-1.debian.tar.xz' shadow_4.8.1-1.debian.tar.xz 74752 SHA256:fdbccadc28fcca744f365e0529f3828d0c82bc3513b28976dca7308b40ea4773
```

Other potentially useful URLs:

- https://sources.debian.net/src/shadow/1:4.8.1-1/ (for browsing the source)
- https://sources.debian.net/src/shadow/1:4.8.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/shadow/1:4.8.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sqlite3=3.34.1-3`

Binary Packages:

- `libsqlite3-0:amd64=3.34.1-3`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.34.1-3
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.34.1-3.dsc' sqlite3_3.34.1-3.dsc 2410 SHA256:bee4705c6a1332c1ecb299e23b54cfe04b63ea5a163be1d211fa676595686cbf
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.34.1.orig-www.tar.xz' sqlite3_3.34.1.orig-www.tar.xz 5581512 SHA256:c63647f3fb6c4b0620d6587e2a744021401df92c307b55e236a7eb28c5000fa7
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.34.1.orig.tar.xz' sqlite3_3.34.1.orig.tar.xz 7343284 SHA256:082f583440c662cb484ae1c124ffe285b587bbb7837e095e693026e6df50334d
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.34.1-3.debian.tar.xz' sqlite3_3.34.1-3.debian.tar.xz 22828 SHA256:aefed33ed3e388d46cd35ab865b5fffe028b7511c0211f8521eacb8562fec0aa
```

Other potentially useful URLs:

- https://sources.debian.net/src/sqlite3/3.34.1-3/ (for browsing the source)
- https://sources.debian.net/src/sqlite3/3.34.1-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sqlite3/3.34.1-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `systemd=247.3-7+deb11u1`

Binary Packages:

- `libsystemd0:amd64=247.3-7+deb11u1`
- `libudev1:amd64=247.3-7+deb11u1`

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
$ apt-get source -qq --print-uris systemd=247.3-7+deb11u1
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_247.3-7%2bdeb11u1.dsc' systemd_247.3-7+deb11u1.dsc 5199 SHA256:52bfded0adf0297bb825b3c5aefcadd38be9fda59e70fae902245d720d2a4fa2
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_247.3.orig.tar.gz' systemd_247.3.orig.tar.gz 9895385 SHA256:2869986e219a8dfc96cc0dffac66e0c13bb70a89e16b85a3948876c146cfa3e0
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_247.3-7%2bdeb11u1.debian.tar.xz' systemd_247.3-7+deb11u1.debian.tar.xz 186940 SHA256:6cf6a07b17f676700d049ddaed8ee8a184f3065bee2550a333039eddde207aa3
```

Other potentially useful URLs:

- https://sources.debian.net/src/systemd/247.3-7+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/systemd/247.3-7+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/systemd/247.3-7+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sysvinit=2.96-7+deb11u1`

Binary Packages:

- `sysvinit-utils=2.96-7+deb11u1`

Licenses: (parsed from: `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=2.96-7+deb11u1
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.96-7%2bdeb11u1.dsc' sysvinit_2.96-7+deb11u1.dsc 2374 SHA256:1ef8a8b224aabecbd27ebef68b389bc3149970ef348877cec3ac7351a04c13a7
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.96.orig.tar.gz' sysvinit_2.96.orig.tar.gz 147834 SHA256:1275620f767c85bb2d7e5b9542579ae097f3eb542065ff30a70efc95b6e84c64
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.96-7%2bdeb11u1.debian.tar.xz' sysvinit_2.96-7+deb11u1.debian.tar.xz 129936 SHA256:5ce9a0b9735a66c536c77c65e17d4190338e0c0416ba235c26c9cf12d3cfbeb3
```

Other potentially useful URLs:

- https://sources.debian.net/src/sysvinit/2.96-7+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/sysvinit/2.96-7+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sysvinit/2.96-7+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tar=1.34+dfsg-1`

Binary Packages:

- `tar=1.34+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris tar=1.34+dfsg-1
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.34%2bdfsg-1.dsc' tar_1.34+dfsg-1.dsc 2015 SHA256:12d709cd77e38e5d1753325a9f266b340b5c095a426f438c677b42c031949d89
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.34%2bdfsg.orig.tar.xz' tar_1.34+dfsg.orig.tar.xz 1981736 SHA256:7d57029540cb928394defb3b377b3531237c947e795b51aa8acac0c5ba0e4844
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.34%2bdfsg-1.debian.tar.xz' tar_1.34+dfsg-1.debian.tar.xz 19192 SHA256:7228f5cbd36f937dfc1fec042dee8b3e02d92a06afdd44c586c2c8cfb1905538
```

Other potentially useful URLs:

- https://sources.debian.net/src/tar/1.34+dfsg-1/ (for browsing the source)
- https://sources.debian.net/src/tar/1.34+dfsg-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tar/1.34+dfsg-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tzdata=2021a-1+deb11u8`

Binary Packages:

- `tzdata=2021a-1+deb11u8`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris tzdata=2021a-1+deb11u8
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2021a-1%2bdeb11u8.dsc' tzdata_2021a-1+deb11u8.dsc 2269 SHA256:14db9f37ed6c5d294081edc708f262a4dcd627d22e08789362c88d4a3988f63d
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2021a.orig.tar.gz' tzdata_2021a.orig.tar.gz 411892 SHA256:39e7d2ba08c68cbaefc8de3227aab0dec2521be8042cf56855f7dc3a9fb14e08
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2021a.orig.tar.gz.asc' tzdata_2021a.orig.tar.gz.asc 833 SHA256:9dc5f54674166f4ffbc2d4485e656227430ab5f39c9006e6ed9986281117f058
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2021a-1%2bdeb11u8.debian.tar.xz' tzdata_2021a-1+deb11u8.debian.tar.xz 116136 SHA256:36ec850e434ba28da2a525f3a068c8b17fdddec05c65fd3093505750d0890c8d
```

Other potentially useful URLs:

- https://sources.debian.net/src/tzdata/2021a-1+deb11u8/ (for browsing the source)
- https://sources.debian.net/src/tzdata/2021a-1+deb11u8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tzdata/2021a-1+deb11u8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `util-linux=2.36.1-8+deb11u1`

Binary Packages:

- `bsdutils=1:2.36.1-8+deb11u1`
- `libblkid1:amd64=2.36.1-8+deb11u1`
- `libmount1:amd64=2.36.1-8+deb11u1`
- `libsmartcols1:amd64=2.36.1-8+deb11u1`
- `libuuid1:amd64=2.36.1-8+deb11u1`
- `mount=2.36.1-8+deb11u1`
- `util-linux=2.36.1-8+deb11u1`

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
$ apt-get source -qq --print-uris util-linux=2.36.1-8+deb11u1
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.36.1-8%2bdeb11u1.dsc' util-linux_2.36.1-8+deb11u1.dsc 4461 SHA256:1f42a8e46c383b6fbfb57ea89dfe5adb5b7e6960bc5e8cdb9589109773be6cac
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.36.1.orig.tar.xz' util-linux_2.36.1.orig.tar.xz 5231880 SHA256:09fac242172cd8ec27f0739d8d192402c69417617091d8c6e974841568f37eed
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.36.1-8%2bdeb11u1.debian.tar.xz' util-linux_2.36.1-8+deb11u1.debian.tar.xz 101448 SHA256:edda1d46e25a40e730c672aac2cd0e44f9eeb0fb64b27be957d6924ed5288a0a
```

Other potentially useful URLs:

- https://sources.debian.net/src/util-linux/2.36.1-8+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/util-linux/2.36.1-8+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/util-linux/2.36.1-8+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `uw-imap=8:2007f~dfsg-7`

Binary Packages:

- `libc-client2007e=8:2007f~dfsg-7+b1`
- `mlock=8:2007f~dfsg-7+b1`

Licenses: (parsed from: `/usr/share/doc/libc-client2007e/copyright`, `/usr/share/doc/mlock/copyright`)

- `Apache-2.0`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris uw-imap=8:2007f~dfsg-7
'http://deb.debian.org/debian/pool/main/u/uw-imap/uw-imap_2007f%7edfsg-7.dsc' uw-imap_2007f~dfsg-7.dsc 2128 SHA256:86a0c3a178101a682ef3f594ef2829413a81e906d7f5b26ffadc7cfd91bac200
'http://deb.debian.org/debian/pool/main/u/uw-imap/uw-imap_2007f%7edfsg.orig.tar.gz' uw-imap_2007f~dfsg.orig.tar.gz 1607992 SHA256:4fdec0b5a085a7269db87214276e14ce79afdf7efec2ca8d431ab176b9062a8a
'http://deb.debian.org/debian/pool/main/u/uw-imap/uw-imap_2007f%7edfsg-7.debian.tar.xz' uw-imap_2007f~dfsg-7.debian.tar.xz 44960 SHA256:9d778c6de093abf9d07164d6ad074bfe4c2ab38934283741b006f9537f6e896c
```

Other potentially useful URLs:

- https://sources.debian.net/src/uw-imap/8:2007f~dfsg-7/ (for browsing the source)
- https://sources.debian.net/src/uw-imap/8:2007f~dfsg-7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/uw-imap/8:2007f~dfsg-7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xxhash=0.8.0-2`

Binary Packages:

- `libxxhash0:amd64=0.8.0-2`

Licenses: (parsed from: `/usr/share/doc/libxxhash0/copyright`)

- `BSD-2-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris xxhash=0.8.0-2
'http://deb.debian.org/debian/pool/main/x/xxhash/xxhash_0.8.0-2.dsc' xxhash_0.8.0-2.dsc 1601 SHA256:91c696b5371558ebb12c323b0bd4e15eece0a439ef49c6aa5a6d0c1cf6c7762a
'http://deb.debian.org/debian/pool/main/x/xxhash/xxhash_0.8.0.orig.tar.gz' xxhash_0.8.0.orig.tar.gz 145909 SHA256:7054c3ebd169c97b64a92d7b994ab63c70dd53a06974f1f630ab782c28db0f4f
'http://deb.debian.org/debian/pool/main/x/xxhash/xxhash_0.8.0-2.debian.tar.xz' xxhash_0.8.0-2.debian.tar.xz 4160 SHA256:5c427c2c08019a945412afac02326a24c72b65a83bff59447009db303233aecd
```

Other potentially useful URLs:

- https://sources.debian.net/src/xxhash/0.8.0-2/ (for browsing the source)
- https://sources.debian.net/src/xxhash/0.8.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xxhash/0.8.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xz-utils=5.2.5-2.1~deb11u1`

Binary Packages:

- `liblzma5:amd64=5.2.5-2.1~deb11u1`
- `xz-utils=5.2.5-2.1~deb11u1`

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
$ apt-get source -qq --print-uris xz-utils=5.2.5-2.1~deb11u1
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.5-2.1%7edeb11u1.dsc' xz-utils_5.2.5-2.1~deb11u1.dsc 2681 SHA256:68a2702d252ab75789130fc9d2f48b9b38fc0181990c42a947b0d923d9d1922a
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.5.orig.tar.xz' xz-utils_5.2.5.orig.tar.xz 1148824 SHA256:3e1e518ffc912f86608a8cb35e4bd41ad1aec210df2a47aaa1f95e7f5576ef56
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.5.orig.tar.xz.asc' xz-utils_5.2.5.orig.tar.xz.asc 833 SHA256:6efc0075a58912e640119d2b52ef7d1518b260d8720fadc73df21ab7fc727624
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.5-2.1%7edeb11u1.debian.tar.xz' xz-utils_5.2.5-2.1~deb11u1.debian.tar.xz 34948 SHA256:07627e4c7a50ef91d64c177626507afd6107f44e27f4aacb5e41151d1399ff4f
```

Other potentially useful URLs:

- https://sources.debian.net/src/xz-utils/5.2.5-2.1~deb11u1/ (for browsing the source)
- https://sources.debian.net/src/xz-utils/5.2.5-2.1~deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xz-utils/5.2.5-2.1~deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `zlib=1:1.2.11.dfsg-2+deb11u2`

Binary Packages:

- `zlib1g:amd64=1:1.2.11.dfsg-2+deb11u2`

Licenses: (parsed from: `/usr/share/doc/zlib1g/copyright`)

- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.11.dfsg-2+deb11u2
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.11.dfsg-2%2bdeb11u2.dsc' zlib_1.2.11.dfsg-2+deb11u2.dsc 2905 SHA256:ec2ee2fc4dfd1f799dfa6a95133ebccbd7531886de38b0a8e3e58b66706a6dc7
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.11.dfsg.orig.tar.gz' zlib_1.2.11.dfsg.orig.tar.gz 370248 SHA256:80c481411a4fe8463aeb8270149a0e80bb9eaf7da44132b6e16f2b5af01bc899
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.11.dfsg-2%2bdeb11u2.debian.tar.xz' zlib_1.2.11.dfsg-2+deb11u2.debian.tar.xz 23984 SHA256:c19794df214f0c2571b19f7dea853c066410232abe9f0ddad77231fabccde0da
```

Other potentially useful URLs:

- https://sources.debian.net/src/zlib/1:1.2.11.dfsg-2+deb11u2/ (for browsing the source)
- https://sources.debian.net/src/zlib/1:1.2.11.dfsg-2+deb11u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/zlib/1:1.2.11.dfsg-2+deb11u2/ (for access to the source package after it no longer exists in the archive)
