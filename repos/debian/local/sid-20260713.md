# `debian:sid`

## Docker Metadata

- Image ID: `sha256:7fec269f43d79e389ed2c95c929ad91197485300b3c6ed1b95e4701c35354e80`
- Created: `2026-07-13T00:00:00Z`
- Virtual Size: ~ 118.2 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `[]`
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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/apt/3.3.1/


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

### `dpkg` source package: `bzip2=1.0.8-6`

Binary Packages:

- `libbz2-1.0:amd64=1.0.8-6+b2`

Licenses: (parsed from: `/usr/share/doc/libbz2-1.0/copyright`)

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

### `dpkg` source package: `db5.3=5.3.28+dfsg2-11`

Binary Packages:

- `libdb5.3t64:amd64=5.3.28+dfsg2-11+b1`

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

### `dpkg` source package: `dpkg=1.23.7`

Binary Packages:

- `dpkg=1.23.7`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`)

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


### `dpkg` source package: `gcc-16=16.1.0-2`

Binary Packages:

- `gcc-16-base:amd64=16.1.0-2`
- `libgcc-s1:amd64=16.1.0-2`
- `libstdc++6:amd64=16.1.0-2`

Licenses: (parsed from: `/usr/share/doc/gcc-16-base/copyright`, `/usr/share/doc/libgcc-s1/copyright`, `/usr/share/doc/libstdc++6/copyright`)

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


### `dpkg` source package: `glibc=2.42-17`

Binary Packages:

- `libc-bin=2.42-17`
- `libc-gconv-modules-extra:amd64=2.42-17`
- `libc6:amd64=2.42-17`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-gconv-modules-extra/copyright`, `/usr/share/doc/libc6/copyright`)

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

- `libgmp10:amd64=2:6.3.0+dfsg-5+b2`

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
$ apt-get source -qq --print-uris gmp=2:6.3.0+dfsg-5
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.3.0%2bdfsg-5.dsc' gmp_6.3.0+dfsg-5.dsc 2230 SHA256:609cad99ebddece1d7028a9c3f0a728c68e5a5fbb15b879a2ea6107ea5b16168
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.3.0%2bdfsg.orig.tar.xz' gmp_6.3.0+dfsg.orig.tar.xz 1870556 SHA256:bd2966e6d277f79328e894a5a9f3ba3fbf2ed2be81def5f48623e30c23fb1572
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.3.0%2bdfsg-5.debian.tar.xz' gmp_6.3.0+dfsg-5.debian.tar.xz 20424 SHA256:9a41837b2e2678506c24c2791d3f551fdb61bb01cc5e79aaaf45c68a8f26089a
```

Other potentially useful URLs:

- https://sources.debian.net/src/gmp/2:6.3.0+dfsg-5/ (for browsing the source)
- https://sources.debian.net/src/gmp/2:6.3.0+dfsg-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gmp/2:6.3.0+dfsg-5/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `libseccomp=2.6.1-1`

Binary Packages:

- `libseccomp2:amd64=2.6.1-1`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.6.1-1
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.6.1-1.dsc' libseccomp_2.6.1-1.dsc 2622 SHA256:f5d608116cbb1398e8b0309f3a458a03e6034fbec23351c5422a954025541b9d
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.6.1.orig.tar.gz' libseccomp_2.6.1.orig.tar.gz 656231 SHA256:501f66c667225d53791b97e1d7cf85ab764c297d04881f60f38f451c4b0ee1be
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.6.1.orig.tar.gz.asc' libseccomp_2.6.1.orig.tar.gz.asc 833 SHA256:796d99f6031c09d8fec40e73209016d96366d03bbc2f917e6e05776c2257af5c
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.6.1-1.debian.tar.xz' libseccomp_2.6.1-1.debian.tar.xz 18652 SHA256:dc10790ef406f0f288f69e7ecde5d1a7f0b7b5b1c832d8a564b62018889cff63
```

Other potentially useful URLs:

- https://sources.debian.net/src/libseccomp/2.6.1-1/ (for browsing the source)
- https://sources.debian.net/src/libseccomp/2.6.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libseccomp/2.6.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libselinux=3.11-2`

Binary Packages:

