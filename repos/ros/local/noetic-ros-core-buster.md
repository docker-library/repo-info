# `ros:noetic-ros-core-buster`

## Docker Metadata

- Image ID: `sha256:391ea350e41a79a7b58f2a337e94f0841edfd97ffcc436accc4a1a383cc9e2c6`
- Created: `2023-01-11T17:22:59.185352923Z`
- Virtual Size: ~ 893.46 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/ros_entrypoint.sh"]`
- Command: `["bash"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `LANG=C.UTF-8`
  - `LC_ALL=C.UTF-8`
  - `ROS_DISTRO=noetic`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `acl=2.2.53-4`

Binary Packages:

- `libacl1:amd64=2.2.53-4`

Licenses: (parsed from: `/usr/share/doc/libacl1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris acl=2.2.53-4
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.53-4.dsc' acl_2.2.53-4.dsc 2330 SHA256:532eb4029659db74e6625adc2bd277144f33c92cb0603272d61693b069896a85
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.53.orig.tar.gz' acl_2.2.53.orig.tar.gz 524300 SHA256:06be9865c6f418d851ff4494e12406568353b891ffe1f596b34693c387af26c7
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.53.orig.tar.gz.asc' acl_2.2.53.orig.tar.gz.asc 833 SHA256:06849bece0b56a6a7269173abe101cff223bb9346d74027a3cd5ff80914abf4b
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.53-4.debian.tar.xz' acl_2.2.53-4.debian.tar.xz 18572 SHA256:3e6571adea4886a9549bdc2323d5c55ee8f7dafb6a204513111d5943d2776dd8
```

Other potentially useful URLs:

- https://sources.debian.net/src/acl/2.2.53-4/ (for browsing the source)
- https://sources.debian.net/src/acl/2.2.53-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/acl/2.2.53-4/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `apr-util=1.6.1-4`

Binary Packages:

- `libaprutil1:amd64=1.6.1-4`
- `libaprutil1-dev=1.6.1-4`

Licenses: (parsed from: `/usr/share/doc/libaprutil1/copyright`, `/usr/share/doc/libaprutil1-dev/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr-util=1.6.1-4
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.6.1-4.dsc' apr-util_1.6.1-4.dsc 2828 SHA256:2176a12a657b70c030493ad0a068cebc61f99667112a39e17ada10cf689d028d
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.6.1.orig.tar.bz2' apr-util_1.6.1.orig.tar.bz2 428595 SHA256:d3e12f7b6ad12687572a3a39475545a072608f4ba03a6ce8a3778f607dd0035b
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.6.1.orig.tar.bz2.asc' apr-util_1.6.1.orig.tar.bz2.asc 801 SHA256:47837b605290c0d7659b73734e4a9d5e6c0c24c13185cd4d91837afe63c07ca4
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.6.1-4.debian.tar.xz' apr-util_1.6.1-4.debian.tar.xz 212464 SHA256:44d304947ba9fd62b1d54e5205a41227357d8e0033e7895cba4f2fae7a39b658
```

Other potentially useful URLs:

- https://sources.debian.net/src/apr-util/1.6.1-4/ (for browsing the source)
- https://sources.debian.net/src/apr-util/1.6.1-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/apr-util/1.6.1-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `apr=1.6.5-1`

Binary Packages:

- `libapr1:amd64=1.6.5-1+b1`
- `libapr1-dev=1.6.5-1+b1`

Licenses: (parsed from: `/usr/share/doc/libapr1/copyright`, `/usr/share/doc/libapr1-dev/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr=1.6.5-1
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.6.5-1.dsc' apr_1.6.5-1.dsc 2296 SHA256:80c471107d7f90ab5de012e4211559f4f6852ca2b7fd6911f06420aa66d27ec0
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.6.5.orig.tar.bz2' apr_1.6.5.orig.tar.bz2 855393 SHA256:a67ca9fcf9c4ff59bce7f428a323c8b5e18667fdea7b0ebad47d194371b0a105
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.6.5.orig.tar.bz2.asc' apr_1.6.5.orig.tar.bz2.asc 801 SHA256:9beff0bb06f4cbbb006176af93258d946d33b7fb54aac13a4c90cfba1cfd0c88
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.6.5-1.debian.tar.xz' apr_1.6.5-1.debian.tar.xz 213168 SHA256:cb03a6ad0b8c525c67744e7d3f7c52af446e73bd6d4eeb6fd4622677df60db2b
```

Other potentially useful URLs:

- https://sources.debian.net/src/apr/1.6.5-1/ (for browsing the source)
- https://sources.debian.net/src/apr/1.6.5-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/apr/1.6.5-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `apt=1.8.2.3`

Binary Packages:

- `apt=1.8.2.3`
- `libapt-pkg5.0:amd64=1.8.2.3`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg5.0/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=1.8.2.3
'http://deb.debian.org/debian/pool/main/a/apt/apt_1.8.2.3.dsc' apt_1.8.2.3.dsc 2774 SHA256:03ed672edefe4badbb2c7b32332293403bb03feb2ea0777c0846939a2fcb8bba
'http://deb.debian.org/debian/pool/main/a/apt/apt_1.8.2.3.tar.xz' apt_1.8.2.3.tar.xz 2191868 SHA256:c21c9b18c4a26bc183432cb49b919af073862954f1ae8a204096b0a68c946d3b
```

Other potentially useful URLs:

- https://sources.debian.net/src/apt/1.8.2.3/ (for browsing the source)
- https://sources.debian.net/src/apt/1.8.2.3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/apt/1.8.2.3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `asn1crypto=0.24.0-1`

Binary Packages:

- `python3-asn1crypto=0.24.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-asn1crypto/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris asn1crypto=0.24.0-1
'http://deb.debian.org/debian/pool/main/a/asn1crypto/asn1crypto_0.24.0-1.dsc' asn1crypto_0.24.0-1.dsc 1960 SHA256:71bef30ecadbb81ed4a656230892c1d7d4fde3dd74eaa546c94ae93c43591045
'http://deb.debian.org/debian/pool/main/a/asn1crypto/asn1crypto_0.24.0.orig.tar.gz' asn1crypto_0.24.0.orig.tar.gz 104964 SHA256:9d5c20441baf0cb60a4ac34cc447c6c189024b6b4c6cd7877034f4965c464e49
'http://deb.debian.org/debian/pool/main/a/asn1crypto/asn1crypto_0.24.0-1.debian.tar.xz' asn1crypto_0.24.0-1.debian.tar.xz 2288 SHA256:72a5e503943aa519acbd51971b83e51345aa53270f93d4e1313e1e7f7a05ab29
```

Other potentially useful URLs:

- https://sources.debian.net/src/asn1crypto/0.24.0-1/ (for browsing the source)
- https://sources.debian.net/src/asn1crypto/0.24.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/asn1crypto/0.24.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `attr=1:2.4.48-4`

Binary Packages:

- `libattr1:amd64=1:2.4.48-4`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris attr=1:2.4.48-4
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.4.48-4.dsc' attr_2.4.48-4.dsc 2427 SHA256:e53c076f39f1be4186704c94bd32276fa4661a587c360d8da25a5c3abe40cb29
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.4.48.orig.tar.gz' attr_2.4.48.orig.tar.gz 467840 SHA256:5ead72b358ec709ed00bbf7a9eaef1654baad937c001c044fe8b74c57f5324e7
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.4.48.orig.tar.gz.asc' attr_2.4.48.orig.tar.gz.asc 833 SHA256:5d23c2c83cc13d170f1c209f48d0efa1fc46d16487b790e9996c5206dcfe0395
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.4.48-4.debian.tar.xz' attr_2.4.48-4.debian.tar.xz 22388 SHA256:a491d226fb3b47aa65997406009893a4cc0628e2ffffe0d411179652dfeb6935
```

Other potentially useful URLs:

- https://sources.debian.net/src/attr/1:2.4.48-4/ (for browsing the source)
- https://sources.debian.net/src/attr/1:2.4.48-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/attr/1:2.4.48-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `audit=1:2.8.4-3`

Binary Packages:

- `libaudit-common=1:2.8.4-3`
- `libaudit1:amd64=1:2.8.4-3`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-1`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:2.8.4-3
'http://deb.debian.org/debian/pool/main/a/audit/audit_2.8.4-3.dsc' audit_2.8.4-3.dsc 2483 SHA256:101fd82f4c7af2f8753060b494ac46204b0eee1ffe5d1e113a493b99571af186
'http://deb.debian.org/debian/pool/main/a/audit/audit_2.8.4.orig.tar.gz' audit_2.8.4.orig.tar.gz 1123889 SHA256:a410694d09fc5708d980a61a5abcb9633a591364f1ecc7e97ad5daef9c898c38
'http://deb.debian.org/debian/pool/main/a/audit/audit_2.8.4-3.debian.tar.xz' audit_2.8.4-3.debian.tar.xz 16712 SHA256:2b4b16cf58c3a6180d380bd4ad1d30a38fa22826ca3c1233c5298138427e29d0
```

Other potentially useful URLs:

- https://sources.debian.net/src/audit/1:2.8.4-3/ (for browsing the source)
- https://sources.debian.net/src/audit/1:2.8.4-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/audit/1:2.8.4-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `base-files=10.3+deb10u13`

Binary Packages:

- `base-files=10.3+deb10u13`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=10.3+deb10u13
'http://deb.debian.org/debian/pool/main/b/base-files/base-files_10.3%2bdeb10u13.dsc' base-files_10.3+deb10u13.dsc 1107 SHA256:039bdc39a6d18a0cc8ef84f4c60b06cee4bf9dcf22e22f10813d8e39652abbc6
'http://deb.debian.org/debian/pool/main/b/base-files/base-files_10.3%2bdeb10u13.tar.xz' base-files_10.3+deb10u13.tar.xz 65540 SHA256:e2620ba4503b46342d4168d2092419c4051e696910c8bb28cb262e5368301bac
```

Other potentially useful URLs:

- https://sources.debian.net/src/base-files/10.3+deb10u13/ (for browsing the source)
- https://sources.debian.net/src/base-files/10.3+deb10u13/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/base-files/10.3+deb10u13/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `base-passwd=3.5.46`

Binary Packages:

- `base-passwd=3.5.46`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `PD`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.5.46
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.46.dsc' base-passwd_3.5.46.dsc 1651 SHA256:98b5d79c9f06e05e9f41013f8fee48b08d0ffe398653b6f8bbd93c1ae1f24bd4
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.46.tar.xz' base-passwd_3.5.46.tar.xz 52780 SHA256:da15e380557b5a00cdc14018e3da6cbeaaadc786f2c3cb5b8f1fb4acc150b3da
```

Other potentially useful URLs:

- https://sources.debian.net/src/base-passwd/3.5.46/ (for browsing the source)
- https://sources.debian.net/src/base-passwd/3.5.46/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/base-passwd/3.5.46/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `bash=5.0-4`

Binary Packages:

- `bash=5.0-4`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris bash=5.0-4
'http://deb.debian.org/debian/pool/main/b/bash/bash_5.0-4.dsc' bash_5.0-4.dsc 2305 SHA256:fe746c72de6e61866a0ed4e21a5b9d154966a8684ec3bdf5bacc70d5351f6282
'http://deb.debian.org/debian/pool/main/b/bash/bash_5.0.orig.tar.xz' bash_5.0.orig.tar.xz 5554808 SHA256:893858ba233d65bda38039e99dd96a4102b2f6a2d5e6c1c546e0794a60beed97
'http://deb.debian.org/debian/pool/main/b/bash/bash_5.0-4.debian.tar.xz' bash_5.0-4.debian.tar.xz 91884 SHA256:1e33dff5dd8604fa4205a1746828063cd96a1e635355f3626b54fef155b8c4e5
```

Other potentially useful URLs:

- https://sources.debian.net/src/bash/5.0-4/ (for browsing the source)
- https://sources.debian.net/src/bash/5.0-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/bash/5.0-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `boost-defaults=1.67.0.1`

Binary Packages:

- `libboost-chrono-dev:amd64=1.67.0.1`
- `libboost-date-time-dev:amd64=1.67.0.1`
- `libboost-dev:amd64=1.67.0.1`
- `libboost-filesystem-dev:amd64=1.67.0.1`
- `libboost-program-options-dev:amd64=1.67.0.1`
- `libboost-regex-dev:amd64=1.67.0.1`
- `libboost-system-dev:amd64=1.67.0.1`
- `libboost-thread-dev:amd64=1.67.0.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris boost-defaults=1.67.0.1
'http://deb.debian.org/debian/pool/main/b/boost-defaults/boost-defaults_1.67.0.1.dsc' boost-defaults_1.67.0.1.dsc 4263 SHA256:a9a540a7febb546a64dfc971c1c8a834335a5ed14e9a1a9e9c6506fd9ebe57ce
'http://deb.debian.org/debian/pool/main/b/boost-defaults/boost-defaults_1.67.0.1.tar.gz' boost-defaults_1.67.0.1.tar.gz 12499 SHA256:5dcbe42430813fab60d9b418c95515598dacd0df43ab773763371d8f53530633
```

Other potentially useful URLs:

- https://sources.debian.net/src/boost-defaults/1.67.0.1/ (for browsing the source)
- https://sources.debian.net/src/boost-defaults/1.67.0.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/boost-defaults/1.67.0.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `boost1.67=1.67.0-13+deb10u1`

Binary Packages:

- `libboost-atomic1.67-dev:amd64=1.67.0-13+deb10u1`
- `libboost-atomic1.67.0:amd64=1.67.0-13+deb10u1`
- `libboost-chrono1.67-dev:amd64=1.67.0-13+deb10u1`
- `libboost-chrono1.67.0:amd64=1.67.0-13+deb10u1`
- `libboost-date-time1.67-dev:amd64=1.67.0-13+deb10u1`
- `libboost-date-time1.67.0:amd64=1.67.0-13+deb10u1`
- `libboost-filesystem1.67-dev:amd64=1.67.0-13+deb10u1`
- `libboost-filesystem1.67.0:amd64=1.67.0-13+deb10u1`
- `libboost-program-options1.67-dev:amd64=1.67.0-13+deb10u1`
- `libboost-program-options1.67.0:amd64=1.67.0-13+deb10u1`
- `libboost-regex1.67-dev:amd64=1.67.0-13+deb10u1`
- `libboost-regex1.67.0:amd64=1.67.0-13+deb10u1`
- `libboost-serialization1.67-dev:amd64=1.67.0-13+deb10u1`
- `libboost-serialization1.67.0:amd64=1.67.0-13+deb10u1`
- `libboost-system1.67-dev:amd64=1.67.0-13+deb10u1`
- `libboost-system1.67.0:amd64=1.67.0-13+deb10u1`
- `libboost-thread1.67-dev:amd64=1.67.0-13+deb10u1`
- `libboost-thread1.67.0:amd64=1.67.0-13+deb10u1`
- `libboost1.67-dev:amd64=1.67.0-13+deb10u1`

Licenses: (parsed from: `/usr/share/doc/libboost-atomic1.67-dev/copyright`, `/usr/share/doc/libboost-atomic1.67.0/copyright`, `/usr/share/doc/libboost-chrono1.67-dev/copyright`, `/usr/share/doc/libboost-chrono1.67.0/copyright`, `/usr/share/doc/libboost-date-time1.67-dev/copyright`, `/usr/share/doc/libboost-date-time1.67.0/copyright`, `/usr/share/doc/libboost-filesystem1.67-dev/copyright`, `/usr/share/doc/libboost-filesystem1.67.0/copyright`, `/usr/share/doc/libboost-program-options1.67-dev/copyright`, `/usr/share/doc/libboost-program-options1.67.0/copyright`, `/usr/share/doc/libboost-regex1.67-dev/copyright`, `/usr/share/doc/libboost-regex1.67.0/copyright`, `/usr/share/doc/libboost-serialization1.67-dev/copyright`, `/usr/share/doc/libboost-serialization1.67.0/copyright`, `/usr/share/doc/libboost-system1.67-dev/copyright`, `/usr/share/doc/libboost-system1.67.0/copyright`, `/usr/share/doc/libboost-thread1.67-dev/copyright`, `/usr/share/doc/libboost-thread1.67.0/copyright`, `/usr/share/doc/libboost1.67-dev/copyright`)

- `BSDRegex`
- `BSL-1.0`
- `OldBoost1`
- `OldBoost2`
- `OldBoost3`
- `OldBoost4`
- `PSF`
- `Perforce`
- `SGI`
- `Zlib`
- `boehm_gc`

Source:

```console
$ apt-get source -qq --print-uris boost1.67=1.67.0-13+deb10u1
'http://deb.debian.org/debian/pool/main/b/boost1.67/boost1.67_1.67.0-13%2bdeb10u1.dsc' boost1.67_1.67.0-13+deb10u1.dsc 8402 SHA256:3a7ac414c257170befd3ca714d8f26ae9bc2a6adf10bdbe400800ec723e6c5bb
'http://deb.debian.org/debian/pool/main/b/boost1.67/boost1.67_1.67.0.orig.tar.gz' boost1.67_1.67.0.orig.tar.gz 85291274 SHA256:40c2e1fb225b688453ceeb3348265b4b7f2eee216e14f5158d51b0fef2fe0bb5
'http://deb.debian.org/debian/pool/main/b/boost1.67/boost1.67_1.67.0-13%2bdeb10u1.debian.tar.xz' boost1.67_1.67.0-13+deb10u1.debian.tar.xz 351404 SHA256:48b68b700f8f570c5db7c8ca13dce5c7c986bdc418a7d6ec1175239e11e963b2
```

Other potentially useful URLs:

- https://sources.debian.net/src/boost1.67/1.67.0-13+deb10u1/ (for browsing the source)
- https://sources.debian.net/src/boost1.67/1.67.0-13+deb10u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/boost1.67/1.67.0-13+deb10u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `bzip2=1.0.6-9.2~deb10u2`

Binary Packages:

- `libbz2-1.0:amd64=1.0.6-9.2~deb10u2`
- `libbz2-dev:amd64=1.0.6-9.2~deb10u2`

Licenses: (parsed from: `/usr/share/doc/libbz2-1.0/copyright`, `/usr/share/doc/libbz2-dev/copyright`)

- `BSD-variant`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.6-9.2~deb10u2
'http://deb.debian.org/debian-security/pool/updates/main/b/bzip2/bzip2_1.0.6-9.2%7edeb10u2.dsc' bzip2_1.0.6-9.2~deb10u2.dsc 2225 SHA256:ebc297b875639162712a3e2fe09218566b0955441e7211a7f211211889b69727
'http://deb.debian.org/debian-security/pool/updates/main/b/bzip2/bzip2_1.0.6.orig.tar.bz2' bzip2_1.0.6.orig.tar.bz2 708737 SHA256:d70a9ccd8bdf47e302d96c69fecd54925f45d9c7b966bb4ef5f56b770960afa7
'http://deb.debian.org/debian-security/pool/updates/main/b/bzip2/bzip2_1.0.6-9.2%7edeb10u2.debian.tar.bz2' bzip2_1.0.6-9.2~deb10u2.debian.tar.bz2 27749 SHA256:cec354e1a9f9251ec4cd02897e6557dd3cb84941da250f2ee095687728558b62
```

Other potentially useful URLs:

- https://sources.debian.net/src/bzip2/1.0.6-9.2~deb10u2/ (for browsing the source)
- https://sources.debian.net/src/bzip2/1.0.6-9.2~deb10u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/bzip2/1.0.6-9.2~deb10u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ca-certificates=20200601~deb10u2`

Binary Packages:

- `ca-certificates=20200601~deb10u2`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20200601~deb10u2
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20200601%7edeb10u2.dsc' ca-certificates_20200601~deb10u2.dsc 1907 SHA256:b89cbd8c235e131ee10cb85a9bd4b3e429874c1e0577c5ed35121f8590d4d029
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20200601%7edeb10u2.tar.xz' ca-certificates_20200601~deb10u2.tar.xz 245804 SHA256:13ffd04d36230309ff383ad4ccbefb1852b1483f0ac3da75b4979906933ba5e8
```

Other potentially useful URLs:

- https://sources.debian.net/src/ca-certificates/20200601~deb10u2/ (for browsing the source)
- https://sources.debian.net/src/ca-certificates/20200601~deb10u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ca-certificates/20200601~deb10u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cdebconf=0.249`

Binary Packages:

- `libdebconfclient0:amd64=0.249`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.249
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.249.dsc' cdebconf_0.249.dsc 2783 SHA256:6a0061589add058e5130e9be20ea45056701fd71ac0d26defd9a8c53758486f1
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.249.tar.xz' cdebconf_0.249.tar.xz 275256 SHA256:f7211ab20bfde7a0726cd566fd004b08e7ee358d238e35ea215f4fe0b3883b3e
```

Other potentially useful URLs:

- https://sources.debian.net/src/cdebconf/0.249/ (for browsing the source)
- https://sources.debian.net/src/cdebconf/0.249/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cdebconf/0.249/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cmake=3.13.4-1`

Binary Packages:

- `cmake=3.13.4-1`
- `cmake-data=3.13.4-1`

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
$ apt-get source -qq --print-uris cmake=3.13.4-1
'http://deb.debian.org/debian/pool/main/c/cmake/cmake_3.13.4-1.dsc' cmake_3.13.4-1.dsc 3028 SHA256:a8c319ae56fad2a602f551d51a4a1f6f78c039d548380230459138fab9e6694b
'http://deb.debian.org/debian/pool/main/c/cmake/cmake_3.13.4.orig.tar.gz' cmake_3.13.4.orig.tar.gz 8617881 SHA256:fdd928fee35f472920071d1c7f1a6a2b72c9b25e04f7a37b409349aef3f20e9b
'http://deb.debian.org/debian/pool/main/c/cmake/cmake_3.13.4-1.debian.tar.xz' cmake_3.13.4-1.debian.tar.xz 27844 SHA256:acbac4bc902d1f4b97df89171646fde92f5d4f39dd5ffb3947d6b34299dff324
```

Other potentially useful URLs:

- https://sources.debian.net/src/cmake/3.13.4-1/ (for browsing the source)
- https://sources.debian.net/src/cmake/3.13.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cmake/3.13.4-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `console-bridge=0.4.3+dfsg-1`

Binary Packages:

- `libconsole-bridge-dev:amd64=0.4.3+dfsg-1`
- `libconsole-bridge0.4:amd64=0.4.3+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/libconsole-bridge-dev/copyright`, `/usr/share/doc/libconsole-bridge0.4/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris console-bridge=0.4.3+dfsg-1
'http://deb.debian.org/debian/pool/main/c/console-bridge/console-bridge_0.4.3%2bdfsg-1.dsc' console-bridge_0.4.3+dfsg-1.dsc 1949 SHA256:5e42755791d518b4a79bc93a07ef7f10f6be0eaffc3d960a380c4e49ef88d290
'http://deb.debian.org/debian/pool/main/c/console-bridge/console-bridge_0.4.3%2bdfsg.orig.tar.xz' console-bridge_0.4.3+dfsg.orig.tar.xz 5696 SHA256:d9f9f5a3f8c57fc588e4156d7f013f9c181d3569686952950612a284fc683ff5
'http://deb.debian.org/debian/pool/main/c/console-bridge/console-bridge_0.4.3%2bdfsg-1.debian.tar.xz' console-bridge_0.4.3+dfsg-1.debian.tar.xz 3656 SHA256:8f2113cd5d0954adb0d14dcadb96168e8613899039e51e1d2f303a4ce16e1300
```

Other potentially useful URLs:

- https://sources.debian.net/src/console-bridge/0.4.3+dfsg-1/ (for browsing the source)
- https://sources.debian.net/src/console-bridge/0.4.3+dfsg-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/console-bridge/0.4.3+dfsg-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `coreutils=8.30-3`

Binary Packages:

- `coreutils=8.30-3`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils=8.30-3
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.30-3.dsc' coreutils_8.30-3.dsc 1861 SHA256:106031a57a2ab2ba46b61083035e2ccb438c85a2b3506a8198b67868dde1546d
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.30.orig.tar.xz' coreutils_8.30.orig.tar.xz 5359532 SHA256:e831b3a86091496cdba720411f9748de81507798f6130adeaef872d206e1b057
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.30-3.debian.tar.xz' coreutils_8.30-3.debian.tar.xz 32808 SHA256:9179d45fb51d07a8743c4d58464459330eb6d4b489d59641d70c3bd9f579b694
```

Other potentially useful URLs:

- https://sources.debian.net/src/coreutils/8.30-3/ (for browsing the source)
- https://sources.debian.net/src/coreutils/8.30-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/coreutils/8.30-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `curl=7.64.0-4+deb10u3`

Binary Packages:

- `libcurl4:amd64=7.64.0-4+deb10u3`

