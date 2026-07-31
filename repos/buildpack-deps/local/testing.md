# `buildpack-deps:forky`

## Docker Metadata

- Image ID: `sha256:f6870c41902827a5b5692d9234305b52555d0ed370790f72335940e671bf455c`
- Created: `2026-07-14T03:18:05.700499193Z`
- Virtual Size: ~ 938.08 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Command: `["bash"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `acl=2.4.0-1`

Binary Packages:

- `libacl1:amd64=2.4.0-1`

Licenses: (parsed from: `/usr/share/doc/libacl1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris acl=2.4.0-1
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.4.0-1.dsc' acl_2.4.0-1.dsc 2624 SHA256:b987ebbeb3d498794bad29cd65301b77384978493d8765c94dba8bad8fa325b6
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.4.0.orig.tar.xz' acl_2.4.0.orig.tar.xz 384828 SHA256:e661131456d2708a01c614a0f400e11d7d1bfaeb6f3e74b75bb980b72f0161a3
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.4.0.orig.tar.xz.asc' acl_2.4.0.orig.tar.xz.asc 833 SHA256:5f4f0b9b78821764fe6b88e32aef6ec519628522c211c36706bcb78d6f3f036b
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.4.0-1.debian.tar.xz' acl_2.4.0-1.debian.tar.xz 47932 SHA256:65931c2fb3e821bda67f8d8d72d77e99ac61502748dcdf38b6805fe89339085e
```

Other potentially useful URLs:

- https://sources.debian.net/src/acl/2.4.0-1/ (for browsing the source)
- https://sources.debian.net/src/acl/2.4.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/acl/2.4.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `apr-util=1.6.3-4`

Binary Packages:

- `libaprutil1t64:amd64=1.6.3-4+b1`

Licenses: (parsed from: `/usr/share/doc/libaprutil1t64/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr-util=1.6.3-4
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.6.3-4.dsc' apr-util_1.6.3-4.dsc 2899 SHA256:331fa0cbca37f7406680fa9dbbe45fe5db9039c7e75cad0463af83be48239874
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.6.3.orig.tar.bz2' apr-util_1.6.3.orig.tar.bz2 432692 SHA256:a41076e3710746326c3945042994ad9a4fcac0ce0277dd8fea076fec3c9772b5
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.6.3.orig.tar.bz2.asc' apr-util_1.6.3.orig.tar.bz2.asc 833 SHA256:5fd08491a2cb35fdbf9fa93d753cfd25e59fe58a75a3f3ed62582ebf2a5b3a51
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.6.3-4.debian.tar.xz' apr-util_1.6.3-4.debian.tar.xz 39104 SHA256:d5daefd55fe6d5c9d322c69f3b86f7acdb22c96b2b6f8f6f42c0086f3a383178
```

Other potentially useful URLs:

- https://sources.debian.net/src/apr-util/1.6.3-4/ (for browsing the source)
- https://sources.debian.net/src/apr-util/1.6.3-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/apr-util/1.6.3-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `apr=1.7.6-3`

Binary Packages:

- `libapr1t64:amd64=1.7.6-3+b1`

Licenses: (parsed from: `/usr/share/doc/libapr1t64/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr=1.7.6-3
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.7.6-3.dsc' apr_1.7.6-3.dsc 2402 SHA256:8a2947b338a2247bc6b58146c57a8d3db3253cffb9a63b62360e164ea4c7a37d
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.7.6.orig.tar.bz2' apr_1.7.6.orig.tar.bz2 899670 SHA256:49030d92d2575da735791b496dc322f3ce5cff9494779ba8cc28c7f46c5deb32
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.7.6.orig.tar.bz2.asc' apr_1.7.6.orig.tar.bz2.asc 898 SHA256:24c2f1ab9c7b9cc9410f44ddd7a659316993685fd9c4f8c4b7bc67eb3e83e331
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.7.6-3.debian.tar.xz' apr_1.7.6-3.debian.tar.xz 42384 SHA256:62e334f0ffc583a3328e28e5749249fdaa56f1ee31208f80b869757192901034
```

Other potentially useful URLs:

- https://sources.debian.net/src/apr/1.7.6-3/ (for browsing the source)
- https://sources.debian.net/src/apr/1.7.6-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/apr/1.7.6-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `apt=3.3.1`

Binary Packages:

- `apt=3.3.1`
- `libapt-pkg7.0:amd64=3.3.1`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg7.0/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `curl`

Source:

```console
$ apt-get source -qq --print-uris apt=3.3.1
'http://deb.debian.org/debian/pool/main/a/apt/apt_3.3.1.dsc' apt_3.3.1.dsc 3132 SHA256:dbb1ef739a7d564547b8d4791d15044e52dbf07a15d8fde76352db1ef96e095f
'http://deb.debian.org/debian/pool/main/a/apt/apt_3.3.1.tar.xz' apt_3.3.1.tar.xz 2478544 SHA256:bc979b233f864ce08f177ac40118d44406c06179aec4d684dd1227d61e40673a
```

Other potentially useful URLs:

- https://sources.debian.net/src/apt/3.3.1/ (for browsing the source)
- https://sources.debian.net/src/apt/3.3.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/apt/3.3.1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `attr=1:2.6.0-1`

Binary Packages:

- `libattr1:amd64=1:2.6.0-1`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris attr=1:2.6.0-1
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.6.0-1.dsc' attr_2.6.0-1.dsc 2616 SHA256:201f355d744a87cfba8bbbcac317334ae4546ec53f37df75355fa67bf26e991b
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.6.0.orig.tar.xz' attr_2.6.0.orig.tar.xz 343608 SHA256:6c8a2148a7b85043b68492bce43316b0e2e214fc4e628c7ede078e76e216330b
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.6.0.orig.tar.xz.asc' attr_2.6.0.orig.tar.xz.asc 862 SHA256:2af9e7ab3f24f1b4c0ec753a788c6ba588460d80f1ef852df23e1dfa2575e0ec
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.6.0-1.debian.tar.xz' attr_2.6.0-1.debian.tar.xz 56048 SHA256:b2a04e8170dbab934c5d43087deffeaa42168fdf3f31933ac28f62cb7995c6ab
```

Other potentially useful URLs:

- https://sources.debian.net/src/attr/1:2.6.0-1/ (for browsing the source)
- https://sources.debian.net/src/attr/1:2.6.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/attr/1:2.6.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `audit=1:4.1.2-1`

Binary Packages:

- `libaudit-common=1:4.1.2-1`
- `libaudit1:amd64=1:4.1.2-1+b1`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:4.1.2-1
'http://deb.debian.org/debian/pool/main/a/audit/audit_4.1.2-1.dsc' audit_4.1.2-1.dsc 2546 SHA256:5443f3ff043dd30cba1549f93940928d04c90cdc7598741a19f722d4109a7f4b
'http://deb.debian.org/debian/pool/main/a/audit/audit_4.1.2.orig.tar.gz' audit_4.1.2.orig.tar.gz 656095 SHA256:5c638bbeef9adb6c5715d3a60f0f5adb93e9b81633608af13d23c61f5e5db04d
'http://deb.debian.org/debian/pool/main/a/audit/audit_4.1.2-1.debian.tar.xz' audit_4.1.2-1.debian.tar.xz 19712 SHA256:1cb30c0bc4bed825cbac829cec4b840b9d0726dedaf25f57cbc3af9bc7d7bcc2
```

Other potentially useful URLs:

- https://sources.debian.net/src/audit/1:4.1.2-1/ (for browsing the source)
- https://sources.debian.net/src/audit/1:4.1.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/audit/1:4.1.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `autoconf=2.73-2`

Binary Packages:

- `autoconf=2.73-2`

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
$ apt-get source -qq --print-uris autoconf=2.73-2
'http://deb.debian.org/debian/pool/main/a/autoconf/autoconf_2.73-2.dsc' autoconf_2.73-2.dsc 2122 SHA256:d662619330ca9bd0afb28b244e5fbb4f41a9ae6b3d3819a11655157674ad8cc6
'http://deb.debian.org/debian/pool/main/a/autoconf/autoconf_2.73.orig.tar.xz' autoconf_2.73.orig.tar.xz 1417428 SHA256:9fd672b1c8425fac2fa67fa0477b990987268b90ff36d5f016dae57be0d6b52e
'http://deb.debian.org/debian/pool/main/a/autoconf/autoconf_2.73-2.debian.tar.xz' autoconf_2.73-2.debian.tar.xz 21036 SHA256:2b78b3a2368582aebfb35e8430f385377b68542b3aab15b8b3d52e4bf42c7644
```

Other potentially useful URLs:

- https://sources.debian.net/src/autoconf/2.73-2/ (for browsing the source)
- https://sources.debian.net/src/autoconf/2.73-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/autoconf/2.73-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `automake=1:1.18.1-4`

Binary Packages:

- `automake=1:1.18.1-4`

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
$ apt-get source -qq --print-uris automake=1:1.18.1-4
'http://deb.debian.org/debian/pool/main/a/automake/automake_1.18.1-4.dsc' automake_1.18.1-4.dsc 2483 SHA256:c0ef26b29a88526ecc7d19e4948522027716bcb904a7358445e5ac50facd22d7
'http://deb.debian.org/debian/pool/main/a/automake/automake_1.18.1.orig.tar.xz' automake_1.18.1.orig.tar.xz 1652392 SHA256:168aa363278351b89af56684448f525a5bce5079d0b6842bd910fdd3f1646887
'http://deb.debian.org/debian/pool/main/a/automake/automake_1.18.1.orig.tar.xz.asc' automake_1.18.1.orig.tar.xz.asc 488 SHA256:728ce05b02f123ea360ab9d168111bc98470afc7568253e93ee2a7582ef5ddb4
'http://deb.debian.org/debian/pool/main/a/automake/automake_1.18.1-4.debian.tar.xz' automake_1.18.1-4.debian.tar.xz 22816 SHA256:0205a6b27795c2ea015683a06f461ee9f4856525f4084157e66b657b9ddfe2c3
```

Other potentially useful URLs:

- https://sources.debian.net/src/automake/1:1.18.1-4/ (for browsing the source)
- https://sources.debian.net/src/automake/1:1.18.1-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/automake/1:1.18.1-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `autotools-dev=20240727.1+nmu1`

Binary Packages:

- `autotools-dev=20240727.1+nmu1`

Licenses: (parsed from: `/usr/share/doc/autotools-dev/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris autotools-dev=20240727.1+nmu1
'http://deb.debian.org/debian/pool/main/a/autotools-dev/autotools-dev_20240727.1%2bnmu1.dsc' autotools-dev_20240727.1+nmu1.dsc 1706 SHA256:703a3b7c09954419d0e72797843ec8492434932d49416f0d8b0df929eb5fdd56
'http://deb.debian.org/debian/pool/main/a/autotools-dev/autotools-dev_20240727.1%2bnmu1.tar.xz' autotools-dev_20240727.1+nmu1.tar.xz 99752 SHA256:7aca74cad91197e752dfc4b8d8d03b97bc1bdd0f7b1a6a2b646ba151ad3a1a85
```

Other potentially useful URLs:

- https://sources.debian.net/src/autotools-dev/20240727.1+nmu1/ (for browsing the source)
- https://sources.debian.net/src/autotools-dev/20240727.1+nmu1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/autotools-dev/20240727.1+nmu1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `base-files=14.2`

Binary Packages:

- `base-files=14.2`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL-2`
- `GPL-2+`
- `verbatim`

Source:

```console
$ apt-get source -qq --print-uris base-files=14.2
'http://deb.debian.org/debian/pool/main/b/base-files/base-files_14.2.dsc' base-files_14.2.dsc 1215 SHA256:e66dac428bfca466d6d62694f0b6436c6d7cf86c193acc9cc1bb0b59991f17c3
'http://deb.debian.org/debian/pool/main/b/base-files/base-files_14.2.tar.xz' base-files_14.2.tar.xz 83180 SHA256:3a4e17a419df523a5ad53d1593b70d242a2163058744aaa69fb505ba2a8fba2e
```

Other potentially useful URLs:

- https://sources.debian.net/src/base-files/14.2/ (for browsing the source)
- https://sources.debian.net/src/base-files/14.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/base-files/14.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `base-passwd=3.6.8`

Binary Packages:

- `base-passwd=3.6.8`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.6.8
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.6.8.dsc' base-passwd_3.6.8.dsc 2044 SHA256:e76e572d2653f2b8eda64c662f5b4310a978ef1fdd039410ace5f6355c3af7d6
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.6.8.tar.xz' base-passwd_3.6.8.tar.xz 61840 SHA256:fab3d0e6e8b641e116bda9bd5f7a7ed24482384c1513f6a369b506327fbc8dde
```

Other potentially useful URLs:

- https://sources.debian.net/src/base-passwd/3.6.8/ (for browsing the source)
- https://sources.debian.net/src/base-passwd/3.6.8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/base-passwd/3.6.8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `bash=5.3-3`

Binary Packages:

- `bash=5.3-3`

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
$ apt-get source -qq --print-uris bash=5.3-3
'http://deb.debian.org/debian/pool/main/b/bash/bash_5.3-3.dsc' bash_5.3-3.dsc 2141 SHA256:8675ad0389cda5d0494f4b6b1e08a03c83a55a44e303e02d91a65dc58749b522
'http://deb.debian.org/debian/pool/main/b/bash/bash_5.3.orig.tar.xz' bash_5.3.orig.tar.xz 5571836 SHA256:a70de6bb41f5e192534a5a1836b1d7fad9a8d4818a6e1506d70f38441552c17a
'http://deb.debian.org/debian/pool/main/b/bash/bash_5.3-3.debian.tar.xz' bash_5.3-3.debian.tar.xz 91936 SHA256:d2542e1e6c33511266814496916a72a7a5aa50f690fba7f37a1308fc73f6407a
```

Other potentially useful URLs:

- https://sources.debian.net/src/bash/5.3-3/ (for browsing the source)
- https://sources.debian.net/src/bash/5.3-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/bash/5.3-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `binutils=2.46.50.20260617-1`

Binary Packages:

- `binutils=2.46.50.20260617-1`
- `binutils-common:amd64=2.46.50.20260617-1`
- `binutils-x86-64-linux-gnu=2.46.50.20260617-1`
- `libbinutils:amd64=2.46.50.20260617-1`
- `libctf-nobfd0:amd64=2.46.50.20260617-1`
- `libctf0:amd64=2.46.50.20260617-1`
- `libgprofng0:amd64=2.46.50.20260617-1`
- `libsframe3:amd64=2.46.50.20260617-1`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`, `/usr/share/doc/binutils-common/copyright`, `/usr/share/doc/binutils-x86-64-linux-gnu/copyright`, `/usr/share/doc/libbinutils/copyright`, `/usr/share/doc/libctf-nobfd0/copyright`, `/usr/share/doc/libctf0/copyright`, `/usr/share/doc/libgprofng0/copyright`, `/usr/share/doc/libsframe3/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris binutils=2.46.50.20260617-1
'http://deb.debian.org/debian/pool/main/b/binutils/binutils_2.46.50.20260617-1.dsc' binutils_2.46.50.20260617-1.dsc 11607 SHA256:65c116550211ca4e80a4b7ccf35fce772e0960ad5730d4684b3b8d2b25f16eee
'http://deb.debian.org/debian/pool/main/b/binutils/binutils_2.46.50.20260617.orig.tar.xz' binutils_2.46.50.20260617.orig.tar.xz 24994756 SHA256:a175710b02aa53188a2fe01725b6f282e4601dd82be2edefa269ffb9f1e89437
'http://deb.debian.org/debian/pool/main/b/binutils/binutils_2.46.50.20260617-1.debian.tar.xz' binutils_2.46.50.20260617-1.debian.tar.xz 124240 SHA256:670ffffc01d5ccb43628056335295af0397b6bb4656f3f8a67a6db1dd475a2f2
```

Other potentially useful URLs:

- https://sources.debian.net/src/binutils/2.46.50.20260617-1/ (for browsing the source)
- https://sources.debian.net/src/binutils/2.46.50.20260617-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/binutils/2.46.50.20260617-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `brotli=1.2.0-3`

Binary Packages:

- `libbrotli-dev:amd64=1.2.0-3`
- `libbrotli1:amd64=1.2.0-3`

Licenses: (parsed from: `/usr/share/doc/libbrotli-dev/copyright`, `/usr/share/doc/libbrotli1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris brotli=1.2.0-3
'http://deb.debian.org/debian/pool/main/b/brotli/brotli_1.2.0-3.dsc' brotli_1.2.0-3.dsc 2282 SHA256:81fefbd04efc85b4700bb2a76fbfe3418102289ad2ae1f392d0648d10a5ef9ac
'http://deb.debian.org/debian/pool/main/b/brotli/brotli_1.2.0.orig.tar.gz' brotli_1.2.0.orig.tar.gz 646398 SHA256:eb5f7dadf215d0670665fd81566e1fe2dfdc154d983f09142de7299df4c182e6
'http://deb.debian.org/debian/pool/main/b/brotli/brotli_1.2.0-3.debian.tar.xz' brotli_1.2.0-3.debian.tar.xz 5896 SHA256:d227ff2af4725de3f9fe994796df6416f4a050265c82188e16402742f771f623
```

Other potentially useful URLs:

- https://sources.debian.net/src/brotli/1.2.0-3/ (for browsing the source)
- https://sources.debian.net/src/brotli/1.2.0-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/brotli/1.2.0-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `bzip2=1.0.8-6`

Binary Packages:

- `bzip2=1.0.8-6+b2`
- `libbz2-1.0:amd64=1.0.8-6+b2`
- `libbz2-dev:amd64=1.0.8-6+b2`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/libbz2-1.0/copyright`, `/usr/share/doc/libbz2-dev/copyright`)

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

### `dpkg` source package: `ca-certificates=20260601`

Binary Packages:

- `ca-certificates=20260601`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20260601
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20260601.dsc' ca-certificates_20260601.dsc 1766 SHA256:a7298ff7aad5801b95de6463e3ed17e63325543c736918dc8239a9258d19c261
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20260601.tar.xz' ca-certificates_20260601.tar.xz 265368 SHA256:7ab6301f7f34eef90a4d278647c260bc0762e0e14561f4649854cf4b0d4bea21
```

Other potentially useful URLs:

- https://sources.debian.net/src/ca-certificates/20260601/ (for browsing the source)
- https://sources.debian.net/src/ca-certificates/20260601/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ca-certificates/20260601/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cairo=1.18.4-3`

Binary Packages:

- `libcairo2:amd64=1.18.4-3+b1`