- `libselinux1:amd64=3.11-2`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libselinux=3.11-2
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_3.11-2.dsc' libselinux_3.11-2.dsc 3130 SHA256:1b6bde259f663809baab233921422a847ade43abaf1bee2b0a330ea03ab99ba7
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_3.11.orig.tar.gz' libselinux_3.11.orig.tar.gz 208732 SHA256:73d419c6e20e874adaa4019372cbd097eecf4d276e13f27ec5e67d35c0bd203c
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_3.11.orig.tar.gz.asc' libselinux_3.11.orig.tar.gz.asc 833 SHA256:bf1cd41897dff67dbb20b5448677fee250faa2cefcbe5542d91f0f1d7ee266d5
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_3.11-2.debian.tar.xz' libselinux_3.11-2.debian.tar.xz 52512 SHA256:af4785e669854701a30895fca896dbcdb89c228bd562cab21f338785a4a83542
```

Other potentially useful URLs:

- https://sources.debian.net/src/libselinux/3.11-2/ (for browsing the source)
- https://sources.debian.net/src/libselinux/3.11-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libselinux/3.11-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsemanage=3.11-1`

Binary Packages:

- `libsemanage-common=3.11-1`
- `libsemanage2:amd64=3.11-1`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage2/copyright`)

- `GPL-2`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=3.11-1
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_3.11-1.dsc' libsemanage_3.11-1.dsc 2731 SHA256:b47fb8c6c5bab3e6f4c01a782f4a40c04bab72931141dd431320741438ebadcd
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_3.11.orig.tar.gz' libsemanage_3.11.orig.tar.gz 185656 SHA256:e76160286bbfb0821602c6c0c3220ebcf366ad3246d3b9d0a0fbefcd35e86043
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_3.11-1.debian.tar.xz' libsemanage_3.11-1.debian.tar.xz 38380 SHA256:a2c148af297e5a901c613bed16595210ea55ed0e81316404a609bc837679f034
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsemanage/3.11-1/ (for browsing the source)
- https://sources.debian.net/src/libsemanage/3.11-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsemanage/3.11-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsepol=3.11-1`

Binary Packages:

- `libsepol2:amd64=3.11-1`

Licenses: (parsed from: `/usr/share/doc/libsepol2/copyright`)

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

### `dpkg` source package: `libzstd=1.5.7+dfsg-3`

Binary Packages:

- `libzstd1:amd64=1.5.7+dfsg-3+b2`

Licenses: (parsed from: `/usr/share/doc/libzstd1/copyright`)

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

### `dpkg` source package: `ncurses=6.6+20260608-2`

Binary Packages:

- `libtinfo6:amd64=6.6+20260608-2`
- `ncurses-base=6.6+20260608-2`
- `ncurses-bin=6.6+20260608-2`

Licenses: (parsed from: `/usr/share/doc/libtinfo6/copyright`, `/usr/share/doc/ncurses-base/copyright`, `/usr/share/doc/ncurses-bin/copyright`)

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

### `dpkg` source package: `nettle=3.10.2-1`

Binary Packages:

- `libhogweed6t64:amd64=3.10.2-1+b1`
- `libnettle8t64:amd64=3.10.2-1+b1`

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

### `dpkg` source package: `openssl=3.6.3-1`

Binary Packages:

- `libssl3t64:amd64=3.6.3-1`
- `openssl-provider-legacy=3.6.3-1`

Licenses: (parsed from: `/usr/share/doc/libssl3t64/copyright`, `/usr/share/doc/openssl-provider-legacy/copyright`)

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

### `dpkg` source package: `pcre2=10.46-1`

Binary Packages:

- `libpcre2-8-0:amd64=10.46-1+b2`

Licenses: (parsed from: `/usr/share/doc/libpcre2-8-0/copyright`)

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

- `perl-base=5.40.1-8`

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

### `dpkg` source package: `systemd=261.1-2`

Binary Packages:

- `libsystemd0:amd64=261.1-2`
- `libudev1:amd64=261.1-2`

Licenses: (parsed from: `/usr/share/doc/libsystemd0/copyright`, `/usr/share/doc/libudev1/copyright`)

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

### `dpkg` source package: `util-linux=2.42.2-1`

Binary Packages:

- `bsdutils=1:2.42.2-1`
- `libblkid1:amd64=2.42.2-1`
- `libmount1:amd64=2.42.2-1`
- `libsmartcols1:amd64=2.42.2-1`
- `libuuid1:amd64=2.42.2-1`
- `login=1:4.16.0-2+really2.42.2-1`
- `mount=2.42.2-1`
- `util-linux=2.42.2-1`

Licenses: (parsed from: `/usr/share/doc/bsdutils/copyright`, `/usr/share/doc/libblkid1/copyright`, `/usr/share/doc/libmount1/copyright`, `/usr/share/doc/libsmartcols1/copyright`, `/usr/share/doc/libuuid1/copyright`, `/usr/share/doc/login/copyright`, `/usr/share/doc/mount/copyright`, `/usr/share/doc/util-linux/copyright`)

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

- `liblzma5:amd64=5.8.3-1`

Licenses: (parsed from: `/usr/share/doc/liblzma5/copyright`)

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

Licenses: (parsed from: `/usr/share/doc/zlib1g/copyright`)

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