Licenses: (parsed from: `/usr/share/doc/libcurl4/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris curl=7.64.0-4+deb10u3
'http://deb.debian.org/debian-security/pool/updates/main/c/curl/curl_7.64.0-4%2bdeb10u3.dsc' curl_7.64.0-4+deb10u3.dsc 2845 SHA256:a3290e63b54991d6261f982c87230d36898b858b2f9bfe5f08e67a07d8c817ad
'http://deb.debian.org/debian-security/pool/updates/main/c/curl/curl_7.64.0.orig.tar.gz' curl_7.64.0.orig.tar.gz 4032645 SHA256:cb90d2eb74d4e358c1ed1489f8e3af96b50ea4374ad71f143fa4595e998d81b5
'http://deb.debian.org/debian-security/pool/updates/main/c/curl/curl_7.64.0-4%2bdeb10u3.debian.tar.xz' curl_7.64.0-4+deb10u3.debian.tar.xz 54192 SHA256:e102815f3a4901e4e5c884a419bbecc35e45bfbddd9741a61106d187677680e6
```

Other potentially useful URLs:

- https://sources.debian.net/src/curl/7.64.0-4+deb10u3/ (for browsing the source)
- https://sources.debian.net/src/curl/7.64.0-4+deb10u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/curl/7.64.0-4+deb10u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cyrus-sasl2=2.1.27+dfsg-1+deb10u2`

Binary Packages:

- `libsasl2-2:amd64=2.1.27+dfsg-1+deb10u2`
- `libsasl2-modules-db:amd64=2.1.27+dfsg-1+deb10u2`

Licenses: (parsed from: `/usr/share/doc/libsasl2-2/copyright`, `/usr/share/doc/libsasl2-modules-db/copyright`)

- `BSD-4-clause`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.27+dfsg-1+deb10u2
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27%2bdfsg-1%2bdeb10u2.dsc' cyrus-sasl2_2.1.27+dfsg-1+deb10u2.dsc 3583 SHA256:64f060b2e272069c2a6f89025d586c08855179dc03425b55848c2e6bb3e5f85e
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27%2bdfsg.orig.tar.xz' cyrus-sasl2_2.1.27+dfsg.orig.tar.xz 2058596 SHA256:108b0c691c423837264f05abb559ea76c3dfdd91246555e8abe87c129a6e37cd
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27%2bdfsg-1%2bdeb10u2.debian.tar.xz' cyrus-sasl2_2.1.27+dfsg-1+deb10u2.debian.tar.xz 101064 SHA256:43296455617072928e3c409b3a40b08e98ad335b98fd40fc2a0d921bab72cf97
```

Other potentially useful URLs:

- https://sources.debian.net/src/cyrus-sasl2/2.1.27+dfsg-1+deb10u2/ (for browsing the source)
- https://sources.debian.net/src/cyrus-sasl2/2.1.27+dfsg-1+deb10u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cyrus-sasl2/2.1.27+dfsg-1+deb10u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dash=0.5.10.2-5`

Binary Packages:

- `dash=0.5.10.2-5`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.10.2-5
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.10.2-5.dsc' dash_0.5.10.2-5.dsc 1756 SHA256:6255cf35f61df5122637856ad0912986de1c20875177932de1c971b7bbbbd848
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.10.2.orig.tar.gz' dash_0.5.10.2.orig.tar.gz 225196 SHA256:3c663919dc5c66ec991da14c7cf7e0be8ad00f3db73986a987c118862b5f6071
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.10.2-5.debian.tar.xz' dash_0.5.10.2-5.debian.tar.xz 41804 SHA256:fabf27bd78778b151143ed598a6b65019cfce5dd087d9693b848346459951d24
```

Other potentially useful URLs:

- https://sources.debian.net/src/dash/0.5.10.2-5/ (for browsing the source)
- https://sources.debian.net/src/dash/0.5.10.2-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dash/0.5.10.2-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `db5.3=5.3.28+dfsg1-0.5`

Binary Packages:

- `libdb5.3:amd64=5.3.28+dfsg1-0.5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28+dfsg1-0.5
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg1-0.5.dsc' db5.3_5.3.28+dfsg1-0.5.dsc 2804 SHA256:600ef735e47273c7e8de0a9bbbf2d6f31cb1d2851117f94776d7952588c0ecc4
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg1.orig.tar.xz' db5.3_5.3.28+dfsg1.orig.tar.xz 19723860 SHA256:b19bf3dd8ce74b95a7b215be9a7c8489e8e8f18da60d64d6340a06e75f497749
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg1-0.5.debian.tar.xz' db5.3_5.3.28+dfsg1-0.5.debian.tar.xz 29128 SHA256:682c1736c1b5f3afbd90cf24e085a0437821ae595dc54aeef8c09ddd1c3d05fe
```

Other potentially useful URLs:

- https://sources.debian.net/src/db5.3/5.3.28+dfsg1-0.5/ (for browsing the source)
- https://sources.debian.net/src/db5.3/5.3.28+dfsg1-0.5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/db5.3/5.3.28+dfsg1-0.5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debconf=1.5.71+deb10u1`

Binary Packages:

- `debconf=1.5.71+deb10u1`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.71+deb10u1
'http://deb.debian.org/debian/pool/main/d/debconf/debconf_1.5.71%2bdeb10u1.dsc' debconf_1.5.71+deb10u1.dsc 2199 SHA256:9bad49c9ec67cfe5b516813a8643e8c22d89434fee6947c16c27ab5cbb99c7d5
'http://deb.debian.org/debian/pool/main/d/debconf/debconf_1.5.71%2bdeb10u1.tar.xz' debconf_1.5.71+deb10u1.tar.xz 570832 SHA256:cfa00cb4ac50919b8a1e3a9190a06a248e83e3f0362fa70e49237a3a2686dc61
```

Other potentially useful URLs:

- https://sources.debian.net/src/debconf/1.5.71+deb10u1/ (for browsing the source)
- https://sources.debian.net/src/debconf/1.5.71+deb10u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debconf/1.5.71+deb10u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debian-archive-keyring=2019.1+deb10u1`

Binary Packages:

- `debian-archive-keyring=2019.1+deb10u1`

Licenses: (parsed from: `/usr/share/doc/debian-archive-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debian-archive-keyring=2019.1+deb10u1
'http://deb.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2019.1%2bdeb10u1.dsc' debian-archive-keyring_2019.1+deb10u1.dsc 1878 SHA256:5e331767f3b49a6da251e0723604ac953496536965dfddc1d527d23d028f0de0
'http://deb.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2019.1%2bdeb10u1.tar.xz' debian-archive-keyring_2019.1+deb10u1.tar.xz 149144 SHA256:ffb63bc54d67f3d9125ebbb7298fdf3be1d18a6df1816d5ae96f1cf0f141eb39
```

Other potentially useful URLs:

- https://sources.debian.net/src/debian-archive-keyring/2019.1+deb10u1/ (for browsing the source)
- https://sources.debian.net/src/debian-archive-keyring/2019.1+deb10u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debian-archive-keyring/2019.1+deb10u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debianutils=4.8.6.1`

Binary Packages:

- `debianutils=4.8.6.1`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debianutils=4.8.6.1
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_4.8.6.1.dsc' debianutils_4.8.6.1.dsc 1625 SHA256:fa869200410510cdefc85c89755d21ac054836a18b6916aedeba472e4b0567bb
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_4.8.6.1.tar.xz' debianutils_4.8.6.1.tar.xz 156604 SHA256:099f1e8a7278b26145a2ba2dda84c4118403bfab38c8d7070a6235a7ffcb55ed
```

Other potentially useful URLs:

- https://sources.debian.net/src/debianutils/4.8.6.1/ (for browsing the source)
- https://sources.debian.net/src/debianutils/4.8.6.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debianutils/4.8.6.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `defusedxml=0.5.0-2`

Binary Packages:

- `python3-defusedxml=0.5.0-2`

Licenses: (parsed from: `/usr/share/doc/python3-defusedxml/copyright`)

- `Python`

Source:

```console
$ apt-get source -qq --print-uris defusedxml=0.5.0-2
'http://deb.debian.org/debian/pool/main/d/defusedxml/defusedxml_0.5.0-2.dsc' defusedxml_0.5.0-2.dsc 2171 SHA256:c649bb9206e0be68c2925232279dc0caf9f6f33c617c14ef66781084254cb193
'http://deb.debian.org/debian/pool/main/d/defusedxml/defusedxml_0.5.0.orig.tar.gz' defusedxml_0.5.0.orig.tar.gz 60405 SHA256:24d7f2f94f7f3cb6061acb215685e5125fbcdc40a857eff9de22518820b0a4f4
'http://deb.debian.org/debian/pool/main/d/defusedxml/defusedxml_0.5.0-2.debian.tar.xz' defusedxml_0.5.0-2.debian.tar.xz 7720 SHA256:b5e599c27e91dc0398371c056cb78535467d54736a3dc3d39b9d087557a7be6f
```

Other potentially useful URLs:

- https://sources.debian.net/src/defusedxml/0.5.0-2/ (for browsing the source)
- https://sources.debian.net/src/defusedxml/0.5.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/defusedxml/0.5.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dh-python=3.20190308`

Binary Packages:

- `dh-python=3.20190308`

Licenses: (parsed from: `/usr/share/doc/dh-python/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris dh-python=3.20190308
'http://deb.debian.org/debian/pool/main/d/dh-python/dh-python_3.20190308.dsc' dh-python_3.20190308.dsc 1877 SHA256:9dd28d53140f65158409094894df97ce439d16232b07347ba8b37fcf96f33418
'http://deb.debian.org/debian/pool/main/d/dh-python/dh-python_3.20190308.tar.xz' dh-python_3.20190308.tar.xz 100408 SHA256:1243512e4d82811baf769e848e86586cf0bb3f3ae15a171b8495ddb33856f0c6
```

Other potentially useful URLs:

- https://sources.debian.net/src/dh-python/3.20190308/ (for browsing the source)
- https://sources.debian.net/src/dh-python/3.20190308/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dh-python/3.20190308/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `diffutils=1:3.7-3`

Binary Packages:

- `diffutils=1:3.7-3`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris diffutils=1:3.7-3
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.7-3.dsc' diffutils_3.7-3.dsc 1453 SHA256:99dee94cec05454a65a9cb542bea1720dbd4c511d13f9784c9e3741e76a9b9ba
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.7.orig.tar.xz' diffutils_3.7.orig.tar.xz 1448828 SHA256:b3a7a6221c3dc916085f0d205abf6b8e1ba443d4dd965118da364a1dc1cb3a26
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.7-3.debian.tar.xz' diffutils_3.7-3.debian.tar.xz 11116 SHA256:a455228f12283b5f3c0165db4ab9b12071adc37fb9dd50dcb5e1b8851c524f1f
```

Other potentially useful URLs:

- https://sources.debian.net/src/diffutils/1:3.7-3/ (for browsing the source)
- https://sources.debian.net/src/diffutils/1:3.7-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/diffutils/1:3.7-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `distro-info-data=0.41+deb10u6`

Binary Packages:

- `distro-info-data=0.41+deb10u6`

Licenses: (parsed from: `/usr/share/doc/distro-info-data/copyright`)

- `ISC`

Source:

```console
$ apt-get source -qq --print-uris distro-info-data=0.41+deb10u6
'http://deb.debian.org/debian-security/pool/updates/main/d/distro-info-data/distro-info-data_0.41%2bdeb10u6.dsc' distro-info-data_0.41+deb10u6.dsc 1070 SHA256:7acbe10651418f0881adbf6348532b7e0b23d5efd01691633d0a4925d5ba3251
'http://deb.debian.org/debian-security/pool/updates/main/d/distro-info-data/distro-info-data_0.41%2bdeb10u6.tar.xz' distro-info-data_0.41+deb10u6.tar.xz 7516 SHA256:02fd149a39c8fe8da341a02885bd154ae28e92814ddce3cb3f813b9fb37a5275
```

Other potentially useful URLs:

- https://sources.debian.net/src/distro-info-data/0.41+deb10u6/ (for browsing the source)
- https://sources.debian.net/src/distro-info-data/0.41+deb10u6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/distro-info-data/0.41+deb10u6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dpkg=1.19.8`

Binary Packages:

- `dpkg=1.19.8`
- `libdpkg-perl=1.19.8`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`, `/usr/share/doc/libdpkg-perl/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.19.8
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.19.8.dsc' dpkg_1.19.8.dsc 2103 SHA256:3b0220b111044754f8620ce53b1ba67cad9458cab6dde39d299dbb2f27c5528d
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.19.8.tar.xz' dpkg_1.19.8.tar.xz 4701260 SHA256:2632c00b0cf0ea19ed7bd6700e6ec5faca93f0045af629d356dc03ad74ae6f10
```

Other potentially useful URLs:

- https://sources.debian.net/src/dpkg/1.19.8/ (for browsing the source)
- https://sources.debian.net/src/dpkg/1.19.8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dpkg/1.19.8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `e2fsprogs=1.44.5-1+deb10u3`

Binary Packages:

- `e2fsprogs=1.44.5-1+deb10u3`
- `libcom-err2:amd64=1.44.5-1+deb10u3`
- `libext2fs2:amd64=1.44.5-1+deb10u3`
- `libss2:amd64=1.44.5-1+deb10u3`

Licenses: (parsed from: `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcom-err2/copyright`, `/usr/share/doc/libext2fs2/copyright`, `/usr/share/doc/libss2/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.44.5-1+deb10u3
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.44.5-1%2bdeb10u3.dsc' e2fsprogs_1.44.5-1+deb10u3.dsc 2903 SHA256:acdc31d6fd491f9db97aabc96340559d8492b98e3549df32d8369690e03058dc
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.44.5.orig.tar.gz' e2fsprogs_1.44.5.orig.tar.gz 7619237 SHA256:2e211fae27ef74d5af4a4e40b10b8df7f87c655933bd171aab4889bfc4e6d1cc
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.44.5.orig.tar.gz.asc' e2fsprogs_1.44.5.orig.tar.gz.asc 488 SHA256:c0e3e4e51f46c005890963b005015b784b2f19e291a16a15681b9906528f557e
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.44.5-1%2bdeb10u3.debian.tar.xz' e2fsprogs_1.44.5-1+deb10u3.debian.tar.xz 82412 SHA256:0114857448922a218613f369f665f03f1b1435004c9d79ce5ee1a8a8a6cec53f
```

Other potentially useful URLs:

- https://sources.debian.net/src/e2fsprogs/1.44.5-1+deb10u3/ (for browsing the source)
- https://sources.debian.net/src/e2fsprogs/1.44.5-1+deb10u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/e2fsprogs/1.44.5-1+deb10u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `elfutils=0.176-1.1`

Binary Packages:

- `libelf1:amd64=0.176-1.1`

Licenses: (parsed from: `/usr/share/doc/libelf1/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-`

Source:

```console
$ apt-get source -qq --print-uris elfutils=0.176-1.1
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.176-1.1.dsc' elfutils_0.176-1.1.dsc 2584 SHA256:6d9fa4741e921f58a3e291def1f92a87bed888db15e73d6e29d46fc48b5f615a
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.176.orig.tar.bz2' elfutils_0.176.orig.tar.bz2 8646075 SHA256:eb5747c371b0af0f71e86215a5ebb88728533c3a104a43d4231963f308cd1023
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.176.orig.tar.bz2.asc' elfutils_0.176.orig.tar.bz2.asc 455 SHA256:51474b579b25fc799de0777e241c83605427d2903f8d28524ef6af42f75931fd
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.176-1.1.debian.tar.xz' elfutils_0.176-1.1.debian.tar.xz 31644 SHA256:06d7057e744d3a6138cf43d30237e2b327b6bfe3041a9a4b210414429c1267f1
```

Other potentially useful URLs:

- https://sources.debian.net/src/elfutils/0.176-1.1/ (for browsing the source)
- https://sources.debian.net/src/elfutils/0.176-1.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/elfutils/0.176-1.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `empy=3.3.2-2`

Binary Packages:

- `python3-empy=3.3.2-2`

Licenses: (parsed from: `/usr/share/doc/python3-empy/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris empy=3.3.2-2
'http://deb.debian.org/debian/pool/main/e/empy/empy_3.3.2-2.dsc' empy_3.3.2-2.dsc 1760 SHA256:5ca9e3e26ccbd94d31aee2f51ddd026a477fd303670b7c6f9e77f35eee833301
'http://deb.debian.org/debian/pool/main/e/empy/empy_3.3.2.orig.tar.gz' empy_3.3.2.orig.tar.gz 138168 SHA256:99f016af2770c48ab57a65df7aae251360dc69a1514c15851458a71d4ddfea9c
'http://deb.debian.org/debian/pool/main/e/empy/empy_3.3.2-2.debian.tar.xz' empy_3.3.2-2.debian.tar.xz 4680 SHA256:fe775813e99c41332bd603a6f03bc77302177a8ee95c6f1bd49c254b03dd6a34
```

Other potentially useful URLs:

- https://sources.debian.net/src/empy/3.3.2-2/ (for browsing the source)
- https://sources.debian.net/src/empy/3.3.2-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/empy/3.3.2-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `expat=2.2.6-2+deb10u6`

Binary Packages:

- `libexpat1:amd64=2.2.6-2+deb10u6`
- `libexpat1-dev:amd64=2.2.6-2+deb10u6`

Licenses: (parsed from: `/usr/share/doc/libexpat1/copyright`, `/usr/share/doc/libexpat1-dev/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris expat=2.2.6-2+deb10u6
'http://deb.debian.org/debian-security/pool/updates/main/e/expat/expat_2.2.6-2%2bdeb10u6.dsc' expat_2.2.6-2+deb10u6.dsc 2010 SHA256:12e5e94724e3c495aab1fb7dba2f30eabf554b0b3ecafa3ad59fffb0ac379ebf
'http://deb.debian.org/debian-security/pool/updates/main/e/expat/expat_2.2.6.orig.tar.gz' expat_2.2.6.orig.tar.gz 8275473 SHA256:574499cba22a599393e28d99ecfa1e7fc85be7d6651d543045244d5b561cb7ff
'http://deb.debian.org/debian-security/pool/updates/main/e/expat/expat_2.2.6-2%2bdeb10u6.debian.tar.xz' expat_2.2.6-2+deb10u6.debian.tar.xz 29268 SHA256:f938a77385f9e1a452ab2b45b887dc6539607d097211bf69d1194453d0f05d57
```

Other potentially useful URLs:

- https://sources.debian.net/src/expat/2.2.6-2+deb10u6/ (for browsing the source)
- https://sources.debian.net/src/expat/2.2.6-2+deb10u6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/expat/2.2.6-2+deb10u6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `findutils=4.6.0+git+20190209-2`

Binary Packages:

- `findutils=4.6.0+git+20190209-2`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.6.0+git+20190209-2
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.6.0%2bgit%2b20190209-2.dsc' findutils_4.6.0+git+20190209-2.dsc 2137 SHA256:e09430f44f976ee0e51e3226543247668b4ef88c05d14a84ed2d5a6f1bd07421
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.6.0%2bgit%2b20190209.orig.tar.xz' findutils_4.6.0+git+20190209.orig.tar.xz 1893084 SHA256:6832b3f6ddc0e2718795e6732ea40cc5309b948505f55fb9935919d6aaac7e9d
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.6.0%2bgit%2b20190209-2.debian.tar.xz' findutils_4.6.0+git+20190209-2.debian.tar.xz 26628 SHA256:d6f4c6fedc27cf5d616c9fbf41a46b8fb8b078f1f21045b484419b145037e849
```

Other potentially useful URLs:

- https://sources.debian.net/src/findutils/4.6.0+git+20190209-2/ (for browsing the source)
- https://sources.debian.net/src/findutils/4.6.0+git+20190209-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/findutils/4.6.0+git+20190209-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-8=8.3.0-6`

Binary Packages:

- `gcc-8-base:amd64=8.3.0-6`
- `libasan5:amd64=8.3.0-6`
- `libatomic1:amd64=8.3.0-6`
- `libgcc-8-dev:amd64=8.3.0-6`
- `libgcc1:amd64=1:8.3.0-6`
- `libgfortran5:amd64=8.3.0-6`
- `libgomp1:amd64=8.3.0-6`
- `libitm1:amd64=8.3.0-6`
- `liblsan0:amd64=8.3.0-6`
- `libmpx2:amd64=8.3.0-6`
- `libquadmath0:amd64=8.3.0-6`
- `libstdc++-8-dev:amd64=8.3.0-6`
- `libstdc++6:amd64=8.3.0-6`
- `libtsan0:amd64=8.3.0-6`
- `libubsan1:amd64=8.3.0-6`

Licenses: (parsed from: `/usr/share/doc/gcc-8-base/copyright`, `/usr/share/doc/libasan5/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libgcc-8-dev/copyright`, `/usr/share/doc/libgcc1/copyright`, `/usr/share/doc/libgfortran5/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libmpx2/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++-8-dev/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan0/copyright`, `/usr/share/doc/libubsan1/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-8=8.3.0-6
'http://deb.debian.org/debian/pool/main/g/gcc-8/gcc-8_8.3.0-6.dsc' gcc-8_8.3.0-6.dsc 32433 SHA256:3b380579af74f1a325a07cc5798f8bff5206f0820fcac5bf64ff2bbd0466867d
'http://deb.debian.org/debian/pool/main/g/gcc-8/gcc-8_8.3.0.orig.tar.gz' gcc-8_8.3.0.orig.tar.gz 87764363 SHA256:ee3fd608f66e5737f20cf71b176cfbf58f7c1d190ad6def33d57610cdae8eac2
'http://deb.debian.org/debian/pool/main/g/gcc-8/gcc-8_8.3.0-6.diff.gz' gcc-8_8.3.0-6.diff.gz 704334 SHA256:211e5e1022e115abbcb9eeb39cf4bf84958c4e8469c0cbe430569947a04c5415
```

Other potentially useful URLs:

- https://sources.debian.net/src/gcc-8/8.3.0-6/ (for browsing the source)
- https://sources.debian.net/src/gcc-8/8.3.0-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gcc-8/8.3.0-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gdbm=1.18.1-4`

Binary Packages:

- `libgdbm-compat4:amd64=1.18.1-4`
- `libgdbm6:amd64=1.18.1-4`

Licenses: (parsed from: `/usr/share/doc/libgdbm-compat4/copyright`, `/usr/share/doc/libgdbm6/copyright`)

- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.18.1-4
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.18.1-4.dsc' gdbm_1.18.1-4.dsc 2635 SHA256:14f2a1741041f3ee8ebe1db9985ec12855c856a4c545ace6140b1222030ae64a
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.18.1.orig.tar.gz' gdbm_1.18.1.orig.tar.gz 941863 SHA256:86e613527e5dba544e73208f42b78b7c022d4fa5a6d5498bf18c8d6f745b91dc
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.18.1.orig.tar.gz.asc' gdbm_1.18.1.orig.tar.gz.asc 412 SHA256:3254738e7689e44ac65e78a766806828b8282e6bb1c0e5bb6156a99e567889a5
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.18.1-4.debian.tar.xz' gdbm_1.18.1-4.debian.tar.xz 16460 SHA256:1a7771cf18cacf86b8415cbdeafa4e54dd2dadee59f0c29833aba476726594c5
```

Other potentially useful URLs:

- https://sources.debian.net/src/gdbm/1.18.1-4/ (for browsing the source)
- https://sources.debian.net/src/gdbm/1.18.1-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gdbm/1.18.1-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `glib2.0=2.58.3-2+deb10u4`

Binary Packages:

- `libglib2.0-0:amd64=2.58.3-2+deb10u4`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0/copyright`)

- `Apache-2.0`
- `Expat`
- `GPL-2+`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris glib2.0=2.58.3-2+deb10u4
'http://deb.debian.org/debian-security/pool/updates/main/g/glib2.0/glib2.0_2.58.3-2%2bdeb10u4.dsc' glib2.0_2.58.3-2+deb10u4.dsc 3334 SHA256:8a2b7d98dd7f3e5ed4908d06d13b919989f1712e3a5e348be45e266fb72a2cb9
'http://deb.debian.org/debian-security/pool/updates/main/g/glib2.0/glib2.0_2.58.3.orig.tar.xz' glib2.0_2.58.3.orig.tar.xz 4863648 SHA256:8f43c31767e88a25da72b52a40f3301fefc49a665b56dc10ee7cc9565cbe7481
'http://deb.debian.org/debian-security/pool/updates/main/g/glib2.0/glib2.0_2.58.3-2%2bdeb10u4.debian.tar.xz' glib2.0_2.58.3-2+deb10u4.debian.tar.xz 107716 SHA256:2a62cdccabd2bdcac1015913599cf04966895fadd76424790a687652f7e53277
```

Other potentially useful URLs:

- https://sources.debian.net/src/glib2.0/2.58.3-2+deb10u4/ (for browsing the source)
- https://sources.debian.net/src/glib2.0/2.58.3-2+deb10u4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glib2.0/2.58.3-2+deb10u4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `glibc=2.28-10+deb10u2`

Binary Packages:

- `libc-bin=2.28-10+deb10u2`
- `libc-dev-bin=2.28-10+deb10u2`
- `libc6:amd64=2.28-10+deb10u2`
- `libc6-dev:amd64=2.28-10+deb10u2`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.28-10+deb10u2
'http://deb.debian.org/debian-security/pool/updates/main/g/glibc/glibc_2.28-10%2bdeb10u2.dsc' glibc_2.28-10+deb10u2.dsc 8921 SHA256:1db9443dcf591e7c3980686ebf782400658761c6dcf832c704efbd592e203418
'http://deb.debian.org/debian-security/pool/updates/main/g/glibc/glibc_2.28.orig.tar.xz' glibc_2.28.orig.tar.xz 17061292 SHA256:53d3c1c7bff0fb25d4c7874bf13435dc44a71fd7dd5ffc9bfdcb513cdfc36854
'http://deb.debian.org/debian-security/pool/updates/main/g/glibc/glibc_2.28-10%2bdeb10u2.debian.tar.xz' glibc_2.28-10+deb10u2.debian.tar.xz 922792 SHA256:e9e8a1512517faa1cab5a5fe0231dcae3d410ad3f981a8db5e1494ed68bee15a
```

Other potentially useful URLs:

- https://sources.debian.net/src/glibc/2.28-10+deb10u2/ (for browsing the source)
- https://sources.debian.net/src/glibc/2.28-10+deb10u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glibc/2.28-10+deb10u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gmp=2:6.1.2+dfsg-4+deb10u1`

Binary Packages:

- `libgmp-dev:amd64=2:6.1.2+dfsg-4+deb10u1`
- `libgmp10:amd64=2:6.1.2+dfsg-4+deb10u1`
- `libgmpxx4ldbl:amd64=2:6.1.2+dfsg-4+deb10u1`

Licenses: (parsed from: `/usr/share/doc/libgmp-dev/copyright`, `/usr/share/doc/libgmp10/copyright`, `/usr/share/doc/libgmpxx4ldbl/copyright`)

- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris gmp=2:6.1.2+dfsg-4+deb10u1
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.1.2%2bdfsg-4%2bdeb10u1.dsc' gmp_6.1.2+dfsg-4+deb10u1.dsc 2180 SHA256:77451bb51699c65572249934842a032e27f336750a25958f7b59807bc33f4b03
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.1.2%2bdfsg.orig.tar.xz' gmp_6.1.2+dfsg.orig.tar.xz 1804424 SHA256:18016f718f621e7641ddd4e57f8e140391c5183252e5998263ffff59198a65b7
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.1.2%2bdfsg-4%2bdeb10u1.debian.tar.xz' gmp_6.1.2+dfsg-4+deb10u1.debian.tar.xz 22008 SHA256:9db459dee6b7bbbf1bbc486d3f1d59ce640c25c42ca08472b4e0aee03370deaa
```

Other potentially useful URLs:

- https://sources.debian.net/src/gmp/2:6.1.2+dfsg-4+deb10u1/ (for browsing the source)
- https://sources.debian.net/src/gmp/2:6.1.2+dfsg-4+deb10u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gmp/2:6.1.2+dfsg-4+deb10u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnupg2=2.2.12-1+deb10u2`

Binary Packages:

- `dirmngr=2.2.12-1+deb10u2`
- `gnupg=2.2.12-1+deb10u2`
- `gnupg-l10n=2.2.12-1+deb10u2`
- `gnupg-utils=2.2.12-1+deb10u2`
- `gnupg2=2.2.12-1+deb10u2`
- `gpg=2.2.12-1+deb10u2`
- `gpg-agent=2.2.12-1+deb10u2`
- `gpg-wks-client=2.2.12-1+deb10u2`
- `gpg-wks-server=2.2.12-1+deb10u2`
- `gpgconf=2.2.12-1+deb10u2`
- `gpgsm=2.2.12-1+deb10u2`
- `gpgv=2.2.12-1+deb10u2`

Licenses: (parsed from: `/usr/share/doc/dirmngr/copyright`, `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gnupg-l10n/copyright`, `/usr/share/doc/gnupg-utils/copyright`, `/usr/share/doc/gnupg2/copyright`, `/usr/share/doc/gpg/copyright`, `/usr/share/doc/gpg-agent/copyright`, `/usr/share/doc/gpg-wks-client/copyright`, `/usr/share/doc/gpg-wks-server/copyright`, `/usr/share/doc/gpgconf/copyright`, `/usr/share/doc/gpgsm/copyright`, `/usr/share/doc/gpgv/copyright`)

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
$ apt-get source -qq --print-uris gnupg2=2.2.12-1+deb10u2
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.12-1%2bdeb10u2.dsc' gnupg2_2.2.12-1+deb10u2.dsc 3258 SHA256:63c9e0edbfd5772bc19eb722278445818f77e6506191def7a88748ffbd5226eb
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.12.orig.tar.bz2' gnupg2_2.2.12.orig.tar.bz2 6682303 SHA256:db030f8b4c98640e91300d36d516f1f4f8fe09514a94ea9fc7411ee1a34082cb
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.12.orig.tar.bz2.asc' gnupg2_2.2.12.orig.tar.bz2.asc 3204 SHA256:97c8dc25c4c2fe9a39b2ffd81b65b6f3dc4ad359c9a81ca4bb9b4bdeb6167c60
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.12-1%2bdeb10u2.debian.tar.xz' gnupg2_2.2.12-1+deb10u2.debian.tar.xz 123852 SHA256:e4959380382661227462a88c5f56b2b3b1fbb36717e32f1be6fc3187e6234c22
```

Other potentially useful URLs:

- https://sources.debian.net/src/gnupg2/2.2.12-1+deb10u2/ (for browsing the source)
- https://sources.debian.net/src/gnupg2/2.2.12-1+deb10u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnupg2/2.2.12-1+deb10u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnutls28=3.6.7-4+deb10u9`

Binary Packages:

- `libgnutls-dane0:amd64=3.6.7-4+deb10u9`
- `libgnutls-openssl27:amd64=3.6.7-4+deb10u9`
- `libgnutls28-dev:amd64=3.6.7-4+deb10u9`
- `libgnutls30:amd64=3.6.7-4+deb10u9`
- `libgnutlsxx28:amd64=3.6.7-4+deb10u9`

Licenses: (parsed from: `/usr/share/doc/libgnutls-dane0/copyright`, `/usr/share/doc/libgnutls-openssl27/copyright`, `/usr/share/doc/libgnutls28-dev/copyright`, `/usr/share/doc/libgnutls30/copyright`, `/usr/share/doc/libgnutlsxx28/copyright`)

- `Apache-2.0`
- `CC0 license`
- `GFDL-1.3`
- `GPL`
- `GPL-3`
- `GPLv3+`
- `LGPL`
- `LGPL-3`
- `LGPLv3+_or_GPLv2+`
- `The MIT License (MIT)`
- `The main library is licensed under GNU Lesser`

Source:

```console
$ apt-get source -qq --print-uris gnutls28=3.6.7-4+deb10u9
'http://deb.debian.org/debian-security/pool/updates/main/g/gnutls28/gnutls28_3.6.7-4%2bdeb10u9.dsc' gnutls28_3.6.7-4+deb10u9.dsc 3357 SHA256:bc4954d8b78c14bf78547265d89e573b17435d22395573d619fa544f19917fee
'http://deb.debian.org/debian-security/pool/updates/main/g/gnutls28/gnutls28_3.6.7.orig.tar.xz' gnutls28_3.6.7.orig.tar.xz 8153728 SHA256:5b3409ad5aaf239808730d1ee12fdcd148c0be00262c7edf157af655a8a188e2
'http://deb.debian.org/debian-security/pool/updates/main/g/gnutls28/gnutls28_3.6.7.orig.tar.xz.asc' gnutls28_3.6.7.orig.tar.xz.asc 534 SHA256:a14d0a7b9295b65ae797a70f8e765024a2e363dca03d008bfce0aec2b3f292b0
'http://deb.debian.org/debian-security/pool/updates/main/g/gnutls28/gnutls28_3.6.7-4%2bdeb10u9.debian.tar.xz' gnutls28_3.6.7-4+deb10u9.debian.tar.xz 101608 SHA256:671898a1a3def18fd4d6b06944a53b8d77f4ec3bd620e3c8538070351f2308cd
```

Other potentially useful URLs:

- https://sources.debian.net/src/gnutls28/3.6.7-4+deb10u9/ (for browsing the source)
- https://sources.debian.net/src/gnutls28/3.6.7-4+deb10u9/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnutls28/3.6.7-4+deb10u9/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `googletest=1.8.1-3`

Binary Packages:

- `google-mock:amd64=1.8.1-3`
- `googletest:amd64=1.8.1-3`
- `libgtest-dev:amd64=1.8.1-3`

Licenses: (parsed from: `/usr/share/doc/google-mock/copyright`, `/usr/share/doc/googletest/copyright`, `/usr/share/doc/libgtest-dev/copyright`)

- `Apache`
- `BSD-C3`
- `GAP`

Source:

```console
$ apt-get source -qq --print-uris googletest=1.8.1-3
'http://deb.debian.org/debian/pool/main/g/googletest/googletest_1.8.1-3.dsc' googletest_1.8.1-3.dsc 2159 SHA256:7ccce8fd0b4263c83998fa190a5ddba4c193a22581c886743c6836ee11044917
'http://deb.debian.org/debian/pool/main/g/googletest/googletest_1.8.1.orig.tar.gz' googletest_1.8.1.orig.tar.gz 992298 SHA256:9bf1fe5182a604b4135edc1a425ae356c9ad15e9b23f9f12a02e80184c3a249c
'http://deb.debian.org/debian/pool/main/g/googletest/googletest_1.8.1-3.debian.tar.xz' googletest_1.8.1-3.debian.tar.xz 11036 SHA256:960e7dd2cdbaa108707b93fc5b5681a4b123682dda05af103018761cba4e6280
```

Other potentially useful URLs:

- https://sources.debian.net/src/googletest/1.8.1-3/ (for browsing the source)
- https://sources.debian.net/src/googletest/1.8.1-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/googletest/1.8.1-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gpgme1.0=1.12.0-6`

Binary Packages:

- `libgpgme-dev=1.12.0-6`
- `libgpgme11:amd64=1.12.0-6`

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
$ apt-get source -qq --print-uris gpgme1.0=1.12.0-6
'http://deb.debian.org/debian/pool/main/g/gpgme1.0/gpgme1.0_1.12.0-6.dsc' gpgme1.0_1.12.0-6.dsc 2634 SHA256:a6abc917763c8e6cbb25eb27712ce73eb5735e4ef5b0e2b1e7f6d75843e11c3a
'http://deb.debian.org/debian/pool/main/g/gpgme1.0/gpgme1.0_1.12.0.orig.tar.bz2' gpgme1.0_1.12.0.orig.tar.bz2 1658803 SHA256:b4dc951c3743a60e2e120a77892e9e864fb936b2e58e7c77e8581f4d050e8cd8
'http://deb.debian.org/debian/pool/main/g/gpgme1.0/gpgme1.0_1.12.0-6.debian.tar.xz' gpgme1.0_1.12.0-6.debian.tar.xz 22052 SHA256:bcdc1a899a63903aae88dbe842bdc29bfdeca7db20ec9d634d71cd31a1e396ed
```

Other potentially useful URLs:

- https://sources.debian.net/src/gpgme1.0/1.12.0-6/ (for browsing the source)
- https://sources.debian.net/src/gpgme1.0/1.12.0-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gpgme1.0/1.12.0-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `grep=3.3-1`

Binary Packages:

- `grep=3.3-1`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=3.3-1
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.3-1.dsc' grep_3.3-1.dsc 2038 SHA256:4a019e5634f0a3a15715140fe8639af4cff0f2f7af8cee9b95b0607740ba9b25
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.3.orig.tar.xz' grep_3.3.orig.tar.xz 1473056 SHA256:b960541c499619efd6afe1fa795402e4733c8e11ebf9fafccc0bb4bccdc5b514
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.3-1.debian.tar.xz' grep_3.3-1.debian.tar.xz 104280 SHA256:2cea85fdfe3c70855019c3d9ed9346363137bf3f9931103d9b38514828c8989f
```

Other potentially useful URLs:

- https://sources.debian.net/src/grep/3.3-1/ (for browsing the source)
- https://sources.debian.net/src/grep/3.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/grep/3.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gzip=1.9-3+deb10u1`

Binary Packages:

- `gzip=1.9-3+deb10u1`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.9-3+deb10u1
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.9-3%2bdeb10u1.dsc' gzip_1.9-3+deb10u1.dsc 1842 SHA256:9d59e20581097941df44eff5cafb2ed8f3fd416278fbd08723048f6020ccc052
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.9.orig.tar.gz' gzip_1.9.orig.tar.gz 1181937 SHA256:5d2d3a3432ef32f24cdb060d278834507b481a75adeca18850c73592f778f6ad
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.9-3%2bdeb10u1.debian.tar.xz' gzip_1.9-3+deb10u1.debian.tar.xz 17984 SHA256:47e692e16f5e1d950fc7a259dc1418c7988dd33f659109e59af90a3384ec01ae
```

Other potentially useful URLs:

- https://sources.debian.net/src/gzip/1.9-3+deb10u1/ (for browsing the source)
- https://sources.debian.net/src/gzip/1.9-3+deb10u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gzip/1.9-3+deb10u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `hostname=3.21`

Binary Packages:

- `hostname=3.21`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.21
'http://deb.debian.org/debian/pool/main/h/hostname/hostname_3.21.dsc' hostname_3.21.dsc 1398 SHA256:8e61f35d7b3e57833d6110ee22a95af6b12e159bf41a5b659e63b21d01e83121
'http://deb.debian.org/debian/pool/main/h/hostname/hostname_3.21.tar.gz' hostname_3.21.tar.gz 13467 SHA256:566193a99f97a58f80b1537efe207c798bb88436c31c7dfc6dd4471d888a4a4f
```

Other potentially useful URLs:

- https://sources.debian.net/src/hostname/3.21/ (for browsing the source)
- https://sources.debian.net/src/hostname/3.21/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/hostname/3.21/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `icu=63.1-6+deb10u3`

Binary Packages:

- `icu-devtools=63.1-6+deb10u3`
- `libicu-dev:amd64=63.1-6+deb10u3`
- `libicu63:amd64=63.1-6+deb10u3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris icu=63.1-6+deb10u3
'http://deb.debian.org/debian/pool/main/i/icu/icu_63.1-6%2bdeb10u3.dsc' icu_63.1-6+deb10u3.dsc 1997 SHA256:241ae5e80921ae8493f6ed741127a445337e6bfd0e8d555cd6dac01b330741be
'http://deb.debian.org/debian/pool/main/i/icu/icu_63.1.orig.tar.xz' icu_63.1.orig.tar.xz 13638120 SHA256:347d0e6c39c3538b812c10c6c83815d4a089d578380387ae7d94c5b820948e82
'http://deb.debian.org/debian/pool/main/i/icu/icu_63.1-6%2bdeb10u3.debian.tar.xz' icu_63.1-6+deb10u3.debian.tar.xz 27260 SHA256:013afc449fd4b3fe86d33ef0e8335f077c3e9514206d768aadd830f1eae527f1
```

Other potentially useful URLs:

- https://sources.debian.net/src/icu/63.1-6+deb10u3/ (for browsing the source)
- https://sources.debian.net/src/icu/63.1-6+deb10u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/icu/63.1-6+deb10u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `init-system-helpers=1.56+nmu1`

Binary Packages:

- `init-system-helpers=1.56+nmu1`

Licenses: (parsed from: `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.56+nmu1
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.56%2bnmu1.dsc' init-system-helpers_1.56+nmu1.dsc 1945 SHA256:96f7d1c696faf801eb5990223b2782dedaf4092efb9b0dcc13d038b91dbb1a51
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.56%2bnmu1.tar.xz' init-system-helpers_1.56+nmu1.tar.xz 40488 SHA256:ecb5b9a0dbf0b7e83ef41bfc15bf9d41868642d4d5f817a0962aa1b980a56368
```

Other potentially useful URLs:

- https://sources.debian.net/src/init-system-helpers/1.56+nmu1/ (for browsing the source)
- https://sources.debian.net/src/init-system-helpers/1.56+nmu1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/init-system-helpers/1.56+nmu1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `iproute2=4.20.0-2+deb10u1`

Binary Packages:

- `iproute2=4.20.0-2+deb10u1`

Licenses: (parsed from: `/usr/share/doc/iproute2/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris iproute2=4.20.0-2+deb10u1
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_4.20.0-2%2bdeb10u1.dsc' iproute2_4.20.0-2+deb10u1.dsc 1929 SHA256:5d7968a3a021bfdfcf546af5e8fc905aea66d6b5adc923e8d187baddffc4e91f
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_4.20.0.orig.tar.xz' iproute2_4.20.0.orig.tar.xz 707016 SHA256:c8adaa6a40f888476b23acb283cfa30c0dd55f07b5aa20663ed5ba2ef1f6fda8
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_4.20.0-2%2bdeb10u1.debian.tar.xz' iproute2_4.20.0-2+deb10u1.debian.tar.xz 146688 SHA256:d01f9c4b17519156cc0aadd5103cb38e928ceb3e86efb6b6e7479358794658e3
```

Other potentially useful URLs:

- https://sources.debian.net/src/iproute2/4.20.0-2+deb10u1/ (for browsing the source)
- https://sources.debian.net/src/iproute2/4.20.0-2+deb10u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/iproute2/4.20.0-2+deb10u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `iptables=1.8.2-4`

Binary Packages:

- `libxtables12:amd64=1.8.2-4`

Licenses: (parsed from: `/usr/share/doc/libxtables12/copyright`)

- `Artistic-2`
- `GPL-2`
- `GPL-2+`
- `custom`

Source:

```console
$ apt-get source -qq --print-uris iptables=1.8.2-4
'http://deb.debian.org/debian/pool/main/i/iptables/iptables_1.8.2-4.dsc' iptables_1.8.2-4.dsc 2699 SHA256:926c91a00c449d7999e5d86e7471ea0591d8fd6633aca3649925aa2fea04273a
'http://deb.debian.org/debian/pool/main/i/iptables/iptables_1.8.2.orig.tar.bz2' iptables_1.8.2.orig.tar.bz2 679858 SHA256:a3778b50ed1a3256f9ca975de82c2204e508001fc2471238c8c97f3d1c4c12af
'http://deb.debian.org/debian/pool/main/i/iptables/iptables_1.8.2-4.debian.tar.xz' iptables_1.8.2-4.debian.tar.xz 65300 SHA256:e6562e368ed7bff8378c1a31ca0d283f15be3a4c68165786dfaa38cc5e9e9e09
```

Other potentially useful URLs:

- https://sources.debian.net/src/iptables/1.8.2-4/ (for browsing the source)
- https://sources.debian.net/src/iptables/1.8.2-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/iptables/1.8.2-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `iputils=3:20180629-2+deb10u2`

Binary Packages:

- `iputils-ping=3:20180629-2+deb10u2`

Licenses: (parsed from: `/usr/share/doc/iputils-ping/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris iputils=3:20180629-2+deb10u2
'http://deb.debian.org/debian/pool/main/i/iputils/iputils_20180629-2%2bdeb10u2.dsc' iputils_20180629-2+deb10u2.dsc 2125 SHA256:e13bc2f1cc3e306f3075d6fafc48e5615081b5b5a3b05a4679e5b4440b8c962b
'http://deb.debian.org/debian/pool/main/i/iputils/iputils_20180629.orig.tar.bz2' iputils_20180629.orig.tar.bz2 157943 SHA256:1a54fe72d67ac00dae328ddb1952110ee5310ccecbfcb97cbb26d4dedc73fe6d
'http://deb.debian.org/debian/pool/main/i/iputils/iputils_20180629-2%2bdeb10u2.debian.tar.xz' iputils_20180629-2+deb10u2.debian.tar.xz 14144 SHA256:67453f496c473e4b33938bf63b522cf7289242443b9f69243cbdcfb95175b2bb
```

Other potentially useful URLs:

- https://sources.debian.net/src/iputils/3:20180629-2+deb10u2/ (for browsing the source)
- https://sources.debian.net/src/iputils/3:20180629-2+deb10u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/iputils/3:20180629-2+deb10u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `keyutils=1.6-6`

Binary Packages:

- `libkeyutils1:amd64=1.6-6`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.6-6
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.6-6.dsc' keyutils_1.6-6.dsc 2062 SHA256:1da6a0f50759b4eefe210e351558a854e28d312213d5528792af6938f106f183
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.6.orig.tar.bz2' keyutils_1.6.orig.tar.bz2 93973 SHA256:d3aef20cec0005c0fa6b4be40079885567473185b1a57b629b030e67942c7115
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.6-6.debian.tar.xz' keyutils_1.6-6.debian.tar.xz 12828 SHA256:063876d3733337aad5e632b013bb8fd85bef85b2285ba7d6c8ab5ac7492ca245
```

Other potentially useful URLs:

- https://sources.debian.net/src/keyutils/1.6-6/ (for browsing the source)
- https://sources.debian.net/src/keyutils/1.6-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/keyutils/1.6-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `krb5=1.17-3+deb10u5`

Binary Packages:

- `libgssapi-krb5-2:amd64=1.17-3+deb10u5`
- `libk5crypto3:amd64=1.17-3+deb10u5`
- `libkrb5-3:amd64=1.17-3+deb10u5`
- `libkrb5support0:amd64=1.17-3+deb10u5`

Licenses: (parsed from: `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.17-3+deb10u5
'http://deb.debian.org/debian-security/pool/updates/main/k/krb5/krb5_1.17-3%2bdeb10u5.dsc' krb5_1.17-3+deb10u5.dsc 3573 SHA256:9c077e4e8be514692b32bfb3cbfe9de1b660fac9fd2686aae15cb75bf1be4edf
'http://deb.debian.org/debian-security/pool/updates/main/k/krb5/krb5_1.17.orig.tar.gz' krb5_1.17.orig.tar.gz 8761763 SHA256:5a6e2284a53de5702d3dc2be3b9339c963f9b5397d3fbbc53beb249380a781f5
'http://deb.debian.org/debian-security/pool/updates/main/k/krb5/krb5_1.17-3%2bdeb10u5.debian.tar.xz' krb5_1.17-3+deb10u5.debian.tar.xz 105892 SHA256:b5d9785d100eab8a0de448e39ce0f830d823d5d00d76ee0ffeae6e8d3ca51a9a
```

Other potentially useful URLs:

- https://sources.debian.net/src/krb5/1.17-3+deb10u5/ (for browsing the source)
- https://sources.debian.net/src/krb5/1.17-3+deb10u5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/krb5/1.17-3+deb10u5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lapack=3.8.0-2`

Binary Packages:

- `libblas3:amd64=3.8.0-2`
- `liblapack3:amd64=3.8.0-2`

Licenses: (parsed from: `/usr/share/doc/libblas3/copyright`, `/usr/share/doc/liblapack3/copyright`)

- `BSD-3-clause`
- `BSD-3-clause-intel`

Source:

```console
$ apt-get source -qq --print-uris lapack=3.8.0-2
'http://deb.debian.org/debian/pool/main/l/lapack/lapack_3.8.0-2.dsc' lapack_3.8.0-2.dsc 2776 SHA256:8cf38ceb9d86e1c51cbf213da566d1415eb040fa94aceefa5df86b4a6488dc6c
'http://deb.debian.org/debian/pool/main/l/lapack/lapack_3.8.0.orig.tar.gz' lapack_3.8.0.orig.tar.gz 7426094 SHA256:deb22cc4a6120bff72621155a9917f485f96ef8319ac074a7afbc68aab88bcf6
'http://deb.debian.org/debian/pool/main/l/lapack/lapack_3.8.0-2.debian.tar.xz' lapack_3.8.0-2.debian.tar.xz 21076 SHA256:ac34773cb9f3f8b9659062fc5b6fd68790acc0b93e9bb0cac8a622cf409451c3
```

Other potentially useful URLs:

- https://sources.debian.net/src/lapack/3.8.0-2/ (for browsing the source)
- https://sources.debian.net/src/lapack/3.8.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lapack/3.8.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libarchive=3.3.3-4+deb10u2`

Binary Packages:

- `libarchive13:amd64=3.3.3-4+deb10u2`

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
$ apt-get source -qq --print-uris libarchive=3.3.3-4+deb10u2
'http://deb.debian.org/debian-security/pool/updates/main/liba/libarchive/libarchive_3.3.3-4%2bdeb10u2.dsc' libarchive_3.3.3-4+deb10u2.dsc 2389 SHA256:06691583f7308cbee040af499751507d8c197d85e92bf20b268adb2ff12e7d30
'http://deb.debian.org/debian-security/pool/updates/main/liba/libarchive/libarchive_3.3.3.orig.tar.gz' libarchive_3.3.3.orig.tar.gz 6535598 SHA256:ba7eb1781c9fbbae178c4c6bad1c6eb08edab9a1496c64833d1715d022b30e2e
'http://deb.debian.org/debian-security/pool/updates/main/liba/libarchive/libarchive_3.3.3-4%2bdeb10u2.debian.tar.xz' libarchive_3.3.3-4+deb10u2.debian.tar.xz 24592 SHA256:895a83cc3c6de67969e1063ee3f51b3337a7dd128cedbb34e7132ea56c5431ae
```

Other potentially useful URLs:

- https://sources.debian.net/src/libarchive/3.3.3-4+deb10u2/ (for browsing the source)
- https://sources.debian.net/src/libarchive/3.3.3-4+deb10u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libarchive/3.3.3-4+deb10u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libassuan=2.5.2-1`

Binary Packages:

- `libassuan-dev=2.5.2-1`
- `libassuan0:amd64=2.5.2-1`

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
$ apt-get source -qq --print-uris libassuan=2.5.2-1
'http://deb.debian.org/debian/pool/main/liba/libassuan/libassuan_2.5.2-1.dsc' libassuan_2.5.2-1.dsc 1925 SHA256:534810315ca014673a3cc55a63e393ac02c434a4c51d0aff85c7edbcd60fb6e2
'http://deb.debian.org/debian/pool/main/liba/libassuan/libassuan_2.5.2.orig.tar.bz2' libassuan_2.5.2.orig.tar.bz2 570676 SHA256:986b1bf277e375f7a960450fbb8ffbd45294d06598916ad4ebf79aee0cb788e7
'http://deb.debian.org/debian/pool/main/liba/libassuan/libassuan_2.5.2.orig.tar.bz2.asc' libassuan_2.5.2.orig.tar.bz2.asc 1602 SHA256:b518440a68e4a1177f48c75637d9b4016f1a7c4bc46b820dda120a2d63af77ed
'http://deb.debian.org/debian/pool/main/liba/libassuan/libassuan_2.5.2-1.debian.tar.xz' libassuan_2.5.2-1.debian.tar.xz 11168 SHA256:69c1a189a718b289150cd194b9f558d8b2d190e371c6451e26a89b213f4b54f2
```

Other potentially useful URLs:

- https://sources.debian.net/src/libassuan/2.5.2-1/ (for browsing the source)
- https://sources.debian.net/src/libassuan/2.5.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libassuan/2.5.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libcap-ng=0.7.9-2`

Binary Packages:

- `libcap-ng0:amd64=0.7.9-2`

Licenses: (parsed from: `/usr/share/doc/libcap-ng0/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libcap-ng=0.7.9-2
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.7.9-2.dsc' libcap-ng_0.7.9-2.dsc 1912 SHA256:e787ebb86a7c9fdcfe429c20f2b17528d084917a34b5efc0022619e1e11572a4
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.7.9.orig.tar.gz' libcap-ng_0.7.9.orig.tar.gz 449038 SHA256:4a1532bcf3731aade40936f6d6a586ed5a66ca4c7455e1338d1f6c3e09221328
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.7.9-2.debian.tar.xz' libcap-ng_0.7.9-2.debian.tar.xz 6220 SHA256:1ce4d5f7ee041b01f254e9d12ae86fef563566871bc457579c70b058b071ae22
```

Other potentially useful URLs:

- https://sources.debian.net/src/libcap-ng/0.7.9-2/ (for browsing the source)
- https://sources.debian.net/src/libcap-ng/0.7.9-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libcap-ng/0.7.9-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libcap2=1:2.25-2`

Binary Packages:

- `libcap2:amd64=1:2.25-2`
- `libcap2-bin=1:2.25-2`

Licenses: (parsed from: `/usr/share/doc/libcap2/copyright`, `/usr/share/doc/libcap2-bin/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libcap2=1:2.25-2
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.25-2.dsc' libcap2_2.25-2.dsc 2196 SHA256:28adc8b721b5a3151afdddc2081149473ec07f362777e25bfc29b3b96ec432f8
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.25.orig.tar.xz' libcap2_2.25.orig.tar.xz 63672 SHA256:693c8ac51e983ee678205571ef272439d83afe62dd8e424ea14ad9790bc35162
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.25-2.debian.tar.xz' libcap2_2.25-2.debian.tar.xz 24876 SHA256:2581cdcaa27cf7e50b8e9f402a8b35ebbf78dd2697fb96bf78f411cd11110a82
```

Other potentially useful URLs:

- https://sources.debian.net/src/libcap2/1:2.25-2/ (for browsing the source)
- https://sources.debian.net/src/libcap2/1:2.25-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libcap2/1:2.25-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libevent=2.1.8-stable-4`

Binary Packages:

- `libevent-2.1-6:amd64=2.1.8-stable-4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libevent=2.1.8-stable-4
'http://deb.debian.org/debian/pool/main/libe/libevent/libevent_2.1.8-stable-4.dsc' libevent_2.1.8-stable-4.dsc 2328 SHA256:4d2c3f7943219dd13ae711c6d3e8589c6211d2cec15c18ccfd1d1426542519b0
'http://deb.debian.org/debian/pool/main/libe/libevent/libevent_2.1.8-stable.orig.tar.gz' libevent_2.1.8-stable.orig.tar.gz 1026485 SHA256:965cc5a8bb46ce4199a47e9b2c9e1cae3b137e8356ffdad6d94d3b9069b71dc2
'http://deb.debian.org/debian/pool/main/libe/libevent/libevent_2.1.8-stable-4.debian.tar.xz' libevent_2.1.8-stable-4.debian.tar.xz 12060 SHA256:c1334029455256b62e201ba333a8616a1709e0f3caada753d35376b88aca2d5e
```

Other potentially useful URLs:

- https://sources.debian.net/src/libevent/2.1.8-stable-4/ (for browsing the source)
- https://sources.debian.net/src/libevent/2.1.8-stable-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libevent/2.1.8-stable-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libffi=3.2.1-9`

Binary Packages:

- `libffi6:amd64=3.2.1-9`

Licenses: (parsed from: `/usr/share/doc/libffi6/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.2.1-9
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.2.1-9.dsc' libffi_3.2.1-9.dsc 2000 SHA256:28beaed76f2ce4c6a3ce1527eb07534c8ef4bf624a42c803fea045c416f8faa5
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.2.1.orig.tar.gz' libffi_3.2.1.orig.tar.gz 940837 SHA256:d06ebb8e1d9a22d19e38d63fdb83954253f39bedc5d46232a05645685722ca37
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.2.1-9.debian.tar.xz' libffi_3.2.1-9.debian.tar.xz 17148 SHA256:26e3cfd358733832da251778bc615a42b908d7779cf8b8d7fc2bdee4660bbbce
```

Other potentially useful URLs:

- https://sources.debian.net/src/libffi/3.2.1-9/ (for browsing the source)
- https://sources.debian.net/src/libffi/3.2.1-9/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libffi/3.2.1-9/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgcrypt20=1.8.4-5+deb10u1`

Binary Packages:

- `libgcrypt20:amd64=1.8.4-5+deb10u1`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.8.4-5+deb10u1
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.4-5%2bdeb10u1.dsc' libgcrypt20_1.8.4-5+deb10u1.dsc 2838 SHA256:b81da28242d5516fdd74449a48c67ab11f247070acfb11156d04e19a06cb0e63
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.4.orig.tar.bz2' libgcrypt20_1.8.4.orig.tar.bz2 2990108 SHA256:f638143a0672628fde0cad745e9b14deb85dffb175709cacc1f4fe24b93f2227
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.4.orig.tar.bz2.asc' libgcrypt20_1.8.4.orig.tar.bz2.asc 534 SHA256:97df94317ad273cffce4e78ad34ad0664819b44496f6528818a4298a691209a3
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.4-5%2bdeb10u1.debian.tar.xz' libgcrypt20_1.8.4-5+deb10u1.debian.tar.xz 30712 SHA256:5ab932db1f9c2c9e5d3e86266d020a492bbae845367982a0c7d5ec78abf55027
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgcrypt20/1.8.4-5+deb10u1/ (for browsing the source)
- https://sources.debian.net/src/libgcrypt20/1.8.4-5+deb10u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgcrypt20/1.8.4-5+deb10u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgpg-error=1.35-1`

Binary Packages:

- `libgpg-error-dev=1.35-1`
- `libgpg-error0:amd64=1.35-1`

Licenses: (parsed from: `/usr/share/doc/libgpg-error-dev/copyright`, `/usr/share/doc/libgpg-error0/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.35-1
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.35-1.dsc' libgpg-error_1.35-1.dsc 2155 SHA256:1d5e455ea385f522a0cf39510291945d42b95fafc8a1f05537cef3863c1d6c16
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.35.orig.tar.bz2' libgpg-error_1.35.orig.tar.bz2 918408 SHA256:cbd5ee62a8a8c88d48c158fff4fc9ead4132aacd1b4a56eb791f9f997d07e067
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.35.orig.tar.bz2.asc' libgpg-error_1.35.orig.tar.bz2.asc 534 SHA256:f6bfdc64a84245437c443f83faea85407d051d0487550515a4a279573589944d
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.35-1.debian.tar.xz' libgpg-error_1.35-1.debian.tar.xz 16056 SHA256:e600a34c09e6a3e8ec63d6145f4a11b16d92dc0ddeff1ba94cba08a8fecf0b66
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgpg-error/1.35-1/ (for browsing the source)
- https://sources.debian.net/src/libgpg-error/1.35-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgpg-error/1.35-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libidn2=2.0.5-1+deb10u1`

Binary Packages:

- `libidn2-0:amd64=2.0.5-1+deb10u1`
- `libidn2-dev:amd64=2.0.5-1+deb10u1`

Licenses: (parsed from: `/usr/share/doc/libidn2-0/copyright`, `/usr/share/doc/libidn2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-3`
- `LGPL-3+`
- `Unicode`

Source:

```console
$ apt-get source -qq --print-uris libidn2=2.0.5-1+deb10u1
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.0.5-1%2bdeb10u1.dsc' libidn2_2.0.5-1+deb10u1.dsc 2501 SHA256:6c4eac5dc85983e4cf37ee8deea5e23cfb9e1620f7a94a858726676c8858b498
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.0.5.orig.tar.gz' libidn2_2.0.5.orig.tar.gz 2091929 SHA256:53f69170886f1fa6fa5b332439c7a77a7d22626a82ef17e2c1224858bb4ca2b8
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.0.5-1%2bdeb10u1.debian.tar.xz' libidn2_2.0.5-1+deb10u1.debian.tar.xz 10286540 SHA256:37cfdc06e4e2f03e932af5bb309cbe94f8466f8b347aa34fa7c1e03a425556b2
```

Other potentially useful URLs:

- https://sources.debian.net/src/libidn2/2.0.5-1+deb10u1/ (for browsing the source)
- https://sources.debian.net/src/libidn2/2.0.5-1+deb10u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libidn2/2.0.5-1+deb10u1/ (for access to the source package after it no longer exists in the archive)

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
'http://deb.debian.org/debian/pool/main/libj/libjsoncpp/libjsoncpp_1.7.4-3.dsc' libjsoncpp_1.7.4-3.dsc 2137 SHA256:8f8d17cb824b288e140988e489b953f7ca084b094a06cc39867a4af1faf1f421
'http://deb.debian.org/debian/pool/main/libj/libjsoncpp/libjsoncpp_1.7.4.orig.tar.gz' libjsoncpp_1.7.4.orig.tar.gz 205752 SHA256:10dcd0677e80727e572a1e462193e51a5fde3e023b99e144b2ee1a469835f769
'http://deb.debian.org/debian/pool/main/libj/libjsoncpp/libjsoncpp_1.7.4-3.debian.tar.xz' libjsoncpp_1.7.4-3.debian.tar.xz 7828 SHA256:4d99ab057737a02512e75404315ee0b723823f6caed4401c25e46925c4c8857e
```

Other potentially useful URLs:

- https://sources.debian.net/src/libjsoncpp/1.7.4-3/ (for browsing the source)
- https://sources.debian.net/src/libjsoncpp/1.7.4-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libjsoncpp/1.7.4-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libksba=1.3.5-2+deb10u2`

Binary Packages:

- `libksba8:amd64=1.3.5-2+deb10u2`

Licenses: (parsed from: `/usr/share/doc/libksba8/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris libksba=1.3.5-2+deb10u2
'http://deb.debian.org/debian-security/pool/updates/main/libk/libksba/libksba_1.3.5-2%2bdeb10u2.dsc' libksba_1.3.5-2+deb10u2.dsc 2741 SHA256:5224c0002e08ea18a6ad8da4bfb064c5e887c0e7ea0fbef2e229f740efb0c021
'http://deb.debian.org/debian-security/pool/updates/main/libk/libksba/libksba_1.3.5.orig.tar.bz2' libksba_1.3.5.orig.tar.bz2 620649 SHA256:41444fd7a6ff73a79ad9728f985e71c9ba8cd3e5e53358e70d5f066d35c1a340
'http://deb.debian.org/debian-security/pool/updates/main/libk/libksba/libksba_1.3.5.orig.tar.bz2.asc' libksba_1.3.5.orig.tar.bz2.asc 287 SHA256:a954b03144ee882c838853da24fd7b6868b78df72a18c71079217d968698a76f
'http://deb.debian.org/debian-security/pool/updates/main/libk/libksba/libksba_1.3.5-2%2bdeb10u2.debian.tar.xz' libksba_1.3.5-2+deb10u2.debian.tar.xz 14948 SHA256:914841ff8d892ba2c7ed8ceb09d04edaafd17595ca859fe6ac8d6b5438c3410b
```

Other potentially useful URLs:

- https://sources.debian.net/src/libksba/1.3.5-2+deb10u2/ (for browsing the source)
- https://sources.debian.net/src/libksba/1.3.5-2+deb10u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libksba/1.3.5-2+deb10u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libmnl=1.0.4-2`

Binary Packages:

- `libmnl0:amd64=1.0.4-2`

Licenses: (parsed from: `/usr/share/doc/libmnl0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libmnl=1.0.4-2
'http://deb.debian.org/debian/pool/main/libm/libmnl/libmnl_1.0.4-2.dsc' libmnl_1.0.4-2.dsc 1994 SHA256:131106bb7eb4a94fa8e8c135f92c38068d0b42681f166eb159137f171c568630
'http://deb.debian.org/debian/pool/main/libm/libmnl/libmnl_1.0.4.orig.tar.bz2' libmnl_1.0.4.orig.tar.bz2 301270 SHA256:171f89699f286a5854b72b91d06e8f8e3683064c5901fb09d954a9ab6f551f81
'http://deb.debian.org/debian/pool/main/libm/libmnl/libmnl_1.0.4-2.debian.tar.xz' libmnl_1.0.4-2.debian.tar.xz 7512 SHA256:208d62777081ffe6d7dffde0d7370cefb03fe0a6a0486a1b50f6b7b8e9a5b068
```

Other potentially useful URLs:

- https://sources.debian.net/src/libmnl/1.0.4-2/ (for browsing the source)
- https://sources.debian.net/src/libmnl/1.0.4-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libmnl/1.0.4-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libpsl=0.20.2-2`

Binary Packages:

- `libpsl5:amd64=0.20.2-2`

Licenses: (parsed from: `/usr/share/doc/libpsl5/copyright`)

- `Chromium`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libpsl=0.20.2-2
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.20.2-2.dsc' libpsl_0.20.2-2.dsc 1637 SHA256:ae401852522d748f1222b91734bc5bd7c6db0de843dd675adc180f2a1884c94d
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.20.2.orig.tar.gz' libpsl_0.20.2.orig.tar.gz 8590430 SHA256:94d2b5e00e9aa761ae7efbaa67edc00d5298487ed9706eb4789e349012993c31
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.20.2-2.debian.tar.xz' libpsl_0.20.2-2.debian.tar.xz 9920 SHA256:1f008454fdb973964202020fb700d5028e001b7eaa4e77eeab8ebc99b749ea51
```

Other potentially useful URLs:

- https://sources.debian.net/src/libpsl/0.20.2-2/ (for browsing the source)
- https://sources.debian.net/src/libpsl/0.20.2-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpsl/0.20.2-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libseccomp=2.3.3-4`

Binary Packages:

- `libseccomp2:amd64=2.3.3-4`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.3.3-4
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.3.3-4.dsc' libseccomp_2.3.3-4.dsc 2500 SHA256:1443086c253ffacdad635aeb27a37b21958119833782290ae868b897eb9f6ab0
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.3.3.orig.tar.gz' libseccomp_2.3.3.orig.tar.gz 564546 SHA256:7fc28f4294cc72e61c529bedf97e705c3acf9c479a8f1a3028d4cd2ca9f3b155
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.3.3-4.debian.tar.xz' libseccomp_2.3.3-4.debian.tar.xz 12104 SHA256:deab2e069e145bf31d0a5569ad3adb2b94217623e02a25d4c9fa0d298073769e
```

Other potentially useful URLs:

- https://sources.debian.net/src/libseccomp/2.3.3-4/ (for browsing the source)
- https://sources.debian.net/src/libseccomp/2.3.3-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libseccomp/2.3.3-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libselinux=2.8-1`

Binary Packages:

- `libselinux1:amd64=2.8-1+b1`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=2.8-1
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.8-1.dsc' libselinux_2.8-1.dsc 2347 SHA256:0f08d64f4488312a8e8b7ffb12771cd385560752473a2e585449edc27223c129
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.8.orig.tar.gz' libselinux_2.8.orig.tar.gz 187759 SHA256:31db96ec7643ce10912b3c3f98506a08a9116dcfe151855fd349c3fda96187e1
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.8-1.debian.tar.xz' libselinux_2.8-1.debian.tar.xz 23052 SHA256:a0b150e870a3da7e1d7b0fec7c1a5ae6988a0985e545c69cfe8fe05363c5bf64
```

Other potentially useful URLs:

- https://sources.debian.net/src/libselinux/2.8-1/ (for browsing the source)
- https://sources.debian.net/src/libselinux/2.8-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libselinux/2.8-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsemanage=2.8-2`

Binary Packages:

- `libsemanage-common=2.8-2`
- `libsemanage1:amd64=2.8-2`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=2.8-2
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.8-2.dsc' libsemanage_2.8-2.dsc 2434 SHA256:f7cbe0594c098808a449804a357159bec4db54389df0319c2b5306b10ec2e707
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.8.orig.tar.gz' libsemanage_2.8.orig.tar.gz 154200 SHA256:1c0de8d2c51e5460926c21e371105c84a39087dfd8f8e9f0cc1d017e4cbea8e2
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.8-2.debian.tar.xz' libsemanage_2.8-2.debian.tar.xz 17756 SHA256:02315ffeb2b0a24b7c3bc8fa0c0e1e217e4a7b284bb88f64b0bf613e76d125e2
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsemanage/2.8-2/ (for browsing the source)
- https://sources.debian.net/src/libsemanage/2.8-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsemanage/2.8-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsepol=2.8-1`

Binary Packages:

- `libsepol1:amd64=2.8-1`

Licenses: (parsed from: `/usr/share/doc/libsepol1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=2.8-1
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.8-1.dsc' libsepol_2.8-1.dsc 1792 SHA256:37b0b79ab0f7533c194272809ccb3f3c5ff788536f66254c0d405e2e8b2b270e
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.8.orig.tar.gz' libsepol_2.8.orig.tar.gz 473384 SHA256:3ad6916a8352bef0bad49acc8037a5f5b48c56f94e4cb4e1959ca475fa9d24d6
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.8-1.debian.tar.xz' libsepol_2.8-1.debian.tar.xz 14076 SHA256:7b8d0b47396c96830754db2e5b679d294486aeffd93cfd21ac68202031374a00
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsepol/2.8-1/ (for browsing the source)
- https://sources.debian.net/src/libsepol/2.8-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsepol/2.8-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsodium=1.0.17-1`

Binary Packages:

- `libsodium23:amd64=1.0.17-1`

Licenses: (parsed from: `/usr/share/doc/libsodium23/copyright`)

- `BSD-2-clause`
- `CC0`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `MIT`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libsodium=1.0.17-1
'http://deb.debian.org/debian/pool/main/libs/libsodium/libsodium_1.0.17-1.dsc' libsodium_1.0.17-1.dsc 1913 SHA256:e2fb1951476b7b7177e7b2848b6d896a55ddffb11b0e5f82563d24944fc910ac
'http://deb.debian.org/debian/pool/main/libs/libsodium/libsodium_1.0.17.orig.tar.gz' libsodium_1.0.17.orig.tar.gz 1604410 SHA256:602e07029c780e154347fb95495b13ce48709ae705c6cff927ecb0c485b95672
'http://deb.debian.org/debian/pool/main/libs/libsodium/libsodium_1.0.17-1.debian.tar.xz' libsodium_1.0.17-1.debian.tar.xz 7256 SHA256:fdaf9fcb6b5a0801f1344d2350da2882d49273ed9c641e1dd747a66e5b318b6c
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsodium/1.0.17-1/ (for browsing the source)
- https://sources.debian.net/src/libsodium/1.0.17-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsodium/1.0.17-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libssh2=1.8.0-2.1`

Binary Packages:

- `libssh2-1:amd64=1.8.0-2.1`

Licenses: (parsed from: `/usr/share/doc/libssh2-1/copyright`)

- `BSD3`

Source:

```console
$ apt-get source -qq --print-uris libssh2=1.8.0-2.1
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.8.0-2.1.dsc' libssh2_1.8.0-2.1.dsc 1958 SHA256:33f070a4a32db5d3952457986d8f80c9cf874dd144d81f5bce062171564b35d9
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.8.0.orig.tar.gz' libssh2_1.8.0.orig.tar.gz 846989 SHA256:4382d33de790b28f862e53ed59ffbd65f3def7a06e8b6e9ca1b6f70453b4d5e0
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.8.0-2.1.debian.tar.xz' libssh2_1.8.0-2.1.debian.tar.xz 13988 SHA256:e3c34166cddaba7f2162132ef4f4bdc1490c499ee6610bde81f773adef43489e
```

Other potentially useful URLs:

- https://sources.debian.net/src/libssh2/1.8.0-2.1/ (for browsing the source)
- https://sources.debian.net/src/libssh2/1.8.0-2.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libssh2/1.8.0-2.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libtasn1-6=4.13-3+deb10u1`

Binary Packages:

- `libtasn1-6:amd64=4.13-3+deb10u1`
- `libtasn1-6-dev:amd64=4.13-3+deb10u1`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`, `/usr/share/doc/libtasn1-6-dev/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=4.13-3+deb10u1
'http://deb.debian.org/debian-security/pool/updates/main/libt/libtasn1-6/libtasn1-6_4.13-3%2bdeb10u1.dsc' libtasn1-6_4.13-3+deb10u1.dsc 2356 SHA256:933482c3acb7b1983edc0e47f644daa2f1c0738107e22ac02bd30880ca6db8f1
'http://deb.debian.org/debian-security/pool/updates/main/libt/libtasn1-6/libtasn1-6_4.13.orig.tar.gz' libtasn1-6_4.13.orig.tar.gz 1891703 SHA256:7e528e8c317ddd156230c4e31d082cd13e7ddeb7a54824be82632209550c8cca
'http://deb.debian.org/debian-security/pool/updates/main/libt/libtasn1-6/libtasn1-6_4.13-3%2bdeb10u1.debian.tar.xz' libtasn1-6_4.13-3+deb10u1.debian.tar.xz 64024 SHA256:73593231706c7e01f12b0ce60b8e45c7beafefd8598678537c1a067727d0ff40
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtasn1-6/4.13-3+deb10u1/ (for browsing the source)
- https://sources.debian.net/src/libtasn1-6/4.13-3+deb10u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtasn1-6/4.13-3+deb10u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libtool=2.4.6-9`

Binary Packages:

- `libltdl7:amd64=2.4.6-9`

Licenses: (parsed from: `/usr/share/doc/libltdl7/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libtool=2.4.6-9
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.4.6-9.dsc' libtool_2.4.6-9.dsc 2479 SHA256:3c5f93896e23939923db04ed4e756b7bd801dc562fab9202b304916cca8de7cf
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.4.6.orig.tar.xz' libtool_2.4.6.orig.tar.xz 973080 SHA256:7c87a8c2c8c0fc9cd5019e402bed4292462d00a718a7cd5f11218153bf28b26f
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.4.6.orig.tar.xz.asc' libtool_2.4.6.orig.tar.xz.asc 380 SHA256:ab68ebc45d60128a71fc36167cd29dcf3c3d6d639fd28663905ebaf3e2f43d6a
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.4.6-9.debian.tar.xz' libtool_2.4.6-9.debian.tar.xz 48724 SHA256:489885dceeb98fe168e0c1a3955c1d0c0d83e9aaff969188a3fd42116cb61b29
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtool/2.4.6-9/ (for browsing the source)
- https://sources.debian.net/src/libtool/2.4.6-9/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtool/2.4.6-9/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libunistring=0.9.10-1`

Binary Packages:

- `libunistring2:amd64=0.9.10-1`

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
$ apt-get source -qq --print-uris libunistring=0.9.10-1
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_0.9.10-1.dsc' libunistring_0.9.10-1.dsc 2206 SHA256:2118b96b1125399556bd95b8917cd559c4e9afe8d85861b01435f9635cefcdf2
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_0.9.10.orig.tar.xz' libunistring_0.9.10.orig.tar.xz 2051320 SHA256:eb8fb2c3e4b6e2d336608377050892b54c3c983b646c561836550863003c05d7
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_0.9.10.orig.tar.xz.asc' libunistring_0.9.10.orig.tar.xz.asc 1310 SHA256:e1606f691034fa21b00e08269622743547c16d21cca6c8a64156b4774a49e78e
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_0.9.10-1.debian.tar.xz' libunistring_0.9.10-1.debian.tar.xz 40328 SHA256:dd4d07437e6332003e702aa2f56911a21091ac6f10d0cdc17aaaaa8e29ad63b7
```

Other potentially useful URLs:

- https://sources.debian.net/src/libunistring/0.9.10-1/ (for browsing the source)
- https://sources.debian.net/src/libunistring/0.9.10-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libunistring/0.9.10-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libuv1=1.24.1-1+deb10u1`

Binary Packages:

- `libuv1:amd64=1.24.1-1+deb10u1`

Licenses: (parsed from: `/usr/share/doc/libuv1/copyright`)

- `BSD-1-clause`
- `BSD-2-clause`
- `BSD-3-clause`
- `Expat`
- `GPL-3`
- `GPL-3+`
- `ISC`

Source:

```console
$ apt-get source -qq --print-uris libuv1=1.24.1-1+deb10u1
'http://deb.debian.org/debian/pool/main/libu/libuv1/libuv1_1.24.1-1%2bdeb10u1.dsc' libuv1_1.24.1-1+deb10u1.dsc 2084 SHA256:03683643b506f3dec9c5e611a4d9faa43482616317d7d69fcaab4de669e2a137
'http://deb.debian.org/debian/pool/main/libu/libuv1/libuv1_1.24.1.orig.tar.gz' libuv1_1.24.1.orig.tar.gz 1204188 SHA256:55f4d03e5d600d8a753e8f300f4ce5a9a39d7f8386855627fcc952bd561f4b4e
'http://deb.debian.org/debian/pool/main/libu/libuv1/libuv1_1.24.1-1%2bdeb10u1.debian.tar.xz' libuv1_1.24.1-1+deb10u1.debian.tar.xz 17248 SHA256:e9812eda6552f94291863216c27dba5502504f197211e0c5285a9727483f4b27
```

Other potentially useful URLs:

- https://sources.debian.net/src/libuv1/1.24.1-1+deb10u1/ (for browsing the source)
- https://sources.debian.net/src/libuv1/1.24.1-1+deb10u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libuv1/1.24.1-1+deb10u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxml2=2.9.4+dfsg1-7+deb10u5`

Binary Packages:

- `libxml2:amd64=2.9.4+dfsg1-7+deb10u5`

Licenses: (parsed from: `/usr/share/doc/libxml2/copyright`)

- `ISC`
- `MIT-1`

Source:

```console
$ apt-get source -qq --print-uris libxml2=2.9.4+dfsg1-7+deb10u5
'http://deb.debian.org/debian-security/pool/updates/main/libx/libxml2/libxml2_2.9.4%2bdfsg1-7%2bdeb10u5.dsc' libxml2_2.9.4+dfsg1-7+deb10u5.dsc 3159 SHA256:6303e2cd44297bc4217a383ee9689d21405fe76a55e3ca1117777aa459a890e3
'http://deb.debian.org/debian-security/pool/updates/main/libx/libxml2/libxml2_2.9.4%2bdfsg1.orig.tar.xz' libxml2_2.9.4+dfsg1.orig.tar.xz 2446412 SHA256:a74ad55e346aa0b2b41903e66d21f8f3d2a736b3f41e32496376861ab484184e
'http://deb.debian.org/debian-security/pool/updates/main/libx/libxml2/libxml2_2.9.4%2bdfsg1-7%2bdeb10u5.debian.tar.xz' libxml2_2.9.4+dfsg1-7+deb10u5.debian.tar.xz 48120 SHA256:4fe41d5913d7c93847d34a575489eccc56cffdb927b2128e26f297885a8f7528
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxml2/2.9.4+dfsg1-7+deb10u5/ (for browsing the source)
- https://sources.debian.net/src/libxml2/2.9.4+dfsg1-7+deb10u5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxml2/2.9.4+dfsg1-7+deb10u5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libyaml=0.2.1-1`

Binary Packages:

- `libyaml-0-2:amd64=0.2.1-1`

Licenses: (parsed from: `/usr/share/doc/libyaml-0-2/copyright`)

- `Expat`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris libyaml=0.2.1-1
'http://deb.debian.org/debian/pool/main/liby/libyaml/libyaml_0.2.1-1.dsc' libyaml_0.2.1-1.dsc 1811 SHA256:916c8c0b5cdb7fce89fba618fa6b9ff9050d2647806b892dc8154668f8222361
'http://deb.debian.org/debian/pool/main/liby/libyaml/libyaml_0.2.1.orig.tar.gz' libyaml_0.2.1.orig.tar.gz 601443 SHA256:3ad5c55ec2cf72770e173d973d4120099ba0dec4d074097a488fa79de08304de
'http://deb.debian.org/debian/pool/main/liby/libyaml/libyaml_0.2.1-1.debian.tar.xz' libyaml_0.2.1-1.debian.tar.xz 4108 SHA256:4d6bedd7703ad9f43b9173fbd822f31b20d4c41f374257d6839b004f9742f152
```

Other potentially useful URLs:

- https://sources.debian.net/src/libyaml/0.2.1-1/ (for browsing the source)
- https://sources.debian.net/src/libyaml/0.2.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libyaml/0.2.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libzstd=1.3.8+dfsg-3+deb10u2`

Binary Packages:

- `libzstd1:amd64=1.3.8+dfsg-3+deb10u2`

Licenses: (parsed from: `/usr/share/doc/libzstd1/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris libzstd=1.3.8+dfsg-3+deb10u2
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.3.8%2bdfsg-3%2bdeb10u2.dsc' libzstd_1.3.8+dfsg-3+deb10u2.dsc 1947 SHA256:572fae1c7dc9bace3b9f7fcdeabf30dd1d00d0462e319ccec7b58b0adbf7dc85
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.3.8%2bdfsg.orig.tar.xz' libzstd_1.3.8+dfsg.orig.tar.xz 1299276 SHA256:03851f2c26ffbf1d43633df3f98966f3c62e698e91ef4dc90523915bc934e5f7
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.3.8%2bdfsg-3%2bdeb10u2.debian.tar.xz' libzstd_1.3.8+dfsg-3+deb10u2.debian.tar.xz 11648 SHA256:1f107f6cdc3bf46fb2aebf9c5c997ed2a125ac2fb1d28e939da857d5b061079e
```

Other potentially useful URLs:

- https://sources.debian.net/src/libzstd/1.3.8+dfsg-3+deb10u2/ (for browsing the source)
- https://sources.debian.net/src/libzstd/1.3.8+dfsg-3+deb10u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libzstd/1.3.8+dfsg-3+deb10u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `linux=4.19.269-1`

Binary Packages:

- `linux-libc-dev:amd64=4.19.269-1`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `CRYPTOGAMS`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `Unicode-data`
- `X11`
- `Xen-interface`

Source:

```console
$ apt-get source -qq --print-uris linux=4.19.269-1
'http://deb.debian.org/debian-security/pool/updates/main/l/linux/linux_4.19.269-1.dsc' linux_4.19.269-1.dsc 191175 SHA256:d0ae91ec3417756b99dad1f2b809a6761f2d9582ef4b65de157e615c153428c6
'http://deb.debian.org/debian-security/pool/updates/main/l/linux/linux_4.19.269.orig.tar.xz' linux_4.19.269.orig.tar.xz 107667056 SHA256:4eeb8209a8454d497de3b9d02d94f329394691d80482833c58985ecc6c53a2a8
'http://deb.debian.org/debian-security/pool/updates/main/l/linux/linux_4.19.269-1.debian.tar.xz' linux_4.19.269-1.debian.tar.xz 1569132 SHA256:03d425fbb17bba30403d1e25c0a7ed41a5d8de893f82cd569ba13a055ae5bee2
```

Other potentially useful URLs:

- https://sources.debian.net/src/linux/4.19.269-1/ (for browsing the source)
- https://sources.debian.net/src/linux/4.19.269-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/linux/4.19.269-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lksctp-tools=1.0.18+dfsg-1`

Binary Packages:

- `libsctp-dev:amd64=1.0.18+dfsg-1`
- `libsctp1:amd64=1.0.18+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/libsctp-dev/copyright`, `/usr/share/doc/libsctp1/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris lksctp-tools=1.0.18+dfsg-1
'http://deb.debian.org/debian/pool/main/l/lksctp-tools/lksctp-tools_1.0.18%2bdfsg-1.dsc' lksctp-tools_1.0.18+dfsg-1.dsc 2017 SHA256:648c5a77722638056592fa9ba7bc99359ab70fcdf9f37c53e05d8cda96624705
'http://deb.debian.org/debian/pool/main/l/lksctp-tools/lksctp-tools_1.0.18%2bdfsg.orig.tar.gz' lksctp-tools_1.0.18+dfsg.orig.tar.gz 194751 SHA256:ac0f4e499281e1d190b5cc9c7e31570de4b82fade1c2754a21b2c8e215cb3cf5
'http://deb.debian.org/debian/pool/main/l/lksctp-tools/lksctp-tools_1.0.18%2bdfsg-1.debian.tar.xz' lksctp-tools_1.0.18+dfsg-1.debian.tar.xz 10488 SHA256:826130ee1a35bec5a0f73160328e4429f3a64e57a865c6e9b2286d2cc8ff2d30
```

Other potentially useful URLs:

- https://sources.debian.net/src/lksctp-tools/1.0.18+dfsg-1/ (for browsing the source)
- https://sources.debian.net/src/lksctp-tools/1.0.18+dfsg-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lksctp-tools/1.0.18+dfsg-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `log4cxx=0.10.0-15`

Binary Packages:

- `liblog4cxx-dev:amd64=0.10.0-15`
- `liblog4cxx10v5:amd64=0.10.0-15`

Licenses: (parsed from: `/usr/share/doc/liblog4cxx-dev/copyright`, `/usr/share/doc/liblog4cxx10v5/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris log4cxx=0.10.0-15
'http://deb.debian.org/debian/pool/main/l/log4cxx/log4cxx_0.10.0-15.dsc' log4cxx_0.10.0-15.dsc 2101 SHA256:68773229acef3fc0e02dee65ae881489be6c26d7c62a34c07904b9bf933c0c69
'http://deb.debian.org/debian/pool/main/l/log4cxx/log4cxx_0.10.0.orig.tar.gz' log4cxx_0.10.0.orig.tar.gz 1667425 SHA256:0de0396220a9566a580166e66b39674cb40efd2176f52ad2c65486c99c920c8c
'http://deb.debian.org/debian/pool/main/l/log4cxx/log4cxx_0.10.0-15.debian.tar.xz' log4cxx_0.10.0-15.debian.tar.xz 15028 SHA256:22ebc3e80c3eab56b400c72ccd9916fa290a22efbe94ed4bb518d4ee4c027f62
```

Other potentially useful URLs:

- https://sources.debian.net/src/log4cxx/0.10.0-15/ (for browsing the source)
- https://sources.debian.net/src/log4cxx/0.10.0-15/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/log4cxx/0.10.0-15/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lsb=10.2019051400`

Binary Packages:

- `lsb-base=10.2019051400`
- `lsb-release=10.2019051400`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`, `/usr/share/doc/lsb-release/copyright`)

- `BSD-3-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lsb=10.2019051400
'http://deb.debian.org/debian/pool/main/l/lsb/lsb_10.2019051400.dsc' lsb_10.2019051400.dsc 1695 SHA256:79be4b76a50edb2e2f0fb0f2301d74aa36be7e4ed1aedc2cb92e0ca93a97e194
'http://deb.debian.org/debian/pool/main/l/lsb/lsb_10.2019051400.tar.xz' lsb_10.2019051400.tar.xz 42204 SHA256:e134c5780b70e3aac9d175e70bee4eb187e01bc02bb0d4e8a9b19dc52aabd557
```

Other potentially useful URLs:

- https://sources.debian.net/src/lsb/10.2019051400/ (for browsing the source)
- https://sources.debian.net/src/lsb/10.2019051400/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lsb/10.2019051400/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lz4=1.8.3-1+deb10u1`

Binary Packages:

- `liblz4-1:amd64=1.8.3-1+deb10u1`
- `liblz4-dev:amd64=1.8.3-1+deb10u1`

Licenses: (parsed from: `/usr/share/doc/liblz4-1/copyright`, `/usr/share/doc/liblz4-dev/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lz4=1.8.3-1+deb10u1
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_1.8.3-1%2bdeb10u1.dsc' lz4_1.8.3-1+deb10u1.dsc 2119 SHA256:22a32d93f1e1525efd33e80b8c8ffb9ad74b5baf441aa3534e875523d9b5eb93
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_1.8.3.orig.tar.gz' lz4_1.8.3.orig.tar.gz 327897 SHA256:33af5936ac06536805f9745e0b6d61da606a1f8b4cc5c04dd3cbaca3b9b4fc43
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_1.8.3-1%2bdeb10u1.debian.tar.xz' lz4_1.8.3-1+deb10u1.debian.tar.xz 12068 SHA256:6d9896c90c93f312af743b2c6ea1b62ba8defe8696acf7a009bed03b012db60a
```

Other potentially useful URLs:

- https://sources.debian.net/src/lz4/1.8.3-1+deb10u1/ (for browsing the source)
- https://sources.debian.net/src/lz4/1.8.3-1+deb10u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lz4/1.8.3-1+deb10u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mariadb-10.3=1:10.3.36-0+deb10u2`

Binary Packages:

- `libmariadb-dev=1:10.3.36-0+deb10u2`
- `libmariadb-dev-compat:amd64=1:10.3.36-0+deb10u2`
- `libmariadb3:amd64=1:10.3.36-0+deb10u2`
- `mariadb-common=1:10.3.36-0+deb10u2`

Licenses: (parsed from: `/usr/share/doc/libmariadb-dev/copyright`, `/usr/share/doc/libmariadb-dev-compat/copyright`, `/usr/share/doc/libmariadb3/copyright`, `/usr/share/doc/mariadb-common/copyright`)

- `Artistic`
- `BSD-2-clause`
- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `GPL-2+-with-bison-exception`
- `GPL-3`
- `GPL-3+`
- `GPL-3+-with-bison-exception`
- `GPL-verbatim`
- `LGPL`
- `LGPL-2`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MIT/X11`
- `SWsoft`
- `public-domain`
- `unlimited-free-doc`
- `zlib/libpng`

Source:

```console
$ apt-get source -qq --print-uris mariadb-10.3=1:10.3.36-0+deb10u2
'http://deb.debian.org/debian-security/pool/updates/main/m/mariadb-10.3/mariadb-10.3_10.3.36-0%2bdeb10u2.dsc' mariadb-10.3_10.3.36-0+deb10u2.dsc 4812 SHA256:c1d2adadc25876b48333249b7a6628501920ad310cffe10a7a1cf40f2b3855ed
'http://deb.debian.org/debian-security/pool/updates/main/m/mariadb-10.3/mariadb-10.3_10.3.36.orig.tar.gz' mariadb-10.3_10.3.36.orig.tar.gz 73944352 SHA256:003c497c387a28184acfb4fd30e4150ea1f0300004845fdcf48e5122e36c5dc6
'http://deb.debian.org/debian-security/pool/updates/main/m/mariadb-10.3/mariadb-10.3_10.3.36.orig.tar.gz.asc' mariadb-10.3_10.3.36.orig.tar.gz.asc 195 SHA256:fd6bcd9265d73201b19384d16d795ff709f0cad305e281b3c4f7e04541541f4a
'http://deb.debian.org/debian-security/pool/updates/main/m/mariadb-10.3/mariadb-10.3_10.3.36-0%2bdeb10u2.debian.tar.xz' mariadb-10.3_10.3.36-0+deb10u2.debian.tar.xz 219712 SHA256:dd00709d450b9e64b9bfbdff2baf3f4b2e8cfe935de89ca4341fdaaf9e2721b1
```

Other potentially useful URLs:

- https://sources.debian.net/src/mariadb-10.3/1:10.3.36-0+deb10u2/ (for browsing the source)
- https://sources.debian.net/src/mariadb-10.3/1:10.3.36-0+deb10u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mariadb-10.3/1:10.3.36-0+deb10u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mawk=1.3.3-17`

Binary Packages:

- `mawk=1.3.3-17+b3`

Licenses: (parsed from: `/usr/share/doc/mawk/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris mawk=1.3.3-17
'http://deb.debian.org/debian/pool/main/m/mawk/mawk_1.3.3-17.dsc' mawk_1.3.3-17.dsc 1801 SHA256:f98ce6e153e8ac1faf8165bbf77447a4279313f1c18f6bfeec0c5ce35e4b9c03
'http://deb.debian.org/debian/pool/main/m/mawk/mawk_1.3.3.orig.tar.gz' mawk_1.3.3.orig.tar.gz 209942 SHA256:32649c46063d4ef0777a12ae6e9a26bcc920833d54e1abca7edb8d37481e7485
'http://deb.debian.org/debian/pool/main/m/mawk/mawk_1.3.3-17.diff.gz' mawk_1.3.3-17.diff.gz 63506 SHA256:13cb66b6eb5ee654d5626621d5ef476ede6b0bebac18ce765516de810e58490c
```

Other potentially useful URLs:

- https://sources.debian.net/src/mawk/1.3.3-17/ (for browsing the source)
- https://sources.debian.net/src/mawk/1.3.3-17/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mawk/1.3.3-17/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mime-support=3.62`

Binary Packages:

- `mime-support=3.62`

Licenses: (parsed from: `/usr/share/doc/mime-support/copyright`)

- `Bellcore`
- `ad-hoc`

Source:

```console
$ apt-get source -qq --print-uris mime-support=3.62
'http://deb.debian.org/debian/pool/main/m/mime-support/mime-support_3.62.dsc' mime-support_3.62.dsc 1576 SHA256:62195cb653122db4571f97a32aaaa93e558dacf15563b061e8e1f24f6ce1b52b
'http://deb.debian.org/debian/pool/main/m/mime-support/mime-support_3.62.tar.gz' mime-support_3.62.tar.gz 37130 SHA256:54e0a03e0cd63c7c9fe68a18ead0a2143fd3c327604215f989d85484d0409f4a
```

Other potentially useful URLs:

- https://sources.debian.net/src/mime-support/3.62/ (for browsing the source)
- https://sources.debian.net/src/mime-support/3.62/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mime-support/3.62/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mpdecimal=2.4.2-2`

Binary Packages:

- `libmpdec2:amd64=2.4.2-2`

Licenses: (parsed from: `/usr/share/doc/libmpdec2/copyright`)

- `BSD`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mpdecimal=2.4.2-2
'http://deb.debian.org/debian/pool/main/m/mpdecimal/mpdecimal_2.4.2-2.dsc' mpdecimal_2.4.2-2.dsc 1932 SHA256:716e61fc8315a22804adf8403e4d332c1883235b5c3801b6769e6040dc962fe3
'http://deb.debian.org/debian/pool/main/m/mpdecimal/mpdecimal_2.4.2.orig.tar.gz' mpdecimal_2.4.2.orig.tar.gz 2271529 SHA256:83c628b90f009470981cf084c5418329c88b19835d8af3691b930afccb7d79c7
'http://deb.debian.org/debian/pool/main/m/mpdecimal/mpdecimal_2.4.2-2.debian.tar.xz' mpdecimal_2.4.2-2.debian.tar.xz 5256 SHA256:159113f11169afc675a431840792e1ed8c2d00438bf3e1c5a3eb2c17d9e8da3d
```

Other potentially useful URLs:

- https://sources.debian.net/src/mpdecimal/2.4.2-2/ (for browsing the source)
- https://sources.debian.net/src/mpdecimal/2.4.2-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mpdecimal/2.4.2-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mysql-defaults=1.0.5`

Binary Packages:

- `default-libmysqlclient-dev:amd64=1.0.5`
- `mysql-common=5.8+1.0.5`

Licenses: (parsed from: `/usr/share/doc/default-libmysqlclient-dev/copyright`, `/usr/share/doc/mysql-common/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mysql-defaults=1.0.5
'http://deb.debian.org/debian/pool/main/m/mysql-defaults/mysql-defaults_1.0.5.dsc' mysql-defaults_1.0.5.dsc 2235 SHA256:b6aaf2e08ed89079594f909ce2ec52e2c1232748c6f8e0691796bbb0764e4ef9
'http://deb.debian.org/debian/pool/main/m/mysql-defaults/mysql-defaults_1.0.5.tar.xz' mysql-defaults_1.0.5.tar.xz 7100 SHA256:71dd3115beba9facd1a9d75ae3178f6f9fa72c01d6be81c08472300e6c29fa2e
```

Other potentially useful URLs:

- https://sources.debian.net/src/mysql-defaults/1.0.5/ (for browsing the source)
- https://sources.debian.net/src/mysql-defaults/1.0.5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mysql-defaults/1.0.5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ncurses=6.1+20181013-2+deb10u3`

Binary Packages:

- `libncurses6:amd64=6.1+20181013-2+deb10u3`
- `libncursesw6:amd64=6.1+20181013-2+deb10u3`
- `libtinfo6:amd64=6.1+20181013-2+deb10u3`
- `ncurses-base=6.1+20181013-2+deb10u3`
- `ncurses-bin=6.1+20181013-2+deb10u3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris ncurses=6.1+20181013-2+deb10u3
'http://deb.debian.org/debian-security/pool/updates/main/n/ncurses/ncurses_6.1%2b20181013-2%2bdeb10u3.dsc' ncurses_6.1+20181013-2+deb10u3.dsc 4338 SHA256:4d24cabc68bafb9750d6a4dd6a3916c0f1e7656923250fbf02ae25aa7aef3466
'http://deb.debian.org/debian-security/pool/updates/main/n/ncurses/ncurses_6.1%2b20181013.orig.tar.gz' ncurses_6.1+20181013.orig.tar.gz 3411288 SHA256:aeb1d098ee90b39a763b57b00da19ff5bbb573dea077f98fbd85d59444bb3b59
'http://deb.debian.org/debian-security/pool/updates/main/n/ncurses/ncurses_6.1%2b20181013.orig.tar.gz.asc' ncurses_6.1+20181013.orig.tar.gz.asc 251 SHA256:865931406e519909a4d0ab87b14d0c6d3ebccb7b3e0dac5c6095f0dfce5e14cf
'http://deb.debian.org/debian-security/pool/updates/main/n/ncurses/ncurses_6.1%2b20181013-2%2bdeb10u3.debian.tar.xz' ncurses_6.1+20181013-2+deb10u3.debian.tar.xz 62512 SHA256:a71085f2aef402719769bbf5ce99677005be73324c06f54900fb3cf6bb2bf2c5
```

Other potentially useful URLs:

- https://sources.debian.net/src/ncurses/6.1+20181013-2+deb10u3/ (for browsing the source)
- https://sources.debian.net/src/ncurses/6.1+20181013-2+deb10u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ncurses/6.1+20181013-2+deb10u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `netifaces=0.10.4-1`

Binary Packages:

- `python3-netifaces=0.10.4-1+b1`

Licenses: (parsed from: `/usr/share/doc/python3-netifaces/copyright`)

- `MIT-style`

Source:

```console
$ apt-get source -qq --print-uris netifaces=0.10.4-1
'http://deb.debian.org/debian/pool/main/n/netifaces/netifaces_0.10.4-1.dsc' netifaces_0.10.4-1.dsc 2346 SHA256:291b9dc03c90c51c29860cfef75485e5a092161a82ac985a21c0a789c96c7d36
'http://deb.debian.org/debian/pool/main/n/netifaces/netifaces_0.10.4.orig.tar.gz' netifaces_0.10.4.orig.tar.gz 22969 SHA256:9656a169cb83da34d732b0eb72b39373d48774aee009a3d1272b7ea2ce109cde
'http://deb.debian.org/debian/pool/main/n/netifaces/netifaces_0.10.4-1.debian.tar.xz' netifaces_0.10.4-1.debian.tar.xz 8304 SHA256:60d1c375dd84455f339724edd98ce31f5ca65687a950bded2bb32604cf1b64de
```

Other potentially useful URLs:

- https://sources.debian.net/src/netifaces/0.10.4-1/ (for browsing the source)
- https://sources.debian.net/src/netifaces/0.10.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/netifaces/0.10.4-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nettle=3.4.1-1+deb10u1`

Binary Packages:

- `libhogweed4:amd64=3.4.1-1+deb10u1`
- `libnettle6:amd64=3.4.1-1+deb10u1`
- `nettle-dev:amd64=3.4.1-1+deb10u1`

Licenses: (parsed from: `/usr/share/doc/libhogweed4/copyright`, `/usr/share/doc/libnettle6/copyright`, `/usr/share/doc/nettle-dev/copyright`)

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
$ apt-get source -qq --print-uris nettle=3.4.1-1+deb10u1
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.4.1-1%2bdeb10u1.dsc' nettle_3.4.1-1+deb10u1.dsc 2290 SHA256:b38c9a78ae0732a94d06dbc811479f6ee8357bd47604dfa92f0d0801b148eebc
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.4.1.orig.tar.gz' nettle_3.4.1.orig.tar.gz 1947053 SHA256:f941cf1535cd5d1819be5ccae5babef01f6db611f9b5a777bae9c7604b8a92ad
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.4.1.orig.tar.gz.asc' nettle_3.4.1.orig.tar.gz.asc 2476 SHA256:07b265366b46bc67950da3f34687235eaa85c45b326e42bb7c9b58830b651d28
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.4.1-1%2bdeb10u1.debian.tar.xz' nettle_3.4.1-1+deb10u1.debian.tar.xz 26508 SHA256:b847de5ccd50b9bc0aa56dd7fe750c224683174676dde69c86f62bece52ff4ba
```

Other potentially useful URLs:

- https://sources.debian.net/src/nettle/3.4.1-1+deb10u1/ (for browsing the source)
- https://sources.debian.net/src/nettle/3.4.1-1+deb10u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nettle/3.4.1-1+deb10u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nghttp2=1.36.0-2+deb10u1`

Binary Packages:

- `libnghttp2-14:amd64=1.36.0-2+deb10u1`

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
$ apt-get source -qq --print-uris nghttp2=1.36.0-2+deb10u1
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.36.0-2%2bdeb10u1.dsc' nghttp2_1.36.0-2+deb10u1.dsc 2601 SHA256:3712e7cbb20d1b43f8f7a9c5408b79bd80e4c3c0cb2d4ad68062d367b1715fd6
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.36.0.orig.tar.bz2' nghttp2_1.36.0.orig.tar.bz2 1919021 SHA256:16a734d7414062911e23989e243ca76e7722cb3c60273723e3e3ae4c21e71ceb
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.36.0-2%2bdeb10u1.debian.tar.xz' nghttp2_1.36.0-2+deb10u1.debian.tar.xz 13132 SHA256:f4fb4dd2385d158efba2ec3d3ce1b13c24ecb05c75f353f370f7cb0f080c7537
```

Other potentially useful URLs:

- https://sources.debian.net/src/nghttp2/1.36.0-2+deb10u1/ (for browsing the source)
- https://sources.debian.net/src/nghttp2/1.36.0-2+deb10u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nghttp2/1.36.0-2+deb10u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nose=1.3.7-4`

Binary Packages:

- `python3-nose=1.3.7-4`

Licenses: (parsed from: `/usr/share/doc/python3-nose/copyright`)

- `Expat`
- `LGPL`
- `LGPL-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris nose=1.3.7-4
'http://deb.debian.org/debian/pool/main/n/nose/nose_1.3.7-4.dsc' nose_1.3.7-4.dsc 2309 SHA256:7ae567b43ab48cde5a4de4e1ab0d250bd9861d8bda934d436832a0b3024d7029
'http://deb.debian.org/debian/pool/main/n/nose/nose_1.3.7.orig.tar.gz' nose_1.3.7.orig.tar.gz 280488 SHA256:f1bffef9cbc82628f6e7d7b40d7e255aefaa1adb6a1b1d26c69a8b79e6208a98
'http://deb.debian.org/debian/pool/main/n/nose/nose_1.3.7-4.debian.tar.xz' nose_1.3.7-4.debian.tar.xz 11944 SHA256:0bffd5392dea5ca95680599e021213f8aee8c3ba3c0d77ae42b622bd7c8df693
```

Other potentially useful URLs:

- https://sources.debian.net/src/nose/1.3.7-4/ (for browsing the source)
- https://sources.debian.net/src/nose/1.3.7-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nose/1.3.7-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `npth=1.6-1`

Binary Packages:

- `libnpth0:amd64=1.6-1`

Licenses: (parsed from: `/usr/share/doc/libnpth0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris npth=1.6-1
'http://deb.debian.org/debian/pool/main/n/npth/npth_1.6-1.dsc' npth_1.6-1.dsc 1925 SHA256:2c327ce494f702482e79ed620445cba303c4449dd0768fecee3ee7d5ade2544a
'http://deb.debian.org/debian/pool/main/n/npth/npth_1.6.orig.tar.bz2' npth_1.6.orig.tar.bz2 300486 SHA256:1393abd9adcf0762d34798dc34fdcf4d0d22a8410721e76f1e3afcd1daa4e2d1
'http://deb.debian.org/debian/pool/main/n/npth/npth_1.6-1.debian.tar.xz' npth_1.6-1.debian.tar.xz 10532 SHA256:d312d4a3cf1d082e2f2cf3ea752c41d34f7e120f77a941c6c1680e6093834353
```

Other potentially useful URLs:

- https://sources.debian.net/src/npth/1.6-1/ (for browsing the source)
- https://sources.debian.net/src/npth/1.6-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/npth/1.6-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openldap=2.4.47+dfsg-3+deb10u7`

Binary Packages:

- `libldap-2.4-2:amd64=2.4.47+dfsg-3+deb10u7`
- `libldap-common=2.4.47+dfsg-3+deb10u7`
- `libldap2-dev:amd64=2.4.47+dfsg-3+deb10u7`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openldap=2.4.47+dfsg-3+deb10u7
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.47%2bdfsg-3%2bdeb10u7.dsc' openldap_2.4.47+dfsg-3+deb10u7.dsc 3022 SHA256:f933987a3a26983fd52eeb83fc4975102af9d211412efec53bd5c5919028eba0
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.47%2bdfsg.orig.tar.gz' openldap_2.4.47+dfsg.orig.tar.gz 4872293 SHA256:8f1ac7a4be7dd8ef158361efbfe16509756d3d9b396f5f378c3cf5c727807651
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.47%2bdfsg-3%2bdeb10u7.debian.tar.xz' openldap_2.4.47+dfsg-3+deb10u7.debian.tar.xz 175312 SHA256:445a6c0d9e52193c35c456dbf79318eea9f09b230c6eade3be531633d0b93e9d
```

Other potentially useful URLs:

- https://sources.debian.net/src/openldap/2.4.47+dfsg-3+deb10u7/ (for browsing the source)
- https://sources.debian.net/src/openldap/2.4.47+dfsg-3+deb10u7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openldap/2.4.47+dfsg-3+deb10u7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openssl=1.1.1n-0+deb10u3`

Binary Packages:

- `libssl-dev:amd64=1.1.1n-0+deb10u3`
- `libssl1.1:amd64=1.1.1n-0+deb10u3`
- `openssl=1.1.1n-0+deb10u3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl=1.1.1n-0+deb10u3
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.1n-0%2bdeb10u3.dsc' openssl_1.1.1n-0+deb10u3.dsc 2649 SHA256:190bf508730e7c95342e726953f0551affd6dfe98a011f278b1cc19c9cfd0824
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.1n.orig.tar.gz' openssl_1.1.1n.orig.tar.gz 9850712 SHA256:40dceb51a4f6a5275bde0e6bf20ef4b91bfc32ed57c0552e2e8e15463372b17a
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.1n.orig.tar.gz.asc' openssl_1.1.1n.orig.tar.gz.asc 488 SHA256:e0e89e9467102880ee6f2ee8c1413933eb1268969afb97b9bec61e2190a62fd0
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.1n-0%2bdeb10u3.debian.tar.xz' openssl_1.1.1n-0+deb10u3.debian.tar.xz 118660 SHA256:629424b95612e36d45260bb0e3e4bb880cec355ae893ccd2294f642f82cca2a9
```

Other potentially useful URLs:

- https://sources.debian.net/src/openssl/1.1.1n-0+deb10u3/ (for browsing the source)
- https://sources.debian.net/src/openssl/1.1.1n-0+deb10u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openssl/1.1.1n-0+deb10u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `p11-kit=0.23.15-2+deb10u1`

Binary Packages:

- `libp11-kit-dev:amd64=0.23.15-2+deb10u1`
- `libp11-kit0:amd64=0.23.15-2+deb10u1`

Licenses: (parsed from: `/usr/share/doc/libp11-kit-dev/copyright`, `/usr/share/doc/libp11-kit0/copyright`)

- `BSD-3-Clause`
- `ISC`
- `ISC+IBM`
- `permissive-like-automake-output`
- `same-as-rest-of-p11kit`

Source:

```console
$ apt-get source -qq --print-uris p11-kit=0.23.15-2+deb10u1
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.15-2%2bdeb10u1.dsc' p11-kit_0.23.15-2+deb10u1.dsc 2607 SHA256:d0c7215905c92f521b7b5a4dd98e2ad85abd40a05430dcf2a17dcc3e21f96389
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.15.orig.tar.gz' p11-kit_0.23.15.orig.tar.gz 1276733 SHA256:f7c139a0c77a1f0012619003e542060ba8f94799a0ef463026db390680e4d798
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.15.orig.tar.gz.asc' p11-kit_0.23.15.orig.tar.gz.asc 879 SHA256:e28bd948178e2f91e18fbb4387d7b6532aa44eb92ac4c67a6485bc9cd9c79db8
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.15-2%2bdeb10u1.debian.tar.xz' p11-kit_0.23.15-2+deb10u1.debian.tar.xz 25496 SHA256:9f90af175ef68fdb3aca71f22074fa1860f88a820e29e1290ee51d606c53b572
```

Other potentially useful URLs:

- https://sources.debian.net/src/p11-kit/0.23.15-2+deb10u1/ (for browsing the source)
- https://sources.debian.net/src/p11-kit/0.23.15-2+deb10u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/p11-kit/0.23.15-2+deb10u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pam=1.3.1-5`

Binary Packages:

- `libpam-modules:amd64=1.3.1-5`
- `libpam-modules-bin=1.3.1-5`
- `libpam-runtime=1.3.1-5`
- `libpam0g:amd64=1.3.1-5`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pam=1.3.1-5
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.3.1-5.dsc' pam_1.3.1-5.dsc 2648 SHA256:6be33a9db415ff3e474a10d1a0c41fca3dbe90ae8c9ddd9a4a997892b11d67ab
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.3.1.orig.tar.xz' pam_1.3.1.orig.tar.xz 912332 SHA256:eff47a4ecd833fbf18de9686632a70ee8d0794b79aecb217ebd0ce11db4cd0db
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.3.1-5.debian.tar.xz' pam_1.3.1-5.debian.tar.xz 114384 SHA256:be2c2b27efd6bea02f9d102d7d8c58374557beb7245b2a9d75ecc829e9449f62
```

Other potentially useful URLs:

- https://sources.debian.net/src/pam/1.3.1-5/ (for browsing the source)
- https://sources.debian.net/src/pam/1.3.1-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pam/1.3.1-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `paramiko=2.4.2-0.1+deb10u1`

Binary Packages:

- `python3-paramiko=2.4.2-0.1+deb10u1`

Licenses: (parsed from: `/usr/share/doc/python3-paramiko/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris paramiko=2.4.2-0.1+deb10u1
'http://deb.debian.org/debian-security/pool/updates/main/p/paramiko/paramiko_2.4.2-0.1%2bdeb10u1.dsc' paramiko_2.4.2-0.1+deb10u1.dsc 2554 SHA256:d4f800d651dcfd7bdb7dfff81f02c915245bbeb0dbd7072119c644c8efcb56ea
'http://deb.debian.org/debian-security/pool/updates/main/p/paramiko/paramiko_2.4.2.orig.tar.gz' paramiko_2.4.2.orig.tar.gz 1207299 SHA256:a8975a7df3560c9f1e2b43dc54ebd40fd00a7017392ca5445ce7df409f900fcb
'http://deb.debian.org/debian-security/pool/updates/main/p/paramiko/paramiko_2.4.2-0.1%2bdeb10u1.debian.tar.xz' paramiko_2.4.2-0.1+deb10u1.debian.tar.xz 9436 SHA256:99c90f0eb89f9cdfe72302f442431f96cbcfdc3bc97917ea9d69b7029488230a
```

Other potentially useful URLs:

- https://sources.debian.net/src/paramiko/2.4.2-0.1+deb10u1/ (for browsing the source)
- https://sources.debian.net/src/paramiko/2.4.2-0.1+deb10u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/paramiko/2.4.2-0.1+deb10u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pcre3=2:8.39-12`

Binary Packages:

- `libpcre16-3:amd64=2:8.39-12`
- `libpcre3:amd64=2:8.39-12`
- `libpcre3-dev:amd64=2:8.39-12`
- `libpcre32-3:amd64=2:8.39-12`
- `libpcrecpp0v5:amd64=2:8.39-12`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre3=2:8.39-12
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39-12.dsc' pcre3_8.39-12.dsc 2226 SHA256:7660921533f286d211bc129318327041ceb80d3d21e91c1ae7c10f284342c5e0
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39.orig.tar.bz2' pcre3_8.39.orig.tar.bz2 1560758 SHA256:b858099f82483031ee02092711689e7245586ada49e534a06e678b8ea9549e8b
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39-12.debian.tar.gz' pcre3_8.39-12.debian.tar.gz 26509 SHA256:ee193ddee446f0bdb966fca5987ef871da7a528a473304285619988102371c4c
```

Other potentially useful URLs:

- https://sources.debian.net/src/pcre3/2:8.39-12/ (for browsing the source)
- https://sources.debian.net/src/pcre3/2:8.39-12/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pcre3/2:8.39-12/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `perl=5.28.1-6+deb10u1`

Binary Packages:

- `libperl5.28:amd64=5.28.1-6+deb10u1`
- `perl=5.28.1-6+deb10u1`
- `perl-base=5.28.1-6+deb10u1`
- `perl-modules-5.28=5.28.1-6+deb10u1`

Licenses: (parsed from: `/usr/share/doc/libperl5.28/copyright`, `/usr/share/doc/perl/copyright`, `/usr/share/doc/perl-base/copyright`, `/usr/share/doc/perl-modules-5.28/copyright`)

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
$ apt-get source -qq --print-uris perl=5.28.1-6+deb10u1
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.28.1-6%2bdeb10u1.dsc' perl_5.28.1-6+deb10u1.dsc 2863 SHA256:a680d97001398640c249fc6bae6124fe59eb465b044f03fb4148b22152895785
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.28.1.orig-regen-configure.tar.xz' perl_5.28.1.orig-regen-configure.tar.xz 411944 SHA256:5873b81af4514d3910ab1a8267b15ff8c0e2100dbae4edfd10b65ef72cd31ef8
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.28.1.orig.tar.xz' perl_5.28.1.orig.tar.xz 12372080 SHA256:fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.28.1-6%2bdeb10u1.debian.tar.xz' perl_5.28.1-6+deb10u1.debian.tar.xz 185004 SHA256:e531c2d8c85b28b34c2122175a8e8f6cfe56b8a0708972fc4beae9876549d815
```

Other potentially useful URLs:

- https://sources.debian.net/src/perl/5.28.1-6+deb10u1/ (for browsing the source)
- https://sources.debian.net/src/perl/5.28.1-6+deb10u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/perl/5.28.1-6+deb10u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pinentry=1.1.0-2`

Binary Packages:

- `pinentry-curses=1.1.0-2`

Licenses: (parsed from: `/usr/share/doc/pinentry-curses/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-3`
- `LGPL-3+`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris pinentry=1.1.0-2
'http://deb.debian.org/debian/pool/main/p/pinentry/pinentry_1.1.0-2.dsc' pinentry_1.1.0-2.dsc 2055 SHA256:a3f157d367217eb91581d9fc53f23205794c7572894497a04d4d91eb6d5aff06
'http://deb.debian.org/debian/pool/main/p/pinentry/pinentry_1.1.0.orig.tar.bz2' pinentry_1.1.0.orig.tar.bz2 467702 SHA256:68076686fa724a290ea49cdf0d1c0c1500907d1b759a3bcbfbec0293e8f56570
'http://deb.debian.org/debian/pool/main/p/pinentry/pinentry_1.1.0-2.debian.tar.xz' pinentry_1.1.0-2.debian.tar.xz 16480 SHA256:b09437607c63c620bb581fe14080e897b5fb8210d08611b18b751efead7776da
```

Other potentially useful URLs:

- https://sources.debian.net/src/pinentry/1.1.0-2/ (for browsing the source)
- https://sources.debian.net/src/pinentry/1.1.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pinentry/1.1.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pkg-config=0.29-6`

Binary Packages:

- `pkg-config=0.29-6`

Licenses: (parsed from: `/usr/share/doc/pkg-config/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pkg-config=0.29-6
'http://deb.debian.org/debian/pool/main/p/pkg-config/pkg-config_0.29-6.dsc' pkg-config_0.29-6.dsc 1757 SHA256:a5f1a8f976f3d8ad579341ba73514eb3af9dbc6bad8d2b5828699ac24196624f
'http://deb.debian.org/debian/pool/main/p/pkg-config/pkg-config_0.29.orig.tar.gz' pkg-config_0.29.orig.tar.gz 1973875 SHA256:c8507705d2a10c67f385d66ca2aae31e81770cc0734b4191eb8c489e864a006b
'http://deb.debian.org/debian/pool/main/p/pkg-config/pkg-config_0.29-6.diff.gz' pkg-config_0.29-6.diff.gz 8145 SHA256:c06146d878fb7faa4ac3edb5e45188b184cc650a752384d5c1053f41edf590bc
```

Other potentially useful URLs:

- https://sources.debian.net/src/pkg-config/0.29-6/ (for browsing the source)
- https://sources.debian.net/src/pkg-config/0.29-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pkg-config/0.29-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `poco=1.9.0-5`

Binary Packages:

- `libpoco-dev=1.9.0-5+b1`
- `libpococrypto60=1.9.0-5+b1`
- `libpocodata60=1.9.0-5+b1`
- `libpocodatamysql60=1.9.0-5+b1`
- `libpocodataodbc60=1.9.0-5+b1`
- `libpocodatasqlite60=1.9.0-5+b1`
- `libpocoencodings60=1.9.0-5+b1`
- `libpocofoundation60=1.9.0-5+b1`
- `libpocojson60=1.9.0-5+b1`
- `libpocomongodb60=1.9.0-5+b1`
- `libpoconet60=1.9.0-5+b1`
- `libpoconetssl60=1.9.0-5+b1`
- `libpocoredis60=1.9.0-5+b1`
- `libpocoutil60=1.9.0-5+b1`
- `libpocoxml60=1.9.0-5+b1`
- `libpocozip60=1.9.0-5+b1`

Licenses: (parsed from: `/usr/share/doc/libpoco-dev/copyright`, `/usr/share/doc/libpococrypto60/copyright`, `/usr/share/doc/libpocodata60/copyright`, `/usr/share/doc/libpocodatamysql60/copyright`, `/usr/share/doc/libpocodataodbc60/copyright`, `/usr/share/doc/libpocodatasqlite60/copyright`, `/usr/share/doc/libpocoencodings60/copyright`, `/usr/share/doc/libpocofoundation60/copyright`, `/usr/share/doc/libpocojson60/copyright`, `/usr/share/doc/libpocomongodb60/copyright`, `/usr/share/doc/libpoconet60/copyright`, `/usr/share/doc/libpoconetssl60/copyright`, `/usr/share/doc/libpocoredis60/copyright`, `/usr/share/doc/libpocoutil60/copyright`, `/usr/share/doc/libpocoxml60/copyright`, `/usr/share/doc/libpocozip60/copyright`)

- `BSD-3-clause`
- `BSL-1.0`
- `Expat`
- `MIT`
- `RSA-MD`
- `Zlib`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris poco=1.9.0-5
'http://deb.debian.org/debian/pool/main/p/poco/poco_1.9.0-5.dsc' poco_1.9.0-5.dsc 2992 SHA256:e9632a6f778cfc5d05ec30b56bd5e8ac1d117514b25be0e9c8b9c42dd37e0723
'http://deb.debian.org/debian/pool/main/p/poco/poco_1.9.0.orig.tar.bz2' poco_1.9.0.orig.tar.bz2 5155122 SHA256:b6e33898588e74337efec4e8d8b9b277bb653b08318a79215f9aa4a3ff1ea9fd
'http://deb.debian.org/debian/pool/main/p/poco/poco_1.9.0-5.debian.tar.xz' poco_1.9.0-5.debian.tar.xz 16348 SHA256:23ba2aa624ef27a4acef1afcb815fc7c504a8690ff2cf97c3f80acb32b65c7e5
```

Other potentially useful URLs:

- https://sources.debian.net/src/poco/1.9.0-5/ (for browsing the source)
- https://sources.debian.net/src/poco/1.9.0-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/poco/1.9.0-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `procps=2:3.3.15-2`

Binary Packages:

- `libprocps7:amd64=2:3.3.15-2`
- `procps=2:3.3.15-2`

Licenses: (parsed from: `/usr/share/doc/libprocps7/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris procps=2:3.3.15-2
'http://deb.debian.org/debian/pool/main/p/procps/procps_3.3.15-2.dsc' procps_3.3.15-2.dsc 2104 SHA256:c7f695ddba2fdf0c3b9de5c38de22713a7046dd9e4a141d59155f4dd62008b32
'http://deb.debian.org/debian/pool/main/p/procps/procps_3.3.15.orig.tar.xz' procps_3.3.15.orig.tar.xz 903372 SHA256:82e8aa55b65eac116eee05f00d2a884a6374760d57100edd429d6e9b4953458d
'http://deb.debian.org/debian/pool/main/p/procps/procps_3.3.15-2.debian.tar.xz' procps_3.3.15-2.debian.tar.xz 28060 SHA256:4e90c4129744b726929990239139fde29ab4e438d65d75f5d4c479ead2001aed
```

Other potentially useful URLs:

- https://sources.debian.net/src/procps/2:3.3.15-2/ (for browsing the source)
- https://sources.debian.net/src/procps/2:3.3.15-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/procps/2:3.3.15-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pyasn1=0.4.2-3`

Binary Packages:

- `python3-pyasn1=0.4.2-3`

Licenses: (parsed from: `/usr/share/doc/python3-pyasn1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris pyasn1=0.4.2-3
'http://deb.debian.org/debian/pool/main/p/pyasn1/pyasn1_0.4.2-3.dsc' pyasn1_0.4.2-3.dsc 2233 SHA256:888517922336ade422fa159960d48a58bc2bc971a9242b3b32f531b7ab7bfd3c
'http://deb.debian.org/debian/pool/main/p/pyasn1/pyasn1_0.4.2.orig.tar.gz' pyasn1_0.4.2.orig.tar.gz 118404 SHA256:d258b0a71994f7770599835249cece1caef3c70def868c4915e6e5ca49b67d15
'http://deb.debian.org/debian/pool/main/p/pyasn1/pyasn1_0.4.2-3.debian.tar.xz' pyasn1_0.4.2-3.debian.tar.xz 5404 SHA256:c4769523a4353d9aabda5728f456c22882c242ff49aa3457595f0685c5d065a2
```

Other potentially useful URLs:

- https://sources.debian.net/src/pyasn1/0.4.2-3/ (for browsing the source)
- https://sources.debian.net/src/pyasn1/0.4.2-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pyasn1/0.4.2-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pycryptodome=3.6.1-2`

Binary Packages:

- `python3-pycryptodome=3.6.1-2+b1`

Licenses: (parsed from: `/usr/share/doc/python3-pycryptodome/copyright`)

- `BSD-2-clause`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris pycryptodome=3.6.1-2
'http://deb.debian.org/debian/pool/main/p/pycryptodome/pycryptodome_3.6.1-2.dsc' pycryptodome_3.6.1-2.dsc 2333 SHA256:daa6f3373f9e19f1b618902d07c45fb3bec5d53947dd5ae98c896b672c5c63c9
'http://deb.debian.org/debian/pool/main/p/pycryptodome/pycryptodome_3.6.1.orig.tar.gz' pycryptodome_3.6.1.orig.tar.gz 7167199 SHA256:15013007e393d0cc0e69f4329a47c4c8597b7f3d02c12c03f805405542f70c71
'http://deb.debian.org/debian/pool/main/p/pycryptodome/pycryptodome_3.6.1-2.debian.tar.xz' pycryptodome_3.6.1-2.debian.tar.xz 9992 SHA256:3f044b145c7256315957f33ebbb07be3eedac78b44f45a0a5f9b2c5be0781b68
```

Other potentially useful URLs:

- https://sources.debian.net/src/pycryptodome/3.6.1-2/ (for browsing the source)
- https://sources.debian.net/src/pycryptodome/3.6.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pycryptodome/3.6.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pyparsing=2.2.0+dfsg1-2`

Binary Packages:

- `python3-pyparsing=2.2.0+dfsg1-2`

Licenses: (parsed from: `/usr/share/doc/python3-pyparsing/copyright`)

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
'http://deb.debian.org/debian/pool/main/p/pyparsing/pyparsing_2.2.0%2bdfsg1-2.dsc' pyparsing_2.2.0+dfsg1-2.dsc 2429 SHA256:fb7dbda8c89bbddf2d96fab4bf770a59f53b08a8f727652556de98e20e1e74ea
'http://deb.debian.org/debian/pool/main/p/pyparsing/pyparsing_2.2.0%2bdfsg1.orig.tar.gz' pyparsing_2.2.0+dfsg1.orig.tar.gz 1146636 SHA256:8cf2bde582aa28b854cb96d225606caae902956136e5050ca62125371b06ef8c
'http://deb.debian.org/debian/pool/main/p/pyparsing/pyparsing_2.2.0%2bdfsg1-2.debian.tar.xz' pyparsing_2.2.0+dfsg1-2.debian.tar.xz 7984 SHA256:f968a17566c942a919fe7024a15bbbb2f1cce5af9c50e01e57ad9580b1e12591
```

Other potentially useful URLs:

- https://sources.debian.net/src/pyparsing/2.2.0+dfsg1-2/ (for browsing the source)
- https://sources.debian.net/src/pyparsing/2.2.0+dfsg1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pyparsing/2.2.0+dfsg1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python-bcrypt=3.1.6-1`

Binary Packages:

- `python3-bcrypt=3.1.6-1`

Licenses: (parsed from: `/usr/share/doc/python3-bcrypt/copyright`)

- `Apache-2.0`
- `BSD-3-Clause`
- `BSD-4-Clause`
- `GPL-3`
- `GPL-3+`
- `ISC`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris python-bcrypt=3.1.6-1
'http://deb.debian.org/debian/pool/main/p/python-bcrypt/python-bcrypt_3.1.6-1.dsc' python-bcrypt_3.1.6-1.dsc 2644 SHA256:f81186845c6b1b9c1a598edff46fa920126be62a8a153a75aaf8d9cc479d2b56
'http://deb.debian.org/debian/pool/main/p/python-bcrypt/python-bcrypt_3.1.6.orig.tar.gz' python-bcrypt_3.1.6.orig.tar.gz 42216 SHA256:44636759d222baa62806bbceb20e96f75a015a6381690d1bc2eda91c01ec02ea
'http://deb.debian.org/debian/pool/main/p/python-bcrypt/python-bcrypt_3.1.6.orig.tar.gz.asc' python-bcrypt_3.1.6.orig.tar.gz.asc 488 SHA256:f1f2bb413860911d21c80a340287cd1f0c7f17cf4e4ce015dbfbd43655d544cb
'http://deb.debian.org/debian/pool/main/p/python-bcrypt/python-bcrypt_3.1.6-1.debian.tar.xz' python-bcrypt_3.1.6-1.debian.tar.xz 14460 SHA256:d8ac1695706f776c615fde57995861585a030c916a1311bd1386fa93e52a7991
```

Other potentially useful URLs:

- https://sources.debian.net/src/python-bcrypt/3.1.6-1/ (for browsing the source)
- https://sources.debian.net/src/python-bcrypt/3.1.6-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python-bcrypt/3.1.6-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python-cffi=1.12.2-1`

Binary Packages:

- `python3-cffi-backend=1.12.2-1`

Licenses: (parsed from: `/usr/share/doc/python3-cffi-backend/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-cffi=1.12.2-1
'http://deb.debian.org/debian/pool/main/p/python-cffi/python-cffi_1.12.2-1.dsc' python-cffi_1.12.2-1.dsc 2642 SHA256:c84944d923b6eac96307cf39796ee0d01689155307816fcffe6ded08d0990cd3
'http://deb.debian.org/debian/pool/main/p/python-cffi/python-cffi_1.12.2.orig.tar.gz' python-cffi_1.12.2.orig.tar.gz 453893 SHA256:e113878a446c6228669144ae8a56e268c91b7f1fafae927adc4879d9849e0ea7
'http://deb.debian.org/debian/pool/main/p/python-cffi/python-cffi_1.12.2-1.debian.tar.xz' python-cffi_1.12.2-1.debian.tar.xz 6500 SHA256:5181ab58ebdec110de36091e31cc79f4a9a07adc3bb45c62a3a020f6bf2477e2
```

Other potentially useful URLs:

- https://sources.debian.net/src/python-cffi/1.12.2-1/ (for browsing the source)
- https://sources.debian.net/src/python-cffi/1.12.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python-cffi/1.12.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python-cryptography=2.6.1-3+deb10u2`

Binary Packages:

- `python3-cryptography=2.6.1-3+deb10u2`

Licenses: (parsed from: `/usr/share/doc/python3-cryptography/copyright`)

- `Apache`
- `Apache-2.0`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-cryptography=2.6.1-3+deb10u2
'http://deb.debian.org/debian/pool/main/p/python-cryptography/python-cryptography_2.6.1-3%2bdeb10u2.dsc' python-cryptography_2.6.1-3+deb10u2.dsc 3556 SHA256:4b0fc06e420ed2b599f9f3cdb896648b45bda1298fefebf7c90d116d288f7ac9
'http://deb.debian.org/debian/pool/main/p/python-cryptography/python-cryptography_2.6.1.orig.tar.gz' python-cryptography_2.6.1.orig.tar.gz 491580 SHA256:26c821cbeb683facb966045e2064303029d572a87ee69ca5a1bf54bf55f93ca6
'http://deb.debian.org/debian/pool/main/p/python-cryptography/python-cryptography_2.6.1-3%2bdeb10u2.debian.tar.xz' python-cryptography_2.6.1-3+deb10u2.debian.tar.xz 29712 SHA256:43dbe9f6b272340c0c6a1d2bc6a56516cd087e065b054209956ba29446827061
```

Other potentially useful URLs:

- https://sources.debian.net/src/python-cryptography/2.6.1-3+deb10u2/ (for browsing the source)
- https://sources.debian.net/src/python-cryptography/2.6.1-3+deb10u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python-cryptography/2.6.1-3+deb10u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python-dateutil=2.7.3-3`

Binary Packages:

- `python3-dateutil=2.7.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-dateutil=2.7.3-3
'http://deb.debian.org/debian/pool/main/p/python-dateutil/python-dateutil_2.7.3-3.dsc' python-dateutil_2.7.3-3.dsc 2485 SHA256:c2b893fb2de9e839410e2b463184e40e90ad1c7e4e544642de15ff968c80eab7
'http://deb.debian.org/debian/pool/main/p/python-dateutil/python-dateutil_2.7.3.orig.tar.gz' python-dateutil_2.7.3.orig.tar.gz 302871 SHA256:e27001de32f627c22380a688bcc43ce83504a7bc5da472209b4c70f02829f0b8
'http://deb.debian.org/debian/pool/main/p/python-dateutil/python-dateutil_2.7.3.orig.tar.gz.asc' python-dateutil_2.7.3.orig.tar.gz.asc 833 SHA256:95caabf7dc886ac18900896e0aa1b30f9cf1a44461fb780acffe130b37ee5047
'http://deb.debian.org/debian/pool/main/p/python-dateutil/python-dateutil_2.7.3-3.debian.tar.xz' python-dateutil_2.7.3-3.debian.tar.xz 13932 SHA256:73242e51d7e954ca5cc9e2ebf86a72e10f5ae436a28484767da969aa9025179f
```

Other potentially useful URLs:

- https://sources.debian.net/src/python-dateutil/2.7.3-3/ (for browsing the source)
- https://sources.debian.net/src/python-dateutil/2.7.3-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python-dateutil/2.7.3-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python-defaults=2.7.16-1`

Binary Packages:

- `libpython-stdlib:amd64=2.7.16-1`
- `libpython2-stdlib:amd64=2.7.16-1`
- `python=2.7.16-1`
- `python-minimal=2.7.16-1`
- `python2=2.7.16-1`
- `python2-minimal=2.7.16-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-defaults=2.7.16-1
'http://deb.debian.org/debian/pool/main/p/python-defaults/python-defaults_2.7.16-1.dsc' python-defaults_2.7.16-1.dsc 2917 SHA256:6482803ce46522db092fcd3d67ed380bdfbe817b77b5ec93b65f5825fe45e544
'http://deb.debian.org/debian/pool/main/p/python-defaults/python-defaults_2.7.16-1.tar.gz' python-defaults_2.7.16-1.tar.gz 82643 SHA256:4623728a4070ba58f15d2885a4ad2f590a94e705c4f18c8f0ff51151ad89fbc1
```

Other potentially useful URLs:

- https://sources.debian.net/src/python-defaults/2.7.16-1/ (for browsing the source)
- https://sources.debian.net/src/python-defaults/2.7.16-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python-defaults/2.7.16-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python-docutils=0.14+dfsg-4`

Binary Packages:

- `docutils-common=0.14+dfsg-4`
- `python3-docutils=0.14+dfsg-4`

Licenses: (parsed from: `/usr/share/doc/docutils-common/copyright`, `/usr/share/doc/python3-docutils/copyright`)

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
$ apt-get source -qq --print-uris python-docutils=0.14+dfsg-4
'http://deb.debian.org/debian/pool/main/p/python-docutils/python-docutils_0.14%2bdfsg-4.dsc' python-docutils_0.14+dfsg-4.dsc 2475 SHA256:e6cdf648575b5ce6188a9630ab9106873d71bef2b945d79cc9eecefa867b2404
'http://deb.debian.org/debian/pool/main/p/python-docutils/python-docutils_0.14%2bdfsg.orig.tar.gz' python-docutils_0.14+dfsg.orig.tar.gz 1739255 SHA256:9731d30e7d958c7fe8fcc20c1689064e130053c954e61df20ac5362eb6305760
'http://deb.debian.org/debian/pool/main/p/python-docutils/python-docutils_0.14%2bdfsg-4.debian.tar.xz' python-docutils_0.14+dfsg-4.debian.tar.xz 32232 SHA256:8a215eebc72e222677ff3518279a039d40ca485a54c8e873ec81352992ec76d3
```

Other potentially useful URLs:

- https://sources.debian.net/src/python-docutils/0.14+dfsg-4/ (for browsing the source)
- https://sources.debian.net/src/python-docutils/0.14+dfsg-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python-docutils/0.14+dfsg-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python-gnupg=0.4.4-1`

Binary Packages:

- `python3-gnupg=0.4.4-1`

Licenses: (parsed from: `/usr/share/doc/python3-gnupg/copyright`)

- `BSD-3-clause`
- `pycrypto`

Source:

```console
$ apt-get source -qq --print-uris python-gnupg=0.4.4-1
'http://deb.debian.org/debian/pool/main/p/python-gnupg/python-gnupg_0.4.4-1.dsc' python-gnupg_0.4.4-1.dsc 1765 SHA256:918adc51bc5ddff74bb2f0c2d2798cdb82ecaa3ff3e398eebabcbadd7652461d
'http://deb.debian.org/debian/pool/main/p/python-gnupg/python-gnupg_0.4.4.orig.tar.gz' python-gnupg_0.4.4.orig.tar.gz 48292 SHA256:45daf020b370bda13a1429c859fcdff0b766c0576844211446f9266cae97fb0e
'http://deb.debian.org/debian/pool/main/p/python-gnupg/python-gnupg_0.4.4-1.debian.tar.xz' python-gnupg_0.4.4-1.debian.tar.xz 7160 SHA256:5386cffb32e9543d52e80aadb653bd984dd523cfe99dfdcfc426fd630eea8599
```

Other potentially useful URLs:

- https://sources.debian.net/src/python-gnupg/0.4.4-1/ (for browsing the source)
- https://sources.debian.net/src/python-gnupg/0.4.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python-gnupg/0.4.4-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python-nacl=1.3.0-2`

Binary Packages:

- `python3-nacl=1.3.0-2`

Licenses: (parsed from: `/usr/share/doc/python3-nacl/copyright`)

- `Apache`
- `Apache-2.0`
- `Expat`
- `ISC`

Source:

```console
$ apt-get source -qq --print-uris python-nacl=1.3.0-2
'http://deb.debian.org/debian/pool/main/p/python-nacl/python-nacl_1.3.0-2.dsc' python-nacl_1.3.0-2.dsc 2464 SHA256:53f08cca370ac826f520a1b947d51fa720fdef3ed3a74d610c0b3ffe193583a4
'http://deb.debian.org/debian/pool/main/p/python-nacl/python-nacl_1.3.0.orig.tar.gz' python-nacl_1.3.0.orig.tar.gz 3351016 SHA256:0c6100edd16fefd1557da078c7a31e7b7d7a52ce39fdca2bec29d4f7b6e7600c
'http://deb.debian.org/debian/pool/main/p/python-nacl/python-nacl_1.3.0-2.debian.tar.xz' python-nacl_1.3.0-2.debian.tar.xz 40512 SHA256:d03cd2c66ae2bbb26597d6db702132f455aa6b20d8636cee3d498dd893efaf26
```

Other potentially useful URLs:

- https://sources.debian.net/src/python-nacl/1.3.0-2/ (for browsing the source)
- https://sources.debian.net/src/python-nacl/1.3.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python-nacl/1.3.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python-numpy=1:1.16.2-1`

Binary Packages:

- `python3-numpy=1:1.16.2-1`

Licenses: (parsed from: `/usr/share/doc/python3-numpy/copyright`)

- `PSF`

Source:

```console
$ apt-get source -qq --print-uris python-numpy=1:1.16.2-1
'http://deb.debian.org/debian/pool/main/p/python-numpy/python-numpy_1.16.2-1.dsc' python-numpy_1.16.2-1.dsc 2858 SHA256:b292b6fca408f51f4eab10aa48753db6ca8d02f30fc5c136903b296ab3a92ccd
'http://deb.debian.org/debian/pool/main/p/python-numpy/python-numpy_1.16.2.orig.tar.xz' python-numpy_1.16.2.orig.tar.xz 3057600 SHA256:a621b14a61b778866a1b6317e7f83c3a26be6638ded9d007115b9155a4e2cbd2
'http://deb.debian.org/debian/pool/main/p/python-numpy/python-numpy_1.16.2-1.debian.tar.xz' python-numpy_1.16.2-1.debian.tar.xz 141588 SHA256:d088f1b79562130b79ca171c3cabdfcf3e8ffd3213cbdd7559c6db09b34c2cbd
```

Other potentially useful URLs:

- https://sources.debian.net/src/python-numpy/1:1.16.2-1/ (for browsing the source)
- https://sources.debian.net/src/python-numpy/1:1.16.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python-numpy/1:1.16.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python-roman=2.0.0-3`

Binary Packages:

- `python3-roman=2.0.0-3`

Licenses: (parsed from: `/usr/share/doc/python3-roman/copyright`)

- `Python-2.1.1`
- `ZPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris python-roman=2.0.0-3
'http://deb.debian.org/debian/pool/main/p/python-roman/python-roman_2.0.0-3.dsc' python-roman_2.0.0-3.dsc 2132 SHA256:0470c89ad49bfbcf20bb59cb86f5de4d2f7d597ffc7519ecb07064ef313f252e
'http://deb.debian.org/debian/pool/main/p/python-roman/python-roman_2.0.0.orig.tar.gz' python-roman_2.0.0.orig.tar.gz 4968 SHA256:98f2c0fb3cdcfba465d12c85b3b7139fc4cd2177f1325f1bacfe00878c8fa7b9
'http://deb.debian.org/debian/pool/main/p/python-roman/python-roman_2.0.0-3.debian.tar.xz' python-roman_2.0.0-3.debian.tar.xz 8596 SHA256:fa6c16b3e4d328a8cfe16fbed994add1a2c9cb5a5955bff374244794a6cddf31
```

Other potentially useful URLs:

- https://sources.debian.net/src/python-roman/2.0.0-3/ (for browsing the source)
- https://sources.debian.net/src/python-roman/2.0.0-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python-roman/2.0.0-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python-setuptools=40.8.0-1`

Binary Packages:

- `python3-pkg-resources=40.8.0-1`
- `python3-setuptools=40.8.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-setuptools=40.8.0-1
'http://deb.debian.org/debian/pool/main/p/python-setuptools/python-setuptools_40.8.0-1.dsc' python-setuptools_40.8.0-1.dsc 2394 SHA256:707138f4024000f526e5a75a9d741539ef7e8a6c0d5059e0d712c7bde6ad6e3e
'http://deb.debian.org/debian/pool/main/p/python-setuptools/python-setuptools_40.8.0.orig.tar.xz' python-setuptools_40.8.0.orig.tar.xz 455472 SHA256:b0525dea743dd9a34c3523b5bd75ed6ef0763d389f96e7df448904169d8ce772
'http://deb.debian.org/debian/pool/main/p/python-setuptools/python-setuptools_40.8.0-1.debian.tar.xz' python-setuptools_40.8.0-1.debian.tar.xz 14444 SHA256:d66cc2e395a9d1059d4aa538eb95cc6d8e69b4983ee58dd04b209a6c290addd7
```

Other potentially useful URLs:

- https://sources.debian.net/src/python-setuptools/40.8.0-1/ (for browsing the source)
- https://sources.debian.net/src/python-setuptools/40.8.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python-setuptools/40.8.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python2.7=2.7.16-2+deb10u1`

Binary Packages:

- `libpython2.7-minimal:amd64=2.7.16-2+deb10u1`
- `libpython2.7-stdlib:amd64=2.7.16-2+deb10u1`
- `python2.7=2.7.16-2+deb10u1`
- `python2.7-minimal=2.7.16-2+deb10u1`

Licenses: (parsed from: `/usr/share/doc/libpython2.7-minimal/copyright`, `/usr/share/doc/libpython2.7-stdlib/copyright`, `/usr/share/doc/python2.7/copyright`, `/usr/share/doc/python2.7-minimal/copyright`)

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
$ apt-get source -qq --print-uris python2.7=2.7.16-2+deb10u1
'http://deb.debian.org/debian/pool/main/p/python2.7/python2.7_2.7.16-2%2bdeb10u1.dsc' python2.7_2.7.16-2+deb10u1.dsc 3362 SHA256:c976ba9e854cf611131aacb06f3ddca206b5c799871cb269dbef1ee629be6066
'http://deb.debian.org/debian/pool/main/p/python2.7/python2.7_2.7.16.orig.tar.gz' python2.7_2.7.16.orig.tar.gz 17431748 SHA256:01da813a3600876f03f46db11cc5c408175e99f03af2ba942ef324389a83bad5
'http://deb.debian.org/debian/pool/main/p/python2.7/python2.7_2.7.16-2%2bdeb10u1.diff.gz' python2.7_2.7.16-2+deb10u1.diff.gz 293706 SHA256:37150412430a010c1f0cd816ff1c2b0d90459ecc37c8aa5df5d68f698ececeed
```

Other potentially useful URLs:

- https://sources.debian.net/src/python2.7/2.7.16-2+deb10u1/ (for browsing the source)
- https://sources.debian.net/src/python2.7/2.7.16-2+deb10u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python2.7/2.7.16-2+deb10u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python3-catkin-pkg-modules=0.5.2-1`

Binary Packages:

- `python3-catkin-pkg-modules=0.5.2-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-catkin-pkg-modules=0.5.2-1
'http://packages.ros.org/ros/ubuntu/pool/main/p/python3-catkin-pkg-modules/python3-catkin-pkg-modules_0.5.2-1.debian.tar.xz' python3-catkin-pkg-modules_0.5.2-1.debian.tar.xz 2004 SHA512:3cac65ab1e8334b4ccec07609b28359f561e07cb27bd842b0634d1c24f788866e3c102f629586ff9c55d5663bc19e28384ff03cdbabc7c6674dea2bdaa6310f4
'http://packages.ros.org/ros/ubuntu/pool/main/p/python3-catkin-pkg-modules/python3-catkin-pkg-modules_0.5.2-1.dsc' python3-catkin-pkg-modules_0.5.2-1.dsc 1019 SHA512:513f451e379cb105fb01559ede2e9c58734b1e21ed048676fc5544c16d8b9e540c5d2330d1f2c2607bc3e0bf22dae737ae1727fba49924608c5dc6c63cbd3ccf
'http://packages.ros.org/ros/ubuntu/pool/main/p/python3-catkin-pkg-modules/python3-catkin-pkg-modules_0.5.2.orig.tar.gz' python3-catkin-pkg-modules_0.5.2.orig.tar.gz 62745 SHA512:cef4a8f79828c221cb07924a7f724a547d7fd60a0a7690b8a5bf7bb663e263e27ef7fbce55ef46f17319d3bfe8d61941eb2fd63d4323f01e35b73a3d0b26fdf5
```

### `dpkg` source package: `python3-catkin-pkg=0.5.2-100`

Binary Packages:

- `python3-catkin-pkg=0.5.2-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-catkin-pkg=0.5.2-100
'http://packages.ros.org/ros/ubuntu/pool/main/p/python3-catkin-pkg/python3-catkin-pkg_0.5.2-100.debian.tar.xz' python3-catkin-pkg_0.5.2-100.debian.tar.xz 1996 SHA512:87e947e9cb996f820f3e7133457a2bd516a0303dfa5534d2c79ef8e366c5441feafe8c2672aa8d022e7c406fc97d1b83fa95115864ad1ea342281b14eff7ece6
'http://packages.ros.org/ros/ubuntu/pool/main/p/python3-catkin-pkg/python3-catkin-pkg_0.5.2-100.dsc' python3-catkin-pkg_0.5.2-100.dsc 955 SHA512:a28d0439bb9d5613d5a001560e6ca004dc3dedf5b54b5e4decd6862e7e0c269b1597da63f90d324ceefefdd7ff16f708e31c8805523a395e30b8acaa10e8ed9b
'http://packages.ros.org/ros/ubuntu/pool/main/p/python3-catkin-pkg/python3-catkin-pkg_0.5.2.orig.tar.gz' python3-catkin-pkg_0.5.2.orig.tar.gz 15512 SHA512:2c1958d19538dd9afed9819464d452db401b32f50e8f83c75e8512906c2adfceb1ef03781b1cb4b2579118cdca7ee727f9ab36ca09b48424206f1c8128004ef9
```

### `dpkg` source package: `python3-defaults=3.7.3-1`

Binary Packages:

- `libpython3-dev:amd64=3.7.3-1`
- `libpython3-stdlib:amd64=3.7.3-1`
- `python3=3.7.3-1`
- `python3-dev=3.7.3-1`
- `python3-minimal=3.7.3-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-defaults=3.7.3-1
'http://deb.debian.org/debian/pool/main/p/python3-defaults/python3-defaults_3.7.3-1.dsc' python3-defaults_3.7.3-1.dsc 2797 SHA256:00fc9d88fab413659b27886833b4f20c15400cb335de94a3f2dbb01f7adf9058
'http://deb.debian.org/debian/pool/main/p/python3-defaults/python3-defaults_3.7.3-1.tar.gz' python3-defaults_3.7.3-1.tar.gz 137436 SHA256:ed0fe03fc72b766bc4449088ff82764ac7486431efca38de89841a139f3362ad
```

Other potentially useful URLs:

- https://sources.debian.net/src/python3-defaults/3.7.3-1/ (for browsing the source)
- https://sources.debian.net/src/python3-defaults/3.7.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python3-defaults/3.7.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python3-rosdep-modules=0.22.1-1`

Binary Packages:

- `python3-rosdep-modules=0.22.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-rosdep-modules=0.22.1-1
'http://packages.ros.org/ros/ubuntu/pool/main/p/python3-rosdep-modules/python3-rosdep-modules_0.22.1-1.debian.tar.xz' python3-rosdep-modules_0.22.1-1.debian.tar.xz 2036 SHA512:125a93c4646c2fbebc9f41b88bccdc749a13e5cd1da6bb27552748be60a2959efade21121dab204199034eef0f1c5d90ccdab0625c59f25fe8f3676924601b3a
'http://packages.ros.org/ros/ubuntu/pool/main/p/python3-rosdep-modules/python3-rosdep-modules_0.22.1-1.dsc' python3-rosdep-modules_0.22.1-1.dsc 997 SHA512:0e23f8ca249e75379f8473f9d41b30aff1b8fa36ba41f18108f748afff448088e1b102fdc8f5800a826f4a733a67bcdedf1e9afd3ce43efb047ab18074589612
'http://packages.ros.org/ros/ubuntu/pool/main/p/python3-rosdep-modules/python3-rosdep-modules_0.22.1.orig.tar.gz' python3-rosdep-modules_0.22.1.orig.tar.gz 94004 SHA512:7d02ce48ccb625495993cc146b6665689ff30a8049f66ecaf608ac7dc24512ee2a1a12647b3b241753a0ce9524447d4f3eda01b72e5ea09ea59600503d8c6eeb
```

### `dpkg` source package: `python3-rosdistro-modules=0.9.0-1`

Binary Packages:

- `python3-rosdistro-modules=0.9.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-rosdistro-modules=0.9.0-1
'http://packages.ros.org/ros/ubuntu/pool/main/p/python3-rosdistro-modules/python3-rosdistro-modules_0.9.0-1.debian.tar.xz' python3-rosdistro-modules_0.9.0-1.debian.tar.xz 2004 SHA512:8312a9e75ed1da0f7da358b6d860e7445253693478651778e0e82d8302941875ffe0ae1c11d6d480299626858d387fd50bbacaab6c686e02d75d8041b1314034
'http://packages.ros.org/ros/ubuntu/pool/main/p/python3-rosdistro-modules/python3-rosdistro-modules_0.9.0-1.dsc' python3-rosdistro-modules_0.9.0-1.dsc 1038 SHA512:0f8ab8f26b1df89fcec4c12450a76fa18fd94556e08c7a5c4db463031ded956514ff2e7ac7ef8f95fb7d3db58df03186463f763c32455dbbb8bd1176892a750a
'http://packages.ros.org/ros/ubuntu/pool/main/p/python3-rosdistro-modules/python3-rosdistro-modules_0.9.0.orig.tar.gz' python3-rosdistro-modules_0.9.0.orig.tar.gz 43482 SHA512:7f20ff589fc5343ec39772f51b656022cf3762ed2ee7dddb57b66189e58fdc8408646fbeb488f19e63448448a91215b5869317851a8ccc826cf8e6d87ae92d0b
```

### `dpkg` source package: `python3-rospkg-modules=1.4.0-1`

Binary Packages:

- `python3-rospkg-modules=1.4.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-rospkg-modules=1.4.0-1
'http://packages.ros.org/ros/ubuntu/pool/main/p/python3-rospkg-modules/python3-rospkg-modules_1.4.0-1.debian.tar.xz' python3-rospkg-modules_1.4.0-1.debian.tar.xz 1168 SHA512:8a17ebdfedf766ae6043759606e19126f8cfec3d93eb28162a316b0a5d64e98d52acdd47d599e1e3625015caacdc4f0f32c51484d783389919e6f8ce6ca5c18b
'http://packages.ros.org/ros/ubuntu/pool/main/p/python3-rospkg-modules/python3-rospkg-modules_1.4.0-1.dsc' python3-rospkg-modules_1.4.0-1.dsc 973 SHA512:b309e62c393e33076bc010c275da1c51e4fed2c5531d423b9596e54cf478fffb8abeb501d93f48b0f5e98e8f1b036155ee7495f3f03ebb35b7f57deef6fdcfcc
'http://packages.ros.org/ros/ubuntu/pool/main/p/python3-rospkg-modules/python3-rospkg-modules_1.4.0.orig.tar.gz' python3-rospkg-modules_1.4.0.orig.tar.gz 41508 SHA512:f8e5fd41d03cfb6d675fcd6a2735a7d38dda6a7b94eec140b9c3b31a6db385c86d35ac13cce39539abc6d41f567de454a9c3304f058edcba66ddb816237e69ba
```

### `dpkg` source package: `python3-rospkg=1.4.0-100`

Binary Packages:

- `python3-rospkg=1.4.0-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-rospkg=1.4.0-100
'http://packages.ros.org/ros/ubuntu/pool/main/p/python3-rospkg/python3-rospkg_1.4.0-100.debian.tar.xz' python3-rospkg_1.4.0-100.debian.tar.xz 1116 SHA512:68afea29b9ef8117dea12fbc8784566951db3486781634346d56db58f2499dd90f44b227b4c2b8aed51f7c0def479b149cb8b15c0b584b10998f50e05ffbdc19
'http://packages.ros.org/ros/ubuntu/pool/main/p/python3-rospkg/python3-rospkg_1.4.0-100.dsc' python3-rospkg_1.4.0-100.dsc 909 SHA512:34d61923077ff52372d23b64ac5a55250610a8a56f47ed67b4f666692d6a82b4e57664a4ec5fa469b8d5b66a41467f7b18182896ad174e4aaff0e918ac5528f7
'http://packages.ros.org/ros/ubuntu/pool/main/p/python3-rospkg/python3-rospkg_1.4.0.orig.tar.gz' python3-rospkg_1.4.0.orig.tar.gz 17487 SHA512:428b80a839c1e998f0b3a8601f9ae10339752f26870a6acae9c871e692fd514ccf12b261b9f54bf87b39c6d676c0771a5e2c24291d6ce90227b8874d251e785d
```

### `dpkg` source package: `python3-stdlib-extensions=3.7.3-1`

Binary Packages:

- `python3-distutils=3.7.3-1`
- `python3-lib2to3=3.7.3-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-stdlib-extensions=3.7.3-1
'http://deb.debian.org/debian/pool/main/p/python3-stdlib-extensions/python3-stdlib-extensions_3.7.3-1.dsc' python3-stdlib-extensions_3.7.3-1.dsc 2449 SHA256:209bad0d74f26f49c98d970b1876020021caa3b0e01192c966d31e287c33ef2e
'http://deb.debian.org/debian/pool/main/p/python3-stdlib-extensions/python3-stdlib-extensions_3.7.3.orig.tar.xz' python3-stdlib-extensions_3.7.3.orig.tar.xz 1038076 SHA256:638eadd847eb942a0513fe4ac8b23d4e5bf8ae34dc55c161a1de82aa277237e8
'http://deb.debian.org/debian/pool/main/p/python3-stdlib-extensions/python3-stdlib-extensions_3.7.3-1.debian.tar.xz' python3-stdlib-extensions_3.7.3-1.debian.tar.xz 16260 SHA256:10965460ac69bd94e269600801165a9241a8d69013b9a7fef18a3fcc77c7e888
```

Other potentially useful URLs:

- https://sources.debian.net/src/python3-stdlib-extensions/3.7.3-1/ (for browsing the source)
- https://sources.debian.net/src/python3-stdlib-extensions/3.7.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python3-stdlib-extensions/3.7.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python3.7=3.7.3-2+deb10u4`

Binary Packages:

- `libpython3.7:amd64=3.7.3-2+deb10u4`
- `libpython3.7-dev:amd64=3.7.3-2+deb10u4`
- `libpython3.7-minimal:amd64=3.7.3-2+deb10u4`
- `libpython3.7-stdlib:amd64=3.7.3-2+deb10u4`
- `python3.7=3.7.3-2+deb10u4`
- `python3.7-dev=3.7.3-2+deb10u4`
- `python3.7-minimal=3.7.3-2+deb10u4`

Licenses: (parsed from: `/usr/share/doc/libpython3.7/copyright`, `/usr/share/doc/libpython3.7-dev/copyright`, `/usr/share/doc/libpython3.7-minimal/copyright`, `/usr/share/doc/libpython3.7-stdlib/copyright`, `/usr/share/doc/python3.7/copyright`, `/usr/share/doc/python3.7-dev/copyright`, `/usr/share/doc/python3.7-minimal/copyright`)

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
$ apt-get source -qq --print-uris python3.7=3.7.3-2+deb10u4
'http://deb.debian.org/debian-security/pool/updates/main/p/python3.7/python3.7_3.7.3-2%2bdeb10u4.dsc' python3.7_3.7.3-2+deb10u4.dsc 2827 SHA256:4d8de01573ed0ba4016566fcfeec3a83b64fef719978ed3b126f3121652a0ae9
'http://deb.debian.org/debian-security/pool/updates/main/p/python3.7/python3.7_3.7.3.orig.tar.xz' python3.7_3.7.3.orig.tar.xz 17108364 SHA256:da60b54064d4cfcd9c26576f6df2690e62085123826cff2e667e72a91952d318
'http://deb.debian.org/debian-security/pool/updates/main/p/python3.7/python3.7_3.7.3-2%2bdeb10u4.debian.tar.xz' python3.7_3.7.3-2+deb10u4.debian.tar.xz 220528 SHA256:dd2eaaa5e2215a148990c7e02de50e1ac7add538baf743be1c418c0ec6502259
```

Other potentially useful URLs:

- https://sources.debian.net/src/python3.7/3.7.3-2+deb10u4/ (for browsing the source)
- https://sources.debian.net/src/python3.7/3.7.3-2+deb10u4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python3.7/3.7.3-2+deb10u4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pyyaml=3.13-2`

Binary Packages:

- `python3-yaml=3.13-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pyyaml=3.13-2
'http://deb.debian.org/debian/pool/main/p/pyyaml/pyyaml_3.13-2.dsc' pyyaml_3.13-2.dsc 2290 SHA256:292f2ca63de92cf3d65928f5f7a1c0268da32d6b449f57c0150e2536d5b1eb8c
'http://deb.debian.org/debian/pool/main/p/pyyaml/pyyaml_3.13.orig.tar.gz' pyyaml_3.13.orig.tar.gz 270607 SHA256:3ef3092145e9b70e3ddd2c7ad59bdd0252a94dfe3949721633e41344de00a6bf
'http://deb.debian.org/debian/pool/main/p/pyyaml/pyyaml_3.13-2.debian.tar.xz' pyyaml_3.13-2.debian.tar.xz 8368 SHA256:90c9cf7ce4abaea51e7b4269c8d7e5920d70cc3275ddd9d5762eb72ba4a5f343
```

Other potentially useful URLs:

- https://sources.debian.net/src/pyyaml/3.13-2/ (for browsing the source)
- https://sources.debian.net/src/pyyaml/3.13-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pyyaml/3.13-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `readline=7.0-5`

Binary Packages:

- `libreadline7:amd64=7.0-5`
- `readline-common=7.0-5`

Licenses: (parsed from: `/usr/share/doc/libreadline7/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GFDL`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris readline=7.0-5
'http://deb.debian.org/debian/pool/main/r/readline/readline_7.0-5.dsc' readline_7.0-5.dsc 2419 SHA256:4a804235e91ced3b957b0772101ca3992f5ad051e6540b8c41a1f98a06e84033
'http://deb.debian.org/debian/pool/main/r/readline/readline_7.0.orig.tar.gz' readline_7.0.orig.tar.gz 2910016 SHA256:750d437185286f40a369e1e4f4764eda932b9459b5ec9a731628393dd3d32334
'http://deb.debian.org/debian/pool/main/r/readline/readline_7.0-5.debian.tar.xz' readline_7.0-5.debian.tar.xz 29992 SHA256:5c1cc7396a670ce7e6e4c0bc36e8d3067b7642bea5b30fc3ff22bf8e65d2ee80
```

Other potentially useful URLs:

- https://sources.debian.net/src/readline/7.0-5/ (for browsing the source)
- https://sources.debian.net/src/readline/7.0-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/readline/7.0-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `rhash=1.3.8-1`

Binary Packages:

- `librhash0:amd64=1.3.8-1`

Licenses: (parsed from: `/usr/share/doc/librhash0/copyright`)

- `RHash`

Source:

```console
$ apt-get source -qq --print-uris rhash=1.3.8-1
'http://deb.debian.org/debian/pool/main/r/rhash/rhash_1.3.8-1.dsc' rhash_1.3.8-1.dsc 2056 SHA256:52efe0e447afe2aa83acc8e80f8350f6d3aeee82564d8b452096de8032f741ae
'http://deb.debian.org/debian/pool/main/r/rhash/rhash_1.3.8.orig.tar.gz' rhash_1.3.8.orig.tar.gz 393544 SHA256:be536a56acfefc87dbc8b1db30fc639020e41edf05518185ea98630e3df7c04c
'http://deb.debian.org/debian/pool/main/r/rhash/rhash_1.3.8-1.debian.tar.xz' rhash_1.3.8-1.debian.tar.xz 8756 SHA256:8199a30b89aaf1b35bab22e648b9e2684bbd53a614cdfb497826eca13603d07c
```

Other potentially useful URLs:

- https://sources.debian.net/src/rhash/1.3.8-1/ (for browsing the source)
- https://sources.debian.net/src/rhash/1.3.8-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/rhash/1.3.8-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ros-noetic-actionlib-msgs=1.13.1-1buster.20220926.180429`

Binary Packages:

- `ros-noetic-actionlib-msgs=1.13.1-1buster.20220926.180429`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-catkin=0.8.10-1buster.20210423.225125`

Binary Packages:

- `ros-noetic-catkin=0.8.10-1buster.20210423.225125`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-class-loader=0.5.0-1buster.20210423.231852`

Binary Packages:

- `ros-noetic-class-loader=0.5.0-1buster.20210423.231852`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-cmake-modules=0.5.0-1buster.20210423.230939`

Binary Packages:

- `ros-noetic-cmake-modules=0.5.0-1buster.20210423.230939`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-common-msgs=1.13.1-1buster.20221124.051943`

Binary Packages:

- `ros-noetic-common-msgs=1.13.1-1buster.20221124.051943`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-cpp-common=0.7.2-1buster.20210423.232130`

Binary Packages:

- `ros-noetic-cpp-common=0.7.2-1buster.20210423.232130`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-diagnostic-msgs=1.13.1-1buster.20220926.180809`

Binary Packages:

- `ros-noetic-diagnostic-msgs=1.13.1-1buster.20220926.180809`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-gencpp=0.7.0-1buster.20220926.175854`

Binary Packages:

- `ros-noetic-gencpp=0.7.0-1buster.20220926.175854`

Licenses: (parsed from: `/usr/share/doc/ros-noetic-gencpp/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-geneus=3.0.0-1buster.20220926.175605`

Binary Packages:

- `ros-noetic-geneus=3.0.0-1buster.20220926.175605`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-genlisp=0.4.18-1buster.20220926.175612`

Binary Packages:

- `ros-noetic-genlisp=0.4.18-1buster.20220926.175612`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-genmsg=0.6.0-1buster.20220926.175441`

Binary Packages:

- `ros-noetic-genmsg=0.6.0-1buster.20220926.175441`

Licenses: (parsed from: `/usr/share/doc/ros-noetic-genmsg/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-gennodejs=2.0.2-1buster.20220926.175612`

Binary Packages:

- `ros-noetic-gennodejs=2.0.2-1buster.20220926.175612`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-genpy=0.6.15-1buster.20220926.175612`

Binary Packages:

- `ros-noetic-genpy=0.6.15-1buster.20220926.175612`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-geometry-msgs=1.13.1-1buster.20220926.180858`

Binary Packages:

- `ros-noetic-geometry-msgs=1.13.1-1buster.20220926.180858`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-message-filters=1.15.15-1buster.20221124.024618`

Binary Packages:

- `ros-noetic-message-filters=1.15.15-1buster.20221124.024618`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-message-generation=0.4.1-1buster.20220926.175958`

Binary Packages:

- `ros-noetic-message-generation=0.4.1-1buster.20220926.175958`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-message-runtime=0.4.13-1buster.20220926.175919`

Binary Packages:

- `ros-noetic-message-runtime=0.4.13-1buster.20220926.175919`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-mk=1.15.8-1buster.20220926.181804`

Binary Packages:

- `ros-noetic-mk=1.15.8-1buster.20220926.181804`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-nav-msgs=1.13.1-1buster.20220926.181010`

Binary Packages:

- `ros-noetic-nav-msgs=1.13.1-1buster.20220926.181010`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-pluginlib=1.13.0-1buster.20220926.182121`

Binary Packages:

- `ros-noetic-pluginlib=1.13.0-1buster.20220926.182121`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-ros-comm=1.15.15-1buster.20221124.031333`

Binary Packages:

- `ros-noetic-ros-comm=1.15.15-1buster.20221124.031333`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-ros-core=1.5.0-1buster.20221124.052038`

Binary Packages:

- `ros-noetic-ros-core=1.5.0-1buster.20221124.052038`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-ros-environment=1.3.2-1buster.20210423.232042`

Binary Packages:

- `ros-noetic-ros-environment=1.3.2-1buster.20210423.232042`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-ros=1.15.8-1buster.20220926.181923`

Binary Packages:

- `ros-noetic-ros=1.15.8-1buster.20220926.181923`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-rosbag-migration-rule=1.0.1-1buster.20210423.232354`

Binary Packages:

- `ros-noetic-rosbag-migration-rule=1.0.1-1buster.20210423.232354`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-rosbag-storage=1.15.15-1buster.20221124.024618`

Binary Packages:

- `ros-noetic-rosbag-storage=1.15.15-1buster.20221124.024618`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-rosbag=1.15.15-1buster.20221124.025010`

Binary Packages:

- `ros-noetic-rosbag=1.15.15-1buster.20221124.025010`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-rosbash=1.15.8-1buster.20210726.192612`

Binary Packages:

- `ros-noetic-rosbash=1.15.8-1buster.20210726.192612`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-rosboost-cfg=1.15.8-1buster.20210726.192615`

Binary Packages:

- `ros-noetic-rosboost-cfg=1.15.8-1buster.20210726.192615`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-rosbuild=1.15.8-1buster.20220926.180142`

Binary Packages:

- `ros-noetic-rosbuild=1.15.8-1buster.20220926.180142`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-rosclean=1.15.8-1buster.20210726.192628`

Binary Packages:

- `ros-noetic-rosclean=1.15.8-1buster.20210726.192628`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-rosconsole-bridge=0.5.4-1buster.20220926.182132`

Binary Packages:

- `ros-noetic-rosconsole-bridge=0.5.4-1buster.20220926.182132`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-rosconsole=1.14.3-1buster.20220926.181827`

Binary Packages:

- `ros-noetic-rosconsole=1.14.3-1buster.20220926.181827`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-roscpp-core=0.7.2-1buster.20210423.233322`

Binary Packages:

- `ros-noetic-roscpp-core=0.7.2-1buster.20210423.233322`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-roscpp-serialization=0.7.2-1buster.20210423.233013`

Binary Packages:

- `ros-noetic-roscpp-serialization=0.7.2-1buster.20210423.233013`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-roscpp-traits=0.7.2-1buster.20210423.232914`

Binary Packages:

- `ros-noetic-roscpp-traits=0.7.2-1buster.20210423.232914`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-roscpp=1.15.15-1buster.20221124.021222`

Binary Packages:

- `ros-noetic-roscpp=1.15.15-1buster.20221124.021222`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-roscreate=1.15.8-1buster.20210726.193349`

Binary Packages:

- `ros-noetic-roscreate=1.15.8-1buster.20210726.193349`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-rosgraph-msgs=1.11.3-1buster.20220926.181616`

Binary Packages:

- `ros-noetic-rosgraph-msgs=1.11.3-1buster.20220926.181616`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-rosgraph=1.15.15-1buster.20221124.021026`

Binary Packages:

- `ros-noetic-rosgraph=1.15.15-1buster.20221124.021026`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-roslang=1.15.8-1buster.20220926.175726`

Binary Packages:

- `ros-noetic-roslang=1.15.8-1buster.20220926.175726`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-roslaunch=1.15.15-1buster.20221124.024239`

Binary Packages:

- `ros-noetic-roslaunch=1.15.15-1buster.20221124.024239`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-roslib=1.15.8-1buster.20210726.193016`

Binary Packages:

- `ros-noetic-roslib=1.15.8-1buster.20210726.193016`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-roslisp=1.9.24-1buster.20220926.181646`

Binary Packages:

- `ros-noetic-roslisp=1.9.24-1buster.20220926.181646`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-roslz4=1.15.15-1buster.20221124.021024`

Binary Packages:

- `ros-noetic-roslz4=1.15.15-1buster.20221124.021024`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-rosmake=1.15.8-1buster.20210726.192800`

Binary Packages:

- `ros-noetic-rosmake=1.15.8-1buster.20210726.192800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-rosmaster=1.15.15-1buster.20221124.021330`

Binary Packages:

- `ros-noetic-rosmaster=1.15.15-1buster.20221124.021330`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-rosmsg=1.15.15-1buster.20221124.030820`

Binary Packages:

- `ros-noetic-rosmsg=1.15.15-1buster.20221124.030820`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-rosnode=1.15.15-1buster.20221124.025627`

Binary Packages:

- `ros-noetic-rosnode=1.15.15-1buster.20221124.025627`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-rosout=1.15.15-1buster.20221124.023537`

Binary Packages:

- `ros-noetic-rosout=1.15.15-1buster.20221124.023537`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-rospack=2.6.2-1buster.20210423.232337`

Binary Packages:

- `ros-noetic-rospack=2.6.2-1buster.20210423.232337`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-rosparam=1.15.15-1buster.20221124.021522`

Binary Packages:

- `ros-noetic-rosparam=1.15.15-1buster.20221124.021522`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-rospy=1.15.15-1buster.20221124.023548`

Binary Packages:

- `ros-noetic-rospy=1.15.15-1buster.20221124.023548`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-rosservice=1.15.15-1buster.20221124.031020`

Binary Packages:

- `ros-noetic-rosservice=1.15.15-1buster.20221124.031020`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-rostest=1.15.15-1buster.20221124.024418`

Binary Packages:

- `ros-noetic-rostest=1.15.15-1buster.20221124.024418`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-rostime=0.7.2-1buster.20210423.232417`

Binary Packages:

- `ros-noetic-rostime=0.7.2-1buster.20210423.232417`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-rostopic=1.15.15-1buster.20221124.025421`

Binary Packages:

- `ros-noetic-rostopic=1.15.15-1buster.20221124.025421`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-rosunit=1.15.8-1buster.20210726.193407`

Binary Packages:

- `ros-noetic-rosunit=1.15.8-1buster.20210726.193407`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-roswtf=1.15.15-1buster.20221124.031148`

Binary Packages:

- `ros-noetic-roswtf=1.15.15-1buster.20221124.031148`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-sensor-msgs=1.13.1-1buster.20221124.030820`

Binary Packages:

- `ros-noetic-sensor-msgs=1.13.1-1buster.20221124.030820`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-shape-msgs=1.13.1-1buster.20220926.181348`

Binary Packages:

- `ros-noetic-shape-msgs=1.13.1-1buster.20220926.181348`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-std-msgs=0.5.13-1buster.20220926.180159`

Binary Packages:

- `ros-noetic-std-msgs=0.5.13-1buster.20220926.180159`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-std-srvs=1.11.3-1buster.20220926.180211`

Binary Packages:

- `ros-noetic-std-srvs=1.11.3-1buster.20220926.180211`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-stereo-msgs=1.13.1-1buster.20221124.045813`

Binary Packages:

- `ros-noetic-stereo-msgs=1.13.1-1buster.20221124.045813`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-topic-tools=1.15.15-1buster.20221124.024622`

Binary Packages:

- `ros-noetic-topic-tools=1.15.15-1buster.20221124.024622`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-trajectory-msgs=1.13.1-1buster.20220926.181403`

Binary Packages:

- `ros-noetic-trajectory-msgs=1.13.1-1buster.20220926.181403`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-visualization-msgs=1.13.1-1buster.20220926.181414`

Binary Packages:

- `ros-noetic-visualization-msgs=1.13.1-1buster.20220926.181414`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-noetic-xmlrpcpp=1.15.15-1buster.20221124.021036`

Binary Packages:

- `ros-noetic-xmlrpcpp=1.15.15-1buster.20221124.021036`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `rtmpdump=2.4+20151223.gitfa8646d.1-2`

Binary Packages:

- `librtmp1:amd64=2.4+20151223.gitfa8646d.1-2`

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

### `dpkg` source package: `sbcl=2:1.4.16-2`

Binary Packages:

- `sbcl=2:1.4.16-2`

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
$ apt-get source -qq --print-uris sbcl=2:1.4.16-2
'http://deb.debian.org/debian/pool/main/s/sbcl/sbcl_1.4.16-2.dsc' sbcl_1.4.16-2.dsc 2355 SHA256:14b190b4b1857869783391b4905c0ebbf50dd6df6b4b68ab0def6083de38ed20
'http://deb.debian.org/debian/pool/main/s/sbcl/sbcl_1.4.16.orig.tar.bz2' sbcl_1.4.16.orig.tar.bz2 6224893 SHA256:8d93ad1b64815854d0db042c00473fc04b284316c67734be2dd62ddb2727cfd7
'http://deb.debian.org/debian/pool/main/s/sbcl/sbcl_1.4.16-2.debian.tar.xz' sbcl_1.4.16-2.debian.tar.xz 73900 SHA256:646401a86894bfcf2e025a34a48ddded6fc13508253837a8cd59435fc07a4e6f
```

Other potentially useful URLs:

- https://sources.debian.net/src/sbcl/2:1.4.16-2/ (for browsing the source)
- https://sources.debian.net/src/sbcl/2:1.4.16-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sbcl/2:1.4.16-2/ (for access to the source package after it no longer exists in the archive)

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
'http://deb.debian.org/debian/pool/main/s/sensible-utils/sensible-utils_0.0.12.dsc' sensible-utils_0.0.12.dsc 1732 SHA256:1b62cc5f7561b3f5692a6edaec942e2e97e8368dabff8c865867d428eecb1221
'http://deb.debian.org/debian/pool/main/s/sensible-utils/sensible-utils_0.0.12.tar.xz' sensible-utils_0.0.12.tar.xz 62152 SHA256:99ba2ebf8c57447c69d426b99b84ff9dc817be0bc4988ec6890a14558c529e2e
```

Other potentially useful URLs:

- https://sources.debian.net/src/sensible-utils/0.0.12/ (for browsing the source)
- https://sources.debian.net/src/sensible-utils/0.0.12/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sensible-utils/0.0.12/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sgml-base=1.29`

Binary Packages:

- `sgml-base=1.29`

Licenses: (parsed from: `/usr/share/doc/sgml-base/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris sgml-base=1.29
'http://deb.debian.org/debian/pool/main/s/sgml-base/sgml-base_1.29.dsc' sgml-base_1.29.dsc 1387 SHA256:5fa519d3de7365d2256c7b9e74b6234a5c81bd115efb6305a53444584c32f8b1
'http://deb.debian.org/debian/pool/main/s/sgml-base/sgml-base_1.29.tar.xz' sgml-base_1.29.tar.xz 12224 SHA256:33808f1d51407ae105d471bf53cab526fe8903b003b78bc7ac4fd1429b7986b4
```

Other potentially useful URLs:

- https://sources.debian.net/src/sgml-base/1.29/ (for browsing the source)
- https://sources.debian.net/src/sgml-base/1.29/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sgml-base/1.29/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `shadow=1:4.5-1.1`

Binary Packages:

- `login=1:4.5-1.1`
- `passwd=1:4.5-1.1`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.5-1.1
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.5-1.1.dsc' shadow_4.5-1.1.dsc 2319 SHA256:75993dc19ccc4d5c404831d2dab021a03eaa39216b518d596b639d8f2ea4e98b
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.5.orig.tar.xz' shadow_4.5.orig.tar.xz 1344524 SHA256:22b0952dc944b163e2370bb911b11ca275fc80ad024267cf21e496b28c23d500
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.5-1.1.debian.tar.xz' shadow_4.5-1.1.debian.tar.xz 462960 SHA256:3bb16bbf5d9a255d7333932ae99815d65c1c8e86127e5016809d4ba55c499538
```

Other potentially useful URLs:

- https://sources.debian.net/src/shadow/1:4.5-1.1/ (for browsing the source)
- https://sources.debian.net/src/shadow/1:4.5-1.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/shadow/1:4.5-1.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `six=1.12.0-1`

Binary Packages:

- `python3-six=1.12.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-six/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris six=1.12.0-1
'http://deb.debian.org/debian/pool/main/s/six/six_1.12.0-1.dsc' six_1.12.0-1.dsc 2320 SHA256:d5860b4ce1435d216587925ee34d43bfdbd9135bdd08aa70dde93e0c7cebb818
'http://deb.debian.org/debian/pool/main/s/six/six_1.12.0.orig.tar.gz' six_1.12.0.orig.tar.gz 32725 SHA256:d16a0141ec1a18405cd4ce8b4613101da75da0e9a7aec5bdd4fa804d0e0eba73
'http://deb.debian.org/debian/pool/main/s/six/six_1.12.0-1.debian.tar.xz' six_1.12.0-1.debian.tar.xz 4092 SHA256:f749f1a5531970b517aa39eca2599623fab09703512df82ed1a58f4f92b73568
```

Other potentially useful URLs:

- https://sources.debian.net/src/six/1.12.0-1/ (for browsing the source)
- https://sources.debian.net/src/six/1.12.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/six/1.12.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sqlite3=3.27.2-3+deb10u2`

Binary Packages:

- `libsqlite3-0:amd64=3.27.2-3+deb10u2`
- `libsqlite3-dev:amd64=3.27.2-3+deb10u2`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`, `/usr/share/doc/libsqlite3-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.27.2-3+deb10u2
'http://deb.debian.org/debian-security/pool/updates/main/s/sqlite3/sqlite3_3.27.2-3%2bdeb10u2.dsc' sqlite3_3.27.2-3+deb10u2.dsc 2430 SHA256:3632c99c503d9e62c373b4fa186b388e8a47034ffebc9a8b45d49358ec8fa67a
'http://deb.debian.org/debian-security/pool/updates/main/s/sqlite3/sqlite3_3.27.2.orig-www.tar.xz' sqlite3_3.27.2.orig-www.tar.xz 5602752 SHA256:b50bea0e1974b33bcb2cec4c29fcdeecd8f960020ce0310b15fb123938844bee
'http://deb.debian.org/debian-security/pool/updates/main/s/sqlite3/sqlite3_3.27.2.orig.tar.xz' sqlite3_3.27.2.orig.tar.xz 6844832 SHA256:6cb1606bbc38270739d256b5ab1cf94dccf5b2a3b4cbceb0545aac76f6ef40f2
'http://deb.debian.org/debian-security/pool/updates/main/s/sqlite3/sqlite3_3.27.2-3%2bdeb10u2.debian.tar.xz' sqlite3_3.27.2-3+deb10u2.debian.tar.xz 39712 SHA256:b5b83dc80049e944e7a534edecf53480551259324d1a0efd67da791f71593199
```

Other potentially useful URLs:

- https://sources.debian.net/src/sqlite3/3.27.2-3+deb10u2/ (for browsing the source)
- https://sources.debian.net/src/sqlite3/3.27.2-3+deb10u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sqlite3/3.27.2-3+deb10u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sudo=1.8.27-1+deb10u4`

Binary Packages:

- `sudo=1.8.27-1+deb10u4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/sudo/1.8.27-1+deb10u4/


### `dpkg` source package: `systemd=241-7~deb10u8`

Binary Packages:

- `libsystemd0:amd64=241-7~deb10u8`
- `libudev1:amd64=241-7~deb10u8`

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
$ apt-get source -qq --print-uris systemd=241-7~deb10u8
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_241-7%7edeb10u8.dsc' systemd_241-7~deb10u8.dsc 5101 SHA256:925ac30011dee81ab0e418f27515db2ddead0fa609b34eb7815cee7861c5a561
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_241.orig.tar.gz' systemd_241.orig.tar.gz 7640538 SHA256:b2561a8e1d10a2c248253f0dda31a85dd6d69f2b54177de55e02cd1d2778316e
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_241-7%7edeb10u8.debian.tar.xz' systemd_241-7~deb10u8.debian.tar.xz 182616 SHA256:6f5419d06f917a0565a55b9c9e7b9b55c094623a32b722f24431c20f7b48491b
```

Other potentially useful URLs:

- https://sources.debian.net/src/systemd/241-7~deb10u8/ (for browsing the source)
- https://sources.debian.net/src/systemd/241-7~deb10u8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/systemd/241-7~deb10u8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sysvinit=2.93-8`

Binary Packages:

- `sysvinit-utils=2.93-8`

Licenses: (parsed from: `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=2.93-8
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.93-8.dsc' sysvinit_2.93-8.dsc 2657 SHA256:84aa66bfa1c7963c179da26c015468d489b39bde19c85096b4d3e261e5fc043d
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.93.orig.tar.xz' sysvinit_2.93.orig.tar.xz 117580 SHA256:472d460e233d981488509a167125a82925c8c9aba6b5608cb22598fdf326a8ff
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.93.orig.tar.xz.asc' sysvinit_2.93.orig.tar.xz.asc 1076 SHA256:cf2b374a96276a16e3ef07ad2be596420f0d8d77227aad3144d7ab4ea165a4af
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.93-8.debian.tar.xz' sysvinit_2.93-8.debian.tar.xz 127136 SHA256:2db2ae46048acf743445545151cbc0bc5530eca1f2eec51df3175d8ab26edfa6
```

Other potentially useful URLs:

- https://sources.debian.net/src/sysvinit/2.93-8/ (for browsing the source)
- https://sources.debian.net/src/sysvinit/2.93-8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sysvinit/2.93-8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tar=1.30+dfsg-6`

Binary Packages:

- `tar=1.30+dfsg-6`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris tar=1.30+dfsg-6
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.30%2bdfsg-6.dsc' tar_1.30+dfsg-6.dsc 1995 SHA256:1515951c8a2fc9a43e822efd82d9043cdec4bec47ddca9e7f1311c73e6b00d0c
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.30%2bdfsg.orig.tar.xz' tar_1.30+dfsg.orig.tar.xz 1883220 SHA256:c02f3747ffe02017878303dde8b78e79cd220364c5e8048cf92320232e38912d
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.30%2bdfsg-6.debian.tar.xz' tar_1.30+dfsg-6.debian.tar.xz 22124 SHA256:b7caae6287992536353413e7a9b21301b29c32066bb6f36b7190074af9dd5c50
```

Other potentially useful URLs:

- https://sources.debian.net/src/tar/1.30+dfsg-6/ (for browsing the source)
- https://sources.debian.net/src/tar/1.30+dfsg-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tar/1.30+dfsg-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tinyxml2=7.0.0+dfsg-1`

Binary Packages:

- `libtinyxml2-6a:amd64=7.0.0+dfsg-1`
- `libtinyxml2-dev:amd64=7.0.0+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/libtinyxml2-6a/copyright`, `/usr/share/doc/libtinyxml2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `zlib/libpng`

Source:

```console
$ apt-get source -qq --print-uris tinyxml2=7.0.0+dfsg-1
'http://deb.debian.org/debian/pool/main/t/tinyxml2/tinyxml2_7.0.0%2bdfsg-1.dsc' tinyxml2_7.0.0+dfsg-1.dsc 2004 SHA256:243db448c69bd0acb4d3584f821138f44b187028da80c798e5aec62ba92cfebb
'http://deb.debian.org/debian/pool/main/t/tinyxml2/tinyxml2_7.0.0%2bdfsg.orig.tar.gz' tinyxml2_7.0.0+dfsg.orig.tar.gz 359355 SHA256:1eceb87c311b5bf44b2b7351fa6ffda810605d7de402348157262543cf7185ef
'http://deb.debian.org/debian/pool/main/t/tinyxml2/tinyxml2_7.0.0%2bdfsg-1.debian.tar.xz' tinyxml2_7.0.0+dfsg-1.debian.tar.xz 5744 SHA256:467024830a07cc587d30ad8a12a741ae787af15edd3da363495f64f4105de9cd
```

Other potentially useful URLs:

- https://sources.debian.net/src/tinyxml2/7.0.0+dfsg-1/ (for browsing the source)
- https://sources.debian.net/src/tinyxml2/7.0.0+dfsg-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tinyxml2/7.0.0+dfsg-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tzdata=2021a-0+deb10u8`

Binary Packages:

- `tzdata=2021a-0+deb10u8`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris tzdata=2021a-0+deb10u8
'http://deb.debian.org/debian-security/pool/updates/main/t/tzdata/tzdata_2021a-0%2bdeb10u8.dsc' tzdata_2021a-0+deb10u8.dsc 2023 SHA256:8d17f1f3620ef11e275fde3693f1f22495da66cdc40f2ec95ab804c7f4d56471
'http://deb.debian.org/debian-security/pool/updates/main/t/tzdata/tzdata_2021a.orig.tar.gz' tzdata_2021a.orig.tar.gz 411892 SHA256:39e7d2ba08c68cbaefc8de3227aab0dec2521be8042cf56855f7dc3a9fb14e08
'http://deb.debian.org/debian-security/pool/updates/main/t/tzdata/tzdata_2021a-0%2bdeb10u8.debian.tar.xz' tzdata_2021a-0+deb10u8.debian.tar.xz 115632 SHA256:e14dc836022592a32b8a99d33f9105e4a31258da39704e022a61a3c07824e49f
```

Other potentially useful URLs:

- https://sources.debian.net/src/tzdata/2021a-0+deb10u8/ (for browsing the source)
- https://sources.debian.net/src/tzdata/2021a-0+deb10u8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tzdata/2021a-0+deb10u8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `unbound=1.9.0-2+deb10u2`

Binary Packages:

- `libunbound8:amd64=1.9.0-2+deb10u2`

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
$ apt-get source -qq --print-uris unbound=1.9.0-2+deb10u2
'http://deb.debian.org/debian/pool/main/u/unbound/unbound_1.9.0-2%2bdeb10u2.dsc' unbound_1.9.0-2+deb10u2.dsc 3058 SHA256:2cc7711412bfed76f2b336e2a1c493cb7ae73f042271af001bf2174930244887
'http://deb.debian.org/debian/pool/main/u/unbound/unbound_1.9.0.orig.tar.gz' unbound_1.9.0.orig.tar.gz 5662176 SHA256:415af94b8392bc6b2c52e44ac8f17935cc6ddf2cc81edfb47c5be4ad205ab917
'http://deb.debian.org/debian/pool/main/u/unbound/unbound_1.9.0-2%2bdeb10u2.debian.tar.xz' unbound_1.9.0-2+deb10u2.debian.tar.xz 26772 SHA256:66230226f27f6a844854db76291b866aa432e75542c11e07e14b964e7a03d40e
```

Other potentially useful URLs:

- https://sources.debian.net/src/unbound/1.9.0-2+deb10u2/ (for browsing the source)
- https://sources.debian.net/src/unbound/1.9.0-2+deb10u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/unbound/1.9.0-2+deb10u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `unixodbc=2.3.6-0.1`

Binary Packages:

- `libodbc1:amd64=2.3.6-0.1`

Licenses: (parsed from: `/usr/share/doc/libodbc1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris unixodbc=2.3.6-0.1
'http://deb.debian.org/debian/pool/main/u/unixodbc/unixodbc_2.3.6-0.1.dsc' unixodbc_2.3.6-0.1.dsc 2002 SHA256:fd2eab8f404d0fff154ded1c7b3608ee2f3a7016a2459ee9a72415018c03423c
'http://deb.debian.org/debian/pool/main/u/unixodbc/unixodbc_2.3.6.orig.tar.gz' unixodbc_2.3.6.orig.tar.gz 2083106 SHA256:c7a1327a756653088f1f2c8566cd25689703eeb904728d1d971c9b31ed1a94db
'http://deb.debian.org/debian/pool/main/u/unixodbc/unixodbc_2.3.6-0.1.debian.tar.xz' unixodbc_2.3.6-0.1.debian.tar.xz 17932 SHA256:eb191a58b750e7ab3a8f0eca353fc90c4f82cdfefd99988623947b4120eda3e5
```

Other potentially useful URLs:

- https://sources.debian.net/src/unixodbc/2.3.6-0.1/ (for browsing the source)
- https://sources.debian.net/src/unixodbc/2.3.6-0.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/unixodbc/2.3.6-0.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `util-linux=2.33.1-0.1`

Binary Packages:

- `bsdutils=1:2.33.1-0.1`
- `fdisk=2.33.1-0.1`
- `libblkid1:amd64=2.33.1-0.1`
- `libfdisk1:amd64=2.33.1-0.1`
- `libmount1:amd64=2.33.1-0.1`
- `libsmartcols1:amd64=2.33.1-0.1`
- `libuuid1:amd64=2.33.1-0.1`
- `mount=2.33.1-0.1`
- `util-linux=2.33.1-0.1`
- `uuid-dev:amd64=2.33.1-0.1`

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
$ apt-get source -qq --print-uris util-linux=2.33.1-0.1
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.33.1-0.1.dsc' util-linux_2.33.1-0.1.dsc 3988 SHA256:b5ee1ff0a8de37c3e4d7c0c29b7571b30ba4bea1d37e55e3d1dac3a3cbc50827
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.33.1.orig.tar.xz' util-linux_2.33.1.orig.tar.xz 4650936 SHA256:c14bd9f3b6e1792b90db87696e87ec643f9d63efa0a424f092a5a6b2f2dbef21
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.33.1-0.1.debian.tar.xz' util-linux_2.33.1-0.1.debian.tar.xz 81780 SHA256:07bfeb8298fab559dec2091463cab343785853bcae6c92c0806b7639e105913a
```

Other potentially useful URLs:

- https://sources.debian.net/src/util-linux/2.33.1-0.1/ (for browsing the source)
- https://sources.debian.net/src/util-linux/2.33.1-0.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/util-linux/2.33.1-0.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xml-core=0.18+nmu1`

Binary Packages:

- `xml-core=0.18+nmu1`

Licenses: (parsed from: `/usr/share/doc/xml-core/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris xml-core=0.18+nmu1
'http://deb.debian.org/debian/pool/main/x/xml-core/xml-core_0.18%2bnmu1.dsc' xml-core_0.18+nmu1.dsc 1632 SHA256:3b4bc034193f99750141611ae1c836c6b742c88ed0af1420051f3fcae30bf5ae
'http://deb.debian.org/debian/pool/main/x/xml-core/xml-core_0.18%2bnmu1.tar.xz' xml-core_0.18+nmu1.tar.xz 21312 SHA256:3e07592404b8ac38924fb650227cf5c9dcfc9933bd632eb4430635cd54898471
```

Other potentially useful URLs:

- https://sources.debian.net/src/xml-core/0.18+nmu1/ (for browsing the source)
- https://sources.debian.net/src/xml-core/0.18+nmu1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xml-core/0.18+nmu1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xz-utils=5.2.4-1+deb10u1`

Binary Packages:

- `liblzma5:amd64=5.2.4-1+deb10u1`

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
$ apt-get source -qq --print-uris xz-utils=5.2.4-1+deb10u1
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.4-1%2bdeb10u1.dsc' xz-utils_5.2.4-1+deb10u1.dsc 2429 SHA256:6da82f913d22a8385837b3bb4fb9a89a34a07dea21ea6e73d22b9e225a5c895f
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.4.orig.tar.xz' xz-utils_5.2.4.orig.tar.xz 1053868 SHA256:9717ae363760dedf573dad241420c5fea86256b65bc21d2cf71b2b12f0544f4b
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.4-1%2bdeb10u1.debian.tar.xz' xz-utils_5.2.4-1+deb10u1.debian.tar.xz 136768 SHA256:fcf83de6468a928427734bca3a39d3813b6f0b6b5beeffaede35bba7f18e3746
```

Other potentially useful URLs:

- https://sources.debian.net/src/xz-utils/5.2.4-1+deb10u1/ (for browsing the source)
- https://sources.debian.net/src/xz-utils/5.2.4-1+deb10u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xz-utils/5.2.4-1+deb10u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `zlib=1:1.2.11.dfsg-1+deb10u2`

Binary Packages:

- `zlib1g:amd64=1:1.2.11.dfsg-1+deb10u2`
- `zlib1g-dev:amd64=1:1.2.11.dfsg-1+deb10u2`

Licenses: (parsed from: `/usr/share/doc/zlib1g/copyright`, `/usr/share/doc/zlib1g-dev/copyright`)

- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.11.dfsg-1+deb10u2
'http://deb.debian.org/debian-security/pool/updates/main/z/zlib/zlib_1.2.11.dfsg-1%2bdeb10u2.dsc' zlib_1.2.11.dfsg-1+deb10u2.dsc 2619 SHA256:6166bc693b849b1547e0870b91186c43c9cc5187c9a6eb0b44f9b293d687efd9
'http://deb.debian.org/debian-security/pool/updates/main/z/zlib/zlib_1.2.11.dfsg.orig.tar.gz' zlib_1.2.11.dfsg.orig.tar.gz 370248 SHA256:80c481411a4fe8463aeb8270149a0e80bb9eaf7da44132b6e16f2b5af01bc899
'http://deb.debian.org/debian-security/pool/updates/main/z/zlib/zlib_1.2.11.dfsg-1%2bdeb10u2.debian.tar.xz' zlib_1.2.11.dfsg-1+deb10u2.debian.tar.xz 23772 SHA256:dd1c6fa2c25e23499713ac7e891d4c1218676240855c8d24604b9ae7c8eea2cf
```

Other potentially useful URLs:

- https://sources.debian.net/src/zlib/1:1.2.11.dfsg-1+deb10u2/ (for browsing the source)
- https://sources.debian.net/src/zlib/1:1.2.11.dfsg-1+deb10u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/zlib/1:1.2.11.dfsg-1+deb10u2/ (for access to the source package after it no longer exists in the archive)
