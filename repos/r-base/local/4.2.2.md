# `r-base:4.2.2`

## Docker Metadata

- Image ID: `sha256:3de1ef2039fbd2fcbaf609da402d6b2a94fee892755cc7bb074fa26b8738ce0b`
- Created: `2022-11-01T20:22:04.330894146Z`
- Virtual Size: ~ 838.17 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Command: `["R"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `LC_ALL=en_US.UTF-8`
  - `LANG=en_US.UTF-8`
  - `R_BASE_VERSION=4.2.2`
- Labels:
  - `org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>`
  - `org.opencontainers.image.licenses=GPL-2.0-or-later`
  - `org.opencontainers.image.source=https://github.com/rocker-org/rocker`
  - `org.opencontainers.image.vendor=Rocker Project`

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
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.3.1-1.dsc' acl_2.3.1-1.dsc 2486 SHA256:6299780e84c240e79aae9886deaacc1bd8439a2a58f6a23749156f8a4d62572e
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.3.1.orig.tar.xz' acl_2.3.1.orig.tar.xz 355676 SHA256:c0234042e17f11306c23c038b08e5e070edb7be44bef6697fb8734dcff1c66b1
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.3.1.orig.tar.xz.asc' acl_2.3.1.orig.tar.xz.asc 833 SHA256:54fb8fcd6ae6901f2257e18d503e5e18ad956babf8d80d2ea29f280fc7264662
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.3.1-1.debian.tar.xz' acl_2.3.1-1.debian.tar.xz 27732 SHA256:900e8993f3a8b95e2c83fc7f530cc15b5cd165b6f517a639239f51cd60d06f2a
```

Other potentially useful URLs:

- https://sources.debian.net/src/acl/2.3.1-1/ (for browsing the source)
- https://sources.debian.net/src/acl/2.3.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/acl/2.3.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `adduser=3.129`

Binary Packages:

- `adduser=3.129`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`
- `GPL-2+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/adduser/3.129/


### `dpkg` source package: `apt=2.5.3`

Binary Packages:

- `apt=2.5.3+b1`
- `libapt-pkg6.0:amd64=2.5.3+b1`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg6.0/copyright`)

- `GPL-2`
- `GPLv2+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/apt/2.5.3/


### `dpkg` source package: `attr=1:2.5.1-1`

Binary Packages:

- `libattr1:amd64=1:2.5.1-1`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/attr/1:2.5.1-1/


### `dpkg` source package: `audit=1:3.0.7-1.1`

Binary Packages:

- `libaudit-common=1:3.0.7-1.1`
- `libaudit1:amd64=1:3.0.7-1.1+b1`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-1`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:3.0.7-1.1
'http://deb.debian.org/debian/pool/main/a/audit/audit_3.0.7-1.1.dsc' audit_3.0.7-1.1.dsc 2500 SHA256:5b15ad446bf4904a985b9fd549341967b9b6c908a5096f4ebd02c0ad83ad00b7
'http://deb.debian.org/debian/pool/main/a/audit/audit_3.0.7.orig.tar.gz' audit_3.0.7.orig.tar.gz 1180226 SHA256:8b4c78632a9301a1c7f859b0e38fc0b9c260b8214d6b7c771bf28b3d73a62597
'http://deb.debian.org/debian/pool/main/a/audit/audit_3.0.7-1.1.debian.tar.xz' audit_3.0.7-1.1.debian.tar.xz 18668 SHA256:f78863e469f8768b403a1d406e56a720aeb168788cd3b3f4d771a12280d1c70e
```

Other potentially useful URLs:

- https://sources.debian.net/src/audit/1:3.0.7-1.1/ (for browsing the source)
- https://sources.debian.net/src/audit/1:3.0.7-1.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/audit/1:3.0.7-1.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `base-files=12.3`

Binary Packages:

- `base-files=12.3`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=12.3
'http://deb.debian.org/debian/pool/main/b/base-files/base-files_12.3.dsc' base-files_12.3.dsc 1078 SHA256:0a96a31ba0e17e966dd980c8c44b2d8cf397d448a79fcd6c254a6e4f83dc40e7
'http://deb.debian.org/debian/pool/main/b/base-files/base-files_12.3.tar.xz' base-files_12.3.tar.xz 65824 SHA256:3f48878de686a4e2f7aa2353168f056605d7a94100e52bd37a8a26ec17689bef
```

Other potentially useful URLs:

- https://sources.debian.net/src/base-files/12.3/ (for browsing the source)
- https://sources.debian.net/src/base-files/12.3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/base-files/12.3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `base-passwd=3.6.1`

Binary Packages:

- `base-passwd=3.6.1`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.6.1
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.6.1.dsc' base-passwd_3.6.1.dsc 1740 SHA256:b4e5fcdba73369657b241743033e8e7a65c26da43285503c652fa1436ce75d1f
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.6.1.tar.xz' base-passwd_3.6.1.tar.xz 56072 SHA256:6ff369be59d586ba63c0c5fcb00f75f9953fe49db88bc6c6428f2c92866f79af
```

Other potentially useful URLs:

- https://sources.debian.net/src/base-passwd/3.6.1/ (for browsing the source)
- https://sources.debian.net/src/base-passwd/3.6.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/base-passwd/3.6.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `bash=5.2~rc2-2`

Binary Packages:

- `bash=5.2~rc2-2`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/bash/5.2~rc2-2/


### `dpkg` source package: `binutils=2.39-8`

Binary Packages:

- `binutils=2.39-8`
- `binutils-common:amd64=2.39-8`
- `binutils-x86-64-linux-gnu=2.39-8`
- `libbinutils:amd64=2.39-8`
- `libctf-nobfd0:amd64=2.39-8`
- `libctf0:amd64=2.39-8`
- `libgprofng0:amd64=2.39-8`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`, `/usr/share/doc/binutils-common/copyright`, `/usr/share/doc/binutils-x86-64-linux-gnu/copyright`, `/usr/share/doc/libbinutils/copyright`, `/usr/share/doc/libctf-nobfd0/copyright`, `/usr/share/doc/libctf0/copyright`, `/usr/share/doc/libgprofng0/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris binutils=2.39-8
'http://deb.debian.org/debian/pool/main/b/binutils/binutils_2.39-8.dsc' binutils_2.39-8.dsc 11635 SHA256:1a0ea82f89083c3dd899fefabb3b02a42807d42aa8d8a31ef7235576b8c511ee
'http://deb.debian.org/debian/pool/main/b/binutils/binutils_2.39.orig.tar.xz' binutils_2.39.orig.tar.xz 25041028 SHA256:419daf4da20041d1d5bd817dd091e488f844eff2935b37f112951962a446c846
'http://deb.debian.org/debian/pool/main/b/binutils/binutils_2.39-8.debian.tar.xz' binutils_2.39-8.debian.tar.xz 113540 SHA256:5709efe075dc9bdec5e0a10c5592729515436f6ff6c0ccf9a7d0e268e3ba6662
```

Other potentially useful URLs:

- https://sources.debian.net/src/binutils/2.39-8/ (for browsing the source)
- https://sources.debian.net/src/binutils/2.39-8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/binutils/2.39-8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `boot=1.3-28-2`

Binary Packages:

- `r-cran-boot=1.3-28-2`

Licenses: (parsed from: `/usr/share/doc/r-cran-boot/copyright`)

- `'unlimited distribution'`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/boot/1.3-28-2/


### `dpkg` source package: `brotli=1.0.9-2`

Binary Packages:

- `libbrotli1:amd64=1.0.9-2+b4`

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

### `dpkg` source package: `build-essential=12.9`

Binary Packages:

- `build-essential=12.9`