Licenses: (parsed from: `/usr/share/doc/libcairo2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris cairo=1.18.4-3
'http://deb.debian.org/debian/pool/main/c/cairo/cairo_1.18.4-3.dsc' cairo_1.18.4-3.dsc 2784 SHA256:5dfb99f2896a2f23810cde3e80e930bd917079b143e4e984feb44ba018590d2a
'http://deb.debian.org/debian/pool/main/c/cairo/cairo_1.18.4.orig.tar.xz' cairo_1.18.4.orig.tar.xz 32578804 SHA256:445ed8208a6e4823de1226a74ca319d3600e83f6369f99b14265006599c32ccb
'http://deb.debian.org/debian/pool/main/c/cairo/cairo_1.18.4-3.debian.tar.xz' cairo_1.18.4-3.debian.tar.xz 29988 SHA256:25cb656a9c4165f36950b01710683efce6b5b0e30b80d81d519d7c3d1a2f7b2a
```

Other potentially useful URLs:

- https://sources.debian.net/src/cairo/1.18.4-3/ (for browsing the source)
- https://sources.debian.net/src/cairo/1.18.4-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cairo/1.18.4-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cdebconf=0.283`

Binary Packages:

- `libdebconfclient0:amd64=0.283`

Licenses: (parsed from: `/usr/share/doc/libdebconfclient0/copyright`)

- `BSD-2-Clause`
- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.283
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.283.dsc' cdebconf_0.283.dsc 2784 SHA256:ba3faa47af04d773844b242ddc92d917b09d2cbaf8e422d25ecaa5439d3c58ce
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.283.tar.xz' cdebconf_0.283.tar.xz 285936 SHA256:2ffade6f06f7ff83e1264b0d83a1fb769dc6bac4cd612d3e3079f85f56695fb1
```

Other potentially useful URLs:

- https://sources.debian.net/src/cdebconf/0.283/ (for browsing the source)
- https://sources.debian.net/src/cdebconf/0.283/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cdebconf/0.283/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `coreutils=9.10-1`

Binary Packages:

- `coreutils=9.10-1`

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
$ apt-get source -qq --print-uris coreutils=9.10-1
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_9.10-1.dsc' coreutils_9.10-1.dsc 2121 SHA256:4d924822bcf969e83dd8b98fd42194bbad1160a09d8338019e44ecc6c315e414
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_9.10.orig.tar.xz' coreutils_9.10.orig.tar.xz 6507600 SHA256:16535a9adf0b10037364e2d612aad3d9f4eca3a344949ced74d12faf4bd51d25
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_9.10.orig.tar.xz.asc' coreutils_9.10.orig.tar.xz.asc 833 SHA256:4faaa822d78cb8f7c67b6c89c92b107cc973a09bece6da6ab12285218e0e4105
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_9.10-1.debian.tar.xz' coreutils_9.10-1.debian.tar.xz 22484 SHA256:eb9bb80fdee97fc5ae7550dfad6fbdc666483e354c813844aa775245ffcd84a6
```

Other potentially useful URLs:

- https://sources.debian.net/src/coreutils/9.10-1/ (for browsing the source)
- https://sources.debian.net/src/coreutils/9.10-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/coreutils/9.10-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `curl=8.20.0-5`

Binary Packages:

- `curl=8.20.0-5`
- `libcurl3t64-gnutls:amd64=8.20.0-5`
- `libcurl4-gnutls:amd64=8.20.0-5`
- `libcurl4-openssl-dev:amd64=8.20.0-5`
- `libcurl4t64:amd64=8.20.0-5`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3t64-gnutls/copyright`, `/usr/share/doc/libcurl4-gnutls/copyright`, `/usr/share/doc/libcurl4-openssl-dev/copyright`, `/usr/share/doc/libcurl4t64/copyright`)

- `BSD-3-Clause`
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

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/curl/8.20.0-5/


### `dpkg` source package: `cyrus-sasl2=2.1.28+dfsg1-11`

Binary Packages:

- `libsasl2-2:amd64=2.1.28+dfsg1-11`
- `libsasl2-modules-db:amd64=2.1.28+dfsg1-11`

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
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.28+dfsg1-11
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.28%2bdfsg1-11.dsc' cyrus-sasl2_2.1.28+dfsg1-11.dsc 3479 SHA256:60dfcaf966bf9bc1211ac307d36a635059a5ba364a98c1d9efcda8a0f5900d74
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.28%2bdfsg1.orig.tar.xz' cyrus-sasl2_2.1.28+dfsg1.orig.tar.xz 794540 SHA256:e796a5d85d1a85e1b433d43504e467f9075c7ebc0b45730a3996cf11b1deada4
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.28%2bdfsg1-11.debian.tar.xz' cyrus-sasl2_2.1.28+dfsg1-11.debian.tar.xz 102628 SHA256:9efbb3e4a6010aa7f25d1a73d9b42a63b10e29058c2083b0f0db3fe58cd49a77
```

Other potentially useful URLs:

- https://sources.debian.net/src/cyrus-sasl2/2.1.28+dfsg1-11/ (for browsing the source)
- https://sources.debian.net/src/cyrus-sasl2/2.1.28+dfsg1-11/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cyrus-sasl2/2.1.28+dfsg1-11/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `dav1d=1.5.3-1`

Binary Packages:

- `libdav1d7:amd64=1.5.3-1+b2`

Licenses: (parsed from: `/usr/share/doc/libdav1d7/copyright`)

- `BSD-2-clause`
- `ISC`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/dav1d/1.5.3-1/


### `dpkg` source package: `db-defaults=5.3.4`

Binary Packages:

- `libdb-dev:amd64=5.3.4+b1`

Licenses: (parsed from: `/usr/share/doc/libdb-dev/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris db-defaults=5.3.4
'http://deb.debian.org/debian/pool/main/d/db-defaults/db-defaults_5.3.4.dsc' db-defaults_5.3.4.dsc 1585 SHA256:0709e552cc31edcad465fc057bb04fcfd9f0467637125374bed81432fb922bef
'http://deb.debian.org/debian/pool/main/d/db-defaults/db-defaults_5.3.4.tar.xz' db-defaults_5.3.4.tar.xz 2600 SHA256:1774d9974b0afba1d8fc02186ed05e38287a97f94623b440b5e7606831e9c442
```

Other potentially useful URLs:

- https://sources.debian.net/src/db-defaults/5.3.4/ (for browsing the source)
- https://sources.debian.net/src/db-defaults/5.3.4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/db-defaults/5.3.4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `db5.3=5.3.28+dfsg2-11`

Binary Packages:

- `libdb5.3-dev=5.3.28+dfsg2-11+b1`
- `libdb5.3t64:amd64=5.3.28+dfsg2-11+b1`

Licenses: (parsed from: `/usr/share/doc/libdb5.3-dev/copyright`, `/usr/share/doc/libdb5.3t64/copyright`)

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
$ apt-get source -qq --print-uris db5.3=5.3.28+dfsg2-11
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg2-11.dsc' db5.3_5.3.28+dfsg2-11.dsc 2032 SHA256:0550eb464a02703e35d86fbc4a7ac0736ab30b2a0ebe0818c490f7106d1d4230
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg2.orig.tar.xz' db5.3_5.3.28+dfsg2.orig.tar.xz 21287688 SHA256:ad41b507415dec8316e828b2230242af2251d2c86eefa3c7aa9ef47c5239ef33
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg2-11.debian.tar.xz' db5.3_5.3.28+dfsg2-11.debian.tar.xz 36580 SHA256:701601b7398c1ff8714594287db6c042b2cbc2e15bc98e85afd77c4324d3e3aa
```

Other potentially useful URLs:

- https://sources.debian.net/src/db5.3/5.3.28+dfsg2-11/ (for browsing the source)
- https://sources.debian.net/src/db5.3/5.3.28+dfsg2-11/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/db5.3/5.3.28+dfsg2-11/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debconf=1.5.92`

Binary Packages:

- `debconf=1.5.92`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.92
'http://deb.debian.org/debian/pool/main/d/debconf/debconf_1.5.92.dsc' debconf_1.5.92.dsc 2202 SHA256:612d1b51713fc95b205b5f222af036b1541b13734e1f183a3f37e637eda187a9
'http://deb.debian.org/debian/pool/main/d/debconf/debconf_1.5.92.tar.xz' debconf_1.5.92.tar.xz 610068 SHA256:72265cb0315c0cc58a0d5abf0c032ffac2d071c8ba05bf830f9e0e73ca8ab219
```

Other potentially useful URLs:

- https://sources.debian.net/src/debconf/1.5.92/ (for browsing the source)
- https://sources.debian.net/src/debconf/1.5.92/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debconf/1.5.92/ (for access to the source package after it no longer exists in the archive)

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
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.12-1.dsc' diffutils_3.12-1.dsc 1875 SHA256:eb99be6cc60e71249bd119dfb66ada6a8c0fdd2e1bb8b1325f4801b813ad820c
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.12.orig.tar.xz' diffutils_3.12.orig.tar.xz 1938800 SHA256:7c8b7f9fc8609141fdea9cece85249d308624391ff61dedaf528fcb337727dfd
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.12.orig.tar.xz.asc' diffutils_3.12.orig.tar.xz.asc 833 SHA256:ad05b321b2f23441275af68072123a5907b05ad989335a9f1f6e3781cb0846a6
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.12-1.debian.tar.xz' diffutils_3.12-1.debian.tar.xz 14752 SHA256:ffacb3eb9ad1a8cc90768e13e1d09da1b71cfab3cb99b1e0bd1f0ba26f89dd46
```

Other potentially useful URLs:

- https://sources.debian.net/src/diffutils/1:3.12-1/ (for browsing the source)
- https://sources.debian.net/src/diffutils/1:3.12-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/diffutils/1:3.12-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `djvulibre=3.5.30-1`

Binary Packages:

- `libdjvulibre-dev:amd64=3.5.30-1`
- `libdjvulibre-text=3.5.30-1`
- `libdjvulibre21:amd64=3.5.30-1`

Licenses: (parsed from: `/usr/share/doc/libdjvulibre-dev/copyright`, `/usr/share/doc/libdjvulibre-text/copyright`, `/usr/share/doc/libdjvulibre21/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris djvulibre=3.5.30-1
'http://deb.debian.org/debian/pool/main/d/djvulibre/djvulibre_3.5.30-1.dsc' djvulibre_3.5.30-1.dsc 2652 SHA256:93d0acae9cedd33aaae625e9d1b93494bd9e06b0bd14ee89fea1fc993e2d1cd1
'http://deb.debian.org/debian/pool/main/d/djvulibre/djvulibre_3.5.30.orig.tar.xz' djvulibre_3.5.30.orig.tar.xz 2959648 SHA256:459ab62d1838fdfc947bf56bce71a7b3fa35f4836cc9b0f32c0017eed8417c2a
'http://deb.debian.org/debian/pool/main/d/djvulibre/djvulibre_3.5.30-1.debian.tar.xz' djvulibre_3.5.30-1.debian.tar.xz 16344 SHA256:201c2c5c73df7d6533305cce926899be110c25af423291d9beb42f2128814f8a
```

Other potentially useful URLs:

- https://sources.debian.net/src/djvulibre/3.5.30-1/ (for browsing the source)
- https://sources.debian.net/src/djvulibre/3.5.30-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/djvulibre/3.5.30-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dpkg=1.23.7`

Binary Packages:

- `dpkg=1.23.7`
- `dpkg-dev=1.23.7`
- `libdpkg-perl=1.23.7`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`, `/usr/share/doc/dpkg-dev/copyright`, `/usr/share/doc/libdpkg-perl/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.23.7
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.23.7.dsc' dpkg_1.23.7.dsc 3474 SHA256:1b1013edd98d1ef7b0d7c943f8a57a4cfffb6d54e8d1e00bda36f34f5aaeca83
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.23.7.tar.xz' dpkg_1.23.7.tar.xz 5836724 SHA256:60fe2be72e5f0a4bb0ac7baff3b1697ebc5cfaac1885f66649521571a97440ad
```

Other potentially useful URLs:

- https://sources.debian.net/src/dpkg/1.23.7/ (for browsing the source)
- https://sources.debian.net/src/dpkg/1.23.7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dpkg/1.23.7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `e2fsprogs=1.47.4-1`

Binary Packages:

- `comerr-dev:amd64=2.1-1.47.4-1`
- `libcom-err2:amd64=1.47.4-1`

Licenses: (parsed from: `/usr/share/doc/comerr-dev/copyright`, `/usr/share/doc/libcom-err2/copyright`)

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
$ apt-get source -qq --print-uris e2fsprogs=1.47.4-1
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.47.4-1.dsc' e2fsprogs_1.47.4-1.dsc 3138 SHA256:3101f69bfafa37124a9e2238107324e899ac7c88760b542fe416962ae4569c0c
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.47.4.orig.tar.gz' e2fsprogs_1.47.4.orig.tar.gz 10106395 SHA256:2cec05f39c20ee621f14926195664e66e6017190ac8e4bbdb16d86082e43c5da
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.47.4.orig.tar.gz.asc' e2fsprogs_1.47.4.orig.tar.gz.asc 488 SHA256:c5a4b6cbf8e57dd83d239b23f5e847ed32bedab005d90e3334889b0662383ac7
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.47.4-1.debian.tar.xz' e2fsprogs_1.47.4-1.debian.tar.xz 94496 SHA256:a288244fa6d7e1bbe11526417772e0c41b494e78372bbe275bd86aa8fdd6776c
```

Other potentially useful URLs:

- https://sources.debian.net/src/e2fsprogs/1.47.4-1/ (for browsing the source)
- https://sources.debian.net/src/e2fsprogs/1.47.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/e2fsprogs/1.47.4-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `elfutils=0.195-1`

Binary Packages:

- `libelf1t64:amd64=0.195-1`

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
$ apt-get source -qq --print-uris elfutils=0.195-1
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.195-1.dsc' elfutils_0.195-1.dsc 3416 SHA256:d409570c357705e5898be9a73930c7519a7716ab3be85100d6e01526c5a4184f
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.195.orig.tar.bz2' elfutils_0.195.orig.tar.bz2 12032640 SHA256:37629fdf7f1f3dc2818e138fca2b8094177d6c2d0f701d3bb650a561218dc026
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.195-1.debian.tar.xz' elfutils_0.195-1.debian.tar.xz 44136 SHA256:0b21fae15e07c807cc0f8511747139a4c8db1a0476bdbbe6b2cd0ee082dccb29
```

Other potentially useful URLs:

- https://sources.debian.net/src/elfutils/0.195-1/ (for browsing the source)
- https://sources.debian.net/src/elfutils/0.195-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/elfutils/0.195-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `expat=2.8.2-1`

Binary Packages:

- `libexpat1:amd64=2.8.2-1`

Licenses: (parsed from: `/usr/share/doc/libexpat1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris expat=2.8.2-1
'http://deb.debian.org/debian/pool/main/e/expat/expat_2.8.2-1.dsc' expat_2.8.2-1.dsc 1970 SHA256:f712641d71796c80989171ffcbedd1f9af7400d23e533fd9fe00d4557779311c
'http://deb.debian.org/debian/pool/main/e/expat/expat_2.8.2.orig.tar.gz' expat_2.8.2.orig.tar.gz 8462437 SHA256:ca9d7c05560653cb977bfaa1ac54f717919cc0c68f6798b42fe55347c0b0ad52
'http://deb.debian.org/debian/pool/main/e/expat/expat_2.8.2-1.debian.tar.xz' expat_2.8.2-1.debian.tar.xz 14012 SHA256:f2b8e4f360715497ef5d8f41d78f6ca71ee2ad5df00decc4a222ba74a4a66aa9
```

Other potentially useful URLs:

- https://sources.debian.net/src/expat/2.8.2-1/ (for browsing the source)
- https://sources.debian.net/src/expat/2.8.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/expat/2.8.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `fftw3=3.3.11-1`

Binary Packages:

- `libfftw3-bin=3.3.11-1`
- `libfftw3-dev:amd64=3.3.11-1`
- `libfftw3-double3:amd64=3.3.11-1`
- `libfftw3-long3:amd64=3.3.11-1`
- `libfftw3-quad3:amd64=3.3.11-1`
- `libfftw3-single3:amd64=3.3.11-1`

Licenses: (parsed from: `/usr/share/doc/libfftw3-bin/copyright`, `/usr/share/doc/libfftw3-dev/copyright`, `/usr/share/doc/libfftw3-double3/copyright`, `/usr/share/doc/libfftw3-long3/copyright`, `/usr/share/doc/libfftw3-quad3/copyright`, `/usr/share/doc/libfftw3-single3/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris fftw3=3.3.11-1
'http://deb.debian.org/debian/pool/main/f/fftw3/fftw3_3.3.11-1.dsc' fftw3_3.3.11-1.dsc 2409 SHA256:d1fc24fef015bd5acd4345bfa7c48f68bfd78df8b4bb2bc570f52422eaf91295
'http://deb.debian.org/debian/pool/main/f/fftw3/fftw3_3.3.11.orig.tar.gz' fftw3_3.3.11.orig.tar.gz 4310712 SHA256:5630c24cdeb33b131612f7eb4b1a9934234754f9f388ff8617458d0be6f239a1
'http://deb.debian.org/debian/pool/main/f/fftw3/fftw3_3.3.11-1.debian.tar.xz' fftw3_3.3.11-1.debian.tar.xz 14660 SHA256:0afc71be6651f920feeafeb2130f1ddfa328e4114650ac6d3cce9f0f120c9504
```

Other potentially useful URLs:

- https://sources.debian.net/src/fftw3/3.3.11-1/ (for browsing the source)
- https://sources.debian.net/src/fftw3/3.3.11-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/fftw3/3.3.11-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `file=1:5.47-4`

Binary Packages:

- `file=1:5.47-4`
- `libmagic-mgc=1:5.47-4`
- `libmagic1t64:amd64=1:5.47-4`

Licenses: (parsed from: `/usr/share/doc/file/copyright`, `/usr/share/doc/libmagic-mgc/copyright`, `/usr/share/doc/libmagic1t64/copyright`)

- `BSD-2-Clause-alike`
- `BSD-2-Clause-netbsd`
- `BSD-2-Clause-regents`
- `MIT-Old-Style-with-legal-disclaimer-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris file=1:5.47-4
'http://deb.debian.org/debian/pool/main/f/file/file_5.47-4.dsc' file_5.47-4.dsc 2268 SHA256:8634e2ee57371981be9af0248ac8faa2bdc2f60321599e46df4be37462d96de0
'http://deb.debian.org/debian/pool/main/f/file/file_5.47.orig.tar.gz' file_5.47.orig.tar.gz 2676776 SHA256:45672fec165cb4cc1358a2d76b5d57d22876dcb97ab169427ac385cbe1d5597a
'http://deb.debian.org/debian/pool/main/f/file/file_5.47.orig.tar.gz.asc' file_5.47.orig.tar.gz.asc 169 SHA256:f4ec68a33f05b43f2b6686ccf9d49bbf9d47e8dab42dffa381b11dc8c4cdd82c
'http://deb.debian.org/debian/pool/main/f/file/file_5.47-4.debian.tar.xz' file_5.47-4.debian.tar.xz 40072 SHA256:82f45e07e8fdf1bd17790001b888aec8efaf595e260c38d7a8b15ce20db9d463
```

Other potentially useful URLs:

- https://sources.debian.net/src/file/1:5.47-4/ (for browsing the source)
- https://sources.debian.net/src/file/1:5.47-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/file/1:5.47-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `findutils=4.10.0-4`

Binary Packages:

- `findutils=4.10.0-4`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/findutils/4.10.0-4/


### `dpkg` source package: `fontconfig=2.17.1-5`

Binary Packages:

- `fontconfig=2.17.1-5`
- `fontconfig-config=2.17.1-5`
- `libfontconfig1:amd64=2.17.1-5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris fontconfig=2.17.1-5
'http://deb.debian.org/debian/pool/main/f/fontconfig/fontconfig_2.17.1-5.dsc' fontconfig_2.17.1-5.dsc 2680 SHA256:a450cf5d81cacdcc9172386c0906489c22017ecfc53c918548ae7e5ebce7d799
'http://deb.debian.org/debian/pool/main/f/fontconfig/fontconfig_2.17.1.orig.tar.gz' fontconfig_2.17.1.orig.tar.gz 622045 SHA256:f07504cef87f171ee1748352e2df9b9f125352f620fa0d03a9284306ea2c40a4
'http://deb.debian.org/debian/pool/main/f/fontconfig/fontconfig_2.17.1-5.debian.tar.xz' fontconfig_2.17.1-5.debian.tar.xz 59296 SHA256:7af5d559173a130b1e296c4f27fc7131e125854aa3fc4da655a2415189c51550
```

Other potentially useful URLs:

- https://sources.debian.net/src/fontconfig/2.17.1-5/ (for browsing the source)
- https://sources.debian.net/src/fontconfig/2.17.1-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/fontconfig/2.17.1-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `fonts-dejavu=2.37-9`

Binary Packages:

- `fonts-dejavu-core=2.37-9`
- `fonts-dejavu-mono=2.37-9`

Licenses: (parsed from: `/usr/share/doc/fonts-dejavu-core/copyright`, `/usr/share/doc/fonts-dejavu-mono/copyright`)

- `GPL-2`
- `GPL-2+`
- `bitstream-vera`

Source:

```console
$ apt-get source -qq --print-uris fonts-dejavu=2.37-9
'http://deb.debian.org/debian/pool/main/f/fonts-dejavu/fonts-dejavu_2.37-9.dsc' fonts-dejavu_2.37-9.dsc 2531 SHA256:889ab22c66e9b75da6508e6fb68d58dc57d37fcbdd75000e23968eaee502c481
'http://deb.debian.org/debian/pool/main/f/fonts-dejavu/fonts-dejavu_2.37.orig.tar.bz2' fonts-dejavu_2.37.orig.tar.bz2 12050109 SHA256:4b21c5203f792343d5e90ab1cb0cf07e99887218abe3d83cd9a98cea9085e799
'http://deb.debian.org/debian/pool/main/f/fonts-dejavu/fonts-dejavu_2.37-9.debian.tar.xz' fonts-dejavu_2.37-9.debian.tar.xz 13340 SHA256:fb7874eec7de4c26491f91c8408c549108156d0bc8ed6b56e9428ced965d8a13
```

Other potentially useful URLs:

- https://sources.debian.net/src/fonts-dejavu/2.37-9/ (for browsing the source)
- https://sources.debian.net/src/fonts-dejavu/2.37-9/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/fonts-dejavu/2.37-9/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `freetype=2.14.3+dfsg-1`

Binary Packages:

- `libfreetype-dev:amd64=2.14.3+dfsg-1`
- `libfreetype6:amd64=2.14.3+dfsg-1`

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
$ apt-get source -qq --print-uris freetype=2.14.3+dfsg-1
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.14.3%2bdfsg-1.dsc' freetype_2.14.3+dfsg-1.dsc 4011 SHA256:20fe8d46754acca2c7e25357c348fd1594d87013586cbcf586b6a089a3e96eea
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.14.3%2bdfsg.orig-ft2demos.tar.xz' freetype_2.14.3+dfsg.orig-ft2demos.tar.xz 347960 SHA256:1ac96a066c39108f2b0cc8aa805106ed2c38146c8913dc2396dc242e91e35686
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.14.3%2bdfsg.orig-ft2demos.tar.xz.asc' freetype_2.14.3+dfsg.orig-ft2demos.tar.xz.asc 833 SHA256:74bead81fdcba908b05cd704915a0c15ec80d83c7955d215491904994e1ae6d8
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.14.3%2bdfsg.orig-ft2docs.tar.xz' freetype_2.14.3+dfsg.orig-ft2docs.tar.xz 2176200 SHA256:66a988d8bbb58f83efafe555678ac172f70f0b060cf61424fe5460157470fd21
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.14.3%2bdfsg.orig-ft2docs.tar.xz.asc' freetype_2.14.3+dfsg.orig-ft2docs.tar.xz.asc 833 SHA256:15a6d7a4b8418f31ff3f9246d67329a739a9db53fe0fe0d424cf15e58f0b1348
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.14.3%2bdfsg.orig.tar.xz' freetype_2.14.3+dfsg.orig.tar.xz 2247556 SHA256:dc1bec263a6fffa436029efe6428f601d6b1a0b800837508ee3e49bbab8f1006
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.14.3%2bdfsg-1.debian.tar.xz' freetype_2.14.3+dfsg-1.debian.tar.xz 44132 SHA256:48a1e072c5a4c33728d401b3c38122a77f07bf7bba2583dd0455c1dd224558c9
```

Other potentially useful URLs:

- https://sources.debian.net/src/freetype/2.14.3+dfsg-1/ (for browsing the source)
- https://sources.debian.net/src/freetype/2.14.3+dfsg-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/freetype/2.14.3+dfsg-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `fribidi=1.0.16-5`

Binary Packages:

- `libfribidi0:amd64=1.0.16-5+b1`

Licenses: (parsed from: `/usr/share/doc/libfribidi0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris fribidi=1.0.16-5
'http://deb.debian.org/debian/pool/main/f/fribidi/fribidi_1.0.16-5.dsc' fribidi_1.0.16-5.dsc 2014 SHA256:bc60303e25c24c017928a8e19766a0d10c7196ddeb419a646b0781d746cba918
'http://deb.debian.org/debian/pool/main/f/fribidi/fribidi_1.0.16.orig.tar.xz' fribidi_1.0.16.orig.tar.xz 1098260 SHA256:1b1cde5b235d40479e91be2f0e88a309e3214c8ab470ec8a2744d82a5a9ea05c
'http://deb.debian.org/debian/pool/main/f/fribidi/fribidi_1.0.16-5.debian.tar.xz' fribidi_1.0.16-5.debian.tar.xz 9052 SHA256:72209d3e970d4d10d2a2c691c9177d3bfeee59d75a45bacd6ec2f004513b0283
```

Other potentially useful URLs:

- https://sources.debian.net/src/fribidi/1.0.16-5/ (for browsing the source)
- https://sources.debian.net/src/fribidi/1.0.16-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/fribidi/1.0.16-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-15=15.3.0-1`

Binary Packages:

- `cpp-15=15.3.0-1`
- `cpp-15-x86-64-linux-gnu=15.3.0-1`
- `g++-15=15.3.0-1`
- `g++-15-x86-64-linux-gnu=15.3.0-1`
- `gcc-15=15.3.0-1`
- `gcc-15-base:amd64=15.3.0-1`
- `gcc-15-x86-64-linux-gnu=15.3.0-1`
- `libgcc-15-dev:amd64=15.3.0-1`
- `libstdc++-15-dev:amd64=15.3.0-1`

Licenses: (parsed from: `/usr/share/doc/cpp-15/copyright`, `/usr/share/doc/cpp-15-x86-64-linux-gnu/copyright`, `/usr/share/doc/g++-15/copyright`, `/usr/share/doc/g++-15-x86-64-linux-gnu/copyright`, `/usr/share/doc/gcc-15/copyright`, `/usr/share/doc/gcc-15-base/copyright`, `/usr/share/doc/gcc-15-x86-64-linux-gnu/copyright`, `/usr/share/doc/libgcc-15-dev/copyright`, `/usr/share/doc/libstdc++-15-dev/copyright`)

- `Apache-2.0`
- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-15=15.3.0-1
'http://deb.debian.org/debian/pool/main/g/gcc-15/gcc-15_15.3.0-1.dsc' gcc-15_15.3.0-1.dsc 47089 SHA256:a19111254ac0566d078e96f3a1368f1d43dd3f702e30b06059b1acf339c3ebd5
'http://deb.debian.org/debian/pool/main/g/gcc-15/gcc-15_15.3.0.orig.tar.gz' gcc-15_15.3.0.orig.tar.gz 100352703 SHA256:183c7e2323a166ea7838159b75cd1ea6ec3901150c74b2451967b39bc759bf9b
'http://deb.debian.org/debian/pool/main/g/gcc-15/gcc-15_15.3.0-1.debian.tar.xz' gcc-15_15.3.0-1.debian.tar.xz 1027604 SHA256:71dace24778c657c0a64165117bc8458df7dc61302521ce445cfbe264cc3d114
```

Other potentially useful URLs:

- https://sources.debian.net/src/gcc-15/15.3.0-1/ (for browsing the source)
- https://sources.debian.net/src/gcc-15/15.3.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gcc-15/15.3.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-16=16.1.0-2`

Binary Packages:

- `gcc-16-base:amd64=16.1.0-2`
- `libasan8:amd64=16.1.0-2`
- `libatomic1:amd64=16.1.0-2`
- `libcc1-0:amd64=16.1.0-2`
- `libgcc-s1:amd64=16.1.0-2`
- `libgomp1:amd64=16.1.0-2`
- `libhwasan0:amd64=16.1.0-2`
- `libitm1:amd64=16.1.0-2`
- `liblsan0:amd64=16.1.0-2`
- `libquadmath0:amd64=16.1.0-2`
- `libstdc++6:amd64=16.1.0-2`
- `libtsan2:amd64=16.1.0-2`
- `libubsan1:amd64=16.1.0-2`

Licenses: (parsed from: `/usr/share/doc/gcc-16-base/copyright`, `/usr/share/doc/libasan8/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libcc1-0/copyright`, `/usr/share/doc/libgcc-s1/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libhwasan0/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan2/copyright`, `/usr/share/doc/libubsan1/copyright`)

- `Apache-2.0`
- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-3`
- `LGPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/gcc-16/16.1.0-2/


### `dpkg` source package: `gcc-defaults=1.230`

Binary Packages:

- `cpp=4:15.2.0-5`
- `cpp-x86-64-linux-gnu=4:15.2.0-5`
- `g++=4:15.2.0-5`
- `g++-x86-64-linux-gnu=4:15.2.0-5`
- `gcc=4:15.2.0-5`
- `gcc-x86-64-linux-gnu=4:15.2.0-5`

Licenses: (parsed from: `/usr/share/doc/cpp/copyright`, `/usr/share/doc/cpp-x86-64-linux-gnu/copyright`, `/usr/share/doc/g++/copyright`, `/usr/share/doc/g++-x86-64-linux-gnu/copyright`, `/usr/share/doc/gcc/copyright`, `/usr/share/doc/gcc-x86-64-linux-gnu/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris gcc-defaults=1.230
'http://deb.debian.org/debian/pool/main/g/gcc-defaults/gcc-defaults_1.230.dsc' gcc-defaults_1.230.dsc 36946 SHA256:9093cc82f237e92b875336cd346d22edfe08e21ff19536d2bf66e1c971a542be
'http://deb.debian.org/debian/pool/main/g/gcc-defaults/gcc-defaults_1.230.tar.xz' gcc-defaults_1.230.tar.xz 55404 SHA256:303c96312f998317f5b6fbb9e3dc56e26496de89d16ac5fd95caf6ace2a29188
```

Other potentially useful URLs:

- https://sources.debian.net/src/gcc-defaults/1.230/ (for browsing the source)
- https://sources.debian.net/src/gcc-defaults/1.230/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gcc-defaults/1.230/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gdbm=1.26-1`

Binary Packages:

- `libgdbm-compat4t64:amd64=1.26-1+b2`
- `libgdbm-dev:amd64=1.26-1+b2`
- `libgdbm6t64:amd64=1.26-1+b2`

Licenses: (parsed from: `/usr/share/doc/libgdbm-compat4t64/copyright`, `/usr/share/doc/libgdbm-dev/copyright`, `/usr/share/doc/libgdbm6t64/copyright`)

- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.26-1
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.26-1.dsc' gdbm_1.26-1.dsc 2234 SHA256:ba4b64d1275f986b40ca13e31ebef34e00e0c3227cfdc904fe4d84973af6a22b
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.26.orig.tar.gz' gdbm_1.26.orig.tar.gz 1226591 SHA256:6a24504a14de4a744103dcb936be976df6fbe88ccff26065e54c1c47946f4a5e
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.26-1.debian.tar.xz' gdbm_1.26-1.debian.tar.xz 16832 SHA256:3d358964671e794485be3b567751701061c5e46328ec303512ab26dfe246699d
```

Other potentially useful URLs:

- https://sources.debian.net/src/gdbm/1.26-1/ (for browsing the source)
- https://sources.debian.net/src/gdbm/1.26-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gdbm/1.26-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `git=1:2.53.0-1`

Binary Packages:

- `git=1:2.53.0-1`
- `git-man=1:2.53.0-1`

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
$ apt-get source -qq --print-uris git=1:2.53.0-1
'http://deb.debian.org/debian/pool/main/g/git/git_2.53.0-1.dsc' git_2.53.0-1.dsc 2641 SHA256:26a8143dec60feb7c32c2121c6a7ca9c95ad9f673b818e0977469632da6ac4e2
'http://deb.debian.org/debian/pool/main/g/git/git_2.53.0.orig.tar.xz' git_2.53.0.orig.tar.xz 7993096 SHA256:5818bd7d80b061bbbdfec8a433d609dc8818a05991f731ffc4a561e2ca18c653
'http://deb.debian.org/debian/pool/main/g/git/git_2.53.0-1.debian.tar.xz' git_2.53.0-1.debian.tar.xz 832236 SHA256:fa73e2990d9f4d24ade7fc1ac9ac838abd6070caf7d3a57a446dd6ad1f20e7a2
```

Other potentially useful URLs:

- https://sources.debian.net/src/git/1:2.53.0-1/ (for browsing the source)
- https://sources.debian.net/src/git/1:2.53.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/git/1:2.53.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `glib2.0=2.88.2-1`

Binary Packages:

- `girepository-tools:amd64=2.88.2-1`
- `libgio-2.0-dev:amd64=2.88.2-1`
- `libgio-2.0-dev-bin=2.88.2-1`
- `libgirepository-2.0-0:amd64=2.88.2-1`
- `libglib2.0-0t64:amd64=2.88.2-1`
- `libglib2.0-bin=2.88.2-1`
- `libglib2.0-data=2.88.2-1`
- `libglib2.0-dev:amd64=2.88.2-1`
- `libglib2.0-dev-bin=2.88.2-1`

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
$ apt-get source -qq --print-uris glib2.0=2.88.2-1
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.88.2-1.dsc' glib2.0_2.88.2-1.dsc 4923 SHA256:055f8bef26b3efbc88d4192c098a126f8f9d2f9000201947e14b1f7be30a0045
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.88.2.orig-unicode-data.tar.xz' glib2.0_2.88.2.orig-unicode-data.tar.xz 666552 SHA256:4b55352323696c72187f855981ed1f7d1594a53f257f7803a928749cab9f9f44
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.88.2.orig.tar.xz' glib2.0_2.88.2.orig.tar.xz 5782636 SHA256:cf3f215a640c8a4257f14317586b8f1fdd25a10a93cb4bdda147c0f9ad88e74f
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.88.2-1.debian.tar.xz' glib2.0_2.88.2-1.debian.tar.xz 142600 SHA256:186abcb62a3a37f53a4aab52ba9257afeecb5757e964ed679405258a59698cac
```

Other potentially useful URLs:

- https://sources.debian.net/src/glib2.0/2.88.2-1/ (for browsing the source)
- https://sources.debian.net/src/glib2.0/2.88.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glib2.0/2.88.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `glibc=2.42-17`

Binary Packages:

- `libc-bin=2.42-17`
- `libc-dev-bin=2.42-17`
- `libc-gconv-modules-extra:amd64=2.42-17`
- `libc6:amd64=2.42-17`
- `libc6-dev:amd64=2.42-17`

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
$ apt-get source -qq --print-uris glibc=2.42-17
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.42-17.dsc' glibc_2.42-17.dsc 8575 SHA256:d004ab83368dec1f86aec110d13d1eaf21b261416e5f7c74f18c8b9ce2d02b79
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.42.orig.tar.xz' glibc_2.42.orig.tar.xz 21052916 SHA256:69c1e915c8edd75981cbfc6b7654e8fc4e52a48d06b9f706f463492749a9b6fb
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.42-17.debian.tar.xz' glibc_2.42-17.debian.tar.xz 447488 SHA256:89b79a67661b89a4160ef1b2f01a1eb7b428c686f18de463581b408ba9765e62
```

Other potentially useful URLs:

- https://sources.debian.net/src/glibc/2.42-17/ (for browsing the source)
- https://sources.debian.net/src/glibc/2.42-17/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glibc/2.42-17/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gmp=2:6.3.0+dfsg-5`

Binary Packages:

- `libgmp-dev:amd64=2:6.3.0+dfsg-5+b2`
- `libgmp10:amd64=2:6.3.0+dfsg-5+b2`
- `libgmpxx4ldbl:amd64=2:6.3.0+dfsg-5+b2`

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
$ apt-get source -qq --print-uris gmp=2:6.3.0+dfsg-5
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.3.0%2bdfsg-5.dsc' gmp_6.3.0+dfsg-5.dsc 2230 SHA256:609cad99ebddece1d7028a9c3f0a728c68e5a5fbb15b879a2ea6107ea5b16168
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.3.0%2bdfsg.orig.tar.xz' gmp_6.3.0+dfsg.orig.tar.xz 1870556 SHA256:bd2966e6d277f79328e894a5a9f3ba3fbf2ed2be81def5f48623e30c23fb1572
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.3.0%2bdfsg-5.debian.tar.xz' gmp_6.3.0+dfsg-5.debian.tar.xz 20424 SHA256:9a41837b2e2678506c24c2791d3f551fdb61bb01cc5e79aaaf45c68a8f26089a
```

Other potentially useful URLs:

- https://sources.debian.net/src/gmp/2:6.3.0+dfsg-5/ (for browsing the source)
- https://sources.debian.net/src/gmp/2:6.3.0+dfsg-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gmp/2:6.3.0+dfsg-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnupg2=2.4.9-5`

Binary Packages:

- `dirmngr=2.4.9-5`
- `gnupg=2.4.9-5`
- `gnupg-l10n=2.4.9-5`
- `gpg=2.4.9-5`
- `gpg-agent=2.4.9-5`
- `gpgconf=2.4.9-5`
- `gpgsm=2.4.9-5`

Licenses: (parsed from: `/usr/share/doc/dirmngr/copyright`, `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gnupg-l10n/copyright`, `/usr/share/doc/gpg/copyright`, `/usr/share/doc/gpg-agent/copyright`, `/usr/share/doc/gpgconf/copyright`, `/usr/share/doc/gpgsm/copyright`)

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/gnupg2/2.4.9-5/


### `dpkg` source package: `gnutls28=3.8.13-1`

Binary Packages:

- `libgnutls-dane0t64:amd64=3.8.13-1`
- `libgnutls28-dev:amd64=3.8.13-1`
- `libgnutls30t64:amd64=3.8.13-1`

Licenses: (parsed from: `/usr/share/doc/libgnutls-dane0t64/copyright`, `/usr/share/doc/libgnutls28-dev/copyright`, `/usr/share/doc/libgnutls30t64/copyright`)

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
$ apt-get source -qq --print-uris gnutls28=3.8.13-1
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.8.13-1.dsc' gnutls28_3.8.13-1.dsc 3067 SHA256:6c4c060c88ab12c3aee4e7ed529f0a96d084a23758a4b4d287776b8aef20d490
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.8.13.orig.tar.xz' gnutls28_3.8.13.orig.tar.xz 7275324 SHA256:ffed8ec1bf09c2426d4f14aae377de4753b53e537d685e604e99a8b16ca9c97e
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.8.13.orig.tar.xz.asc' gnutls28_3.8.13.orig.tar.xz.asc 996 SHA256:69ce880450f47829d4c85338e468c4b33f2611790a8e8cc5adaa98590bc9fa84
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.8.13-1.debian.tar.xz' gnutls28_3.8.13-1.debian.tar.xz 173216 SHA256:02ff56482995fef5ee9a8b0761568ca45b0ba07ab6a40030b1e10330551939f9
```

Other potentially useful URLs:

- https://sources.debian.net/src/gnutls28/3.8.13-1/ (for browsing the source)
- https://sources.debian.net/src/gnutls28/3.8.13-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnutls28/3.8.13-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `graphite2=1.3.15-2`

Binary Packages:

- `libgraphite2-3:amd64=1.3.15-2`

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
$ apt-get source -qq --print-uris graphite2=1.3.15-2
'http://deb.debian.org/debian/pool/main/g/graphite2/graphite2_1.3.15-2.dsc' graphite2_1.3.15-2.dsc 2535 SHA256:c7dd38d401e016a0214feec40727ed9762f72700985b99a61528bd865e0f7967
'http://deb.debian.org/debian/pool/main/g/graphite2/graphite2_1.3.15.orig.tar.gz' graphite2_1.3.15.orig.tar.gz 13698237 SHA256:ad47ac120d0fbd80dbc93669afd1074fbbf68af8d1bedf936cf1a433c170f565
'http://deb.debian.org/debian/pool/main/g/graphite2/graphite2_1.3.15-2.debian.tar.xz' graphite2_1.3.15-2.debian.tar.xz 15328 SHA256:261cd2c208aad67b4572b10cce60d2312e055ffbd798621613b238184e1b4453
```

Other potentially useful URLs:

- https://sources.debian.net/src/graphite2/1.3.15-2/ (for browsing the source)
- https://sources.debian.net/src/graphite2/1.3.15-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/graphite2/1.3.15-2/ (for access to the source package after it no longer exists in the archive)

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
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.12-1.dsc' grep_3.12-1.dsc 1647 SHA256:ce35486482abc0591a00be0848c90a3f40ce14b62e501da637296d23bc4c29f4
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.12.orig.tar.xz' grep_3.12.orig.tar.xz 1918448 SHA256:2649b27c0e90e632eadcd757be06c6e9a4f48d941de51e7c0f83ff76408a07b9
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.12.orig.tar.xz.asc' grep_3.12.orig.tar.xz.asc 833 SHA256:62d4867d7cfff57a364b745866d798958a90286551fdf45d08df515fa8c79c25
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.12-1.debian.tar.xz' grep_3.12-1.debian.tar.xz 24160 SHA256:5baef65e599c41285a0393c1c6845c03c9b29f14765447911a1871a50321fd42
```

Other potentially useful URLs:

- https://sources.debian.net/src/grep/3.12-1/ (for browsing the source)
- https://sources.debian.net/src/grep/3.12-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/grep/3.12-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `harfbuzz=12.3.2-2`

Binary Packages:

- `libharfbuzz0b:amd64=12.3.2-2+b2`

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
'http://deb.debian.org/debian/pool/main/h/harfbuzz/harfbuzz_12.3.2-2.dsc' harfbuzz_12.3.2-2.dsc 2573 SHA256:d6e9e342b811b32697413fb8b9ad795b01227fc5ee7cd42680aad9e4e7877b4a
'http://deb.debian.org/debian/pool/main/h/harfbuzz/harfbuzz_12.3.2.orig.tar.xz' harfbuzz_12.3.2.orig.tar.xz 19282952 SHA256:6f6db164359a2da5a84ef826615b448b33e6306067ad829d85d5b0bf936f1bb8
'http://deb.debian.org/debian/pool/main/h/harfbuzz/harfbuzz_12.3.2-2.debian.tar.xz' harfbuzz_12.3.2-2.debian.tar.xz 19848 SHA256:e60831c79be0f1621c559e621d6149a21195731126fc7b8b71c0b7a7369cfeea
```

Other potentially useful URLs:

- https://sources.debian.net/src/harfbuzz/12.3.2-2/ (for browsing the source)
- https://sources.debian.net/src/harfbuzz/12.3.2-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/harfbuzz/12.3.2-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `hicolor-icon-theme=0.18-2`

Binary Packages:

- `hicolor-icon-theme=0.18-2`

Licenses: (parsed from: `/usr/share/doc/hicolor-icon-theme/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris hicolor-icon-theme=0.18-2
'http://deb.debian.org/debian/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.18-2.dsc' hicolor-icon-theme_0.18-2.dsc 2325 SHA256:8d8c91162fa2557d55ffd34f3df7f8c4946c9db641c206c64c1488df407445a6
'http://deb.debian.org/debian/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.18.orig.tar.xz' hicolor-icon-theme_0.18.orig.tar.xz 29624 SHA256:db0e50a80aa3bf64bb45cbca5cf9f75efd9348cf2ac690b907435238c3cf81d7
'http://deb.debian.org/debian/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.18.orig.tar.xz.asc' hicolor-icon-theme_0.18.orig.tar.xz.asc 833 SHA256:0fe29ecd5d445805e33b33d7ff35813eabab2100806c06dd002efd35b37fb855
'http://deb.debian.org/debian/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.18-2.debian.tar.xz' hicolor-icon-theme_0.18-2.debian.tar.xz 9148 SHA256:749d43f2b8f67f301ce08ca29b5c8492e8eed12bbe2974c7db40ca4a0b834508
```

Other potentially useful URLs:

- https://sources.debian.net/src/hicolor-icon-theme/0.18-2/ (for browsing the source)
- https://sources.debian.net/src/hicolor-icon-theme/0.18-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/hicolor-icon-theme/0.18-2/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `imagemagick=8:7.1.2.27+dfsg1-1`

Binary Packages:

- `imagemagick=8:7.1.2.27+dfsg1-1`
- `imagemagick-7-common=8:7.1.2.27+dfsg1-1`
- `imagemagick-7.q16=8:7.1.2.27+dfsg1-1`
- `libmagickcore-7-arch-config:amd64=8:7.1.2.27+dfsg1-1`
- `libmagickcore-7-headers=8:7.1.2.27+dfsg1-1`
- `libmagickcore-7.q16-10:amd64=8:7.1.2.27+dfsg1-1`
- `libmagickcore-7.q16-10-extra:amd64=8:7.1.2.27+dfsg1-1`
- `libmagickcore-7.q16-dev:amd64=8:7.1.2.27+dfsg1-1`
- `libmagickcore-dev=8:7.1.2.27+dfsg1-1`
- `libmagickwand-7-headers=8:7.1.2.27+dfsg1-1`
- `libmagickwand-7.q16-10:amd64=8:7.1.2.27+dfsg1-1`
- `libmagickwand-7.q16-dev:amd64=8:7.1.2.27+dfsg1-1`
- `libmagickwand-dev=8:7.1.2.27+dfsg1-1`

Licenses: (parsed from: `/usr/share/doc/imagemagick/copyright`, `/usr/share/doc/imagemagick-7-common/copyright`, `/usr/share/doc/imagemagick-7.q16/copyright`, `/usr/share/doc/libmagickcore-7-arch-config/copyright`, `/usr/share/doc/libmagickcore-7-headers/copyright`, `/usr/share/doc/libmagickcore-7.q16-10/copyright`, `/usr/share/doc/libmagickcore-7.q16-10-extra/copyright`, `/usr/share/doc/libmagickcore-7.q16-dev/copyright`, `/usr/share/doc/libmagickcore-dev/copyright`, `/usr/share/doc/libmagickwand-7-headers/copyright`, `/usr/share/doc/libmagickwand-7.q16-10/copyright`, `/usr/share/doc/libmagickwand-7.q16-dev/copyright`, `/usr/share/doc/libmagickwand-dev/copyright`)

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
$ apt-get source -qq --print-uris imagemagick=8:7.1.2.27+dfsg1-1
'http://deb.debian.org/debian/pool/main/i/imagemagick/imagemagick_7.1.2.27%2bdfsg1-1.dsc' imagemagick_7.1.2.27+dfsg1-1.dsc 5227 SHA256:8be058f1c59250b75fbbdb6c74aeb6dc92201ffe96be6ba67527e4aae642d803
'http://deb.debian.org/debian/pool/main/i/imagemagick/imagemagick_7.1.2.27%2bdfsg1.orig.tar.xz' imagemagick_7.1.2.27+dfsg1.orig.tar.xz 10512240 SHA256:d24f0ebda3b94a78d392d5a35085d9929dd64ca9c86572919b3465706eb921a8
'http://deb.debian.org/debian/pool/main/i/imagemagick/imagemagick_7.1.2.27%2bdfsg1-1.debian.tar.xz' imagemagick_7.1.2.27+dfsg1-1.debian.tar.xz 266576 SHA256:27e698c751a6b5e2a4662b047350266390d149f189689fa52e9231899321e256
```

Other potentially useful URLs:

- https://sources.debian.net/src/imagemagick/8:7.1.2.27+dfsg1-1/ (for browsing the source)
- https://sources.debian.net/src/imagemagick/8:7.1.2.27+dfsg1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/imagemagick/8:7.1.2.27+dfsg1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `imath=3.1.12-1`

Binary Packages:

- `libimath-3-1-29t64:amd64=3.1.12-1+b7`
- `libimath-dev:amd64=3.1.12-1+b7`

Licenses: (parsed from: `/usr/share/doc/libimath-3-1-29t64/copyright`, `/usr/share/doc/libimath-dev/copyright`)

- `imath`

Source:

```console
$ apt-get source -qq --print-uris imath=3.1.12-1
'http://deb.debian.org/debian/pool/main/i/imath/imath_3.1.12-1.dsc' imath_3.1.12-1.dsc 2721 SHA256:4e2161a9517b5241c2c48e750ea0aed5586c73ebb17b30b56a7b02e96d6d61d7
'http://deb.debian.org/debian/pool/main/i/imath/imath_3.1.12.orig.tar.gz' imath_3.1.12.orig.tar.gz 604232 SHA256:8a1bc258f3149b5729c2f4f8ffd337c0e57f09096e4ba9784329f40c4a9035da
'http://deb.debian.org/debian/pool/main/i/imath/imath_3.1.12.orig.tar.gz.asc' imath_3.1.12.orig.tar.gz.asc 287 SHA256:a2c4ac5151789903ca8ab3093a2798491463ccf2abfd003a20f96453e505dd5f
'http://deb.debian.org/debian/pool/main/i/imath/imath_3.1.12-1.debian.tar.xz' imath_3.1.12-1.debian.tar.xz 9800 SHA256:d5f9d34eff5ff87d5c9cb1d626cb42383eb85cb4af08720e10b9922b74196913
```

Other potentially useful URLs:

- https://sources.debian.net/src/imath/3.1.12-1/ (for browsing the source)
- https://sources.debian.net/src/imath/3.1.12-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/imath/3.1.12-1/ (for access to the source package after it no longer exists in the archive)

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
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.69.dsc' init-system-helpers_1.69.dsc 2234 SHA256:99b681c969728fba085226b1d1fd25cc37c9fe16f9eb5118e679d845b50ae7ee
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.69.tar.xz' init-system-helpers_1.69.tar.xz 45648 SHA256:e246ee7f39b110803e5307fdb25ec2fb5fe0c62dbd9274011803fef50af08100
```

Other potentially useful URLs:

- https://sources.debian.net/src/init-system-helpers/1.69/ (for browsing the source)
- https://sources.debian.net/src/init-system-helpers/1.69/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/init-system-helpers/1.69/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `isl=0.27-2`

Binary Packages:

- `libisl23:amd64=0.27-2`

Licenses: (parsed from: `/usr/share/doc/libisl23/copyright`)

- `BSD-2-clause`
- `LGPL-2`
- `LGPL-2.1+`
- `MIT`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/isl/0.27-2/


### `dpkg` source package: `jansson=2.15.1-1`

Binary Packages:

- `libjansson4:amd64=2.15.1-1`

Licenses: (parsed from: `/usr/share/doc/libjansson4/copyright`)

- `Apache-2.0`
- `Expat`
- `ISC-like-dmgfp`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris jansson=2.15.1-1
'http://deb.debian.org/debian/pool/main/j/jansson/jansson_2.15.1-1.dsc' jansson_2.15.1-1.dsc 2070 SHA256:5feb893a85efbdebaf96e8a4376510bafcc08b46e9bb7101dbc6e18fdcd839d6
'http://deb.debian.org/debian/pool/main/j/jansson/jansson_2.15.1.orig.tar.gz' jansson_2.15.1.orig.tar.gz 197522 SHA256:12ee844d80157043c099e6ec41e2f5f40516b2043ab8d2b3eca6594920714f49
'http://deb.debian.org/debian/pool/main/j/jansson/jansson_2.15.1-1.debian.tar.xz' jansson_2.15.1-1.debian.tar.xz 6712 SHA256:9d54b9950a7534ea37afc261cff2e807e89e91648653cf90f851d09b5a8808c0
```

Other potentially useful URLs:

- https://sources.debian.net/src/jansson/2.15.1-1/ (for browsing the source)
- https://sources.debian.net/src/jansson/2.15.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/jansson/2.15.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `jbigkit=2.1-6.1`

Binary Packages:

- `libjbig-dev:amd64=2.1-6.1+b3`
- `libjbig0:amd64=2.1-6.1+b3`

Licenses: (parsed from: `/usr/share/doc/libjbig-dev/copyright`, `/usr/share/doc/libjbig0/copyright`)

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

- `libkeyutils1:amd64=1.6.3-6+b2`

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

### `dpkg` source package: `krb5=1.22.1-3`

Binary Packages:

- `krb5-multidev:amd64=1.22.1-3`
- `libgssapi-krb5-2:amd64=1.22.1-3`
- `libgssrpc4t64:amd64=1.22.1-3`
- `libk5crypto3:amd64=1.22.1-3`
- `libkadm5clnt-mit12:amd64=1.22.1-3`
- `libkadm5srv-mit12:amd64=1.22.1-3`
- `libkdb5-10t64:amd64=1.22.1-3`
- `libkrb5-3:amd64=1.22.1-3`
- `libkrb5-dev:amd64=1.22.1-3`
- `libkrb5support0:amd64=1.22.1-3`

Licenses: (parsed from: `/usr/share/doc/krb5-multidev/copyright`, `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libgssrpc4t64/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkadm5clnt-mit12/copyright`, `/usr/share/doc/libkadm5srv-mit12/copyright`, `/usr/share/doc/libkdb5-10t64/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5-dev/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.22.1-3
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.22.1-3.dsc' krb5_1.22.1-3.dsc 3397 SHA256:b619af9a52f00c4888e1f53f38d5e147e8c518d1c5b0cda120873fa4ebd4ea77
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.22.1.orig.tar.gz' krb5_1.22.1.orig.tar.gz 8747101 SHA256:1a8832b8cad923ebbf1394f67e2efcf41e3a49f460285a66e35adec8fa0053af
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.22.1.orig.tar.gz.asc' krb5_1.22.1.orig.tar.gz.asc 833 SHA256:598334b7b54f63a2280f72cc566bee6f9cbc5ef4dcd9ccabd3a0460641908a64
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.22.1-3.debian.tar.xz' krb5_1.22.1-3.debian.tar.xz 111476 SHA256:519ad7537260ebc450a678b38f00c8deaf0e05d848d0e5cfeef1ddb154663ba8
```

Other potentially useful URLs:

- https://sources.debian.net/src/krb5/1.22.1-3/ (for browsing the source)
- https://sources.debian.net/src/krb5/1.22.1-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/krb5/1.22.1-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lcms2=2.19.1-1`

Binary Packages:

- `liblcms2-2:amd64=2.19.1-1`
- `liblcms2-dev:amd64=2.19.1-1`

Licenses: (parsed from: `/usr/share/doc/liblcms2-2/copyright`, `/usr/share/doc/liblcms2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `IJG`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris lcms2=2.19.1-1
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.19.1-1.dsc' lcms2_2.19.1-1.dsc 2054 SHA256:22be0c2cdbe149282730f7e20f68bf862668052e7ed8bfbdf1eff27144e29bc1
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.19.1.orig.tar.gz' lcms2_2.19.1.orig.tar.gz 5728743 SHA256:bfc54f7bab59fbc921012014a8032e4cba4abd46db47d46b76416a8c0b2815c8
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.19.1-1.debian.tar.xz' lcms2_2.19.1-1.debian.tar.xz 11996 SHA256:7962456f14e98850331f227773dc5e63ad27b9595dbefbcbb6e6835da2b76aac
```

Other potentially useful URLs:

- https://sources.debian.net/src/lcms2/2.19.1-1/ (for browsing the source)
- https://sources.debian.net/src/lcms2/2.19.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lcms2/2.19.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lerc=4.1.0+ds-2`

Binary Packages:

- `liblerc-dev:amd64=4.1.0+ds-2`
- `liblerc4:amd64=4.1.0+ds-2`

Licenses: (parsed from: `/usr/share/doc/liblerc-dev/copyright`, `/usr/share/doc/liblerc4/copyright`)

- `Apache-2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/lerc/4.1.0+ds-2/


### `dpkg` source package: `libassuan=3.0.2-2`

Binary Packages:

- `libassuan9:amd64=3.0.2-2+b2`

Licenses: (parsed from: `/usr/share/doc/libassuan9/copyright`)

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
$ apt-get source -qq --print-uris libassuan=3.0.2-2
'http://deb.debian.org/debian/pool/main/liba/libassuan/libassuan_3.0.2-2.dsc' libassuan_3.0.2-2.dsc 2682 SHA256:4c6b68814cef421d1768628b401a62176c579dc8e1e3026348d7ec159943f0c7
'http://deb.debian.org/debian/pool/main/liba/libassuan/libassuan_3.0.2.orig.tar.bz2' libassuan_3.0.2.orig.tar.bz2 593917 SHA256:d2931cdad266e633510f9970e1a2f346055e351bb19f9b78912475b8074c36f6
'http://deb.debian.org/debian/pool/main/liba/libassuan/libassuan_3.0.2.orig.tar.bz2.asc' libassuan_3.0.2.orig.tar.bz2.asc 228 SHA256:3799b287fd7d48f750597bd9104621d2cbafd508de83303b1a5f5eef08f06072
'http://deb.debian.org/debian/pool/main/liba/libassuan/libassuan_3.0.2-2.debian.tar.xz' libassuan_3.0.2-2.debian.tar.xz 17536 SHA256:05566fa4ac35ad6af7214ce01beeaffcc2ce1c13d20daac4cf86949c5fad25fc
```

Other potentially useful URLs:

- https://sources.debian.net/src/libassuan/3.0.2-2/ (for browsing the source)
- https://sources.debian.net/src/libassuan/3.0.2-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libassuan/3.0.2-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libbsd=0.12.2-3`

Binary Packages:

- `libbsd0:amd64=0.12.2-3`

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
$ apt-get source -qq --print-uris libbsd=0.12.2-3
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.12.2-3.dsc' libbsd_0.12.2-3.dsc 2611 SHA256:bc309d6fc4da367c7d57d7467b1bcab6ba013f6b90d07b8552f5bd37d28d6cd5
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.12.2.orig.tar.xz' libbsd_0.12.2.orig.tar.xz 446032 SHA256:b88cc9163d0c652aaf39a99991d974ddba1c3a9711db8f1b5838af2a14731014
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.12.2.orig.tar.xz.asc' libbsd_0.12.2.orig.tar.xz.asc 833 SHA256:620dc92f158ebe0a650c0e92214a8121b927276895dc9a1dcaa38f627fa0fcb0
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.12.2-3.debian.tar.xz' libbsd_0.12.2-3.debian.tar.xz 18892 SHA256:1415cfb3023977137d01c4acf80a00f6504f21be0bb2412214eeeaae63b45d92
```

Other potentially useful URLs:

- https://sources.debian.net/src/libbsd/0.12.2-3/ (for browsing the source)
- https://sources.debian.net/src/libbsd/0.12.2-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libbsd/0.12.2-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libcap-ng=0.9.3-1`

Binary Packages:

- `libcap-ng0:amd64=0.9.3-1+b1`

Licenses: (parsed from: `/usr/share/doc/libcap-ng0/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libcap-ng=0.9.3-1
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.9.3-1.dsc' libcap-ng_0.9.3-1.dsc 1743 SHA256:e7bbe42ea125011af00093a987a366a415f64cd8eb048bd77efa7aefe3745082
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.9.3.orig.tar.gz' libcap-ng_0.9.3.orig.tar.gz 126269 SHA256:bbdc4e114409877e358a2775db7441ca207f0f999f434c99f7327829ad1eaeb3
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.9.3-1.debian.tar.xz' libcap-ng_0.9.3-1.debian.tar.xz 7584 SHA256:7306445819e307017a8520b122a94df5e82c3978d1458b19649a209541917a2f
```

Other potentially useful URLs:

- https://sources.debian.net/src/libcap-ng/0.9.3-1/ (for browsing the source)
- https://sources.debian.net/src/libcap-ng/0.9.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libcap-ng/0.9.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libcbor=0.10.2-2.1`

Binary Packages:

- `libcbor0.10:amd64=0.10.2-2.1+b1`

Licenses: (parsed from: `/usr/share/doc/libcbor0.10/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libcbor=0.10.2-2.1
'http://deb.debian.org/debian/pool/main/libc/libcbor/libcbor_0.10.2-2.1.dsc' libcbor_0.10.2-2.1.dsc 2139 SHA256:342d29cb8aa4c4b0cba55d7072c4549eefa7c004939769b26ab4f43fb32daece
'http://deb.debian.org/debian/pool/main/libc/libcbor/libcbor_0.10.2.orig.tar.gz' libcbor_0.10.2.orig.tar.gz 289450 SHA256:e75f712215d7b7e5c89ef322a09b701f7159f028b8b48978865725f00f79875b
'http://deb.debian.org/debian/pool/main/libc/libcbor/libcbor_0.10.2-2.1.debian.tar.xz' libcbor_0.10.2-2.1.debian.tar.xz 6576 SHA256:ec78443d21d15864080d081de0290ee99385b462a063c50c36b61ce09a59fb3e
```

Other potentially useful URLs:

- https://sources.debian.net/src/libcbor/0.10.2-2.1/ (for browsing the source)
- https://sources.debian.net/src/libcbor/0.10.2-2.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libcbor/0.10.2-2.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libdatrie=0.2.14-2`

Binary Packages:

- `libdatrie1:amd64=0.2.14-2`

Licenses: (parsed from: `/usr/share/doc/libdatrie1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libdatrie=0.2.14-2
'http://deb.debian.org/debian/pool/main/libd/libdatrie/libdatrie_0.2.14-2.dsc' libdatrie_0.2.14-2.dsc 2218 SHA256:de9e104f3e5c956159d92bfda0794316bd614d9e3e0ebdbd1e694b7dbb5a740a
'http://deb.debian.org/debian/pool/main/libd/libdatrie/libdatrie_0.2.14.orig.tar.xz' libdatrie_0.2.14.orig.tar.xz 325696 SHA256:f04095010518635b51c2313efa4f290b7db828d6273e39b2b8858f859dfe81d5
'http://deb.debian.org/debian/pool/main/libd/libdatrie/libdatrie_0.2.14-2.debian.tar.xz' libdatrie_0.2.14-2.debian.tar.xz 9884 SHA256:ba430b3c72d4f12299148d910159c4cc1b14c264b569c3654de15a5d69e917ef
```

Other potentially useful URLs:

- https://sources.debian.net/src/libdatrie/0.2.14-2/ (for browsing the source)
- https://sources.debian.net/src/libdatrie/0.2.14-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libdatrie/0.2.14-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libde265=1.1.1-1`

Binary Packages:

- `libde265-0:amd64=1.1.1-1`

Licenses: (parsed from: `/usr/share/doc/libde265-0/copyright`)

- `BSD-4-clause-UC`
- `Expat`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`
- `other-1`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libde265=1.1.1-1
'http://deb.debian.org/debian/pool/main/libd/libde265/libde265_1.1.1-1.dsc' libde265_1.1.1-1.dsc 2217 SHA256:3f19a2f0acdc853aeda89c6404abb1fefc8e7401ecaf733405ef227aa0895aa0
'http://deb.debian.org/debian/pool/main/libd/libde265/libde265_1.1.1.orig.tar.gz' libde265_1.1.1.orig.tar.gz 315566 SHA256:fd48a927e94ed74fc7ce8829d222b9d8599fcbfe8b6448ba66705babc56ab219
'http://deb.debian.org/debian/pool/main/libd/libde265/libde265_1.1.1-1.debian.tar.xz' libde265_1.1.1-1.debian.tar.xz 136296 SHA256:871384ea40d46bb94089303697c4ace91d65621a495c8ec32550bead547ae78d
```

Other potentially useful URLs:

- https://sources.debian.net/src/libde265/1.1.1-1/ (for browsing the source)
- https://sources.debian.net/src/libde265/1.1.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libde265/1.1.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libdeflate=1.25-1`

Binary Packages:

- `libdeflate-dev:amd64=1.25-1`
- `libdeflate0:amd64=1.25-1`

Licenses: (parsed from: `/usr/share/doc/libdeflate-dev/copyright`, `/usr/share/doc/libdeflate0/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libdeflate=1.25-1
'http://deb.debian.org/debian/pool/main/libd/libdeflate/libdeflate_1.25-1.dsc' libdeflate_1.25-1.dsc 2503 SHA256:b3a5cae0a95ebd0f9c99eb977d75a9f0df29f637656567b2a73b039a65d85ba3
'http://deb.debian.org/debian/pool/main/libd/libdeflate/libdeflate_1.25.orig.tar.xz' libdeflate_1.25.orig.tar.xz 153076 SHA256:aff01dcf6ccfd2b4615bcfcf02ef34f52a7965018c0202110fb005eb6007fc33
'http://deb.debian.org/debian/pool/main/libd/libdeflate/libdeflate_1.25-1.debian.tar.xz' libdeflate_1.25-1.debian.tar.xz 5496 SHA256:6ccee9b873e36dfcac5b6acb81126c6c9323a1c87157ab9fc13202042732ccc6
```

Other potentially useful URLs:

- https://sources.debian.net/src/libdeflate/1.25-1/ (for browsing the source)
- https://sources.debian.net/src/libdeflate/1.25-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libdeflate/1.25-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libedit=3.1-20260512-1`

Binary Packages:

- `libedit2:amd64=3.1-20260512-1`

Licenses: (parsed from: `/usr/share/doc/libedit2/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris libedit=3.1-20260512-1
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20260512-1.dsc' libedit_3.1-20260512-1.dsc 2262 SHA256:81decfa94ffa80aa1d1acc71f0a41df827c94cff651326fd9cac328bfb3e26bf
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20260512.orig.tar.gz' libedit_3.1-20260512.orig.tar.gz 550471 SHA256:432d5e7ea8b0116dd39f2eca7bc11d0eed77faa6b77ea526ace89907c23ea4a0
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20260512-1.debian.tar.xz' libedit_3.1-20260512-1.debian.tar.xz 16728 SHA256:cec152c354e35e7634a19f6ee1e4a96f1ef063271677637011d23d6ab0aca512
```

Other potentially useful URLs:

- https://sources.debian.net/src/libedit/3.1-20260512-1/ (for browsing the source)
- https://sources.debian.net/src/libedit/3.1-20260512-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libedit/3.1-20260512-1/ (for access to the source package after it no longer exists in the archive)

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
'http://deb.debian.org/debian/pool/main/libe/liberror-perl/liberror-perl_0.17030-1.dsc' liberror-perl_0.17030-1.dsc 2337 SHA256:44590c5e4057ee2b2090b7ca661cdbead886528a2b5b5fa7ae708f8b9c1814bf
'http://deb.debian.org/debian/pool/main/libe/liberror-perl/liberror-perl_0.17030.orig.tar.gz' liberror-perl_0.17030.orig.tar.gz 33488 SHA256:34d382276c0fb0d6b38355b94c96a30b12d834d5662eb53f088ee25e3e712924
'http://deb.debian.org/debian/pool/main/libe/liberror-perl/liberror-perl_0.17030-1.debian.tar.xz' liberror-perl_0.17030-1.debian.tar.xz 4660 SHA256:6824b886f5068d9345279e2425b423fd47623c3ffe74732074b67c5863040ac7
```

Other potentially useful URLs:

- https://sources.debian.net/src/liberror-perl/0.17030-1/ (for browsing the source)
- https://sources.debian.net/src/liberror-perl/0.17030-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/liberror-perl/0.17030-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libevent=2.1.13-stable-1`

Binary Packages:

- `libevent-2.1-7t64:amd64=2.1.13-stable-1`
- `libevent-core-2.1-7t64:amd64=2.1.13-stable-1`
- `libevent-dev=2.1.13-stable-1`
- `libevent-extra-2.1-7t64:amd64=2.1.13-stable-1`
- `libevent-openssl-2.1-7t64:amd64=2.1.13-stable-1`
- `libevent-pthreads-2.1-7t64:amd64=2.1.13-stable-1`

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
$ apt-get source -qq --print-uris libevent=2.1.13-stable-1
'http://deb.debian.org/debian/pool/main/libe/libevent/libevent_2.1.13-stable-1.dsc' libevent_2.1.13-stable-1.dsc 2679 SHA256:88c565f54a45d5eb35b47d4e827ff8476467244b30987136fc6939673eaeffd1
'http://deb.debian.org/debian/pool/main/libe/libevent/libevent_2.1.13-stable.orig.tar.gz' libevent_2.1.13-stable.orig.tar.gz 1126525 SHA256:f7e9383b8c0baa81b687e5b5eecc01beefaf1b19b64151d95ed61647fe7a315c
'http://deb.debian.org/debian/pool/main/libe/libevent/libevent_2.1.13-stable.orig.tar.gz.asc' libevent_2.1.13-stable.orig.tar.gz.asc 833 SHA256:d875a6a702adbd0bb28e99e0add5cd9558514d4167068374a3d1676fa9fb31e0
'http://deb.debian.org/debian/pool/main/libe/libevent/libevent_2.1.13-stable-1.debian.tar.xz' libevent_2.1.13-stable-1.debian.tar.xz 18000 SHA256:791df04bdf33bcedbb5d383cc99691af414cbaa7a4022f0add49d358f47863cc
```

Other potentially useful URLs:

- https://sources.debian.net/src/libevent/2.1.13-stable-1/ (for browsing the source)
- https://sources.debian.net/src/libevent/2.1.13-stable-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libevent/2.1.13-stable-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libexif=0.6.26-1`

Binary Packages:

- `libexif-dev:amd64=0.6.26-1`
- `libexif12:amd64=0.6.26-1`

Licenses: (parsed from: `/usr/share/doc/libexif-dev/copyright`, `/usr/share/doc/libexif12/copyright`)

- `BSD-3-Clause`
- `CC0-1.0`
- `FSFAP`
- `GPL-2`
- `GPL-2.0`
- `LGPL-2.0`
- `LGPL-2.0-or-later`
- `LGPL-2.1`
- `LGPL-2.1-or-later`
- `LicenseRef-Wrobel`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libexif=0.6.26-1
'http://deb.debian.org/debian/pool/main/libe/libexif/libexif_0.6.26-1.dsc' libexif_0.6.26-1.dsc 2338 SHA256:bfd9da708ecb8e881f18578ec25e0debd0f003f76803f180ac9203b065aac773
'http://deb.debian.org/debian/pool/main/libe/libexif/libexif_0.6.26.orig.tar.gz' libexif_0.6.26.orig.tar.gz 1314752 SHA256:c759d7f2a3977dc1ab693b410745fd525ff1d9c4efdaa24b4ab4b013e4c9b84a
'http://deb.debian.org/debian/pool/main/libe/libexif/libexif_0.6.26-1.debian.tar.xz' libexif_0.6.26-1.debian.tar.xz 12528 SHA256:2a109e9b67fc8c28ea8c51305fae830260a05ef3ab9b026e81505dc706de993e
```

Other potentially useful URLs:

- https://sources.debian.net/src/libexif/0.6.26-1/ (for browsing the source)
- https://sources.debian.net/src/libexif/0.6.26-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libexif/0.6.26-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libffi=3.5.2-4`

Binary Packages:

- `libffi-dev:amd64=3.5.2-4`
- `libffi8:amd64=3.5.2-4`

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
$ apt-get source -qq --print-uris libffi=3.5.2-4
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.5.2-4.dsc' libffi_3.5.2-4.dsc 2093 SHA256:537ef63c317c13600feee9398eb5137d5e8e82326330d85252f257c44ab161af
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.5.2.orig.tar.gz' libffi_3.5.2.orig.tar.gz 598870 SHA256:dd19253d3007f366319a51d248a40c9e5fcace4498cbea990b566291844e4e30
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.5.2-4.debian.tar.xz' libffi_3.5.2-4.debian.tar.xz 11000 SHA256:b609c6c98ece9551817d00c570d6ced0553bcf261c4568750ca8be1c95e24177
```

Other potentially useful URLs:

- https://sources.debian.net/src/libffi/3.5.2-4/ (for browsing the source)
- https://sources.debian.net/src/libffi/3.5.2-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libffi/3.5.2-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libfido2=1.17.0-1`

Binary Packages:

- `libfido2-1:amd64=1.17.0-1`

Licenses: (parsed from: `/usr/share/doc/libfido2-1/copyright`)

- `BSD-2-clause`
- `ISC`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libfido2/1.17.0-1/


### `dpkg` source package: `libgcrypt20=1.12.2-1`

Binary Packages:

- `libgcrypt20:amd64=1.12.2-1`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.12.2-1
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.12.2-1.dsc' libgcrypt20_1.12.2-1.dsc 2962 SHA256:84f47a6d056e207c99b7c125f57540a2371b9d0f4753d312befad0e1508a8f9d
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.12.2.orig.tar.bz2' libgcrypt20_1.12.2.orig.tar.bz2 4441855 SHA256:7ce33c2492221a0436f96a8500215e9f3e3dcb5fd26a757cd415e7a843babd5e
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.12.2.orig.tar.bz2.asc' libgcrypt20_1.12.2.orig.tar.bz2.asc 265 SHA256:8badf1f557b7b24ad5c9b96951c573c4f7b5cdecc7ea017edda00e8c985d25b1
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.12.2-1.debian.tar.xz' libgcrypt20_1.12.2-1.debian.tar.xz 39472 SHA256:46614c77c8ea09f230a19291facee4d555acb170f77c1c5758f3dea8b028f1eb
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgcrypt20/1.12.2-1/ (for browsing the source)
- https://sources.debian.net/src/libgcrypt20/1.12.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgcrypt20/1.12.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgpg-error=1.61-3`

Binary Packages:

- `libgpg-error0:amd64=1.61-3`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.61-3
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.61-3.dsc' libgpg-error_1.61-3.dsc 2969 SHA256:221693105c0b7de558df61791165de0413945f382e86b2e10c085f7f4950eff5
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.61.orig.tar.bz2' libgpg-error_1.61.orig.tar.bz2 1124751 SHA256:7a85413f2bc354f4f8aa832b718af122e48965e9e0eb9012ee659c13c6385c93
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.61.orig.tar.bz2.asc' libgpg-error_1.61.orig.tar.bz2.asc 464 SHA256:1da4cba04029be7cfd101de3cf8f1bd2b072bf080a9023050a09937922d6507f
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.61-3.debian.tar.xz' libgpg-error_1.61-3.debian.tar.xz 22004 SHA256:3c36083f5aabf831786434b652f2df85236f9ff1acc55203509c5c64355bec47
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgpg-error/1.61-3/ (for browsing the source)
- https://sources.debian.net/src/libgpg-error/1.61-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgpg-error/1.61-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libheif=1.21.2-4`

Binary Packages:

- `libheif-plugin-dav1d:amd64=1.21.2-4+b1`
- `libheif-plugin-libde265:amd64=1.21.2-4+b1`
- `libheif1:amd64=1.21.2-4+b1`

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
$ apt-get source -qq --print-uris libheif=1.21.2-4
'http://deb.debian.org/debian/pool/main/libh/libheif/libheif_1.21.2-4.dsc' libheif_1.21.2-4.dsc 3818 SHA256:eabbac1a1ac5d5f16f7290ad2b7398b1fbf865df5e27ad3a332fe548a4e7ddf8
'http://deb.debian.org/debian/pool/main/libh/libheif/libheif_1.21.2.orig.tar.gz' libheif_1.21.2.orig.tar.gz 1859435 SHA256:75f530b7154bc93e7ecf846edfc0416bf5f490612de8c45983c36385aa742b42
'http://deb.debian.org/debian/pool/main/libh/libheif/libheif_1.21.2-4.debian.tar.xz' libheif_1.21.2-4.debian.tar.xz 14152 SHA256:50bd1c0fba56d9e9b1712f12217082b7b4d94ab03ec4811ddc3b26dfb8ca7f64
```

Other potentially useful URLs:

- https://sources.debian.net/src/libheif/1.21.2-4/ (for browsing the source)
- https://sources.debian.net/src/libheif/1.21.2-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libheif/1.21.2-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libice=2:1.1.1-1`

Binary Packages:

- `libice-dev:amd64=2:1.1.1-1+b2`
- `libice6:amd64=2:1.1.1-1+b2`

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

### `dpkg` source package: `libidn2=2.3.8-5`

Binary Packages:

- `libidn2-0:amd64=2.3.8-5`
- `libidn2-dev:amd64=2.3.8-5`

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
$ apt-get source -qq --print-uris libidn2=2.3.8-5
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.3.8-5.dsc' libidn2_2.3.8-5.dsc 2814 SHA256:de4afc07cba8d236401fe67856f5b38c6a809a57e48bc122c1fefe7b8870c289
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.3.8.orig.tar.gz' libidn2_2.3.8.orig.tar.gz 718637 SHA256:bbad1678d35d28e2c62e6a2577083829461402d9e47b908791c55314a5cb5e04
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.3.8.orig.tar.gz.asc' libidn2_2.3.8.orig.tar.gz.asc 1223 SHA256:8995cab7db361d9d6989eab26d9b521c74236960a5d78250121c8d369b013bd8
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.3.8-5.debian.tar.xz' libidn2_2.3.8-5.debian.tar.xz 18168 SHA256:747f8c75e254d27f500134e732bf084020079700af9139faf81d0e182dee8718
```

Other potentially useful URLs:

- https://sources.debian.net/src/libidn2/2.3.8-5/ (for browsing the source)
- https://sources.debian.net/src/libidn2/2.3.8-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libidn2/2.3.8-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libjpeg-turbo=1:3.1.3-4`

Binary Packages:

- `libjpeg-dev:amd64=1:3.1.3-4`
- `libjpeg62-turbo:amd64=1:3.1.3-4`
- `libjpeg62-turbo-dev:amd64=1:3.1.3-4`

Licenses: (parsed from: `/usr/share/doc/libjpeg-dev/copyright`, `/usr/share/doc/libjpeg62-turbo/copyright`, `/usr/share/doc/libjpeg62-turbo-dev/copyright`)

- `BSD-3-clause`
- `BSD-BY-LC-NE`
- `Beerware`
- `Expat`
- `GPL-2`
- `GPL-3`
- `NTP`
- `Zlib`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libjpeg-turbo=1:3.1.3-4
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_3.1.3-4.dsc' libjpeg-turbo_3.1.3-4.dsc 2508 SHA256:f1c5c6f2e2f379a51c91dc456690c278e80d15081ab619c2c89255100d0cf54d
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_3.1.3.orig.tar.gz' libjpeg-turbo_3.1.3.orig.tar.gz 2516606 SHA256:3a13a5ba767dc8264bc40b185e41368a80d5d5f945944d1dbaa4b2fb0099f4e5
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_3.1.3-4.debian.tar.xz' libjpeg-turbo_3.1.3-4.debian.tar.xz 111372 SHA256:369fc469ad91071d1c125b00d01085a54c8fdd20dd5ee2f8a58d30e547f17d9c
```

Other potentially useful URLs:

- https://sources.debian.net/src/libjpeg-turbo/1:3.1.3-4/ (for browsing the source)
- https://sources.debian.net/src/libjpeg-turbo/1:3.1.3-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libjpeg-turbo/1:3.1.3-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libksba=1.8.0-3`

Binary Packages:

- `libksba8:amd64=1.8.0-3`

Licenses: (parsed from: `/usr/share/doc/libksba8/copyright`)

- `FSFUL`
- `GPL-3`
- `LGPL-2.1-or-later`

Source:

```console
$ apt-get source -qq --print-uris libksba=1.8.0-3
'http://deb.debian.org/debian/pool/main/libk/libksba/libksba_1.8.0-3.dsc' libksba_1.8.0-3.dsc 2548 SHA256:066e74e3e21ae410743bac49f5c4d9c4ae9b41df03405e3106ff3bf6c7a7a06b
'http://deb.debian.org/debian/pool/main/libk/libksba/libksba_1.8.0.orig.tar.bz2' libksba_1.8.0.orig.tar.bz2 721895 SHA256:296b9db9095749f2aa104202d7ab7fd09ad10710e00780a709c9754b1a1d9292
'http://deb.debian.org/debian/pool/main/libk/libksba/libksba_1.8.0.orig.tar.bz2.asc' libksba_1.8.0.orig.tar.bz2.asc 265 SHA256:320a0aa87a9638f2869e345235dc76da9f9497e1d7f42358312af54a30304c15
'http://deb.debian.org/debian/pool/main/libk/libksba/libksba_1.8.0-3.debian.tar.xz' libksba_1.8.0-3.debian.tar.xz 15460 SHA256:094820748afcaf7ab007f09218af04b8f8faf9710dfab7be04c926013060b74a
```

Other potentially useful URLs:

- https://sources.debian.net/src/libksba/1.8.0-3/ (for browsing the source)
- https://sources.debian.net/src/libksba/1.8.0-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libksba/1.8.0-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `liblqr=0.4.2-2.2`

Binary Packages:

- `liblqr-1-0:amd64=0.4.2-2.2+b1`
- `liblqr-1-0-dev:amd64=0.4.2-2.2+b1`

Licenses: (parsed from: `/usr/share/doc/liblqr-1-0/copyright`, `/usr/share/doc/liblqr-1-0-dev/copyright`)

- `GPL-3`
- `GPLv3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris liblqr=0.4.2-2.2
'http://deb.debian.org/debian/pool/main/libl/liblqr/liblqr_0.4.2-2.2.dsc' liblqr_0.4.2-2.2.dsc 1953 SHA256:c56881b7708688812d7b6103e7b6103e9c2108d0e778c4e6f07ef713111549f9
'http://deb.debian.org/debian/pool/main/libl/liblqr/liblqr_0.4.2.orig.tar.gz' liblqr_0.4.2.orig.tar.gz 439884 SHA256:d4c22373432cca749e4326cd41fce365e6ff857c0bfd7a5302b8eb34b69f0336
'http://deb.debian.org/debian/pool/main/libl/liblqr/liblqr_0.4.2-2.2.debian.tar.xz' liblqr_0.4.2-2.2.debian.tar.xz 5788 SHA256:26525ba92ad5e37df54aac6ca14548ae9729b251c1525294ed388d47260d967a
```

Other potentially useful URLs:

- https://sources.debian.net/src/liblqr/0.4.2-2.2/ (for browsing the source)
- https://sources.debian.net/src/liblqr/0.4.2-2.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/liblqr/0.4.2-2.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libmaxminddb=1.13.3-1`

Binary Packages:

- `libmaxminddb-dev:amd64=1.13.3-1`
- `libmaxminddb0:amd64=1.13.3-1`

Licenses: (parsed from: `/usr/share/doc/libmaxminddb-dev/copyright`, `/usr/share/doc/libmaxminddb0/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `BSD-3-clause`
- `Expat`
- `LGPL-3`
- `LGPL-3.0+`

Source:

```console
$ apt-get source -qq --print-uris libmaxminddb=1.13.3-1
'http://deb.debian.org/debian/pool/main/libm/libmaxminddb/libmaxminddb_1.13.3-1.dsc' libmaxminddb_1.13.3-1.dsc 2264 SHA256:19a6b81a9df78159161b36ce756b543a0070c648dea7eb4d41acf2a6658f4956
'http://deb.debian.org/debian/pool/main/libm/libmaxminddb/libmaxminddb_1.13.3.orig.tar.gz' libmaxminddb_1.13.3.orig.tar.gz 404341 SHA256:49d3a0a682472f479f6675db01a07b85c16d58dedd459d54abd9b6ddd872f947
'http://deb.debian.org/debian/pool/main/libm/libmaxminddb/libmaxminddb_1.13.3-1.debian.tar.xz' libmaxminddb_1.13.3-1.debian.tar.xz 6928 SHA256:2caac60c4c44dfbcdc16ede53ee54c01ea4d70b4742dfc51f78f4634931f4218
```

Other potentially useful URLs:

- https://sources.debian.net/src/libmaxminddb/1.13.3-1/ (for browsing the source)
- https://sources.debian.net/src/libmaxminddb/1.13.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libmaxminddb/1.13.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libmd=1.2.0-2`

Binary Packages:

- `libmd0:amd64=1.2.0-2`

Licenses: (parsed from: `/usr/share/doc/libmd0/copyright`)

- `BSD-2-clause`
- `BSD-2-clause-NetBSD`
- `BSD-2-clause-contributors`
- `BSD-3-clause`
- `BSD-3-clause-Aaron-D-Gifford`
- `Beerware`
- `ISC`
- `public-domain-md4`
- `public-domain-md5`
- `public-domain-sha1`

Source:

```console
$ apt-get source -qq --print-uris libmd=1.2.0-2
'http://deb.debian.org/debian/pool/main/libm/libmd/libmd_1.2.0-2.dsc' libmd_1.2.0-2.dsc 2588 SHA256:5b7729eddce8491214e6525182f8d11223e26b859283922643a9d2a73cc7892d
'http://deb.debian.org/debian/pool/main/libm/libmd/libmd_1.2.0.orig.tar.xz' libmd_1.2.0.orig.tar.xz 287992 SHA256:ac15ffb8430502fbaccdec66c5a82ee0eab0b0f36220df56710feadfeb13d0a0
'http://deb.debian.org/debian/pool/main/libm/libmd/libmd_1.2.0.orig.tar.xz.asc' libmd_1.2.0.orig.tar.xz.asc 931 SHA256:73fabccfa20d77cb2e7db897aadf1a9bc69975906103381f7ca94564cea4f4a0
'http://deb.debian.org/debian/pool/main/libm/libmd/libmd_1.2.0-2.debian.tar.xz' libmd_1.2.0-2.debian.tar.xz 8760 SHA256:f874725b64236f70749c9234a132f789fc8357da9f4ecfca67923abcd05a4047
```

Other potentially useful URLs:

- https://sources.debian.net/src/libmd/1.2.0-2/ (for browsing the source)
- https://sources.debian.net/src/libmd/1.2.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libmd/1.2.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libpng1.6=1.6.58-1`

Binary Packages:

- `libpng-dev:amd64=1.6.58-1`
- `libpng16-16t64:amd64=1.6.58-1`

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
$ apt-get source -qq --print-uris libpng1.6=1.6.58-1
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.58-1.dsc' libpng1.6_1.6.58-1.dsc 2310 SHA256:8c4e34fc52b8d5d7c4099bd9002d175da7625f7fe63446a01bb82426895af7fb
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.58.orig.tar.gz' libpng1.6_1.6.58.orig.tar.gz 1592190 SHA256:a9d4df463d36a6e5f9c29bd6f4967312d17e996c1854f3511f833924eb1993cf
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.58-1.debian.tar.xz' libpng1.6_1.6.58-1.debian.tar.xz 33432 SHA256:ac653ad3e2cd0df252f7d86c17e911e2bbc65875e5247d769c2b558332e1a3e7
```

Other potentially useful URLs:

- https://sources.debian.net/src/libpng1.6/1.6.58-1/ (for browsing the source)
- https://sources.debian.net/src/libpng1.6/1.6.58-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpng1.6/1.6.58-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libpsl=0.22.0-1`

Binary Packages:

- `libpsl-dev:amd64=0.22.0-1`
- `libpsl5t64:amd64=0.22.0-1`

Licenses: (parsed from: `/usr/share/doc/libpsl-dev/copyright`, `/usr/share/doc/libpsl5t64/copyright`)

- `Chromium`
- `MIT`
- `gnulib`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libpsl/0.22.0-1/


### `dpkg` source package: `libraw=0.22.1-1`

Binary Packages:

- `libraw25:amd64=0.22.1-1`

Licenses: (parsed from: `/usr/share/doc/libraw25/copyright`)

- `BSD-3-clause`
- `CC-BY-SA-3.0`
- `CDDL-1.0`
- `GPL-2`
- `GPL-2+`
- `GPL-3+ with Autoconf-2.0~Archive exception`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libraw=0.22.1-1
'http://deb.debian.org/debian/pool/main/libr/libraw/libraw_0.22.1-1.dsc' libraw_0.22.1-1.dsc 2215 SHA256:580454f4a94eed249fb919e97aa19d1910ff20df6ebae4ecb3c78a7c1054ec4c
'http://deb.debian.org/debian/pool/main/libr/libraw/libraw_0.22.1.orig.tar.gz' libraw_0.22.1.orig.tar.gz 604601 SHA256:e676248284075605aa2697a66eeed7dc258820bd1d4988c724d29edffd726726
'http://deb.debian.org/debian/pool/main/libr/libraw/libraw_0.22.1-1.debian.tar.xz' libraw_0.22.1-1.debian.tar.xz 26168 SHA256:3f9d2afa551b6c733c0f68052991b897123e0cb75d66dc522af6595b7cc9c51c
```

Other potentially useful URLs:

- https://sources.debian.net/src/libraw/0.22.1-1/ (for browsing the source)
- https://sources.debian.net/src/libraw/0.22.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libraw/0.22.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libseccomp=2.6.0-2`

Binary Packages:

- `libseccomp2:amd64=2.6.0-2+b1`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2.1`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libseccomp/2.6.0-2/


### `dpkg` source package: `libselinux=3.10-1`

Binary Packages:

- `libselinux-dev:amd64=3.10-1`
- `libselinux1:amd64=3.10-1`

Licenses: (parsed from: `/usr/share/doc/libselinux-dev/copyright`, `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libselinux=3.10-1
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_3.10-1.dsc' libselinux_3.10-1.dsc 3050 SHA256:60d0f0cabfe5aaf19179307dd81e89d957fae2b5a4f1e950766e14e8a673e6e9
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_3.10.orig.tar.gz' libselinux_3.10.orig.tar.gz 205800 SHA256:1ef216c5b56fb7e0a51cd2909787a175a17ee391e0467894807873539ebe766b
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_3.10.orig.tar.gz.asc' libselinux_3.10.orig.tar.gz.asc 1000 SHA256:39dac0fe73847c0329f59ffe138d7baba193f1edf9fd6d5d226335ef4543c17d
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_3.10-1.debian.tar.xz' libselinux_3.10-1.debian.tar.xz 51700 SHA256:64e32e99debda65bb5c4c761961568e7669b65867df266e199788cd4ea61f7dc
```

Other potentially useful URLs:

- https://sources.debian.net/src/libselinux/3.10-1/ (for browsing the source)
- https://sources.debian.net/src/libselinux/3.10-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libselinux/3.10-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsemanage=3.10-1`

Binary Packages:

- `libsemanage-common=3.10-1`
- `libsemanage2:amd64=3.10-1`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage2/copyright`)

- `GPL-2`
- `LGPL-2.1`
- `LGPL-2.1+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libsemanage/3.10-1/


### `dpkg` source package: `libsepol=3.11-1`

Binary Packages:

- `libsepol-dev:amd64=3.11-1`
- `libsepol2:amd64=3.11-1`

Licenses: (parsed from: `/usr/share/doc/libsepol-dev/copyright`, `/usr/share/doc/libsepol2/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris libsepol=3.11-1
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_3.11-1.dsc' libsepol_3.11-1.dsc 2233 SHA256:0ede9ae24a7c3edc91bd9181be1e86b604aac2d558ef4427afa839fb778ecada
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_3.11.orig.tar.gz' libsepol_3.11.orig.tar.gz 533422 SHA256:79f3d2c88f44b7eb5cf54d9792e03232297e17f97a179163f2750099a00f164d
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_3.11.orig.tar.gz.asc' libsepol_3.11.orig.tar.gz.asc 833 SHA256:ae72650075dd2e29bbf0ac35e3b07254f13c2c0acb19501cb2c6ade73c8f0319
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_3.11-1.debian.tar.xz' libsepol_3.11-1.debian.tar.xz 21648 SHA256:f70c179c1cdf19a68e002888190e2f8f187ab4bcfe963f6a059f0e49177fda4e
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsepol/3.11-1/ (for browsing the source)
- https://sources.debian.net/src/libsepol/3.11-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsepol/3.11-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsm=2:1.2.6-1`

Binary Packages:

- `libsm-dev:amd64=2:1.2.6-1+b2`
- `libsm6:amd64=2:1.2.6-1+b2`

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

### `dpkg` source package: `libssh2=1.11.1-4`

Binary Packages:

- `libssh2-1-dev:amd64=1.11.1-4`
- `libssh2-1t64:amd64=1.11.1-4`

Licenses: (parsed from: `/usr/share/doc/libssh2-1-dev/copyright`, `/usr/share/doc/libssh2-1t64/copyright`)

- `BSD3`
- `ISC`

Source:

```console
$ apt-get source -qq --print-uris libssh2=1.11.1-4
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.11.1-4.dsc' libssh2_1.11.1-4.dsc 2329 SHA256:efe3cc06d27337d41aec053dccfc6a742d22a134c1b484c2104327bc81770948
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.11.1.orig.tar.gz' libssh2_1.11.1.orig.tar.gz 1093012 SHA256:d9ec76cbe34db98eec3539fe2c899d26b0c837cb3eb466a56b0f109cabf658f7
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.11.1.orig.tar.gz.asc' libssh2_1.11.1.orig.tar.gz.asc 488 SHA256:f5618c9356a1d5a8059d6cf64015d86547f06b2b8b1f542fbbaf381a736c8075
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.11.1-4.debian.tar.xz' libssh2_1.11.1-4.debian.tar.xz 19516 SHA256:e899b43734e37e9f8a08d293265eea8d131bc5206634fc3b3f563ab6b5bdbbc4
```

Other potentially useful URLs:

- https://sources.debian.net/src/libssh2/1.11.1-4/ (for browsing the source)
- https://sources.debian.net/src/libssh2/1.11.1-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libssh2/1.11.1-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libtasn1-6=4.21.0-2`

Binary Packages:

- `libtasn1-6:amd64=4.21.0-2+b1`
- `libtasn1-6-dev:amd64=4.21.0-2+b1`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`, `/usr/share/doc/libtasn1-6-dev/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=4.21.0-2
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.21.0-2.dsc' libtasn1-6_4.21.0-2.dsc 2665 SHA256:781fb83a70d7e0357e6a70e54e11712b471ba11804e119d621682fc741376a4a
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.21.0.orig.tar.gz' libtasn1-6_4.21.0.orig.tar.gz 1816537 SHA256:1d8a444a223cc5464240777346e125de51d8e6abf0b8bac742ac84609167dc87
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.21.0.orig.tar.gz.asc' libtasn1-6_4.21.0.orig.tar.gz.asc 1223 SHA256:a81037649b953c9ecb2e8f8fa24cb5c79456fd9af31499d6b753fa6569656807
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.21.0-2.debian.tar.xz' libtasn1-6_4.21.0-2.debian.tar.xz 19408 SHA256:baeb1f6c25a1623e6b3834de85e2a69e81b82fdbd5bac9379fc5e699c83d9866
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtasn1-6/4.21.0-2/ (for browsing the source)
- https://sources.debian.net/src/libtasn1-6/4.21.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtasn1-6/4.21.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libtext-charwidth-perl=0.04-12`

Binary Packages:

- `libtext-charwidth-perl:amd64=0.04-12`

Licenses: (parsed from: `/usr/share/doc/libtext-charwidth-perl/copyright`)

- `Artistic`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris libtext-charwidth-perl=0.04-12
'http://deb.debian.org/debian/pool/main/libt/libtext-charwidth-perl/libtext-charwidth-perl_0.04-12.dsc' libtext-charwidth-perl_0.04-12.dsc 2445 SHA256:c22cf0bf84997839735a1b22e6481714c0cec221130a9acc1e013e481a2c3824
'http://deb.debian.org/debian/pool/main/libt/libtext-charwidth-perl/libtext-charwidth-perl_0.04.orig.tar.bz2' libtext-charwidth-perl_0.04.orig.tar.bz2 8327 SHA256:2990c13c3f4a5479d7dbc5a94b86c23798cf0dc7df54ffe54e065f072558b6ed
'http://deb.debian.org/debian/pool/main/libt/libtext-charwidth-perl/libtext-charwidth-perl_0.04-12.debian.tar.xz' libtext-charwidth-perl_0.04-12.debian.tar.xz 3092 SHA256:690117d55b5079c539581b5bb70642fcff5bb963b71a1dac592cf9c23313f1f9
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtext-charwidth-perl/0.04-12/ (for browsing the source)
- https://sources.debian.net/src/libtext-charwidth-perl/0.04-12/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtext-charwidth-perl/0.04-12/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libtext-wrapi18n-perl=0.06-11`

Binary Packages:

- `libtext-wrapi18n-perl=0.06-11`

Licenses: (parsed from: `/usr/share/doc/libtext-wrapi18n-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris libtext-wrapi18n-perl=0.06-11
'http://deb.debian.org/debian/pool/main/libt/libtext-wrapi18n-perl/libtext-wrapi18n-perl_0.06-11.dsc' libtext-wrapi18n-perl_0.06-11.dsc 2456 SHA256:87afa5dc3a1999bae99b60febfdb5e4b41d46394e49935aa9984c5481cb5c58b
'http://deb.debian.org/debian/pool/main/libt/libtext-wrapi18n-perl/libtext-wrapi18n-perl_0.06.orig.tar.gz' libtext-wrapi18n-perl_0.06.orig.tar.gz 3797 SHA256:432c2a801efe9f12d631124c1163439eac4c99449ba13d80133c45ecacc627f5
'http://deb.debian.org/debian/pool/main/libt/libtext-wrapi18n-perl/libtext-wrapi18n-perl_0.06-11.debian.tar.xz' libtext-wrapi18n-perl_0.06-11.debian.tar.xz 3556 SHA256:d2788432330a094a2f3c4b02aaa96758c017f107fbfc2eff9d4f1715172e5d28
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtext-wrapi18n-perl/0.06-11/ (for browsing the source)
- https://sources.debian.net/src/libtext-wrapi18n-perl/0.06-11/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtext-wrapi18n-perl/0.06-11/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libthai=0.1.30-2`

Binary Packages:

- `libthai-data=0.1.30-2`
- `libthai0:amd64=0.1.30-2`

Licenses: (parsed from: `/usr/share/doc/libthai-data/copyright`, `/usr/share/doc/libthai0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libthai/0.1.30-2/


### `dpkg` source package: `libtool=2.5.4-11`

Binary Packages:

- `libltdl-dev:amd64=2.5.4-11`
- `libltdl7:amd64=2.5.4-11`
- `libtool=2.5.4-11`

Licenses: (parsed from: `/usr/share/doc/libltdl-dev/copyright`, `/usr/share/doc/libltdl7/copyright`, `/usr/share/doc/libtool/copyright`)

- `GFDL-1.3`
- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libtool=2.5.4-11
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.5.4-11.dsc' libtool_2.5.4-11.dsc 2285 SHA256:06f672c1be24965997ea7fa6da8c0e83270912fee72188973e2612450af36a41
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.5.4.orig.tar.xz' libtool_2.5.4.orig.tar.xz 1069572 SHA256:d9189031edeaa6aa74695b2aeb80a8c26df50b29d8b72c991667e01adecea42c
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.5.4-11.debian.tar.xz' libtool_2.5.4-11.debian.tar.xz 40924 SHA256:a4c610afa0df691f0d3a17b8d5e17d5fd0eac9935d69cb93537e563c0b2dd33e
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtool/2.5.4-11/ (for browsing the source)
- https://sources.debian.net/src/libtool/2.5.4-11/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtool/2.5.4-11/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libunistring=1.4.2-1`

Binary Packages:

- `libunistring-dev:amd64=1.4.2-1`
- `libunistring5:amd64=1.4.2-1`

Licenses: (parsed from: `/usr/share/doc/libunistring-dev/copyright`, `/usr/share/doc/libunistring5/copyright`)

- `BSD-3-clause`
- `FSFAP`
- `FSFUL`
- `FSFULLR`
- `GFDL-1.2+`
- `GFDL-1.3+`
- `GPL`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Libtool exception`
- `GPL-2+,`
- `GPL-3`
- `GPL-3+`
- `ISC`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`
- `Libtool-exception`
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
$ apt-get source -qq --print-uris libunistring=1.4.2-1
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_1.4.2-1.dsc' libunistring_1.4.2-1.dsc 2598 SHA256:23db4b46f7068c4100e7932280a18886d42b82577436b552a5f191e2b5fbe377
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_1.4.2.orig.tar.xz' libunistring_1.4.2.orig.tar.xz 2786084 SHA256:5b46e74377ed7409c5b75e7a96f95377b095623b689d8522620927964a41499c
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_1.4.2.orig.tar.xz.asc' libunistring_1.4.2.orig.tar.xz.asc 228 SHA256:45c91e28678c341a925a6b1237711d308249aef29db63d8df0376249ebf67d3b
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_1.4.2-1.debian.tar.xz' libunistring_1.4.2-1.debian.tar.xz 26820 SHA256:63a9396d129024ea6981d9de2dda4f9e5ef550c51a2be585271ce29b4da1325c
```

Other potentially useful URLs:

- https://sources.debian.net/src/libunistring/1.4.2-1/ (for browsing the source)
- https://sources.debian.net/src/libunistring/1.4.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libunistring/1.4.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libwebp=1.5.0-0.1`

Binary Packages:

- `libsharpyuv-dev:amd64=1.5.0-0.1+b2`
- `libsharpyuv0:amd64=1.5.0-0.1+b2`
- `libwebp-dev:amd64=1.5.0-0.1+b2`
- `libwebp7:amd64=1.5.0-0.1+b2`
- `libwebpdecoder3:amd64=1.5.0-0.1+b2`
- `libwebpdemux2:amd64=1.5.0-0.1+b2`
- `libwebpmux3:amd64=1.5.0-0.1+b2`

Licenses: (parsed from: `/usr/share/doc/libsharpyuv-dev/copyright`, `/usr/share/doc/libsharpyuv0/copyright`, `/usr/share/doc/libwebp-dev/copyright`, `/usr/share/doc/libwebp7/copyright`, `/usr/share/doc/libwebpdecoder3/copyright`, `/usr/share/doc/libwebpdemux2/copyright`, `/usr/share/doc/libwebpmux3/copyright`)

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

### `dpkg` source package: `libwmf=0.2.14-1`

Binary Packages:

- `libwmf-0.2-7:amd64=0.2.14-1`
- `libwmf-dev=0.2.14-1`
- `libwmflite-0.2-7:amd64=0.2.14-1`

Licenses: (parsed from: `/usr/share/doc/libwmf-0.2-7/copyright`, `/usr/share/doc/libwmf-dev/copyright`, `/usr/share/doc/libwmflite-0.2-7/copyright`)

- `AGPL-3 with Font exception`
- `GD`
- `ISC`
- `LGPL-2`
- `LGPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libwmf=0.2.14-1
'http://deb.debian.org/debian/pool/main/libw/libwmf/libwmf_0.2.14-1.dsc' libwmf_0.2.14-1.dsc 2368 SHA256:832d1ee81021cfea0f99c3e8a4e6848a1357c4f32827bc719abb901ba6845632
'http://deb.debian.org/debian/pool/main/libw/libwmf/libwmf_0.2.14.orig.tar.gz' libwmf_0.2.14.orig.tar.gz 2628359 SHA256:1754bb4816d892fdd217909fd8f1d3b45adf4cc3c0f28aba46ebb3d09021374b
'http://deb.debian.org/debian/pool/main/libw/libwmf/libwmf_0.2.14-1.debian.tar.xz' libwmf_0.2.14-1.debian.tar.xz 25496 SHA256:bd492645a1c94fadb26e7bf61c26a4e601cec9699607b3ca4b644834f3e056a3
```

Other potentially useful URLs:

- https://sources.debian.net/src/libwmf/0.2.14-1/ (for browsing the source)
- https://sources.debian.net/src/libwmf/0.2.14-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libwmf/0.2.14-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libx11=2:1.8.13-1`

Binary Packages:

- `libx11-6:amd64=2:1.8.13-1`
- `libx11-data=2:1.8.13-1`
- `libx11-dev:amd64=2:1.8.13-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libx11=2:1.8.13-1
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.8.13-1.dsc' libx11_1.8.13-1.dsc 2490 SHA256:59a024bc689876cafcdd6532e074ae1daa7b7198e102187685224b0793696f56
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.8.13.orig.tar.gz' libx11_1.8.13.orig.tar.gz 3217264 SHA256:acf0e7cd7541110e6330ecb539441a2d53061f386ec7be6906dfde0de2598470
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.8.13.orig.tar.gz.asc' libx11_1.8.13.orig.tar.gz.asc 833 SHA256:391221d291778f72b600104fb7907e8fb0ee61813ca5ab443bf0a0dcc3a1ce65
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.8.13-1.diff.gz' libx11_1.8.13-1.diff.gz 76915 SHA256:571b7234db455a649a8ffe6599eaebb8f31e47528f21ec3caa2e255da75dd699
```

Other potentially useful URLs:

- https://sources.debian.net/src/libx11/2:1.8.13-1/ (for browsing the source)
- https://sources.debian.net/src/libx11/2:1.8.13-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libx11/2:1.8.13-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxau=1:1.0.11-1`

Binary Packages:

- `libxau-dev:amd64=1:1.0.11-1+b2`
- `libxau6:amd64=1:1.0.11-1+b2`

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

- `libxcb-render0:amd64=1.17.0-2+b2`
- `libxcb-shm0:amd64=1.17.0-2+b2`
- `libxcb1:amd64=1.17.0-2+b2`
- `libxcb1-dev:amd64=1.17.0-2+b2`

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

### `dpkg` source package: `libxcrypt=1:4.5.1-1`

Binary Packages:

- `libcrypt1:amd64=1:4.5.1-1+b1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcrypt=1:4.5.1-1
'http://deb.debian.org/debian/pool/main/libx/libxcrypt/libxcrypt_4.5.1-1.dsc' libxcrypt_4.5.1-1.dsc 2434 SHA256:c9051653fc74d9209e8a3f8b496c359cfecdf7992b0a73f69c090973bae90e4b
'http://deb.debian.org/debian/pool/main/libx/libxcrypt/libxcrypt_4.5.1.orig.tar.xz' libxcrypt_4.5.1.orig.tar.xz 433264 SHA256:bddf278d44e2ecdbf1439a52ddc0bb292921dd9f3013030a2a8461c32a45533f
'http://deb.debian.org/debian/pool/main/libx/libxcrypt/libxcrypt_4.5.1-1.debian.tar.xz' libxcrypt_4.5.1-1.debian.tar.xz 8684 SHA256:b6096f6498adf5a94d727c9065ed33b784190e8c2cd3eda5f073e435708293ae
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxcrypt/1:4.5.1-1/ (for browsing the source)
- https://sources.debian.net/src/libxcrypt/1:4.5.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxcrypt/1:4.5.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxdmcp=1:1.1.5-2`

Binary Packages:

- `libxdmcp-dev:amd64=1:1.1.5-2+b1`
- `libxdmcp6:amd64=1:1.1.5-2+b1`

Licenses: (parsed from: `/usr/share/doc/libxdmcp-dev/copyright`, `/usr/share/doc/libxdmcp6/copyright`)

- `OpenGroup-MIT`

Source:

```console
$ apt-get source -qq --print-uris libxdmcp=1:1.1.5-2
'http://deb.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp_1.1.5-2.dsc' libxdmcp_1.1.5-2.dsc 2269 SHA256:c69bdf96d80bdaa2759bf32131e6ec60a5d3e397963f3b13370789dfe8704cdc
'http://deb.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp_1.1.5.orig.tar.gz' libxdmcp_1.1.5.orig.tar.gz 442597 SHA256:31a7abc4f129dcf6f27ae912c3eedcb94d25ad2e8f317f69df6eda0bc4e4f2f3
'http://deb.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp_1.1.5.orig.tar.gz.asc' libxdmcp_1.1.5.orig.tar.gz.asc 833 SHA256:0c7666da02d66ab785584cd16a6f9324f0d949555734e70b3b1385e525c7860b
'http://deb.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp_1.1.5-2.diff.gz' libxdmcp_1.1.5-2.diff.gz 10201 SHA256:c64245c976c5e54214c43936aa73a7186c417f549fb0d10ee396fe34d6115196
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxdmcp/1:1.1.5-2/ (for browsing the source)
- https://sources.debian.net/src/libxdmcp/1:1.1.5-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxdmcp/1:1.1.5-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxext=2:1.3.4-1`

Binary Packages:

- `libxext-dev:amd64=2:1.3.4-1+b4`
- `libxext6:amd64=2:1.3.4-1+b4`

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

### `dpkg` source package: `libxml2=2.15.3+dfsg-1`

Binary Packages:

- `libxml2-16:amd64=2.15.3+dfsg-1`
- `libxml2-dev:amd64=2.15.3+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/libxml2-16/copyright`, `/usr/share/doc/libxml2-dev/copyright`)

- `ISC`
- `MIT-1`

Source:

```console
$ apt-get source -qq --print-uris libxml2=2.15.3+dfsg-1
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.15.3%2bdfsg-1.dsc' libxml2_2.15.3+dfsg-1.dsc 2738 SHA256:0be604718471b1eacd8fffd8f9cb7807b7eea039530e5ec2a264d86332b2c5e9
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.15.3%2bdfsg.orig.tar.xz' libxml2_2.15.3+dfsg.orig.tar.xz 2349324 SHA256:ab227bacf1189534fff004aedaeb2985c8a4de3bed18b7e19fd6485f1f42cf77
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.15.3%2bdfsg-1.debian.tar.xz' libxml2_2.15.3+dfsg-1.debian.tar.xz 36176 SHA256:0d42d072e75663fcf70123a37c6f8176cf918ba6061966cf0f70853ca9d2c9bd
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxml2/2.15.3+dfsg-1/ (for browsing the source)
- https://sources.debian.net/src/libxml2/2.15.3+dfsg-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxml2/2.15.3+dfsg-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxrender=1:0.9.12-1`

Binary Packages:

- `libxrender1:amd64=1:0.9.12-1+b2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrender=1:0.9.12-1
'http://deb.debian.org/debian/pool/main/libx/libxrender/libxrender_0.9.12-1.dsc' libxrender_0.9.12-1.dsc 2258 SHA256:2980c127d296455f4e9bcaf5ba114284fa0735ce3ef5b613dbe99d854bc87ca3
'http://deb.debian.org/debian/pool/main/libx/libxrender/libxrender_0.9.12.orig.tar.gz' libxrender_0.9.12.orig.tar.gz 450034 SHA256:0fff64125819c02d1102b6236f3d7d861a07b5216d8eea336c3811d31494ecf7
'http://deb.debian.org/debian/pool/main/libx/libxrender/libxrender_0.9.12.orig.tar.gz.asc' libxrender_0.9.12.orig.tar.gz.asc 833 SHA256:0bbd310ac3974ef398cf4d8a4b362b0b4d60ceb43e6eba393c3cc740b03816fc
'http://deb.debian.org/debian/pool/main/libx/libxrender/libxrender_0.9.12-1.diff.gz' libxrender_0.9.12-1.diff.gz 21464 SHA256:c0d3e91a3aa474772c242dcbb997504dff4c28e177d9b7fbb70c50ce7bf56fc5
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxrender/1:0.9.12-1/ (for browsing the source)
- https://sources.debian.net/src/libxrender/1:0.9.12-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxrender/1:0.9.12-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxslt=1.1.45-0.1`

Binary Packages:

- `libxslt1-dev:amd64=1.1.45-0.1`
- `libxslt1.1:amd64=1.1.45-0.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxslt=1.1.45-0.1
'http://deb.debian.org/debian/pool/main/libx/libxslt/libxslt_1.1.45-0.1.dsc' libxslt_1.1.45-0.1.dsc 2181 SHA256:1a986a081fa5e01fb0033a93395cf9617a9e589f84b8894a5f15a39a398c5f49
'http://deb.debian.org/debian/pool/main/libx/libxslt/libxslt_1.1.45.orig.tar.xz' libxslt_1.1.45.orig.tar.xz 1519992 SHA256:9acfe68419c4d06a45c550321b3212762d92f41465062ca4ea19e632ee5d216e
'http://deb.debian.org/debian/pool/main/libx/libxslt/libxslt_1.1.45-0.1.debian.tar.xz' libxslt_1.1.45-0.1.debian.tar.xz 26428 SHA256:89a7eb1d86dad60b429c75c640197d91add0dd45acd06db485769837eee8930e
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxslt/1.1.45-0.1/ (for browsing the source)
- https://sources.debian.net/src/libxslt/1.1.45-0.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxslt/1.1.45-0.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxt=1:1.2.1-1.3`

Binary Packages:

- `libxt-dev:amd64=1:1.2.1-1.3+b2`
- `libxt6t64:amd64=1:1.2.1-1.3+b2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxt=1:1.2.1-1.3
'http://deb.debian.org/debian/pool/main/libx/libxt/libxt_1.2.1-1.3.dsc' libxt_1.2.1-1.3.dsc 2359 SHA256:29cbda6ae719fdb74bfcc925b5b477c28e233062cd1e0c44195799c29693826b
'http://deb.debian.org/debian/pool/main/libx/libxt/libxt_1.2.1.orig.tar.gz' libxt_1.2.1.orig.tar.gz 1024473 SHA256:6da1bfa9dd0ed87430a5ce95b129485086394df308998ebe34d98e378e3dfb33
'http://deb.debian.org/debian/pool/main/libx/libxt/libxt_1.2.1.orig.tar.gz.asc' libxt_1.2.1.orig.tar.gz.asc 358 SHA256:da406cc94c25ca6773bb37c2055e2eb5665491f7ca6dfc9ea04f0f30ea3fd098
'http://deb.debian.org/debian/pool/main/libx/libxt/libxt_1.2.1-1.3.diff.gz' libxt_1.2.1-1.3.diff.gz 46408 SHA256:1823454f1a0f59f222beea7e37843987181fdce9232b87c23165a18e93586516
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxt/1:1.2.1-1.3/ (for browsing the source)
- https://sources.debian.net/src/libxt/1:1.2.1-1.3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxt/1:1.2.1-1.3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libyaml=0.2.5-2`

Binary Packages:

- `libyaml-0-2:amd64=0.2.5-2+b1`
- `libyaml-dev:amd64=0.2.5-2+b1`

Licenses: (parsed from: `/usr/share/doc/libyaml-0-2/copyright`, `/usr/share/doc/libyaml-dev/copyright`)

- `Expat`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris libyaml=0.2.5-2
'http://deb.debian.org/debian/pool/main/liby/libyaml/libyaml_0.2.5-2.dsc' libyaml_0.2.5-2.dsc 2040 SHA256:c1c3dab54fe7b355753f46a8c783b74a0a6e1099fb3878f4963a175691351477
'http://deb.debian.org/debian/pool/main/liby/libyaml/libyaml_0.2.5.orig.tar.gz' libyaml_0.2.5.orig.tar.gz 85055 SHA256:fa240dbf262be053f3898006d502d514936c818e422afdcf33921c63bed9bf2e
'http://deb.debian.org/debian/pool/main/liby/libyaml/libyaml_0.2.5-2.debian.tar.xz' libyaml_0.2.5-2.debian.tar.xz 5656 SHA256:3bdf4ab4a530c66358e44129e0f96183a13fcfef4355a41df296b1c5e0cf63d8
```

Other potentially useful URLs:

- https://sources.debian.net/src/libyaml/0.2.5-2/ (for browsing the source)
- https://sources.debian.net/src/libyaml/0.2.5-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libyaml/0.2.5-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libzstd=1.5.7+dfsg-3`

Binary Packages:

- `libzstd-dev:amd64=1.5.7+dfsg-3+b2`
- `libzstd1:amd64=1.5.7+dfsg-3+b2`

Licenses: (parsed from: `/usr/share/doc/libzstd-dev/copyright`, `/usr/share/doc/libzstd1/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris libzstd=1.5.7+dfsg-3
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.5.7%2bdfsg-3.dsc' libzstd_1.5.7+dfsg-3.dsc 2490 SHA256:e32b7bb90ac7b312238add6abb77023cec6f59385b1c9a78b41b69ea2ef5001a
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.5.7%2bdfsg.orig.tar.xz' libzstd_1.5.7+dfsg.orig.tar.xz 1834780 SHA256:0c092ef267edce57ba7f3f2645c861f72eaf5e76273c6c3632869423464b90a5
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.5.7%2bdfsg-3.debian.tar.xz' libzstd_1.5.7+dfsg-3.debian.tar.xz 23164 SHA256:ada18b02a46878f2f0a845fd003179ab9591f7f96f0b984db06a024ab46ae81f
```

Other potentially useful URLs:

- https://sources.debian.net/src/libzstd/1.5.7+dfsg-3/ (for browsing the source)
- https://sources.debian.net/src/libzstd/1.5.7+dfsg-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libzstd/1.5.7+dfsg-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `linux=7.1.3-1`

Binary Packages:

- `linux-libc-dev=7.1.3-1`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `GPL-2+-or-X11`
- `LGPL-2.1`
- `Unicode-data`
- `Xen-interface`

Source:

```console
$ apt-get source -qq --print-uris linux=7.1.3-1
'http://deb.debian.org/debian/pool/main/l/linux/linux_7.1.3-1.dsc' linux_7.1.3-1.dsc 194732 SHA256:5ce6d1419d7dc69ff782c3a0b5173159ebb29cffa7003fec9fba59c2707ada82
'http://deb.debian.org/debian/pool/main/l/linux/linux_7.1.3.orig.tar.xz' linux_7.1.3.orig.tar.xz 161574724 SHA256:61cdf2ccda33d046aa9fcd40a130bfddd03a3c8b2379fc08925f0efe7f69a32c
'http://deb.debian.org/debian/pool/main/l/linux/linux_7.1.3-1.debian.tar.xz' linux_7.1.3-1.debian.tar.xz 1469968 SHA256:05580592ecefe9c138f2d550bc7111d43bba4996580e16339ca6cc34489c6a49
```

Other potentially useful URLs:

- https://sources.debian.net/src/linux/7.1.3-1/ (for browsing the source)
- https://sources.debian.net/src/linux/7.1.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/linux/7.1.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lz4=1.10.0-10`

Binary Packages:

- `liblz4-1:amd64=1.10.0-10`

Licenses: (parsed from: `/usr/share/doc/liblz4-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lz4=1.10.0-10
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_1.10.0-10.dsc' lz4_1.10.0-10.dsc 2069 SHA256:eb4cf57b1d20a136ed9fc3f8284a8c676fe93ae96a914df55a5be1c463e28aa5
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_1.10.0.orig.tar.gz' lz4_1.10.0.orig.tar.gz 387114 SHA256:537512904744b35e232912055ccf8ec66d768639ff3abe5788d90d792ec5f48b
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_1.10.0-10.debian.tar.xz' lz4_1.10.0-10.debian.tar.xz 12760 SHA256:2a18bcb82ad51ba330f97eeffe88a27100cc24862e59ec03157d82aa47726518
```

Other potentially useful URLs:

- https://sources.debian.net/src/lz4/1.10.0-10/ (for browsing the source)
- https://sources.debian.net/src/lz4/1.10.0-10/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lz4/1.10.0-10/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `m4=1.4.21-1`

Binary Packages:

- `m4=1.4.21-1`

Licenses: (parsed from: `/usr/share/doc/m4/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris m4=1.4.21-1
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.21-1.dsc' m4_1.4.21-1.dsc 1783 SHA256:b2fcae1991d63b8cfd32f20937b0c2f956702e673b405f7c9fa46b8320b921ff
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.21.orig.tar.xz' m4_1.4.21.orig.tar.xz 2080016 SHA256:f25c6ab51548a73a75558742fb031e0625d6485fe5f9155949d6486a2408ab66
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.21.orig.tar.xz.asc' m4_1.4.21.orig.tar.xz.asc 488 SHA256:e8c5fb8a54f98c9f9504423ce99279a4e4365e30010a67e13e099a3e8242b8f2
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.21-1.debian.tar.xz' m4_1.4.21-1.debian.tar.xz 17296 SHA256:000df03068f06b7a475b4c2652bbd73a54b5df371687567d19b8a3728de726cd
```

Other potentially useful URLs:

- https://sources.debian.net/src/m4/1.4.21-1/ (for browsing the source)
- https://sources.debian.net/src/m4/1.4.21-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/m4/1.4.21-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `make-dfsg=4.4.1-3`

Binary Packages:

- `make=4.4.1-3`

Licenses: (parsed from: `/usr/share/doc/make/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris make-dfsg=4.4.1-3
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.4.1-3.dsc' make-dfsg_4.4.1-3.dsc 1976 SHA256:731cf705bc0d727ddd3c34d717e176d8713efecea83902534502c888edb59c85
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.4.1.orig.tar.xz' make-dfsg_4.4.1.orig.tar.xz 1125180 SHA256:3b16b00ea1079af9f8096bbc71ff7cc00c249fc6a862003da3c42308a0adb0fe
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.4.1-3.debian.tar.xz' make-dfsg_4.4.1-3.debian.tar.xz 44236 SHA256:315b591ae5ead58c9f904c532d939c7658073e38ff93f7c1694db83683796511
```

Other potentially useful URLs:

- https://sources.debian.net/src/make-dfsg/4.4.1-3/ (for browsing the source)
- https://sources.debian.net/src/make-dfsg/4.4.1-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/make-dfsg/4.4.1-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mariadb=1:11.8.8-1`

Binary Packages:

- `libmariadb-dev=1:11.8.8-1`
- `libmariadb-dev-compat=1:11.8.8-1`
- `libmariadb3:amd64=1:11.8.8-1`
- `mariadb-common=1:11.8.8-1`

Licenses: (parsed from: `/usr/share/doc/libmariadb-dev/copyright`, `/usr/share/doc/libmariadb-dev-compat/copyright`, `/usr/share/doc/libmariadb3/copyright`, `/usr/share/doc/mariadb-common/copyright`)

- `Artistic`
- `BSD-2-Clause`
- `BSD-2-clause`
- `BSD-3-Clause`
- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `GPL-2+-with-bison-exception`
- `GPL-3+-with-bison-exception`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `SWsoft`
- `public-domain`
- `unlimited-free-doc`
- `zlib/libpng`

Source:

```console
$ apt-get source -qq --print-uris mariadb=1:11.8.8-1
'http://deb.debian.org/debian/pool/main/m/mariadb/mariadb_11.8.8-1.dsc' mariadb_11.8.8-1.dsc 5637 SHA256:92d2ce77abb8a895977299ef878969749b88c22cf8f53b1661a31188f7514aa4
'http://deb.debian.org/debian/pool/main/m/mariadb/mariadb_11.8.8.orig.tar.gz' mariadb_11.8.8.orig.tar.gz 119402982 SHA256:bd023a4959faf012db7f0ebfc0d276729e67e5443df193163f98d80fdfc524c9
'http://deb.debian.org/debian/pool/main/m/mariadb/mariadb_11.8.8.orig.tar.gz.asc' mariadb_11.8.8.orig.tar.gz.asc 833 SHA256:12601a392e99fc15abd5c03abe3b5217d50e8a8578fc93fd3a6cd871552e6065
'http://deb.debian.org/debian/pool/main/m/mariadb/mariadb_11.8.8-1.debian.tar.xz' mariadb_11.8.8-1.debian.tar.xz 303436 SHA256:01fff8e0ce19920d371f11a2eb623e3a72952ea415602186816621ddf3c48fb8
```

Other potentially useful URLs:

- https://sources.debian.net/src/mariadb/1:11.8.8-1/ (for browsing the source)
- https://sources.debian.net/src/mariadb/1:11.8.8-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mariadb/1:11.8.8-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mawk=1.3.4.20260302-1`

Binary Packages:

- `mawk=1.3.4.20260302-1`

Licenses: (parsed from: `/usr/share/doc/mawk/copyright`)

- `CC-BY-3.0`
- `GPL-2`
- `GPL-2.0-only`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris mawk=1.3.4.20260302-1
'http://deb.debian.org/debian/pool/main/m/mawk/mawk_1.3.4.20260302-1.dsc' mawk_1.3.4.20260302-1.dsc 2969 SHA256:26e1f5c5864ea340a8f16049025a31be2aa16c7bb59ad531616e7066032953e4
'http://deb.debian.org/debian/pool/main/m/mawk/mawk_1.3.4.20260302.orig.tar.gz' mawk_1.3.4.20260302.orig.tar.gz 438318 SHA256:e2c08a77d0a84a01f9be454d1ca3872d4f103f9ada683d075198b0c6e965633d
'http://deb.debian.org/debian/pool/main/m/mawk/mawk_1.3.4.20260302.orig.tar.gz.asc' mawk_1.3.4.20260302.orig.tar.gz.asc 729 SHA256:19d493061dff7df253d698f866be24856028155f51abb037fdb4ad2872d611f5
'http://deb.debian.org/debian/pool/main/m/mawk/mawk_1.3.4.20260302-1.debian.tar.xz' mawk_1.3.4.20260302-1.debian.tar.xz 16128 SHA256:0e9a3e00800cb10dab402196b0511ed19a9f626e351b6cc1b807026f3594de62
```

Other potentially useful URLs:

- https://sources.debian.net/src/mawk/1.3.4.20260302-1/ (for browsing the source)
- https://sources.debian.net/src/mawk/1.3.4.20260302-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mawk/1.3.4.20260302-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `media-types=14.0.0`

Binary Packages:

- `media-types=14.0.0`

Licenses: (parsed from: `/usr/share/doc/media-types/copyright`)

- `ad-hoc`

Source:

```console
$ apt-get source -qq --print-uris media-types=14.0.0
'http://deb.debian.org/debian/pool/main/m/media-types/media-types_14.0.0.dsc' media-types_14.0.0.dsc 1917 SHA256:a81f910e05176114f966815e900fc6eed2b6c144ae3a234cb39e0c6b757a3ef2
'http://deb.debian.org/debian/pool/main/m/media-types/media-types_14.0.0.tar.xz' media-types_14.0.0.tar.xz 65204 SHA256:d5877ac8c1fa3661b3c9ace293ae154c844fad686786f085e954c014f7e73f4d
```

Other potentially useful URLs:

- https://sources.debian.net/src/media-types/14.0.0/ (for browsing the source)
- https://sources.debian.net/src/media-types/14.0.0/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/media-types/14.0.0/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mercurial=7.2.2-1`

Binary Packages:

- `mercurial=7.2.2-1`
- `mercurial-common=7.2.2-1`

Licenses: (parsed from: `/usr/share/doc/mercurial/copyright`, `/usr/share/doc/mercurial-common/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/mercurial/7.2.2-1/


### `dpkg` source package: `mpclib3=1.3.1-3`

Binary Packages:

- `libmpc3:amd64=1.3.1-3`

Licenses: (parsed from: `/usr/share/doc/libmpc3/copyright`)

- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpclib3=1.3.1-3
'http://deb.debian.org/debian/pool/main/m/mpclib3/mpclib3_1.3.1-3.dsc' mpclib3_1.3.1-3.dsc 2003 SHA256:9c97361ff164b9719ed368673a1a2d4da8fe13aadb1863e7c567f35f2b23db28
'http://deb.debian.org/debian/pool/main/m/mpclib3/mpclib3_1.3.1.orig.tar.gz' mpclib3_1.3.1.orig.tar.gz 773573 SHA256:ab642492f5cf882b74aa0cb730cd410a81edcdbec895183ce930e706c1c759b8
'http://deb.debian.org/debian/pool/main/m/mpclib3/mpclib3_1.3.1-3.debian.tar.xz' mpclib3_1.3.1-3.debian.tar.xz 4672 SHA256:4c837eaa8ff949992def5dc6fd78c9296287bad0ec1170c96584a84b3be14934
```

Other potentially useful URLs:

- https://sources.debian.net/src/mpclib3/1.3.1-3/ (for browsing the source)
- https://sources.debian.net/src/mpclib3/1.3.1-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mpclib3/1.3.1-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mpfr4=4.2.2-3`

Binary Packages:

- `libmpfr6:amd64=4.2.2-3`

Licenses: (parsed from: `/usr/share/doc/libmpfr6/copyright`)

- `GFDL-1.2`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpfr4=4.2.2-3
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_4.2.2-3.dsc' mpfr4_4.2.2-3.dsc 2081 SHA256:b240c6b8218b2409911bd29be2a5be9d18120df28f347c1b52d1b10daa280a2c
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_4.2.2.orig.tar.xz' mpfr4_4.2.2.orig.tar.xz 1505596 SHA256:b67ba0383ef7e8a8563734e2e889ef5ec3c3b898a01d00fa0a6869ad81c6ce01
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_4.2.2-3.debian.tar.xz' mpfr4_4.2.2-3.debian.tar.xz 12652 SHA256:b2f1c2a9203277ebdb741dd761e33a5d6c8b881da0084efa957b63d422efe52c
```

Other potentially useful URLs:

- https://sources.debian.net/src/mpfr4/4.2.2-3/ (for browsing the source)
- https://sources.debian.net/src/mpfr4/4.2.2-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mpfr4/4.2.2-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mysql-defaults=1.1.1`

Binary Packages:

- `default-libmysqlclient-dev:amd64=1.1.1+b1`
- `mysql-common=5.8+1.1.1`

Licenses: (parsed from: `/usr/share/doc/default-libmysqlclient-dev/copyright`, `/usr/share/doc/mysql-common/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mysql-defaults=1.1.1
'http://deb.debian.org/debian/pool/main/m/mysql-defaults/mysql-defaults_1.1.1.dsc' mysql-defaults_1.1.1.dsc 2202 SHA256:4fd91907a56a2251e2e0dc0faa37c52299a2ae8d68e457cd250ac29d160090f1
'http://deb.debian.org/debian/pool/main/m/mysql-defaults/mysql-defaults_1.1.1.tar.xz' mysql-defaults_1.1.1.tar.xz 7460 SHA256:054d8da3bfd3419081a7ccb795ad614c235e8aa06674c5588cb88973467c1cdc
```

Other potentially useful URLs:

- https://sources.debian.net/src/mysql-defaults/1.1.1/ (for browsing the source)
- https://sources.debian.net/src/mysql-defaults/1.1.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mysql-defaults/1.1.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ncurses=6.6+20260608-2`

Binary Packages:

- `libncurses-dev:amd64=6.6+20260608-2`
- `libncurses6:amd64=6.6+20260608-2`
- `libncursesw6:amd64=6.6+20260608-2`
- `libtinfo6:amd64=6.6+20260608-2`
- `ncurses-base=6.6+20260608-2`
- `ncurses-bin=6.6+20260608-2`

Licenses: (parsed from: `/usr/share/doc/libncurses-dev/copyright`, `/usr/share/doc/libncurses6/copyright`, `/usr/share/doc/libncursesw6/copyright`, `/usr/share/doc/libtinfo6/copyright`, `/usr/share/doc/ncurses-base/copyright`, `/usr/share/doc/ncurses-bin/copyright`)

- `BSD-3-clause`
- `MIT/X11`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris ncurses=6.6+20260608-2
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.6%2b20260608-2.dsc' ncurses_6.6+20260608-2.dsc 4163 SHA256:d12b31c11fad1c5baf42e36d643edd72cecacec67c2d14e759da42a61759582a
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.6%2b20260608.orig.tar.gz' ncurses_6.6+20260608.orig.tar.gz 3806095 SHA256:3b91eb714ba61b9ebfcfe09cf8e7c1c45cf2e8a6282f5887fb942db514ae93bd
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.6%2b20260608.orig.tar.gz.asc' ncurses_6.6+20260608.orig.tar.gz.asc 729 SHA256:46de216bd447b5855b7df45d3da5a85f382aa1fea778180459049b2d6ee3c9b9
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.6%2b20260608-2.debian.tar.xz' ncurses_6.6+20260608-2.debian.tar.xz 50996 SHA256:52a49c453121bd90d21edef53903beac9d9d8229e0ef4f49d3b0252e49932f4c
```

Other potentially useful URLs:

- https://sources.debian.net/src/ncurses/6.6+20260608-2/ (for browsing the source)
- https://sources.debian.net/src/ncurses/6.6+20260608-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ncurses/6.6+20260608-2/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `nettle=3.10.2-1`

Binary Packages:

- `libhogweed6t64:amd64=3.10.2-1+b1`
- `libnettle8t64:amd64=3.10.2-1+b1`
- `nettle-dev:amd64=3.10.2-1+b1`

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
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.10.2-1.dsc' nettle_3.10.2-1.dsc 2297 SHA256:e2f713973191da5d021759173f2176c21abb5f9420df45cd93a8ff058d62493f
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.10.2.orig.tar.gz' nettle_3.10.2.orig.tar.gz 2644644 SHA256:fe9ff51cb1f2abb5e65a6b8c10a92da0ab5ab6eaf26e7fc2b675c45f1fb519b5
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.10.2.orig.tar.gz.asc' nettle_3.10.2.orig.tar.gz.asc 573 SHA256:3496de6ba5685733aaab2e4e611ea5860fdd76964c56c995f5a0b4c2ec5084ae
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.10.2-1.debian.tar.xz' nettle_3.10.2-1.debian.tar.xz 25052 SHA256:6f5be658d8bfbc5ffd3c75bd15b8a40fd51c5dd4ae10519d7835be135944f0a7
```

Other potentially useful URLs:

- https://sources.debian.net/src/nettle/3.10.2-1/ (for browsing the source)
- https://sources.debian.net/src/nettle/3.10.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nettle/3.10.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nghttp2=1.69.0-1`

Binary Packages:

- `libnghttp2-14:amd64=1.69.0-1`
- `libnghttp2-dev:amd64=1.69.0-1`

Licenses: (parsed from: `/usr/share/doc/libnghttp2-14/copyright`, `/usr/share/doc/libnghttp2-dev/copyright`)

- `BSD-2-clause`
- `Expat`
- `GPL-3`
- `GPL-3+ with autoconf exception`
- `MIT`
- `all-permissive`

Source:

```console
$ apt-get source -qq --print-uris nghttp2=1.69.0-1
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.69.0-1.dsc' nghttp2_1.69.0-1.dsc 2753 SHA256:ed3da08fe5fecf6c891d665a188253c86b5a1aad8013645202977cfba7fafc67
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.69.0.orig.tar.gz' nghttp2_1.69.0.orig.tar.gz 2667714 SHA256:c866b7477cbb7512ab6863a685027adbb1bb8da8fc3bab7429ed43d3281d5aa9
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.69.0.orig.tar.gz.asc' nghttp2_1.69.0.orig.tar.gz.asc 833 SHA256:d97bb0333f15587a12be5efbe883e223e90c7a214d738311ce71034203559f93
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.69.0-1.debian.tar.xz' nghttp2_1.69.0-1.debian.tar.xz 15048 SHA256:f3867c74362b07c53bd4e983072051f4d41ac486f72de7a1efb40e9f2cc8b0cf
```

Other potentially useful URLs:

- https://sources.debian.net/src/nghttp2/1.69.0-1/ (for browsing the source)
- https://sources.debian.net/src/nghttp2/1.69.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nghttp2/1.69.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nghttp3=1.15.0-1`

Binary Packages:

- `libnghttp3-9:amd64=1.15.0-1`
- `libnghttp3-dev:amd64=1.15.0-1`

Licenses: (parsed from: `/usr/share/doc/libnghttp3-9/copyright`, `/usr/share/doc/libnghttp3-dev/copyright`)

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/nghttp3/1.15.0-1/


### `dpkg` source package: `ngtcp2=1.22.1-1`

Binary Packages:

- `libngtcp2-16:amd64=1.22.1-1`
- `libngtcp2-crypto-gnutls8:amd64=1.22.1-1`
- `libngtcp2-crypto-ossl-dev:amd64=1.22.1-1`
- `libngtcp2-crypto-ossl0:amd64=1.22.1-1`
- `libngtcp2-dev:amd64=1.22.1-1`

Licenses: (parsed from: `/usr/share/doc/libngtcp2-16/copyright`, `/usr/share/doc/libngtcp2-crypto-gnutls8/copyright`, `/usr/share/doc/libngtcp2-crypto-ossl-dev/copyright`, `/usr/share/doc/libngtcp2-crypto-ossl0/copyright`, `/usr/share/doc/libngtcp2-dev/copyright`)

- `FSFAP`
- `FSFUL`
- `FSFULLR`
- `GPL-2`
- `GPL-2+ with Autoconf generic exception`
- `GPL-2+ with Libtool Exception`
- `GPL-3`
- `GPL-3+ with Autoconf Macro's Exception`
- `GPL-3+ with Autoconf generic exception`
- `ISC`
- `MIT`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/ngtcp2/1.22.1-1/


### `dpkg` source package: `npth=1.8-3`

Binary Packages:

- `libnpth0t64:amd64=1.8-3+b2`

Licenses: (parsed from: `/usr/share/doc/libnpth0t64/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris npth=1.8-3
'http://deb.debian.org/debian/pool/main/n/npth/npth_1.8-3.dsc' npth_1.8-3.dsc 2188 SHA256:4d447cdfdc0034465181f7285ae7d52f4e1b7ca9a60f4fec4effae556d6d5c46
'http://deb.debian.org/debian/pool/main/n/npth/npth_1.8.orig.tar.bz2' npth_1.8.orig.tar.bz2 317739 SHA256:8bd24b4f23a3065d6e5b26e98aba9ce783ea4fd781069c1b35d149694e90ca3e
'http://deb.debian.org/debian/pool/main/n/npth/npth_1.8.orig.tar.bz2.asc' npth_1.8.orig.tar.bz2.asc 390 SHA256:1a2bd2f85ad832d5166e616cbf336b072c6bdc20335146c5adccd3e2795a24bc
'http://deb.debian.org/debian/pool/main/n/npth/npth_1.8-3.debian.tar.xz' npth_1.8-3.debian.tar.xz 8668 SHA256:b2ec0499de431042120dd56338f9f7ae600b1cbc00dcb71efe39d62d8960cb73
```

Other potentially useful URLs:

- https://sources.debian.net/src/npth/1.8-3/ (for browsing the source)
- https://sources.debian.net/src/npth/1.8-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/npth/1.8-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openexr=3.4.6+ds-4`

Binary Packages:

- `libopenexr-3-4-33:amd64=3.4.6+ds-4+b2`
- `libopenexr-dev=3.4.6+ds-4+b2`

Licenses: (parsed from: `/usr/share/doc/libopenexr-3-4-33/copyright`, `/usr/share/doc/libopenexr-dev/copyright`)

- `BSD-3-clause`
- `openexr`

Source:

```console
$ apt-get source -qq --print-uris openexr=3.4.6+ds-4
'http://deb.debian.org/debian/pool/main/o/openexr/openexr_3.4.6%2bds-4.dsc' openexr_3.4.6+ds-4.dsc 2117 SHA256:4612d347ef5b12183f14af3b0b4e78ee7819e86e856b155ea76421377e70ac27
'http://deb.debian.org/debian/pool/main/o/openexr/openexr_3.4.6%2bds.orig.tar.xz' openexr_3.4.6+ds.orig.tar.xz 20545840 SHA256:38077f666199ab7b972be4455519527f8833c9bc509e7ffb89421dbb73080277
'http://deb.debian.org/debian/pool/main/o/openexr/openexr_3.4.6%2bds-4.debian.tar.xz' openexr_3.4.6+ds-4.debian.tar.xz 17816 SHA256:60ec121805a92147b619127679e2c17c6d00c44c139abef18c6e845dd496308c
```

Other potentially useful URLs:

- https://sources.debian.net/src/openexr/3.4.6+ds-4/ (for browsing the source)
- https://sources.debian.net/src/openexr/3.4.6+ds-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openexr/3.4.6+ds-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openjpeg2=2.5.4-1.1`

Binary Packages:

- `libopenjp2-7:amd64=2.5.4-1.1`
- `libopenjp2-7-dev:amd64=2.5.4-1.1`

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
$ apt-get source -qq --print-uris openjpeg2=2.5.4-1.1
'http://deb.debian.org/debian/pool/main/o/openjpeg2/openjpeg2_2.5.4-1.1.dsc' openjpeg2_2.5.4-1.1.dsc 2606 SHA256:39545c11967f2a4468105a4074fa93810a57a445fafcc0180aa123676194b7ab
'http://deb.debian.org/debian/pool/main/o/openjpeg2/openjpeg2_2.5.4.orig.tar.xz' openjpeg2_2.5.4.orig.tar.xz 1395184 SHA256:6f6cf917e9587bc2df83aee5b51aa22dd56111640b3bad290b93443b6a4682b7
'http://deb.debian.org/debian/pool/main/o/openjpeg2/openjpeg2_2.5.4-1.1.debian.tar.xz' openjpeg2_2.5.4-1.1.debian.tar.xz 16116 SHA256:d01df7527cd2ed2a332284fa81d68af2783e9706d83f08dc90402b4fee3a71ed
```

Other potentially useful URLs:

- https://sources.debian.net/src/openjpeg2/2.5.4-1.1/ (for browsing the source)
- https://sources.debian.net/src/openjpeg2/2.5.4-1.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openjpeg2/2.5.4-1.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openjph=0.28.1-1`

Binary Packages:

- `libopenjph-dev:amd64=0.28.1-1`
- `libopenjph0.28:amd64=0.28.1-1`

Licenses: (parsed from: `/usr/share/doc/libopenjph-dev/copyright`, `/usr/share/doc/libopenjph0.28/copyright`)

- `BSD-2-clause`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris openjph=0.28.1-1
'http://deb.debian.org/debian/pool/main/o/openjph/openjph_0.28.1-1.dsc' openjph_0.28.1-1.dsc 2172 SHA256:5815a549f9a9cf760bf01d6f71dea977497f300135f017180d13b089cf351161
'http://deb.debian.org/debian/pool/main/o/openjph/openjph_0.28.1.orig.tar.gz' openjph_0.28.1.orig.tar.gz 497176 SHA256:0b9bf698534cd121e422ff82e8ba86e4a9770a199314ef02358a86abc543d762
'http://deb.debian.org/debian/pool/main/o/openjph/openjph_0.28.1-1.debian.tar.xz' openjph_0.28.1-1.debian.tar.xz 5568 SHA256:ba6cdba33c1fea71d12b3ba97088dd92b64f04d91cc700409fad3f8e1b0f6bd9
```

Other potentially useful URLs:

- https://sources.debian.net/src/openjph/0.28.1-1/ (for browsing the source)
- https://sources.debian.net/src/openjph/0.28.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openjph/0.28.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openldap=2.6.10+dfsg-1`

Binary Packages:

- `libldap-dev:amd64=2.6.10+dfsg-1+b2`
- `libldap2:amd64=2.6.10+dfsg-1+b2`

Licenses: (parsed from: `/usr/share/doc/libldap-dev/copyright`, `/usr/share/doc/libldap2/copyright`)

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/openldap/2.6.10+dfsg-1/


### `dpkg` source package: `openssh=1:10.3p1-5`

Binary Packages:

- `openssh-client=1:10.3p1-5`

Licenses: (parsed from: `/usr/share/doc/openssh-client/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `Expat`
- `Expat-with-advertising-restriction`
- `FSFULLR`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `Mazieres-BSD-style`
- `OpenSSH`
- `Powell-BSD-style`
- `X11`
- `curl`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/openssh/1:10.3p1-5/


### `dpkg` source package: `openssl=3.6.3-1`

Binary Packages:

- `libssl-dev:amd64=3.6.3-1`
- `libssl3t64:amd64=3.6.3-1`
- `openssl=3.6.3-1`
- `openssl-provider-legacy=3.6.3-1`

Licenses: (parsed from: `/usr/share/doc/libssl-dev/copyright`, `/usr/share/doc/libssl3t64/copyright`, `/usr/share/doc/openssl/copyright`, `/usr/share/doc/openssl-provider-legacy/copyright`)

- `Apache-2.0`
- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris openssl=3.6.3-1
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_3.6.3-1.dsc' openssl_3.6.3-1.dsc 2675 SHA256:490192136153d535905ab20e2912f6044a794bbd9abc2d7e5183753be53ba8b4
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_3.6.3.orig.tar.gz' openssl_3.6.3.orig.tar.gz 54953005 SHA256:243a86649cf6f23eeb6a2ff2456e09e5d77dd9018a54d3d96b0c6bdd6ba6c7f1
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_3.6.3.orig.tar.gz.asc' openssl_3.6.3.orig.tar.gz.asc 833 SHA256:b63c50e25308f0ace0186196b0b65b698cc73e814a7cc29cd7a43c6d134fd8b4
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_3.6.3-1.debian.tar.xz' openssl_3.6.3-1.debian.tar.xz 51336 SHA256:359040b3f618c38d601968fd097eef2eb4b66de0beb98d862457618f3ce13b26
```

Other potentially useful URLs:

- https://sources.debian.net/src/openssl/3.6.3-1/ (for browsing the source)
- https://sources.debian.net/src/openssl/3.6.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openssl/3.6.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `p11-kit=0.26.2-3`

Binary Packages:

- `libp11-kit-dev:amd64=0.26.2-3`
- `libp11-kit0:amd64=0.26.2-3`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/p11-kit/0.26.2-3/


### `dpkg` source package: `pam=1.7.0-8`

Binary Packages:

- `libpam-modules:amd64=1.7.0-8`
- `libpam-modules-bin=1.7.0-8`
- `libpam-runtime=1.7.0-8`
- `libpam0g:amd64=1.7.0-8`

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
$ apt-get source -qq --print-uris pam=1.7.0-8
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.7.0-8.dsc' pam_1.7.0-8.dsc 2282 SHA256:4bc591c59c32411cc73ac9c1b62278a2bc1a8e960333fefae46f9c8a0ce365a9
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.7.0.orig.tar.xz' pam_1.7.0.orig.tar.xz 507824 SHA256:57dcd7a6b966ecd5bbd95e1d11173734691e16b68692fa59661cdae9b13b1697
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.7.0.orig.tar.xz.asc' pam_1.7.0.orig.tar.xz.asc 801 SHA256:7a8ea18ec7d9dd1f8cbf9055c32128cbca8241aa63e9fea44d56ce6f0e15e441
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.7.0-8.debian.tar.xz' pam_1.7.0-8.debian.tar.xz 144168 SHA256:646da1f17bec967f46ff1fae6890ed3b3b35fe4fb3342e17d9db9ebeb0b6c171
```

Other potentially useful URLs:

- https://sources.debian.net/src/pam/1.7.0-8/ (for browsing the source)
- https://sources.debian.net/src/pam/1.7.0-8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pam/1.7.0-8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pango1.0=1.58.0-1`

Binary Packages:

- `libpango-1.0-0:amd64=1.58.0-1`
- `libpangocairo-1.0-0:amd64=1.58.0-1`
- `libpangoft2-1.0-0:amd64=1.58.0-1`

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
$ apt-get source -qq --print-uris pango1.0=1.58.0-1
'http://deb.debian.org/debian/pool/main/p/pango1.0/pango1.0_1.58.0-1.dsc' pango1.0_1.58.0-1.dsc 3667 SHA256:7e03691fcb3381846b0b201cf4e6c2908bdc305f724e7c25f3bb11e43da5e016
'http://deb.debian.org/debian/pool/main/p/pango1.0/pango1.0_1.58.0.orig.tar.xz' pango1.0_1.58.0.orig.tar.xz 2590672 SHA256:bc5bad6213ad4886a47d1e80292fd850b64159b50db67917a43d9ea80ee2298a
'http://deb.debian.org/debian/pool/main/p/pango1.0/pango1.0_1.58.0-1.debian.tar.xz' pango1.0_1.58.0-1.debian.tar.xz 44304 SHA256:e1266e4b0d833a464a36635558caba33e8f73082d094fd1cb0eeff8d2b438c91
```

Other potentially useful URLs:

- https://sources.debian.net/src/pango1.0/1.58.0-1/ (for browsing the source)
- https://sources.debian.net/src/pango1.0/1.58.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pango1.0/1.58.0-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `pcre2=10.46-1`

Binary Packages:

- `libpcre2-16-0:amd64=10.46-1+b2`
- `libpcre2-32-0:amd64=10.46-1+b2`
- `libpcre2-8-0:amd64=10.46-1+b2`
- `libpcre2-dev:amd64=10.46-1+b2`
- `libpcre2-posix3:amd64=10.46-1+b2`

Licenses: (parsed from: `/usr/share/doc/libpcre2-16-0/copyright`, `/usr/share/doc/libpcre2-32-0/copyright`, `/usr/share/doc/libpcre2-8-0/copyright`, `/usr/share/doc/libpcre2-dev/copyright`, `/usr/share/doc/libpcre2-posix3/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-3-clause-Cambridge with BINARY LIBRARY-LIKE PACKAGES exception`
- `X11`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris pcre2=10.46-1
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.46-1.dsc' pcre2_10.46-1.dsc 2337 SHA256:f07e05cd55dd8189d1a7eec2c3ed2d963f51a84ab5494567a112b42f8d525661
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.46.orig.tar.gz' pcre2_10.46.orig.tar.gz 2718545 SHA256:8d28d7f2c3b970c3a4bf3776bcbb5adfc923183ce74bc8df1ebaad8c1985bd07
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.46-1.diff.gz' pcre2_10.46-1.diff.gz 8748 SHA256:307f2b889eb62e71fba064fb6ec65a367f1a88ceb667c4d7109c8d3fe1859e88
```

Other potentially useful URLs:

- https://sources.debian.net/src/pcre2/10.46-1/ (for browsing the source)
- https://sources.debian.net/src/pcre2/10.46-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pcre2/10.46-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `perl=5.40.1-8`

Binary Packages:

- `libperl5.40:amd64=5.40.1-8`
- `perl=5.40.1-8`
- `perl-base=5.40.1-8`
- `perl-modules-5.40=5.40.1-8`

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
$ apt-get source -qq --print-uris perl=5.40.1-8
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.40.1-8.dsc' perl_5.40.1-8.dsc 2372 SHA256:0df3684ddbed6c62651b8f682df33d2af54d47ee238958f30fa26ac066ee88d5
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.40.1.orig-regen-configure.tar.xz' perl_5.40.1.orig-regen-configure.tar.xz 421056 SHA256:4ea023d08101443f6ed9dc3bdd9bb5f5e08087678dc9e443d195df22da36209a
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.40.1.orig.tar.xz' perl_5.40.1.orig.tar.xz 13930924 SHA256:dfa20c2eef2b4af133525610bbb65dd13777ecf998c9c5b1ccf0d308e732ee3f
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.40.1-8.debian.tar.xz' perl_5.40.1-8.debian.tar.xz 179088 SHA256:621e16fec9e822ec835071aa3665ebd329142bcd270b86a6f9bb04cb94a1de08
```

Other potentially useful URLs:

- https://sources.debian.net/src/perl/5.40.1-8/ (for browsing the source)
- https://sources.debian.net/src/perl/5.40.1-8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/perl/5.40.1-8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pinentry=1.3.2-4`

Binary Packages:

- `pinentry-curses=1.3.2-4`

Licenses: (parsed from: `/usr/share/doc/pinentry-curses/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-3`
- `LGPL-3+`
- `X11`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/pinentry/1.3.2-4/


### `dpkg` source package: `pixman=0.46.4-1`

Binary Packages:

- `libpixman-1-0:amd64=0.46.4-1+b2`

Licenses: (parsed from: `/usr/share/doc/libpixman-1-0/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris pixman=0.46.4-1
'http://deb.debian.org/debian/pool/main/p/pixman/pixman_0.46.4-1.dsc' pixman_0.46.4-1.dsc 2019 SHA256:cb83e2f57bff31103db1d6248cacf07862cf060fcbd651b03bdd4cafb61df62c
'http://deb.debian.org/debian/pool/main/p/pixman/pixman_0.46.4.orig.tar.gz' pixman_0.46.4.orig.tar.gz 827198 SHA256:d09c44ebc3bd5bee7021c79f922fe8fb2fb57f7320f55e97ff9914d2346a591c
'http://deb.debian.org/debian/pool/main/p/pixman/pixman_0.46.4-1.diff.gz' pixman_0.46.4-1.diff.gz 9639 SHA256:6e642aa9ca3c9e36d66ac3680a7b63daa73991f8e04429be45841109ddd996b4
```

Other potentially useful URLs:

- https://sources.debian.net/src/pixman/0.46.4-1/ (for browsing the source)
- https://sources.debian.net/src/pixman/0.46.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pixman/0.46.4-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pkgconf=2.5.1-4`

Binary Packages:

- `libpkgconf7:amd64=2.5.1-4`
- `pkgconf:amd64=2.5.1-4`
- `pkgconf-bin=2.5.1-4`

Licenses: (parsed from: `/usr/share/doc/libpkgconf7/copyright`, `/usr/share/doc/pkgconf/copyright`, `/usr/share/doc/pkgconf-bin/copyright`)

- `BSD-2`
- `BSD-4`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris pkgconf=2.5.1-4
'http://deb.debian.org/debian/pool/main/p/pkgconf/pkgconf_2.5.1-4.dsc' pkgconf_2.5.1-4.dsc 1772 SHA256:8c5d2e4fed77764804cd20309bb9f8589bb39b52d215e3318e2e2c0dffd7982f
'http://deb.debian.org/debian/pool/main/p/pkgconf/pkgconf_2.5.1.orig.tar.xz' pkgconf_2.5.1.orig.tar.xz 328064 SHA256:cd05c9589b9f86ecf044c10a2269822bc9eb001eced2582cfffd658b0a50c243
'http://deb.debian.org/debian/pool/main/p/pkgconf/pkgconf_2.5.1-4.debian.tar.xz' pkgconf_2.5.1-4.debian.tar.xz 11116 SHA256:8bcd8fcbcfaceeb7ae2519247dfab0b4f422b56782b48060ec39085abc93eeef
```

Other potentially useful URLs:

- https://sources.debian.net/src/pkgconf/2.5.1-4/ (for browsing the source)
- https://sources.debian.net/src/pkgconf/2.5.1-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pkgconf/2.5.1-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `postgresql-18=18.4-1`

Binary Packages:

- `libpq-dev=18.4-1+b1`
- `libpq5:amd64=18.4-1+b1`

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

Source:

```console
$ apt-get source -qq --print-uris postgresql-18=18.4-1
'http://deb.debian.org/debian/pool/main/p/postgresql-18/postgresql-18_18.4-1.dsc' postgresql-18_18.4-1.dsc 4752 SHA256:149b0158c6689dbb4fc924e5d80375f4a8595e0eea4fb512dc6aea397f220475
'http://deb.debian.org/debian/pool/main/p/postgresql-18/postgresql-18_18.4.orig.tar.bz2' postgresql-18_18.4.orig.tar.bz2 22567173 SHA256:81a81ec695fb0c7901407defaa1d2f7973617154cf27ba74e3a7ab8e64436094
'http://deb.debian.org/debian/pool/main/p/postgresql-18/postgresql-18_18.4-1.debian.tar.xz' postgresql-18_18.4-1.debian.tar.xz 27900 SHA256:1144b0f797277955a5b09c6bef1ff4030f2a9c7bf6285af53e7a2af78c193a73
```

Other potentially useful URLs:

- https://sources.debian.net/src/postgresql-18/18.4-1/ (for browsing the source)
- https://sources.debian.net/src/postgresql-18/18.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/postgresql-18/18.4-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `procps=2:4.0.6-2`

Binary Packages:

- `libproc2-1:amd64=2:4.0.6-2`
- `procps=2:4.0.6-2`

Licenses: (parsed from: `/usr/share/doc/libproc2-1/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris procps=2:4.0.6-2
'http://deb.debian.org/debian/pool/main/p/procps/procps_4.0.6-2.dsc' procps_4.0.6-2.dsc 2124 SHA256:641fd3501edc04fb0f64175433ee1643928fe15301e983386779b1c2d5a81aa3
'http://deb.debian.org/debian/pool/main/p/procps/procps_4.0.6.orig.tar.xz' procps_4.0.6.orig.tar.xz 1577796 SHA256:069333015b10e79440a0884b8d72400819b2ea8d1e77e2b2c3e75de5291eced4
'http://deb.debian.org/debian/pool/main/p/procps/procps_4.0.6-2.debian.tar.xz' procps_4.0.6-2.debian.tar.xz 29732 SHA256:1d56bb5b627b3e8e652f6b5b8b5ea549dc51901f5ba5fb8c8c27dc5f829884d3
```

Other potentially useful URLs:

- https://sources.debian.net/src/procps/2:4.0.6-2/ (for browsing the source)
- https://sources.debian.net/src/procps/2:4.0.6-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/procps/2:4.0.6-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python-packaging=26.2-2`

Binary Packages:

- `python3-packaging=26.2-2`

Licenses: (parsed from: `/usr/share/doc/python3-packaging/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `BSD-3-clause`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-packaging=26.2-2
'http://deb.debian.org/debian/pool/main/p/python-packaging/python-packaging_26.2-2.dsc' python-packaging_26.2-2.dsc 2350 SHA256:38a865384bd2c7f0ed12b6cdb9f0be2988a7e44b9ed9ed51368999b842ddd20a
'http://deb.debian.org/debian/pool/main/p/python-packaging/python-packaging_26.2.orig.tar.gz' python-packaging_26.2.orig.tar.gz 228134 SHA256:ff452ff5a3e828ce110190feff1178bb1f2ea2281fa2075aadb987c2fb221661
'http://deb.debian.org/debian/pool/main/p/python-packaging/python-packaging_26.2-2.debian.tar.xz' python-packaging_26.2-2.debian.tar.xz 6172 SHA256:f2cf94e711b71c28a7e2d053ee24f4899084a39ba8ce1d246c3255ab71579255
```

Other potentially useful URLs:

- https://sources.debian.net/src/python-packaging/26.2-2/ (for browsing the source)
- https://sources.debian.net/src/python-packaging/26.2-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python-packaging/26.2-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python3-defaults=3.13.9-3`

Binary Packages:

- `libpython3-stdlib:amd64=3.13.9-3+b1`
- `python3=3.13.9-3+b1`
- `python3-minimal=3.13.9-3+b1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/python3-defaults/3.13.9-3/


### `dpkg` source package: `python3.13=3.13.14-1`

Binary Packages:

- `libpython3.13-minimal:amd64=3.13.14-1`
- `libpython3.13-stdlib:amd64=3.13.14-1`
- `python3.13=3.13.14-1`
- `python3.13-minimal=3.13.14-1`

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
$ apt-get source -qq --print-uris python3.13=3.13.14-1
'http://deb.debian.org/debian/pool/main/p/python3.13/python3.13_3.13.14-1.dsc' python3.13_3.13.14-1.dsc 3697 SHA256:03a7b347861b7e56bae6895f6d0d2f3f4101a5e7d7a247d36ef166eabe17cb75
'http://deb.debian.org/debian/pool/main/p/python3.13/python3.13_3.13.14.orig.tar.xz' python3.13_3.13.14.orig.tar.xz 23021880 SHA256:639e43243c620a308f968213df9e00f2f8f62332f7adbaa7a7eeb9783057c690
'http://deb.debian.org/debian/pool/main/p/python3.13/python3.13_3.13.14.orig.tar.xz.asc' python3.13_3.13.14.orig.tar.xz.asc 963 SHA256:81335bb62d1321ae78a4c70ebeb33007e126df3510cebe1f6e2b4b5e6adf5414
'http://deb.debian.org/debian/pool/main/p/python3.13/python3.13_3.13.14-1.debian.tar.xz' python3.13_3.13.14-1.debian.tar.xz 261180 SHA256:cadcb15e1b585c0109a4d3807806d9e02178f0e80fdc8a733b0c836cf2a29bb9
```

Other potentially useful URLs:

- https://sources.debian.net/src/python3.13/3.13.14-1/ (for browsing the source)
- https://sources.debian.net/src/python3.13/3.13.14-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python3.13/3.13.14-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `readline=8.3-4`

Binary Packages:

- `libreadline-dev:amd64=8.3-4`
- `libreadline8t64:amd64=8.3-4`
- `readline-common=8.3-4`

Licenses: (parsed from: `/usr/share/doc/libreadline-dev/copyright`, `/usr/share/doc/libreadline8t64/copyright`, `/usr/share/doc/readline-common/copyright`)

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
'http://deb.debian.org/debian/pool/main/r/readline/readline_8.3-4.dsc' readline_8.3-4.dsc 2957 SHA256:fce5107e62911aa84c18d6049469cb34c31db7fd35ab9f8182e4da7fb6959527
'http://deb.debian.org/debian/pool/main/r/readline/readline_8.3.orig.tar.gz' readline_8.3.orig.tar.gz 3419642 SHA256:fe5383204467828cd495ee8d1d3c037a7eba1389c22bc6a041f627976f9061cc
'http://deb.debian.org/debian/pool/main/r/readline/readline_8.3-4.debian.tar.xz' readline_8.3-4.debian.tar.xz 28644 SHA256:506ec377afd3688752554271e6d9a69c12a4d19ec1c002116fc70967ca6a5bdf
```

Other potentially useful URLs:

- https://sources.debian.net/src/readline/8.3-4/ (for browsing the source)
- https://sources.debian.net/src/readline/8.3-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/readline/8.3-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `rpcsvc-proto=1.4.4-1`

Binary Packages:

- `rpcsvc-proto=1.4.4-1`

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
$ apt-get source -qq --print-uris rpcsvc-proto=1.4.4-1
'http://deb.debian.org/debian/pool/main/r/rpcsvc-proto/rpcsvc-proto_1.4.4-1.dsc' rpcsvc-proto_1.4.4-1.dsc 1999 SHA256:79385c2b121fe89599b7b441dd93761ac35435527a3333182d2398cb267d0e3c
'http://deb.debian.org/debian/pool/main/r/rpcsvc-proto/rpcsvc-proto_1.4.4.orig.tar.xz' rpcsvc-proto_1.4.4.orig.tar.xz 168648 SHA256:81c3aa27edb5d8a18ef027081ebb984234d5b5860c65bd99d4ac8f03145a558b
'http://deb.debian.org/debian/pool/main/r/rpcsvc-proto/rpcsvc-proto_1.4.4-1.debian.tar.xz' rpcsvc-proto_1.4.4-1.debian.tar.xz 4900 SHA256:4378f17884d5afc0d958d24bcae851de247e5ed83ec669babce7f138e2eafe88
```

Other potentially useful URLs:

- https://sources.debian.net/src/rpcsvc-proto/1.4.4-1/ (for browsing the source)
- https://sources.debian.net/src/rpcsvc-proto/1.4.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/rpcsvc-proto/1.4.4-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `rtmpdump=2.6-1`

Binary Packages:

- `librtmp-dev:amd64=2.6-1`
- `librtmp1:amd64=2.6-1`

Licenses: (parsed from: `/usr/share/doc/librtmp-dev/copyright`, `/usr/share/doc/librtmp1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris rtmpdump=2.6-1
'http://deb.debian.org/debian/pool/main/r/rtmpdump/rtmpdump_2.6-1.dsc' rtmpdump_2.6-1.dsc 1633 SHA256:a2b6a4c34fe9366640132f4fcbaeeecc4433ac5cfb2bc0da459a95129a41c2f1
'http://deb.debian.org/debian/pool/main/r/rtmpdump/rtmpdump_2.6.orig.tar.xz' rtmpdump_2.6.orig.tar.xz 103936 SHA256:f88e141ea3e126574dce24dca364f209560e13097fbba9c7f6b2f47a9a167646
'http://deb.debian.org/debian/pool/main/r/rtmpdump/rtmpdump_2.6-1.debian.tar.xz' rtmpdump_2.6-1.debian.tar.xz 7900 SHA256:9fb8a025013189c7c768770c928fa46c44072049b9e9aa2a38045806c9afa018
```

Other potentially useful URLs:

- https://sources.debian.net/src/rtmpdump/2.6-1/ (for browsing the source)
- https://sources.debian.net/src/rtmpdump/2.6-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/rtmpdump/2.6-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `rust-sequoia-sq=1.3.1-11`

Binary Packages:

- `sq=1.3.1-11`

Licenses: (parsed from: `/usr/share/doc/sq/copyright`)

- `GPL-2`
- `GPL-2.0-or-later`
- `LGPL-2`
- `LGPL-2.0-or-later`

Source:

```console
$ apt-get source -qq --print-uris rust-sequoia-sq=1.3.1-11
'http://deb.debian.org/debian/pool/main/r/rust-sequoia-sq/rust-sequoia-sq_1.3.1-11.dsc' rust-sequoia-sq_1.3.1-11.dsc 4482 SHA256:5df2c08d6b9c2645da43d2fe001123ff185ae01ce38a6c8a14d5301f96a00ed0
'http://deb.debian.org/debian/pool/main/r/rust-sequoia-sq/rust-sequoia-sq_1.3.1.orig.tar.gz' rust-sequoia-sq_1.3.1.orig.tar.gz 740320 SHA256:5c04b662da1c207e79beaeff6e5ab2d713ab10c1263f64c367f8489aac815705
'http://deb.debian.org/debian/pool/main/r/rust-sequoia-sq/rust-sequoia-sq_1.3.1-11.debian.tar.xz' rust-sequoia-sq_1.3.1-11.debian.tar.xz 6220 SHA256:87c5b2095b34c0d0502536cc3307545555732b0ca86eec3a874b4e63be5e1e5f
```

Other potentially useful URLs:

- https://sources.debian.net/src/rust-sequoia-sq/1.3.1-11/ (for browsing the source)
- https://sources.debian.net/src/rust-sequoia-sq/1.3.1-11/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/rust-sequoia-sq/1.3.1-11/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `rust-sequoia-sqv=1.4.0-1`

Binary Packages:

- `sqv=1.4.0-1`

Licenses: (parsed from: `/usr/share/doc/sqv/copyright`)

- `LGPL-2`
- `LGPL-2.0-or-later`

Source:

```console
$ apt-get source -qq --print-uris rust-sequoia-sqv=1.4.0-1
'http://deb.debian.org/debian/pool/main/r/rust-sequoia-sqv/rust-sequoia-sqv_1.4.0-1.dsc' rust-sequoia-sqv_1.4.0-1.dsc 2636 SHA256:d6c265539bb6653b3ad45201264a5e3fb5372cb92ff699301a79aedf50974fa2
'http://deb.debian.org/debian/pool/main/r/rust-sequoia-sqv/rust-sequoia-sqv_1.4.0.orig.tar.gz' rust-sequoia-sqv_1.4.0.orig.tar.gz 164331 SHA256:5d3b8b08019ad65c180e029d596f25830586ff28915c83d060ff720d7e698e62
'http://deb.debian.org/debian/pool/main/r/rust-sequoia-sqv/rust-sequoia-sqv_1.4.0-1.debian.tar.xz' rust-sequoia-sqv_1.4.0-1.debian.tar.xz 4072 SHA256:2ae2dfa28e30323ce2ddc0b8fbc814d076303f767b9f912903d293244d91bd71
```

Other potentially useful URLs:

- https://sources.debian.net/src/rust-sequoia-sqv/1.4.0-1/ (for browsing the source)
- https://sources.debian.net/src/rust-sequoia-sqv/1.4.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/rust-sequoia-sqv/1.4.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sed=4.9-3`

Binary Packages:

- `sed=4.9-3`

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
$ apt-get source -qq --print-uris sed=4.9-3
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.9-3.dsc' sed_4.9-3.dsc 1860 SHA256:2d12b031a4f677470645b7be2c37e73aa74dd3d09f4dd50d70194f95087a20dc
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.9.orig.tar.xz' sed_4.9.orig.tar.xz 1397092 SHA256:6e226b732e1cd739464ad6862bd1a1aba42d7982922da7a53519631d24975181
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.9-3.debian.tar.xz' sed_4.9-3.debian.tar.xz 63196 SHA256:1104b995e0b29019598a1ca7de729c21ed1eb9d670998131c4f597243fa0ebdb
```

Other potentially useful URLs:

- https://sources.debian.net/src/sed/4.9-3/ (for browsing the source)
- https://sources.debian.net/src/sed/4.9-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sed/4.9-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sensible-utils=0.0.26`

Binary Packages:

- `sensible-utils=0.0.26`

Licenses: (parsed from: `/usr/share/doc/sensible-utils/copyright`)

- `All-permissive`
- `GPL-2`
- `GPL-2+`
- `configure`
- `installsh`

Source:

```console
$ apt-get source -qq --print-uris sensible-utils=0.0.26
'http://deb.debian.org/debian/pool/main/s/sensible-utils/sensible-utils_0.0.26.dsc' sensible-utils_0.0.26.dsc 1706 SHA256:ca691944ce867871cdc216dd142d66315523773646740cd2801cab85da5bcec5
'http://deb.debian.org/debian/pool/main/s/sensible-utils/sensible-utils_0.0.26.tar.xz' sensible-utils_0.0.26.tar.xz 76736 SHA256:46adb7a12d32a9323b29711bc6470628fcc0f94f1748fe5bae4729df50531f68
```

Other potentially useful URLs:

- https://sources.debian.net/src/sensible-utils/0.0.26/ (for browsing the source)
- https://sources.debian.net/src/sensible-utils/0.0.26/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sensible-utils/0.0.26/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `serf=1.3.10-3`

Binary Packages:

- `libserf-1-1:amd64=1.3.10-3+b2`

Licenses: (parsed from: `/usr/share/doc/libserf-1-1/copyright`)

- `Apache`
- `Apache-2.0`
- `Zlib`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/serf/1.3.10-3/


### `dpkg` source package: `shadow=1:4.19.3-2`

Binary Packages:

- `login.defs=1:4.19.3-2`
- `passwd=1:4.19.3-2`

Licenses: (parsed from: `/usr/share/doc/login.defs/copyright`, `/usr/share/doc/passwd/copyright`)

- `BSD-3-clause`
- `GPL-1`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.19.3-2
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.19.3-2.dsc' shadow_4.19.3-2.dsc 2871 SHA256:bd435c4c270c2392a5cacc44b090aa300f8d66ef426d079b4950367bbc6681dc
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.19.3.orig.tar.xz' shadow_4.19.3.orig.tar.xz 2347720 SHA256:11a8f358910712cf957dd4fd205063fce7e386b68fc7dfe3a0e1e53155ec53c5
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.19.3.orig.tar.xz.asc' shadow_4.19.3.orig.tar.xz.asc 833 SHA256:a70fd6edfd57598d187579276b10e75f0f117d417a3e2f63ea111e9f8010aec4
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.19.3-2.debian.tar.xz' shadow_4.19.3-2.debian.tar.xz 174200 SHA256:1168455eea66aafb572bb0356c3bf547670ebb2ed411fd1c02eaabc3979ff399
```

Other potentially useful URLs:

- https://sources.debian.net/src/shadow/1:4.19.3-2/ (for browsing the source)
- https://sources.debian.net/src/shadow/1:4.19.3-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/shadow/1:4.19.3-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sqlite3=3.46.1-9`

Binary Packages:

- `libsqlite3-0:amd64=3.46.1-9+b1`
- `libsqlite3-dev:amd64=3.46.1-9+b1`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`, `/usr/share/doc/libsqlite3-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/sqlite3/3.46.1-9/


### `dpkg` source package: `subversion=1.14.5-6`

Binary Packages:

- `libsvn1:amd64=1.14.5-6`
- `subversion=1.14.5-6`

Licenses: (parsed from: `/usr/share/doc/libsvn1/copyright`, `/usr/share/doc/subversion/copyright`)

- `AFL-3`
- `Apache-2.0`
- `BSD-2-clause`
- `BSD-3-clause`
- `BoostAcMacros`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `Svnwrap`
- `Unicode`
- `Utfwidth`

Source:

```console
$ apt-get source -qq --print-uris subversion=1.14.5-6
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.14.5-6.dsc' subversion_1.14.5-6.dsc 3976 SHA256:b7c7eb4009f4251e23043adc68b486eb3b7539d57cbd03f496d66b1a767960e5
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.14.5.orig.tar.gz' subversion_1.14.5.orig.tar.gz 11645728 SHA256:cd143fe8fdb1cd506c438eef1c772a2e87e1519e6b0be3fcd54a8c59e9022390
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.14.5.orig.tar.gz.asc' subversion_1.14.5.orig.tar.gz.asc 2382 SHA256:91384669ad9125c6919b0b2ab0c345e6de3cd0f89affe04ab66dfe9c5e19d673
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.14.5-6.debian.tar.xz' subversion_1.14.5-6.debian.tar.xz 300584 SHA256:242c7c9cd09a4d08c578500b4d78857047319601b8deb0cbca51e2bd47db4c94
```

Other potentially useful URLs:

- https://sources.debian.net/src/subversion/1.14.5-6/ (for browsing the source)
- https://sources.debian.net/src/subversion/1.14.5-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/subversion/1.14.5-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sysprof=50.0-3`

Binary Packages:

- `libsysprof-capture-4-dev:amd64=50.0-3`

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
$ apt-get source -qq --print-uris sysprof=50.0-3
'http://deb.debian.org/debian/pool/main/s/sysprof/sysprof_50.0-3.dsc' sysprof_50.0-3.dsc 3757 SHA256:468c1a7bf774fd45c4a58648a55c0aec786ef667bb8a7902c207c3a03d501fca
'http://deb.debian.org/debian/pool/main/s/sysprof/sysprof_50.0.orig.tar.xz' sysprof_50.0.orig.tar.xz 1289588 SHA256:aace44e90e90f6c34bb2fbec8ccb47b8f81103080978d65759287843c329d53a
'http://deb.debian.org/debian/pool/main/s/sysprof/sysprof_50.0-3.debian.tar.xz' sysprof_50.0-3.debian.tar.xz 16988 SHA256:d6c300c25f04116f3e247bc71b7f826dce0e64e3804d305170142aca258b8dcc
```

Other potentially useful URLs:

- https://sources.debian.net/src/sysprof/50.0-3/ (for browsing the source)
- https://sources.debian.net/src/sysprof/50.0-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sysprof/50.0-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `systemd=261.1-2`

Binary Packages:

- `libsystemd-shared:amd64=261.1-2`
- `libsystemd0:amd64=261.1-2`
- `libudev1:amd64=261.1-2`
- `systemd=261.1-2`
- `systemd-tpm=261.1-2`

Licenses: (parsed from: `/usr/share/doc/libsystemd-shared/copyright`, `/usr/share/doc/libsystemd0/copyright`, `/usr/share/doc/libudev1/copyright`, `/usr/share/doc/systemd/copyright`, `/usr/share/doc/systemd-tpm/copyright`)

- `BSD-3-Clause`
- `CC0-1.0`
- `Expat`
- `GPL-2`
- `GPL-2 with Linux-syscall-note exception`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MIT-0`
- `Unlicense`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/systemd/261.1-2/


### `dpkg` source package: `sysvinit=3.18-1`

Binary Packages:

- `sysvinit-utils=3.18-1`

Licenses: (parsed from: `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`
- `GPL-2.0`
- `GPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=3.18-1
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_3.18-1.dsc' sysvinit_3.18-1.dsc 2379 SHA256:27d9f67e77d4edba5f7c91f44f91f9a509f74af3fdf543aded0e49a9d3dd48c0
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_3.18.orig.tar.gz' sysvinit_3.18.orig.tar.gz 512421 SHA256:be9fdd55f2c1d1469a1f9d69e9d6abf47a2c0003df987b72605c653e92e5bb14
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_3.18-1.debian.tar.xz' sysvinit_3.18-1.debian.tar.xz 123048 SHA256:f393e8cc3826b52e0cd0637ff31ac332b97f660375389356491ab5612d9ed5f2
```

Other potentially useful URLs:

- https://sources.debian.net/src/sysvinit/3.18-1/ (for browsing the source)
- https://sources.debian.net/src/sysvinit/3.18-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sysvinit/3.18-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tar=1.35+dfsg-4`

Binary Packages:

- `tar=1.35+dfsg-4`

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
$ apt-get source -qq --print-uris tar=1.35+dfsg-4
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.35%2bdfsg-4.dsc' tar_1.35+dfsg-4.dsc 2034 SHA256:493403c9708bdf8ccd516aea90d81058eeff058e7e459fcc46ffa78867554b39
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.35%2bdfsg.orig.tar.xz' tar_1.35+dfsg.orig.tar.xz 2111608 SHA256:9ae57e981c1e73c0eebc2b26c9b0c4497fe310ef1d516ea430efb5470b71f7a8
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.35%2bdfsg-4.debian.tar.xz' tar_1.35+dfsg-4.debian.tar.xz 21640 SHA256:9bb51d273e49502eab6d98228e8dd711c46a3418bf8428a2104148734810157e
```

Other potentially useful URLs:

- https://sources.debian.net/src/tar/1.35+dfsg-4/ (for browsing the source)
- https://sources.debian.net/src/tar/1.35+dfsg-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tar/1.35+dfsg-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tiff=4.7.2-1`

Binary Packages:

- `libtiff-dev:amd64=4.7.2-1`
- `libtiff6:amd64=4.7.2-1`
- `libtiffxx6:amd64=4.7.2-1`

Licenses: (parsed from: `/usr/share/doc/libtiff-dev/copyright`, `/usr/share/doc/libtiff6/copyright`, `/usr/share/doc/libtiffxx6/copyright`)

- `Hylafax`

Source:

```console
$ apt-get source -qq --print-uris tiff=4.7.2-1
'http://deb.debian.org/debian/pool/main/t/tiff/tiff_4.7.2-1.dsc' tiff_4.7.2-1.dsc 2262 SHA256:26ce045ca8ffdb562ff2978834f79f067a552e95276deba1dc686aaffd580ad3
'http://deb.debian.org/debian/pool/main/t/tiff/tiff_4.7.2.orig.tar.bz2' tiff_4.7.2.orig.tar.bz2 2250440 SHA256:c5086d8f7c5ba51ca98241f24a8bd1cb66218c399077aeccbf6a236cf3152acc
'http://deb.debian.org/debian/pool/main/t/tiff/tiff_4.7.2-1.debian.tar.xz' tiff_4.7.2-1.debian.tar.xz 22532 SHA256:7b71ad0b032022ec533171cad96c7823845d3c09254f1c073f03853801ca1c80
```

Other potentially useful URLs:

- https://sources.debian.net/src/tiff/4.7.2-1/ (for browsing the source)
- https://sources.debian.net/src/tiff/4.7.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tiff/4.7.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tpm2-tss=4.1.3-6`

Binary Packages:

- `libtss2-esys-3.0.2-0t64:amd64=4.1.3-6`
- `libtss2-mu-4.0.1-0t64:amd64=4.1.3-6`
- `libtss2-rc0t64:amd64=4.1.3-6`
- `libtss2-sys1t64:amd64=4.1.3-6`
- `libtss2-tcti-cmd0t64:amd64=4.1.3-6`
- `libtss2-tcti-device0t64:amd64=4.1.3-6`
- `libtss2-tcti-mssim0t64:amd64=4.1.3-6`
- `libtss2-tcti-swtpm0t64:amd64=4.1.3-6`
- `tpm-udev=4.1.3-6`

Licenses: (parsed from: `/usr/share/doc/libtss2-esys-3.0.2-0t64/copyright`, `/usr/share/doc/libtss2-mu-4.0.1-0t64/copyright`, `/usr/share/doc/libtss2-rc0t64/copyright`, `/usr/share/doc/libtss2-sys1t64/copyright`, `/usr/share/doc/libtss2-tcti-cmd0t64/copyright`, `/usr/share/doc/libtss2-tcti-device0t64/copyright`, `/usr/share/doc/libtss2-tcti-mssim0t64/copyright`, `/usr/share/doc/libtss2-tcti-swtpm0t64/copyright`, `/usr/share/doc/tpm-udev/copyright`)

- `BSD-2-clause`
- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/tpm2-tss/4.1.3-6/


### `dpkg` source package: `tzdata=2026b-1`

Binary Packages:

- `tzdata=2026b-1`

Licenses: (parsed from: `/usr/share/doc/tzdata/copyright`)

- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris tzdata=2026b-1
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2026b-1.dsc' tzdata_2026b-1.dsc 2434 SHA256:d6952421d1c8aab7f5c71a1bff3c74f4d4fef4d48443429887e9a3f292c69b85
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2026b.orig.tar.gz' tzdata_2026b.orig.tar.gz 473703 SHA256:114543d9f19a6bfeb5bca43686aea173d38755a3db1f2eec112647ae92c6f544
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2026b.orig.tar.gz.asc' tzdata_2026b.orig.tar.gz.asc 833 SHA256:b69ac9d9c926cb5ef80ab0b4bbc2a462eb9b4b36167e4aac649d87b744f7ca8b
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2026b-1.debian.tar.xz' tzdata_2026b-1.debian.tar.xz 128320 SHA256:ca5955fa4f7e189a8a1bd55b261ac3c42fe9d243baab6321e50e7672fbb52dcf
```

Other potentially useful URLs:

- https://sources.debian.net/src/tzdata/2026b-1/ (for browsing the source)
- https://sources.debian.net/src/tzdata/2026b-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tzdata/2026b-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ucf=3.0056`

Binary Packages:

- `ucf=3.0056`

Licenses: (parsed from: `/usr/share/doc/ucf/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris ucf=3.0056
'http://deb.debian.org/debian/pool/main/u/ucf/ucf_3.0056.dsc' ucf_3.0056.dsc 1595 SHA256:376a11e617a67691ca373be166d3ecb8ba975ee0823c5620c579349b01cf8452
'http://deb.debian.org/debian/pool/main/u/ucf/ucf_3.0056.tar.xz' ucf_3.0056.tar.xz 81856 SHA256:872a87e72f8b3133ac8897a708e9533bc27df92586c3731d57ef4f4cdd50a07c
```

Other potentially useful URLs:

- https://sources.debian.net/src/ucf/3.0056/ (for browsing the source)
- https://sources.debian.net/src/ucf/3.0056/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ucf/3.0056/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `unbound=1.25.1-1`

Binary Packages:

- `libunbound8:amd64=1.25.1-1+b1`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/unbound/1.25.1-1/


### `dpkg` source package: `unzip=6.0-29`

Binary Packages:

- `unzip=6.0-29`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris unzip=6.0-29
'http://deb.debian.org/debian/pool/main/u/unzip/unzip_6.0-29.dsc' unzip_6.0-29.dsc 1464 SHA256:ecc73beeb9a18f354124b87f6713facb726ffd4b732ce7a6e144d073a1e777ae
'http://deb.debian.org/debian/pool/main/u/unzip/unzip_6.0.orig.tar.gz' unzip_6.0.orig.tar.gz 1376845 SHA256:036d96991646d0449ed0aa952e4fbe21b476ce994abc276e49d30e686708bd37
'http://deb.debian.org/debian/pool/main/u/unzip/unzip_6.0-29.debian.tar.xz' unzip_6.0-29.debian.tar.xz 25876 SHA256:14043e5ea351c02b3bc8676e1e6d20d79b9a690b6d7520e8138ac629cc048417
```

Other potentially useful URLs:

- https://sources.debian.net/src/unzip/6.0-29/ (for browsing the source)
- https://sources.debian.net/src/unzip/6.0-29/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/unzip/6.0-29/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `utf8proc=2.11.3-2`

Binary Packages:

- `libutf8proc3:amd64=2.11.3-2`

Licenses: (parsed from: `/usr/share/doc/libutf8proc3/copyright`)

- `Expat`
- `Unicode`

Source:

```console
$ apt-get source -qq --print-uris utf8proc=2.11.3-2
'http://deb.debian.org/debian/pool/main/u/utf8proc/utf8proc_2.11.3-2.dsc' utf8proc_2.11.3-2.dsc 2284 SHA256:efd80658e840f49fd9116fba26cd8c08abc56a8ba7bae50064ef4564cc98259d
'http://deb.debian.org/debian/pool/main/u/utf8proc/utf8proc_2.11.3.orig.tar.gz' utf8proc_2.11.3.orig.tar.gz 202535 SHA256:abfed50b6d4da51345713661370290f4f4747263ee73dc90356299dfc7990c78
'http://deb.debian.org/debian/pool/main/u/utf8proc/utf8proc_2.11.3-2.debian.tar.xz' utf8proc_2.11.3-2.debian.tar.xz 6212 SHA256:4415e39b2e482c0bf01f371dc10755352479499f161ac3da42f0a9ff0f96658b
```

Other potentially useful URLs:

- https://sources.debian.net/src/utf8proc/2.11.3-2/ (for browsing the source)
- https://sources.debian.net/src/utf8proc/2.11.3-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/utf8proc/2.11.3-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `util-linux=2.42.2-1`

Binary Packages:

- `bsdutils=1:2.42.2-1`
- `libblkid-dev:amd64=2.42.2-1`
- `libblkid1:amd64=2.42.2-1`
- `libmount-dev:amd64=2.42.2-1`
- `libmount1:amd64=2.42.2-1`
- `libsmartcols1:amd64=2.42.2-1`
- `libuuid1:amd64=2.42.2-1`
- `login=1:4.16.0-2+really2.42.2-1`
- `mount=2.42.2-1`
- `util-linux=2.42.2-1`
- `uuid-dev:amd64=2.42.2-1`

Licenses: (parsed from: `/usr/share/doc/bsdutils/copyright`, `/usr/share/doc/libblkid-dev/copyright`, `/usr/share/doc/libblkid1/copyright`, `/usr/share/doc/libmount-dev/copyright`, `/usr/share/doc/libmount1/copyright`, `/usr/share/doc/libsmartcols1/copyright`, `/usr/share/doc/libuuid1/copyright`, `/usr/share/doc/login/copyright`, `/usr/share/doc/mount/copyright`, `/usr/share/doc/util-linux/copyright`, `/usr/share/doc/uuid-dev/copyright`)

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
$ apt-get source -qq --print-uris util-linux=2.42.2-1
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.42.2-1.dsc' util-linux_2.42.2-1.dsc 5324 SHA256:62be4edd2da17f52351c8f55b76175ca98cef76faedfa2fada536a24c2bf5afa
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.42.2.orig.tar.xz' util-linux_2.42.2.orig.tar.xz 10658220 SHA256:03a05d3adf9602ef128f2da05b84b3205ce60c351e5737c0370f74000679ce8a
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.42.2-1.debian.tar.xz' util-linux_2.42.2-1.debian.tar.xz 102288 SHA256:44227e4039d30a809ffa1714cbd697ebbc5d512abf8a1d2c81a1e336e0ae6b90
```

Other potentially useful URLs:

- https://sources.debian.net/src/util-linux/2.42.2-1/ (for browsing the source)
- https://sources.debian.net/src/util-linux/2.42.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/util-linux/2.42.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `wget=1.25.0-2`

Binary Packages:

- `wget=1.25.0-2`

Licenses: (parsed from: `/usr/share/doc/wget/copyright`)

- `GFDL-1.2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris wget=1.25.0-2
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.25.0-2.dsc' wget_1.25.0-2.dsc 2251 SHA256:32caf133042db927360a8c35357e4b2877eb83ff0ca144ceb64508947d894f55
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.25.0.orig.tar.gz' wget_1.25.0.orig.tar.gz 5263736 SHA256:766e48423e79359ea31e41db9e5c289675947a7fcf2efdcedb726ac9d0da3784
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.25.0.orig.tar.gz.asc' wget_1.25.0.orig.tar.gz.asc 854 SHA256:47f0989685931c3df6166061069659bc13a75b221a62041625007fa2dad7411b
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.25.0-2.debian.tar.xz' wget_1.25.0-2.debian.tar.xz 27884 SHA256:45d4411e892d12af710ddff536d2daf430031387e336153f5f996cf536487b90
```

Other potentially useful URLs:

- https://sources.debian.net/src/wget/1.25.0-2/ (for browsing the source)
- https://sources.debian.net/src/wget/1.25.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/wget/1.25.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xorg-sgml-doctools=1:1.12.1-1`

Binary Packages:

- `xorg-sgml-doctools=1:1.12.1-1`

Licenses: (parsed from: `/usr/share/doc/xorg-sgml-doctools/copyright`)

- `MIT`
- `Redhat`

Source:

```console
$ apt-get source -qq --print-uris xorg-sgml-doctools=1:1.12.1-1
'http://deb.debian.org/debian/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.12.1-1.dsc' xorg-sgml-doctools_1.12.1-1.dsc 2372 SHA256:a1a10456002e9210ffe53ba6645eeb11a104e9e747016f6cf37274f1f7ac1c38
'http://deb.debian.org/debian/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.12.1.orig.tar.xz' xorg-sgml-doctools_1.12.1.orig.tar.xz 107832 SHA256:0a5d54c0706b4e89d5acd4d455db3745ab4ad26be627cce015b90ad403b56d6f
'http://deb.debian.org/debian/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.12.1.orig.tar.xz.asc' xorg-sgml-doctools_1.12.1.orig.tar.xz.asc 566 SHA256:7f957d24bd5496bdd6334be7740232aab8073b1de653901ca8439fcdaabf6db7
'http://deb.debian.org/debian/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.12.1-1.debian.tar.xz' xorg-sgml-doctools_1.12.1-1.debian.tar.xz 7128 SHA256:b83018f1da93cbd00a9d4ae275e9063ce44b07dcc05b19f476ff8b3385eb5b58
```

Other potentially useful URLs:

- https://sources.debian.net/src/xorg-sgml-doctools/1:1.12.1-1/ (for browsing the source)
- https://sources.debian.net/src/xorg-sgml-doctools/1:1.12.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xorg-sgml-doctools/1:1.12.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xorg=1:7.7+26`

Binary Packages:

- `x11-common=1:7.7+26`

Licenses: (parsed from: `/usr/share/doc/x11-common/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris xorg=1:7.7+26
'http://deb.debian.org/debian/pool/main/x/xorg/xorg_7.7%2b26.dsc' xorg_7.7+26.dsc 1970 SHA256:435390a010511b741e5c9e9a130baa1fc68f1b5c016ca1d2bb267bf71a59d6c8
'http://deb.debian.org/debian/pool/main/x/xorg/xorg_7.7%2b26.tar.xz' xorg_7.7+26.tar.xz 234356 SHA256:60b5827327f725d0a36965f7443f2c8c3488624b1cffa7127394c0cf0bcbd519
```

Other potentially useful URLs:

- https://sources.debian.net/src/xorg/1:7.7+26/ (for browsing the source)
- https://sources.debian.net/src/xorg/1:7.7+26/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xorg/1:7.7+26/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xorgproto=2025.1-1`

Binary Packages:

- `x11proto-dev=2025.1-1`

Licenses: (parsed from: `/usr/share/doc/x11proto-dev/copyright`)

- `MIT`
- `SGI`

Source:

```console
$ apt-get source -qq --print-uris xorgproto=2025.1-1
'http://deb.debian.org/debian/pool/main/x/xorgproto/xorgproto_2025.1-1.dsc' xorgproto_2025.1-1.dsc 3336 SHA256:4cca414a1b9ba8d6e04c2ca8182b0157a0667de0387057e62dd847f57b7f1fd2
'http://deb.debian.org/debian/pool/main/x/xorgproto/xorgproto_2025.1.orig.tar.gz' xorgproto_2025.1.orig.tar.gz 1127613 SHA256:d6f89f65bafb8c9b735e0515882b8a1511e8e864dde5e9513e191629369f2256
'http://deb.debian.org/debian/pool/main/x/xorgproto/xorgproto_2025.1.orig.tar.gz.asc' xorgproto_2025.1.orig.tar.gz.asc 195 SHA256:4eabb8638b2c8f185b61317413276cc60a005d1d422f25b663b11bea7fd48a79
'http://deb.debian.org/debian/pool/main/x/xorgproto/xorgproto_2025.1-1.diff.gz' xorgproto_2025.1-1.diff.gz 25174 SHA256:02d5e529287954c172727ed83b79c2a8537c36ac520cd7f48fb0d4bd57a0186f
```

Other potentially useful URLs:

- https://sources.debian.net/src/xorgproto/2025.1-1/ (for browsing the source)
- https://sources.debian.net/src/xorgproto/2025.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xorgproto/2025.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xtrans=1.6.0-1`

Binary Packages:

- `xtrans-dev=1.6.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xtrans=1.6.0-1
'http://deb.debian.org/debian/pool/main/x/xtrans/xtrans_1.6.0-1.dsc' xtrans_1.6.0-1.dsc 1883 SHA256:c26282f771f03ad8ea4f88114dac3c66395ac1a98c21bd2b2d7f39a219cf09b3
'http://deb.debian.org/debian/pool/main/x/xtrans/xtrans_1.6.0.orig.tar.gz' xtrans_1.6.0.orig.tar.gz 239113 SHA256:936b74c60b19c317c3f3cb1b114575032528dbdaf428740483200ea874c2ca0a
'http://deb.debian.org/debian/pool/main/x/xtrans/xtrans_1.6.0-1.diff.gz' xtrans_1.6.0-1.diff.gz 18507 SHA256:7f87ca3d9e39d626bcc95bfef8d5038e45fa162560c16839ccf9a1f669e2716a
```

Other potentially useful URLs:

- https://sources.debian.net/src/xtrans/1.6.0-1/ (for browsing the source)
- https://sources.debian.net/src/xtrans/1.6.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xtrans/1.6.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xxhash=0.8.3-2`

Binary Packages:

- `libxxhash0:amd64=0.8.3-2+b2`

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
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.8.3-1.dsc' xz-utils_5.8.3-1.dsc 2494 SHA256:7b18c92ac5a89489aa8a8a4fc3c648473c02d26becce206e6f1fc54f8213d931
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.8.3.orig.tar.xz' xz-utils_5.8.3.orig.tar.xz 1548064 SHA256:fff1ffcf2b0da84d308a14de513a1aa23d4e9aa3464d17e64b9714bfdd0bbfb6
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.8.3-1.debian.tar.xz' xz-utils_5.8.3-1.debian.tar.xz 27344 SHA256:0f216748e70690e5b7f1d0fc85e9e6e8e69626ad7e8ee24a67e45ac9f01db4c1
```

Other potentially useful URLs:

- https://sources.debian.net/src/xz-utils/5.8.3-1/ (for browsing the source)
- https://sources.debian.net/src/xz-utils/5.8.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xz-utils/5.8.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `zlib=1:1.3.dfsg+really1.3.2-3`

Binary Packages:

- `zlib1g:amd64=1:1.3.dfsg+really1.3.2-3`
- `zlib1g-dev:amd64=1:1.3.dfsg+really1.3.2-3`

Licenses: (parsed from: `/usr/share/doc/zlib1g/copyright`, `/usr/share/doc/zlib1g-dev/copyright`)

- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.3.dfsg+really1.3.2-3
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.3.dfsg%2breally1.3.2-3.dsc' zlib_1.3.dfsg+really1.3.2-3.dsc 2682 SHA256:46de917397a3bda8c3b812b118e25d38044a9e161fce5e35f850f4159eb0f0de
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.3.dfsg%2breally1.3.2.orig.tar.gz' zlib_1.3.dfsg+really1.3.2.orig.tar.gz 1295859 SHA256:7b6903eb019983987b7112eccf90f1703f1c6c0e0cede36564bf611d19ca579d
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.3.dfsg%2breally1.3.2-3.debian.tar.xz' zlib_1.3.dfsg+really1.3.2-3.debian.tar.xz 17972 SHA256:48f7309bccf9c81e9f68a7e22cf06e08a1f70b275535b953632fccb525c5439e
```

Other potentially useful URLs:

- https://sources.debian.net/src/zlib/1:1.3.dfsg+really1.3.2-3/ (for browsing the source)
- https://sources.debian.net/src/zlib/1:1.3.dfsg+really1.3.2-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/zlib/1:1.3.dfsg+really1.3.2-3/ (for access to the source package after it no longer exists in the archive)