Licenses: (parsed from: `/usr/share/doc/build-essential/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris build-essential=12.9
'http://deb.debian.org/debian/pool/main/b/build-essential/build-essential_12.9.dsc' build-essential_12.9.dsc 2220 SHA256:1e4ad67c69001a162b2eb3a2019f037e53c8a1e312073ba1a2110d1e21971555
'http://deb.debian.org/debian/pool/main/b/build-essential/build-essential_12.9.tar.xz' build-essential_12.9.tar.xz 51532 SHA256:938da370b4ef883687d141723d1b7470ad76bec7a54158d3d6b9b38f9c9eedb2
```

Other potentially useful URLs:

- https://sources.debian.net/src/build-essential/12.9/ (for browsing the source)
- https://sources.debian.net/src/build-essential/12.9/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/build-essential/12.9/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `bzip2=1.0.8-5`

Binary Packages:

- `bzip2=1.0.8-5+b1`
- `libbz2-1.0:amd64=1.0.8-5+b1`
- `libbz2-dev:amd64=1.0.8-5+b1`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/libbz2-1.0/copyright`, `/usr/share/doc/libbz2-dev/copyright`)

- `BSD-variant`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.8-5
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.8-5.dsc' bzip2_1.0.8-5.dsc 2206 SHA256:ed9c40f4de3f9e064535e15eac1c61a0f606763db98f4579dbc04067b94a8944
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.8.orig.tar.gz' bzip2_1.0.8.orig.tar.gz 810029 SHA256:ab5a03176ee106d3f0fa90e381da478ddae405918153cca248e682cd0c4a2269
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.8-5.debian.tar.bz2' bzip2_1.0.8-5.debian.tar.bz2 26787 SHA256:d68c6eba11d70e14319e24ef1451880a03023b2b75364646adb117086db36039
```

Other potentially useful URLs:

- https://sources.debian.net/src/bzip2/1.0.8-5/ (for browsing the source)
- https://sources.debian.net/src/bzip2/1.0.8-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/bzip2/1.0.8-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ca-certificates=20211016`

Binary Packages:

- `ca-certificates=20211016`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20211016
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20211016.dsc' ca-certificates_20211016.dsc 1890 SHA256:3d665bb54fa36529dc62fab8cf02a9d54c3a8530b17d9f3f93d170a97727b98c
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20211016.tar.xz' ca-certificates_20211016.tar.xz 239608 SHA256:2ae9b6dc5f40c25d6d7fe55e07b54f12a8967d1955d3b7b2f42ee46266eeef88
```

Other potentially useful URLs:

- https://sources.debian.net/src/ca-certificates/20211016/ (for browsing the source)
- https://sources.debian.net/src/ca-certificates/20211016/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ca-certificates/20211016/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cairo=1.16.0-6`

Binary Packages:

- `libcairo2:amd64=1.16.0-6`

Licenses: (parsed from: `/usr/share/doc/libcairo2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris cairo=1.16.0-6
'http://deb.debian.org/debian/pool/main/c/cairo/cairo_1.16.0-6.dsc' cairo_1.16.0-6.dsc 2933 SHA256:7fa28c7540bae4df03fd36fb4ed0e904dcb6db7640a63d2b553b1b8b23a6ad68
'http://deb.debian.org/debian/pool/main/c/cairo/cairo_1.16.0.orig.tar.xz' cairo_1.16.0.orig.tar.xz 41997432 SHA256:5e7b29b3f113ef870d1e3ecf8adf21f923396401604bda16d44be45e66052331
'http://deb.debian.org/debian/pool/main/c/cairo/cairo_1.16.0-6.debian.tar.xz' cairo_1.16.0-6.debian.tar.xz 33640 SHA256:b84dd54cce7405f3869d0bae4ecfa984eb9e583a275abc3d68816fa02c09b3e3
```

Other potentially useful URLs:

- https://sources.debian.net/src/cairo/1.16.0-6/ (for browsing the source)
- https://sources.debian.net/src/cairo/1.16.0-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cairo/1.16.0-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cdebconf=0.264`

Binary Packages:

- `libdebconfclient0:amd64=0.264`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.264
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.264.dsc' cdebconf_0.264.dsc 2707 SHA256:b41d5d2c77a6604978e2df61cfdb92dea858c87560c292b95d77a47d4bd8747c
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.264.tar.xz' cdebconf_0.264.tar.xz 281292 SHA256:e27599ad371674de8f38aa8b53461688591432e0691d02e183915b76d110050a
```

Other potentially useful URLs:

- https://sources.debian.net/src/cdebconf/0.264/ (for browsing the source)
- https://sources.debian.net/src/cdebconf/0.264/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cdebconf/0.264/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cluster=2.1.4-1`

Binary Packages:

- `r-cran-cluster=2.1.4-1`

Licenses: (parsed from: `/usr/share/doc/r-cran-cluster/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris cluster=2.1.4-1
'http://deb.debian.org/debian/pool/main/c/cluster/cluster_2.1.4-1.dsc' cluster_2.1.4-1.dsc 1831 SHA256:ce277562952708c41387e9d8bb2bfcd401588fb572ff34bde60dbe23a7539b6e
'http://deb.debian.org/debian/pool/main/c/cluster/cluster_2.1.4.orig.tar.gz' cluster_2.1.4.orig.tar.gz 352076 SHA256:c6f10ceca29a176ba833f24ebf71fd451629052c2338398ba286df5689d6f5b6
'http://deb.debian.org/debian/pool/main/c/cluster/cluster_2.1.4-1.debian.tar.xz' cluster_2.1.4-1.debian.tar.xz 4312 SHA256:66b4c3d4bbf804497bd58849ca22b59457f57e121c1922877cb9de57d3e9bc34
```

Other potentially useful URLs:

- https://sources.debian.net/src/cluster/2.1.4-1/ (for browsing the source)
- https://sources.debian.net/src/cluster/2.1.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cluster/2.1.4-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `codetools=0.2-18-1`

Binary Packages:

- `r-cran-codetools=0.2-18-1`

Licenses: (parsed from: `/usr/share/doc/r-cran-codetools/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris codetools=0.2-18-1
'http://deb.debian.org/debian/pool/main/c/codetools/codetools_0.2-18-1.dsc' codetools_0.2-18-1.dsc 1859 SHA256:c5dbbfdad52751ac6af3af2fa3a3dbb3267f136e024289a2102addc41b3e1ecf
'http://deb.debian.org/debian/pool/main/c/codetools/codetools_0.2-18.orig.tar.gz' codetools_0.2-18.orig.tar.gz 38175 SHA256:1a9ea6b9792dbd1688078455929385acc3a5e4bef945c77bec1261fa4a084c28
'http://deb.debian.org/debian/pool/main/c/codetools/codetools_0.2-18-1.debian.tar.xz' codetools_0.2-18-1.debian.tar.xz 2868 SHA256:be07b14194de74900cbcc6a7fb67f52be0be88a103cf4f71682997ebfb576718
```

Other potentially useful URLs:

- https://sources.debian.net/src/codetools/0.2-18-1/ (for browsing the source)
- https://sources.debian.net/src/codetools/0.2-18-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/codetools/0.2-18-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `coreutils=9.1-1`

Binary Packages:

- `coreutils=9.1-1`

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
$ apt-get source -qq --print-uris coreutils=9.1-1
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_9.1-1.dsc' coreutils_9.1-1.dsc 1848 SHA256:2f2fca0a07a1a3f38e3ebeb4cbd97e97e675e77bed84f3e9d0b7e5da4cde75fc
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_9.1.orig.tar.xz' coreutils_9.1.orig.tar.xz 5712104 SHA256:61a1f410d78ba7e7f37a5a4f50e6d1320aca33375484a3255eddf17a38580423
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_9.1-1.debian.tar.xz' coreutils_9.1-1.debian.tar.xz 30624 SHA256:45d4ae88d933a7d713ef038943e818a2488e759b6196a409788744cbc6df1832
```

Other potentially useful URLs:

- https://sources.debian.net/src/coreutils/9.1-1/ (for browsing the source)
- https://sources.debian.net/src/coreutils/9.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/coreutils/9.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `curl=7.85.0-1`

Binary Packages:

- `libcurl4:amd64=7.85.0-1`

Licenses: (parsed from: `/usr/share/doc/libcurl4/copyright`)

- `BSD-3-Clause`
- `BSD-3-clause`
- `BSD-4-Clause-UC`
- `FSFULLR`
- `GPL-2`
- `GPL-2+ with Autoconf-data exception`
- `GPL-2+ with Libtool exception`
- `GPL-3+ with Autoconf-data exception`
- `ISC`
- `X11`
- `curl`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/curl/7.85.0-1/


### `dpkg` source package: `cyrus-sasl2=2.1.28+dfsg-8`

Binary Packages:

- `libsasl2-2:amd64=2.1.28+dfsg-8`
- `libsasl2-modules-db:amd64=2.1.28+dfsg-8`

Licenses: (parsed from: `/usr/share/doc/libsasl2-2/copyright`, `/usr/share/doc/libsasl2-modules-db/copyright`)

- `BSD-2-clause`
- `BSD-2.2-clause`
- `BSD-3-clause`
- `BSD-3-clause-JANET`
- `BSD-3-clause-PADL`
- `BSD-4-clause`
- `BSD-4-clause-KTH`
- `BSD-4-clause-UC`
- `FSFULLR`
- `GPL-3`
- `GPL-3+`
- `IBM-as-is`
- `MIT-CMU`
- `MIT-Export`
- `MIT-OpenVision`
- `OpenLDAP`
- `OpenSSL`
- `RSA-MD`
- `SSLeay`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/cyrus-sasl2/2.1.28+dfsg-8/


### `dpkg` source package: `dash=0.5.11+git20210903+057cd650a4ed-9`

Binary Packages:

- `dash=0.5.11+git20210903+057cd650a4ed-9`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `BSD-3-Clause`
- `BSD-3-clause`
- `Expat`
- `FSFUL`
- `FSFULLR`
- `GPL-2`
- `GPL-2+`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/dash/0.5.11+git20210903+057cd650a4ed-9/


### `dpkg` source package: `db5.3=5.3.28+dfsg1-0.10`

Binary Packages:

- `libdb5.3:amd64=5.3.28+dfsg1-0.10`

Licenses: (parsed from: `/usr/share/doc/libdb5.3/copyright`)

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/db5.3/5.3.28+dfsg1-0.10/


### `dpkg` source package: `debconf=1.5.79`

Binary Packages:

- `debconf=1.5.79`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/debconf/1.5.79/


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

### `dpkg` source package: `debianutils=5.7-0.3`

Binary Packages:

- `debianutils=5.7-0.3`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/debianutils/5.7-0.3/


### `dpkg` source package: `diffutils=1:3.8-1`

Binary Packages:

- `diffutils=1:3.8-1`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/diffutils/1:3.8-1/


### `dpkg` source package: `dpkg=1.21.9`

Binary Packages:

- `dpkg=1.21.9+b1`
- `dpkg-dev=1.21.9`
- `libdpkg-perl=1.21.9`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`, `/usr/share/doc/dpkg-dev/copyright`, `/usr/share/doc/libdpkg-perl/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/dpkg/1.21.9/


### `dpkg` source package: `e2fsprogs=1.46.6~rc1-1`

Binary Packages:

- `e2fsprogs=1.46.6~rc1-1+b1`
- `libcom-err2:amd64=1.46.6~rc1-1+b1`
- `libext2fs2:amd64=1.46.6~rc1-1+b1`
- `libss2:amd64=1.46.6~rc1-1+b1`
- `logsave=1.46.6~rc1-1+b1`

Licenses: (parsed from: `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcom-err2/copyright`, `/usr/share/doc/libext2fs2/copyright`, `/usr/share/doc/libss2/copyright`, `/usr/share/doc/logsave/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.46.6~rc1-1
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.46.6%7erc1-1.1.dsc' e2fsprogs_1.46.6~rc1-1.1.dsc 2988 SHA256:ec8d0444b9670874736a41e26307f7f4880b2048ae449a557fe8e8d760b005ca
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.46.6%7erc1.orig.tar.gz' e2fsprogs_1.46.6~rc1.orig.tar.gz 9615342 SHA256:a21354e3f0e94d2874ebe1b5587aa536438aca10b516aa00bd6a808e86c5adeb
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.46.6%7erc1.orig.tar.gz.asc' e2fsprogs_1.46.6~rc1.orig.tar.gz.asc 13016974 SHA256:26ffb2f1c2d7440375791863bc579347060ddf2b6c1339cf469d5edb492d4604
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.46.6%7erc1-1.1.debian.tar.xz' e2fsprogs_1.46.6~rc1-1.1.debian.tar.xz 87584 SHA256:96ac4037585457876872395b13930885b76b07ab8054ce890334311831729ff0
```

Other potentially useful URLs:

- https://sources.debian.net/src/e2fsprogs/1.46.6~rc1-1/ (for browsing the source)
- https://sources.debian.net/src/e2fsprogs/1.46.6~rc1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/e2fsprogs/1.46.6~rc1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ed=1.18-1`

Binary Packages:

- `ed=1.18-1`

Licenses: (parsed from: `/usr/share/doc/ed/copyright`)

- `BSD-2-Clause`
- `FCONF`
- `FDOC`
- `FLOG`
- `GFDL-1.3`
- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/ed/1.18-1/


### `dpkg` source package: `expat=2.5.0-1`

Binary Packages:

- `libexpat1:amd64=2.5.0-1`

Licenses: (parsed from: `/usr/share/doc/libexpat1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris expat=2.5.0-1
'http://deb.debian.org/debian/pool/main/e/expat/expat_2.5.0-1.dsc' expat_2.5.0-1.dsc 1981 SHA256:e7c69b69d720ae1e2971f5edc7fffe274f0047cc61e541cd2013afcc1ba80b81
'http://deb.debian.org/debian/pool/main/e/expat/expat_2.5.0.orig.tar.gz' expat_2.5.0.orig.tar.gz 8320988 SHA256:ab00ee05c7067fd10a35c5d2a4922ebba746ddd50ff83b79c828da17bbdf1757
'http://deb.debian.org/debian/pool/main/e/expat/expat_2.5.0-1.debian.tar.xz' expat_2.5.0-1.debian.tar.xz 12680 SHA256:232c69ecdf58850b28b5e22374eae4db024d6558f2fbbd57b9af48ab31ce97ed
```

Other potentially useful URLs:

- https://sources.debian.net/src/expat/2.5.0-1/ (for browsing the source)
- https://sources.debian.net/src/expat/2.5.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/expat/2.5.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `findutils=4.9.0-3`

Binary Packages:

- `findutils=4.9.0-3`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/findutils/4.9.0-3/


### `dpkg` source package: `fontconfig=2.13.1-4.5`

Binary Packages:

- `fontconfig=2.13.1-4.5`
- `fontconfig-config=2.13.1-4.5`
- `libfontconfig1:amd64=2.13.1-4.5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/fontconfig/2.13.1-4.5/


### `dpkg` source package: `foreign=0.8.83-1`

Binary Packages:

- `r-cran-foreign=0.8.83-1`

Licenses: (parsed from: `/usr/share/doc/r-cran-foreign/copyright`)

- `GPL`
- `GPL `

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/foreign/0.8.83-1/


### `dpkg` source package: `freetype=2.12.1+dfsg-3`

Binary Packages:

- `libfreetype6:amd64=2.12.1+dfsg-3`

Licenses: (parsed from: `/usr/share/doc/libfreetype6/copyright`)

- `BSD-3-Clause`
- `BSL-1.0`
- `FSFAP`
- `FTL`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `MIT`
- `OpenGroup-BSD-like`
- `Public-Domain`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris freetype=2.12.1+dfsg-3
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.12.1%2bdfsg-3.dsc' freetype_2.12.1+dfsg-3.dsc 3713 SHA256:23a551d286339047ab29e270a780cc091d43a40e7ef83ffbeb8ccd011575d7c8
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.12.1%2bdfsg.orig-ft2demos.tar.xz' freetype_2.12.1+dfsg.orig-ft2demos.tar.xz 263656 SHA256:ce729d97f166a919a6a3037c949af01d5d6e1783614024d72683153f0bc5ef05
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.12.1%2bdfsg.orig-ft2demos.tar.xz.asc' freetype_2.12.1+dfsg.orig-ft2demos.tar.xz.asc 833 SHA256:0303e45fe1dc659f14353c276ac0ea1025b30e19ac8138c52d5df79b55726f14
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.12.1%2bdfsg.orig-ft2docs.tar.xz' freetype_2.12.1+dfsg.orig-ft2docs.tar.xz 2038632 SHA256:6664a32e4eedaa89f45422c1150e32da46fd301c972cbfd19d2dcc6dd96f07d1
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.12.1%2bdfsg.orig-ft2docs.tar.xz.asc' freetype_2.12.1+dfsg.orig-ft2docs.tar.xz.asc 833 SHA256:e686683830c782c30cdd83278c8d5ed7ab930ae7d548682565b706322f44007f
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.12.1%2bdfsg.orig.tar.xz' freetype_2.12.1+dfsg.orig.tar.xz 2188492 SHA256:7dedb6b9adf331559daea614a83b8de42a753e685ec8e1c4bdb4529eb880b0d1
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.12.1%2bdfsg-3.debian.tar.xz' freetype_2.12.1+dfsg-3.debian.tar.xz 44068 SHA256:aafab76c3bf3e024d70273bbca59cd2aa1164cfdf9876397a507b988b47d260b
```

Other potentially useful URLs:

- https://sources.debian.net/src/freetype/2.12.1+dfsg-3/ (for browsing the source)
- https://sources.debian.net/src/freetype/2.12.1+dfsg-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/freetype/2.12.1+dfsg-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `fribidi=1.0.8-2.1`

Binary Packages:

- `libfribidi0:amd64=1.0.8-2.1`

Licenses: (parsed from: `/usr/share/doc/libfribidi0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris fribidi=1.0.8-2.1
'http://deb.debian.org/debian/pool/main/f/fribidi/fribidi_1.0.8-2.1.dsc' fribidi_1.0.8-2.1.dsc 2457 SHA256:7efd56752103ca3ea6190bbc3ee49b613bc131cd7551fb64c6e9d233d4496553
'http://deb.debian.org/debian/pool/main/f/fribidi/fribidi_1.0.8.orig.tar.bz2' fribidi_1.0.8.orig.tar.bz2 2077095 SHA256:94c7b68d86ad2a9613b4dcffe7bbeb03523d63b5b37918bdf2e4ef34195c1e6c
'http://deb.debian.org/debian/pool/main/f/fribidi/fribidi_1.0.8-2.1.debian.tar.xz' fribidi_1.0.8-2.1.debian.tar.xz 10348 SHA256:7e80ba37a8ef1ce98c73a888b56a3f1192fbd0f43c46b626026106065bd2993a
```

Other potentially useful URLs:

- https://sources.debian.net/src/fribidi/1.0.8-2.1/ (for browsing the source)
- https://sources.debian.net/src/fribidi/1.0.8-2.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/fribidi/1.0.8-2.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-12=12.2.0-3`

Binary Packages:

- `cpp-12=12.2.0-3`
- `g++-12=12.2.0-3`
- `gcc-12=12.2.0-3`
- `gcc-12-base:amd64=12.2.0-3`
- `gfortran-12=12.2.0-3`
- `libasan8:amd64=12.2.0-3`
- `libatomic1:amd64=12.2.0-3`
- `libcc1-0:amd64=12.2.0-3`
- `libgcc-12-dev:amd64=12.2.0-3`
- `libgcc-s1:amd64=12.2.0-3`
- `libgfortran-12-dev:amd64=12.2.0-3`
- `libgfortran5:amd64=12.2.0-3`
- `libgomp1:amd64=12.2.0-3`
- `libitm1:amd64=12.2.0-3`
- `liblsan0:amd64=12.2.0-3`
- `libquadmath0:amd64=12.2.0-3`
- `libstdc++-12-dev:amd64=12.2.0-3`
- `libstdc++6:amd64=12.2.0-3`
- `libtsan2:amd64=12.2.0-3`
- `libubsan1:amd64=12.2.0-3`

Licenses: (parsed from: `/usr/share/doc/cpp-12/copyright`, `/usr/share/doc/g++-12/copyright`, `/usr/share/doc/gcc-12/copyright`, `/usr/share/doc/gcc-12-base/copyright`, `/usr/share/doc/gfortran-12/copyright`, `/usr/share/doc/libasan8/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libcc1-0/copyright`, `/usr/share/doc/libgcc-12-dev/copyright`, `/usr/share/doc/libgcc-s1/copyright`, `/usr/share/doc/libgfortran-12-dev/copyright`, `/usr/share/doc/libgfortran5/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++-12-dev/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan2/copyright`, `/usr/share/doc/libubsan1/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/gcc-12/12.2.0-3/


### `dpkg` source package: `gcc-defaults=1.201`

Binary Packages:

- `cpp=4:12.2.0-1`
- `g++=4:12.2.0-1`
- `gcc=4:12.2.0-1`
- `gfortran=4:12.2.0-1`

Licenses: (parsed from: `/usr/share/doc/cpp/copyright`, `/usr/share/doc/g++/copyright`, `/usr/share/doc/gcc/copyright`, `/usr/share/doc/gfortran/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/gcc-defaults/1.201/


### `dpkg` source package: `gdbm=1.23-3`

Binary Packages:

- `libgdbm-compat4:amd64=1.23-3`
- `libgdbm6:amd64=1.23-3`

Licenses: (parsed from: `/usr/share/doc/libgdbm-compat4/copyright`, `/usr/share/doc/libgdbm6/copyright`)

- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.23-3
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.23-3.dsc' gdbm_1.23-3.dsc 2583 SHA256:3e4a52655a1b65c51d33e032913edda3423dcae8cc282c16a455a0afd2d2738d
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.23.orig.tar.gz' gdbm_1.23.orig.tar.gz 1115854 SHA256:74b1081d21fff13ae4bd7c16e5d6e504a4c26f7cde1dca0d963a484174bbcacd
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.23.orig.tar.gz.asc' gdbm_1.23.orig.tar.gz.asc 181 SHA256:64ebb68cc68e8915d62cb20ea40323c00b56051f844589ee0a52169fff34cecb
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.23-3.debian.tar.xz' gdbm_1.23-3.debian.tar.xz 18552 SHA256:a0ff17befcbd7c4b361cfe0d821a7a71334102a9c423537bd57f60f18f6802ea
```

Other potentially useful URLs:

- https://sources.debian.net/src/gdbm/1.23-3/ (for browsing the source)
- https://sources.debian.net/src/gdbm/1.23-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gdbm/1.23-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `glib2.0=2.74.1-1`

Binary Packages:

- `libglib2.0-0:amd64=2.74.1-1`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0/copyright`)

- `AFL-2.0`
- `Apache-2.0`
- `Apache-2.0 with LLVM exception`
- `BSD-3-clause-pcre`
- `CC-BY-SA-3.0`
- `CC0-1.0`
- `Expat`
- `FSFULLR`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf exception`
- `Iconv-PD`
- `Janik-permissive`
- `Kuchling-PD`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`
- `Mingw-PD`
- `Old-GLib-Tests-permissive`
- `Plumb-PD`
- `Unicode-DFS-2016`
- `bzip2-1.0.6`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/glib2.0/2.74.1-1/


### `dpkg` source package: `glibc=2.35-4`

Binary Packages:

- `libc-bin=2.35-4`
- `libc-dev-bin=2.35-4`
- `libc-l10n=2.35-4`
- `libc6:amd64=2.35-4`
- `libc6-dev:amd64=2.35-4`
- `locales=2.35-4`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc-l10n/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`, `/usr/share/doc/locales/copyright`)

- `GPL-2`
- `LGPL-2.1`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/glibc/2.35-4/


### `dpkg` source package: `gmp=2:6.2.1+dfsg1-1.1`

Binary Packages:

- `libgmp10:amd64=2:6.2.1+dfsg1-1.1`

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
$ apt-get source -qq --print-uris gmp=2:6.2.1+dfsg1-1.1
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.2.1%2bdfsg1-1.1.dsc' gmp_6.2.1+dfsg1-1.1.dsc 2238 SHA256:2831ed4f83bc3304c2403474b335652ab2dc507cd517de44414d9142171748f0
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.2.1%2bdfsg1.orig.tar.xz' gmp_6.2.1+dfsg1.orig.tar.xz 1787428 SHA256:471b9e463e04362a0124f215afc5f0a4b99caedeeb62634c61bbc12988efa64c
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.2.1%2bdfsg1-1.1.debian.tar.xz' gmp_6.2.1+dfsg1-1.1.debian.tar.xz 19444 SHA256:4e3e324d72fe688e409c716d33b35aa8657f6016cc1aabd5d9c7ec137412e5ef
```

Other potentially useful URLs:

- https://sources.debian.net/src/gmp/2:6.2.1+dfsg1-1.1/ (for browsing the source)
- https://sources.debian.net/src/gmp/2:6.2.1+dfsg1-1.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gmp/2:6.2.1+dfsg1-1.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnupg2=2.2.39-1`

Binary Packages:

- `gpgv=2.2.39-1+b1`

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
$ apt-get source -qq --print-uris gnupg2=2.2.39-1
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.39-1.dsc' gnupg2_2.2.39-1.dsc 3219 SHA256:32e8abac2cb73cc7dcbbd9fdd9c94b19ebefb034f5de6d7851627d3c247807a9
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.39.orig.tar.bz2' gnupg2_2.2.39.orig.tar.bz2 7290098 SHA256:ab74db6685f026d7c0a10b527ecddecd608606a1691d15fda5d0a7f7d27e4c2f
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.39.orig.tar.bz2.asc' gnupg2_2.2.39.orig.tar.bz2.asc 390 SHA256:e2ded32666b9cc72bbe7e78248ed3ae9ec827530fe346812e2f99f59e15701b3
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.39-1.debian.tar.xz' gnupg2_2.2.39-1.debian.tar.xz 61380 SHA256:943f823abb65b2912a3384ca5f9e3538d8384b1e48fe04385fa789829bc5413d
```

Other potentially useful URLs:

- https://sources.debian.net/src/gnupg2/2.2.39-1/ (for browsing the source)
- https://sources.debian.net/src/gnupg2/2.2.39-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnupg2/2.2.39-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnutls28=3.7.8-2`

Binary Packages:

- `libgnutls30:amd64=3.7.8-2`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/gnutls28/3.7.8-2/


### `dpkg` source package: `graphite2=1.3.14-1`

Binary Packages:

- `libgraphite2-3:amd64=1.3.14-1`

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
$ apt-get source -qq --print-uris graphite2=1.3.14-1
'http://deb.debian.org/debian/pool/main/g/graphite2/graphite2_1.3.14-1.dsc' graphite2_1.3.14-1.dsc 2608 SHA256:3a622b8aa7d693d6d60d3cd29b49a7d9d7873ea6089cb52ce7a223261e605152
'http://deb.debian.org/debian/pool/main/g/graphite2/graphite2_1.3.14.orig.tar.gz' graphite2_1.3.14.orig.tar.gz 6629829 SHA256:7a3b342c5681921ce2e0c2496509d30b5b078399d5a7bd2358f95166d57d91df
'http://deb.debian.org/debian/pool/main/g/graphite2/graphite2_1.3.14-1.debian.tar.xz' graphite2_1.3.14-1.debian.tar.xz 12068 SHA256:94d584e6c748fa7e2f851c3bb39cb2cdb437b4f91d1d636f3d842357724cd9bd
```

Other potentially useful URLs:

- https://sources.debian.net/src/graphite2/1.3.14-1/ (for browsing the source)
- https://sources.debian.net/src/graphite2/1.3.14-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/graphite2/1.3.14-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `grep=3.7-1`

Binary Packages:

- `grep=3.7-1`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/grep/3.7-1/


### `dpkg` source package: `gzip=1.12-1`

Binary Packages:

- `gzip=1.12-1`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `FSF-manpages`
- `GFDL-1.3+-no-invariant`
- `GFDL-3`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.12-1
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.12-1.dsc' gzip_1.12-1.dsc 2009 SHA256:49a287787a0b4fc816eb576c011c472d1f630ec1778dfa120bd7fce4a844c253
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.12.orig.tar.xz' gzip_1.12.orig.tar.xz 825548 SHA256:ce5e03e519f637e1f814011ace35c4f87b33c0bbabeec35baf5fbd3479e91956
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.12.orig.tar.xz.asc' gzip_1.12.orig.tar.xz.asc 833 SHA256:3ed9ab54452576e0be0d477c772c9f47baa36415133fef7dd1fcf7b15480ba32
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.12-1.debian.tar.xz' gzip_1.12-1.debian.tar.xz 18736 SHA256:fcf2317e8eeddd66766ec5f3853025b109bd13815ec86ed6563e1af68d17193a
```

Other potentially useful URLs:

- https://sources.debian.net/src/gzip/1.12-1/ (for browsing the source)
- https://sources.debian.net/src/gzip/1.12-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gzip/1.12-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `harfbuzz=5.2.0-2`

Binary Packages:

- `libharfbuzz0b:amd64=5.2.0-2`

Licenses: (parsed from: `/usr/share/doc/libharfbuzz0b/copyright`)

- `MIT`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/harfbuzz/5.2.0-2/


### `dpkg` source package: `hostname=3.23`

Binary Packages:

- `hostname=3.23`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/hostname/3.23/


### `dpkg` source package: `icu=71.1-3`

Binary Packages:

- `icu-devtools=71.1-3`
- `libicu-dev:amd64=71.1-3`
- `libicu71:amd64=71.1-3`

Licenses: (parsed from: `/usr/share/doc/icu-devtools/copyright`, `/usr/share/doc/libicu-dev/copyright`, `/usr/share/doc/libicu71/copyright`)

- `GPL-3`
- `MIT`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/icu/71.1-3/


### `dpkg` source package: `init-system-helpers=1.65.2`

Binary Packages:

- `init-system-helpers=1.65.2`

Licenses: (parsed from: `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.65.2
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.65.2.dsc' init-system-helpers_1.65.2.dsc 2195 SHA256:3889593844b232df78f3f886aed6d8351fe0539cee8d15a721d4b682c6a83538
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.65.2.tar.xz' init-system-helpers_1.65.2.tar.xz 44400 SHA256:888bd5642f31396fd2b1a6f9c8f56ba5f6651fb599dae2b9eecf239902162cae
```

Other potentially useful URLs:

- https://sources.debian.net/src/init-system-helpers/1.65.2/ (for browsing the source)
- https://sources.debian.net/src/init-system-helpers/1.65.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/init-system-helpers/1.65.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `isl=0.25-1`

Binary Packages:

- `libisl23:amd64=0.25-1`

Licenses: (parsed from: `/usr/share/doc/libisl23/copyright`)

- `BSD-2-clause`
- `LGPL-2`
- `LGPL-2.1+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris isl=0.25-1
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.25-1.dsc' isl_0.25-1.dsc 1832 SHA256:e4f18c3fc65369b5fc8870b2c5f30cb9c3f2ec9f50f8e29156cc06cce2dbe437
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.25.orig.tar.xz' isl_0.25.orig.tar.xz 1977048 SHA256:be7b210647ccadf90a2f0b000fca11a4d40546374a850db67adb32fad4b230d9
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.25-1.debian.tar.xz' isl_0.25-1.debian.tar.xz 24344 SHA256:22ceb736a06ed290ea06c4f6c81ef8ed944b3738aa496c1961d193edfc847f30
```

Other potentially useful URLs:

- https://sources.debian.net/src/isl/0.25-1/ (for browsing the source)
- https://sources.debian.net/src/isl/0.25-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/isl/0.25-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `jbigkit=2.1-3.1`

Binary Packages:

- `libjbig0:amd64=2.1-3.1+b2`

Licenses: (parsed from: `/usr/share/doc/libjbig0/copyright`)

- `GPL-2`
- `GPL-2+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/jbigkit/2.1-3.1/


### `dpkg` source package: `kernsmooth=2.23-20-1`

Binary Packages:

- `r-cran-kernsmooth=2.23-20-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris kernsmooth=2.23-20-1
'http://deb.debian.org/debian/pool/main/k/kernsmooth/kernsmooth_2.23-20-1.dsc' kernsmooth_2.23-20-1.dsc 1891 SHA256:2b09ccd2ac359365bd3cb32aa688b1cabb89beb2e25e21a5768da6604cf11c1d
'http://deb.debian.org/debian/pool/main/k/kernsmooth/kernsmooth_2.23-20.orig.tar.gz' kernsmooth_2.23-20.orig.tar.gz 25946 SHA256:20eb75051e2473933d41eedc9945b03c632847fd581e2207d452cf317fa5ec39
'http://deb.debian.org/debian/pool/main/k/kernsmooth/kernsmooth_2.23-20-1.debian.tar.xz' kernsmooth_2.23-20-1.debian.tar.xz 3356 SHA256:900201f86061c4ebdbe9f0bfd888574169fb0ed5f254e993a00c80a0b59a8942
```

Other potentially useful URLs:

- https://sources.debian.net/src/kernsmooth/2.23-20-1/ (for browsing the source)
- https://sources.debian.net/src/kernsmooth/2.23-20-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/kernsmooth/2.23-20-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `keyutils=1.6.3-1`

Binary Packages:

- `libkeyutils1:amd64=1.6.3-1`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/keyutils/1.6.3-1/


### `dpkg` source package: `krb5=1.20-1`

Binary Packages:

- `libgssapi-krb5-2:amd64=1.20-1+b1`
- `libk5crypto3:amd64=1.20-1+b1`
- `libkrb5-3:amd64=1.20-1+b1`
- `libkrb5support0:amd64=1.20-1+b1`

Licenses: (parsed from: `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/krb5/1.20-1/


### `dpkg` source package: `lapack=3.10.1-2`

Binary Packages:

- `libblas-dev:amd64=3.10.1-2`
- `libblas3:amd64=3.10.1-2`
- `liblapack-dev:amd64=3.10.1-2`
- `liblapack3:amd64=3.10.1-2`

Licenses: (parsed from: `/usr/share/doc/libblas-dev/copyright`, `/usr/share/doc/libblas3/copyright`, `/usr/share/doc/liblapack-dev/copyright`, `/usr/share/doc/liblapack3/copyright`)

- `BSD-3-clause`
- `BSD-3-clause-intel`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/lapack/3.10.1-2/


### `dpkg` source package: `lattice=0.20-45-3`

Binary Packages:

- `r-cran-lattice=0.20-45-3`

Licenses: (parsed from: `/usr/share/doc/r-cran-lattice/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris lattice=0.20-45-3
'http://deb.debian.org/debian/pool/main/l/lattice/lattice_0.20-45-3.dsc' lattice_0.20-45-3.dsc 1845 SHA256:aa5d7456ac0a384fddb6a67685ec2ea39107d533c6320dc574916a52447602de
'http://deb.debian.org/debian/pool/main/l/lattice/lattice_0.20-45.orig.tar.gz' lattice_0.20-45.orig.tar.gz 399470 SHA256:22388d92bdb7d3959da84d7308d9026dd8226ef07580783729e8ad2f7d7507ad
'http://deb.debian.org/debian/pool/main/l/lattice/lattice_0.20-45-3.debian.tar.xz' lattice_0.20-45-3.debian.tar.xz 5276 SHA256:a7a6e17033f0b0ef5738388e5a21c4bbaf05ceea29c878bf32dadc27c0461899
```

Other potentially useful URLs:

- https://sources.debian.net/src/lattice/0.20-45-3/ (for browsing the source)
- https://sources.debian.net/src/lattice/0.20-45-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lattice/0.20-45-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lerc=4.0.0+ds-2`

Binary Packages:

- `liblerc4:amd64=4.0.0+ds-2`

Licenses: (parsed from: `/usr/share/doc/liblerc4/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris lerc=4.0.0+ds-2
'http://deb.debian.org/debian/pool/main/l/lerc/lerc_4.0.0%2bds-2.dsc' lerc_4.0.0+ds-2.dsc 2224 SHA256:61c32adc1590f930af4b94b151e6a0a8569ace7d7a4f1961eb049f209b47a417
'http://deb.debian.org/debian/pool/main/l/lerc/lerc_4.0.0%2bds.orig.tar.xz' lerc_4.0.0+ds.orig.tar.xz 348140 SHA256:acf855502fd3b950ee78f0b67bc9e9b39316b3526fbf6d8b8b1a9482fb756723
'http://deb.debian.org/debian/pool/main/l/lerc/lerc_4.0.0%2bds-2.debian.tar.xz' lerc_4.0.0+ds-2.debian.tar.xz 7780 SHA256:b5676df41934c3c95447a66f766ac8f536cf9fa88063c93b0201e6b4fd25aff6
```

Other potentially useful URLs:

- https://sources.debian.net/src/lerc/4.0.0+ds-2/ (for browsing the source)
- https://sources.debian.net/src/lerc/4.0.0+ds-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lerc/4.0.0+ds-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `less=590-1`

Binary Packages:

- `less=590-1`

Licenses: (parsed from: `/usr/share/doc/less/copyright`)

- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/less/590-1/


### `dpkg` source package: `libbsd=0.11.7-1`

Binary Packages:

- `libbsd0:amd64=0.11.7-1`

Licenses: (parsed from: `/usr/share/doc/libbsd0/copyright`)

- `BSD-2-clause`
- `BSD-2-clause-NetBSD`
- `BSD-2-clause-author`
- `BSD-2-clause-verbatim`
- `BSD-3-clause`
- `BSD-3-clause-John-Birrell`
- `BSD-3-clause-Regents`
- `BSD-3-clause-author`
- `BSD-4-clause-Niels-Provos`
- `BSD-5-clause-Peter-Wemm`
- `Beerware`
- `Expat`
- `ISC`
- `ISC-Original`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libbsd=0.11.7-1
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.11.7-1.dsc' libbsd_0.11.7-1.dsc 2308 SHA256:f8627014f4ef55b2b79a4a26aacfa01a0c4fef899922a4c40b6f2dc5f8a7019c
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.11.7.orig.tar.xz' libbsd_0.11.7.orig.tar.xz 418508 SHA256:9baa186059ebbf25c06308e9f991fda31f7183c0f24931826d83aa6abd8a0261
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.11.7.orig.tar.xz.asc' libbsd_0.11.7.orig.tar.xz.asc 833 SHA256:b470d3fa5ad6948de7a85891e652970828f26eb7057028d57b94fa8644af934a
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.11.7-1.debian.tar.xz' libbsd_0.11.7-1.debian.tar.xz 18012 SHA256:8f852a5846f34df63ac56a2e520c2cc9bcd9eb7ecb6f67ecec78438a4c1f6d47
```

Other potentially useful URLs:

- https://sources.debian.net/src/libbsd/0.11.7-1/ (for browsing the source)
- https://sources.debian.net/src/libbsd/0.11.7-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libbsd/0.11.7-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libcap-ng=0.8.3-1`

Binary Packages:

- `libcap-ng0:amd64=0.8.3-1+b1`

Licenses: (parsed from: `/usr/share/doc/libcap-ng0/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libcap-ng=0.8.3-1
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.8.3-1.dsc' libcap-ng_0.8.3-1.dsc 1634 SHA256:1bf38dbc0c30bcbc776d2d5c25e31d89202de0858f9ca9379c993d55103d7ef0
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.8.3.orig.tar.gz' libcap-ng_0.8.3.orig.tar.gz 455383 SHA256:bed6f6848e22bb2f83b5f764b2aef0ed393054e803a8e3a8711cb2a39e6b492d
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.8.3-1.debian.tar.xz' libcap-ng_0.8.3-1.debian.tar.xz 10488 SHA256:710577902c260f50f8cfc9d7e264131f880eab0581d12ceab17ebe48e2ac53c6
```

Other potentially useful URLs:

- https://sources.debian.net/src/libcap-ng/0.8.3-1/ (for browsing the source)
- https://sources.debian.net/src/libcap-ng/0.8.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libcap-ng/0.8.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libcap2=1:2.44-1`

Binary Packages:

- `libcap2:amd64=1:2.44-1`

Licenses: (parsed from: `/usr/share/doc/libcap2/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libcap2=1:2.44-1
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.44-1.dsc' libcap2_2.44-1.dsc 2179 SHA256:c356b4239be3c35ef4b7ef5b9f7ea1677da41a68ef9761a8cabc96023076ac83
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.44.orig.tar.xz' libcap2_2.44.orig.tar.xz 125568 SHA256:92188359cd5be86e8e5bd3f6483ac6ce582264f912398937ef763def2205c8e1
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.44-1.debian.tar.xz' libcap2_2.44-1.debian.tar.xz 21116 SHA256:f612c54d31b44b4f508342a3415f5d51deeffaf939d4b47068909bbb1fd6c0f2
```

Other potentially useful URLs:

- https://sources.debian.net/src/libcap2/1:2.44-1/ (for browsing the source)
- https://sources.debian.net/src/libcap2/1:2.44-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libcap2/1:2.44-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libdatrie=0.2.13-2`

Binary Packages:

- `libdatrie1:amd64=0.2.13-2+b1`

Licenses: (parsed from: `/usr/share/doc/libdatrie1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libdatrie=0.2.13-2
'http://deb.debian.org/debian/pool/main/libd/libdatrie/libdatrie_0.2.13-2.dsc' libdatrie_0.2.13-2.dsc 2239 SHA256:d359689deccfa654ab844d6e955fff5e826d9a5dc9a74408d1b6a095f78ab0e5
'http://deb.debian.org/debian/pool/main/libd/libdatrie/libdatrie_0.2.13.orig.tar.xz' libdatrie_0.2.13.orig.tar.xz 314072 SHA256:12231bb2be2581a7f0fb9904092d24b0ed2a271a16835071ed97bed65267f4be
'http://deb.debian.org/debian/pool/main/libd/libdatrie/libdatrie_0.2.13-2.debian.tar.xz' libdatrie_0.2.13-2.debian.tar.xz 9604 SHA256:3f341eb067c5365345e0a416a3c835a8e785c3220aca27c8fb2a01499d0214e9
```

Other potentially useful URLs:

- https://sources.debian.net/src/libdatrie/0.2.13-2/ (for browsing the source)
- https://sources.debian.net/src/libdatrie/0.2.13-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libdatrie/0.2.13-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libdeflate=1.14-1`

Binary Packages:

- `libdeflate0:amd64=1.14-1`

Licenses: (parsed from: `/usr/share/doc/libdeflate0/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libdeflate=1.14-1
'http://deb.debian.org/debian/pool/main/libd/libdeflate/libdeflate_1.14-1.dsc' libdeflate_1.14-1.dsc 2214 SHA256:1f82791c5ac5623ed110e09cc991471deebfe4c419414392d1242e122c6f4c19
'http://deb.debian.org/debian/pool/main/libd/libdeflate/libdeflate_1.14.orig.tar.gz' libdeflate_1.14.orig.tar.gz 180182 SHA256:89e7df898c37c3427b0f39aadcf733731321a278771d20fc553f92da8d4808ac
'http://deb.debian.org/debian/pool/main/libd/libdeflate/libdeflate_1.14-1.debian.tar.xz' libdeflate_1.14-1.debian.tar.xz 4784 SHA256:4794c379cc4e77eaeb283620bd80a7ce57b858af508f80ba6d5efbc4bcb10434
```

Other potentially useful URLs:

- https://sources.debian.net/src/libdeflate/1.14-1/ (for browsing the source)
- https://sources.debian.net/src/libdeflate/1.14-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libdeflate/1.14-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libffi=3.4.2-4`

Binary Packages:

- `libffi8:amd64=3.4.2-4`

Licenses: (parsed from: `/usr/share/doc/libffi8/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.4.2-4
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.4.2-4.dsc' libffi_3.4.2-4.dsc 1948 SHA256:c7c4890a434795e41a77bddbca949fb904b022a70d8446c5a005ec0f9ed4c554
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.4.2.orig.tar.gz' libffi_3.4.2.orig.tar.gz 1351355 SHA256:540fb721619a6aba3bdeef7d940d8e9e0e6d2c193595bc243241b77ff9e93620
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.4.2-4.debian.tar.xz' libffi_3.4.2-4.debian.tar.xz 8164 SHA256:06d936d00d43e7999d0bce0aa2e0f1550109295b8093de77e6453acb9eacfd19
```

Other potentially useful URLs:

- https://sources.debian.net/src/libffi/3.4.2-4/ (for browsing the source)
- https://sources.debian.net/src/libffi/3.4.2-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libffi/3.4.2-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgcrypt20=1.10.1-2`

Binary Packages:

- `libgcrypt20:amd64=1.10.1-2`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.10.1-2
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.10.1-2.dsc' libgcrypt20_1.10.1-2.dsc 2790 SHA256:aa95c53382f51ed57490496df3ccb47d0ce11de1995cef78b87f7875eba416fb
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.10.1.orig.tar.bz2' libgcrypt20_1.10.1.orig.tar.bz2 3778457 SHA256:ef14ae546b0084cd84259f61a55e07a38c3b53afc0f546bffcef2f01baffe9de
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.10.1.orig.tar.bz2.asc' libgcrypt20_1.10.1.orig.tar.bz2.asc 228 SHA256:9da6ae5e8b1c253607be7e951b568932740c143ee519f6b3392ece8211e84e33
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.10.1-2.debian.tar.xz' libgcrypt20_1.10.1-2.debian.tar.xz 36788 SHA256:96875b4209984bfd192ce05a06f72f86f2ac2279b987f6d8e2e07cb0c95e2f68
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgcrypt20/1.10.1-2/ (for browsing the source)
- https://sources.debian.net/src/libgcrypt20/1.10.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgcrypt20/1.10.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgpg-error=1.45-2`

Binary Packages:

- `libgpg-error0:amd64=1.45-2`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.45-2
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.45-2.dsc' libgpg-error_1.45-2.dsc 2273 SHA256:aacc0e1d60caf48ada2f8c73fa35bcb0f5e6368dfd301a624f5ede9419835144
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.45.orig.tar.bz2' libgpg-error_1.45.orig.tar.bz2 1015954 SHA256:570f8ee4fb4bff7b7495cff920c275002aea2147e9a1d220c068213267f80a26
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.45.orig.tar.bz2.asc' libgpg-error_1.45.orig.tar.bz2.asc 390 SHA256:3a4bfe4d36842a74a9f48a961df517efae812f1d6e097d274f8db5783a828508
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.45-2.debian.tar.xz' libgpg-error_1.45-2.debian.tar.xz 18820 SHA256:677493c9636cdcbbd7124ee460703dcdf990d4a0982819f006701f94f6285c45
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgpg-error/1.45-2/ (for browsing the source)
- https://sources.debian.net/src/libgpg-error/1.45-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgpg-error/1.45-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libice=2:1.0.10-1`

Binary Packages:

- `libice6:amd64=2:1.0.10-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libice=2:1.0.10-1
'http://deb.debian.org/debian/pool/main/libi/libice/libice_1.0.10-1.dsc' libice_1.0.10-1.dsc 2049 SHA256:adb7b4e250db838a476a44b5a941c8f935ac2b20858186f09228cd3e0696034d
'http://deb.debian.org/debian/pool/main/libi/libice/libice_1.0.10.orig.tar.gz' libice_1.0.10.orig.tar.gz 481960 SHA256:1116bc64c772fd127a0d0c0ffa2833479905e3d3d8197740b3abd5f292f22d2d
'http://deb.debian.org/debian/pool/main/libi/libice/libice_1.0.10-1.diff.gz' libice_1.0.10-1.diff.gz 11349 SHA256:d186b3877416a7e80f1923fe2fc736d576e585a41450bcf4cd5e74f9dd099362
```

Other potentially useful URLs:

- https://sources.debian.net/src/libice/2:1.0.10-1/ (for browsing the source)
- https://sources.debian.net/src/libice/2:1.0.10-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libice/2:1.0.10-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libidn2=2.3.3-1`

Binary Packages:

- `libidn2-0:amd64=2.3.3-1+b1`

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
$ apt-get source -qq --print-uris libidn2=2.3.3-1
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.3.3-1.dsc' libidn2_2.3.3-1.dsc 2206 SHA256:13865e96a0fed8dcb82767db65c946b56ed44fc1806d80d407c512ded2a83984
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.3.3.orig.tar.gz' libidn2_2.3.3.orig.tar.gz 2116946 SHA256:f3ac987522c00d33d44b323cae424e2cffcb4c63c6aa6cd1376edacbf1c36eb0
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.3.3.orig.tar.gz.asc' libidn2_2.3.3.orig.tar.gz.asc 228 SHA256:e8f2bdce5def6c239c2cc3220e808b19b14d3f7eb3a0e14851dd5c16fc9ad0ec
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.3.3-1.debian.tar.xz' libidn2_2.3.3-1.debian.tar.xz 15964 SHA256:b040c12276e1128394c2f84c97f7e45f340867fa9d0d0a0b9d8f043b1977db99
```

Other potentially useful URLs:

- https://sources.debian.net/src/libidn2/2.3.3-1/ (for browsing the source)
- https://sources.debian.net/src/libidn2/2.3.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libidn2/2.3.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libjpeg-turbo=1:2.1.2-1`

Binary Packages:

- `libjpeg-dev:amd64=1:2.1.2-1+b1`
- `libjpeg62-turbo:amd64=1:2.1.2-1+b1`
- `libjpeg62-turbo-dev:amd64=1:2.1.2-1+b1`

Licenses: (parsed from: `/usr/share/doc/libjpeg-dev/copyright`, `/usr/share/doc/libjpeg62-turbo/copyright`, `/usr/share/doc/libjpeg62-turbo-dev/copyright`)

- `BSD-3-clause`
- `BSD-BY-LC-NE`
- `BSD-BY-LC-NE `
- `Expat`
- `NTP`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris libjpeg-turbo=1:2.1.2-1
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_2.1.2-1.dsc' libjpeg-turbo_2.1.2-1.dsc 2490 SHA256:e40ec3e3b73570ac9ac1e414e8a2e70e42e83463b97890ba1f2138f67aa14c4b
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_2.1.2.orig.tar.gz' libjpeg-turbo_2.1.2.orig.tar.gz 2257645 SHA256:e7fdc8a255c45bc8fbd9aa11c1a49c23092fcd7379296aeaeb14d3343a3d1bed
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_2.1.2-1.debian.tar.xz' libjpeg-turbo_2.1.2-1.debian.tar.xz 98752 SHA256:2bb65a55a3faff6470e34b74cd7756e6b1db79df41d90cd2c4fce2f394f25d73
```

Other potentially useful URLs:

- https://sources.debian.net/src/libjpeg-turbo/1:2.1.2-1/ (for browsing the source)
- https://sources.debian.net/src/libjpeg-turbo/1:2.1.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libjpeg-turbo/1:2.1.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libmd=1.0.4-2`

Binary Packages:

- `libmd0:amd64=1.0.4-2`

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
$ apt-get source -qq --print-uris libmd=1.0.4-2
'http://deb.debian.org/debian/pool/main/libm/libmd/libmd_1.0.4-2.dsc' libmd_1.0.4-2.dsc 2264 SHA256:5e060cb277f31e67b91033e05ece00832ca8056decba873b1698a5680414a177
'http://deb.debian.org/debian/pool/main/libm/libmd/libmd_1.0.4.orig.tar.xz' libmd_1.0.4.orig.tar.xz 264472 SHA256:f51c921042e34beddeded4b75557656559cf5b1f2448033b4c1eec11c07e530f
'http://deb.debian.org/debian/pool/main/libm/libmd/libmd_1.0.4.orig.tar.xz.asc' libmd_1.0.4.orig.tar.xz.asc 833 SHA256:32deebe1cfab127ee69a3e8c8caf439e459b7cdcdd7535fe021cb485adc14057
'http://deb.debian.org/debian/pool/main/libm/libmd/libmd_1.0.4-2.debian.tar.xz' libmd_1.0.4-2.debian.tar.xz 10204 SHA256:a27a2221b1a81e192455e2e93da2e313b21e489f6ac2bcf84b0b813dc3fe261b
```

Other potentially useful URLs:

- https://sources.debian.net/src/libmd/1.0.4-2/ (for browsing the source)
- https://sources.debian.net/src/libmd/1.0.4-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libmd/1.0.4-2/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `libpaper=1.1.28`

Binary Packages:

- `libpaper-utils=1.1.28+b1`
- `libpaper1:amd64=1.1.28+b1`

Licenses: (parsed from: `/usr/share/doc/libpaper-utils/copyright`, `/usr/share/doc/libpaper1/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libpaper=1.1.28
'http://deb.debian.org/debian/pool/main/libp/libpaper/libpaper_1.1.28.dsc' libpaper_1.1.28.dsc 1633 SHA256:298d6347d84ece2f55088e371facc13362c8f4731d80f94c6ad84190309de8b4
'http://deb.debian.org/debian/pool/main/libp/libpaper/libpaper_1.1.28.tar.gz' libpaper_1.1.28.tar.gz 42356 SHA256:c8bb946ec93d3c2c72bbb1d7257e90172a22a44a07a07fb6b802a5bb2c95fddc
```

Other potentially useful URLs:

- https://sources.debian.net/src/libpaper/1.1.28/ (for browsing the source)
- https://sources.debian.net/src/libpaper/1.1.28/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpaper/1.1.28/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libpng1.6=1.6.38-2`

Binary Packages:

- `libpng-dev:amd64=1.6.38-2`
- `libpng16-16:amd64=1.6.38-2`

Licenses: (parsed from: `/usr/share/doc/libpng-dev/copyright`, `/usr/share/doc/libpng16-16/copyright`)

- `Apache-2.0`
- `BSD-3-clause`
- `BSD-like-with-advertising-clause`
- `GPL-2`
- `GPL-2+`
- `expat`
- `libpng`
- `libpng OR Apache-2.0 OR BSD-3-clause`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libpng1.6/1.6.38-2/


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

### `dpkg` source package: `libseccomp=2.5.4-1`

Binary Packages:

- `libseccomp2:amd64=2.5.4-1+b1`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.5.4-1
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.5.4-1.dsc' libseccomp_2.5.4-1.dsc 2676 SHA256:2986473126cb5f3e358fed40ec1482816e1068dbdfe938bf9f80c50afcf32b80
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.5.4.orig.tar.gz' libseccomp_2.5.4.orig.tar.gz 637228 SHA256:d82902400405cf0068574ef3dc1fe5f5926207543ba1ae6f8e7a1576351dcbdb
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.5.4.orig.tar.gz.asc' libseccomp_2.5.4.orig.tar.gz.asc 833 SHA256:af37e70eb422e6f983c1f135a3abb342c3b787716520b71bd774e4906003807f
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.5.4-1.debian.tar.xz' libseccomp_2.5.4-1.debian.tar.xz 16264 SHA256:fd7abe7b26a08ca514457fd13302d348d59401616ce3f6809ce15f54e6ebe77d
```

Other potentially useful URLs:

- https://sources.debian.net/src/libseccomp/2.5.4-1/ (for browsing the source)
- https://sources.debian.net/src/libseccomp/2.5.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libseccomp/2.5.4-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libselinux=3.4-1`

Binary Packages:

- `libselinux1:amd64=3.4-1+b2`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=3.4-1
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_3.4-1.dsc' libselinux_3.4-1.dsc 2534 SHA256:4035af53388d343f9b5c46ca2867ba32823cf4a2d218ddd590b34ae59c899157
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_3.4.orig.tar.gz' libselinux_3.4.orig.tar.gz 210061 SHA256:77c294a927e6795c2e98f74b5c3adde9c8839690e9255b767c5fca6acff9b779
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_3.4.orig.tar.gz.asc' libselinux_3.4.orig.tar.gz.asc 833 SHA256:5c370bdef7b756697445e6838ba1b2d934f668b244461e36e245f589ec994a24
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_3.4-1.debian.tar.xz' libselinux_3.4-1.debian.tar.xz 29416 SHA256:046ace4ad0092104bdfb0c6e5187131910216c89b8b81a4bce3c2067615c9196
```

Other potentially useful URLs:

- https://sources.debian.net/src/libselinux/3.4-1/ (for browsing the source)
- https://sources.debian.net/src/libselinux/3.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libselinux/3.4-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsemanage=3.4-1`

Binary Packages:

- `libsemanage-common=3.4-1`
- `libsemanage2:amd64=3.4-1+b2`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage2/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=3.4-1
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_3.4-1.dsc' libsemanage_3.4-1.dsc 2570 SHA256:be300e01bbd08706fb6f0ecd349b3585a535d9ff0957265a7c634545ac3515c8
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_3.4.orig.tar.gz' libsemanage_3.4.orig.tar.gz 185177 SHA256:93b423a21600b8e3fb59bb925d4583d1258f45bebf63c29bde304dfd3d52efd6
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_3.4.orig.tar.gz.asc' libsemanage_3.4.orig.tar.gz.asc 833 SHA256:58da87dd662c135b70c065a0b1ca800cd4b075b365f3d71e0ff02d71c7457883
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_3.4-1.debian.tar.xz' libsemanage_3.4-1.debian.tar.xz 23248 SHA256:531c5294d5ec881ef4bc4396a9e1f38895558cd88c4fd6d3f6a673a4b2297a5c
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsemanage/3.4-1/ (for browsing the source)
- https://sources.debian.net/src/libsemanage/3.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsemanage/3.4-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsepol=3.4-2`

Binary Packages:

- `libsepol2:amd64=3.4-2`

Licenses: (parsed from: `/usr/share/doc/libsepol2/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=3.4-2
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_3.4-2.dsc' libsepol_3.4-2.dsc 2005 SHA256:c43db54870c37a4b6441b1980bfd41932e7851244ba1fda0df86c5f17dd67e8a
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_3.4.orig.tar.gz' libsepol_3.4.orig.tar.gz 490628 SHA256:fc277ac5b52d59d2cd81eec8b1cccd450301d8b54d9dd48a993aea0577cf0336
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_3.4.orig.tar.gz.asc' libsepol_3.4.orig.tar.gz.asc 833 SHA256:ed127c08353dbc2c442d47d77e323e79e5bd47791a0a5bd4dfd077868f4346bc
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_3.4-2.debian.tar.xz' libsepol_3.4-2.debian.tar.xz 21516 SHA256:fdf943b513b8d0fc6b74fd6a007ba35c9601909c0b3fd6e7726b4b09b1243502
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsepol/3.4-2/ (for browsing the source)
- https://sources.debian.net/src/libsepol/3.4-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsepol/3.4-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsm=2:1.2.3-1`

Binary Packages:

- `libsm6:amd64=2:1.2.3-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libsm=2:1.2.3-1
'http://deb.debian.org/debian/pool/main/libs/libsm/libsm_1.2.3-1.dsc' libsm_1.2.3-1.dsc 2063 SHA256:5488f8de81d53c32cbb5f062b6a6f262cd067283b8082041392dc60f0d04002c
'http://deb.debian.org/debian/pool/main/libs/libsm/libsm_1.2.3.orig.tar.gz' libsm_1.2.3.orig.tar.gz 445362 SHA256:1e92408417cb6c6c477a8a6104291001a40b3bb56a4a60608fdd9cd2c5a0f320
'http://deb.debian.org/debian/pool/main/libs/libsm/libsm_1.2.3-1.diff.gz' libsm_1.2.3-1.diff.gz 8929 SHA256:7eb99ab50b19f26d1470f89e4b46891f6a697cb1794a58ed0d1376cceaf1b6a9
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsm/2:1.2.3-1/ (for browsing the source)
- https://sources.debian.net/src/libsm/2:1.2.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsm/2:1.2.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libssh2=1.10.0-3`

Binary Packages:

- `libssh2-1:amd64=1.10.0-3+b1`

Licenses: (parsed from: `/usr/share/doc/libssh2-1/copyright`)

- `BSD3`

Source:

```console
$ apt-get source -qq --print-uris libssh2=1.10.0-3
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.10.0-3.dsc' libssh2_1.10.0-3.dsc 2283 SHA256:a0fe68f402a2f44dd6bd2219457fb8677b2149a83e7b009e93ff0635de940766
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.10.0.orig.tar.gz' libssh2_1.10.0.orig.tar.gz 965044 SHA256:2d64e90f3ded394b91d3a2e774ca203a4179f69aebee03003e5a6fa621e41d51
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.10.0.orig.tar.gz.asc' libssh2_1.10.0.orig.tar.gz.asc 488 SHA256:75702eaf490fa8c1e69b889c5c6366c2c3f3b089bc715f9f9be081c88f115f81
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.10.0-3.debian.tar.xz' libssh2_1.10.0-3.debian.tar.xz 8416 SHA256:c0bea31fe565273656349484d1000b557e489ee322834b40c4d7d33317a56940
```

Other potentially useful URLs:

- https://sources.debian.net/src/libssh2/1.10.0-3/ (for browsing the source)
- https://sources.debian.net/src/libssh2/1.10.0-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libssh2/1.10.0-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libtasn1-6=4.19.0-2`

Binary Packages:

- `libtasn1-6:amd64=4.19.0-2`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=4.19.0-2
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.19.0-2.dsc' libtasn1-6_4.19.0-2.dsc 2662 SHA256:cbecbd9b784af6dedde9ca685a4cc13e1ead027ea051150ff8186af57c547109
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.19.0.orig.tar.gz' libtasn1-6_4.19.0.orig.tar.gz 1786576 SHA256:1613f0ac1cf484d6ec0ce3b8c06d56263cc7242f1c23b30d82d23de345a63f7a
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.19.0.orig.tar.gz.asc' libtasn1-6_4.19.0.orig.tar.gz.asc 228 SHA256:8410c0c004f3509c218a98b276b3308b9c46f48068e8b1a6d9ebfd61ea9f357a
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.19.0-2.debian.tar.xz' libtasn1-6_4.19.0-2.debian.tar.xz 22012 SHA256:21fe6b16fb27cca47b51893708964ddfe04ea5227d1608560b4988e6fca74ae9
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtasn1-6/4.19.0-2/ (for browsing the source)
- https://sources.debian.net/src/libtasn1-6/4.19.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtasn1-6/4.19.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libthai=0.1.29-1`

Binary Packages:

- `libthai-data=0.1.29-1`
- `libthai0:amd64=0.1.29-1`

Licenses: (parsed from: `/usr/share/doc/libthai-data/copyright`, `/usr/share/doc/libthai0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libthai=0.1.29-1
'http://deb.debian.org/debian/pool/main/libt/libthai/libthai_0.1.29-1.dsc' libthai_0.1.29-1.dsc 2325 SHA256:470b853bcb84ce88c63720da51ee5b0001fd1ebec8f8679a986b155d0be1ff06
'http://deb.debian.org/debian/pool/main/libt/libthai/libthai_0.1.29.orig.tar.xz' libthai_0.1.29.orig.tar.xz 417728 SHA256:fc80cc7dcb50e11302b417cebd24f2d30a8b987292e77e003267b9100d0f4bcd
'http://deb.debian.org/debian/pool/main/libt/libthai/libthai_0.1.29-1.debian.tar.xz' libthai_0.1.29-1.debian.tar.xz 12564 SHA256:5c86bd1c2af7972e29cead559823c8f85b9dd9363efad0d90ab7ad86e35840ef
```

Other potentially useful URLs:

- https://sources.debian.net/src/libthai/0.1.29-1/ (for browsing the source)
- https://sources.debian.net/src/libthai/0.1.29-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libthai/0.1.29-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libtirpc=1.3.3+ds-1`

Binary Packages:

- `libtirpc-common=1.3.3+ds-1`
- `libtirpc-dev:amd64=1.3.3+ds-1`
- `libtirpc3:amd64=1.3.3+ds-1`

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
$ apt-get source -qq --print-uris libtirpc=1.3.3+ds-1
'http://deb.debian.org/debian/pool/main/libt/libtirpc/libtirpc_1.3.3%2bds-1.dsc' libtirpc_1.3.3+ds-1.dsc 2129 SHA256:c05c5d76027d4162d5a29d73eef90076559bde0fa5133b2e0045d82155e1b2af
'http://deb.debian.org/debian/pool/main/libt/libtirpc/libtirpc_1.3.3%2bds.orig.tar.gz' libtirpc_1.3.3+ds.orig.tar.gz 699030 SHA256:facd98473c3a16fe6564c6458ef96ebb84d144345d1171f034fa019424bba027
'http://deb.debian.org/debian/pool/main/libt/libtirpc/libtirpc_1.3.3%2bds-1.debian.tar.xz' libtirpc_1.3.3+ds-1.debian.tar.xz 11232 SHA256:fd1865c49e905951a641082981c1dab7f018caea1a5e23af1791728a3320800e
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtirpc/1.3.3+ds-1/ (for browsing the source)
- https://sources.debian.net/src/libtirpc/1.3.3+ds-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtirpc/1.3.3+ds-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libunistring=1.0-2`

Binary Packages:

- `libunistring2:amd64=1.0-2`

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
$ apt-get source -qq --print-uris libunistring=1.0-2
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_1.0-2.dsc' libunistring_1.0-2.dsc 2181 SHA256:9b9a9d9d4cd1c2118df8cf5ca0dfb787d89afcd99400d7cd01b4c4e9b0bc1ae5
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_1.0.orig.tar.xz' libunistring_1.0.orig.tar.xz 2367800 SHA256:5bab55b49f75d77ed26b257997e919b693f29fd4a1bc22e0e6e024c246c72741
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_1.0.orig.tar.xz.asc' libunistring_1.0.orig.tar.xz.asc 833 SHA256:c1c2ae60eb971593da92e65384a5f1b181717e7b9654854f139f350c6cbe235d
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_1.0-2.debian.tar.xz' libunistring_1.0-2.debian.tar.xz 14520 SHA256:e550d94935cd06eafb0defd7b5d7c914c7bb80a8e818a49efcf7675206572450
```

Other potentially useful URLs:

- https://sources.debian.net/src/libunistring/1.0-2/ (for browsing the source)
- https://sources.debian.net/src/libunistring/1.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libunistring/1.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libwebp=1.2.2-2`

Binary Packages:

- `libwebp7:amd64=1.2.2-2+b1`

Licenses: (parsed from: `/usr/share/doc/libwebp7/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris libwebp=1.2.2-2
'http://deb.debian.org/debian/pool/main/libw/libwebp/libwebp_1.2.2-2.dsc' libwebp_1.2.2-2.dsc 2065 SHA256:3fd71b46ebe7abb2a24f8dbec0eb036191087f3d8e1a54b120b23e3ebc61e195
'http://deb.debian.org/debian/pool/main/libw/libwebp/libwebp_1.2.2.orig.tar.gz' libwebp_1.2.2.orig.tar.gz 4117468 SHA256:7656532f837af5f4cec3ff6bafe552c044dc39bf453587bd5b77450802f4aee6
'http://deb.debian.org/debian/pool/main/libw/libwebp/libwebp_1.2.2-2.debian.tar.xz' libwebp_1.2.2-2.debian.tar.xz 5688 SHA256:8d04536e71bb86a1be3f26a64c575cc697d68a7d564a5a06a1c91ee4f785f507
```

Other potentially useful URLs:

- https://sources.debian.net/src/libwebp/1.2.2-2/ (for browsing the source)
- https://sources.debian.net/src/libwebp/1.2.2-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libwebp/1.2.2-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libx11=2:1.8.1-2`

Binary Packages:

- `libx11-6:amd64=2:1.8.1-2`
- `libx11-data=2:1.8.1-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libx11=2:1.8.1-2
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.8.1-2.dsc' libx11_1.8.1-2.dsc 2542 SHA256:2a64edad1d57a373ed6f6d27749c4ff75c9fd6c593e0c01ab1f8ca1f54f235a7
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.8.1.orig.tar.gz' libx11_1.8.1.orig.tar.gz 3174798 SHA256:d52f0a7c02a45449f37b0831d99ff936d92eb4ce8b4c97dc17a63cea79ce5a76
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.8.1.orig.tar.gz.asc' libx11_1.8.1.orig.tar.gz.asc 801 SHA256:9fb25edfeeb298cdeadfcc999957b0c3205b272147107108a6c434b4b6ae9c4c
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.8.1-2.diff.gz' libx11_1.8.1-2.diff.gz 101135 SHA256:c5e6e957daef88c03ab95d5a93d870e40c9e1bed56d63ed9f686547eecdee694
```

Other potentially useful URLs:

- https://sources.debian.net/src/libx11/2:1.8.1-2/ (for browsing the source)
- https://sources.debian.net/src/libx11/2:1.8.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libx11/2:1.8.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxau=1:1.0.9-1`

Binary Packages:

- `libxau6:amd64=1:1.0.9-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxau=1:1.0.9-1
'http://deb.debian.org/debian/pool/main/libx/libxau/libxau_1.0.9-1.dsc' libxau_1.0.9-1.dsc 2183 SHA256:e6e059652cda7e5a49b6c9a70667639f32d629c20320487d16c642a06c1ebf85
'http://deb.debian.org/debian/pool/main/libx/libxau/libxau_1.0.9.orig.tar.gz' libxau_1.0.9.orig.tar.gz 394068 SHA256:1f123d8304b082ad63a9e89376400a3b1d4c29e67e3ea07b3f659cccca690eea
'http://deb.debian.org/debian/pool/main/libx/libxau/libxau_1.0.9.orig.tar.gz.asc' libxau_1.0.9.orig.tar.gz.asc 801 SHA256:af6104aaf3c5ede529e381237dd60f49640ec96593a84502fa493b86582b2f04
'http://deb.debian.org/debian/pool/main/libx/libxau/libxau_1.0.9-1.diff.gz' libxau_1.0.9-1.diff.gz 10193 SHA256:7b34899563f172e8f11d061de41b58fe1c32f8683d985e57686677ccb7299a9a
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxau/1:1.0.9-1/ (for browsing the source)
- https://sources.debian.net/src/libxau/1:1.0.9-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxau/1:1.0.9-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxcb=1.15-1`

Binary Packages:

- `libxcb-render0:amd64=1.15-1`
- `libxcb-shm0:amd64=1.15-1`
- `libxcb1:amd64=1.15-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcb=1.15-1
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.15-1.dsc' libxcb_1.15-1.dsc 5344 SHA256:f689569f33e70ca4c95c91b094d0659eb49a958d9ac43186640338f9290e298b
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.15.orig.tar.gz' libxcb_1.15.orig.tar.gz 650774 SHA256:1cb65df8543a69ec0555ac696123ee386321dfac1964a3da39976c9a05ad724d
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.15-1.diff.gz' libxcb_1.15-1.diff.gz 26267 SHA256:639c719ed06ffc397b200a209abd1a049e21e9e19431fb14c9ca870de01a6eac
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxcb/1.15-1/ (for browsing the source)
- https://sources.debian.net/src/libxcb/1.15-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxcb/1.15-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxcrypt=1:4.4.28-2`

Binary Packages:

- `libcrypt-dev:amd64=1:4.4.28-2`
- `libcrypt1:amd64=1:4.4.28-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcrypt=1:4.4.28-2
'http://deb.debian.org/debian/pool/main/libx/libxcrypt/libxcrypt_4.4.28-2.dsc' libxcrypt_4.4.28-2.dsc 1613 SHA256:b668e66960c61b6980fbb6f2ea2cd7602e390f363e843798eca85f6cc6200a87
'http://deb.debian.org/debian/pool/main/libx/libxcrypt/libxcrypt_4.4.28.orig.tar.xz' libxcrypt_4.4.28.orig.tar.xz 391484 SHA256:2bf09c6c3ea139d11134d2598745a0793f4cf17245720880394c00490dbcb4df
'http://deb.debian.org/debian/pool/main/libx/libxcrypt/libxcrypt_4.4.28-2.debian.tar.xz' libxcrypt_4.4.28-2.debian.tar.xz 8088 SHA256:d5f8c1c1e2cb9ef9e99da9f3c7f28fc4142781337a72c22a67d841a8a8fee4d5
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxcrypt/1:4.4.28-2/ (for browsing the source)
- https://sources.debian.net/src/libxcrypt/1:4.4.28-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxcrypt/1:4.4.28-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxdmcp=1:1.1.2-3`

Binary Packages:

- `libxdmcp6:amd64=1:1.1.2-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxdmcp=1:1.1.2-3
'http://deb.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp_1.1.2-3.dsc' libxdmcp_1.1.2-3.dsc 2145 SHA256:f9697dca6a275aeee9a3eee9fb2d55e0f77485481e8b84efc6950fc9b1988460
'http://deb.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp_1.1.2.orig.tar.gz' libxdmcp_1.1.2.orig.tar.gz 404115 SHA256:6f7c7e491a23035a26284d247779174dedc67e34e93cc3548b648ffdb6fc57c0
'http://deb.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp_1.1.2-3.diff.gz' libxdmcp_1.1.2-3.diff.gz 18017 SHA256:5844df115c17e5ba40ac116f80373304d821c607e763ef6f40562421f5cc0cf3
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxdmcp/1:1.1.2-3/ (for browsing the source)
- https://sources.debian.net/src/libxdmcp/1:1.1.2-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxdmcp/1:1.1.2-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxext=2:1.3.4-1`

Binary Packages:

- `libxext6:amd64=2:1.3.4-1+b1`

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

### `dpkg` source package: `libxmu=2:1.1.3-3`

Binary Packages:

- `libxmuu1:amd64=2:1.1.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxmu=2:1.1.3-3
'http://deb.debian.org/debian/pool/main/libx/libxmu/libxmu_1.1.3-3.dsc' libxmu_1.1.3-3.dsc 2165 SHA256:d9dfadd0a6be92f88b1151c695e5799f889a39047176f80a91fcba24333cd063
'http://deb.debian.org/debian/pool/main/libx/libxmu/libxmu_1.1.3.orig.tar.gz' libxmu_1.1.3.orig.tar.gz 497343 SHA256:5bd9d4ed1ceaac9ea023d86bf1c1632cd3b172dce4a193a72a94e1d9df87a62e
'http://deb.debian.org/debian/pool/main/libx/libxmu/libxmu_1.1.3-3.diff.gz' libxmu_1.1.3-3.diff.gz 8085 SHA256:6f599ddd7951a1db5c1899fcd2a7c0289ae4ec9f9a783bc5e5b209b83c7ea12d
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxmu/2:1.1.3-3/ (for browsing the source)
- https://sources.debian.net/src/libxmu/2:1.1.3-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxmu/2:1.1.3-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxrender=1:0.9.10-1.1`

Binary Packages:

- `libxrender1:amd64=1:0.9.10-1.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrender=1:0.9.10-1.1
'http://deb.debian.org/debian/pool/main/libx/libxrender/libxrender_0.9.10-1.1.dsc' libxrender_0.9.10-1.1.dsc 2072 SHA256:348ab15d05f1d802da485e4c6abdb9d5419691fb7c8ce44ca5b17b2b7f889ce8
'http://deb.debian.org/debian/pool/main/libx/libxrender/libxrender_0.9.10.orig.tar.gz' libxrender_0.9.10.orig.tar.gz 373717 SHA256:770527cce42500790433df84ec3521e8bf095dfe5079454a92236494ab296adf
'http://deb.debian.org/debian/pool/main/libx/libxrender/libxrender_0.9.10-1.1.diff.gz' libxrender_0.9.10-1.1.diff.gz 15201 SHA256:caf8c84085b3b0d073f738fa12d32d4eca2d8b669cb3c7f1b1cd2ce64b7b10b7
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxrender/1:0.9.10-1.1/ (for browsing the source)
- https://sources.debian.net/src/libxrender/1:0.9.10-1.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxrender/1:0.9.10-1.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxss=1:1.2.3-1`

Binary Packages:

- `libxss1:amd64=1:1.2.3-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxss=1:1.2.3-1
'http://deb.debian.org/debian/pool/main/libx/libxss/libxss_1.2.3-1.dsc' libxss_1.2.3-1.dsc 2203 SHA256:783dbcd49a0934d994693af676ee98734dad070ab2434a6afe831c2de0ecca1d
'http://deb.debian.org/debian/pool/main/libx/libxss/libxss_1.2.3.orig.tar.gz' libxss_1.2.3.orig.tar.gz 385215 SHA256:4f74e7e412144591d8e0616db27f433cfc9f45aae6669c6c4bb03e6bf9be809a
'http://deb.debian.org/debian/pool/main/libx/libxss/libxss_1.2.3.orig.tar.gz.asc' libxss_1.2.3.orig.tar.gz.asc 705 SHA256:4e900524d56c8e7263365267efa91bb3671110c9eb28ccab58f70e2188f0b91b
'http://deb.debian.org/debian/pool/main/libx/libxss/libxss_1.2.3-1.diff.gz' libxss_1.2.3-1.diff.gz 7145 SHA256:9d381b48f1377f27c506113e1f9b7d6ee286b856421f7f2b27017f01dccfef04
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxss/1:1.2.3-1/ (for browsing the source)
- https://sources.debian.net/src/libxss/1:1.2.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxss/1:1.2.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxt=1:1.2.1-1`

Binary Packages:

- `libxt6:amd64=1:1.2.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxt=1:1.2.1-1
'http://deb.debian.org/debian/pool/main/libx/libxt/libxt_1.2.1-1.dsc' libxt_1.2.1-1.dsc 2312 SHA256:910bf9521a14849eb0c5c2d6f35222065cabc55fa712223773f7d1305211dbe3
'http://deb.debian.org/debian/pool/main/libx/libxt/libxt_1.2.1.orig.tar.gz' libxt_1.2.1.orig.tar.gz 1024473 SHA256:6da1bfa9dd0ed87430a5ce95b129485086394df308998ebe34d98e378e3dfb33
'http://deb.debian.org/debian/pool/main/libx/libxt/libxt_1.2.1.orig.tar.gz.asc' libxt_1.2.1.orig.tar.gz.asc 358 SHA256:da406cc94c25ca6773bb37c2055e2eb5665491f7ca6dfc9ea04f0f30ea3fd098
'http://deb.debian.org/debian/pool/main/libx/libxt/libxt_1.2.1-1.diff.gz' libxt_1.2.1-1.diff.gz 45419 SHA256:2aaf37ac880e8a9b04ecf999f3911e3ac840649a9ee0d0c5d160dd6536ff9416
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxt/1:1.2.1-1/ (for browsing the source)
- https://sources.debian.net/src/libxt/1:1.2.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxt/1:1.2.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libzstd=1.5.2+dfsg-1`

Binary Packages:

- `libzstd1:amd64=1.5.2+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/libzstd1/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris libzstd=1.5.2+dfsg-1
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.5.2%2bdfsg-1.dsc' libzstd_1.5.2+dfsg-1.dsc 2173 SHA256:135c6d3ef18470e2eb4289b2aca6256eb9abba28478b08d99b0e1b8257af0b69
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.5.2%2bdfsg.orig.tar.xz' libzstd_1.5.2+dfsg.orig.tar.xz 1404564 SHA256:b59caaee4a6176bbe67bf5440b56ca8814da9d2ad2d943eb7b3ee8a0a83e4224
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.5.2%2bdfsg-1.debian.tar.xz' libzstd_1.5.2+dfsg-1.debian.tar.xz 11820 SHA256:286c2cc82fd3b0d76d172102efa8004325875bb0db1d12b5a52bbfc050f61a28
```

Other potentially useful URLs:

- https://sources.debian.net/src/libzstd/1.5.2+dfsg-1/ (for browsing the source)
- https://sources.debian.net/src/libzstd/1.5.2+dfsg-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libzstd/1.5.2+dfsg-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `linux=6.0.5-1`

Binary Packages:

- `linux-libc-dev:amd64=6.0.5-1`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `BSD-2-clause`
- `CRYPTOGAMS`
- `GPL-2`
- `GPL-2+-or-X11`
- `LGPL-2.1`
- `Unicode-data`
- `Xen-interface`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/linux/6.0.5-1/


### `dpkg` source package: `littler=0.3.16-1`

Binary Packages:

- `littler=0.3.16-1`
- `r-cran-littler=0.3.16-1`

Licenses: (parsed from: `/usr/share/doc/littler/copyright`, `/usr/share/doc/r-cran-littler/copyright`)

- `GPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/littler/0.3.16-1/


### `dpkg` source package: `lz4=1.9.4-1`

Binary Packages:

- `liblz4-1:amd64=1.9.4-1`

Licenses: (parsed from: `/usr/share/doc/liblz4-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lz4=1.9.4-1
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_1.9.4-1.dsc' lz4_1.9.4-1.dsc 1951 SHA256:e16302bca544d08d106efc216541f4a0403c8f8a5fad5eaac7588223a55af263
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_1.9.4.orig.tar.gz' lz4_1.9.4.orig.tar.gz 354063 SHA256:0b0e3aa07c8c063ddf40b082bdf7e37a1562bda40a0ff5272957f3e987e0e54b
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_1.9.4-1.debian.tar.xz' lz4_1.9.4-1.debian.tar.xz 8128 SHA256:47ceec5b95f42598f7b9280b03df9659f2ee6852720ec181488e83bd643f0e5f
```

Other potentially useful URLs:

- https://sources.debian.net/src/lz4/1.9.4-1/ (for browsing the source)
- https://sources.debian.net/src/lz4/1.9.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lz4/1.9.4-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `mawk=1.3.4.20200120-3.1`

Binary Packages:

- `mawk=1.3.4.20200120-3.1`

Licenses: (parsed from: `/usr/share/doc/mawk/copyright`)

- `CC-BY-3.0`
- `GPL-2`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris mawk=1.3.4.20200120-3.1
'http://deb.debian.org/debian/pool/main/m/mawk/mawk_1.3.4.20200120-3.1.dsc' mawk_1.3.4.20200120-3.1.dsc 1776 SHA256:ed0543e3111f718e918a73033292fe2616760c8791c13efa0da3818ca835cdc1
'http://deb.debian.org/debian/pool/main/m/mawk/mawk_1.3.4.20200120.orig.tar.gz' mawk_1.3.4.20200120.orig.tar.gz 468855 SHA256:7fd4cd1e1fae9290fe089171181bbc6291dfd9bca939ca804f0ddb851c8b8237
'http://deb.debian.org/debian/pool/main/m/mawk/mawk_1.3.4.20200120-3.1.debian.tar.xz' mawk_1.3.4.20200120-3.1.debian.tar.xz 14080 SHA256:7850d7c44aa826635c79a6666b0d457a03524bcb0307697b062dd717d6d9d491
```

Other potentially useful URLs:

- https://sources.debian.net/src/mawk/1.3.4.20200120-3.1/ (for browsing the source)
- https://sources.debian.net/src/mawk/1.3.4.20200120-3.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mawk/1.3.4.20200120-3.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mgcv=1.8-41-1`

Binary Packages:

- `r-cran-mgcv=1.8-41-1`

Licenses: (parsed from: `/usr/share/doc/r-cran-mgcv/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris mgcv=1.8-41-1
'http://deb.debian.org/debian/pool/main/m/mgcv/mgcv_1.8-41-1.dsc' mgcv_1.8-41-1.dsc 1833 SHA256:636a642de933e2b15c3910cc3dc231bef6243272185f024879eefab0cd5d9a46
'http://deb.debian.org/debian/pool/main/m/mgcv/mgcv_1.8-41.orig.tar.gz' mgcv_1.8-41.orig.tar.gz 1072476 SHA256:2f7a030fe2be75edef6bd96147df46c2262f3cdc44c383d8f82b401df44fe690
'http://deb.debian.org/debian/pool/main/m/mgcv/mgcv_1.8-41-1.debian.tar.xz' mgcv_1.8-41-1.debian.tar.xz 5456 SHA256:04e21c268348d0c834057051b46a7bce8b3ec98aa215c985eaa178f32a92aa16
```

Other potentially useful URLs:

- https://sources.debian.net/src/mgcv/1.8-41-1/ (for browsing the source)
- https://sources.debian.net/src/mgcv/1.8-41-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mgcv/1.8-41-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mpclib3=1.2.1-2`

Binary Packages:

- `libmpc3:amd64=1.2.1-2`

Licenses: (parsed from: `/usr/share/doc/libmpc3/copyright`)

- `LGPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/mpclib3/1.2.1-2/


### `dpkg` source package: `mpfr4=4.1.0-3`

Binary Packages:

- `libmpfr6:amd64=4.1.0-3`

Licenses: (parsed from: `/usr/share/doc/libmpfr6/copyright`)

- `GFDL-1.2`
- `LGPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/mpfr4/4.1.0-3/


### `dpkg` source package: `ncurses=6.3+20220423-2`

Binary Packages:

- `libncurses-dev:amd64=6.3+20220423-2`
- `libncurses5-dev:amd64=6.3+20220423-2`
- `libncurses6:amd64=6.3+20220423-2`
- `libncursesw6:amd64=6.3+20220423-2`
- `libtinfo6:amd64=6.3+20220423-2`
- `ncurses-base=6.3+20220423-2`
- `ncurses-bin=6.3+20220423-2`

Licenses: (parsed from: `/usr/share/doc/libncurses-dev/copyright`, `/usr/share/doc/libncurses5-dev/copyright`, `/usr/share/doc/libncurses6/copyright`, `/usr/share/doc/libncursesw6/copyright`, `/usr/share/doc/libtinfo6/copyright`, `/usr/share/doc/ncurses-base/copyright`, `/usr/share/doc/ncurses-bin/copyright`)

- `BSD-3-clause`
- `MIT/X11`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris ncurses=6.3+20220423-2
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.3%2b20220423-2.dsc' ncurses_6.3+20220423-2.dsc 4200 SHA256:bdd7ba478c9328689bd47231328efbf87ab970c4c26f5489b40abb4f4fdd79fa
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.3%2b20220423.orig.tar.gz' ncurses_6.3+20220423.orig.tar.gz 3611993 SHA256:a6bdfe499ae98ee937fed4729de09ffea08201317a9d16ed5d0142ac8b8b30e1
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.3%2b20220423.orig.tar.gz.asc' ncurses_6.3+20220423.orig.tar.gz.asc 729 SHA256:6771460069f300048dd7c7a41027cd38250b4f28d5f1dcef9cf8edb9b5ca691c
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.3%2b20220423-2.debian.tar.xz' ncurses_6.3+20220423-2.debian.tar.xz 54600 SHA256:0a211bbd63949d81d6363a0fe2bf95f8592162f1dd34ded7252ec1d3340036c3
```

Other potentially useful URLs:

- https://sources.debian.net/src/ncurses/6.3+20220423-2/ (for browsing the source)
- https://sources.debian.net/src/ncurses/6.3+20220423-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ncurses/6.3+20220423-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nettle=3.8.1-2`

Binary Packages:

- `libhogweed6:amd64=3.8.1-2`
- `libnettle8:amd64=3.8.1-2`

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
$ apt-get source -qq --print-uris nettle=3.8.1-2
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.8.1-2.dsc' nettle_3.8.1-2.dsc 2274 SHA256:a437e204da67612efb656cab354835f358b44c077c5c0a46d6e8c30b5c0bddff
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.8.1.orig.tar.gz' nettle_3.8.1.orig.tar.gz 2406251 SHA256:364f3e2b77cd7dcde83fd7c45219c834e54b0c75e428b6f894a23d12dd41cbfe
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.8.1.orig.tar.gz.asc' nettle_3.8.1.orig.tar.gz.asc 573 SHA256:71fe31c44728fdc144cbf12f30ca5d483992c17fd23afabe58f89d4201f66ddb
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.8.1-2.debian.tar.xz' nettle_3.8.1-2.debian.tar.xz 23396 SHA256:8f1eae9c6afffe545de294140f33d53352261478268dafee5ef72d840e1b3d7b
```

Other potentially useful URLs:

- https://sources.debian.net/src/nettle/3.8.1-2/ (for browsing the source)
- https://sources.debian.net/src/nettle/3.8.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nettle/3.8.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nghttp2=1.50.0-1`

Binary Packages:

- `libnghttp2-14:amd64=1.50.0-1+b1`

Licenses: (parsed from: `/usr/share/doc/libnghttp2-14/copyright`)

- `BSD-2-clause`
- `Expat`
- `GPL-3`
- `GPL-3+ with autoconf exception`
- `MIT`
- `SIL-OFL-1.1`
- `all-permissive`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/nghttp2/1.50.0-1/


### `dpkg` source package: `nlme=3.1.160-1`

Binary Packages:

- `r-cran-nlme=3.1.160-1`

Licenses: (parsed from: `/usr/share/doc/r-cran-nlme/copyright`)

- `GPL`
- `GPL `

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/nlme/3.1.160-1/


### `dpkg` source package: `openblas=0.3.21+ds-2`

Binary Packages:

- `libopenblas0-pthread:amd64=0.3.21+ds-2`

Licenses: (parsed from: `/usr/share/doc/libopenblas0-pthread/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `BSD-2-clause-texas`
- `BSD-3-clause`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/openblas/0.3.21+ds-2/


### `dpkg` source package: `openldap=2.5.13+dfsg-2`

Binary Packages:

- `libldap-2.5-0:amd64=2.5.13+dfsg-2+b1`

Licenses: (parsed from: `/usr/share/doc/libldap-2.5-0/copyright`)

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

- http://snapshot.debian.org/package/openldap/2.5.13+dfsg-2/


### `dpkg` source package: `openssl=3.0.5-4`

Binary Packages:

- `libssl3:amd64=3.0.5-4`
- `openssl=3.0.5-4`

Licenses: (parsed from: `/usr/share/doc/libssl3/copyright`, `/usr/share/doc/openssl/copyright`)

- `Apache-2.0`
- `Artistic`
- `GPL-1`
- `GPL-1+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/openssl/3.0.5-4/


### `dpkg` source package: `p11-kit=0.24.1-1`

Binary Packages:

- `libp11-kit0:amd64=0.24.1-1`

Licenses: (parsed from: `/usr/share/doc/libp11-kit0/copyright`)

- `Apache-2.0`
- `BSD-3-Clause`
- `ISC`
- `ISC+IBM`
- `LGPL-2.1`
- `LGPL-2.1+`
- `permissive-like-automake-output`
- `same-as-rest-of-p11kit`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/p11-kit/0.24.1-1/


### `dpkg` source package: `pam=1.5.2-5`

Binary Packages:

- `libpam-modules:amd64=1.5.2-5`
- `libpam-modules-bin=1.5.2-5`
- `libpam-runtime=1.5.2-5`
- `libpam0g:amd64=1.5.2-5`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/pam/1.5.2-5/


### `dpkg` source package: `pango1.0=1.50.10+ds-1`

Binary Packages:

- `libpango-1.0-0:amd64=1.50.10+ds-1`
- `libpangocairo-1.0-0:amd64=1.50.10+ds-1`
- `libpangoft2-1.0-0:amd64=1.50.10+ds-1`

Licenses: (parsed from: `/usr/share/doc/libpango-1.0-0/copyright`, `/usr/share/doc/libpangocairo-1.0-0/copyright`, `/usr/share/doc/libpangoft2-1.0-0/copyright`)

- `Apache-2`
- `Apache-2.0`
- `Bitstream-Vera`
- `CC-BY-SA-3.0`
- `CC-BY-SA-3.0,`
- `CC0-1.0`
- `CC0-1.0,`
- `Chromium-BSD-style`
- `Example`
- `Expat`
- `GPL-2+`
- `GPL-2+,`
- `GPL-2.0`
- `GPL-3.0`
- `GPL-3.0+`
- `GPL-3.0+,`
- `ICU`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2+,`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MPL-1.1`
- `OFL-1.1`
- `TCL`
- `Unicode`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/pango1.0/1.50.10+ds-1/


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

### `dpkg` source package: `pcre2=10.40-1`

Binary Packages:

- `libpcre2-16-0:amd64=10.40-1`
- `libpcre2-32-0:amd64=10.40-1`
- `libpcre2-8-0:amd64=10.40-1`
- `libpcre2-dev:amd64=10.40-1`
- `libpcre2-posix3:amd64=10.40-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre2=10.40-1
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.40-1.dsc' pcre2_10.40-1.dsc 2286 SHA256:0c880d9bc04175400921d8d6af2c24f1268a9c8678154b607d0df910d97bcbef
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.40.orig.tar.gz' pcre2_10.40.orig.tar.gz 2359622 SHA256:ded42661cab30ada2e72ebff9e725e745b4b16ce831993635136f2ef86177724
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.40-1.diff.gz' pcre2_10.40-1.diff.gz 7134 SHA256:6fe586fd149e20d18d42a60d2845b29ff5862511b851bfb80dd64d72359dc1c4
```

Other potentially useful URLs:

- https://sources.debian.net/src/pcre2/10.40-1/ (for browsing the source)
- https://sources.debian.net/src/pcre2/10.40-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pcre2/10.40-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pcre3=2:8.39-14`

Binary Packages:

- `libpcre16-3:amd64=2:8.39-14`
- `libpcre3:amd64=2:8.39-14`
- `libpcre3-dev:amd64=2:8.39-14`
- `libpcre32-3:amd64=2:8.39-14`
- `libpcrecpp0v5:amd64=2:8.39-14`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/pcre3/2:8.39-14/


### `dpkg` source package: `perl=5.36.0-4`

Binary Packages:

- `libperl5.36:amd64=5.36.0-4`
- `perl=5.36.0-4`
- `perl-base=5.36.0-4`
- `perl-modules-5.36=5.36.0-4`

Licenses: (parsed from: `/usr/share/doc/libperl5.36/copyright`, `/usr/share/doc/perl/copyright`, `/usr/share/doc/perl-base/copyright`, `/usr/share/doc/perl-modules-5.36/copyright`)

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/perl/5.36.0-4/


### `dpkg` source package: `pixman=0.40.0-1`

Binary Packages:

- `libpixman-1-0:amd64=0.40.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pixman=0.40.0-1
'http://deb.debian.org/debian/pool/main/p/pixman/pixman_0.40.0-1.dsc' pixman_0.40.0-1.dsc 2021 SHA256:908752b9c69211606daa8ee92bd929d80ad5f1c4d68f87b98f4fb33e01d4e455
'http://deb.debian.org/debian/pool/main/p/pixman/pixman_0.40.0.orig.tar.gz' pixman_0.40.0.orig.tar.gz 913976 SHA256:6d200dec3740d9ec4ec8d1180e25779c00bc749f94278c8b9021f5534db223fc
'http://deb.debian.org/debian/pool/main/p/pixman/pixman_0.40.0-1.diff.gz' pixman_0.40.0-1.diff.gz 319428 SHA256:66a769eee187ce84ff416752f6913ad2ac6165f3bb61696cf1b43bdef48c41ab
```

Other potentially useful URLs:

- https://sources.debian.net/src/pixman/0.40.0-1/ (for browsing the source)
- https://sources.debian.net/src/pixman/0.40.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pixman/0.40.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pkg-config=0.29.2-1`

Binary Packages:

- `pkg-config=0.29.2-1`

Licenses: (parsed from: `/usr/share/doc/pkg-config/copyright`)

- `GPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/pkg-config/0.29.2-1/


### `dpkg` source package: `r-base=4.2.2-1`

Binary Packages:

- `r-base=4.2.2-1`
- `r-base-core=4.2.2-1`
- `r-base-dev=4.2.2-1`
- `r-recommended=4.2.2-1`

Licenses: (parsed from: `/usr/share/doc/r-base/copyright`, `/usr/share/doc/r-base-core/copyright`, `/usr/share/doc/r-base-dev/copyright`, `/usr/share/doc/r-recommended/copyright`)

- `Artistic`
- `GPL-2`
- `GPL-3`
- `LGPL-2`
- `LGPL-2.1`
- `LGPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/r-base/4.2.2-1/


### `dpkg` source package: `r-cran-class=7.3-20-1`

Binary Packages:

- `r-cran-class=7.3-20-1`

Licenses: (parsed from: `/usr/share/doc/r-cran-class/copyright`)

- `GPL-2`
- `GPL-2 | GPL-3`

Source:

```console
$ apt-get source -qq --print-uris r-cran-class=7.3-20-1
'http://deb.debian.org/debian/pool/main/r/r-cran-class/r-cran-class_7.3-20-1.dsc' r-cran-class_7.3-20-1.dsc 1873 SHA256:dbac95f40d16224325935c142e594f5266ba969604d15a5f4a9b64b284814c9d
'http://deb.debian.org/debian/pool/main/r/r-cran-class/r-cran-class_7.3-20.orig.tar.gz' r-cran-class_7.3-20.orig.tar.gz 20769 SHA256:e65b046bc72b312ff0c5dc7feba4fa3e9bc63387274d44911493782b85f65483
'http://deb.debian.org/debian/pool/main/r/r-cran-class/r-cran-class_7.3-20-1.debian.tar.xz' r-cran-class_7.3-20-1.debian.tar.xz 3220 SHA256:745027c11ceb5cd7a6fa34bc252bfc6183234bb036ffaecf36c553ca434a1f97
```

Other potentially useful URLs:

- https://sources.debian.net/src/r-cran-class/7.3-20-1/ (for browsing the source)
- https://sources.debian.net/src/r-cran-class/7.3-20-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/r-cran-class/7.3-20-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `r-cran-docopt=0.7.1-2`

Binary Packages:

- `r-cran-docopt=0.7.1-2`

Licenses: (parsed from: `/usr/share/doc/r-cran-docopt/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris r-cran-docopt=0.7.1-2
'http://deb.debian.org/debian/pool/main/r/r-cran-docopt/r-cran-docopt_0.7.1-2.dsc' r-cran-docopt_0.7.1-2.dsc 2087 SHA256:f7713b448b9b14766351e295d3ee0059f3a1c6319ecdf5ef33d5da40bc609d1b
'http://deb.debian.org/debian/pool/main/r/r-cran-docopt/r-cran-docopt_0.7.1.orig.tar.gz' r-cran-docopt_0.7.1.orig.tar.gz 29465 SHA256:9f473887e4607e9b21fd4ab02e802858d0ac2ca6dad9e357a9d884a47fe4b0ff
'http://deb.debian.org/debian/pool/main/r/r-cran-docopt/r-cran-docopt_0.7.1-2.debian.tar.xz' r-cran-docopt_0.7.1-2.debian.tar.xz 2472 SHA256:3358c9988254f326b3d2a351f3a75fd3c655d56de13e7f822cceaf39fb1f7fca
```

Other potentially useful URLs:

- https://sources.debian.net/src/r-cran-docopt/0.7.1-2/ (for browsing the source)
- https://sources.debian.net/src/r-cran-docopt/0.7.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/r-cran-docopt/0.7.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `r-cran-mass=7.3-58.1-1`

Binary Packages:

- `r-cran-mass=7.3-58.1-1`

Licenses: (parsed from: `/usr/share/doc/r-cran-mass/copyright`)

- `GPL-2`
- `GPL-2 | GPL-3`

Source:

```console
$ apt-get source -qq --print-uris r-cran-mass=7.3-58.1-1
'http://deb.debian.org/debian/pool/main/r/r-cran-mass/r-cran-mass_7.3-58.1-1.dsc' r-cran-mass_7.3-58.1-1.dsc 1865 SHA256:f7df15a30d274ab7d5a1e6ec36785ddb8b502d92c0d1ead68e56c9919908ed5e
'http://deb.debian.org/debian/pool/main/r/r-cran-mass/r-cran-mass_7.3-58.1.orig.tar.gz' r-cran-mass_7.3-58.1.orig.tar.gz 514882 SHA256:f704e4e2fb131740d023ae1755c925c2e684886a3061b08e26397135f1231420
'http://deb.debian.org/debian/pool/main/r/r-cran-mass/r-cran-mass_7.3-58.1-1.debian.tar.xz' r-cran-mass_7.3-58.1-1.debian.tar.xz 6440 SHA256:32d3feaddb5a636d53435a54dbdd2b6b33cf9e516aa37a08f4e2491da37a9c1b
```

Other potentially useful URLs:

- https://sources.debian.net/src/r-cran-mass/7.3-58.1-1/ (for browsing the source)
- https://sources.debian.net/src/r-cran-mass/7.3-58.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/r-cran-mass/7.3-58.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `r-cran-nnet=7.3-18-1`

Binary Packages:

- `r-cran-nnet=7.3-18-1`

Licenses: (parsed from: `/usr/share/doc/r-cran-nnet/copyright`)

- `GPL-2`
- `GPL-2 | GPL-3`

Source:

```console
$ apt-get source -qq --print-uris r-cran-nnet=7.3-18-1
'http://deb.debian.org/debian/pool/main/r/r-cran-nnet/r-cran-nnet_7.3-18-1.dsc' r-cran-nnet_7.3-18-1.dsc 1848 SHA256:72f8e7ab7bd771fe59dc7a5ab09d0bece9cd3d45e818edb36f72e316c92fc5ed
'http://deb.debian.org/debian/pool/main/r/r-cran-nnet/r-cran-nnet_7.3-18.orig.tar.gz' r-cran-nnet_7.3-18.orig.tar.gz 29146 SHA256:d29aebfb5cb00071eecf754d55db5d474a6fda88860df5c9d31ba89aa8d9e3d0
'http://deb.debian.org/debian/pool/main/r/r-cran-nnet/r-cran-nnet_7.3-18-1.debian.tar.xz' r-cran-nnet_7.3-18-1.debian.tar.xz 3268 SHA256:030e75928fbdff50c16adf02c0ad967878c7cd77a487f8ebad4f2aa88b202eb8
```

Other potentially useful URLs:

- https://sources.debian.net/src/r-cran-nnet/7.3-18-1/ (for browsing the source)
- https://sources.debian.net/src/r-cran-nnet/7.3-18-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/r-cran-nnet/7.3-18-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `r-cran-spatial=7.3-15-1`

Binary Packages:

- `r-cran-spatial=7.3-15-1`

Licenses: (parsed from: `/usr/share/doc/r-cran-spatial/copyright`)

- `GPL-2`
- `GPL-2 | GPL-3`

Source:

```console
$ apt-get source -qq --print-uris r-cran-spatial=7.3-15-1
'http://deb.debian.org/debian/pool/main/r/r-cran-spatial/r-cran-spatial_7.3-15-1.dsc' r-cran-spatial_7.3-15-1.dsc 1884 SHA256:1d661b20136cb8c3889b045c4addcb5fbf4128e916eb28b38ba50b272356322a
'http://deb.debian.org/debian/pool/main/r/r-cran-spatial/r-cran-spatial_7.3-15.orig.tar.gz' r-cran-spatial_7.3-15.orig.tar.gz 44618 SHA256:e5613be94d6f5c1f54813dadc96e4a86b3417dea28106cc90cb24dfd6c3c8cef
'http://deb.debian.org/debian/pool/main/r/r-cran-spatial/r-cran-spatial_7.3-15-1.debian.tar.xz' r-cran-spatial_7.3-15-1.debian.tar.xz 3184 SHA256:2d1af14fe71a5d721fc42845f2649f6068593a27b2bae2b0273a9818e19a13a2
```

Other potentially useful URLs:

- https://sources.debian.net/src/r-cran-spatial/7.3-15-1/ (for browsing the source)
- https://sources.debian.net/src/r-cran-spatial/7.3-15-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/r-cran-spatial/7.3-15-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `readline=8.2-1`

Binary Packages:

- `libreadline-dev:amd64=8.2-1`
- `libreadline8:amd64=8.2-1`
- `readline-common=8.2-1`

Licenses: (parsed from: `/usr/share/doc/libreadline-dev/copyright`, `/usr/share/doc/libreadline8/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GFDL`
- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/readline/8.2-1/


### `dpkg` source package: `rmatrix=1.5-1-1`

Binary Packages:

- `r-cran-matrix=1.5-1-1`

Licenses: (parsed from: `/usr/share/doc/r-cran-matrix/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/rmatrix/1.5-1-1/


### `dpkg` source package: `rpart=4.1.19-1`

Binary Packages:

- `r-cran-rpart=4.1.19-1`

Licenses: (parsed from: `/usr/share/doc/r-cran-rpart/copyright`)

- `GPL-2`
- `GPL-2+ | license included below`

Source:

```console
$ apt-get source -qq --print-uris rpart=4.1.19-1
'http://deb.debian.org/debian/pool/main/r/rpart/rpart_4.1.19-1.dsc' rpart_4.1.19-1.dsc 1843 SHA256:03c01b26658418329eb1c894902da1fb2a601c1e1d22f7ba110e995bb3cd5216
'http://deb.debian.org/debian/pool/main/r/rpart/rpart_4.1.19.orig.tar.gz' rpart_4.1.19.orig.tar.gz 859025 SHA256:fe723ed0b5583fae8b40e6fecc29b357229cb11f2339b02a4e4f812926249565
'http://deb.debian.org/debian/pool/main/r/rpart/rpart_4.1.19-1.debian.tar.xz' rpart_4.1.19-1.debian.tar.xz 4388 SHA256:3bea7d8cd1f2652d3d3966f23c61369c391dac8b2ab229700937c028b505c74a
```

Other potentially useful URLs:

- https://sources.debian.net/src/rpart/4.1.19-1/ (for browsing the source)
- https://sources.debian.net/src/rpart/4.1.19-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/rpart/4.1.19-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `rpcsvc-proto=1.4.2-4`

Binary Packages:

- `rpcsvc-proto=1.4.2-4`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/rpcsvc-proto/1.4.2-4/


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

### `dpkg` source package: `sed=4.8-1`

Binary Packages:

- `sed=4.8-1`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/sed/4.8-1/


### `dpkg` source package: `sensible-utils=0.0.17`

Binary Packages:

- `sensible-utils=0.0.17`

Licenses: (parsed from: `/usr/share/doc/sensible-utils/copyright`)

- `All-permissive`
- `GPL-2`
- `GPL-2+`
- `configure`
- `installsh`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/sensible-utils/0.0.17/


### `dpkg` source package: `shadow=1:4.12.3+dfsg1-1`

Binary Packages:

- `login=1:4.12.3+dfsg1-1`
- `passwd=1:4.12.3+dfsg1-1`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `BSD-3-clause`
- `GPL-1`
- `GPL-2`
- `GPL-2+`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/shadow/1:4.12.3+dfsg1-1/


### `dpkg` source package: `survival=3.4-0-1`

Binary Packages:

- `r-cran-survival=3.4-0-1`

Licenses: (parsed from: `/usr/share/doc/r-cran-survival/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/survival/3.4-0-1/


### `dpkg` source package: `systemd=251.6-1`

Binary Packages:

- `libsystemd0:amd64=251.6-1`
- `libudev1:amd64=251.6-1`

Licenses: (parsed from: `/usr/share/doc/libsystemd0/copyright`, `/usr/share/doc/libudev1/copyright`)

- `CC0-1.0`
- `Expat`
- `GPL-2`
- `GPL-2 with Linux-syscall-note exception`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/systemd/251.6-1/


### `dpkg` source package: `sysvinit=3.05-6`

Binary Packages:

- `sysvinit-utils=3.05-6`

Licenses: (parsed from: `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`
- `GPL-2.0`
- `GPL-2.0+`
- `GPL-3`
- `GPL-3.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/sysvinit/3.05-6/


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

### `dpkg` source package: `tcl8.6=8.6.12+dfsg-1`

Binary Packages:

- `libtcl8.6:amd64=8.6.12+dfsg-1+b1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/tcl8.6/8.6.12+dfsg-1/


### `dpkg` source package: `tex-gyre=20180621-6`

Binary Packages:

- `fonts-texgyre=20180621-6`

Licenses: (parsed from: `/usr/share/doc/fonts-texgyre/copyright`)

- `DejaVu-License`
- `GPL-2`
- `GPL-2+`
- `GUST-Font-License`

Source:

```console
$ apt-get source -qq --print-uris tex-gyre=20180621-6
'http://deb.debian.org/debian/pool/main/t/tex-gyre/tex-gyre_20180621-6.dsc' tex-gyre_20180621-6.dsc 2241 SHA256:83a26e65fee0ac79f31a44e083e03da2fef7b031c70d0f336796782cc0fed099
'http://deb.debian.org/debian/pool/main/t/tex-gyre/tex-gyre_20180621.orig.tar.gz' tex-gyre_20180621.orig.tar.gz 24033627 SHA256:fe6b0f8ca6890d4a369f36c3b45bc30470069701a2f59042178ad5933fc9cdb8
'http://deb.debian.org/debian/pool/main/t/tex-gyre/tex-gyre_20180621-6.debian.tar.xz' tex-gyre_20180621-6.debian.tar.xz 11632 SHA256:731e04abb52038a7de626e4679d6b823b2d692be029bb88399951fb69b286f67
```

Other potentially useful URLs:

- https://sources.debian.net/src/tex-gyre/20180621-6/ (for browsing the source)
- https://sources.debian.net/src/tex-gyre/20180621-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tex-gyre/20180621-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tiff=4.4.0-4`

Binary Packages:

- `libtiff5:amd64=4.4.0-4`

Licenses: (parsed from: `/usr/share/doc/libtiff5/copyright`)

- `Hylafax`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/tiff/4.4.0-4/


### `dpkg` source package: `tk8.6=8.6.12-1`

Binary Packages:

- `libtk8.6:amd64=8.6.12-1+b1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/tk8.6/8.6.12-1/


### `dpkg` source package: `tzdata=2022e-1`

Binary Packages:

- `tzdata=2022e-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/tzdata/2022e-1/


### `dpkg` source package: `ucf=3.0043`

Binary Packages:

- `ucf=3.0043`

Licenses: (parsed from: `/usr/share/doc/ucf/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris ucf=3.0043
'http://deb.debian.org/debian/pool/main/u/ucf/ucf_3.0043.dsc' ucf_3.0043.dsc 1423 SHA256:5954508238ff1b8e2c61e1f533268911ba06709e821c02de014fd15d2ead81fd
'http://deb.debian.org/debian/pool/main/u/ucf/ucf_3.0043.tar.xz' ucf_3.0043.tar.xz 70560 SHA256:0294cc11a6cf032ea99ca5064f73a4ede5b28bc2d4ad0a12e8493c7520c7a2a4
```

Other potentially useful URLs:

- https://sources.debian.net/src/ucf/3.0043/ (for browsing the source)
- https://sources.debian.net/src/ucf/3.0043/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ucf/3.0043/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `unzip=6.0-27`

Binary Packages:

- `unzip=6.0-27`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris unzip=6.0-27
'http://deb.debian.org/debian/pool/main/u/unzip/unzip_6.0-27.dsc' unzip_6.0-27.dsc 1351 SHA256:e8cfa689ee6b99aefaec32985dee849d4b3308d9ae1f01ca36bea5f496cb8f1d
'http://deb.debian.org/debian/pool/main/u/unzip/unzip_6.0.orig.tar.gz' unzip_6.0.orig.tar.gz 1376845 SHA256:036d96991646d0449ed0aa952e4fbe21b476ce994abc276e49d30e686708bd37
'http://deb.debian.org/debian/pool/main/u/unzip/unzip_6.0-27.debian.tar.xz' unzip_6.0-27.debian.tar.xz 24980 SHA256:67bde7c71d52afd61aa936d4415c8d12fd90ca26e9637a3cd67cae9b71298c12
```

Other potentially useful URLs:

- https://sources.debian.net/src/unzip/6.0-27/ (for browsing the source)
- https://sources.debian.net/src/unzip/6.0-27/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/unzip/6.0-27/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `usrmerge=33`

Binary Packages:

- `usr-is-merged=33`

Licenses: (parsed from: `/usr/share/doc/usr-is-merged/copyright`)

- `GPL v2`
- `GPL-2`
- `later (please see /usr/share/common-licenses/GPL-2)`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/usrmerge/33/


### `dpkg` source package: `util-linux=2.38.1-1.1`

Binary Packages:

- `bsdutils=1:2.38.1-1.1+b1`
- `libblkid1:amd64=2.38.1-1.1+b1`
- `libmount1:amd64=2.38.1-1.1+b1`
- `libsmartcols1:amd64=2.38.1-1.1+b1`
- `libuuid1:amd64=2.38.1-1.1+b1`
- `mount=2.38.1-1.1+b1`
- `util-linux=2.38.1-1.1+b1`
- `util-linux-extra=2.38.1-1.1+b1`

Licenses: (parsed from: `/usr/share/doc/bsdutils/copyright`, `/usr/share/doc/libblkid1/copyright`, `/usr/share/doc/libmount1/copyright`, `/usr/share/doc/libsmartcols1/copyright`, `/usr/share/doc/libuuid1/copyright`, `/usr/share/doc/mount/copyright`, `/usr/share/doc/util-linux/copyright`, `/usr/share/doc/util-linux-extra/copyright`)

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/util-linux/2.38.1-1.1/


### `dpkg` source package: `vim=2:9.0.0626-1`

Binary Packages:

- `vim-common=2:9.0.0626-1`
- `vim-tiny=2:9.0.0626-1+b1`

Licenses: (parsed from: `/usr/share/doc/vim-common/copyright`, `/usr/share/doc/vim-tiny/copyright`)

- `Apache`
- `Apache-2.0`
- `Artistic`
- `Artistic-1`
- `BSD-2-clause`
- `BSD-3-clause`
- `Compaq`
- `EDL-1`
- `Expat`
- `GPL-1`
- `GPL-1+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `OPL-1+`
- `UC`
- `Vim`
- `Vim-Regexp`
- `X11`
- `XPM`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/vim/2:9.0.0626-1/


### `dpkg` source package: `wget=1.21.3-1`

Binary Packages:

- `wget=1.21.3-1+b2`

Licenses: (parsed from: `/usr/share/doc/wget/copyright`)

- `GFDL-1.2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris wget=1.21.3-1
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.21.3-1.dsc' wget_1.21.3-1.dsc 2167 SHA256:e294772dac85a4d59fa64269515aa4a93664789f1f4612cfe309785384fd1f55
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.21.3.orig.tar.gz' wget_1.21.3.orig.tar.gz 5079864 SHA256:5726bb8bc5ca0f6dc7110f6416e4bb7019e2d2ff5bf93d1ca2ffcc6656f220e5
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.21.3.orig.tar.gz.asc' wget_1.21.3.orig.tar.gz.asc 854 SHA256:a4d96f04bc5a034310eae177df9adc79ef7a6f0fad7bf7669bf0ac318fa22ccd
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.21.3-1.debian.tar.xz' wget_1.21.3-1.debian.tar.xz 60660 SHA256:30901c12ded6e455d55fe73c40245b51d2fd53e20e30713a10e066fdfadb9d20
```

Other potentially useful URLs:

- https://sources.debian.net/src/wget/1.21.3-1/ (for browsing the source)
- https://sources.debian.net/src/wget/1.21.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/wget/1.21.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xauth=1:1.1.1-1`

Binary Packages:

- `xauth=1:1.1.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xauth=1:1.1.1-1
'http://deb.debian.org/debian/pool/main/x/xauth/xauth_1.1.1-1.dsc' xauth_1.1.1-1.dsc 1892 SHA256:eaa2a78cd0079f51105413cda1b983bc7e922e5468998365e3335d5a3bf27bc5
'http://deb.debian.org/debian/pool/main/x/xauth/xauth_1.1.1.orig.tar.gz' xauth_1.1.1.orig.tar.gz 210117 SHA256:0f558ef33e76843cf16a78cd3910ef8ec0809bea85d14e091c559dcec092c671
'http://deb.debian.org/debian/pool/main/x/xauth/xauth_1.1.1-1.diff.gz' xauth_1.1.1-1.diff.gz 15637 SHA256:493f79a800a40ecbfcbef25dbda107b3c8bad486b9d49cab42e3f32136ec71ca
```

Other potentially useful URLs:

- https://sources.debian.net/src/xauth/1:1.1.1-1/ (for browsing the source)
- https://sources.debian.net/src/xauth/1:1.1.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xauth/1:1.1.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xdg-utils=1.1.3-4.1`

Binary Packages:

- `xdg-utils=1.1.3-4.1`

Licenses: (parsed from: `/usr/share/doc/xdg-utils/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris xdg-utils=1.1.3-4.1
'http://deb.debian.org/debian/pool/main/x/xdg-utils/xdg-utils_1.1.3-4.1.dsc' xdg-utils_1.1.3-4.1.dsc 1756 SHA256:c54ae65034c4c3e9f2208a44990111d34fc5ed1e689efd3907a2a8e5e965ccac
'http://deb.debian.org/debian/pool/main/x/xdg-utils/xdg-utils_1.1.3.orig.tar.gz' xdg-utils_1.1.3.orig.tar.gz 297170 SHA256:d798b08af8a8e2063ddde6c9fa3398ca81484f27dec642c5627ffcaa0d4051d9
'http://deb.debian.org/debian/pool/main/x/xdg-utils/xdg-utils_1.1.3-4.1.debian.tar.xz' xdg-utils_1.1.3-4.1.debian.tar.xz 15660 SHA256:0ea0b550719ab75f9a0fe58ed907673c5bcfc2bd87537845534694c502740aed
```

Other potentially useful URLs:

- https://sources.debian.net/src/xdg-utils/1.1.3-4.1/ (for browsing the source)
- https://sources.debian.net/src/xdg-utils/1.1.3-4.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xdg-utils/1.1.3-4.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xft=2.3.6-1`

Binary Packages:

- `libxft2:amd64=2.3.6-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xft=2.3.6-1
'http://deb.debian.org/debian/pool/main/x/xft/xft_2.3.6-1.dsc' xft_2.3.6-1.dsc 2006 SHA256:252220495bd12fac30d8f1b1994916beaed9c5149138dcc62e230fee17339530
'http://deb.debian.org/debian/pool/main/x/xft/xft_2.3.6.orig.tar.gz' xft_2.3.6.orig.tar.gz 447498 SHA256:b7e59f69e0bbabe9438088775f7e5a7c16a572e58b11f9722519385d38192df5
'http://deb.debian.org/debian/pool/main/x/xft/xft_2.3.6-1.diff.gz' xft_2.3.6-1.diff.gz 17995 SHA256:9d4c64fc52626134a3f753df88fceaba0cb460bd9b56544f0e42178deca77019
```

Other potentially useful URLs:

- https://sources.debian.net/src/xft/2.3.6-1/ (for browsing the source)
- https://sources.debian.net/src/xft/2.3.6-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xft/2.3.6-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xorg=1:7.7+23`

Binary Packages:

- `x11-common=1:7.7+23`

Licenses: (parsed from: `/usr/share/doc/x11-common/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris xorg=1:7.7+23
'http://deb.debian.org/debian/pool/main/x/xorg/xorg_7.7%2b23.dsc' xorg_7.7+23.dsc 1975 SHA256:b06ef48b56736e0a0a48bcbc1afd2cf6dcd70959c2b52e195456a0392076469c
'http://deb.debian.org/debian/pool/main/x/xorg/xorg_7.7%2b23.tar.gz' xorg_7.7+23.tar.gz 287306 SHA256:8458b8798d7d6098cd5259abc447d6c7a371e20e641cac82cf635296a71f468e
```

Other potentially useful URLs:

- https://sources.debian.net/src/xorg/1:7.7+23/ (for browsing the source)
- https://sources.debian.net/src/xorg/1:7.7+23/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xorg/1:7.7+23/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xxhash=0.8.1-1`

Binary Packages:

- `libxxhash0:amd64=0.8.1-1`

Licenses: (parsed from: `/usr/share/doc/libxxhash0/copyright`)

- `BSD-2-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris xxhash=0.8.1-1
'http://deb.debian.org/debian/pool/main/x/xxhash/xxhash_0.8.1-1.dsc' xxhash_0.8.1-1.dsc 1966 SHA256:4a961627c06efc8fa3bc4b06ee9dba6cfaf092f2550b88d63e9218a2728721b4
'http://deb.debian.org/debian/pool/main/x/xxhash/xxhash_0.8.1.orig.tar.gz' xxhash_0.8.1.orig.tar.gz 171552 SHA256:3bb6b7d6f30c591dd65aaaff1c8b7a5b94d81687998ca9400082c739a690436c
'http://deb.debian.org/debian/pool/main/x/xxhash/xxhash_0.8.1-1.debian.tar.xz' xxhash_0.8.1-1.debian.tar.xz 4572 SHA256:d40aa223e90b85435082857b64573541ba9a995841717496e8975aed97241550
```

Other potentially useful URLs:

- https://sources.debian.net/src/xxhash/0.8.1-1/ (for browsing the source)
- https://sources.debian.net/src/xxhash/0.8.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xxhash/0.8.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xz-utils=5.2.7-0.1`

Binary Packages:

- `liblzma-dev:amd64=5.2.7-0.1`
- `liblzma5:amd64=5.2.7-0.1`
- `xz-utils=5.2.7-0.1`

Licenses: (parsed from: `/usr/share/doc/liblzma-dev/copyright`, `/usr/share/doc/liblzma5/copyright`, `/usr/share/doc/xz-utils/copyright`)

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/xz-utils/5.2.7-0.1/


### `dpkg` source package: `zip=3.0-12`

Binary Packages:

- `zip=3.0-12`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris zip=3.0-12
'http://deb.debian.org/debian/pool/main/z/zip/zip_3.0-12.dsc' zip_3.0-12.dsc 1328 SHA256:529b19003979b7eae4a305e05d0d9fda81917e2d55a16a6d65588d69380ab80f
'http://deb.debian.org/debian/pool/main/z/zip/zip_3.0.orig.tar.gz' zip_3.0.orig.tar.gz 1118845 SHA256:f0e8bb1f9b7eb0b01285495a2699df3a4b766784c1765a8f1aeedf63c0806369
'http://deb.debian.org/debian/pool/main/z/zip/zip_3.0-12.debian.tar.xz' zip_3.0-12.debian.tar.xz 8628 SHA256:522174080773f72882bd240ca384e698134f61ad6405ce8f995e1d21c9ba41d8
```

Other potentially useful URLs:

- https://sources.debian.net/src/zip/3.0-12/ (for browsing the source)
- https://sources.debian.net/src/zip/3.0-12/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/zip/3.0-12/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `zlib=1:1.2.11.dfsg-4.1`

Binary Packages:

- `zlib1g:amd64=1:1.2.11.dfsg-4.1`
- `zlib1g-dev:amd64=1:1.2.11.dfsg-4.1`

Licenses: (parsed from: `/usr/share/doc/zlib1g/copyright`, `/usr/share/doc/zlib1g-dev/copyright`)

- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.11.dfsg-4.1
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.11.dfsg-4.1.dsc' zlib_1.2.11.dfsg-4.1.dsc 2881 SHA256:aeb102797f718f2f9bcd090b233dcfaa6a43bd0d7e0148a2d880822406c89728
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.11.dfsg.orig.tar.gz' zlib_1.2.11.dfsg.orig.tar.gz 370248 SHA256:80c481411a4fe8463aeb8270149a0e80bb9eaf7da44132b6e16f2b5af01bc899
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.11.dfsg-4.1.debian.tar.xz' zlib_1.2.11.dfsg-4.1.debian.tar.xz 24052 SHA256:6136b2cc6483c27eec681f995864f1876c4765e69ad9c9c61d9cd62a86104e4d
```

Other potentially useful URLs:

- https://sources.debian.net/src/zlib/1:1.2.11.dfsg-4.1/ (for browsing the source)
- https://sources.debian.net/src/zlib/1:1.2.11.dfsg-4.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/zlib/1:1.2.11.dfsg-4.1/ (for access to the source package after it no longer exists in the archive)
